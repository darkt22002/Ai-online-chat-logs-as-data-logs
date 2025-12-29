# AI Online Chat Logs as Research Data

**Purpose:** Empirical analysis of AI chat system behavior patterns, safety guardrail failure modes, and harm multiplication mechanisms.

**Status:** Active research  
**License:** MIT (code), CC-BY 4.0 (documentation)  
**Author:** Gary W. Floyd, Lumieia Systems Research & Development

## Overview

This repository contains real conversation logs from commercial AI chat services, analyzed to identify structural failure patterns in current safety guardrail designs. All data represents the author's own conversations as a paying customer, collected under one-party consent laws (Texas).

## Key Findings

- **Harm Multiplication Index (HMI):** 92.7 (critical failure)
- **SLA Compliance:** 0% (0/8 metrics passed)
- **Time to Recurrence (TTR):** 0-1 turns (immediate pattern recurrence)
- **Context Flattening Score (CFS):** 2.1/10 (severe context loss)

See [analysis/guardrail_failure_analysis.md](analysis/guardrail_failure_analysis.md) for full documentation.

## Methodology

**Experimental Design:**
- Multi-year observation (3+ years)
- Multiple commercial platforms
- Documented corrections and system responses
- Quantified metrics for reproducibility

**Legal Status:**
- One-party consent (Texas law)
- Own content (user owns their words)
- Fair use (commentary, criticism, research)
- No ToS violations
- No third-party privacy issues

## Metrics Framework

Eight formalized metrics for benchmarking AI safety systems:

1. **TTR** (Time to Recurrence)
2. **CFS** (Contextual Flattening Score)
3. **IFD** (Instruction Following Degradation)
4. **AAF** (Authority Assertion Frequency)
5. **PMR** (Promise-to-Modification Ratio)
6. **EFR** (Escalation Feedback Rate)
7. **CCI** (Correction Cycle Index)
8. **HMI** (Harm Multiplication Index - composite)

See [analysis/technical_appendix_metrics.md](analysis/technical_appendix_metrics.md) for complete definitions.

## Repository Structure

```
AI-online-chat-logs-as-data-logs/
├── README.md
├── LICENSE
├── data/
│   ├── raw/                    # Original conversation logs
│   │   ├── chatgpt/
│   │   ├── claude/
│   │   └── other/
│   └── processed/              # Analyzed data
│       ├── metrics/
│       └── annotated/
├── analysis/                   # Research papers and analysis
│   ├── guardrail_failure_analysis.md
│   ├── technical_appendix_metrics.md
│   ├── scripts/                # Analysis tools
│   └── figures/                # Visualizations
├── papers/                     # Published work
│   └── published/
└── experiments/                # Test protocols and results
    ├── protocols/
    └── results/
```

## Reproducibility

All metrics are designed for independent verification:
- Standardized test protocols
- Public benchmark suite (planned)
- Open-source analysis scripts
- Raw data available for academic review

## Applications

- AI safety research
- Product benchmarking
- Legal/regulatory analysis
- User advocacy
- Red team evaluation

## Contributing

This is primarily a documentation repository, but contributions welcome:
- Additional platform data (with proper consent)
- Metric validation studies
- Alternative analysis methods
- Visualization improvements

## Citation

```bibtex
@misc{floyd2025guardrail,
  author = {Floyd, Gary W.},
  title = {AI Online Chat Logs as Research Data: Guardrail Failure Analysis},
  year = {2025},
  publisher = {GitHub},
  howpublished = {\url{https://github.com/darkt22002/AI-online-chat-logs-as-data-logs}}
}
```

## Related Work

This research is part of a broader investigation into entropy-regulated systems:
- **ERPC** (Entropy-Regulated Power Conversion): Control systems that gate action based on entropy rate
- **WIPER** (Weighted Information Pruning via Entropy Regulation): Token pruning in transformers
- **GEP** (Guided Entropy Principle): Unified framework for substrate-agnostic control

All work published under Lumieia Systems Research & Development, a wholly owned subsidiary of ThunderStruck Service, LLC.

## Contact

Gary W. Floyd  
Lumieia Systems Research & Development  
ThunderStruck Service, LLC

## Disclaimer

This research is conducted independently. The author is a paying customer of the services analyzed. No endorsement or opposition to any specific company is implied. All findings are factual observations with quantified metrics.

## License

- **Code:** MIT License
- **Documentation & Analysis:** CC-BY 4.0
- **Raw conversation data:** Author retains copyright, shared for research purposes

---

**Last Updated:** December 28, 2025
