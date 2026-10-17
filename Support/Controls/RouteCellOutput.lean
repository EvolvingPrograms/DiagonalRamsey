import Support.Controls.RouteCertificate
import Support.Controls.RouteMajorant

set_option autoImplicit false
namespace RamseyAnalytic.RouteCellOutput
open Set DiagRamsey RouteCertificate

def heightQ {M : ℕ} (D : Data M) (j : Fin M) (r : ℚ) : ℚ :=
  D.H j.castSucc+D.d j*(r-D.u j.castSucc)
def upperQ {M : ℕ} (D : Data M) (C : RetainedControl.Data)
    (a b : ℚ) (j : Fin M) (r : ℚ) : ℚ :=
  D.ε+max (heightQ D j r)
    ((a+D.u 0*b+(r-D.u 0)*(C.B+C.slack)+C.w*(heightQ D j r-D.H 0))/(1+C.w))

theorem endpoint {M n : ℕ} {D : Data M} {C : RetainedControl.Data}
    (hc : Checks D C) (i : Fin n) (j : Fin M) {a b r m c : ℚ}
    (hξ : 0 < C.ξ) (hν : 0 < C.ν) (hw : 0 ≤ C.w)
    (hcoeff : LeafMajorant.check C a b = true)
    (hr : D.u j.castSucc ≤ r ∧ r ≤ D.u j.succ)
    (hout : upperQ D C a b j r ≤ m*r+c) :
    (route D C i).out (r : ℝ) ≤ (m : ℝ)*r+c := by
  have hθ : 0 ≤ (route D C i).θ := by
    change (0 : ℝ) ≤ (D.u 0 : ℝ)
    exact_mod_cast hc.2.2.2.1.le
  have h := RouteMajorant.retained_bound (route D C i) C i rfl hξ hν hw hcoeff hθ (r : ℝ)
  have hg := RouteCertificate.height hc i j
    (r := (r : ℝ)) ⟨by exact_mod_cast hr.1, by exact_mod_cast hr.2⟩
  have he : (route D C i).g (r : ℝ) = (heightQ D j r : ℝ) := by
    rw [hg]
    simp only [heightQ, Rat.cast_add, Rat.cast_mul, Rat.cast_sub]
  rw [he] at h
  have hu : (route D C i).out (r : ℝ) ≤ (upperQ D C a b j r : ℝ) := by
    convert h using 1
    simp only [upperQ, Rat.cast_add, Rat.cast_mul, Rat.cast_sub, Rat.cast_div,
      Rat.cast_one, Rat.cast_max, route, RouteNode.θ]
    rfl
  have hh := (Rat.cast_le (K := ℝ)).mpr hout
  push_cast at hh
  exact hu.trans hh

theorem bound {M n : ℕ} {D : Data M} {C : RetainedControl.Data}
    (hc : Checks D C) (i : Fin n) (j : Fin M) {a b lo hi m c : ℚ}
    (hξ : 0 < C.ξ) (hν : 0 < C.ν) (hw : 0 ≤ C.w)
    (hcoeff : LeafMajorant.check C a b = true)
    (hdom : D.u j.castSucc ≤ lo ∧ lo ≤ hi ∧ hi ≤ D.u j.succ)
    (hleft : upperQ D C a b j lo ≤ m*lo+c)
    (hright : upperQ D C a b j hi ≤ m*hi+c)
    {r : ℝ} (hr : r ∈ Icc (lo : ℝ) (hi : ℝ)) :
    (route D C i).out r ≤ (m : ℝ)*r+c := by
  have hl : (lo : ℝ) ∈ Icc (D.u j.castSucc : ℝ) (D.u j.succ : ℝ) :=
    ⟨by exact_mod_cast hdom.1, by exact_mod_cast hdom.2.1.trans hdom.2.2⟩
  have hh : (hi : ℝ) ∈ Icc (D.u j.castSucc : ℝ) (D.u j.succ : ℝ) :=
    ⟨by exact_mod_cast hdom.1.trans hdom.2.1, by exact_mod_cast hdom.2.2⟩
  exact route_out_le_on_cell (route D C i) (RouteCertificate.strict hc i) j hl hh hr
    (endpoint hc i j hξ hν hw hcoeff ⟨hdom.1,hdom.2.1.trans hdom.2.2⟩ hleft)
    (endpoint hc i j hξ hν hw hcoeff ⟨hdom.1.trans hdom.2.1,hdom.2.2⟩ hright)

theorem relative {M n : ℕ} {D : Data M} {C : RetainedControl.Data}
    (hc : Checks D C) (i : Fin n) (j : Fin M) {a b lo hi m c : ℚ}
    {A B : Fin n → ℝ}
    (hv : RelValid A B (route D C i).p (route D C i).θ (route D C i).ω (route D C i).out)
    (hξ : 0 < C.ξ) (hν : 0 < C.ν) (hw : 0 ≤ C.w)
    (hcoeff : LeafMajorant.check C a b = true)
    (hdom : D.u j.castSucc ≤ lo ∧ lo ≤ hi ∧ hi ≤ D.u j.succ)
    (hleft : upperQ D C a b j lo ≤ m*lo+c)
    (hright : upperQ D C a b j hi ≤ m*hi+c) :
    RelValid A B (D.p : ℝ) lo hi (fun r => (m : ℝ)*r+c) := by
  apply ProfileAssembly.finite_cover (ι := Unit)
    (fun _ => (route D C i).p) (fun _ => (route D C i).θ)
    (fun _ => (route D C i).ω) (fun _ => (route D C i).out)
    (fun _ => hv) (fun _ => le_rfl)
  intro r hr
  refine ⟨(), ⟨?_, ?_⟩, bound hc i j hξ hν hw hcoeff hdom hleft hright hr⟩
  · have hm := (RouteCertificate.strict hc i).monotone (show (0 : Fin (M+1)) ≤ j.castSucc from Fin.zero_le _)
    have hl : (D.u j.castSucc : ℝ) ≤ (lo : ℝ) := by exact_mod_cast hdom.1
    exact hm.trans (hl.trans hr.1)
  · have hm := (RouteCertificate.strict hc i).monotone (show j.succ ≤ Fin.last M from Fin.le_last _)
    have hh : (hi : ℝ) ≤ (D.u j.succ : ℝ) := by exact_mod_cast hdom.2.2
    exact hr.2.trans (hh.trans hm)

#print axioms bound
#print axioms relative
end RamseyAnalytic.RouteCellOutput
