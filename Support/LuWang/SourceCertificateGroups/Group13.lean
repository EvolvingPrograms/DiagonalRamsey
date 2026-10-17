import Support.LuWang.SourceCertificateLinks.Chunk0208
import Support.LuWang.SourceCertificateLinks.Chunk0209
import Support.LuWang.SourceCertificateLinks.Chunk0210
import Support.LuWang.SourceCertificateLinks.Chunk0211
import Support.LuWang.SourceCertificateLinks.Chunk0212
import Support.LuWang.SourceCertificateLinks.Chunk0213
import Support.LuWang.SourceCertificateLinks.Chunk0214
import Support.LuWang.SourceCertificateLinks.Chunk0215
import Support.LuWang.SourceCertificateLinks.Chunk0216
import Support.LuWang.SourceCertificateLinks.Chunk0217
import Support.LuWang.SourceCertificateLinks.Chunk0218
import Support.LuWang.SourceCertificateLinks.Chunk0219
import Support.LuWang.SourceCertificateLinks.Chunk0220
import Support.LuWang.SourceCertificateLinks.Chunk0221
import Support.LuWang.SourceCertificateLinks.Chunk0222
import Support.LuWang.SourceCertificateLinks.Chunk0223
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group13
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0208.cells ++ (LuWang.SourceCertificates.Chunk0209.cells ++ (LuWang.SourceCertificates.Chunk0210.cells ++ (LuWang.SourceCertificates.Chunk0211.cells ++ (LuWang.SourceCertificates.Chunk0212.cells ++ (LuWang.SourceCertificates.Chunk0213.cells ++ (LuWang.SourceCertificates.Chunk0214.cells ++ (LuWang.SourceCertificates.Chunk0215.cells ++ (LuWang.SourceCertificates.Chunk0216.cells ++ (LuWang.SourceCertificates.Chunk0217.cells ++ (LuWang.SourceCertificates.Chunk0218.cells ++ (LuWang.SourceCertificates.Chunk0219.cells ++ (LuWang.SourceCertificates.Chunk0220.cells ++ (LuWang.SourceCertificates.Chunk0221.cells ++ (LuWang.SourceCertificates.Chunk0222.cells ++ (LuWang.SourceCertificates.Chunk0223.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0208.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0209.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0210.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0211.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0212.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0213.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0214.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0215.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0216.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0217.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0218.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0219.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0220.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0221.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0222.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0223.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0208.all_linked, LuWang.SourceCertificateLinks.Chunk0209.all_linked, LuWang.SourceCertificateLinks.Chunk0210.all_linked, LuWang.SourceCertificateLinks.Chunk0211.all_linked, LuWang.SourceCertificateLinks.Chunk0212.all_linked, LuWang.SourceCertificateLinks.Chunk0213.all_linked, LuWang.SourceCertificateLinks.Chunk0214.all_linked, LuWang.SourceCertificateLinks.Chunk0215.all_linked, LuWang.SourceCertificateLinks.Chunk0216.all_linked, LuWang.SourceCertificateLinks.Chunk0217.all_linked, LuWang.SourceCertificateLinks.Chunk0218.all_linked, LuWang.SourceCertificateLinks.Chunk0219.all_linked, LuWang.SourceCertificateLinks.Chunk0220.all_linked, LuWang.SourceCertificateLinks.Chunk0221.all_linked, LuWang.SourceCertificateLinks.Chunk0222.all_linked, LuWang.SourceCertificateLinks.Chunk0223.all_linked⟩

theorem all_covered : covers (47550000000000003 / 100000000000000000 : ℚ) (14343750000000001 / 25000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0208.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0209.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0210.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0211.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0212.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0213.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0214.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0215.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0216.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0217.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0218.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0219.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0220.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0221.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0222.covered (LuWang.SourceCertificateLinks.Chunk0223.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group13
