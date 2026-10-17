import Support.Published.Definitions.Def_DiagRamsey_WeightedHost

/-!
# 1.1 Weighted configurations
We reuse the finite graph definitions of `DiagRamsey`: column density $g_y$,
shifted moment $H=(\mathbb E(g_y-c)_+^s)^{1/s}$, and potential
$\Phi=|X|^w|Y|H^r$. Row/column maximality means no nonempty restriction of
either reservoir increases $\Phi$. Blue and shifted-red failure retain their
original division-free definitions; no new graph model is substituted.
-/

namespace DiagonalRamsey.Weighted

export DiagRamsey (redDensity colDensity rowDensity graphNbhd graphFrac momentNorm
  potential RowColMaximal colMomentSum SharpBlueFailure SharpRedFailure)

end DiagonalRamsey.Weighted
