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

This section fixes the definitions used in its proof. A simple graph $G$
represents the red edges; its complement represents the blue edges.

## Definition 1.1. Weighted configurations

Let $G$ be a finite simple graph, with disjoint nonempty vertex sets $X,Y$.
For $y\in Y$, write $g_y=|N_G(y)\cap X|/|X|$. For a shift $c\in\mathbb R$
and positive parameters $r,s$, define

$$H=\left(\frac1{|Y|}\sum_{y\in Y}(g_y-c)_+^s\right)^{1/s},\qquad
\Phi_c(X,Y)=|X|^w|Y|H^r,$$

where $a_+=\max(a,0)$. A configuration is **row/column maximal** if no
nonempty restriction of $X$ with $Y$ fixed, or of $Y$ with $X$ fixed,
increases $\Phi_c$. Explicitly,

$$\Phi_c(X',Y)\le\Phi_c(X,Y)\quad(\varnothing\ne X'\subseteq X),\qquad
\Phi_c(X,Y')\le\Phi_c(X,Y)\quad(\varnothing\ne Y'\subseteq Y).$$

Later $s=\beta r$, with $\beta,r>0$, so the same potential is

$$\Phi_c(X,Y)=|X|^w|Y|
\left(\frac1{|Y|}\sum_{y\in Y}(g_y-c)_+^{\beta r}\right)^{1/\beta}.$$

These are the existing `DiagRamsey.momentNorm`, `potential` and
`RowColMaximal` definitions, reused in
[L1_WeightedConfigurations.lean](L1_WeightedConfigurations.lean).
Their [underlying definitions](../Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean)
are defined even on empty sets, using Lean's convention $a/0=0$.
Nonemptiness and parameter ranges are hypotheses where needed, rather than
part of the predicates themselves.

For the local move inequalities, let $B$ be an auxiliary graph on the rows.
For $i\in X$, put

$$X_i=N_B(i)\cap X,\quad q_i=\frac{|X_i|}{|X|},\quad
b_i(y)=\frac{|N_G(y)\cap X_i|}{|X_i|},\quad
Y_i=N_G(i)\cap Y,\quad \pi_i=\frac{|Y_i|}{|Y|},\quad
S=\sum_{y\in Y}(g_y-c)_+^s.$$

The two **failure predicates** exported by the same Lean file are precisely

$$\begin{aligned}
\texttt{SharpBlueFailure}:\quad
&\sum_{y\in Y}(b_i(y)-c)_+^s
 <(\mu/q_i)^{w\beta}S,\\
\texttt{SharpRedFailure}:\quad
&\sum_{y\in Y_i}\bigl((1-q_i)(g_y-c)-q_i(b_i(y)-g_y)\bigr)_+^s\\
&\hspace{2em}<(1-q_i)^{s-w\beta}x^\beta\pi_i^{1-\beta}S.
\end{aligned}$$

The local lemmas keep $B$ explicit; its relationship to the colouring is
supplied when applying them. [Section 2](../S2_MaximalConfigurations/README.md)
turns these predicates and maximality into normalized moment inequalities.

## Definition 1.2. Admissible source and dense profile

A pair $(A,B)$ is **source admissible** if

$$\exists C\ge1\;\forall k,\ell\ge1:\quad
R(k,\ell)\le C\exp(Ak+B\ell).$$

An exponent $z$ is a **dense profile** if there exist $C\ge1$ and $K\in\mathbb N$ such
that, for every integer $k\ge K$ and every finite graph $G$ of red density at least
$1/2$, the inequality $|V(G)|\ge C e^{zk}$ forces a $K_k$ in $G$ or its
complement. The same $C,K$ work for every such graph.

Lean: `SourceAdmissible`, `DenseProfile` in
[L2_AdmissibleBounds.lean](L2_AdmissibleBounds.lean). The precise finite
density convention is `RamseyLean.redGraphDensity`:

$$d_R(G)=\frac{\sum_{v\in V(G)}\deg_G(v)}{N(N-1)}\qquad(N=|V(G)|).$$

It equals $2|E(G)|/[N(N-1)]$ for $N\ge2$ and is zero for $N<2$.
Section 8 uses $d_R(G)+d_R(G^c)=1$ for $N\ge2$.

## Definition 1.3. Two-cell feasibility

Given $p,\beta,t,U,V,A_0$, a pair $(A,C)$ satisfies the two-cell constraints if

$$A_0\le A,\qquad
pe^{\beta A}+(1-p)e^{\beta C}\le U,\qquad
pe^{-\beta tA}+(1-p)e^{-\beta tC}\le V.$$

The predicate itself imposes these inequalities only. Positivity and range
conditions on its parameters are hypotheses of the theorems using it.
Section 3 derives these constraints from finite moments; section 4 optimizes
the mean $pA+(1-p)C$ subject to them.

Lean: `Complement.Feasible` in
[L3_MomentConstraints.lean](L3_MomentConstraints.lean).
