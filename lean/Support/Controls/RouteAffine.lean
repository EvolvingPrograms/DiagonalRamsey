import Support.Published.Lemmas.DiagRamsey_SB_RouteG
import Support.Controls.Envelope

set_option autoImplicit false
namespace RamseyAnalytic
open DiagRamsey Set

theorem route_clamp_difference {n m : ℕ} (R : RouteNode n m)
    (hmono : StrictMono R.u) (j i : Fin R.M) {s : ℝ}
    (hs : s ∈ Icc (R.u j.castSucc) (R.u j.succ)) :
    R.clamp i s-R.clamp i (R.u j.castSucc) =
      if i = j then s-R.u j.castSucc else 0 := by
  rcases lt_trichotomy i j with hij | hij | hij
  · have hle : i.succ ≤ j.castSucc := by
      change i.val+1 ≤ j.val
      exact hij
    have hu := hmono.monotone hle
    have hus := hu.trans hs.1
    simp only [RouteNode.clamp, min_eq_right hus, min_eq_right hu,
      if_neg (ne_of_lt hij), sub_self]
  · subst i
    have hu : R.u j.castSucc ≤ R.u j.succ := hmono.monotone (by
      change j.val ≤ j.val+1
      omega)
    simp [RouteNode.clamp, min_eq_left hs.2, min_eq_left hu,
      max_eq_right (sub_nonneg.mpr hs.1)]
  · have hle : j.succ ≤ i.castSucc := by
      change j.val+1 ≤ i.val
      exact hij
    have hu := hmono.monotone hle
    have hsj : s ≤ R.u i.castSucc := hs.2.trans hu
    have hstart := hs.1.trans hsj
    have h₁ : min s (R.u i.succ)-R.u i.castSucc ≤ 0 :=
      sub_nonpos.mpr ((min_le_left _ _).trans hsj)
    have h₂ : min (R.u j.castSucc) (R.u i.succ)-R.u i.castSucc ≤ 0 :=
      sub_nonpos.mpr ((min_le_left _ _).trans hstart)
    simp only [RouteNode.clamp, max_eq_left h₁, max_eq_left h₂,
      if_neg (ne_of_gt hij), sub_self]

theorem route_affine_on_cell {n m : ℕ} (R : RouteNode n m)
    (hmono : StrictMono R.u) (j : Fin R.M) {s : ℝ}
    (hs : s ∈ Icc (R.u j.castSucc) (R.u j.succ)) :
    R.g s = R.g (R.u j.castSucc)+R.d j*(s-R.u j.castSucc) := by
  have hd : (∑ i : Fin R.M, R.d i*(R.clamp i s-R.clamp i (R.u j.castSucc))) =
      R.d j*(s-R.u j.castSucc) := by
    simp_rw [route_clamp_difference R hmono j _ hs]
    simp
  simp_rw [mul_sub] at hd
  rw [Finset.sum_sub_distrib] at hd
  rw [R.g_eq s, R.g_eq (R.u j.castSucc)]
  linarith

theorem affine_below_route {n m : ℕ} (R : RouteNode n m)
    (hmono : StrictMono R.u) (j : Fin R.M) {a b s v c : ℝ}
    (ha : a ∈ Icc (R.u j.castSucc) (R.u j.succ))
    (hb : b ∈ Icc (R.u j.castSucc) (R.u j.succ))
    (hs : s ∈ Icc a b) (hla : v*a+c < R.g a) (hlb : v*b+c < R.g b) :
    v*s+c < R.g s := by
  have hsc : s ∈ Icc (R.u j.castSucc) (R.u j.succ) :=
    ⟨ha.1.trans hs.1,hs.2.trans hb.2⟩
  rw [route_affine_on_cell R hmono j ha] at hla
  rw [route_affine_on_cell R hmono j hb] at hlb
  rw [route_affine_on_cell R hmono j hsc]
  have h := affine_le_max_endpoints (m := v-R.d j)
    (c := c-R.g (R.u j.castSucc)+R.d j*R.u j.castSucc) hs
  have hneg : max ((v-R.d j)*a+(c-R.g (R.u j.castSucc)+R.d j*R.u j.castSucc))
      ((v-R.d j)*b+(c-R.g (R.u j.castSucc)+R.d j*R.u j.castSucc)) < 0 :=
    max_lt (by nlinarith) (by nlinarith)
  linarith

#print axioms route_affine_on_cell
#print axioms affine_below_route
end RamseyAnalytic
