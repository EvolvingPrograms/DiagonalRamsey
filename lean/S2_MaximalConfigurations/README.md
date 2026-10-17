# 2. Maximal configurations

The weighted potential, blue-failure moment, concentration and ordered-drift
machinery are from Zhao–Booth-Clibborn–Schwahn, section 3
([paper](https://github.com/w2ll2am/diagonal-ramsey/blob/c2875f33a9d5c89f71c68f51b5767550570b5603/preprint/main.pdf)).
Here Lemma 2.2 also retains the full complementary-row moment for the
two-constraint optimization in sections 3–4. The Lean links below identify
the inherited results and the additional complementary-moment proof.

Let $X,Y$ be nonempty, $g_y>c$ for every $y\in Y$, $r,\beta>0$, and
$s=\beta r$. Write

$$\nu_y=\frac{(g_y-c)^s}{\sum_{z\in Y}(g_z-c)^s}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`nuW`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Graph.lean#L15)

```lean
noncomputable def nuW (G : SimpleGraph V) (X Y : Finset V) (c s : ℝ) (y : V) : ℝ :=
  uC G X c y ^ s / colMomentSum G X Y c s
```

</details>

For a row $i$, put $A_i=N_B(i)\cap X$, $q=|A_i|/|X|$,
$b_y=|N_G(y)\cap A_i|/|A_i|$, and $Z_y=(b_y-g_y)/(g_y-c)$.

## Lemma 2.1. The blue moment

For $\mu>0$ and $q>0$, blue failure implies

$$\mathbb E_\nu(1+Z)_+^s\le (\mu/q)^{\beta w}.$$

<details>
<summary>Lean comparison</summary>

The source proves the strict inequality; weakening `<` to `≤` gives the displayed statement. Section variables in this inherited lemma are supplied by its source context.

[`blue_lt`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_GraphRows.lean#L110)

```lean
lemma blue_lt {μ w β : ℝ} (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y) (hμ0 : 0 < μ)
    (i : V) (hq0 : 0 < graphFrac B X i)
    (hblue : SharpBlueFailure G B X Y c μ w β s i) :
    ∑ y ∈ Y, nuW G X Y c s y * (max (1 + ZR G B X c i y) 0) ^ s < certU μ w β (graphFrac B X i)
```

</details>

**Proof.** Since $1+Z_y=(b_y-c)/(g_y-c)$, the left side is the ratio
of the restricted and original column-moment sums. The defining strict
blue-failure inequality bounds this ratio; weaken it to a non-strict bound.

Lean: inherited `SE.blue_lt`, exposed in
[L1_BlueMoment.lean](L1_BlueMoment.lean). The stronger `SE.row_RB`
also incorporates red failure, under its additional positivity and $s\ge1$
hypotheses.

## Lemma 2.2. The complementary moment

If the configuration is row/column maximal and $0<q<1$, then

$$\mathbb E_\nu\left(1-\frac q{1-q}Z\right)_+^s
\le(1-q)^{-\beta w}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`complementary_row_moment`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S2_MaximalConfigurations/L2_ComplementaryMoment.lean#L47)

```lean
theorem complementary_row_moment
    {V : Type*} [Fintype V] [DecidableEq V]
    (G B : SimpleGraph V) (X Y : Finset V) (c w r β : ℝ)
    (hX : X.Nonempty) (hY : Y.Nonempty) (hr : 0 < r) (hβ : 0 < β)
    (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (hmax : RowColMaximal G X Y c w r (β * r))
    (i : V) (hq : 0 < graphFrac B X i ∧ graphFrac B X i < 1) :
    ∑ y ∈ Y, nuW G X Y c (β * r) y *
      (max (1 - graphFrac B X i / (1 - graphFrac B X i) * ZR G B X c i y) 0) ^
        (β * r) ≤ (1 - graphFrac B X i) ^ (-β * w)
```

</details>

**Proof.** The density in $X\setminus A_i$ satisfies
$g_y=q b_y+(1-q)b'_y$. Thus
$(b'_y-c)/(g_y-c)=1-qZ_y/(1-q)$.
Restricting to $X\setminus A_i$ changes the row-size factor by $(1-q)^w$.
Maximality bounds the resulting moment ratio by $(1-q)^{-ws/r}$,
which is the displayed bound.

Lean: `complementary_row_moment` in
[L2_ComplementaryMoment.lean](L2_ComplementaryMoment.lean).

## Lemma 2.3. Concentration of rows

Assume additionally $w>0$, $r>w$, $s\ge1$, and a column lower bound
$g_y-c\ge\theta H$. Let $\pi_i=|N_G(i)\cap Y|/|Y|$, $N=|X|$, and

$$V_i=\frac{\sum_{y\in Y}(g_y-c)^{s-1}
(\mathbf1_{iy\in G}-c)}{\sum_{y\in Y}(g_y-c)^s}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`Vr`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Graph.lean#L22)

```lean
noncomputable def Vr (G : SimpleGraph V) (X Y : Finset V) (c s : ℝ) (i : V) : ℝ :=
  ∑ y ∈ Y, uC G X c y ^ (s - 1) * (hR G i y - c) / colMomentSum G X Y c s
```

</details>

Assume row maximality. Then

$$\sum_i|V_i-1|\le\frac{2w}{r}N,\qquad
\sum_i|\pi_i-(c+H)|\le NH\left(1-\theta+\frac{2w}{r}\right).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`L1_V`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Conc.lean#L277)

```lean
lemma L1_V (w r : ℝ) (hX : X.Nonempty) (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (hr : 0 < r) (hs : 1 ≤ s) (hw : 0 ≤ w) (hwr : w ≤ r)
    (hrow : ∀ X' : Finset V, X' ⊆ X → X'.Nonempty →
      potential G X' Y c w r s ≤ potential G X Y c w r s) :
    ∑ i ∈ X, |Vr G X Y c s i - 1| ≤ 2 * (w / r) * X.card
```

[`L1_pi`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Conc.lean#L297)

```lean
lemma L1_pi (w r θ : ℝ) (hw : 0 < w) (hwr : w < r) (hs : 1 ≤ s) (hX : X.Nonempty)
    (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (hlow : ∀ y ∈ Y, θ * momentNorm G X Y c s ≤ uC G X c y)
    (hrow : ∀ X' : Finset V, X' ⊆ X → X'.Nonempty →
      potential G X' Y c w r s ≤ potential G X Y c w r s) :
    ∑ i ∈ X, |rowDensity G i Y - (c + momentNorm G X Y c s)| ≤
      X.card * ((1 - θ) * momentNorm G X Y c s + 2 * (w / r) * momentNorm G X Y c s)
```

</details>

**Proof.** Double-counting gives $\sum_iV_i=N$. The row restriction
bound gives $V_i\ge1-w/r$: apply the subset bound below to
$X\setminus\{i\}$ and use
$(1-1/N)^{1-w/r}\le1-(1-w/r)/N$ (the singleton case follows from
$\sum_iV_i=N$). Thus the negative and positive deviations have
equal total mass, proving the first inequality. The inherited row-excess
estimate bounds the sum of positive deviations of $\pi_i$ above $c+H$
by $NwH/r$;
the column lower bound gives average $\pi_i\ge c+\theta H$. Splitting
positive and negative deviations proves the second inequality. Markov's
inequality then bounds the number of rows violating either tolerance.

For the weighted red mass $m_i=\sum_{y\in N_G(i)\cap Y}\nu_y$, define

$$\rho=\sum_{y\in Y}\nu_y\left|1-\frac{H}{g_y-c}\right|.$$

<details>
<summary>Lean comparison</summary>

The displayed `ρ` is an abbreviation for the sum on the left of `rho_bound`, rather than a separate global Lean definition.

[`rho_bound`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Conc.lean#L198)

```lean
lemma rho_bound (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y) (H θ ε : ℝ)
    (hθ0 : 0 < θ) (hθ1 : θ ≤ 1) (hε : 0 ≤ ε) (hH : 0 < H)
    (hlow : ∀ y ∈ Y, θ * H ≤ uC G X c y) :
    ∑ y ∈ Y, nuW G X Y c s y * |1 - H / uC G X c y| ≤
      ε + (1 / θ - 1) + ∑ y ∈ Y.filter (fun y => (1 + ε) * H < uC G X c y), nuW G X Y c s y
```

</details>

When $0<\beta<1$, column maximality supplies

$$g_y-c\ge\theta H,\qquad \theta=(1-\beta)^{1/(\beta r)},\qquad
\nu\{g_y-c>(1+\varepsilon)H\}\le(1+\varepsilon)^{\beta r-r}$$

<details>
<summary>Lean comparison</summary>

Instantiate `s = β * r`; the column lower factor `(1 - s / r) ^ (1 / s)` then becomes the displayed `θ`. The second lemma is the upper-tail estimate.

[`wgp_col_lower`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_closure_wgp.lean#L195)

```lean
lemma wgp_col_lower (G : SimpleGraph V) (X Y : Finset V) (c w r s : ℝ) (hs : 0 < s) (hsr : s < r)
    (hX : X.Nonempty) (hY : Y.Nonempty) (hH : 0 < momentNorm G X Y c s)
    (hcol : ∀ Y' : Finset V, Y' ⊆ Y → Y'.Nonempty →
      potential G X Y' c w r s ≤ potential G X Y c w r s) :
    ∀ y ∈ Y, (1 - s / r) ^ (1 / s) * momentNorm G X Y c s ≤ colDensity G X y - c
```

[`crop`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Conc.lean#L125)

```lean
lemma crop (w r : ℝ) (hX : X.Nonempty) (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (hs : 0 < s) (hsr : s < r)
    (hcol : ∀ Y' : Finset V, Y' ⊆ Y → Y'.Nonempty →
      potential G X Y' c w r s ≤ potential G X Y c w r s)
    (ε : ℝ) (hε : 0 ≤ ε) :
    ∑ y ∈ Y.filter (fun y => (1 + ε) * momentNorm G X Y c s < uC G X c y), nuW G X Y c s y ≤
      (1 + ε) ^ (s - r)
```

</details>

for every $\varepsilon\ge0$. Consequently,

$$\rho\le\varepsilon+(\theta^{-1}-1)+(1+\varepsilon)^{\beta r-r},\qquad
|m_i-(c+H)|\le(1+|c|)\rho+H|V_i-1|.$$

<details>
<summary>Lean comparison</summary>

Combine `rho_bound` with `crop` above to bound its tail sum; `m_point` gives the second inequality directly.

[`rho_bound`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Conc.lean#L198)

```lean
lemma rho_bound (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y) (H θ ε : ℝ)
    (hθ0 : 0 < θ) (hθ1 : θ ≤ 1) (hε : 0 ≤ ε) (hH : 0 < H)
    (hlow : ∀ y ∈ Y, θ * H ≤ uC G X c y) :
    ∑ y ∈ Y, nuW G X Y c s y * |1 - H / uC G X c y| ≤
      ε + (1 / θ - 1) + ∑ y ∈ Y.filter (fun y => (1 + ε) * H < uC G X c y), nuW G X Y c s y
```

[`m_point`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Conc.lean#L230)

```lean
lemma m_point (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y) (H : ℝ) (hH : 0 ≤ H)
    (i : V) :
    |mr G X Y c s i - (c + H)| ≤
      (1 + |c|) * ∑ y ∈ Y, nuW G X Y c s y * |1 - H / uC G X c y| +
        H * |Vr G X Y c s i - 1|
```

</details>

**Proof of the additional bounds.** The column lower bound follows by
deleting a column and comparing potentials. Restricting to the upper-tail
columns gives the displayed tail estimate. Split the sum defining $\rho$
at $(1+\varepsilon)H$: below this cutoff its summand factor is at most
$\varepsilon+\theta^{-1}-1$; above it an additional $1$ suffices.
Finally, with $h_i(y)=\mathbf1_{iy\in G}$,

$$m_i-(c+H)=H(V_i-1)+
\sum_y\nu_y(h_i(y)-c)\left(1-\frac H{g_y-c}\right),$$

<details>
<summary>Lean comparison</summary>

This explanatory identity is proved inside `m_point` as the local equality `key`, using the auxiliary sums `A` and `C`. The declaration below records its triangle-inequality consequence; the linked proof contains the equality.

[`m_point`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Conc.lean#L230)

```lean
lemma m_point (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y) (H : ℝ) (hH : 0 ≤ H)
    (i : V) :
    |mr G X Y c s i - (c + H)| ≤
      (1 + |c|) * ∑ y ∈ Y, nuW G X Y c s y * |1 - H / uC G X c y| +
        H * |Vr G X Y c s i - 1|
```

</details>

which proves the discrepancy bound by the triangle inequality.
For fixed $\varepsilon>0$, $\theta\to1$ and the tail tends to zero as
$r\to\infty$. Together with the two $L^1$ bounds and Markov's inequality,
this makes $m_i$ and $\pi_i$ close on all but a small fraction of rows.

Lean: `wgp_col_lower`, `crop`, `rho_bound`, `m_point`, `L1_V`, `L1_pi`,
`markov_card` and `card_good`, exposed in
[L3_Concentration.lean](L3_Concentration.lean). Their hypotheses are
instantiated in [the graph alternative](../S5_LocalAlternative/L3_GraphAlternative.lean).

## Lemma 2.4. Ordered drift

Let $r,\gamma>0$, $\sum_i V_i=N$, and suppose every nonempty subset $A$
satisfies $\sum_{i\in A}V_i\le N(|A|/N)^\gamma$. There is an enumeration
of the rows for which, with $\Psi(u)=r(u^\gamma-u)$,

$$N\sum_{j=0}^{N-1}q_j
\left[\Psi\left(\frac{j+1}{N}\right)-\Psi\left(\frac jN\right)\right]
\le r\sum_{j=0}^{N-1}q_j(V_j-1).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`drift`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Drift.lean#L69)

```lean
theorem drift {V : Type*} (X : Finset V) (hX : X.Nonempty) (q Vf : V → ℝ) (r γ : ℝ)
    (hr : 0 < r) (hγ0 : 0 < γ)
    (hsum : ∑ i ∈ X, Vf i = X.card)
    (hS : ∀ A ⊆ X, A.Nonempty → ∑ i ∈ A, Vf i ≤ X.card * ((A.card : ℝ) / X.card) ^ γ) :
    ∃ idx : ℕ → V, (∀ k < X.card, idx k ∈ X) ∧
      (∀ F : V → ℝ, ∑ i ∈ X, F i = ∑ k ∈ range X.card, F (idx k)) ∧
      (X.card : ℝ) * ∑ k ∈ range X.card, q (idx k) *
          (PhiK r γ (((k:ℝ) + 1) / X.card) - PhiK r γ ((k:ℝ) / X.card)) ≤
        r * ∑ k ∈ range X.card, q (idx k) * (Vf (idx k) - 1)
```

</details>

**Proof.** Order $q_j$ increasingly and set
$D_j=\sum_{i<j}V_i-N(j/N)^\gamma$. The subset bound gives $D_j\le0$,
while $D_0=D_N=0$. Summation by parts yields

$$\sum_{j=0}^{N-1}q_j(D_{j+1}-D_j)
=-\sum_{j=1}^{N-1}(q_j-q_{j-1})D_j\ge0.$$

<details>
<summary>Lean comparison</summary>

The displayed summation-by-parts identity explains the sign. Lean uses the equivalent Abel inequality below; its terminal term vanishes when `D_N = 0`.

[`abel_drift`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Calc.lean#L172)

```lean
theorem abel_drift (q D : ℕ → ℝ) (n : ℕ) (hq : ∀ k < n, q k ≤ q (k + 1))
    (hD : ∀ k ≤ n + 1, D k ≤ 0) (hD0 : D 0 = 0) :
    q n * D (n + 1) ≤ ∑ k ∈ Finset.range (n + 1), q k * (D (k + 1) - D k)
```

</details>

Expanding and subtracting $\sum_jq_j$ gives the result.
In the graph application $\gamma=1-w/r>0$. To obtain the subset bound,
write $a=|A|/N$ and $b_A(y)=|N_G(y)\cap A|/|A|$. Weighted Jensen and
row maximality give

$$\frac1{|A|}\sum_{i\in A}V_i
=\sum_y\nu_y\frac{b_A(y)-c}{g_y-c}
\le\left(\frac{\sum_y(b_A(y)-c)_+^s}{\sum_y(g_y-c)^s}\right)^{1/s}
\le a^{-w/r}.$$

<details>
<summary>Lean comparison</summary>

`sumV_sub` supplies the double-counting equality; `Sbin` proves the resulting subset bound. The intermediate Jensen and maximality inequalities occur within its proof.

[`sumV_sub`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Graph.lean#L74)

```lean
lemma sumV_sub (A : Finset V) (hA : A.Nonempty) :
    ∑ i ∈ A, Vr G X Y c s i = A.card * ∑ y ∈ Y,
      uC G X c y ^ (s - 1) * (colDensity G A y - c) / colMomentSum G X Y c s
```

[`Sbin`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Graph.lean#L175)

```lean
theorem Sbin (w r : ℝ) (hX : X.Nonempty) (hY : Y.Nonempty)
    (hpos : ∀ y ∈ Y, c < colDensity G X y) (hr : 0 < r) (hs : 1 ≤ s)
    (hrow : ∀ X' : Finset V, X' ⊆ X → X'.Nonempty →
      potential G X' Y c w r s ≤ potential G X Y c w r s)
    (A : Finset V) (hAX : A ⊆ X) (hA : A.Nonempty) :
    ∑ i ∈ A, Vr G X Y c s i ≤ X.card * ((A.card : ℝ) / X.card) ^ (1 - w / r)
```

</details>

Double-counting gives both $\sum_iV_i=N$ and the stationarity identity

$$\sum_iq_i\mathbb E_\nu Z_i=\sum_iq_i(V_i-1).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`stationarity`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Graph.lean#L262)

```lean
theorem stationarity (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y) :
    ∑ i ∈ X, graphFrac B X i * Er G B X Y c s i =
      ∑ i ∈ X, graphFrac B X i * (Vr G X Y c s i - 1)
```

</details>

Thus the ordered drift is controlled by the same row moments as in Lemmas
2.1–2.2, as required in the local alternative.

Lean: `SE.drift`, with `stationarity`, `sumV`, `Sbin` and `sorted_enum`,
exposed in [L4_RowOrdering.lean](L4_RowOrdering.lean).
