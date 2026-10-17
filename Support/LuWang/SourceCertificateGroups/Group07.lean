import Support.LuWang.SourceCertificateLinks.Chunk0112
import Support.LuWang.SourceCertificateLinks.Chunk0113
import Support.LuWang.SourceCertificateLinks.Chunk0114
import Support.LuWang.SourceCertificateLinks.Chunk0115
import Support.LuWang.SourceCertificateLinks.Chunk0116
import Support.LuWang.SourceCertificateLinks.Chunk0117
import Support.LuWang.SourceCertificateLinks.Chunk0118
import Support.LuWang.SourceCertificateLinks.Chunk0119
import Support.LuWang.SourceCertificateLinks.Chunk0120
import Support.LuWang.SourceCertificateLinks.Chunk0121
import Support.LuWang.SourceCertificateLinks.Chunk0122
import Support.LuWang.SourceCertificateLinks.Chunk0123
import Support.LuWang.SourceCertificateLinks.Chunk0124
import Support.LuWang.SourceCertificateLinks.Chunk0125
import Support.LuWang.SourceCertificateLinks.Chunk0126
import Support.LuWang.SourceCertificateLinks.Chunk0127
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group07
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0112.cells ++ (LuWang.SourceCertificates.Chunk0113.cells ++ (LuWang.SourceCertificates.Chunk0114.cells ++ (LuWang.SourceCertificates.Chunk0115.cells ++ (LuWang.SourceCertificates.Chunk0116.cells ++ (LuWang.SourceCertificates.Chunk0117.cells ++ (LuWang.SourceCertificates.Chunk0118.cells ++ (LuWang.SourceCertificates.Chunk0119.cells ++ (LuWang.SourceCertificates.Chunk0120.cells ++ (LuWang.SourceCertificates.Chunk0121.cells ++ (LuWang.SourceCertificates.Chunk0122.cells ++ (LuWang.SourceCertificates.Chunk0123.cells ++ (LuWang.SourceCertificates.Chunk0124.cells ++ (LuWang.SourceCertificates.Chunk0125.cells ++ (LuWang.SourceCertificates.Chunk0126.cells ++ (LuWang.SourceCertificates.Chunk0127.cells)))))))))))))))

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificates.Chunk0112.all_certified, LuWang.SourceCertificates.Chunk0113.all_certified, LuWang.SourceCertificates.Chunk0114.all_certified, LuWang.SourceCertificates.Chunk0115.all_certified, LuWang.SourceCertificates.Chunk0116.all_certified, LuWang.SourceCertificates.Chunk0117.all_certified, LuWang.SourceCertificates.Chunk0118.all_certified, LuWang.SourceCertificates.Chunk0119.all_certified, LuWang.SourceCertificates.Chunk0120.all_certified, LuWang.SourceCertificates.Chunk0121.all_certified, LuWang.SourceCertificates.Chunk0122.all_certified, LuWang.SourceCertificates.Chunk0123.all_certified, LuWang.SourceCertificates.Chunk0124.all_certified, LuWang.SourceCertificates.Chunk0125.all_certified, LuWang.SourceCertificates.Chunk0126.all_certified, LuWang.SourceCertificates.Chunk0127.all_certified⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0112.all_linked, LuWang.SourceCertificateLinks.Chunk0113.all_linked, LuWang.SourceCertificateLinks.Chunk0114.all_linked, LuWang.SourceCertificateLinks.Chunk0115.all_linked, LuWang.SourceCertificateLinks.Chunk0116.all_linked, LuWang.SourceCertificateLinks.Chunk0117.all_linked, LuWang.SourceCertificateLinks.Chunk0118.all_linked, LuWang.SourceCertificateLinks.Chunk0119.all_linked, LuWang.SourceCertificateLinks.Chunk0120.all_linked, LuWang.SourceCertificateLinks.Chunk0121.all_linked, LuWang.SourceCertificateLinks.Chunk0122.all_linked, LuWang.SourceCertificateLinks.Chunk0123.all_linked, LuWang.SourceCertificateLinks.Chunk0124.all_linked, LuWang.SourceCertificateLinks.Chunk0125.all_linked, LuWang.SourceCertificateLinks.Chunk0126.all_linked, LuWang.SourceCertificateLinks.Chunk0127.all_linked⟩

theorem all_covered : covers (8474999999999999 / 50000000000000000 : ℚ) (20293749999999999 / 100000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0112.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0113.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0114.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0115.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0116.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0117.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0118.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0119.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0120.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0121.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0122.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0123.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0124.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0125.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0126.covered (LuWang.SourceCertificateLinks.Chunk0127.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group07
