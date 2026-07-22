param(
    [Parameter(Mandatory = $true)]
    [string]$Project,

    [switch]$Force
)

$ErrorActionPreference = "Stop"

$Project = (Resolve-Path -LiteralPath $Project).Path
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Split-Path -Parent $ScriptDir
$SkillsSource = Join-Path $RepoRoot ".agents/skills"
$SkillsTarget = Join-Path $Project ".agents/skills"
$ToolkitTarget = Join-Path $Project ".safety-md"
$SharedTarget = Join-Path $SkillsTarget "_safety-md"

if ((Test-Path -LiteralPath $ToolkitTarget) -and -not $Force) {
    throw "Refusing to overwrite existing toolkit: $ToolkitTarget. Re-run with -Force to update it."
}

$SkillDirectories = Get-ChildItem -LiteralPath $SkillsSource -Directory -Filter "safety-md-*"

if (-not $Force) {
    foreach ($Skill in $SkillDirectories) {
        $Destination = Join-Path $SkillsTarget $Skill.Name
        if (Test-Path -LiteralPath $Destination) {
            throw "Refusing to overwrite existing skill: $Destination. Re-run with -Force to update it."
        }
    }
    if (Test-Path -LiteralPath $SharedTarget) {
        throw "Refusing to overwrite existing shared references: $SharedTarget. Re-run with -Force to update it."
    }
}

New-Item -ItemType Directory -Force -Path $SkillsTarget | Out-Null
foreach ($Skill in $SkillDirectories) {
    $Destination = Join-Path $SkillsTarget $Skill.Name
    if (Test-Path -LiteralPath $Destination) {
        Remove-Item -LiteralPath $Destination -Recurse -Force
    }
    Copy-Item -LiteralPath $Skill.FullName -Destination $Destination -Recurse
}

if (Test-Path -LiteralPath $SharedTarget) {
    Remove-Item -LiteralPath $SharedTarget -Recurse -Force
}
New-Item -ItemType Directory -Force -Path (Join-Path $SharedTarget "spec/mappings"), (Join-Path $SharedTarget "legislation"), (Join-Path $SharedTarget "templates") | Out-Null
Copy-Item -LiteralPath (Join-Path $RepoRoot "GLOSSARY.md") -Destination (Join-Path $SharedTarget "GLOSSARY.md")
Copy-Item -LiteralPath (Join-Path $RepoRoot "spec/specification.md") -Destination (Join-Path $SharedTarget "spec/specification.md")
Copy-Item -Path (Join-Path $RepoRoot "spec/mappings/*.md") -Destination (Join-Path $SharedTarget "spec/mappings")
Copy-Item -LiteralPath (Join-Path $RepoRoot "legislation/health-and-social-care-act-2012-information-standards-as-amended.md") -Destination (Join-Path $SharedTarget "legislation")
Copy-Item -LiteralPath (Join-Path $RepoRoot "legislation/cso-briefing-data-use-and-access-act-2025.md") -Destination (Join-Path $SharedTarget "legislation")
Copy-Item -Path (Join-Path $RepoRoot "templates/*.md") -Destination (Join-Path $SharedTarget "templates")
@'
# SAFETY.md installed references

This directory is installed support material for the neighbouring `safety-md-*` skills.

Canonical source: https://github.com/pacharanero/SAFETY.md

Do not use the presence of these files as evidence of compliance. Generated clinical safety documentation still requires project-specific evidence, review, and appropriate CSO sign-off.
'@ | Set-Content -LiteralPath (Join-Path $SharedTarget "README.md") -Encoding UTF8

if (Test-Path -LiteralPath $ToolkitTarget) {
    Remove-Item -LiteralPath $ToolkitTarget -Recurse -Force
}
New-Item -ItemType Directory -Force -Path (Join-Path $ToolkitTarget "spec/mappings"), (Join-Path $ToolkitTarget "legislation"), (Join-Path $ToolkitTarget "templates") | Out-Null
Copy-Item -LiteralPath (Join-Path $RepoRoot "GLOSSARY.md") -Destination (Join-Path $ToolkitTarget "GLOSSARY.md")
Copy-Item -LiteralPath (Join-Path $RepoRoot "spec/specification.md") -Destination (Join-Path $ToolkitTarget "spec/specification.md")
Copy-Item -Path (Join-Path $RepoRoot "spec/mappings/*.md") -Destination (Join-Path $ToolkitTarget "spec/mappings")
Copy-Item -LiteralPath (Join-Path $RepoRoot "legislation/health-and-social-care-act-2012-information-standards-as-amended.md") -Destination (Join-Path $ToolkitTarget "legislation")
Copy-Item -LiteralPath (Join-Path $RepoRoot "legislation/cso-briefing-data-use-and-access-act-2025.md") -Destination (Join-Path $ToolkitTarget "legislation")
Copy-Item -Path (Join-Path $RepoRoot "templates/*.md") -Destination (Join-Path $ToolkitTarget "templates")

@'
# Start here: use SAFETY.md in this project

This project has the SAFETY.md toolkit installed locally.

## If your LLM supports Agent Skills

Explicitly invoke `safety-md-router`, then choose the workflow you need. To create the initial safety documentation, invoke `safety-md-csmf`.

All SAFETY.md skills are user-invoked and must not run automatically.

## If your LLM does not support Agent Skills

Paste this prompt into the LLM while this project is open:

```text
Read .safety-md/START-HERE.md, .safety-md/spec/specification.md, the relevant files in .safety-md/spec/mappings/, and .safety-md/templates/.

Then inspect this project and draft proportionate repository-native clinical safety documentation. Start with a root SAFETY.md and add SAFETY-CASE.md, HAZARD-LOG.md, and SAFETY-PLAN.md only where proportionate.

Distinguish DCB0129 manufacturer/supplier obligations from DCB0160 deployment/use obligations. Treat ISO 14971/MDR as a separate assurance domain. Mark every unknown as [PENDING]. Do not invent clinical context, evidence, CSO sign-off, risk acceptance, compliance, approval, or safety claims.
```

The generated files begin the safety work. They do not prove compliance or replace CSO judgement.
'@ | Set-Content -LiteralPath (Join-Path $ToolkitTarget "START-HERE.md") -Encoding UTF8

@'
# Installed SAFETY.md toolkit

Canonical source: https://github.com/pacharanero/SAFETY.md

Start with [`START-HERE.md`](./START-HERE.md).

Update this snapshot by pulling the canonical repository and rerunning `scripts/embed-in-project.ps1 -Project C:\path\to\project -Force` from that clone.
'@ | Set-Content -LiteralPath (Join-Path $ToolkitTarget "README.md") -Encoding UTF8

Write-Host ""
Write-Host "Embedded SAFETY.md into:"
Write-Host "  $Project"
Write-Host ""
Write-Host "Next: open the project in your LLM tool and invoke safety-md-router."
Write-Host "If the tool does not support skills, ask it to read .safety-md/START-HERE.md."
