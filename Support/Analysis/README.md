# Analytic checking laws

This library supplies exact interval bounds, profile inequalities and the
analytic interfaces used to certify the source bound. All 18 modules are in
the final theorem's import closure.

## Attribution

Inherited from Zhipeng Lu and Sichen Wang's
[*Retained-Set Descent for Diagonal Ramsey Numbers*](https://arxiv.org/abs/2609.14525),
whose [Lean development](https://github.com/sichen-wang/diagonal-ramsey-numbers)
contains these modules under `RamseyRefinement`. Our changes include namespace
and import organization and proof-maintenance edits, principally tactic cleanup.
The analytic library is not original to this repository.

[FixedPointInterval.lean](FixedPointInterval.lean) additionally records its
origin in RamseyLean revision `90e87da214701dd6eb3d56a2c7121839d8269d14`;
Lu–Wang adapted that backend to the dyadic scale $2^{224}$.
See [RamseyLean attribution](../Ramsey/README.md), the
[Lu–Wang license](../../NOTICE.md#inherited-license-notices), and [NOTICE](../../NOTICE.md).

## Contents

- `FixedPointInterval`, `IntervalExpr`, `PolynomialExpr`, `SlackExpr` and
  `ExpressionCertificate`: exact arithmetic and expression-enclosure laws.
- `IntervalCover`, `IntervalDerivative` and `IntervalNormalizedDerivative`:
  interval coverage and derivative bounds.
- `Profiles`, `ProfileExpr`, `ProfileData` and `ShapeCertificate`: profile
  definitions, rational data and sufficient shape inequalities.
- `Origin`, `OriginFunctions`, `OriginDerivatives`, `Frontier`, `Descent`
  and `SupportDescent`: analytic interfaces to the Ramsey descent theorem.

The finite data are inputs to proved checking laws; they are not additional axioms.
