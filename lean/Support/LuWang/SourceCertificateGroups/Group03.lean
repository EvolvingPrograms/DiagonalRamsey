import Support.LuWang.SourceCertificateLinks.Chunk0048
import Support.LuWang.SourceCertificateLinks.Chunk0049
import Support.LuWang.SourceCertificateLinks.Chunk0050
import Support.LuWang.SourceCertificateLinks.Chunk0051
import Support.LuWang.SourceCertificateLinks.Chunk0052
import Support.LuWang.SourceCertificateLinks.Chunk0053
import Support.LuWang.SourceCertificateLinks.Chunk0054
import Support.LuWang.SourceCertificateLinks.Chunk0055
import Support.LuWang.SourceCertificateLinks.Chunk0056
import Support.LuWang.SourceCertificateLinks.Chunk0057
import Support.LuWang.SourceCertificateLinks.Chunk0058
import Support.LuWang.SourceCertificateLinks.Chunk0059
import Support.LuWang.SourceCertificateLinks.Chunk0060
import Support.LuWang.SourceCertificateLinks.Chunk0061
import Support.LuWang.SourceCertificateLinks.Chunk0062
import Support.LuWang.SourceCertificateLinks.Chunk0063
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group03
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0048.cells ++ (LuWang.SourceCertificates.Chunk0049.cells ++ (LuWang.SourceCertificates.Chunk0050.cells ++ (LuWang.SourceCertificates.Chunk0051.cells ++ (LuWang.SourceCertificates.Chunk0052.cells ++ (LuWang.SourceCertificates.Chunk0053.cells ++ (LuWang.SourceCertificates.Chunk0054.cells ++ (LuWang.SourceCertificates.Chunk0055.cells ++ (LuWang.SourceCertificates.Chunk0056.cells ++ (LuWang.SourceCertificates.Chunk0057.cells ++ (LuWang.SourceCertificates.Chunk0058.cells ++ (LuWang.SourceCertificates.Chunk0059.cells ++ (LuWang.SourceCertificates.Chunk0060.cells ++ (LuWang.SourceCertificates.Chunk0061.cells ++ (LuWang.SourceCertificates.Chunk0062.cells ++ (LuWang.SourceCertificates.Chunk0063.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0048.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0049.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0050.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0051.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0052.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0053.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0054.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0055.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0056.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0057.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0058.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0059.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0060.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0061.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0062.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0063.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0048.all_linked, LuWang.SourceCertificateLinks.Chunk0049.all_linked, LuWang.SourceCertificateLinks.Chunk0050.all_linked, LuWang.SourceCertificateLinks.Chunk0051.all_linked, LuWang.SourceCertificateLinks.Chunk0052.all_linked, LuWang.SourceCertificateLinks.Chunk0053.all_linked, LuWang.SourceCertificateLinks.Chunk0054.all_linked, LuWang.SourceCertificateLinks.Chunk0055.all_linked, LuWang.SourceCertificateLinks.Chunk0056.all_linked, LuWang.SourceCertificateLinks.Chunk0057.all_linked, LuWang.SourceCertificateLinks.Chunk0058.all_linked, LuWang.SourceCertificateLinks.Chunk0059.all_linked, LuWang.SourceCertificateLinks.Chunk0060.all_linked, LuWang.SourceCertificateLinks.Chunk0061.all_linked, LuWang.SourceCertificateLinks.Chunk0062.all_linked, LuWang.SourceCertificateLinks.Chunk0063.all_linked⟩

theorem all_covered : covers (139500000000000013 / 2000000000000000000 : ℚ) (24554687500000001 / 250000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0048.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0049.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0050.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0051.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0052.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0053.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0054.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0055.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0056.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0057.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0058.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0059.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0060.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0061.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0062.covered (LuWang.SourceCertificateLinks.Chunk0063.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group03
