import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0287
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(39950000000000001 / 40000000000000000 : ℚ), (999 / 1000 : ℚ)⟩
  branch := .left
  r := (19984926693313 / 50000000000000 : ℚ)
  w := (146970904771 / 125000000000 : ℚ)
  center := (79910000000000001 / 80000000000000000 : ℚ)
  supportValue := (5079596891170831 / 25000000000000000 : ℚ)
  supportSlope := (-1558107364001571 / 2500000000000000 : ℚ)
  oldCenter := (5079596891170831 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2277
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_14350 : Cell := { cellDefaults with
  r := (39985019239203 / 100000000000000 : ℚ)
  w := (11762362353087 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2276
  oldPieces := [piece_541]
}

noncomputable def cell_14351 : Cell := { cellDefaults with
  domain := ⟨(999 / 1000 : ℚ), (99925000000000003 / 100000000000000000 : ℚ)⟩
  center := (199825000000000003 / 200000000000000000 : ℚ)
  supportValue := (1016377311320323 / 5000000000000000 : ℚ)
  supportSlope := (-6232910918645781 / 10000000000000000 : ℚ)
  oldCenter := (1016377311320323 / 5000000000000000 : ℚ)
  oldPieces := [piece_541]
}

noncomputable def cell_14352 : Cell := { cellDefaults with
  domain := ⟨(99925000000000003 / 100000000000000000 : ℚ), (49975000000000003 / 50000000000000000 : ℚ)⟩
  center := (199875000000000009 / 200000000000000000 : ℚ)
  supportValue := (2538996319701681 / 12500000000000000 : ℚ)
  supportSlope := (-6227613820221441 / 10000000000000000 : ℚ)
  oldCenter := (2538996319701681 / 12500000000000000 : ℚ)
  oldPieces := [piece_541]
}

noncomputable def cell_14353 : Cell := { cellDefaults with
  domain := ⟨(49975000000000003 / 50000000000000000 : ℚ), (99975000000000003 / 100000000000000000 : ℚ)⟩
  r := (7990938767853 / 20000000000000 : ℚ)
  w := (11752977051061 / 10000000000000 : ℚ)
  center := (199925000000000009 / 200000000000000000 : ℚ)
  supportValue := (10160571120035919 / 50000000000000000 : ℚ)
  supportSlope := (-6228045392312113 / 10000000000000000 : ℚ)
  oldCenter := (10160571120035919 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2278
  oldPieces := [piece_541]
}

noncomputable def cell_14354 : Cell := { cellDefaults with
  domain := ⟨(99975000000000003 / 100000000000000000 : ℚ), (1 / 1 : ℚ)⟩
  r := (7990938767853 / 20000000000000 : ℚ)
  w := (11752977051061 / 10000000000000 : ℚ)
  center := (199975000000000003 / 200000000000000000 : ℚ)
  supportValue := (2538197290572021 / 12500000000000000 : ℚ)
  supportSlope := (-622326231767353 / 1000000000000000 : ℚ)
  oldCenter := (2538197290572021 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2278
  oldLo := (20249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_540, piece_541]
}

theorem check_14350 : cell_14350.check = true := by
  decide +kernel

theorem check_14351 : cell_14351.check = true := by
  decide +kernel

theorem check_14352 : cell_14352.check = true := by
  decide +kernel

theorem check_14353 : cell_14353.check = true := by
  decide +kernel

theorem check_14354 : cell_14354.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14350, cell_14351, cell_14352, cell_14353, cell_14354]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14350, check_14351, check_14352, check_14353, check_14354, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0287

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0287
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0287
open AnalyticBounds.ExpressionCertificate

theorem linked_14350 : Linked cell_14350 pieces := by
  refine ⟨piece_2276,piece_2276_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_14350,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_541_mem

theorem linked_14351 : Linked cell_14351 pieces := by
  refine ⟨piece_2277,piece_2277_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_14351,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_541_mem

theorem linked_14352 : Linked cell_14352 pieces := by
  refine ⟨piece_2277,piece_2277_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_14352,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_541_mem

theorem linked_14353 : Linked cell_14353 pieces := by
  refine ⟨piece_2278,piece_2278_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_14353,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_541_mem

theorem linked_14354 : Linked cell_14354 pieces := by
  refine ⟨piece_2278,piece_2278_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_14354,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_540_mem
    · exact piece_541_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0287.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0287.cells,List.forall_mem_cons]
  exact ⟨linked_14350, linked_14351, linked_14352, linked_14353, linked_14354, by simp⟩

theorem covered : covers (39950000000000001 / 40000000000000000 : ℚ) (1 / 1 : ℚ)
    (SourceCertificates.Chunk0287.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0287
