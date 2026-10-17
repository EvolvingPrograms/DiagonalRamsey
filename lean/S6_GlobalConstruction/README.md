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

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`BankProfile.Assert`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_JointBank.lean#L42)

```lean
def BankProfile.Assert (P : BankProfile) (C : ℝ) : Prop :=
  ∀ k b : ℕ, 0 < k → 0 < b → P.lo ≤ (b : ℝ) / k → (b : ℝ) / k ≤ P.hi →
    ∀ (N : ℕ) (G : SimpleGraph (Fin N)), P.p ≤ redEdgeDensity G →
      C * Real.exp (k * P.L ((b : ℝ) / k)) ≤ (N : ℝ) → HostContains G k b
```

</details>

for positive integers $k,\ell$. A source $(A_\sigma,B_\sigma)$ makes the
same assertion without a density hypothesis, at threshold
$Ce^{A_\sigma k+B_\sigma\ell}$.

A **complementary control** satisfies the parameter and envelope hypotheses
of Section 5 and has terminal parameters

$$0<\xi<\min\{x,e^{-A_\sigma}\},\qquad
0<y_0<e^{-B_\sigma},\qquad 0<\nu<\mu.$$

<details>
<summary>Lean comparison</summary>

The displayed terminal inequalities are the final conjuncts of this validity predicate. Earlier conjuncts record the parameter ranges and complementary envelope.

