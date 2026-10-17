import Support.LuWang.SourceCertificates.Chunk0096
import Support.LuWang.SourceCertificates.Chunk0097
import Support.LuWang.SourceCertificates.Chunk0098
import Support.LuWang.SourceCertificates.Chunk0099
import Support.LuWang.SourceCertificates.Chunk0100
import Support.LuWang.SourceCertificates.Chunk0101
import Support.LuWang.SourceCertificates.Chunk0102
import Support.LuWang.SourceCertificates.Chunk0103
import Support.LuWang.SourceCertificates.Chunk0104
import Support.LuWang.SourceCertificates.Chunk0105
import Support.LuWang.SourceCertificates.Chunk0106
import Support.LuWang.SourceCertificates.Chunk0107
import Support.LuWang.SourceCertificates.Chunk0108
import Support.LuWang.SourceCertificates.Chunk0109
import Support.LuWang.SourceCertificates.Chunk0110
import Support.LuWang.SourceCertificates.Chunk0111
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group06
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0096.cells ++ (LuWang.SourceCertificates.Chunk0097.cells ++ (LuWang.SourceCertificates.Chunk0098.cells ++ (LuWang.SourceCertificates.Chunk0099.cells ++ (LuWang.SourceCertificates.Chunk0100.cells ++ (LuWang.SourceCertificates.Chunk0101.cells ++ (LuWang.SourceCertificates.Chunk0102.cells ++ (LuWang.SourceCertificates.Chunk0103.cells ++ (LuWang.SourceCertificates.Chunk0104.cells ++ (LuWang.SourceCertificates.Chunk0105.cells ++ (LuWang.SourceCertificates.Chunk0106.cells ++ (LuWang.SourceCertificates.Chunk0107.cells ++ (LuWang.SourceCertificates.Chunk0108.cells ++ (LuWang.SourceCertificates.Chunk0109.cells ++ (LuWang.SourceCertificates.Chunk0110.cells ++ (LuWang.SourceCertificates.Chunk0111.cells)))))))))))))))

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificates.Chunk0096.all_certified, LuWang.SourceCertificates.Chunk0097.all_certified, LuWang.SourceCertificates.Chunk0098.all_certified, LuWang.SourceCertificates.Chunk0099.all_certified, LuWang.SourceCertificates.Chunk0100.all_certified, LuWang.SourceCertificates.Chunk0101.all_certified, LuWang.SourceCertificates.Chunk0102.all_certified, LuWang.SourceCertificates.Chunk0103.all_certified, LuWang.SourceCertificates.Chunk0104.all_certified, LuWang.SourceCertificates.Chunk0105.all_certified, LuWang.SourceCertificates.Chunk0106.all_certified, LuWang.SourceCertificates.Chunk0107.all_certified, LuWang.SourceCertificates.Chunk0108.all_certified, LuWang.SourceCertificates.Chunk0109.all_certified, LuWang.SourceCertificates.Chunk0110.all_certified, LuWang.SourceCertificates.Chunk0111.all_certified⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0096.all_linked, LuWang.SourceCertificateLinks.Chunk0097.all_linked, LuWang.SourceCertificateLinks.Chunk0098.all_linked, LuWang.SourceCertificateLinks.Chunk0099.all_linked, LuWang.SourceCertificateLinks.Chunk0100.all_linked, LuWang.SourceCertificateLinks.Chunk0101.all_linked, LuWang.SourceCertificateLinks.Chunk0102.all_linked, LuWang.SourceCertificateLinks.Chunk0103.all_linked, LuWang.SourceCertificateLinks.Chunk0104.all_linked, LuWang.SourceCertificateLinks.Chunk0105.all_linked, LuWang.SourceCertificateLinks.Chunk0106.all_linked, LuWang.SourceCertificateLinks.Chunk0107.all_linked, LuWang.SourceCertificateLinks.Chunk0108.all_linked, LuWang.SourceCertificateLinks.Chunk0109.all_linked, LuWang.SourceCertificateLinks.Chunk0110.all_linked, LuWang.SourceCertificateLinks.Chunk0111.all_linked⟩

theorem all_covered : covers (14443749999999999 / 100000000000000000 : ℚ) (8474999999999999 / 50000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0096.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0097.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0098.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0099.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0100.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0101.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0102.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0103.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0104.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0105.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0106.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0107.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0108.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0109.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0110.covered (LuWang.SourceCertificateLinks.Chunk0111.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group06
