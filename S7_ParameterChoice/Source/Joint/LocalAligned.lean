import S7_ParameterChoice.Source.Joint.AlignedClosed

set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry

open DiagRamsey DiagRamsey.V5

/-- **Removing earlier knots.** Once a knot has been reached, deleting
the preceding knots does not change the clamped interpolant. -/
theorem evalR_drop : ∀ (k : ℕ) (xs ys : List ℚ) (hk : k < xs.length),
    PL.sortedQ xs = true → xs.length = ys.length → ∀ r : ℝ,
    (xs[k] : ℝ) ≤ r → PL.evalR xs ys r = PL.evalR (xs.drop k) (ys.drop k) r
  | 0, xs, ys, _, _, _, _, _ => by simp
  | k+1, x0 :: x1 :: xs, y0 :: y1 :: ys, hk, hs, hy, r, hr => by
      simp only [PL.sortedQ, Bool.and_eq_true, decide_eq_true_eq] at hs
      have hk' : k < (x1 :: xs).length := by simpa using hk
      have hnode := (JointRecipes.sortedQ_bounds (x1 :: xs) hs.2
        ((x1 :: xs)[k]) (List.getElem_mem hk')).1
      have hr' : (x1 : ℝ) ≤ r :=
        (by exact_mod_cast hnode : (x1 : ℝ) ≤ (x1 :: xs)[k]).trans hr
      have hxy : (x0 : ℝ) < x1 := by exact_mod_cast hs.1
      rw [PL.evalR, min_eq_right hr', max_eq_right (sub_pos.mpr hxy).le,
        div_mul_cancel₀ _ (sub_ne_zero.mpr hxy.ne')]
      have ih := evalR_drop k (x1 :: xs) (y1 :: ys) hk' hs.2
        (by simpa using hy) r hr
      simp only [List.drop_succ_cons]
      rw [ih]
      ring
  | _+1, [], _, hk, _, _, _, _ => by simp at hk
  | _+1, [_], _, hk, _, _, _, _ => by simp at hk
  | _+1, _ :: _ :: _, [], _, _, hy, _, _ => by simp at hy
  | _+1, _ :: _ :: _, [_], _, _, hy, _, _ => by simp at hy

/-- **Removing later knots.** Before a knot is passed, deleting all
subsequent knots leaves the interpolant unchanged. -/
theorem evalR_take : ∀ (k : ℕ) (xs ys : List ℚ) (hk : k < xs.length),
    PL.sortedQ xs = true → xs.length = ys.length → ∀ r : ℝ,
    r ≤ (xs[k] : ℝ) → PL.evalR xs ys r = PL.evalR (xs.take (k+1)) (ys.take (k+1)) r
  | 0, x :: xs, y :: ys, _, hs, _, r, hr => by
      have hnodes : ∀ z ∈ x :: xs, r ≤ (z : ℝ) := by
        intro z hz
        exact hr.trans (by exact_mod_cast (JointRecipes.sortedQ_bounds _ hs z hz).1)
      rw [evalR_left _ _ _ hnodes]
      simp [PL.evalR]
  | k+1, x0 :: x1 :: xs, y0 :: y1 :: ys, hk, hs, hy, r, hr => by
      have hs' : PL.sortedQ (x1 :: xs) = true := by
        simp only [PL.sortedQ, Bool.and_eq_true] at hs
        exact hs.2
      have ih := evalR_take k (x1 :: xs) (y1 :: ys) (by simpa using hk) hs'
        (by simpa using hy) r hr
      simp only [List.take_succ_cons, PL.evalR]
      rw [ih]
      simp only [List.take_succ_cons]
  | 0, [], _, hk, _, _, _, _ => by simp at hk
  | 0, _ :: _, [], _, _, hy, _, _ => by simp at hy
  | _+1, [], _, hk, _, _, _, _ => by simp at hk
  | _+1, [_], _, hk, _, _, _, _ => by simp at hk
  | _+1, _ :: _ :: _, [], _, _, hy, _, _ => by simp at hy
  | _+1, _ :: _ :: _, [_], _, _, hy, _, _ => by simp at hy

theorem sortedQ_drop (xs : List ℚ) (hs : PL.sortedQ xs = true) (k : ℕ) :
    PL.sortedQ (xs.drop k) = true := by
  induction k generalizing xs with
  | zero => simpa using hs
  | succ k ih =>
    cases xs with
    | nil => simp [PL.sortedQ]
    | cons x xs =>
      apply ih
      cases xs <;> simp_all [PL.sortedQ]

/-- **Contiguous knot restriction.** A curve and its consecutive knot
block agree between the first and last retained knots. -/
theorem evalR_slice (xs ys : List ℚ) (hs : PL.sortedQ xs = true)
    (hy : xs.length = ys.length) (start count : ℕ) (hc : 0 < count)
    (hb : start + count ≤ xs.length) (r : ℝ)
    (hlo : (xs.getD start 0 : ℝ) ≤ r)
    (hhi : r ≤ ((xs.drop start).getD (count-1) 0 : ℝ)) :
    PL.evalR xs ys r =
      PL.evalR ((xs.drop start).take count) ((ys.drop start).take count) r := by
  have hk : start < xs.length := by omega
  have hn : count-1 < (xs.drop start).length := by simp only [List.length_drop]; omega
  have hlo' : (xs[start] : ℝ) ≤ r := by
    have he : xs[start] = xs.getD start 0 := List.getElem_eq_getD 0
    rw [he]
    exact hlo
  have hhi' : r ≤ ((xs.drop start)[count-1] : ℝ) := by
    have he : (xs.drop start)[count-1] = (xs.drop start).getD (count-1) 0 :=
      List.getElem_eq_getD 0
    rw [he]
    exact hhi
  rw [evalR_drop start xs ys hk hs hy r hlo']
  have hlen : (xs.drop start).length = (ys.drop start).length := by
    simp only [List.length_drop, hy]
  have h := evalR_take (count-1) _ _ hn (sortedQ_drop xs hs start) hlen r hhi'
  simpa only [Nat.sub_add_cancel hc] using h

lemma mapQ_drop (xs : List FQ) (k : ℕ) : (mapQ xs).drop k = mapQ (xs.drop k) := by
  simp [mapQ]

lemma mapQ_take (xs : List FQ) (k : ℕ) : (mapQ xs).take k = mapQ (xs.take k) := by
  simp [mapQ]

/-- Narrow reuse of the mapped lookup identity from `DiagRamsey_V5Fast`. -/
lemma mapQ_getD (xs : List FQ) (k : ℕ) :
    (mapQ xs).getD k 0 = (xs.getD k FQ.zero).toQ := by
  rw [show (0 : ℚ) = FQ.zero.toQ from FQ.toQ_zero.symm, mapQ]
  simp only [List.getD_eq_getElem?_getD, List.getElem?_map, Option.getD_map]

def sliceF (P : ProfF) (start count : ℕ) : ProfF :=
  ⟨P.p, (P.xs.drop start).take count, (P.ys.drop start).take count⟩

/-- A common contiguous knot block, with its certified ratio interval. -/
structure AlignedWindow where
  startR : ℕ
  startQ : ℕ
  count : ℕ
  lo : FQ
  hi : FQ

def AlignedWindow.boundsCheck (w : AlignedWindow) (P : ProfF) (start : ℕ) : Bool :=
  decide (start+w.count ≤ P.xs.length) && FQ.le (P.xs.getD start FQ.zero) w.lo &&
    FQ.le w.hi ((P.xs.drop start).getD (w.count-1) FQ.zero)

/-- Only retained vertices are compared. Full-profile geometry is supplied
by the previously checked geometric-validity theorem, not checked again. -/
def AlignedWindow.check (w : AlignedWindow) (R Q : ProfF) : Bool :=
  decide (0 < w.count) && w.boundsCheck R w.startR && w.boundsCheck Q w.startQ &&
    alignedDensityCheck (sliceF R w.startR w.count) (sliceF Q w.startQ w.count)

theorem AlignedWindow.bounds_imp (w : AlignedWindow) (P : ProfF) (start : ℕ)
    (h : w.boundsCheck P start = true) :
    start+w.count ≤ P.toD.xs.length ∧ P.toD.xs.getD start 0 ≤ w.lo.toQ ∧
      w.hi.toQ ≤ (P.toD.xs.drop start).getD (w.count-1) 0 := by
  simp only [AlignedWindow.boundsCheck, Bool.and_eq_true, decide_eq_true_eq,
    FQ.le_eq] at h
  obtain ⟨⟨hb, hl⟩, hh⟩ := h
  refine ⟨?_, ?_, ?_⟩
  · simpa only [ProfF.toD, mapQ, List.length_map] using hb
  · simpa only [ProfF.toD, mapQ_getD] using hl
  · simpa only [ProfF.toD, mapQ_drop, mapQ_getD] using hh

/-- **Local aligned domination.** Two curves agree with their retained
knot blocks on the interval, so one linear vertex certificate suffices. -/
theorem AlignedWindow.pointwise (w : AlignedWindow) (R Q : ProfF)
    (hRs : PL.sortedQ R.toD.xs = true) (hRl : R.toD.xs.length = R.toD.ys.length)
    (hQs : PL.sortedQ Q.toD.xs = true) (hQl : Q.toD.xs.length = Q.toD.ys.length)
    (h : w.check R Q = true) (r : ℝ) (hlo : (w.lo.toQ : ℝ) ≤ r)
    (hhi : r ≤ (w.hi.toQ : ℝ)) : R.toD.toBP.L r ≤ Q.toD.toBP.L r := by
  simp only [AlignedWindow.check, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨hc, hR⟩, hQ⟩, hp⟩ := h
  have bR := w.bounds_imp R w.startR hR
  have bQ := w.bounds_imp Q w.startQ hQ
  have loR : (R.toD.xs.getD w.startR 0 : ℝ) ≤ w.lo.toQ := by exact_mod_cast bR.2.1
  have hiR : (w.hi.toQ : ℝ) ≤ (R.toD.xs.drop w.startR).getD (w.count-1) 0 := by
    exact_mod_cast bR.2.2
  have loQ : (Q.toD.xs.getD w.startQ 0 : ℝ) ≤ w.lo.toQ := by exact_mod_cast bQ.2.1
  have hiQ : (w.hi.toQ : ℝ) ≤ (Q.toD.xs.drop w.startQ).getD (w.count-1) 0 := by
    exact_mod_cast bQ.2.2
  have eR := evalR_slice R.toD.xs R.toD.ys hRs hRl w.startR w.count hc bR.1 r
    (loR.trans hlo) (hhi.trans hiR)
  have eQ := evalR_slice Q.toD.xs Q.toD.ys hQs hQl w.startQ w.count hc bQ.1 r
    (loQ.trans hlo) (hhi.trans hiQ)
  have hp' := alignedDensity_pointwise _ _ hp r
  have eR' : R.toD.toBP.L r = (sliceF R w.startR w.count).toD.toBP.L r := by
    simpa only [ProfF.toD, ProfD.toBP, sliceF, mapQ_drop, mapQ_take] using eR
  have eQ' : Q.toD.toBP.L r = (sliceF Q w.startQ w.count).toD.toBP.L r := by
    simpa only [ProfF.toD, ProfD.toBP, sliceF, mapQ_drop, mapQ_take] using eQ
  exact eR'.trans_le (hp'.trans_eq eQ'.symm)

theorem getD_mem_of_lt (xs : List ℚ) (k : ℕ) (hk : k < xs.length) : xs.getD k 0 ∈ xs := by
  have he : xs[k] = xs.getD k 0 := List.getElem_eq_getD 0
  rw [← he]
  exact List.getElem_mem hk

/-- **Local donor soundness.** A contiguous-block certificate supplies
the original raw-density closed recipe, with its full donor curve. -/
theorem AlignedWindow.valid_of_check (w : AlignedWindow) (R Q : ProfF)
    (hRs : PL.sortedQ R.toD.xs = true) (hRl : R.toD.xs.length = R.toD.ys.length)
    (hQs : PL.sortedQ Q.toD.xs = true) (hQl : Q.toD.xs.length = Q.toD.ys.length)
    (h : w.check R Q = true) :
    (ClosedPiece.rawDensity (0 : Fin 1)).Valid (fun _ => R.toD.toBP) Q.toD.toBP
      (w.lo.toQ : ℝ) (w.hi.toQ : ℝ) := by
  have hp := h
  simp only [AlignedWindow.check, Bool.and_eq_true, decide_eq_true_eq] at hp
  obtain ⟨⟨⟨hc, hR⟩, _⟩, ha⟩ := hp
  have hlocal := alignedDensity_valid (fun _ : Fin 1 => sliceF R w.startR w.count)
    (sliceF Q w.startQ w.count) 0 ha
  have bR := w.bounds_imp R w.startR hR
  have hk : w.startR < R.toD.xs.length := by omega
  have hn : w.count-1 < (R.toD.xs.drop w.startR).length := by
    simp only [List.length_drop]; omega
  have hfirst := (JointRecipes.sortedQ_bounds _ hRs _
    (getD_mem_of_lt _ _ hk)).1.trans bR.2.1
  have hlast := bR.2.2.trans (JointRecipes.sortedQ_bounds _ hRs _
    (List.mem_of_mem_drop (getD_mem_of_lt _ _ hn))).2
  refine ⟨?_, ?_, ?_, fun r hlo hhi => w.pointwise R Q hRs hRl hQs hQl h r hlo hhi⟩
  · exact hlocal.1
  · change (R.toD.xs.headD 0 : ℝ) ≤ w.lo.toQ
    exact_mod_cast hfirst
  · change (w.hi.toQ : ℝ) ≤ R.toD.xs.getLastD 0
    exact_mod_cast hlast

/-- Exact endpoints identify every original knot interval retained by a window. -/
def AlignedWindow.coversKnots (w : AlignedWindow) (Q : ProfF) : Bool :=
  FQ.eq w.lo (Q.xs.getD w.startQ FQ.zero) &&
    FQ.eq w.hi ((Q.xs.drop w.startQ).getD (w.count-1) FQ.zero)

def AlignedWindow.fullCheck (w : AlignedWindow) (R Q : ProfF) : Bool :=
  w.check R Q && w.coversKnots Q

theorem AlignedWindow.coversKnots_imp (w : AlignedWindow) (Q : ProfF)
    (h : w.coversKnots Q = true) :
    w.lo.toQ = Q.toD.xs.getD w.startQ 0 ∧
      w.hi.toQ = (Q.toD.xs.drop w.startQ).getD (w.count-1) 0 := by
  simpa only [AlignedWindow.coversKnots, Bool.and_eq_true, FQ.eq_eq,
    decide_eq_true_eq, ProfF.toD, mapQ_drop, mapQ_getD] using h

theorem getD_drop (xs : List ℚ) (i j : ℕ) :
    (xs.drop i).getD j 0 = xs.getD (i+j) 0 := by
  induction i generalizing xs with
  | zero => simp
  | succ i ih =>
    cases xs with
    | nil => simp
    | cons x xs => simpa only [List.drop_succ_cons, Nat.succ_add,
        List.getD_cons_succ] using ih xs

theorem sortedQ_getD_le (xs : List ℚ) (hs : PL.sortedQ xs = true)
    (i j : ℕ) (hij : i ≤ j) (hj : j < xs.length) : xs.getD i 0 ≤ xs.getD j 0 := by
  induction i generalizing xs j with
  | zero =>
    cases xs with
    | nil => simp at hj
    | cons x xs =>
      simpa only [List.headD_cons, List.getD_cons_zero] using
        (JointRecipes.sortedQ_bounds _ hs _ (getD_mem_of_lt _ _ hj)).1
  | succ i ih =>
    cases xs with
    | nil => simp at hj
    | cons x xs =>
      cases j with
      | zero => omega
      | succ j =>
        have hs' : PL.sortedQ xs = true := by cases xs <;> simp_all [PL.sortedQ]
        simpa only [List.getD_cons_succ] using ih xs hs' j (by omega) (by simpa using hj)

/-- **Original interval endpoints.** Each adjacent retained pair lies
inside the exact window, without further vertex comparisons. -/
theorem AlignedWindow.knot_bounds (w : AlignedWindow) (Q : ProfF)
    (hs : PL.sortedQ Q.toD.xs = true) (hb : w.startQ+w.count ≤ Q.toD.xs.length)
    (hc : w.coversKnots Q = true) (j : ℕ) (hj : j+1 < w.count) :
    (w.lo.toQ : ℝ) ≤ Q.toD.xs.getD (w.startQ+j) 0 ∧
      (Q.toD.xs.getD (w.startQ+j+1) 0 : ℝ) ≤ w.hi.toQ := by
  obtain ⟨hlo, hhi⟩ := w.coversKnots_imp Q hc
  rw [getD_drop] at hhi
  constructor
  · rw [hlo]
    exact_mod_cast sortedQ_getD_le _ hs w.startQ (w.startQ+j) (by omega) (by omega)
  · rw [hhi]
    exact_mod_cast sortedQ_getD_le _ hs (w.startQ+j+1) (w.startQ+(w.count-1))
      (by omega) (by omega)

theorem knotIntervals_length : ∀ xs : List ℚ,
    (JointRecipes.knotIntervals xs).length = xs.length-1
  | [] => rfl
  | [_] => rfl
  | x :: y :: xs => by
      have ih := knotIntervals_length (y :: xs)
      simp only [JointRecipes.knotIntervals, List.length_cons] at ih ⊢
      omega

theorem knotIntervals_getD : ∀ (xs : List ℚ) (j : ℕ), j+1 < xs.length →
    (JointRecipes.knotIntervals xs).getD j (0,0) = (xs.getD j 0, xs.getD (j+1) 0)
  | [], _, h => by simp at h
  | [_], _, h => by simp at h
  | x :: y :: xs, 0, _ => rfl
  | x :: y :: xs, j+1, h => by
      simpa only [JointRecipes.knotIntervals, List.getD_cons_succ] using
        knotIntervals_getD (y :: xs) j (by simpa using h)

theorem knotIntervals_get (xs : List ℚ) (j : Fin (JointRecipes.knotIntervals xs).length) :
    (JointRecipes.knotIntervals xs).get j = (xs.getD j.val 0, xs.getD (j.val+1) 0) := by
  have hj : j.val+1 < xs.length := by
    have h := j.isLt
    have hlen := knotIntervals_length xs
    omega
  change (JointRecipes.knotIntervals xs)[j.val] = _
  rw [List.getElem_eq_getD (0,0)]
  exact knotIntervals_getD xs j.val hj

#print axioms evalR_slice
#print axioms AlignedWindow.pointwise
#print axioms AlignedWindow.valid_of_check
#print axioms AlignedWindow.knot_bounds

end DiagonalRamsey.JointGeometry
