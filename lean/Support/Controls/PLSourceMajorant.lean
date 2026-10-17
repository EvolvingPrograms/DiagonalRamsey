import Support.Published.Lemmas.DiagRamsey_PLCheck

set_option autoImplicit false
namespace RamseyAnalytic.PLSourceMajorant
open DiagRamsey

def check (rx ry bx by_ cuts : List ℚ) (A B η : ℚ) : Bool :=
  PL.sortedQ cuts && PL.posQ cuts && PL.noKnotQ rx cuts &&
    PL.noKnotReflQ bx cuts && cuts.all (fun t => decide
      (PL.evalQ rx ry t ≤ A+B*t-η*(1+t) ∧
       t*PL.evalQ bx by_ (1/t) ≤ A+B*t-η*(1+t)))

theorem sound {rx ry bx by_ cuts : List ℚ} {A B η lo hi : ℚ}
    (hc : check rx ry bx by_ cuts A B η = true)
    (hl : lo ∈ cuts.head?) (hh : hi ∈ cuts.getLast?)
    {t : ℝ} (htl : (lo : ℝ) ≤ t) (hth : t ≤ hi) :
    max (PL.evalR rx ry t) (t*PL.evalR bx by_ (1/t)) ≤
      (A : ℝ)+(B : ℝ)*t-(η : ℝ)*(1+t) := by
  simp only [check, Bool.and_eq_true, List.all_eq_true, decide_eq_true_eq] at hc
  obtain ⟨⟨⟨⟨hs, hp⟩, hr⟩, hb⟩, hv⟩ := hc
  have ha := PL.affineOnList_affine ((A : ℝ)-η) ((B : ℝ)-η) cuts
  have hred := ha.sub (PL.affineOnList_evalR rx ry cuts hs hr)
  have hblue := ha.sub (PL.affineOnList_evalR_refl bx by_ cuts hs hp hb)
  have hpts : ∀ q ∈ cuts,
      0 ≤ ((A : ℝ)-η)+((B : ℝ)-η)*q-PL.evalR rx ry q ∧
      0 ≤ ((A : ℝ)-η)+((B : ℝ)-η)*q-q*PL.evalR bx by_ (1/(q : ℝ)) := by
    intro q hq
    have h := hv q hq
    have h1 : (PL.evalQ rx ry q : ℝ) ≤
        (A : ℝ)+B*q-η*(1+(q : ℝ)) := by exact_mod_cast h.1
    have h2 : (q : ℝ)*(PL.evalQ bx by_ (1/q) : ℝ) ≤
        (A : ℝ)+B*q-η*(1+(q : ℝ)) := by exact_mod_cast h.2
    rw [PL.evalR_cast]
    have he : (1/(q : ℝ)) = ((1/q : ℚ) : ℝ) := by push_cast; rfl
    rw [he, PL.evalR_cast]
    constructor <;> linarith
  have hr' := PL.nonneg_of_list _ cuts hs hred
    (fun q hq => (hpts q hq).1) lo hl hi hh t htl hth
  have hb' := PL.nonneg_of_list _ cuts hs hblue
    (fun q hq => (hpts q hq).2) lo hl hi hh t htl hth
  exact max_le (by linarith) (by linarith)

#print axioms sound
end RamseyAnalytic.PLSourceMajorant
