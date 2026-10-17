import Support.LuWang.SourceCertificates.Chunk0160
import Support.LuWang.SourceCertificates.Chunk0161
import Support.LuWang.SourceCertificates.Chunk0162
import Support.LuWang.SourceCertificates.Chunk0163
import Support.LuWang.SourceCertificates.Chunk0164
import Support.LuWang.SourceCertificates.Chunk0165
import Support.LuWang.SourceCertificates.Chunk0166
import Support.LuWang.SourceCertificates.Chunk0167
import Support.LuWang.SourceCertificates.Chunk0168
import Support.LuWang.SourceCertificates.Chunk0169
import Support.LuWang.SourceCertificates.Chunk0170
import Support.LuWang.SourceCertificates.Chunk0171
import Support.LuWang.SourceCertificates.Chunk0172
import Support.LuWang.SourceCertificates.Chunk0173
import Support.LuWang.SourceCertificates.Chunk0174
import Support.LuWang.SourceCertificates.Chunk0175
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group10
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0160.cells ++ (LuWang.SourceCertificates.Chunk0161.cells ++ (LuWang.SourceCertificates.Chunk0162.cells ++ (LuWang.SourceCertificates.Chunk0163.cells ++ (LuWang.SourceCertificates.Chunk0164.cells ++ (LuWang.SourceCertificates.Chunk0165.cells ++ (LuWang.SourceCertificates.Chunk0166.cells ++ (LuWang.SourceCertificates.Chunk0167.cells ++ (LuWang.SourceCertificates.Chunk0168.cells ++ (LuWang.SourceCertificates.Chunk0169.cells ++ (LuWang.SourceCertificates.Chunk0170.cells ++ (LuWang.SourceCertificates.Chunk0171.cells ++ (LuWang.SourceCertificates.Chunk0172.cells ++ (LuWang.SourceCertificates.Chunk0173.cells ++ (LuWang.SourceCertificates.Chunk0174.cells ++ (LuWang.SourceCertificates.Chunk0175.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0160.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0161.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0162.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0163.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0164.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0165.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0166.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0167.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0168.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0169.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0170.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0171.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0172.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0173.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0174.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0175.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0160.all_linked, LuWang.SourceCertificateLinks.Chunk0161.all_linked, LuWang.SourceCertificateLinks.Chunk0162.all_linked, LuWang.SourceCertificateLinks.Chunk0163.all_linked, LuWang.SourceCertificateLinks.Chunk0164.all_linked, LuWang.SourceCertificateLinks.Chunk0165.all_linked, LuWang.SourceCertificateLinks.Chunk0166.all_linked, LuWang.SourceCertificateLinks.Chunk0167.all_linked, LuWang.SourceCertificateLinks.Chunk0168.all_linked, LuWang.SourceCertificateLinks.Chunk0169.all_linked, LuWang.SourceCertificateLinks.Chunk0170.all_linked, LuWang.SourceCertificateLinks.Chunk0171.all_linked, LuWang.SourceCertificateLinks.Chunk0172.all_linked, LuWang.SourceCertificateLinks.Chunk0173.all_linked, LuWang.SourceCertificateLinks.Chunk0174.all_linked, LuWang.SourceCertificateLinks.Chunk0175.all_linked⟩

theorem all_covered : covers (6108750000000001 / 20000000000000000 : ℚ) (8879687500000001 / 25000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0160.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0161.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0162.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0163.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0164.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0165.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0166.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0167.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0168.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0169.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0170.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0171.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0172.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0173.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0174.covered (LuWang.SourceCertificateLinks.Chunk0175.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group10
