import Support.LuWang.SourceCertificates.Chunk0287
import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink

set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
