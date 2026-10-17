import S7_ParameterChoice.Source.Joint.FastRoute

/-! Linear prefix certificates for the clamped piecewise linear integral. -/
set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry
open DiagRamsey DiagRamsey.V5 DiagRamsey.SharpCert FQ

/-- A prefix table records one value per knot and the integral recurrence. -/
inductive IntegralPrefixes : List ℚ → List ℚ → List ℚ → Prop
  | last (u p : ℚ) : IntegralPrefixes [u] [] [p]
  | step (u v d p q : ℚ) (us ds ps : List ℚ)
      (recurrence : q = p + d * (v - u))
      (tail : IntegralPrefixes (v :: us) ds (q :: ps)) :
      IntegralPrefixes (u :: v :: us) (d :: ds) (p :: q :: ps)

theorem IntegralPrefixes.lengths {us ds ps : List ℚ} (h : IntegralPrefixes us ds ps) :
    us.length = ds.length + 1 ∧ ps.length = us.length := by
  induction h with
  | last => simp
  | step _ _ _ _ _ _ _ _ _ _ ih => simp_all

private theorem integral_zero_of_le : ∀ (us ds : List ℚ) (x : ℚ),
    (∀ u ∈ us, x ≤ u) → gLQ us ds x = 0
  | u :: v :: us, d :: ds, x, h => by
      have hv := h v (by simp)
      have hu := h u (by simp)
      have hz : max 0 (min x v - u) = 0 := by
        rw [min_eq_left hv, max_eq_left (by linarith)]
      simp only [gLQ, hz, mul_zero, zero_add]
      exact integral_zero_of_le (v :: us) ds x (fun a ha => h a (by simp_all))
  | [], _, _, _ => rfl
  | [_], _, _, _ => rfl
  | _ :: _ :: _, [], _, _ => rfl

private theorem getD_mem {xs : List ℚ} {j : ℕ} (hj : j < xs.length) :
    xs.getD j 0 ∈ xs := by
  simpa only [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hj,
    Option.getD_some] using List.getElem_mem hj

private theorem head_le_getD {u : ℚ} {us : List ℚ} {j : ℕ}
    (hs : (u :: us).Pairwise (· ≤ ·)) (hj : j < (u :: us).length) :
    u ≤ (u :: us).getD j 0 := by
  cases j with
  | zero => simp
  | succ j =>
    simp only [List.getD_cons_succ]
    exact (List.pairwise_cons.mp hs).1 _ (getD_mem (by simpa using hj))

