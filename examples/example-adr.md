# Illustrative ADR — Not a production approval

- **Status:** Accepted
- **Date:** 2026-09-26
- **Owners:** Fictional Platform Team

## Context

A fictional SENTINEL-X deployment needs versioned policy decisions independent of model output.

## Decision drivers

Security, auditability, reversibility, testability, and vendor neutrality.

## Options considered

Embedded model judgment; application-only checks; OPA/Rego policy bundles.

## Trade-offs

OPA adds operational components but provides deterministic, testable, reviewable policy.

## Decision

Use versioned OPA/Rego bundles mediated by the Security Governor.

## Security impact

Improves deny-by-default enforcement; requires bundle integrity and availability controls.

## Privacy impact

Policy inputs are minimized and sensitive values are redacted.

## Responsible AI impact

Models can recommend but cannot authorize.

## Operational impact

Bundle release and rollback procedures are required.

## Migration impact

None in fictional example.

## Reversibility

High: replace bundle through reviewed release.

## Validation criteria

Unit tests, negative tests, signed/reviewed bundle, and audit evidence.

## Consequences

Policy ownership and CI checks are mandatory.

## Follow-up actions

Add outage-mode tests and periodic review.
