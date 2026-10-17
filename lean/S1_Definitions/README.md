# 1. Definitions

**Sources.** Weighted configurations and their potential are the definitions
of [Zhao–Booth-Clibborn–Schwahn](../Support/Published/README.md).
Ramsey numbers and graph semantics come from [RamseyLean](../Support/Ramsey/README.md).
The admissibility interfaces and two-moment feasible set below organize the
construction used in this proof.

Let $R(k,\ell)$ denote the least order forcing a red $K_k$ or a blue
$K_\ell$ in every red–blue colouring of a complete graph. The
[final theorem](../S8_RamseyBound/L4_MainTheorem.lean) is

$$\exists K\;\forall k\ge K:\quad R(k,k)\le3.49135655^k.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`eventual_diagonal_bound`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S8_RamseyBound/L4_MainTheorem.lean#L32)

```lean
theorem eventual_diagonal_bound :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
      (RamseyBasics.ramseyNumber k k : ℝ) ≤ (3.49135655 : ℝ) ^ k
```

</details>

This section fixes the definitions used in its proof. A simple graph $G$
represents the red edges; its complement represents the blue edges.

## Definition 1.1. Weighted configurations

Let $G$ be a finite simple graph, with disjoint nonempty vertex sets $X,Y$.
For $y\in Y$, write $g_y=|N_G(y)\cap X|/|X|$. For a shift $c\in\mathbb R$
and positive parameters $r,s$, define

$$\begin{aligned}
H&=\left(\frac1{|Y|}\sum_{y\in Y}(g_y-c)_+^s\right)^{1/s},\\
\Phi_c(X,Y)&=|X|^w|Y|H^r.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`momentNorm`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L58)

```lean
noncomputable def momentNorm (G : SimpleGraph V) (X Y : Finset V) (c s : ℝ) : ℝ :=
  ((∑ y ∈ Y, (max (colDensity G X y - c) 0) ^ s) / (Y.card : ℝ)) ^ (1 / s)
```

[`potential`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L63)

```lean
noncomputable def potential (G : SimpleGraph V) (X Y : Finset V) (c w r s : ℝ) : ℝ :=
  (X.card : ℝ) ^ w * (Y.card : ℝ) * (momentNorm G X Y c s) ^ r
```

</details>

Here $a_+=\max(a,0)$. A configuration is **row/column maximal** if no
nonempty restriction of $X$ with $Y$ fixed, or of $Y$ with $X$ fixed,
increases $\Phi_c$. Explicitly,

$$\begin{aligned}
\Phi_c(X',Y)&\le\Phi_c(X,Y) &&(\varnothing\ne X'\subseteq X),\\
\Phi_c(X,Y')&\le\Phi_c(X,Y) &&(\varnothing\ne Y'\subseteq Y).
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`RowColMaximal`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L68)

```lean
def RowColMaximal (G : SimpleGraph V) (X Y : Finset V) (c w r s : ℝ) : Prop :=
  (∀ X' : Finset V, X' ⊆ X → X'.Nonempty → potential G X' Y c w r s ≤ potential G X Y c w r s) ∧
  (∀ Y' : Finset V, Y' ⊆ Y → Y'.Nonempty → potential G X Y' c w r s ≤ potential G X Y c w r s)
```

</details>

Later $s=\beta r$, with $\beta,r>0$, so the same potential is

$$\Phi_c(X,Y)=|X|^w|Y|
\left(\frac1{|Y|}\sum_{y\in Y}(g_y-c)_+^{\beta r}\right)^{1/\beta}.$$

<details>
<summary>Lean comparison</summary>

Substitute `s = β * r` in `momentNorm`; for positive `β,r`, the nested real powers simplify to exponent `1 / β`. The source definition retains the nested form.

[`potential`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L63)

Declaration shown above.

</details>

