import S4_ScalarOptimization.L1_FeasiblePairs
import S4_ScalarOptimization.L9_AffineEnvelope

/-!
# 4.10 Hinge control
A finite affine hinge majorant supplies the continuous ordered majorant
required by the local graph alternative.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey

/-- **Hinge control.** Pointwise coverage and a negative adjacent-exponential
sum turn a finite ordered family of lines into a complementary envelope.
The feasible witness is retained explicitly for the graph argument. -/
theorem complementEnvelope_of_hinge {p μ w β x : ℝ}
    (first : AffineLine) (rest : List AffineLine)
    (hne : (complementDegrees p μ w β x).Nonempty)
    (hfirst : 0 ≤ first.slope)
    (hslopes : (first :: rest).IsChain (fun l m => l.slope < m.slope))
    (hcover : ∀ u ∈ Set.Ioc (0 : ℝ) 1, ∀ q ∈ complementDegrees p μ w β x,
      q * certM p μ w β x q + w * q * (1 + Real.log u) ≤
        affineHingeMajorant first rest (Real.log u))
    (hnegative : (rest.getLastD first).intercept - (rest.getLastD first).slope +
      affineExponentialSum first rest < 0) : ComplementEnvelope p μ w β x := by
  refine ⟨hne, (fun u => affineHingeMajorant first rest (Real.log u)), ?_, ?_,
    intervalIntegrable_affineHingeMajorant first rest 0 1, hcover, ?_⟩
  · apply (continuous_affineHingeMajorant first rest).comp_continuousOn
    exact Real.continuousOn_log.mono (fun _ hu => ne_of_gt hu.1)
  · intro u hu v hv huv
    apply monotone_affineHingeMajorant first rest hfirst hslopes
    exact Real.log_le_log hu.1 huv
  · exact (integral_affineHingeMajorant_le first rest hslopes).trans_lt hnegative

#print axioms complementEnvelope_of_hinge

end DiagonalRamsey
