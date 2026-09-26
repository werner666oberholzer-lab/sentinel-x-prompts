# Prompt Quality Checklist

- [ ] Every required file exists and is non-empty.
- [ ] `MANIFEST.json` is valid JSON.
- [ ] `VERSION` is present and matches the manifest.
- [ ] Prompt numbering is 00, 01, 02, 03.
- [ ] Bootstrap and implementation prompts are separate.
- [ ] Bootstrap prompt has an explicit stop condition.
- [ ] Implementation prompt requires validated bootstrap.
- [ ] Security Governor, deny-by-default, and NO CAPABILITY = NO ACTION are present.
- [ ] Trust zones, data classification, risk classes, and human approval are addressed.
- [ ] Anti-hallucination status terms are preserved.
- [ ] Required templates and examples exist.
- [ ] Examples are fictional, secret-free, and include NOT RUN plus residual risk.
- [ ] Scripts do not download or execute untrusted remote content.
- [ ] No secrets or private contact details are present.

A package passing this checklist is structurally validated, not security-certified.
