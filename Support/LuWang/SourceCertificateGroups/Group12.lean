import Support.LuWang.SourceCertificateLinks.Chunk0192
import Support.LuWang.SourceCertificateLinks.Chunk0193
import Support.LuWang.SourceCertificateLinks.Chunk0194
import Support.LuWang.SourceCertificateLinks.Chunk0195
import Support.LuWang.SourceCertificateLinks.Chunk0196
import Support.LuWang.SourceCertificateLinks.Chunk0197
import Support.LuWang.SourceCertificateLinks.Chunk0198
import Support.LuWang.SourceCertificateLinks.Chunk0199
import Support.LuWang.SourceCertificateLinks.Chunk0200
import Support.LuWang.SourceCertificateLinks.Chunk0201
import Support.LuWang.SourceCertificateLinks.Chunk0202
import Support.LuWang.SourceCertificateLinks.Chunk0203
import Support.LuWang.SourceCertificateLinks.Chunk0204
import Support.LuWang.SourceCertificateLinks.Chunk0205
import Support.LuWang.SourceCertificateLinks.Chunk0206
import Support.LuWang.SourceCertificateLinks.Chunk0207
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group12
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0192.cells ++ (LuWang.SourceCertificates.Chunk0193.cells ++ (LuWang.SourceCertificates.Chunk0194.cells ++ (LuWang.SourceCertificates.Chunk0195.cells ++ (LuWang.SourceCertificates.Chunk0196.cells ++ (LuWang.SourceCertificates.Chunk0197.cells ++ (LuWang.SourceCertificates.Chunk0198.cells ++ (LuWang.SourceCertificates.Chunk0199.cells ++ (LuWang.SourceCertificates.Chunk0200.cells ++ (LuWang.SourceCertificates.Chunk0201.cells ++ (LuWang.SourceCertificates.Chunk0202.cells ++ (LuWang.SourceCertificates.Chunk0203.cells ++ (LuWang.SourceCertificates.Chunk0204.cells ++ (LuWang.SourceCertificates.Chunk0205.cells ++ (LuWang.SourceCertificates.Chunk0206.cells ++ (LuWang.SourceCertificates.Chunk0207.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0192.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0193.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0194.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0195.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0196.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0197.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0198.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0199.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0200.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0201.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0202.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0203.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0204.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0205.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0206.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0207.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0192.all_linked, LuWang.SourceCertificateLinks.Chunk0193.all_linked, LuWang.SourceCertificateLinks.Chunk0194.all_linked, LuWang.SourceCertificateLinks.Chunk0195.all_linked, LuWang.SourceCertificateLinks.Chunk0196.all_linked, LuWang.SourceCertificateLinks.Chunk0197.all_linked, LuWang.SourceCertificateLinks.Chunk0198.all_linked, LuWang.SourceCertificateLinks.Chunk0199.all_linked, LuWang.SourceCertificateLinks.Chunk0200.all_linked, LuWang.SourceCertificateLinks.Chunk0201.all_linked, LuWang.SourceCertificateLinks.Chunk0202.all_linked, LuWang.SourceCertificateLinks.Chunk0203.all_linked, LuWang.SourceCertificateLinks.Chunk0204.all_linked, LuWang.SourceCertificateLinks.Chunk0205.all_linked, LuWang.SourceCertificateLinks.Chunk0206.all_linked, LuWang.SourceCertificateLinks.Chunk0207.all_linked⟩

theorem all_covered : covers (40531250000000003 / 100000000000000000 : ℚ) (47550000000000003 / 100000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0192.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0193.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0194.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0195.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0196.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0197.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0198.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0199.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0200.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0201.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0202.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0203.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0204.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0205.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0206.covered (LuWang.SourceCertificateLinks.Chunk0207.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group12
