#!/bin/bash
# Script to push project to Simplifier and trigger package build
# Usage: ./scripts/simplifier-build.sh <project-name>
# Example: ./scripts/simplifier-build.sh mii-onkologie

set -e

PROJECT_NAME="${1:-}"
if [ -z "$PROJECT_NAME" ]; then
    echo "Usage: $0 <simplifier-project-name>"
    exit 1
fi

# Load credentials from .env or environment
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
ENV_FILE="$PROJECT_DIR/.env"
TOKEN_CACHE="$HOME/.simplifier-token-cache.json"

if [ -f "$ENV_FILE" ]; then
    source "$ENV_FILE"
fi

# Function to get a new token
get_new_token() {
    if [ -z "$SIMPLIFIER_EMAIL" ] || [ -z "$SIMPLIFIER_PASSWORD" ]; then
        echo "Error: SIMPLIFIER_EMAIL and SIMPLIFIER_PASSWORD required in .env"
        exit 1
    fi

    echo "   Fetching new token..."
    RESPONSE=$(curl -s -X POST "https://api.simplifier.net/token" \
        -H "Content-Type: application/json" \
        -d "{\"Email\": \"$SIMPLIFIER_EMAIL\", \"Password\": \"$SIMPLIFIER_PASSWORD\"}")

    TOKEN=$(echo "$RESPONSE" | grep -o '"token":"[^"]*"' | cut -d'"' -f4)
    REFRESH_TOKEN=$(echo "$RESPONSE" | grep -o '"refreshToken":"[^"]*"' | cut -d'"' -f4)

    if [ -z "$TOKEN" ]; then
        echo "   Error: Failed to get token"
        echo "$RESPONSE"
        exit 1
    fi

    # Cache tokens
    echo "{\"token\": \"$TOKEN\", \"refreshToken\": \"$REFRESH_TOKEN\", \"timestamp\": $(date +%s)}" > "$TOKEN_CACHE"
    chmod 600 "$TOKEN_CACHE"

    SIMPLIFIER_TOKEN="$TOKEN"
}

# Function to refresh token
refresh_token() {
    if [ ! -f "$TOKEN_CACHE" ]; then
        get_new_token
        return
    fi

    REFRESH_TOKEN=$(grep -o '"refreshToken":"[^"]*"' "$TOKEN_CACHE" | cut -d'"' -f4)

    if [ -z "$REFRESH_TOKEN" ]; then
        get_new_token
        return
    fi

    echo "   Refreshing token..."
    RESPONSE=$(curl -s -X POST "https://api.simplifier.net/token/refresh" \
        -H "Content-Type: application/json" \
        -d "{\"refreshToken\": \"$REFRESH_TOKEN\"}")

    TOKEN=$(echo "$RESPONSE" | grep -o '"token":"[^"]*"' | cut -d'"' -f4)
    NEW_REFRESH=$(echo "$RESPONSE" | grep -o '"refreshToken":"[^"]*"' | cut -d'"' -f4)

    if [ -z "$TOKEN" ]; then
        echo "   Refresh failed, getting new token..."
        get_new_token
        return
    fi

    # Update cache
    echo "{\"token\": \"$TOKEN\", \"refreshToken\": \"$NEW_REFRESH\", \"timestamp\": $(date +%s)}" > "$TOKEN_CACHE"
    chmod 600 "$TOKEN_CACHE"

    SIMPLIFIER_TOKEN="$TOKEN"
}

# Get token - try cache first, then refresh/new
echo "0. Authenticating..."
if [ -f "$TOKEN_CACHE" ]; then
    CACHED_TOKEN=$(grep -o '"token":"[^"]*"' "$TOKEN_CACHE" | cut -d'"' -f4)
    CACHE_TIME=$(grep -o '"timestamp":[0-9]*' "$TOKEN_CACHE" | cut -d':' -f2)
    NOW=$(date +%s)
    AGE=$((NOW - CACHE_TIME))

    # Token valid for ~1 hour, refresh after 50 minutes
    if [ "$AGE" -lt 3000 ] && [ -n "$CACHED_TOKEN" ]; then
        echo "   Using cached token (age: ${AGE}s)"
        SIMPLIFIER_TOKEN="$CACHED_TOKEN"
    else
        refresh_token
    fi
else
    get_new_token
fi

if [ -z "$SIMPLIFIER_TOKEN" ]; then
    echo "Error: Failed to obtain Simplifier token"
    exit 1
fi
echo "   Authenticated."
echo ""

DOWNLOAD_FILE="/tmp/simplifier-download-$PROJECT_NAME.zip"

echo "=== Simplifier Download Script ==="
echo "Project: $PROJECT_NAME"
echo ""

# Download ZIP from Simplifier
echo "1. Downloading project ZIP..."
HTTP_STATUS=$(curl -s -w "%{http_code}" \
    -H "Authorization: Bearer $SIMPLIFIER_TOKEN" \
    -o "$DOWNLOAD_FILE" \
    "https://api.simplifier.net/$PROJECT_NAME/zip")

if [ "$HTTP_STATUS" -ge 200 ] && [ "$HTTP_STATUS" -lt 300 ]; then
    echo "   Download successful (HTTP $HTTP_STATUS)"
    echo "   File: $DOWNLOAD_FILE ($(du -h "$DOWNLOAD_FILE" | cut -f1))"
    echo ""
    echo "   Contents:"
    unzip -l "$DOWNLOAD_FILE" | head -30
else
    echo "   Download failed (HTTP $HTTP_STATUS)"
    cat "$DOWNLOAD_FILE"
    exit 1
fi

echo ""
echo "=== Download complete ==="
