import Support.LuWang.CurrentSourceGeometryData

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceGeometryCertificates.Chunk0071
open CurrentSourceGeometry

theorem checked : ∀ i : Fin 7,
    let j : Fin 2279 := ⟨i.val + 2272, by omega⟩
    rationalData.exactCheck j = true ∧ rationalData.shapeCheck j = true ∧ metadataCheck j = true := by
  intro i
  fin_cases i <;> decide +kernel

#print axioms checked
end LuWang.SourceGeometryCertificates.Chunk0071
