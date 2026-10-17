import Support.Published.Lemmas.DiagRamsey_SE_Conc

/-!
# 2.3 Concentration in a maximal configuration
We expose the checked column lower bound, cropping, weighted discrepancy, and
row $L^1$ estimates with their original hypotheses. Markov's inequality then
selects good rows; no unconditional concentration premise is introduced.
-/

set_option autoImplicit false

namespace DiagonalRamsey.Inherited

export DiagRamsey.ClosureEnv (wgp_col_lower)
export DiagRamsey.SE (crop rho_bound L1_pi L1_V m_point markov_card card_good)

#print axioms wgp_col_lower
#print axioms crop
#print axioms rho_bound
#print axioms L1_pi
#print axioms L1_V
#print axioms m_point
#print axioms markov_card
#print axioms card_good

end DiagonalRamsey.Inherited
