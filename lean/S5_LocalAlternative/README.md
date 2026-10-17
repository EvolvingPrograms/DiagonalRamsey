# 5. The local red–blue alternative

**Sources.** We assemble the two-moment bounds from Sections 3–4 using the
ordered-drift and maximal-configuration machinery of
[Zhao–Booth-Clibborn–Schwahn](../Support/Published/README.md).
The graph argument follows their sharp-envelope proof with the complementary
moment retained; [L3_GraphAlternative.lean](L3_GraphAlternative.lean) identifies
the inherited proof interface.

Section 4 supplies feasible degrees $F_p$ and their optimal means $M_p$.
We relate finite rows uniformly to these limiting quantities, then combine
the approximation with the ordering inequality, then discharge its hypotheses
in a maximal graph configuration.

## Lemma 5.1. Uniform approximation of finite rows

Fix $0<p,\mu<1$, $w\ge0$, $\beta,x>0$, $x<(1-\mu)^w$, and
$\delta,\varepsilon>0$. There exist $\eta>0$ and $R$ such that the following
holds for $r\ge R$. Suppose

$$\delta\le q\le\mu+\eta,\quad p-\eta\le m,\pi\le1,
\quad |m-\pi|\le\eta,$$

and the scaled means $a,b$ satisfy

$$m(1+a/r)_+^{\beta r}+(1-m)(1+b/r)_+^{\beta r}\le U(q),$$
$$m(1-ta/r)_+^{\beta r}+(1-m)(1-tb/r)_+^{\beta r}\le V(q),
\qquad t=\frac q{1-q}.$$

Put

$$\ell=-w\log(1-q)+\log x+
\frac{(1-\beta)\log\pi-\log m}{\beta}.$$

If $a\ge r(1-q)(1-e^{\ell/r})/q$, then there is $q'\in F_p$ such that

$$|q'-q|\le\varepsilon,\qquad
q\bigl(ma+(1-m)b\bigr)\le q'M_p(q')+\varepsilon.$$

**Proof.** Otherwise choose counterexamples with $r\to\infty$ and
$\eta\to0$. Extract limits $q\to q_0\in[\delta,\mu]$ and
$m,\pi\to d\ge p$. The first-cell density bound gives $d<1$.
The complementary moment bounds both scaled means, so section 3 extracts
a feasible limiting pair at density $d$. Section 4 transfers it to density
$p$ and bounds its objective by $M_p(q_0)$, contradicting the fixed
$\varepsilon$ failure. Both means are bounded before subsequence extraction.

Lean: `finite_row_approximation` in
[L1_FiniteApproximation.lean](L1_FiniteApproximation.lean).

## Lemma 5.2. Negative ordered envelope

Assume $F_p$ is nonempty and there is a function $E:(0,1]\to\mathbb R$
which is continuous, nondecreasing and integrable, satisfies

$$qM_p(q)+wq(1+\log u)\le E(u)
\quad(q\in F_p,\ 0<u\le1),\qquad \int_0^1E(u)\,du<0.$$

For $\mu<1$ and $w>0$, there are $\varepsilon,\varphi>0$ and $R$
such that no data with $r\ge R$, $N\ge1$, $0\le q_i\le1$ can satisfy
all of the following: the ordered drift inequality of Section 2 with
right side $r\sum_iP_i$; the bound $rP_i\le w$ on every row; and, on
all but $\varphi N$ rows, a feasible $q'_i$ with

$$|q'_i-q_i|\le\varepsilon,\qquad
rP_i\le q'_iM_p(q'_i)+\varepsilon.$$

**Proof.** Apply Lemma 5.1 on good rows after excluding small degrees.
For $0\le a\le b\le1$ and $q\in F_p$, integrate the majorant:

$$ (b-a)qM_p(q)+wq[b\log b-a\log a]\le\int_a^b E(u)\,du,$$

