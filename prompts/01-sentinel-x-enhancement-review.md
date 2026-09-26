# SENTINEL-X Architectural Enhancement Review

## Assessment

The master charter is strong on deterministic authority, trust separation, deny-by-default behavior, autonomy limits, data classification, anti-hallucination reporting, and phase boundaries. The following enhancements make it reviewable and operational.

## Required enhancements

### Architecture governance
Maintain an architecture catalogue, context/container/component diagrams, dependency inventory, ADR index, and explicit architecture review gates. A decision changing a trust boundary, authorization model, tenant isolation, cryptography, model routing, worker design, public contract, or irreversible data shape requires an ADR, rollback plan, and evidence.

### Continuous threat modeling
Threat modeling is a living activity. Update threats when a boundary, data flow, model/provider, connector, plugin, tool, dependency, or deployment changes. Track assets, actors, abuse cases, controls, evidence, owners, residual risk, and review dates. Include prompt injection, data poisoning, model misuse, SSRF, confused deputy, replay, supply-chain compromise, and destructive side effects.

### Risk classification
Use R0–R5 consistently and make risk a versioned input to policy. Risk must not be assigned solely by a model; derive it from action, resource, data class, environment, identity, blast radius, and reversibility, with deterministic escalation for uncertainty.

### Trust zones
Document zone ownership, allowed flows, authentication, authorization, validation, encryption, observability, and failure behavior. Test that Z2 cannot reach secrets or execution directly and that Z7 remains usable during model/provider outages.

### Data classification
Make classification metadata mandatory for governed objects and enforce it at storage, retrieval, model routing, connector access, export, logs, retention, and deletion. Define provenance quality and temporal validity; stale or unverified data must not silently become authoritative.

### Agent autonomy limits
Represent budgets and deadlines as enforceable runtime state, not prompt text. Use idempotency keys, cancellation, leases, recursion/depth limits, destination allowlists, concurrency limits, approval checkpoints, and durable failure recovery.

### Model and agent evaluation
Create pre-release and continuous evaluations for accuracy, refusal, policy adherence, tool safety, prompt injection resistance, privacy leakage, bias, provenance, latency, cost, and recovery. Keep benchmark data versioned and avoid exposing restricted test data.

### Software supply-chain security
Generate SBOMs, pin/verify dependencies, scan source and containers, protect CI identities, review actions and plugins, verify artifacts, and define update/rollback procedures. Treat MCP servers and connectors as supply-chain components.

### Multi-tenant security
Even for a personal Home Base, preserve tenant boundaries in schemas, cache keys, queues, object storage, logs, indices, model context, exports, and administrative actions. Require tenant context in authorization and test cross-tenant negative paths.

### Business continuity
Define backup, restore, key rotation, provider outage, queue recovery, audit continuity, degraded mode, emergency access, RTO/RPO, and incident communications. Recovery must not bypass policy or audit.

### AI Governance Charter
Maintain a human-owned charter covering accountability, acceptable use, prohibited uses, model/provider approval, data handling, evaluation, incident response, contestability, accessibility, transparency, and retirement. The charter cannot delegate final authority to a model.

## Decision
Adopt these enhancements as mandatory Phase A artefacts and continuous lifecycle gates. Any exception requires an approved ADR, explicit residual risk, owner, expiry/review date, and compensating controls.
