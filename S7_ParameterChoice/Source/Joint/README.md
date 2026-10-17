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

## File organization

| Family | Purpose |
|---|---|
| `InheritedCertificates/` | Numerical validity of inherited controls |
| `RemainingRoutes/` | Route constructions |
| [CachedRouteChecks/](CachedRouteChecks/) | Prefix, cell, linear and zip route checks |
| `LeafChecks*`, `LeafTerminals*` | Leaf geometry and terminal inequalities |
| `RawCoverage/` | Coverage of raw-profile intervals |
| `AlignedChecks*`, `LocalChecks*`, `ComplementaryBatch*` | Closed-profile transfer checks |

`Cached` names refer to reusing proved constructions; these are proof sources,
not disposable compiler-cache files. Numbered modules split checking work into
independently compilable units.

## Equations specifying the data

[ArithmeticData.lean](ArithmeticData.lean) specifies uniform samples by
$q_i=a+ih$. [RoundedData.lean](RoundedData.lean) specifies fixed-precision
heights by $y_i=\lfloor(ai+b)/d\rfloor/s$. Rational normalization gives
exact fraction encodings.

[EnvelopeData.lean](EnvelopeData.lean) generates both control partitions from
the tangent lines $m_iq+c_i$. Their intersections give degree boundaries

$$q_i=\frac{c_{i+1}-c_i}{m_i-m_{i+1}}.$$

On degree cell $i$, the ordered objective has slope $m_i+w-wu$ in $q$.
The integration changeover is therefore $u_i=(m_i+w)/w$. At its selected
right endpoint $q_i$, the integration line is

$$-wq_i u+(m_i+w)q_i+c_i.$$

The constructor reverses the degree cells, clips at the integration cutoff
and discards empty intervals. These formulas specify the degree and integration
tables of all 825 inherited controls.

### Local slopes imply global support

[EnvelopeGeometry.lean](EnvelopeGeometry.lean) proves the common concavity
argument. Write the polygon vertices as $(q_i,h_i)$, with ordered abscissae
and nonincreasing segment slopes $m_i$. For a tilt $t$,

$$ (h_{i+1}+tq_{i+1})-(h_i+tq_i)
   =(m_i+t)(q_{i+1}-q_i). $$

If $m_{k-1}+t\ge0\ge m_k+t$ (omitting the missing inequality at an endpoint),
these increments are nonnegative before $k$ and nonpositive afterward. Hence

$$ h_j+tq_j\le h_k+tq_k\qquad\text{for every }j. $$

[EnvelopeCheck.lean](EnvelopeCheck.lean) applies this law at both endpoints of
each integration cell. For all 825 controls, ordering, continuity and adjacent
slope brackets imply the corner inequalities. Pivot selection searches the
finite vertex list, and the theorem supplies the global comparisons required
by `ControlCertificate.GeometryChecks`.

### Routes along a partition

For a fixed donor $P$ and retained weight $z$, the calls on a knot sequence
$q_0,\ldots,q_n$ are

$$\operatorname{calls}(P,z;q)
  =\bigl[(P,z,[q_i,q_{i+1}])\bigr]_{i=0}^{n-1}.$$

`CallF.adjacent` in [FastRoute.lean](FastRoute.lean) implements this equation.
Concatenating uniform runs specifies the call lists in `RemainingRoutes/`,
including each donor, retained weight and breakpoint pair. Arithmetic
progressions specify the route knots, and concatenated constant runs use
`List.replicate` to specify density lists. The route checks apply to the
expanded sequences.
