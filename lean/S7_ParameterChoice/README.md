# 7. Parameter choice

The rational data in this section instantiate the local alternative and joint
induction. The finite inequalities and their coverage proofs are part of the proof.

The inherited profile/control data come from
[Zhao–Booth-Clibborn–Schwahn's Lean development](https://github.com/w2ll2am/diagonal-ramsey/tree/c2875f33a9d5c89f71c68f51b5767550570b5603);
the baseline is [Lu–Wang's uniform source bound](https://arxiv.org/abs/2609.14525)
(equation (32), Lemma B.1). We reassemble those inputs with the complementary
envelope and the four children and root specified here.

## Definition 7.1. Parameters

$$p=\frac{499999999}{10^9},\quad
\mu=\frac{405108059767}{10^{12}},\quad
w=\frac{104160447497}{250000000000},\quad
\beta=\frac{9999999}{10^7},\quad
x=\frac{337503}{10^6},\quad \xi=x-\frac4{10^{11}}.$$

The chosen source coefficients and final exponents are

$$A_s=\frac{1086180879838687}{10^{15}},\qquad
B_s=\frac{11640399543290787172985714354555752537}
{36367644171000000000000000000000000000},$$
$$z=\frac{625145177}{500000000},\qquad
\gamma=\frac{250058071}{200000000}=z+10^{-9},\qquad
b=\frac{69827131}{20000000}=3.49135655.$$

Lean: [L1_Parameters.lean](L1_Parameters.lean).

## Lemma 7.2. The complementary envelope

The chosen parameters satisfy $\operatorname{ComplementEnvelope}(p,\mu,w,\beta,x)$.

**Proof.** Put $a=2681/10000$. Rational interval bounds give

$$\mathcal F(a)>\frac{1769}{10^8}>0,\qquad
\mathcal F(\mu)<-\frac{47763}{10^6}<0.$$

The cutoff law places every feasible degree in $(a,\mu]$ and makes $\mu$
feasible. Set $q_i=a+i(\mu-a)/192$ and $m_i=(q_i+q_{i+1})/2$.
The budget is convex and negative at both endpoints, hence negative on
$[a,\mu]$. At each midpoint, the checked binding inequality selects the
explicit support formula of section 4.

Write $H(q)=q\operatorname{certM}(q)+wq$ and let
$T_i(q)=H(m_i)+D(m_i)(q-m_i)$ be its support line. Rational heights
$h_0,\ldots,h_{192}$ satisfy

$$T_i(q_i)\le h_i,\qquad T_i(q_{i+1})\le h_{i+1}.$$

Since $H\le T_i$, interpolation bounds $H$ throughout each cell. Thus,
for every feasible $q$ and every real $v$,

$$wqv+H(q)\le\max_{0\le i\le192}(wq_i v+h_i).$$

Put $a_i=wq_i$ and $r_i=(h_i-h_{i+1})/(a_{i+1}-a_i)$. The slopes strictly
increase. The hinge integral law and the exact bound

$$h_{192}-a_{192}+\sum_{i=0}^{191}(a_{i+1}-a_i)e^{r_i}
<-\frac{15}{10^8}$$

give a negative integral majorant, hence the complementary envelope.
The logarithmic and exponential enclosures include proved semantic identities
and safe-domain conditions.

Lean: [cutoff](L2_Control.lean), [expression identities](Control/Expressions.lean),
[table](Control/Table.lean), [192 cell checks](Control/Checks.lean),
[interpolation](Control/Cell.lean), [integral](Control/Integral.lean),
[envelope assembly](Control/Envelope.lean).

## Lemma 7.3. A complete joint family

The family of 1,469 raw profiles, 947 closed profiles and 2,716 source lines
satisfies the hypotheses of section 6. In particular,

$$\exists C\ge1\;\forall k,\ell\ge1:\qquad
R(k,\ell)\le C e^{A_s k+B_s\ell}.$$

**Proof.** Supply the four inputs to joint induction.

**Baseline.** The proved Lu–Wang finite source supplies, for every
$\varepsilon>0$, a uniform threshold
$C\exp(F_{\mathrm{LW}}(k,\ell)+\varepsilon(k+\ell))$.
The bridge identifies the functions at normalized ratio
$\min(k,\ell)/\max(k,\ell)\in[0,1]$ and handles integer ceilings.
See [Baseline.lean](Source/Baseline.lean) and
[BaselineInputs.lean](Source/Joint/BaselineInputs.lean).

**Source covers.** For every source $A_i+B_it$ and every $t>0$, a baseline
or complementary-profile witness has cost at most

$$A_i+B_it-\eta_0(1+t),\qquad \eta_0=\frac1{2\cdot10^{12}}.$$

For the chosen source, 81 profile-pair runs and two baseline tails give
the stronger reserve $10^{-9}$. The tails are

$$0<t\le\frac{80}{353},\qquad
t\ge\frac{58673404100}{12245974793}.$$

For inherited sources, use 130 hull lines $L_j(t)=a_j+b_jt$.
Decreasing slopes and increasing adjacent crossings $s_j$ imply

$$L_j(t)-L_{j+1}(t)=(b_j-b_{j+1})(t-s_j),\qquad
L_{\sigma(t)}(t)=\min_jL_j(t).$$

Baseline tangent bounds and paired-profile intervals cover the selected line.
Each inherited source dominates a convex combination of two hull lines, hence
their minimum, with the same reserve. Two auxiliary sources have additional
covers. The profile embeddings are exact; these geometric witnesses require
no profile-admissibility premise.
See [chosen cover](Source/Cells.lean), [hull cover](Source/HullCover.lean),
[domination](Source/Domination.lean), [auxiliary sources](Source/AdditionalSources.lean),
and [joint family](Source/JointFamily.lean).

**Closed profiles.** Endpoint comparisons between a raw donor and a closed
profile extend over each common knot interval by affine interpolation.
Contiguous windows use the same law; complementary pairs supply the remaining
intervals by section 6. Checked integer partitions cover every original interval.
See [whole donors](Source/Joint/AlignedAssembly.lean),
[windows](Source/Joint/LocalAssembly.lean),
[complementary pairs](Source/Joint/ComplementaryAssembly.lean), and
[complete coverage](Source/Joint/ClosedCoverage.lean).

**Raw profiles.** For each raw profile $P$ and each interval $I$ in its domain
partition, leaf or route composition supplies a threshold $K$ satisfying
$\operatorname{PieceOK}(P,I,K)$. Its premises concern proper subgraphs.
Leaf runs share a terminal inequality; interval geometry supplies the remaining
input. Routes use checked controls, source indices and child profiles.
Five custom profiles have their own constructions. Checked consecutive runs
cover every raw interval.
See [leaf law](Source/Joint/FastLeaf.lean),
[leaf controls](Source/Joint/LeafControlsSound.lean),
[inherited controls](Source/Joint/InheritedControlsSound.lean),
[custom constructions](Source/Joint/CustomRecipes.lean),
[coverage law](Source/Joint/RawSelector.lean), and
[complete assembly](Source/Joint/RawAssembly.lean).

Joint induction proves the profile assertions and source bounds simultaneously
with one prefactor. Source slot 2715 gives the assertion above.
Lean: [L3_Source.lean](L3_Source.lean).

## Lemma 7.4. Four children and the root

Four additional child profiles and a root profile satisfy their proper-host
implications on their entire domains. The root has density $1/2$, domain
$[1-10^{-10},1+10^{-10}]$, and constant height $z$.

**Proof.** Use the exact data in [L4_Routes.lean](L4_Routes.lean).
Each child uses the proved control certificate and source slot 2714.
The root uses Lemma 7.2 and twelve child calls. The route checks prove
ordered ratio partitions, child-domain inclusion, strict slope slack,
terminal inequalities and a positive height margin. Route composition then
gives $\exists K\;\operatorname{PieceOK}$ on each full domain.
[ComplementRoutes.lean](ComplementRoutes.lean) connects the root's envelope
to this composition theorem.

## Theorem 7.5. The dense root profile

There exist $C\ge1$ and $K$ such that, for $k\ge K$, every graph of density
at least $1/2$ on at least $Ce^{zk}$ vertices contains a red or blue $K_k$.

**Proof.** Append the four children and root to the raw family. Embed the old
profiles identically: their proper-host implications remain valid under the
larger induction premise, and their source covers and closed recipes transfer.
Lemma 7.4 supplies the five new raw pieces. Apply joint induction with the
actual baseline and complete old raw assembly from Lemma 7.3. At ratio $1$,
the resulting root assertion has density $1/2$ and height $z$, giving the claim.

Lean: [extension law](RootExtension.lean), [root construction](RootConstruction.lean),
and [unconditional dense profile](L5_Root.lean).
Section 8 converts this profile to the eventual base $b$.
