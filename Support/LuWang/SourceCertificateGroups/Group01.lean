import Support.LuWang.SourceCertificates.Chunk0016
import Support.LuWang.SourceCertificates.Chunk0017
import Support.LuWang.SourceCertificates.Chunk0018
import Support.LuWang.SourceCertificates.Chunk0019
import Support.LuWang.SourceCertificates.Chunk0020
import Support.LuWang.SourceCertificates.Chunk0021
import Support.LuWang.SourceCertificates.Chunk0022
import Support.LuWang.SourceCertificates.Chunk0023
import Support.LuWang.SourceCertificates.Chunk0024
import Support.LuWang.SourceCertificates.Chunk0025
import Support.LuWang.SourceCertificates.Chunk0026
import Support.LuWang.SourceCertificates.Chunk0027
import Support.LuWang.SourceCertificates.Chunk0028
import Support.LuWang.SourceCertificates.Chunk0029
import Support.LuWang.SourceCertificates.Chunk0030
import Support.LuWang.SourceCertificates.Chunk0031
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group01
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0016.cells ++ (LuWang.SourceCertificates.Chunk0017.cells ++ (LuWang.SourceCertificates.Chunk0018.cells ++ (LuWang.SourceCertificates.Chunk0019.cells ++ (LuWang.SourceCertificates.Chunk0020.cells ++ (LuWang.SourceCertificates.Chunk0021.cells ++ (LuWang.SourceCertificates.Chunk0022.cells ++ (LuWang.SourceCertificates.Chunk0023.cells ++ (LuWang.SourceCertificates.Chunk0024.cells ++ (LuWang.SourceCertificates.Chunk0025.cells ++ (LuWang.SourceCertificates.Chunk0026.cells ++ (LuWang.SourceCertificates.Chunk0027.cells ++ (LuWang.SourceCertificates.Chunk0028.cells ++ (LuWang.SourceCertificates.Chunk0029.cells ++ (LuWang.SourceCertificates.Chunk0030.cells ++ (LuWang.SourceCertificates.Chunk0031.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0016.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0017.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0018.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0019.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0020.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0021.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0022.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0023.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0024.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0025.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0026.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0027.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0028.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0029.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0030.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0031.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0016.all_linked, LuWang.SourceCertificateLinks.Chunk0017.all_linked, LuWang.SourceCertificateLinks.Chunk0018.all_linked, LuWang.SourceCertificateLinks.Chunk0019.all_linked, LuWang.SourceCertificateLinks.Chunk0020.all_linked, LuWang.SourceCertificateLinks.Chunk0021.all_linked, LuWang.SourceCertificateLinks.Chunk0022.all_linked, LuWang.SourceCertificateLinks.Chunk0023.all_linked, LuWang.SourceCertificateLinks.Chunk0024.all_linked, LuWang.SourceCertificateLinks.Chunk0025.all_linked, LuWang.SourceCertificateLinks.Chunk0026.all_linked, LuWang.SourceCertificateLinks.Chunk0027.all_linked, LuWang.SourceCertificateLinks.Chunk0028.all_linked, LuWang.SourceCertificateLinks.Chunk0029.all_linked, LuWang.SourceCertificateLinks.Chunk0030.all_linked, LuWang.SourceCertificateLinks.Chunk0031.all_linked⟩

theorem all_covered : covers (39564606172720309 / 3200000000000000000 : ℚ) (43937499999999997 / 1000000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0016.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0017.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0018.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0019.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0020.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0021.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0022.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0023.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0024.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0025.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0026.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0027.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0028.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0029.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0030.covered (LuWang.SourceCertificateLinks.Chunk0031.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group01
