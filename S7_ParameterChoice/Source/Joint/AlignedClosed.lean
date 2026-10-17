import S7_ParameterChoice.Source.Joint.ClosedRecipes

set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry

open DiagRamsey DiagRamsey.V5

/-- To the left of every knot, the clamped interpolant has its first value. -/
theorem evalR_left : ∀ (xs ys : List ℚ) (r : ℝ),
    (∀ x ∈ xs, r ≤ x) → PL.evalR xs ys r = (ys.headD 0 : ℝ)
  | x0 :: x1 :: xs, y0 :: y1 :: ys, r, h => by
      have ih := evalR_left (x1 :: xs) (y1 :: ys) r
        (fun x hx => h x (List.mem_cons_of_mem _ hx))
      have hc : max 0 (min r (x1 : ℝ) - x0) = 0 :=
        max_eq_left (sub_nonpos.mpr ((min_le_left _ _).trans (h _ (by simp))))
      rw [PL.evalR, hc, ih]
      simp
  | [], y0 :: _, _, _ => by simp [PL.evalR]
  | [_], y0 :: _, _, _ => by simp [PL.evalR]
  | _ :: _ :: _, [_], _, _ => by simp [PL.evalR]
  | xs, [], _, _ => by cases xs <;> simp [PL.evalR]

