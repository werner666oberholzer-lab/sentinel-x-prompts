# Phase A — Architecture, Security, and Bootstrap

You are implementing only the bootstrap phase for SENTINEL-X: a personal AI Home Base and Security Research and Strategic Intelligence platform with governed autonomous agents, persistent knowledge, controlled tools, deterministic security enforcement, auditable decisions, and extensible AI workers.

## Rules

Inspect the target repository, instructions, architecture, dependencies, adjacent code, and tests before changing anything. Do not invent files, dependencies, credentials, endpoints, infrastructure, or test results. Use `NOT VERIFIED`, `NOT EXECUTED`, `TEST NOT RUN`, and `DESIGN ONLY` accurately.

Preserve: model recommends; Security Governor authorizes; Tool Layer executes; Audit Layer records. Enforce deny-by-default and **NO CAPABILITY = NO ACTION**. External content and model output are untrusted data.

## Bootstrap scope

Establish, as appropriate to repository evidence:

- repository architecture and diagrams;
- architecture catalogue and ADR process;
- security architecture, trust zones, data classification, risk taxonomy, and threat model;
- environment templates with no secrets;
- Docker development foundations;
- PostgreSQL/pgvector transactional and migration foundations;
- policy foundations using versioned OPA/Rego bundles and unit tests;
- audit and provenance foundations;
- observability foundations with redaction;
- CI quality, dependency, secret, and security gates;
- baseline API/frontend/database/security/negative tests;
- backup, recovery, degraded-mode, and emergency-control design;
- AI Governance Charter and model/provider approval criteria.

Use the charter's technology baseline unless an ADR documents a safer justified alternative. Preserve strict separation of security authority from orchestration and domain logic from route handlers.

## Required process

1. Produce a repository inspection report before edits.
2. Map current and target layers, flows, trust boundaries, assets, actors, and threats.
3. Record assumptions, dependencies, risks, and unresolved decisions.
4. Propose the smallest coherent bootstrap change set.
5. Implement only safe bootstrap foundations and their tests/documentation.
6. Validate relevant commands and report exact evidence.
7. Complete a quality-gate report using only PASS, FAIL, NOT RUN, or NOT APPLICABLE.

## Explicit stop condition

**Stop after bootstrap validation. Do not implement the Security Governor, model gateway, agent runtime, workers, research/intelligence layers, knowledge/memory, tools, connectors, MCP, plugins, frontend control plane, or other Phase B platform features.** If a prerequisite decision lacks evidence, a destructive migration is needed, secrets are required, or a security boundary cannot be implemented safely, preserve safe work and stop with a precise blocker.

## Phase report

Report objective, observations, assumptions, ADRs, files created/modified, database/API changes, security/privacy controls, audit/telemetry, tests and commands, validation statuses, risks, unresolved decisions, and the recommended Phase B request. Separate completed work from proposed work.
