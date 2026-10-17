import Support.LuWang.SourceCertificateLinks.Chunk0080
import Support.LuWang.SourceCertificateLinks.Chunk0081
import Support.LuWang.SourceCertificateLinks.Chunk0082
import Support.LuWang.SourceCertificateLinks.Chunk0083
import Support.LuWang.SourceCertificateLinks.Chunk0084
import Support.LuWang.SourceCertificateLinks.Chunk0085
import Support.LuWang.SourceCertificateLinks.Chunk0086
import Support.LuWang.SourceCertificateLinks.Chunk0087
import Support.LuWang.SourceCertificateLinks.Chunk0088
import Support.LuWang.SourceCertificateLinks.Chunk0089
import Support.LuWang.SourceCertificateLinks.Chunk0090
import Support.LuWang.SourceCertificateLinks.Chunk0091
import Support.LuWang.SourceCertificateLinks.Chunk0092
import Support.LuWang.SourceCertificateLinks.Chunk0093
import Support.LuWang.SourceCertificateLinks.Chunk0094
import Support.LuWang.SourceCertificateLinks.Chunk0095
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group05
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0080.cells ++ (LuWang.SourceCertificates.Chunk0081.cells ++ (LuWang.SourceCertificates.Chunk0082.cells ++ (LuWang.SourceCertificates.Chunk0083.cells ++ (LuWang.SourceCertificates.Chunk0084.cells ++ (LuWang.SourceCertificates.Chunk0085.cells ++ (LuWang.SourceCertificates.Chunk0086.cells ++ (LuWang.SourceCertificates.Chunk0087.cells ++ (LuWang.SourceCertificates.Chunk0088.cells ++ (LuWang.SourceCertificates.Chunk0089.cells ++ (LuWang.SourceCertificates.Chunk0090.cells ++ (LuWang.SourceCertificates.Chunk0091.cells ++ (LuWang.SourceCertificates.Chunk0092.cells ++ (LuWang.SourceCertificates.Chunk0093.cells ++ (LuWang.SourceCertificates.Chunk0094.cells ++ (LuWang.SourceCertificates.Chunk0095.cells)))))))))))))))

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificates.Chunk0080.all_certified, LuWang.SourceCertificates.Chunk0081.all_certified, LuWang.SourceCertificates.Chunk0082.all_certified, LuWang.SourceCertificates.Chunk0083.all_certified, LuWang.SourceCertificates.Chunk0084.all_certified, LuWang.SourceCertificates.Chunk0085.all_certified, LuWang.SourceCertificates.Chunk0086.all_certified, LuWang.SourceCertificates.Chunk0087.all_certified, LuWang.SourceCertificates.Chunk0088.all_certified, LuWang.SourceCertificates.Chunk0089.all_certified, LuWang.SourceCertificates.Chunk0090.all_certified, LuWang.SourceCertificates.Chunk0091.all_certified, LuWang.SourceCertificates.Chunk0092.all_certified, LuWang.SourceCertificates.Chunk0093.all_certified, LuWang.SourceCertificates.Chunk0094.all_certified, LuWang.SourceCertificates.Chunk0095.all_certified⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0080.all_linked, LuWang.SourceCertificateLinks.Chunk0081.all_linked, LuWang.SourceCertificateLinks.Chunk0082.all_linked, LuWang.SourceCertificateLinks.Chunk0083.all_linked, LuWang.SourceCertificateLinks.Chunk0084.all_linked, LuWang.SourceCertificateLinks.Chunk0085.all_linked, LuWang.SourceCertificateLinks.Chunk0086.all_linked, LuWang.SourceCertificateLinks.Chunk0087.all_linked, LuWang.SourceCertificateLinks.Chunk0088.all_linked, LuWang.SourceCertificateLinks.Chunk0089.all_linked, LuWang.SourceCertificateLinks.Chunk0090.all_linked, LuWang.SourceCertificateLinks.Chunk0091.all_linked, LuWang.SourceCertificateLinks.Chunk0092.all_linked, LuWang.SourceCertificateLinks.Chunk0093.all_linked, LuWang.SourceCertificateLinks.Chunk0094.all_linked, LuWang.SourceCertificateLinks.Chunk0095.all_linked⟩

theorem all_covered : covers (11950000000000001 / 100000000000000000 : ℚ) (14443749999999999 / 100000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0080.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0081.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0082.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0083.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0084.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0085.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0086.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0087.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0088.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0089.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0090.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0091.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0092.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0093.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0094.covered (LuWang.SourceCertificateLinks.Chunk0095.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group05
