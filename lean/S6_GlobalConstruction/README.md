# 6. Global construction

The local alternative yields a retained-set closure law. Leaves and routes
turn that law into profiles; strong induction on host order proves the
profiles and their terminal source bounds together.

This uses the finite-host closure and profile-bank framework of
Zhao–Booth-Clibborn–Schwahn, sections 4–5
([paper](https://github.com/w2ll2am/diagonal-ramsey/blob/c2875f33a9d5c89f71c68f51b5767550570b5603/preprint/main.pdf)),
building on [Lu–Wang retained-set descent](https://arxiv.org/abs/2609.14525).
We adapt the local-control interface to the complementary envelope and assemble
the source/profile implications used by our construction.

## 6.1. Profiles and terminal controls

A **profile** $P=(p,I,L)$, with $0<p<1$, $I=[\alpha,\omega]\subset(0,\infty)$
and $L>0$ on $I$, asserts that

$$d_R(G)\ge p,\quad \ell/k\in I,\quad
|G|\ge C e^{kL(\ell/k)}
\quad\Longrightarrow\quad G\text{ contains a red }K_k\text{ or blue }K_\ell$$

for positive integers $k,\ell$. A source $(A_\sigma,B_\sigma)$ makes the
same assertion without a density hypothesis, at threshold
$Ce^{A_\sigma k+B_\sigma\ell}$.

A **complementary control** satisfies the parameter and envelope hypotheses
of Section 5 and has terminal parameters

$$0<\xi<\min\{x,e^{-A_\sigma}\},\qquad
0<y_0<e^{-B_\sigma},\qquad 0<\nu<\mu.$$

Write $a_\gamma=-\log\xi$, $b_\gamma=-\log y_0$ and
$c_\gamma=-\log\nu$. These are positive. Control validity records numerical
inequalities; it does not assume source admissibility on the current host.

Lean: `ComplementControlValid` and `ComplementPieceValid` in
[L1_ProfileSupport.lean](L1_ProfileSupport.lean); the profile assertion is
`DiagRamsey.BankProfile.Assert`.

## 6.2. Finite-host closure

Suppose the source stopping rule holds on every proper vertex subset of
the host, at threshold $C\widehat x^{-k}\widehat y^{-\ell}$, where
$\widehat x=e^{-A_\sigma}$ and $\widehat y=e^{-B_\sigma}$.
There is $L_0$, independent of $C\ge1$ and the host, such that for
$\ell\ge L_0$, $k,t\ge1$, disjoint nonempty $X,Y$, and red density
$d_R(X,Y)\ge p$, the inequality

$$|X|^w|Y|\ge C^{w+1}\xi^{-k}y_0^{-\ell}\nu^{-wt}$$

forces a red $K_k$ in $X\cup Y$, a blue $K_t$ in $X$, or a blue $K_\ell$
in $Y$.

**Proof.** Choose $\xi<\lambda<\min(x,\widehat x)$ and
$y_0<y<\widehat y$, then fix a sufficiently large moment parameter $r$.
With $n=k+t$ and a small fixed $\delta>0$, Jensen gives an initial excess
moment at least $\delta/n$ for shift $p-\delta/n$. The strict parameter
gaps absorb this polynomial loss and establish

$$\Phi_{p-\delta/n}(X,Y)\ge
\frac{C^{w+1}}{\lambda^k y^\ell(\mu^w)^t}.$$

Apply maximal restriction and the local alternative inside the closure
induction. Its red and blue steps decrease the remaining clique targets;
the large-degree case uses a blue book, whose size is $O(\log n)$.
The elementary estimates $(n+O(\log n))^{O(\log n)}=e^{o(n)}$ and
$n^r=O(a^n)$ for fixed $a>1$ absorb the book and seed losses. Terminal
cases invoke the source stopping rule only on proper subhosts. Taking
$\ell$ large enough absorbs the remaining fixed constants and completes
the induction.

Lean: `finite_host_closure` and `finite_host_closure_of_prem` in
[L3_RouteComposition.lean](L3_RouteComposition.lean), using the inherited
`ClosureEnv.closure_induction`, `Q_bound` and `pow_r_bound`.

## 6.3. Leaves and retained routes

A leaf has output

$$L_\gamma(t)=\frac{a_\gamma+t(b_\gamma+wc_\gamma)}{1+w}.$$

**Proof.** A balanced density-preserving cut gives disjoint $X,Y$, each
of size at least one third of the host. At host size $3Ce^{kL_\gamma(t)}$,
the closure volume inequality holds with both blue targets
$\lfloor tk\rfloor$. Closure gives the required clique. A fixed positive
margin in the desired profile absorbs the factor $3$ for large $k$.

For a route, let $\theta=u_0<\cdots<u_M=\omega$, $g_0>0$, and

$$g(t)=g_0+\sum_{j<M}d_j\bigl(\min(t,u_{j+1})-u_j\bigr)_+.$$

Each cell calls a child profile $P_j$ and satisfies

$$[u_j,u_{j+1}]\subseteq I_j,\qquad
d_j>-\log(1-p_j),\qquad L_j(t)<g(t)\quad(t\in[u_j,u_{j+1}]).$$

The terminal density is strictly below the route's output density. The route
value is

$$V(t)=\max\left\{g(t),
\frac{a_\gamma+t b_\gamma+w(\theta c_\gamma+g(t)-g_0)}{1+w}\right\}.$$

Any profile dominating $V$ with a fixed positive margin is valid under the
joint proper-host premise.

**Proof.** First retain rows whose red density into the other side of a
balanced cut is at least the terminal density. This costs a fixed factor
$3(1-p_\gamma)/(p-p_\gamma)$. At each later step, if the retained row graph
has density at least the active child's $p_j$, call that child. Otherwise
some vertex has a blue neighbourhood of size at least
$(1-p_j)(|Z|-1)$. Since $e^{-d_j}<1-p_j$, the strict slope gap pays for
retaining this neighbourhood and extending the blue clique by one.

The discrete height used in Lean is $k(g(t/k)+h)+\operatorname{jump}(t/k)$;
the bounded jump correction pays for crossing route knots. At the terminal
ratio $\theta$, the second term in $V$ pays the closure volume cost. The
first term pays for entering the route. Positive output margin absorbs all
fixed prefactors and bounded jump costs. Every child call is on
$Z\subseteq X$ disjoint from the nonempty $Y$, hence on a proper subhost.

Complementary pieces combine profiles of densities $p_R+p_B\le1$ at
reciprocal ratios, with cost
$\max\{L_R(t),tL_B(1/t)\}$; their prescribed positive margin pays for
passing to a proper subhost. Thus each raw piece gives a `PieceOK`
implication from the joint proper-host premise.

Lean: `complementary_leaf_relValid`, `complementary_route_relValidP` and
`complementary_raw_piece_ok` in [L3_RouteComposition.lean](L3_RouteComposition.lean).

## 6.4. Simultaneous source/profile induction

Take finite families of positive source pairs, valid raw profiles and valid
closed profiles. Require interval covers by the raw pieces above and by
valid closed pieces (density transfer, complementary pairing and the
specified ratio-monotonicity laws). For each source $h$, require a margin
$\eta_h>0$ and, at every $t>0$, either

$$F(t)\le A_h+B_ht-\eta_h(1+t),$$

where $F$ is the symmetric baseline exponent, or a pair of profiles with
admissible domains and $p_R+p_B\le1$ such that

$$\max\{L_R(t),tL_B(1/t)\}\le A_h+B_ht-\eta_h(1+t).$$

Assume the baseline bound at exponent $kF(\ell/k)+\varepsilon(k+\ell)$
for every $\varepsilon>0$. Then one $C\ge1$ proves every asserted profile
and every source threshold $Ce^{A_hk+B_h\ell}$.

**Proof.** Choose a common target threshold $K$ for all finite pieces.
Bounded profile ratio domains make the small-profile-target cases finite.
For source cases with $\min(k,\ell)<K$, the elementary binomial Ramsey
bound is at most $(k+\ell)^K$; positivity of $A_h,B_h$ absorbs this into
a constant times $e^{A_hk+B_h\ell}$. Enlarge $C$ to handle these cases
and the finitely many baseline bounds with $\varepsilon=\eta_h$.

Now use strong induction on host order $N$, for all graphs on that order.
The induction hypothesis supplies all source and profile assertions on
every proper subset, by passage to its induced graph. At order $N$:

1. Prove raw profiles using their covering pieces and this proper-host premise.
2. Prove closed profiles from the raw profiles just established at order $N$.
3. Prove sources using their pointwise witnesses: either apply the baseline
   bound, absorbing its exponent slack, or split by colour density and apply
   a profile from the first two steps at $t$ or $1/t$.

Thus same-host uses occur only in this order; recursive uses return to
strictly smaller hosts. The conclusion follows for all $N$.
Rounding $Ce^{A_hk+B_h\ell}$ upward converts each source threshold to
$R(k,\ell)\le(C+1)e^{A_hk+B_h\ell}$.

Lean: `joint_profiles_of_pieces` in [L2_JointInduction.lean](L2_JointInduction.lean)
and `sourceAdmissible_of_arrows` in [L1_ProfileSupport.lean](L1_ProfileSupport.lean).

## 6.5. Diagonal extraction

An asserted profile with $p\le1/2$, $1\in I$ and $L(1)\le z$ gives
`DenseProfile z`: substitute $\ell=k\ge1$. The bank and Ramsey density
conventions agree by the degree-sum identity, including their zero values
on orders below two.

Lean: `bank_density_eq` and `denseProfile_of_bankProfile` in
[L1_ProfileSupport.lean](L1_ProfileSupport.lean).
[Section 7](../S7_ParameterChoice/README.md) supplies the concrete families
and witnesses; [Section 8](../S8_RamseyBound/README.md) converts the dense
profile to the literal Ramsey bound.
