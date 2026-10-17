import Support.LuWang.SourceCertificates.Chunk0144
import Support.LuWang.SourceCertificates.Chunk0145
import Support.LuWang.SourceCertificates.Chunk0146
import Support.LuWang.SourceCertificates.Chunk0147
import Support.LuWang.SourceCertificates.Chunk0148
import Support.LuWang.SourceCertificates.Chunk0149
import Support.LuWang.SourceCertificates.Chunk0150
import Support.LuWang.SourceCertificates.Chunk0151
import Support.LuWang.SourceCertificates.Chunk0152
import Support.LuWang.SourceCertificates.Chunk0153
import Support.LuWang.SourceCertificates.Chunk0154
import Support.LuWang.SourceCertificates.Chunk0155
import Support.LuWang.SourceCertificates.Chunk0156
import Support.LuWang.SourceCertificates.Chunk0157
import Support.LuWang.SourceCertificates.Chunk0158
import Support.LuWang.SourceCertificates.Chunk0159
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group09
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0144.cells ++ (LuWang.SourceCertificates.Chunk0145.cells ++ (LuWang.SourceCertificates.Chunk0146.cells ++ (LuWang.SourceCertificates.Chunk0147.cells ++ (LuWang.SourceCertificates.Chunk0148.cells ++ (LuWang.SourceCertificates.Chunk0149.cells ++ (LuWang.SourceCertificates.Chunk0150.cells ++ (LuWang.SourceCertificates.Chunk0151.cells ++ (LuWang.SourceCertificates.Chunk0152.cells ++ (LuWang.SourceCertificates.Chunk0153.cells ++ (LuWang.SourceCertificates.Chunk0154.cells ++ (LuWang.SourceCertificates.Chunk0155.cells ++ (LuWang.SourceCertificates.Chunk0156.cells ++ (LuWang.SourceCertificates.Chunk0157.cells ++ (LuWang.SourceCertificates.Chunk0158.cells ++ (LuWang.SourceCertificates.Chunk0159.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0144.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0145.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0146.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0147.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0148.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0149.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0150.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0151.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0152.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0153.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0154.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0155.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0156.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0157.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0158.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0159.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0144.all_linked, LuWang.SourceCertificateLinks.Chunk0145.all_linked, LuWang.SourceCertificateLinks.Chunk0146.all_linked, LuWang.SourceCertificateLinks.Chunk0147.all_linked, LuWang.SourceCertificateLinks.Chunk0148.all_linked, LuWang.SourceCertificateLinks.Chunk0149.all_linked, LuWang.SourceCertificateLinks.Chunk0150.all_linked, LuWang.SourceCertificateLinks.Chunk0151.all_linked, LuWang.SourceCertificateLinks.Chunk0152.all_linked, LuWang.SourceCertificateLinks.Chunk0153.all_linked, LuWang.SourceCertificateLinks.Chunk0154.all_linked, LuWang.SourceCertificateLinks.Chunk0155.all_linked, LuWang.SourceCertificateLinks.Chunk0156.all_linked, LuWang.SourceCertificateLinks.Chunk0157.all_linked, LuWang.SourceCertificateLinks.Chunk0158.all_linked, LuWang.SourceCertificateLinks.Chunk0159.all_linked⟩

theorem all_covered : covers (25637500000000001 / 100000000000000000 : ℚ) (6108750000000001 / 20000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0144.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0145.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0146.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0147.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0148.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0149.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0150.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0151.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0152.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0153.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0154.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0155.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0156.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0157.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0158.covered (LuWang.SourceCertificateLinks.Chunk0159.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group09
