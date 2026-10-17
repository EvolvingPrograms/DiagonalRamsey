import Support.LuWang.SourceCertificateLinks.Chunk0032
import Support.LuWang.SourceCertificateLinks.Chunk0033
import Support.LuWang.SourceCertificateLinks.Chunk0034
import Support.LuWang.SourceCertificateLinks.Chunk0035
import Support.LuWang.SourceCertificateLinks.Chunk0036
import Support.LuWang.SourceCertificateLinks.Chunk0037
import Support.LuWang.SourceCertificateLinks.Chunk0038
import Support.LuWang.SourceCertificateLinks.Chunk0039
import Support.LuWang.SourceCertificateLinks.Chunk0040
import Support.LuWang.SourceCertificateLinks.Chunk0041
import Support.LuWang.SourceCertificateLinks.Chunk0042
import Support.LuWang.SourceCertificateLinks.Chunk0043
import Support.LuWang.SourceCertificateLinks.Chunk0044
import Support.LuWang.SourceCertificateLinks.Chunk0045
import Support.LuWang.SourceCertificateLinks.Chunk0046
import Support.LuWang.SourceCertificateLinks.Chunk0047
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group02
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0032.cells ++ (LuWang.SourceCertificates.Chunk0033.cells ++ (LuWang.SourceCertificates.Chunk0034.cells ++ (LuWang.SourceCertificates.Chunk0035.cells ++ (LuWang.SourceCertificates.Chunk0036.cells ++ (LuWang.SourceCertificates.Chunk0037.cells ++ (LuWang.SourceCertificates.Chunk0038.cells ++ (LuWang.SourceCertificates.Chunk0039.cells ++ (LuWang.SourceCertificates.Chunk0040.cells ++ (LuWang.SourceCertificates.Chunk0041.cells ++ (LuWang.SourceCertificates.Chunk0042.cells ++ (LuWang.SourceCertificates.Chunk0043.cells ++ (LuWang.SourceCertificates.Chunk0044.cells ++ (LuWang.SourceCertificates.Chunk0045.cells ++ (LuWang.SourceCertificates.Chunk0046.cells ++ (LuWang.SourceCertificates.Chunk0047.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0032.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0033.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0034.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0035.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0036.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0037.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0038.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0039.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0040.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0041.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0042.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0043.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0044.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0045.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0046.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0047.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0032.all_linked, LuWang.SourceCertificateLinks.Chunk0033.all_linked, LuWang.SourceCertificateLinks.Chunk0034.all_linked, LuWang.SourceCertificateLinks.Chunk0035.all_linked, LuWang.SourceCertificateLinks.Chunk0036.all_linked, LuWang.SourceCertificateLinks.Chunk0037.all_linked, LuWang.SourceCertificateLinks.Chunk0038.all_linked, LuWang.SourceCertificateLinks.Chunk0039.all_linked, LuWang.SourceCertificateLinks.Chunk0040.all_linked, LuWang.SourceCertificateLinks.Chunk0041.all_linked, LuWang.SourceCertificateLinks.Chunk0042.all_linked, LuWang.SourceCertificateLinks.Chunk0043.all_linked, LuWang.SourceCertificateLinks.Chunk0044.all_linked, LuWang.SourceCertificateLinks.Chunk0045.all_linked, LuWang.SourceCertificateLinks.Chunk0046.all_linked, LuWang.SourceCertificateLinks.Chunk0047.all_linked⟩

theorem all_covered : covers (43937499999999997 / 1000000000000000000 : ℚ) (139500000000000013 / 2000000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0032.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0033.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0034.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0035.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0036.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0037.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0038.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0039.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0040.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0041.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0042.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0043.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0044.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0045.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0046.covered (LuWang.SourceCertificateLinks.Chunk0047.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group02
