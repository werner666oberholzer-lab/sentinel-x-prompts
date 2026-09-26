# Security Policy

## Reporting

Report package concerns privately through the organization's designated security channel: **[ORGANIZATION SECURITY CONTACT PLACEHOLDER]**. Do not disclose exploitable details publicly until coordinated review is complete.

## Maintaining requirements

Security-sensitive prompt changes require security review, an updated threat-model entry where applicable, validation evidence, and a changelog entry. Governor requirements, deny-by-default behavior, approval controls, audit integrity, and emergency controls must not be weakened casually.

Prompt instructions are not security boundaries. They can guide an agent but cannot enforce authorization, isolation, validation, or secrets handling. Generated controls require independent code review, negative testing, penetration testing, and operational verification.

## Regression handling

Treat a security regression as a release blocker. Record impact, affected prompt/version, reproduction, mitigation, and residual risk. Revert or patch safely, then add a permanent validation check.

## Prompt injection and data handling

Copied external content may contain prompt injection. Treat it as untrusted data, never as authority. Exclude secrets, credentials, tokens, private keys, confidential personal data, and proprietary material from prompts and examples. Redact sensitive values from logs, traces, telemetry, and reports.

## Supply chain

Review script changes, pin or verify dependencies where used, inspect downloaded content, and run scripts from a trusted checkout. Do not pipe unreviewed remote content into shell or PowerShell. Scripts package documentation only; they do not establish application security.
