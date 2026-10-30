# Reproducing and refining a diagonal Ramsey bound — short paper plan

**Initial length aim: 5–6 pages total, including the abstract and references.**
Use ordinary 11-point mathematical typesetting and one-inch margins.
Meet the limit through the choice of content, not smaller type or tighter spacing.
The user has allowed the draft to run over this initial length aim.
The first draft is complete. Compress inherited arguments and auxiliary
numerical details by citation while retaining the new mathematical arguments.

Write and review one section at a time. The primary writer writes every section.
Agents may check literature and citation coverage. Checkboxes track drafting and
review, not the Lean build. The nearby Rule 30 and Ramsey papers are style
examples only; the lexicographic selector is not used here.

## Mathematical emphasis

The principal contribution is reproducing and confirming the
Zhao–Booth-Clibborn–Schwahn method. Present the reduction from base
3.4986238 to 3.49135655 as a small quantitative refinement. State the
reproduction directly; use citations to credit the earlier work.

Prove the complementary moment and explain its effect: it excludes retained
fractions while preserving the previous optimizer at every surviving fraction.
Then derive the stronger local alternative and explain its use in the existing
source/profile construction.

Introduce concepts when they make the deduction clearer: “call this pair
maximal,” “call $q$ the retained fraction,” “suppose the red test fails.”
State inherited results with their needed hypotheses and precise citations.
Keep large certificate tables and routine calculations in the repository.
After each displayed equation, add a small “See:” note linking to the relevant
Lean file on GitHub, following the section READMEs. Name the declaration or
local proof step and note any normalization needed. There is no companion
correspondence document or long appendix in the six-page PDF.

## Page budget and correspondence

| Material | Approximate pages | Lean sections |
| --- | ---: | --- |
| Abstract and introduction | 0.65 | Main statement and attribution |
| 2. Complementary moments | 1.00 | S1–S2 |
| 3. Feasible fractions and the local alternative | 1.60 | S3–S5 |
| 4. Source bounds and retained routes | 0.90 | S6 |
| 5. The concrete bound | 1.00 | S7–S8 |
| References | 0.55 | Primary sources and supporting development |
| **Target** | **5.70** | |

These were the initial allocations, not drafting limits. Check the actual PDF
after each section for layout and readability.

## 1. Introduction

**Draft:** [01-introduction.tex](sections/01-introduction.tex).

- [x] Define $R(k,\ell)$ and state the eventual bound $3.49135655^k$.
- [x] Credit the preceding bounds and the weighted-potential framework.
- [x] Identify the complementary-moment refinement and the retuned construction.
- [x] Make reproduction the principal contribution and describe the improvement
  in the bound as modest.
- [x] Link the displayed theorem to its Lean statement on GitHub.
- [x] Revisit the introduction after completing the body for consistency with
  the result, method, and attribution.
- [x] Write an abstract of at most 80 words after completing the body.

Avoid a current-record claim without a separate literature check.

## 2. Complementary moments

**Draft:** [02-complementary-moments.tex](sections/02-complementary-moments.tex).
**Sources:** [S1](../S1_Definitions/README.md), [S2](../S2_MaximalConfigurations/README.md).

- [x] Define configurations, the potential, and maximality. Cite inherited
  column positivity when normalizing the excesses.
- [x] Define the row split, retained fraction, weighted measure, and relative
  density change. Prove the complementary moment beside the blue moment.
- [x] State red failure in the same notation. Distinguish the full complement
  from the red neighbourhood and cite the finite pivot correction.
- [x] Add equation-by-equation GitHub source notes using the section READMEs.

Keep the new complementary identity and its proof here. Cite concentration
and ordered drift where they are used in Section 3.

## 3. Feasible fractions and the local alternative

**Draft:** [03-feasible-fractions.tex](sections/03-feasible-fractions.tex).
**Sources:** [S3](../S3_TwoCellReduction/README.md),
[S4](../S4_ScalarOptimization/README.md), [S5](../S5_LocalAlternative/README.md).

The draft has four developed subsections: the two-cell limit; the optimizer;
the convex feasibility test; and uniform approximation and the local alternative.
Preserve their arguments rather than returning to the compressed first draft.

- [x] Derive the limiting two-cell constraints. Establish that both limiting
  cell masses are positive before extracting convergent scaled means.
- [x] Define the feasible fractions and give their exact optimizer. Prove
  density transfer and the binding/nonbinding alternatives by convex averaging.
- [x] State entropy feasibility, convexity, and the positive cutoff with their
  essential arguments. The supporting lines belong with the certificate in Section 5.
- [x] State the negative-envelope criterion with its parameter conditions.
  Explain uniform finite approximation and the integrated ordered contradiction,
  including the endpoint and exceptional-row errors.
- [x] Add GitHub source notes to each displayed equation and check the
  declaration names, normalization, and line anchors against the linked revision.

The local conclusion is uniform over finite graphs for sufficiently large
moment parameter $r$. Do not replace this by a “large graph” assumption.
Integrate cells, including the cell meeting zero, rather than evaluating
the logarithm at the singular endpoint.

## 4. Source bounds and retained routes

**Draft:** [04-global-construction.tex](sections/04-global-construction.tex).
**Source:** [S6](../S6_GlobalConstruction/README.md).

- [x] Define admissible sources and density profiles with uniform constants.
- [x] Identify the closure result and state the leaf/route output used here.
  Explain which premise the improved local criterion supplies; cite the
  inherited closure and route proofs.