These are the existing `DiagRamsey.momentNorm`, `potential` and
`RowColMaximal` definitions, reused in
[L1_WeightedConfigurations.lean](L1_WeightedConfigurations.lean).
Their [underlying definitions](../Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean)
are defined even on empty sets, using Lean's convention $a/0=0$.
Nonemptiness and parameter ranges are hypotheses where needed, rather than
part of the predicates themselves.

For the local move inequalities, let $B$ be an auxiliary graph on the rows.
For $i\in X$, put

$$\begin{aligned}
X_i&=N_B(i)\cap X,& q_i&=\frac{|X_i|}{|X|},\\
Y_i&=N_G(i)\cap Y,& \pi_i&=\frac{|Y_i|}{|Y|},\\
b_i(y)&=\frac{|N_G(y)\cap X_i|}{|X_i|},&
S&=\sum_{y\in Y}(g_y-c)_+^s.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`graphNbhd`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L50)

```lean
noncomputable def graphNbhd (B : SimpleGraph V) (X : Finset V) (v : V) : Finset V :=
  X.filter (fun u => B.Adj v u)
```

[`graphFrac`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L54)

```lean
noncomputable def graphFrac (B : SimpleGraph V) (X : Finset V) (v : V) : ℝ :=
  ((graphNbhd B X v).card : ℝ) / (X.card : ℝ)
```

[`colDensity`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L32)

```lean
noncomputable def colDensity (G : SimpleGraph V) (X : Finset V) (y : V) : ℝ :=
  ((X.filter (fun v => G.Adj v y)).card : ℝ) / (X.card : ℝ)
```

[`redNbhd`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L45)

```lean
noncomputable def redNbhd (G : SimpleGraph V) (S : Finset V) (v : V) : Finset V :=
  S.filter (fun u => G.Adj v u)
```

[`rowDensity`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L36)

```lean
noncomputable def rowDensity (G : SimpleGraph V) (v : V) (Y : Finset V) : ℝ :=
  ((Y.filter (fun y => G.Adj v y)).card : ℝ) / (Y.card : ℝ)
```

[`colMomentSum`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L73)

```lean
noncomputable def colMomentSum (G : SimpleGraph V) (X Y : Finset V) (c s : ℝ) : ℝ :=
  ∑ y ∈ Y, (max (colDensity G X y - c) 0) ^ s
```

</details>

The two **failure predicates** exported by the same Lean file are precisely

$$\begin{aligned}
\texttt{SharpBlueFailure}:\quad
&\sum_{y\in Y}(b_i(y)-c)_+^s
 <(\mu/q_i)^{w\beta}S,\\
\texttt{SharpRedFailure}:\quad
&\sum_{y\in Y_i}\bigl((1-q_i)(g_y-c)-q_i(b_i(y)-g_y)\bigr)_+^s\\
&\hspace{2em}<(1-q_i)^{s-w\beta}x^\beta\pi_i^{1-\beta}S.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`SharpBlueFailure`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L79)

```lean
def SharpBlueFailure (G B : SimpleGraph V) (X Y : Finset V) (c μ w β s : ℝ) (i : V) : Prop :=
  colMomentSum G (graphNbhd B X i) Y c s < (μ / graphFrac B X i) ^ (w * β) * colMomentSum G X Y c s
```

[`SharpRedFailure`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L85)

```lean
def SharpRedFailure (G B : SimpleGraph V) (X Y : Finset V) (c w β s x : ℝ) (i : V) : Prop :=
  ∑ y ∈ Y.filter (fun y => G.Adj i y),
      (max ((1 - graphFrac B X i) * (colDensity G X y - c) -
        graphFrac B X i * (colDensity G (graphNbhd B X i) y - colDensity G X y)) 0) ^ s <
    (1 - graphFrac B X i) ^ (s - w * β) * x ^ β * (rowDensity G i Y) ^ (1 - β) * colMomentSum G X Y c s
```

</details>

The local lemmas keep $B$ explicit; its relationship to the colouring is
supplied when applying them. [Section 2](../S2_MaximalConfigurations/README.md)
turns these predicates and maximality into normalized moment inequalities.