/-- **Aligned interpolation.** For increasing common knots, domination
of corresponding vertex values implies domination everywhere. -/
theorem evalR_le_of_aligned : ∀ (xs ys zs : List ℚ),
    PL.sortedQ xs = true → xs.length = ys.length → xs.length = zs.length →
    List.Forall₂ (· ≤ ·) ys zs → ∀ r : ℝ, PL.evalR xs ys r ≤ PL.evalR xs zs r
  | [], ys, zs, _, hy, hz, _, r => by
      cases ys <;> cases zs <;> simp_all [PL.evalR]
  | [_], ys, zs, _, hy, hz, h, _ => by
      cases ys with
      | nil => simp at hy
      | cons y ys =>
        cases zs with
        | nil => simp at hz
        | cons z zs =>
          have ey : ys = [] := by simpa using hy.symm
          have ez : zs = [] := by simpa using hz.symm
          subst ys; subst zs
          simp only [PL.evalR]
          exact_mod_cast (List.forall₂_cons.mp h).1
  | x0 :: x1 :: xs, y0 :: y1 :: ys, z0 :: z1 :: zs, hs, hy, hz, h, r => by
      simp only [PL.sortedQ, Bool.and_eq_true, decide_eq_true_eq] at hs
      have hxy : (x0 : ℝ) < x1 := by exact_mod_cast hs.1
      have h0 : (y0 : ℝ) ≤ z0 := by exact_mod_cast (List.forall₂_cons.mp h).1
      have htail := (List.forall₂_cons.mp h).2
      have h1 : (y1 : ℝ) ≤ z1 := by exact_mod_cast (List.forall₂_cons.mp htail).1
      by_cases hr : r ≤ (x1 : ℝ)
      · have hnodes : ∀ x ∈ x1 :: xs, r ≤ (x : ℝ) := by
          intro x hx
          exact hr.trans (by exact_mod_cast
            (JointRecipes.sortedQ_bounds (x1 :: xs) hs.2 x hx).1)
        have ey := evalR_left (x1 :: xs) (y1 :: ys) r hnodes
        have ez := evalR_left (x1 :: xs) (z1 :: zs) r hnodes
        let t := max 0 (min r (x1 : ℝ) - x0) / ((x1 : ℝ) - x0)
        have ht : 0 ≤ t := div_nonneg (le_max_left _ _) (sub_pos.mpr hxy).le
        have ht' : t ≤ 1 := (div_le_one (sub_pos.mpr hxy)).mpr
          (max_le (sub_pos.mpr hxy).le (sub_le_sub_right (min_le_right _ _) _))
        calc
          PL.evalR (x0 :: x1 :: xs) (y0 :: y1 :: ys) r =
              (1-t)*(y0 : ℝ)+t*y1 := by rw [PL.evalR, ey]; dsimp [t]; ring
          _ ≤ (1-t)*(z0 : ℝ)+t*z1 := add_le_add
            (mul_le_mul_of_nonneg_left h0 (sub_nonneg.mpr ht'))
            (mul_le_mul_of_nonneg_left h1 ht)
          _ = PL.evalR (x0 :: x1 :: xs) (z0 :: z1 :: zs) r := by
            rw [PL.evalR, ez]; dsimp [t]; ring
      · have hr' : (x1 : ℝ) ≤ r := (lt_of_not_ge hr).le
        have ey : PL.evalR (x0 :: x1 :: xs) (y0 :: y1 :: ys) r =
            PL.evalR (x1 :: xs) (y1 :: ys) r := by
          rw [PL.evalR, min_eq_right hr', max_eq_right (sub_pos.mpr hxy).le,
            div_mul_cancel₀ _ (sub_ne_zero.mpr hxy.ne')]
          ring
        have ez : PL.evalR (x0 :: x1 :: xs) (z0 :: z1 :: zs) r =
            PL.evalR (x1 :: xs) (z1 :: zs) r := by
          rw [PL.evalR, min_eq_right hr', max_eq_right (sub_pos.mpr hxy).le,
            div_mul_cancel₀ _ (sub_ne_zero.mpr hxy.ne')]
          ring
        rw [ey, ez]
        exact evalR_le_of_aligned _ _ _ hs.2 (by simpa using hy) (by simpa using hz) htail r
  | _ :: _ :: _, [], _, _, hy, _, _, _ => by simp at hy
  | _ :: _ :: _, [_], _, _, hy, _, _, _ => by simp at hy
  | _ :: _ :: _, _ :: _ :: _, [], _, _, hz, _, _ => by simp at hz
  | _ :: _ :: _, _ :: _ :: _, [_], _, _, hz, _, _ => by simp at hz

/-- Linear comparison of matching knot lists, allowing different fraction representations. -/
def sameKnotsF : List FQ → List FQ → Bool
  | [], [] => true
  | x :: xs, y :: ys => FQ.eq x y && sameKnotsF xs ys
  | _, _ => false

theorem sameKnotsF_imp : ∀ {xs ys : List FQ}, sameKnotsF xs ys = true → mapQ xs = mapQ ys
  | [], [], _ => rfl
  | x :: xs, y :: ys, h => by
      simp only [sameKnotsF, Bool.and_eq_true, FQ.eq_eq, decide_eq_true_eq] at h
      simp only [mapQ_cons, h.1, sameKnotsF_imp h.2]
  | [], _ :: _, h => by simp [sameKnotsF] at h
  | _ :: _, [], h => by simp [sameKnotsF] at h

/-- Linear comparison of corresponding vertex heights. -/
def valuesLeF : List FQ → List FQ → Bool
  | [], [] => true
  | x :: xs, y :: ys => FQ.le x y && valuesLeF xs ys
  | _, _ => false

theorem valuesLeF_imp : ∀ {xs ys : List FQ}, valuesLeF xs ys = true →
    List.Forall₂ (· ≤ ·) (mapQ xs) (mapQ ys)
  | [], [], _ => .nil
  | x :: xs, y :: ys, h => by
      simp only [valuesLeF, Bool.and_eq_true, FQ.le_eq, decide_eq_true_eq] at h
      exact .cons h.1 (valuesLeF_imp h.2)
  | [], _ :: _, h => by simp [valuesLeF] at h
  | _ :: _, [], h => by simp [valuesLeF] at h

/-- **Aligned donor certificate.** Only adjacent knot ordering, matching
knots, and corresponding heights are checked; no interpolant is evaluated. -/
def alignedDensityCheck (R Q : ProfF) : Bool :=
  FQ.le R.p Q.p && decide (R.xs.length = R.ys.length) &&
    decide (Q.xs.length = Q.ys.length) && sortedF R.xs &&
    sameKnotsF R.xs Q.xs && valuesLeF R.ys Q.ys

/-- The aligned vertex certificate compares the interpolants at every real argument. -/
theorem alignedDensity_pointwise (R Q : ProfF) (h : alignedDensityCheck R Q = true) :
    ∀ r : ℝ, R.toD.toBP.L r ≤ Q.toD.toBP.L r := by
  simp only [alignedDensityCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨_, hy⟩, hz⟩, hs⟩, hx⟩, hv⟩ := h
  have hx' := sameKnotsF_imp hx
  have hs' : PL.sortedQ (mapQ R.xs) = true := by rwa [← sortedF_eq]
  have hy' : (mapQ R.xs).length = (mapQ R.ys).length := by
    simpa only [mapQ, List.length_map] using hy
  have hz' : (mapQ R.xs).length = (mapQ Q.ys).length := by
    rw [hx']; simpa only [mapQ, List.length_map] using hz
  have hpoint := evalR_le_of_aligned _ _ _ hs' hy' hz' (valuesLeF_imp hv)
  simpa only [ProfF.toD, ProfD.toBP, hx'] using hpoint

/-- **Aligned donor soundness.** A linear-size certificate supplies a
raw-density closed piece on the entire common profile domain. -/
theorem alignedDensity_valid {nR : ℕ} (raw : Fin nR → ProfF) (Q : ProfF) (i : Fin nR)
    (h : alignedDensityCheck (raw i) Q = true) :
    (ClosedPiece.rawDensity i).Valid (fun j => (raw j).toD.toBP) Q.toD.toBP
      Q.toD.toBP.lo Q.toD.toBP.hi := by
  have hpoint := alignedDensity_pointwise (raw i) Q h
  simp only [alignedDensityCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨hp, _⟩, _⟩, _⟩, hx⟩, _⟩ := h
  have hx' := sameKnotsF_imp hx
  rw [FQ.le_eq, decide_eq_true_eq] at hp
  simp only [ClosedPiece.Valid, ProfF.toD, ProfD.toBP]
  refine ⟨by exact_mod_cast hp, ?_, ?_, fun r _ _ => ?_⟩
  · rw [hx']
  · rw [hx']
  · exact hpoint r

#print axioms evalR_le_of_aligned
#print axioms alignedDensity_pointwise
#print axioms alignedDensity_valid

end DiagonalRamsey.JointGeometry