with $0\log0=0$. Sum these cell inequalities in the order from Lemma 2.4.
For $L(u)=u\log u$ and $J(u)=2u-u\log u$, let $\Delta L_i$ and
$\Delta J_i$ be their increments on $[i/N,(i+1)/N]$. The drift estimate gives

$$-\frac{4w^2}{r}\le T:=\sum_i\left(\frac{rP_i}{N}+wq_i\Delta L_i\right)
\qquad(r\ge2w).$$

On good rows the integrated majorant bounds the summand by its cell
integral plus $\varepsilon/N+w\varepsilon\Delta J_i$; here
$|\Delta L_i|\le\Delta J_i$ and $\sum_i\Delta J_i=2$.
Fix $q_0\in F_p$ and put $C_0=|q_0M_p(q_0)|$. On the exceptional set
$S$, comparison with $q_0$ and $rP_i\le w$ adds at most
$(w+C_0)|S|/N+w\sum_{i\in S}\Delta J_i$. Concavity of $J$ gives,
for every $a>0$,

$$\sum_{i\in S}\Delta J_i\le(2+a)|S|/N+e^{-a-1}.$$

Writing $C=-\int_0^1E>0$, we therefore obtain

$$T\le-C+\varepsilon(1+2w)
+\varphi\bigl(w+C_0+w(2+a)\bigr)+we^{-a-1}.$$

Choose $a$ large, then $\varepsilon,\varphi$ small and $r$ large so that
each error, including $4w^2/r$, is at most $C/16$. The upper and lower
bounds for $T$ contradict one another.

Under $0<p,\mu,\beta<1$, $w>0$, $0<x<p$ and $x<(1-\mu)^w$,
the finite moment and red-threshold hypotheses supply the good-row premise
by Lemma 5.1. The inherited degree-exclusion lemmas exclude $q=0$ and
then give a uniform positive lower cutoff for $q$; this is where $x<p$
is used. Thus Lemma 5.1 applies away from its singular degree endpoint.

The majorant premise is `ComplementEnvelope`, defined in section 4.
Lean: [`ordered_envelope_assembly`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L2_OrderedEnvelope.lean#L187).
The error estimates above are implemented in `ordered_envelope_contradiction`;
`ordered_envelope_assembly` supplies its premises from finite row data.

## Theorem 5.3. A useful red or blue move

Assume $0<p,\mu,\beta<1$, $w>0$, $0<x<p$, $x<(1-\mu)^w$ and
`ComplementEnvelope`. There exist $\eta,\tau,\zeta>0$ and $R>w$ with
$\beta R>1$ such that, for every $r\ge R$, the following holds uniformly
over finite graphs $G,B$. Let $X,Y$ be disjoint and nonempty, with
$|c-p|\le\eta$, all $g_y>c$, and a row/column-maximal configuration.
For any $X_g\subseteq X$ satisfying

$$|X\setminus X_g|\le\zeta|X|,\qquad q_i\le\mu+\tau\quad(i\in X_g),$$

there is either an $i\in X$ with $q_i>0$ for which `SharpBlueFailure`
is false, or an $i\in X_g$ for which `SharpRedFailure` is false.

**Proof.** Assume both failures hold throughout their respective
row sets. Set $P_i=q_i\mathbb E_\nu Z_i$. Stationarity and the ordering
lemma give the required drift, while blue failure gives $rP_i\le w$
for $r\ge2w$ (at $q_i=0$, $P_i=0$). Section 2's concentration estimates
remove only a small additional fraction of rows from $X_g$. On the remaining
rows $m_i,\pi_i\ge p-\delta$ and $|m_i-\pi_i|\le\delta$ for the tolerance
chosen in the assembly. Section 3 supplies both cell moments and the red
threshold, and partitioning the weighted mean gives

$$q_i\bigl(m_i a_i+(1-m_i)b_i\bigr)=rP_i.$$

These are exactly the hypotheses of Lemma 5.2, a contradiction.

Lean: [`graph_alternative`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L3_GraphAlternative.lean#L279).
