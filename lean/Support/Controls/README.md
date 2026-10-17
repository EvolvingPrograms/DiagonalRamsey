# Control functions for the improved construction

These 89 modules contain our control-function analysis, finite witnesses and
their assembly. Every module is in the final theorem's import closure.

## Attribution

Developed in this project on top of the
[Zhao–Booth-Clibborn–Schwahn framework](../Published/README.md), the
[Lu–Wang source bound](../LuWang/README.md), and the
[analytic checking library](../Analysis/README.md).
Our contribution here is the control constructions and their certified
connections to those inherited interfaces, not the underlying Ramsey framework.
See [NOTICE](../../../NOTICE.md) and the repository's [MIT license](../../../LICENSE).

## Contents

- Envelope, derivative, concavity, integrability and tail lemmas establish
  reusable bounds for control functions.
- Source, profile and published-interface bridges connect those bounds to
  admissibility and the inherited construction.
- Route and tangent modules express finite geometry and its checking laws.
- `ControlBank/` and the candidate certificate modules provide the concrete
  finite witnesses used by the final proof.

Candidate numbers identify intermediate constructions; inclusion here means
they are dependencies of the final bound, not separate final Ramsey claims.
