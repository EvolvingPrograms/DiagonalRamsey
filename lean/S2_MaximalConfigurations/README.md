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

For a row $i$, put $A_i=N_B(i)\cap X$, $q=|A_i|/|X|$,
$b_y=|N_G(y)\cap A_i|/|A_i|$, and $Z_y=(b_y-g_y)/(g_y-c)$.

## Lemma 2.1. The blue moment

For $\mu>0$ and $q>0$, blue failure implies

$$\mathbb E_\nu(1+Z)_+^s\le (\mu/q)^{\beta w}.$$

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

Assume row maximality. Then

$$\sum_i|V_i-1|\le\frac{2w}{r}N,\qquad
\sum_i|\pi_i-(c+H)|\le NH\left(1-\theta+\frac{2w}{r}\right).$$

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

When $0<\beta<1$, column maximality supplies

$$g_y-c\ge\theta H,\qquad \theta=(1-\beta)^{1/(\beta r)},\qquad
\nu\{g_y-c>(1+\varepsilon)H\}\le(1+\varepsilon)^{\beta r-r}$$

for every $\varepsilon\ge0$. Consequently,

$$\rho\le\varepsilon+(\theta^{-1}-1)+(1+\varepsilon)^{\beta r-r},\qquad
|m_i-(c+H)|\le(1+|c|)\rho+H|V_i-1|.$$

**Proof of the additional bounds.** The column lower bound follows by
deleting a column and comparing potentials. Restricting to the upper-tail
columns gives the displayed tail estimate. Split the sum defining $\rho$
at $(1+\varepsilon)H$: below this cutoff its summand factor is at most
$\varepsilon+\theta^{-1}-1$; above it an additional $1$ suffices.
Finally, with $h_i(y)=\mathbf1_{iy\in G}$,

$$m_i-(c+H)=H(V_i-1)+
\sum_y\nu_y(h_i(y)-c)\left(1-\frac H{g_y-c}\right),$$

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

**Proof.** Order $q_j$ increasingly and set
$D_j=\sum_{i<j}V_i-N(j/N)^\gamma$. The subset bound gives $D_j\le0$,
while $D_0=D_N=0$. Summation by parts yields

$$\sum_{j=0}^{N-1}q_j(D_{j+1}-D_j)
=-\sum_{j=1}^{N-1}(q_j-q_{j-1})D_j\ge0.$$

Expanding and subtracting $\sum_jq_j$ gives the result.
In the graph application $\gamma=1-w/r>0$. To obtain the subset bound,
write $a=|A|/N$ and $b_A(y)=|N_G(y)\cap A|/|A|$. Weighted Jensen and
row maximality give

$$\frac1{|A|}\sum_{i\in A}V_i
=\sum_y\nu_y\frac{b_A(y)-c}{g_y-c}
\le\left(\frac{\sum_y(b_A(y)-c)_+^s}{\sum_y(g_y-c)^s}\right)^{1/s}
\le a^{-w/r}.$$

Double-counting gives both $\sum_iV_i=N$ and the stationarity identity

$$\sum_iq_i\mathbb E_\nu Z_i=\sum_iq_i(V_i-1).$$

Thus the ordered drift is controlled by the same row moments as in Lemmas
2.1–2.2, as required in the local alternative.

Lean: `SE.drift`, with `stationarity`, `sumV`, `Sbin` and `sorted_enum`,
exposed in [L4_RowOrdering.lean](L4_RowOrdering.lean).
