# Setup Firely Terminal Command

## Usage
```
/setup-firely
```

## Your Task
Install and configure Firely Terminal for FHIR package building and validation.

### Step 1: Check Current Installation
1. Check if Firely Terminal is already installed: `which fhir`
2. If installed, check version: `fhir --version`
3. Report current status to user

### Step 2: Install Firely Terminal (if needed)
Use the appropriate installation method for macOS:

```bash
# Option 1: Download from Simplifier (recommended)
# Visit https://fire.ly/products/firely-terminal/ for latest version
curl -L https://downloads.fire.ly/firely-terminal/latest/FirelyTerminal-macos.zip -o /tmp/firely-terminal.zip
unzip /tmp/firely-terminal.zip -d /tmp/firely-terminal
sudo cp /tmp/firely-terminal/fhir /usr/local/bin/
chmod +x /usr/local/bin/fhir

# Option 2: Using dotnet tool (if .NET is installed)
dotnet tool install --global Firely.Terminal
```

Ask user which installation method they prefer.

### Step 3: Verify Installation
1. Run `fhir --version` to confirm installation
2. Run `fhir help` to show available commands
3. Set up common configurations:
   ```bash
   fhir config set server https://termserv.mii.medizininformatik-initiative.de/fhir
   ```

### Step 4: Configure for MII Project
1. Navigate to project directory
2. Initialize Firely Terminal settings if needed
3. Configure terminology server
4. Test basic functionality:
   ```bash
   fhir install de.medizininformatikinitiative.kerndatensatz.studie@2026.0.0-ballot
   ```

### Step 5: Report Success
Provide user with:
- Installation confirmation
- Version information
- Available commands summary
- Next steps (e.g., using `/build-package` command)

## Important Notes
- Requires sudo permissions for system-wide installation
- Alternative: Install as user-local tool with dotnet
- macOS may require security permissions for first run
