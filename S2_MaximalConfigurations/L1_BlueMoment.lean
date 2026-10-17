import S1_Definitions.L1_WeightedConfigurations
import Support.Published.Lemmas.DiagRamsey_SE_GraphRows

/-!
# 2.1 Blue failure
For positive column excesses, the normalized weights sum to one. Sharp blue
failure gives $\mathbb E_\nu(1+Z)_+^s<U(q)$; the existing row reduction also
retains the shifted-red constraint with all its original hypotheses.
-/

set_option autoImplicit false

namespace DiagonalRamsey.Inherited

export DiagRamsey.SE (blue_lt row_RB row_E_le row_q0 nu_nonneg nu_sum mr_nonneg mr_le_one)

#print axioms blue_lt
#print axioms row_RB

end DiagonalRamsey.Inherited