[`ComplementControlValid`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S6_GlobalConstruction/L1_ProfileSupport.lean#L22)

```lean
def ComplementControlValid {m : ℕ} (A B : Fin m → ℝ) (γ : SharpControl m) : Prop :=
  0 < γ.p ∧ γ.p < 1 ∧ 0 < γ.μ ∧ γ.μ < 1 ∧ 0 < γ.w ∧ 0 < γ.β ∧ γ.β < 1 ∧
    0 < γ.x ∧ γ.x < γ.p ∧ γ.x < (1 - γ.μ) ^ γ.w ∧
    ComplementEnvelope γ.p γ.μ γ.w γ.β γ.x ∧
    0 < γ.ξ ∧ γ.ξ < γ.x ∧ γ.ξ < Real.exp (-A γ.σ) ∧
    0 < γ.y₀ ∧ γ.y₀ < Real.exp (-B γ.σ) ∧ 0 < γ.ν ∧ γ.ν < γ.μ
```

</details>

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

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`finite_host_closure`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S6_GlobalConstruction/L3_RouteComposition.lean#L30)

```lean
theorem finite_host_closure (p μ w β x ξ y₀ ν xhat yhat : ℝ)
    (hp0 : 0 < p) (hp1 : p < 1) (hμ0 : 0 < μ) (hμ1 : μ < 1) (hw : 0 < w) (hβ0 : 0 < β) (hβ1 : β < 1)
    (hx0 : 0 < x) (hxp : x < p) (hxμ : x < (1 - μ) ^ w)
    (henv : ComplementEnvelope p μ w β x)
    (hξ0 : 0 < ξ) (_hξ1 : ξ < 1) (hy0 : 0 < y₀) (_hy1 : y₀ < 1)
    (hν0 : 0 < ν) (_hν1 : ν < 1)
    (_hxh0 : 0 < xhat) (_hxh1 : xhat < 1) (hyh0 : 0 < yhat) (_hyh1 : yhat < 1)
    (hξx : ξ < x) (hξxh : ξ < xhat) (hyy : y₀ < yhat) (hνμ : ν < μ) :
    ∃ L₀ : ℕ, ∀ C : ℝ, 1 ≤ C → ∀ ℓ : ℕ, L₀ ≤ ℓ →
      ∀ (V : Type) [Fintype V] [DecidableEq V] (G : SimpleGraph V),
        HostStopping G C xhat yhat ℓ →
        ∀ k t : ℕ, 0 < k → 0 < t → ∀ X Y : Finset V,
          X.Nonempty → Y.Nonempty → Disjoint X Y →
          p ≤ redDensity G X Y →
          C ^ (w + 1) * ξ ^ (-(k : ℝ)) * y₀ ^ (-(ℓ : ℝ)) * ν ^ (-(w * (t : ℝ))) ≤
            (X.card : ℝ) ^ w * (Y.card : ℝ) →
          HasRedClique G (X ∪ Y) k ∨ HasBlueClique G X t ∨ HasBlueClique G Y ℓ
```

</details>

forces a red $K_k$ in $X\cup Y$, a blue $K_t$ in $X$, or a blue $K_\ell$
in $Y$.

**Proof.** Choose $\xi<\lambda<\min(x,\widehat x)$ and
$y_0<y<\widehat y$, then fix a sufficiently large moment parameter $r$.
With $n=k+t$ and a small fixed $\delta>0$, Jensen gives an initial excess
moment at least $\delta/n$ for shift $p-\delta/n$. The strict parameter
gaps absorb this polynomial loss and establish

$$\Phi_{p-\delta/n}(X,Y)\ge
\frac{C^{w+1}}{\lambda^k y^\ell(\mu^w)^t}.$$

<details>
<summary>Lean comparison</summary>

The displayed potential bound is the initial-moment estimate inside this closure proof. The declaration gives its clique-forcing consequence; the linked proof constructs the intermediate parameters and applies closure induction.

[`finite_host_closure`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S6_GlobalConstruction/L3_RouteComposition.lean#L30)

```lean
theorem finite_host_closure (p μ w β x ξ y₀ ν xhat yhat : ℝ)
    (hp0 : 0 < p) (hp1 : p < 1) (hμ0 : 0 < μ) (hμ1 : μ < 1) (hw : 0 < w) (hβ0 : 0 < β) (hβ1 : β < 1)
    (hx0 : 0 < x) (hxp : x < p) (hxμ : x < (1 - μ) ^ w)
    (henv : ComplementEnvelope p μ w β x)
    (hξ0 : 0 < ξ) (_hξ1 : ξ < 1) (hy0 : 0 < y₀) (_hy1 : y₀ < 1)
    (hν0 : 0 < ν) (_hν1 : ν < 1)
    (_hxh0 : 0 < xhat) (_hxh1 : xhat < 1) (hyh0 : 0 < yhat) (_hyh1 : yhat < 1)
    (hξx : ξ < x) (hξxh : ξ < xhat) (hyy : y₀ < yhat) (hνμ : ν < μ) :
    ∃ L₀ : ℕ, ∀ C : ℝ, 1 ≤ C → ∀ ℓ : ℕ, L₀ ≤ ℓ →
      ∀ (V : Type) [Fintype V] [DecidableEq V] (G : SimpleGraph V),
        HostStopping G C xhat yhat ℓ →
        ∀ k t : ℕ, 0 < k → 0 < t → ∀ X Y : Finset V,
          X.Nonempty → Y.Nonempty → Disjoint X Y →
          p ≤ redDensity G X Y →
          C ^ (w + 1) * ξ ^ (-(k : ℝ)) * y₀ ^ (-(ℓ : ℝ)) * ν ^ (-(w * (t : ℝ))) ≤
            (X.card : ℝ) ^ w * (Y.card : ℝ) →
          HasRedClique G (X ∪ Y) k ∨ HasBlueClique G X t ∨ HasBlueClique G Y ℓ
```

</details>

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

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`SharpControl.leafLine`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_SourceBank.lean#L48)

```lean
noncomputable def SharpControl.leafLine {m : ℕ} (γ : SharpControl m) (r : ℝ) : ℝ :=
  (γ.Aγ + r * (γ.Bγ + γ.w * γ.bγ)) / (1 + γ.w)
```

</details>

**Proof.** A balanced density-preserving cut gives disjoint $X,Y$, each
of size at least one third of the host. At host size $3Ce^{kL_\gamma(t)}$,
the closure volume inequality holds with both blue targets
$\lfloor tk\rfloor$. Closure gives the required clique. A fixed positive
margin in the desired profile absorbs the factor $3$ for large $k$.

For a route, let $\theta=u_0<\cdots<u_M=\omega$, $g_0>0$, and

$$g(t)=g_0+\sum_{j<M}d_j\bigl(\min(t,u_{j+1})-u_j\bigr)_+.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`RoutePiece.g`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_JointBank.lean#L64)

```lean
noncomputable def RoutePiece.g {ι : Type} {m : ℕ} (R : RoutePiece ι m) (s : ℝ) : ℝ :=
  R.g₀ + ∑ j : Fin R.M, R.d j * max 0 (min s (R.u j.succ) - R.u j.castSucc)
```

</details>

Each cell calls a child profile $P_j$ and satisfies

$$[u_j,u_{j+1}]\subseteq I_j,\qquad
d_j>-\log(1-p_j),\qquad L_j(t)<g(t)\quad(t\in[u_j,u_{j+1}]).$$

<details>
<summary>Lean comparison</summary>

These are the domain, slope and height conditions in the `.route` branch of `ComplementPieceValid`.

[`ComplementPieceValid`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S6_GlobalConstruction/L1_ProfileSupport.lean#L96)

```lean
def ComplementPieceValid {ι : Type} {m : ℕ} (A B : Fin m → ℝ) (prof : ι → BankProfile) (P : BankProfile)
    (lo hi ε : ℝ) : RawPiece ι m → Prop
  | .leaf γ => ComplementControlValid A B γ ∧ γ.p ≤ P.p ∧ ∀ r : ℝ, lo ≤ r → r ≤ hi → ε + γ.leafLine r ≤ P.L r
  | .route R =>
      ComplementControlValid A B R.γ ∧ R.γ.p < P.p ∧ 0 < R.M ∧ 0 < R.θ ∧ StrictMono R.u ∧ 0 < R.g₀ ∧ R.θ ≤ lo ∧ hi ≤ R.ω ∧
        (∀ j : Fin R.M, (prof (R.c j)).lo ≤ R.u j.castSucc ∧ R.u j.succ ≤ (prof (R.c j)).hi ∧
          -Real.log (1 - (prof (R.c j)).p) < R.d j ∧
          ∀ s : ℝ, R.u j.castSucc ≤ s → s ≤ R.u j.succ → (prof (R.c j)).L s < R.g s) ∧
        ∀ r : ℝ, lo ≤ r → r ≤ hi → ε + R.value r ≤ P.L r
  | .compl PR PB =>
      (prof PR).p + (prof PB).p ≤ 1 ∧ (prof PR).lo ≤ lo ∧ hi ≤ (prof PR).hi ∧
        ∀ r : ℝ, lo ≤ r → r ≤ hi → (prof PB).lo ≤ 1 / r ∧ 1 / r ≤ (prof PB).hi ∧
          ε * (1 + r) + max ((prof PR).L r) (r * (prof PB).L (1 / r)) ≤ P.L r
```

</details>

The terminal density is strictly below the route's output density. The route
value is

$$V(t)=\max\left\{g(t),
\frac{a_\gamma+t b_\gamma+w(\theta c_\gamma+g(t)-g_0)}{1+w}\right\}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`RoutePiece.value`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_JointBank.lean#L68)

```lean
noncomputable def RoutePiece.value {ι : Type} {m : ℕ} (R : RoutePiece ι m) (r : ℝ) : ℝ :=
  max (R.g r) ((R.γ.Aγ + r * R.γ.Bγ + R.γ.w * (R.θ * R.γ.bγ + R.g r - R.g₀)) / (1 + R.γ.w))
```

</details>

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

<details>
<summary>Lean comparison</summary>

The grounded branch is the displayed baseline support inequality; `symmetricProfile luWangSource 1 t` is `F(t)`.

[`SourceCell.Valid`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_JointBank.lean#L124)

```lean
def SourceCell.Valid {ι : Type} (prof : ι → BankProfile) (A B η lo hi : ℝ) : SourceCell ι → Prop
  | .grounded =>
      ∀ t : ℝ, 0 < t → lo ≤ t → t ≤ hi → symmetricProfile luWangSource 1 t ≤ A + B * t - η * (1 + t)
  | .pair PR PB =>
      (prof PR).p + (prof PB).p ≤ 1 ∧ (prof PR).lo ≤ lo ∧ hi ≤ (prof PR).hi ∧
        ∀ t : ℝ, lo ≤ t → t ≤ hi → (prof PB).lo ≤ 1 / t ∧ 1 / t ≤ (prof PB).hi ∧
          max ((prof PR).L t) (t * (prof PB).L (1 / t)) ≤ A + B * t - η * (1 + t)
```

</details>

where $F$ is the symmetric baseline exponent, or a pair of profiles with
admissible domains and $p_R+p_B\le1$ such that

$$\max\{L_R(t),tL_B(1/t)\}\le A_h+B_ht-\eta_h(1+t).$$

<details>
<summary>Lean comparison</summary>

The `.pair` branch is the displayed complementary-profile inequality. The induction theorem below uses pointwise source witnesses together with the covering pieces to close all sources and profiles simultaneously.

[`SourceCell.Valid`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_JointBank.lean#L124)

```lean
def SourceCell.Valid {ι : Type} (prof : ι → BankProfile) (A B η lo hi : ℝ) : SourceCell ι → Prop
  | .grounded =>
      ∀ t : ℝ, 0 < t → lo ≤ t → t ≤ hi → symmetricProfile luWangSource 1 t ≤ A + B * t - η * (1 + t)
  | .pair PR PB =>
      (prof PR).p + (prof PB).p ≤ 1 ∧ (prof PR).lo ≤ lo ∧ hi ≤ (prof PR).hi ∧
        ∀ t : ℝ, lo ≤ t → t ≤ hi → (prof PB).lo ≤ 1 / t ∧ 1 / t ≤ (prof PB).hi ∧
          max ((prof PR).L t) (t * (prof PB).L (1 / t)) ≤ A + B * t - η * (1 + t)
```

[`joint_profiles_of_pieces`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S6_GlobalConstruction/L2_JointInduction.lean#L24)

```lean
theorem joint_profiles_of_pieces
    (source : ℝ → ℝ)
    (hLW : ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 1 ≤ C ∧ ∀ a b : ℕ,
      0 < a → 0 < b → ∀ N : ℕ,
      C * Real.exp (symmetricProfile source (a : ℝ) (b : ℝ) +
        ε * ((a : ℝ) + (b : ℝ))) ≤ (N : ℝ) → RamseyArrows a b N)
    {m nR nC : ℕ}
    (A B : Fin m → ℝ) (hA : ∀ h, 0 < A h) (hB : ∀ h, 0 < B h)
    (raw : Fin nR → BankProfile) (closed : Fin nC → BankProfile)
    (hraw : ∀ i, (raw i).Valid) (hclosed : ∀ i, (closed i).Valid)
    -- (R) RAW realizations
    (nRP : Fin nR → ℕ) (rpLo rpHi : (i : Fin nR) → Fin (nRP i) → ℝ)
    (hrcover : ∀ i (r : ℝ), (raw i).lo ≤ r → r ≤ (raw i).hi → ∃ J, rpLo i J ≤ r ∧ r ≤ rpHi i J)
    (hpiece : ∀ i J, ∃ K, PieceOK raw closed A B (raw i) (rpLo i J) (rpHi i J) K)
    -- (U) CLOSED realizations
    (nCP : Fin nC → ℕ) (cpLo cpHi : (i : Fin nC) → Fin (nCP i) → ℝ)
    (cp : (i : Fin nC) → Fin (nCP i) → ClosedPiece nR)
    (hccover : ∀ i (r : ℝ), (closed i).lo ≤ r → r ≤ (closed i).hi → ∃ J, cpLo i J ≤ r ∧ r ≤ cpHi i J)
    (hcp : ∀ i J, (cp i J).Valid raw (closed i) (cpLo i J) (cpHi i J))
    -- (S) A witness at each ratio; no finite source cover or tail split.
    (η : Fin m → ℝ) (hη : ∀ h, 0 < η h)
    (hsource : ∀ h (t : ℝ), 0 < t →
      PointwiseSource.Bound (Sum.elim raw closed) (symmetricProfile source 1)
        t (A h+B h*t-η h*(1+t))) :
    ∃ C : ℝ, 1 ≤ C ∧ (∀ i, (raw i).Assert C) ∧ (∀ i, (closed i).Assert C) ∧
      ∀ h (k b : ℕ), 0 < k → 0 < b → ∀ N : ℕ,
        C * Real.exp (A h * k + B h * b) ≤ (N : ℝ) → RamseyArrows k b N
```

</details>

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