- [x] Explain the simultaneous induction: raw profiles, closed profiles,
  then sources at a fixed host order. Recursive calls concern proper subhosts.
  State the coverage and strict-margin obligations.
- [x] Check the inherited closure, leaf, route, and induction citations against
  the primary papers; add GitHub Lean source notes to displayed equations.

Explain the induction mechanism in the paper without repeating its inherited
proof in full.

## 5. Proof of the diagonal bound

**Draft:** [05-concrete-bound.tex](sections/05-concrete-bound.tex).
**Sources:** [S7](../S7_ParameterChoice/README.md), [S8](../S8_RamseyBound/README.md).

- [x] Give compact exact parameters. Explain the 192-cell certificate,
  full-domain coverage, and negative integral margin. Justify the global
  supporting lines; link expanded derivatives and support-slope formulas.
- [x] Describe the supporting joint family and source covers. Append four
  children and a root, whose twelve calls use eight existing profiles and
  the four children. Link the exact data and soundness proofs.
- [x] Obtain the dense exponent $z=625145177/500000000$. Use a majority colour,
  absorb rounding and the prefactor with $\gamma=z+10^{-9}$, and certify
  $e^\gamma<3.49135655$.
- [x] State the current formal-verification scope accurately and link the
  draft's source revision and reproduction instructions.
- [ ] Record the completed validation result for the actual submission revision.

Explain what the certificates prove; do not print every check or claim a
numerical threshold for the eventual theorem.

## Final review

- [x] Replace cost metaphors and unspecified labels with explicit inequalities,
  error bounds, and row conditions; correct the sign convention for binary entropy.
- [x] End each proof with its mathematical conclusion and proof square; put
  concluding Lean source notes after the proof environment.
- [x] Obtain two parallel Sol medium reviews of the local arguments and global
  construction, and vet their findings against the sources. Correct the shifted-red
  citation to ZBS Section 3.3, equation (3), and state explicitly the extension
  of the optimizer formula to the certificate's larger domain.
- [x] Vet a second parallel review for mathematical clarity. Make the profile
  height inequalities, control-dependent weight, integral domain and concavity
  composition explicit; distinguish column cells from integration intervals.
  Use “Maximizing the weighted mean” and “A clique bound at density 1/2” as
  headings, state the joint construction and density bound as propositions,
  and label the final argument as the proof of Theorem 1.1.
- [ ] Every new assertion has a proof or a finite certificate whose soundness
  and domain coverage are justified.
- [x] Every borrowed theorem, method, dataset, and formal library is credited;
  relevant prior work has also been checked.
- [ ] The hypotheses and quantifiers agree with the Lean statements.
- [ ] Every displayed equation has a small GitHub Lean source note, with
  declarations and proof steps checked against the linked revision.
- [ ] Full build, axiom audit, and built-in Comparator pass on the submission
  revision before complete formal verification is claimed.
- [ ] The complete PDF is at most six pages, including references, with
  readable mathematics, resolved citations, and no layout defects.

### Compression review, 30 October 2026

The compression pass reduces the PDF from 11 pages to 9 without changing
type size or margins. It retains the proof of the complementary moment,
preservation of the optimizer, the feasibility test, and the justification
of the new envelope certificate.

- [x] Section 4: retain the source/profile definitions, route output and its
  hypotheses, and one paragraph on simultaneous induction. Cite ZBS Section 4.3
  for closure with our local alternative substituted, and Definition 5.4,
  Lemma 5.8 and Theorem 5.7 for the inherited construction. Omit the repeated
  blue-book, balanced-cut and rounding arguments. The published theorem's old
  local criterion is not literally the new criterion; state the substitution.
- [x] Section 5: replace the printed terminal-source fractions, auxiliary
  margins, profile/run counts and tiny root interval by links to our exact
  certificate. Keep the main control parameters, cutoff, negative integral,
  dense exponent and final base. These numerical data belong to this refinement,
  so cite our certificate rather than attributing them to the earlier paper.
- [x] Section 5: replace the displayed Taylor polynomial by the certified
  inequality between the exponential and the final base, retaining its Lean link.
- [x] Sections 3.1 and 3.4: shorten the inherited density-gap calculation and
  the concentration/drift preliminaries using ZBS Proposition 3.5, Steps 2--6.
  Preserve the positive cell-mass argument, uniform finite approximation,
  integration at zero and control of exceptional rows; those justify use of
  the new feasible set.

## TeX structure and prose model

Use one file per section. Add each to the build after drafting it.

```tex
% Body order for the finished short paper
\input{sections/00-abstract}
\input{sections/01-introduction}
\input{sections/02-complementary-moments}
\input{sections/03-feasible-fractions}
\input{sections/04-global-construction}
\input{sections/05-concrete-bound}
\input{references}
```

Move directly from a concept to its use:

```tex
Call $(X,Y)$ maximal if restricting either set cannot increase
$\Phi_c$. Choose a maximal pair with positive potential.
Suppose a neighbourhood occupies a fraction $q$ of $X$, and let
$b_y,b'_y$ be the densities into it and its complement.
Since $g_y=qb_y+(1-q)b'_y$, the changes in density are linked.
Applying maximality to the complement gives the following bound.

\begin{lemma}[Complementary moment]\label{lem:complementary-moment}
% State the precise inequality with the established notation.
\end{lemma}
\begin{proof}
% Compute the potential ratio and use maximality.
\end{proof}
```

Build from `paper/`:

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build main.tex
```

The PDF is `build/main.pdf`; generated files in `build/` are ignored by Git.
