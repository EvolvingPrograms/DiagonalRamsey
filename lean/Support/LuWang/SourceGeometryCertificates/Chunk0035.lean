import Support.LuWang.CurrentSourceGeometryData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceGeometryCertificates.Chunk0035
open CurrentSourceGeometry

theorem checked : ∀ i : Fin 32,
    let j : Fin 2279 := ⟨i.val + 1120, by omega⟩
    rationalData.exactCheck j = true ∧ rationalData.shapeCheck j = true ∧ metadataCheck j = true := by
  decide +kernel

#print axioms checked
end LuWang.SourceGeometryCertificates.Chunk0035
