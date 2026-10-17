# Joint source and profile bank

This directory supplies the finite inputs to the simultaneous induction in
[Section 6](../../../S6_GlobalConstruction/README.md). The mathematical argument
is one induction on the number of vertices. Most of the files here check the
data used to instantiate that induction.

The bank contains 1,469 raw profiles, 947 closed profiles and 2,716 source
lines. Its profile and control data descend from
[Zhao–Booth-Clibborn–Schwahn](../../../Support/Published/README.md).
Our assembly uses shared interval, leaf and route laws to connect these data
to the complementary-moment construction. The baseline is
[Lu–Wang's source bound](../Baseline.lean).

## The proof in three steps

1. **Raw profiles.** Under the induction hypothesis on proper subgraphs,
   every leaf or route gives its asserted profile on its assigned interval.
   [RawAssembly.lean](RawAssembly.lean) assembles the statement
   `JointRawAssembly.all_pieces`. [RawSelector.lean](RawSelector.lean) explains
   the choices and [RawCoverage/Assembly.lean](RawCoverage/Assembly.lean)
   checks that their intervals cover every raw profile.
2. **Closed profiles.** Density transfer and complementary pairing turn
   raw profiles into closed profiles on the same host.
   [ClosedSelector.lean](ClosedSelector.lean) gives the three reusable rules;
   [ClosedCoverage.lean](ClosedCoverage.lean) checks the interval covers.
3. **Sources and simultaneous induction.** The source covers outside this
   directory combine the resulting profiles with the baseline.
   [BaselineInputs.lean](BaselineInputs.lean), theorem `joint_assertions`,
   invokes Section 6's induction and gives one common constant:

$$\exists C\ge1:\quad
\bigwedge_i P_i^{\mathrm{raw}}.\operatorname{Assert}(C)
\;\land\;\bigwedge_j P_j^{\mathrm{closed}}.\operatorname{Assert}(C)
\;\land\;\bigwedge_h\operatorname{Source}_h(C).$$

Here `Source` is the finite-graph assertion at threshold
$C\exp(A_hk+B_h\ell)$; each `Assert` is the density-conditioned assertion
defined in Section 6. These assertions are proved together, so a source
used to stop a route is available on proper subgraphs without circularity.

## Why there are so many files

The initial version contained **1,937 Lean modules**, all in the final theorem's
import closure. Import reachability does not establish that every datum is
mathematically necessary: the assembly currently proves the entire bank.

| Family | Modules | Purpose |
|---|---:|---|
| `InheritedCertificates/` | 825 | Numerical validity of inherited controls |
| `RemainingRoutes/` | 686 | Remaining route constructions |
| `CachedRouteFastChecks*` | 147 | Shared route checks |
| `LeafChecks*`, `LeafTerminals*` | 90 | Leaf geometry and terminal inequalities |
| `RawCoverage/` | 47 | Coverage of raw-profile intervals |
| `AlignedChecks*`, `LocalChecks*`, `ComplementaryBatch*` | 64 | Closed-profile transfer checks |
| Other files | 78 | Data, reusable laws and assembly |

`Cached` names refer to reusing proved constructions; these are proof sources,
not disposable compiler-cache files. Numbered modules split checking work into
independently compilable units.

## Equations replacing explicit tables

[ArithmeticData.lean](ArithmeticData.lean) specifies uniform samples by
$q_i=a+ih$. [RoundedData.lean](RoundedData.lean) specifies fixed-precision
heights by $y_i=\lfloor(ai+b)/d\rfloor/s$. Rational normalization reproduces
the original fraction encodings exactly.

[EnvelopeData.lean](EnvelopeData.lean) generates both control partitions from
the tangent lines $m_iq+c_i$. Their intersections give degree boundaries

$$q_i=\frac{c_{i+1}-c_i}{m_i-m_{i+1}}.$$

On degree cell $i$, the ordered objective has slope $m_i+w-wu$ in $q$.
The integration changeover is therefore $u_i=(m_i+w)/w$. At its selected
right endpoint $q_i$, the integration line is

$$-wq_i u+(m_i+w)q_i+c_i.$$

The constructor reverses the degree cells, clips at the integration cutoff
and discards empty intervals. All 825 inherited controls' degree and integration
tables are reproduced by these formulas. Their existing numerical soundness
checks remain in place.

This first reduction replaces 6,347 progression lists and 15,786 height entries,
and removes explicit envelope tables. Including the three shared constructors,
Lean source fell from 61,760,836 to 50,629,839 bytes and from 251,142 to 207,775
lines. Module count is 1,940; this is a reduction in repeated data, not yet in
the number of certificate modules.

## What would genuinely simplify this

The largest opportunity is to prove a **smaller closed bank** sufficient for
the chosen root. Start with its source and child-profile calls, follow the
chosen source-cover and profile-recipe dependencies, and retain a family closed
under those calls. Then instantiate the same induction with that family and
remove the unused numerical checks. Global assembly imports currently hide
this finer dependency structure.

Another opportunity is to replace repeated numerical checks by uniform bounds
over parameter ranges. The existing leaf, interval-transfer and route laws
already perform some of this sharing. Further reductions must still supply
the same strict margins and complete interval covers.

Grouping the files into controls, leaves, routes and closed-profile transfers
would improve navigation. It would not, by itself, reduce these proof obligations
or the amount of checking.
