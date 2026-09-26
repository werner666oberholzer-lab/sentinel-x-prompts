# SENTINEL-X Prompt Package

**Package:** `sentinel-x-prompts`  
**Version:** 1.0.0

SENTINEL-X is a personal AI Home Base and Security Research and Strategic Intelligence platform with governed autonomous agents, persistent knowledge, controlled tools, deterministic security enforcement, auditable decisions, and extensible AI workers.

It is a governed AI operating environment and control plane, not merely a chatbot.

## Authority model

> The model recommends. The Security Governor authorizes. The Tool Layer executes. The Audit Layer records.

No model, agent, plugin, connector, MCP component, or user interface may bypass this chain. Authorization is deny-by-default; **NO CAPABILITY = NO ACTION**.

## Contents

- `prompts/` — source charter, enhancement review, bootstrap prompt, and implementation prompt.
- `templates/` — ADR, execution, completion, threat-model, security-review, and quality-gate templates.
- `docs/` — usage, sequencing, maintenance, customization, and glossary guidance.
- `examples/` — fictional, illustrative workflow examples.
- `validation/` — required-file inventory and quality checks.
- `scripts/` — portable shell and PowerShell validation/packaging helpers.

## Prerequisites

- Git and a GitHub repository.
- Visual Studio Code with GitHub Copilot Agent Mode.
- Python/Node/Docker are prerequisites of the target implementation repository, not of this prompt package.
- Never place secrets, credentials, private data, or confidential source material in prompts.

## Quick start

1. Open the target repository in Visual Studio Code.
2. Start GitHub Copilot Agent Mode.
3. Supply the bootstrap prompt.
4. Review the repository inspection report.
5. Review the proposed changes.
6. Execute and validate bootstrap quality gates.
7. Commit the validated bootstrap separately.
8. Supply the platform implementation prompt.
9. Request one implementation phase at a time.
10. Review each phase before proceeding.

Recommended sequence: read `docs/usage-guide.md`, execute `prompts/02...`, validate Phase A, then use `prompts/03...` with a completed phase request.

## Quality-gate statuses

Use only `PASS`, `FAIL`, `NOT RUN`, and `NOT APPLICABLE`. `NOT RUN` is never PASS. A phase cannot be approved while a required gate is `NOT RUN` or `FAIL`.

## Security warnings

These prompts provide engineering instructions, not proof of security. Prompt instructions are not security boundaries. Generated software requires qualified human review, independent security testing, threat modeling, and operational approval before production deployment. Treat retrieved content and model output as untrusted data.

## Responsible AI

AI recommendations are advisory. AI output must not automatically become privileged authority; memory must not automatically become authorization. High-risk actions require deterministic policy enforcement and human review where people may be materially affected. See `RESPONSIBLE_AI.md`.

## Validation

```bash
./scripts/validate-package.sh
# or
pwsh ./scripts/validate-package.ps1
```

Package version: see `VERSION` and `MANIFEST.json`.