## Definition 1.2. Admissible source and dense profile

A pair $(A,B)$ is **source admissible** if

$$\exists C\ge1\;\forall k,\ell\ge1:\quad
R(k,\ell)\le C\exp(Ak+B\ell).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`SourceAdmissible`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S1_Definitions/L2_AdmissibleBounds.lean#L16)

```lean
def SourceAdmissible (A B : ℝ) : Prop :=
  ∃ C : ℝ, 1 ≤ C ∧ ∀ k l : ℕ, 0 < k → 0 < l →
    (RamseyBasics.ramseyNumber k l : ℝ) ≤ C * Real.exp (A * k + B * l)
```

[`DenseProfile`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S1_Definitions/L2_AdmissibleBounds.lean#L22)

```lean
def DenseProfile (z : ℝ) : Prop :=
  ∃ C : ℝ, 1 ≤ C ∧ ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
    ∀ N : ℕ, ∀ G : SimpleGraph (Fin N), ∀ [DecidableRel G.Adj],
      (1 / 2 : ℝ) ≤ RamseyBasics.redGraphDensity G →
      C * Real.exp (z * k) ≤ (N : ℝ) →
      (∃ S : Finset (Fin N), G.IsNClique k S) ∨
      (∃ S : Finset (Fin N), Gᶜ.IsNClique k S)
```

</details>

An exponent $z$ is a **dense profile** if there exist $C\ge1$ and $K\in\mathbb N$ such
that, for every integer $k\ge K$ and every finite graph $G$ of red density at least
$1/2$, the inequality $|V(G)|\ge C e^{zk}$ forces a $K_k$ in $G$ or its
complement. The same $C,K$ work for every such graph.

Lean: `SourceAdmissible`, `DenseProfile` in
[L2_AdmissibleBounds.lean](L2_AdmissibleBounds.lean). The precise finite
density convention is `RamseyBasics.redGraphDensity`:

$$d_R(G)=\frac{\sum_{v\in V(G)}\deg_G(v)}{N(N-1)}\qquad(N=|V(G)|).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`redGraphDensity`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Ramsey/Descent.lean#L33)

```lean
noncomputable def redGraphDensity {V : Type u} [Fintype V] (G : SimpleGraph V)
    [DecidableRel G.Adj] : ℝ :=
  (∑ v : V, (G.degree v : ℝ)) /
    ((Fintype.card V : ℝ) * ((Fintype.card V : ℝ) - 1))
```

</details>

It equals $2|E(G)|/[N(N-1)]$ for $N\ge2$ and is zero for $N<2$.
Section 8 uses $d_R(G)+d_R(G^c)=1$ for $N\ge2$.

## Definition 1.3. Two-cell feasibility

Given $p,\beta,t,U,V,A_0$, a pair $(A,C)$ satisfies the two-cell constraints if

$$\begin{aligned}
A_0&\le A,\\
pe^{\beta A}+(1-p)e^{\beta C}&\le U,\\
pe^{-\beta tA}+(1-p)e^{-\beta tC}&\le V.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`Feasible`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S1_Definitions/L3_MomentConstraints.lean#L16)

```lean
def Feasible (p β t U V A₀ A C : ℝ) : Prop :=
  A₀ ≤ A ∧
  p * Real.exp (β * A) + (1 - p) * Real.exp (β * C) ≤ U ∧
  p * Real.exp (-β * t * A) + (1 - p) * Real.exp (-β * t * C) ≤ V
```

</details>

The predicate itself imposes these inequalities only. Positivity and range
conditions on its parameters are hypotheses of the theorems using it.
Section 3 derives these constraints from finite moments; section 4 optimizes
the mean $pA+(1-p)C$ subject to them.

Lean: `Complement.Feasible` in
[L3_MomentConstraints.lean](L3_MomentConstraints.lean).
