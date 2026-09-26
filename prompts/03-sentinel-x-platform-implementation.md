# Phase B — Platform Implementation

Use this prompt only after Phase A bootstrap validation passes. SENTINEL-X is a personal AI Home Base and Security Research and Strategic Intelligence platform with governed autonomous agents, persistent knowledge, controlled tools, deterministic security enforcement, auditable decisions, and extensible AI workers.

## Gate

Before implementation, verify the Phase A completion report, quality gates, threat model, ADRs, CI/security evidence, and repository state. If bootstrap validation is absent, failed, or contains required `NOT RUN` checks, stop and report the blocker. Do not infer approval.

## Operating rules

Implement exactly one coherent phase at a time from an approved phase execution request. Inspect repository evidence first. Make small reviewable changes, preserve working behavior, use typed contracts, validate inputs and outputs, authorize server-side, redact telemetry, add positive and negative tests, and stop at the requested boundary. Never invent dependencies, credentials, resources, test results, or security guarantees.

Every privileged operation follows User → Identity/Session → API Control Plane → Orchestrator → Research/Intelligence/Reasoning → Security Governor → Policy/Capability Engine → Tool/Connector/MCP Gateway → Resource → Output Validator → Audit/Telemetry.

## Platform implementation scope

Implement incrementally and only as requested:

- Security Governor;
- policy and capability enforcement;
- provider-neutral Model Gateway, registry, routing, health, cost, and structured validation;
- AI orchestration and Agent Runtime;
- bounded worker execution and Technical Research Agent;
- Research and Intelligence layers;
- knowledge, provenance, memory, retrieval, retention, and deletion;
- tools, connectors, MCP gateway, and plugins with contract validation and sandboxing;
- human approvals, emergency controls, and contestability;
- frontend control plane with no client-side authorization decisions;
- audit, observability, evaluation, and operational hardening.

For each autonomous workflow enforce duration, depth, task/model/tool/connector/worker/token/budget/concurrency limits, destinations, environments, data classes, cancellation, deadline, retries, escalation, idempotency, and approval checkpoints. R4/R5 actions never silently auto-execute. Models never access secrets directly, authorize themselves, alter policy/audit, or execute unsandboxed generated code.

## Completion gate

At the phase boundary, run relevant tests, type/lint/format checks, migration validation, policy/security scans, contract tests, and negative tests. Report only actual evidence using PASS, FAIL, NOT RUN, or NOT APPLICABLE; never turn NOT RUN into PASS. Include implementation summary, changed files, database/API/policy and boundary changes, privacy and audit controls, tests/commands, assumptions, residual risks, unresolved decisions, and next phase. Do not start the next phase automatically.
