# Source bound and retained-set descent

This directory supplies the source bound used by the improved construction,
including its analytic interfaces and finite verification.

## Attribution

Based on Zhipeng Lu and Sichen Wang's
[*Retained-Set Descent for Diagonal Ramsey Numbers*](https://arxiv.org/abs/2609.14525)
and [Lean development](https://github.com/sichen-wang/diagonal-ramsey-numbers).
Their modules originally used the namespace `RamseyCurrent`.

Our adaptation includes reorganized certificate checks, precision and proof
maintenance changes, and interfaces needed by the improved construction.
The retained-set framework and inherited source data are credited to Lu–Wang.
See their [MIT notice](../../NOTICE.md#inherited-license-notices) and
[NOTICE](../../NOTICE.md).

## Contents

The top-level modules state and assemble source, geometry and descent laws.
The `SourceCertificates/`, `SourceCertificateGroups/`,
`SourceCertificateFamily/` and
`SourceGeometryCertificates/` directories contain finite instances and their
connections to those laws. Their proofs use the analytic library in
[Analysis](../Analysis/README.md) and the foundational
[Ramsey library](../Ramsey/README.md).

Each source-certificate chunk specifies its repeated cell parameters once in
`cellDefaults`; individual cells override only differing fields. The old-piece
lists are explicit inputs to the membership proofs. Each cell specifies exact
rational values and precision settings for the certificate tests.
The linking proofs live beside their cells in `SourceCertificates/`.
Each link applies `Linked.of_piece` from
[SourceCertificateLink.lean](SourceCertificateLink.lean): matching coefficients,
interval containment and membership of the old pieces imply the required link.
The list-subset law combines the individual membership proofs without a
generated case split.
