# Supporting library

Every Lean module in this directory is imported transitively by the final
theorem. This library combines inherited mathematics with our control certificates.

| Directory | Modules | Role and source |
| --- | ---: | --- |
| Ramsey | 16 | Definitions, bounds and graph operations from [RamseyLean](https://github.com/snorin239/RamseyLean), formalizing Gupta–Ndiaye–Norin–Wei |
| LuWang | 735 | Lu–Wang source bound and finite verification, with our adaptations |
| Analysis | 18 | Lu–Wang interval arithmetic and analytic checking laws, with our proof-maintenance edits |
| Published | 52 | Zhao–Booth-Clibborn–Schwahn weighted-potential, closure and profile-bank lemmas |
| Controls | 89 | Our certified control functions for the improved construction |

See [source attribution and licenses](../../NOTICE.md).
