import Support.LuWang.SourceCertificates.Chunk0064
import Support.LuWang.SourceCertificates.Chunk0065
import Support.LuWang.SourceCertificates.Chunk0066
import Support.LuWang.SourceCertificates.Chunk0067
import Support.LuWang.SourceCertificates.Chunk0068
import Support.LuWang.SourceCertificates.Chunk0069
import Support.LuWang.SourceCertificates.Chunk0070
import Support.LuWang.SourceCertificates.Chunk0071
import Support.LuWang.SourceCertificates.Chunk0072
import Support.LuWang.SourceCertificates.Chunk0073
import Support.LuWang.SourceCertificates.Chunk0074
import Support.LuWang.SourceCertificates.Chunk0075
import Support.LuWang.SourceCertificates.Chunk0076
import Support.LuWang.SourceCertificates.Chunk0077
import Support.LuWang.SourceCertificates.Chunk0078
import Support.LuWang.SourceCertificates.Chunk0079
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group04
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0064.cells ++ (LuWang.SourceCertificates.Chunk0065.cells ++ (LuWang.SourceCertificates.Chunk0066.cells ++ (LuWang.SourceCertificates.Chunk0067.cells ++ (LuWang.SourceCertificates.Chunk0068.cells ++ (LuWang.SourceCertificates.Chunk0069.cells ++ (LuWang.SourceCertificates.Chunk0070.cells ++ (LuWang.SourceCertificates.Chunk0071.cells ++ (LuWang.SourceCertificates.Chunk0072.cells ++ (LuWang.SourceCertificates.Chunk0073.cells ++ (LuWang.SourceCertificates.Chunk0074.cells ++ (LuWang.SourceCertificates.Chunk0075.cells ++ (LuWang.SourceCertificates.Chunk0076.cells ++ (LuWang.SourceCertificates.Chunk0077.cells ++ (LuWang.SourceCertificates.Chunk0078.cells ++ (LuWang.SourceCertificates.Chunk0079.cells)))))))))))))))

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells,List.forall_mem_append]
  exact ⟨(fun c hc => SourceCertificateFamily.of_checked (List.all_eq_true.mp LuWang.SourceCertificates.Chunk0064.all_checked c hc)), LuWang.SourceCertificates.Chunk0065.all_certified, LuWang.SourceCertificates.Chunk0066.all_certified, LuWang.SourceCertificates.Chunk0067.all_certified, LuWang.SourceCertificates.Chunk0068.all_certified, LuWang.SourceCertificates.Chunk0069.all_certified, LuWang.SourceCertificates.Chunk0070.all_certified, LuWang.SourceCertificates.Chunk0071.all_certified, LuWang.SourceCertificates.Chunk0072.all_certified, LuWang.SourceCertificates.Chunk0073.all_certified, LuWang.SourceCertificates.Chunk0074.all_certified, LuWang.SourceCertificates.Chunk0075.all_certified, LuWang.SourceCertificates.Chunk0076.all_certified, LuWang.SourceCertificates.Chunk0077.all_certified, LuWang.SourceCertificates.Chunk0078.all_certified, LuWang.SourceCertificates.Chunk0079.all_certified⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0064.all_linked, LuWang.SourceCertificateLinks.Chunk0065.all_linked, LuWang.SourceCertificateLinks.Chunk0066.all_linked, LuWang.SourceCertificateLinks.Chunk0067.all_linked, LuWang.SourceCertificateLinks.Chunk0068.all_linked, LuWang.SourceCertificateLinks.Chunk0069.all_linked, LuWang.SourceCertificateLinks.Chunk0070.all_linked, LuWang.SourceCertificateLinks.Chunk0071.all_linked, LuWang.SourceCertificateLinks.Chunk0072.all_linked, LuWang.SourceCertificateLinks.Chunk0073.all_linked, LuWang.SourceCertificateLinks.Chunk0074.all_linked, LuWang.SourceCertificateLinks.Chunk0075.all_linked, LuWang.SourceCertificateLinks.Chunk0076.all_linked, LuWang.SourceCertificateLinks.Chunk0077.all_linked, LuWang.SourceCertificateLinks.Chunk0078.all_linked, LuWang.SourceCertificateLinks.Chunk0079.all_linked⟩

theorem all_covered : covers (24554687500000001 / 250000000000000000 : ℚ) (11950000000000001 / 100000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0064.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0065.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0066.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0067.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0068.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0069.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0070.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0071.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0072.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0073.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0074.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0075.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0076.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0077.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0078.covered (LuWang.SourceCertificateLinks.Chunk0079.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group04
