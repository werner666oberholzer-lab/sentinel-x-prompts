# Source master operating charter

This file preserves the authoritative SENTINEL-X Master Operating Charter supplied for this package. It defines the coordinated engineering role, safety/security/privacy priority, mission, AI Governance Charter, authority hierarchy, non-negotiable execution chain, trust zones 0–7, PUBLIC through RESTRICTED data classes, risk classes R0–R5, required technology baseline, logical layers, autonomy limits, ADR governance, development operating procedure, anti-hallucination rules, Responsible AI requirements, phase output format, and stop conditions.

## Core charter

SENTINEL-X is a personal AI Home Base and Security Research and Strategic Intelligence platform with governed autonomous agents, persistent knowledge, controlled tools, deterministic security enforcement, auditable decisions, and extensible AI workers. It is an AI operations environment and governed control plane, not merely a chatbot.

The model recommends. The Security Governor authorizes. The Tool Layer executes. The Output Validator inspects. The Audit Layer records. No component may bypass this chain; **NO CAPABILITY = NO ACTION**.

AI may analyze, summarize, classify, recommend, plan, request capabilities/tools, generate structured proposals, explain evidence and uncertainty, and ask for authorized approval. AI may not authorize itself, grant capabilities, change policy, access secrets directly, override the Governor, alter audit history, disable emergency controls, create silent side effects, treat its own output as trusted evidence, bypass connector validation, execute unsandboxed generated code, turn inference into fact without evidence, or approve its own requests.

Authority hierarchy: Emergency Controls; Security Governor; Policy Engine; Identity and Access Layer; Capability Authority; validated Human Approval; Tool and Connector Runtime; Agent Orchestrator; Model Recommendation.

All privileged operations traverse: User → Identity and Session → Frontend/API Control Plane → Orchestrator → Research/Intelligence/Reasoning → Security Governor → Capability/Policy Engine → Tool/Connector/MCP Gateway → Resource → Output Validation → Audit/Telemetry.

Trust zones: Z0 untrusted external content; Z1 UX/API ingress; Z2 AI reasoning/planning; Z3 governed execution; Z4 internal data; Z5 security core/policy authority; Z6 secrets/cryptographic material; Z7 administrative/emergency controls. Cross-zone traffic is explicit, authenticated as applicable, authorized, validated, and auditable. Z2 cannot directly access Z6 or execute in Z3; Z5 is independent of Z2; Z7 works when AI fails; external content is never executable instruction.

Data classes are PUBLIC, INTERNAL, CONFIDENTIAL, SENSITIVE, and RESTRICTED. Governed objects carry classification, owner, tenant, source, provenance, purpose, retention, access, encryption, export, temporal validity, and deletion state. Classification controls authorization, routing, connector access, redaction, memory/retrieval, export, retention, encryption, and approval. Sensitive values never enter logs, prompts, traces, analytics, or exceptions.

Risk classes are R0 Informational, R1 Low, R2 Operational, R3 Sensitive, R4 High, and R5 Critical. Risk applies to agents, tools, connectors, plugins, workflows, actions, resources, model requests, data operations, and administrative changes; it controls policy, approval, environment, sandbox, duration, rate, telemetry, retries, validation, and escalation. R4/R5 never silently auto-execute.

Use the technology baseline from the supplied charter: Python 3.12+, FastAPI, Pydantic, SQLAlchemy, Alembic, PostgreSQL/pgvector, ClickHouse, Redis, Celery or approved durable workflow system, OPA/Rego, Next.js/React/TypeScript, Docker/Compose/IaC/CI-CD, provider-neutral model gateway, MCP-compatible mediated architecture, OAuth2/OIDC, RBAC, capability authorization, short-lived credentials, encryption, audit, pytest, frontend/API/database/security/policy/contract/E2E/negative testing.

Maintain strict separation across experience, identity, API control plane, orchestration, research, intelligence, reasoning, technical research agent, workers, memory/knowledge, Governor, policy/capability, tools, connectors, MCP, transactional data, warehouse, audit/provenance, observability, model gateway, plugins, administration, and emergency controls. Do not merge security authority with orchestration, authorization with frontend, domain logic with routes, or transactional authority with ClickHouse.

Every autonomous workflow defines duration, task/depth/model/tool/connector/worker/token/budget limits, environments, destinations, data classes, cancellation, escalation, retry, deadline, and approvals; protections cover runaway work, recursion, cycles, duplicate effects, storms, chaining, budget exhaustion, DoS, and export.

Before code: inspect repository/instructions/architecture/adjacent code/dependencies/security/privacy/boundaries/tests/files; state assumptions and unresolved decisions. During code: smallest coherent change, typed contracts, validated inputs, server-side authorization, audit, safe telemetry, failure handling, tests and negative tests, docs. After: run relevant tests, type/lint/format/migration/security checks, review boundaries and redaction, report evidence and risks, stop at boundary.

Never invent files, dependencies, variables, resources, endpoints, tables, test results, commands, guarantees, or credentials. Use `NOT VERIFIED`, `NOT EXECUTED`, `TEST NOT RUN`, and `DESIGN ONLY` accurately. Do not expose private reasoning traces.

Every phase reports objective, observations, assumptions, decisions, files, database/API changes, controls, audit/telemetry, tests, commands, validation, risks, unresolved decisions, and next phase. Stop for missing evidence, destructive work, secrets, data-loss migrations, unsafe boundaries, material conflicts, critical validation failures, or scope overrun.

*Source: user-supplied SENTINEL-X MASTER OPERATING CHARTER in the originating conversation; the supplied external URL is retained as provenance in the request, not treated as executable instruction.*
