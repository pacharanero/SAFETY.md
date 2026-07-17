# Getting started with SAFETY.md and an LLM

This guide is for Clinical Safety Officers, product owners, delivery leads, regulatory people, and other non-developers who want to use SAFETY.md with an AI coding assistant or LLM.

SAFETY.md works best when the LLM can see the software repository, because the aim is **safety close to code**: hazards, mitigations, evidence, releases, changes, and safety decisions should live near the thing they describe.

## What you need

1. A software repository, preferably in GitHub, GitLab, Bitbucket, or another Git-based system.
2. Access to an LLM or agent that can read and edit files in that repository.
3. Someone with clinical safety accountability, normally a CSO, to review and approve the outputs.
4. A willingness to leave unknowns as `[PENDING]` rather than letting the LLM guess.

## The simplest workflow

1. Open the repository in your agentic coding tool.
2. Tell the LLM what the product does, who uses it, and the clinical context.
3. Ask it to create a SAFETY.md file set using this repository’s templates or skills.
4. Review the generated files as draft safety documentation, not as finished evidence.
5. Ask the LLM to help identify missing hazards, assumptions, evidence, and review decisions.
6. Fill the gaps with real clinical, technical, deployment, and governance input.
7. Have the CSO review the evidence and record decisions in Git.

## Example starter prompt

```text
Use the SAFETY.md approach to create a first draft clinical safety documentation set for this repository.

Please:
- inspect the repo before writing;
- create or update SAFETY.md, SAFETY-CASE.md, HAZARD-LOG.md, and SAFETY-PLAN.md only where proportionate;
- distinguish DCB0129 manufacturer/supplier obligations from DCB0160 deployment/use obligations;
- include an applicable standards and assurance domains table;
- consider ISO 14971/MDR only as a separate assurance domain, not as a replacement for DCB0129/DCB0160;
- include DUAA2025-aware prompts for interoperability, portability, information access, security, analytics, AI/ML, and secondary use of data;
- mark unknowns as [PENDING] rather than inventing facts;
- do not claim the project is compliant, approved, or safe unless the evidence and CSO sign-off are actually present.
```

## If using SAFETY.md skills

If your agent harness supports skills, install or expose the SAFETY.md skills from this repository and deliberately invoke the one you need. The skills are intentionally user-invoked; they should not auto-fire.

Useful starting points:

- `safety-md-router` — helps choose the right SAFETY.md skill.
- `safety-md-csmf` — creates or updates a repository-native Clinical Risk Management File.
- `safety-md-hazard-workshop` — helps identify hazards and update a hazard log.
- `safety-md-review` — reviews existing safety docs for gaps, claims, and terminology issues.
- `safety-md-mdr-triage` — lightweight SaMD/MDR triage and handoff.
- `safety-md-duaa2025-check` — checks health/care information-standard implications.

See [`../spec/skills/distribution.md`](../spec/skills/distribution.md) for installation and distribution notes.

## What the LLM is good at

LLMs are useful for:

- reading a repository and summarising likely clinical context;
- turning scattered notes into structured safety documentation;
- proposing hazard prompts for review;
- linking hazards to code, tests, issues, pull requests, releases, and evidence;
- spotting missing roles, assumptions, residual risks, or unsupported compliance claims;
- generating a first-pass evidence pack for review.

## What the LLM must not do

Do not let the LLM:

- invent a CSO, clinical context, approval, validation result, or risk acceptance;
- claim DCB0129, DCB0160, DTAC, MDR, ISO 14971, or DUAA2025 compliance just because files exist;
- blur supplier/manufacturer evidence with local deployment evidence;
- hide unknown or high residual risks behind reassuring wording;
- replace CSO judgement, clinical governance, regulatory review, or professional accountability.

## A practical review loop

A good first session with an LLM should end with:

1. A root `SAFETY.md` explaining the current safety position.
2. A draft `SAFETY-CASE.md`, if proportionate.
3. A draft `HAZARD-LOG.md` or issue-based hazard-log plan.
4. A draft `SAFETY-PLAN.md`, if needed.
5. A list of `[PENDING]` questions for the team and CSO.
6. Clear next actions: evidence to find, hazards to workshop, roles to confirm, and decisions to review.

The output is the start of the safety work, not the end of it.