/-- On the j-th cell, only its slope and the j-th prefix are needed.
The initial prefix may be arbitrary; it is subtracted from the result. -/
theorem IntegralPrefixes.eval {us ds ps : List ℚ} (h : IntegralPrefixes us ds ps)
    (hs : us.Pairwise (· ≤ ·)) (j : ℕ) (hj : j < ds.length) (x : ℚ)
    (hlo : us.getD j 0 ≤ x) (hhi : x ≤ us.getD (j + 1) 0) :
    gLQ us ds x = ps.getD j 0 - ps.headD 0 +
      ds.getD j 0 * (x - us.getD j 0) := by
  induction h generalizing j with
  | last u p => simp at hj
  | step u v d p q us ds ps hrec htail ih =>
    have hsort := (List.pairwise_cons.mp hs).2
    cases j with
    | zero =>
      simp only [List.getD_cons_zero, List.getD_cons_succ] at hlo hhi ⊢
      have hz : gLQ (v :: us) ds x = 0 := by
        apply integral_zero_of_le
        intro a ha
        rcases List.mem_cons.mp ha with rfl | ha
        · exact hhi
        · exact hhi.trans ((List.pairwise_cons.mp hsort).1 a ha)
      simp only [gLQ, min_eq_left hhi, max_eq_right (sub_nonneg.mpr hlo),
        hz, add_zero, List.headD_cons, sub_self, zero_add]
    | succ j =>
      have hj' : j < ds.length := by simpa using hj
      simp only [List.getD_cons_succ] at hlo hhi ⊢
      have hvx : v ≤ x :=
        (head_le_getD hsort (by have hlen := htail.lengths.1; simp only [List.length_cons] at hlen ⊢; omega)).trans hlo
      have huv : u ≤ v := (List.pairwise_cons.mp hs).1 v (by simp)
      rw [gLQ, min_eq_right hvx, max_eq_right (sub_nonneg.mpr huv),
        ih hsort j hj' hlo hhi]
      simp only [List.headD_cons]
      rw [hrec]
      ring

/-- Integer-fraction check of exactly the prefix recurrence and table lengths. -/
def integralPrefixesCheck : List FQ → List FQ → List FQ → Bool
  | [_], [], [_] => true
  | u :: v :: us, d :: ds, p :: q :: ps =>
      eq q (add p (mul d (sub v u))) && integralPrefixesCheck (v :: us) ds (q :: ps)
  | _, _, _ => false

theorem integralPrefixesCheck_sound : ∀ us ds ps : List FQ,
    integralPrefixesCheck us ds ps = true → IntegralPrefixes (mapQ us) (mapQ ds) (mapQ ps)
  | [u], [], [p], _ => IntegralPrefixes.last u.toQ p.toQ
  | u :: v :: us, d :: ds, p :: q :: ps, h => by
      simp only [integralPrefixesCheck, Bool.and_eq_true] at h
      apply IntegralPrefixes.step
      · simpa only [eq_eq, toQ_add, toQ_mul, toQ_sub, decide_eq_true_eq] using h.1
      · exact integralPrefixesCheck_sound _ _ _ h.2
  | [], _, _, h => by simp [integralPrefixesCheck] at h
  | [_], _ :: _, _, h => by simp [integralPrefixesCheck] at h
  | [_], [], [], h => by simp [integralPrefixesCheck] at h
  | [_], [], _ :: _ :: _, h => by simp [integralPrefixesCheck] at h
  | _ :: _ :: _, [], _, h => by simp [integralPrefixesCheck] at h
  | _ :: _ :: _, _ :: _, [], h => by simp [integralPrefixesCheck] at h
  | _ :: _ :: _, _ :: _, [_], h => by simp [integralPrefixesCheck] at h

/-- FQ transport of the generic cell law, with no repeated integral sums. -/
theorem gLF_eq_prefix (us ds ps : List FQ)
    (hc : integralPrefixesCheck us ds ps = true)
    (hs : (mapQ us).Pairwise (· ≤ ·)) (j : ℕ) (hj : j < (mapQ ds).length)
    (x : FQ) (hlo : (mapQ us).getD j 0 ≤ x.toQ)
    (hhi : x.toQ ≤ (mapQ us).getD (j + 1) 0) :
    (gLF us ds x).toQ = (mapQ ps).getD j 0 - (mapQ ps).headD 0 +
      (mapQ ds).getD j 0 * (x.toQ - (mapQ us).getD j 0) := by
  rw [gLF_eq]
  exact (integralPrefixesCheck_sound us ds ps hc).eval hs j hj x.toQ hlo hhi

/-- O(1) arithmetic from an already selected integral cell. -/
def integralPrefixValue (us ds ps : List FQ) (j : ℕ) (x : FQ) : FQ :=
  add (ps.getD j zero) (mul (ds.getD j zero) (sub x (us.getD j zero)))

private theorem sortedQ_pairwise : ∀ xs : List ℚ,
    PL.sortedQ xs = true → xs.Pairwise (· ≤ ·)
  | [], _ => by simp
  | u :: us, h => by
      apply List.pairwise_cons.mpr
      constructor
      · intro a ha
        simpa only [List.headD_cons] using
          (JointRecipes.sortedQ_bounds (u :: us) h a (List.mem_cons_of_mem u ha)).1
      · apply sortedQ_pairwise us
        cases us with
        | nil => rfl
        | cons v vs => simp only [PL.sortedQ, Bool.and_eq_true] at h; exact h.2

/-- Direct checked FQ adapter: table recurrence, zero origin and sorted knots
suffice to replace every full integral evaluation by one cell expression. -/
theorem gLF_eq_prefixValue (us ds ps : List FQ)
    (hc : integralPrefixesCheck us ds ps = true)
    (hzero : eq (ps.headD zero) zero = true) (hs : sortedF us = true)
    (j : ℕ) (hj : j < ds.length) (x : FQ)
    (hlo : le (us.getD j zero) x = true)
    (hhi : le x (us.getD (j + 1) zero) = true) :
    (gLF us ds x).toQ = (integralPrefixValue us ds ps j x).toQ := by
  have hsort : (mapQ us).Pairwise (· ≤ ·) :=
    sortedQ_pairwise _ (by rwa [← sortedF_eq])
  have h0 : (mapQ ps).headD 0 = 0 := by
    rw [mapQ_headD]
    simpa only [eq_eq, decide_eq_true_eq, toQ_zero] using hzero
  have h := gLF_eq_prefix us ds ps hc hsort j (by simpa only [mapQ, List.length_map] using hj)
    x (by simpa only [mapQ_getD, le_eq, decide_eq_true_eq] using hlo)
      (by simpa only [mapQ_getD, le_eq, decide_eq_true_eq] using hhi)
  simpa only [h0, sub_zero, mapQ_getD, integralPrefixValue,
    toQ_add, toQ_mul, toQ_sub] using h

#print axioms IntegralPrefixes.eval
#print axioms integralPrefixesCheck_sound
#print axioms gLF_eq_prefix
#print axioms gLF_eq_prefixValue
end DiagonalRamsey.JointGeometry
