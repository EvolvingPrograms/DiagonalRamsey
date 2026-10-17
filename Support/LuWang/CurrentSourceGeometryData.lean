import Support.LuWang.CurrentSourceData
import Support.LuWang.PiecewiseSourceRational

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.CurrentSourceGeometry

def rationalData : RationalSourceData 2279 where
  knot := fun i => CurrentSourceData.knots[i.val]!
  value := fun i => CurrentSourceData.values[i.val]!
  derivative := fun i => CurrentSourceData.derivatives[i.val]!
  coefficients := fun i => (CurrentSourceData.pieces[i.val]?.getD ⟨0,0,[]⟩).coefficients

def metadataCheck (i : Fin 2279) : Bool :=
  decide ((CurrentSourceData.pieces[i.val]?.getD ⟨0,0,[]⟩).lo = rationalData.knot i.castSucc ∧
    (CurrentSourceData.pieces[i.val]?.getD ⟨0,0,[]⟩).hi = rationalData.knot i.succ)

theorem first_knot : rationalData.knot 0 = 0 := by decide +kernel
theorem last_knot : rationalData.knot (Fin.last 2279) = 1 := by decide +kernel
theorem pieces_length : CurrentSourceData.pieces.length = 2279 := by decide +kernel
theorem endpoint_derivative_positive : 0 < rationalData.derivative (Fin.last 2279) := by decide +kernel
theorem endpoint_order : rationalData.value (Fin.last 2279) ≤ 2 * rationalData.derivative (Fin.last 2279) := by decide +kernel

end LuWang.CurrentSourceGeometry
