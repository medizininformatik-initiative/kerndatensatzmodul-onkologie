// switch version of all conformance resources here
RuleSet: Version
* version = "2026.0.0-rc.10"

RuleSet: PR_CS_VS_Version
* ^version = "2026.0.0-rc.10"

RuleSet: MetaProfile(canonical)
* meta.profile[+] = "{canonical}|2026.0.0-rc.10"