# Illustrative Example — Not a production approval

- **Requested phase:** Phase A — policy foundation
- **Objective:** Establish versioned deny-by-default policy tests.
- **Context:** Fictional repository `example-home-base`; no production data.
- **Sources:** Charter, threat model TM-001, ADR-001.
- **Included scope:** Rego bundle, unit tests, CI invocation, documentation.
- **Excluded scope:** Runtime Governor and external connectors.
- **Dependencies:** OPA test runner.
- **Security requirements:** Deny by default; R4/R5 require approval; no capability means no action.
- **Privacy requirements:** No sensitive fixtures or secrets.
- **Responsible AI requirements:** Policy decisions are explainable and not model-authorized.
- **Acceptance criteria:** Denied request tests and approval-required tests pass.
- **Test plan:** Unit and negative tests; integration check NOT RUN.
- **Stop condition:** Stop after policy foundation validation.
