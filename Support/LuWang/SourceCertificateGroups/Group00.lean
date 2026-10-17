import Support.LuWang.SourceCertificates.Chunk0000
import Support.LuWang.SourceCertificates.Chunk0001
import Support.LuWang.SourceCertificates.Chunk0002
import Support.LuWang.SourceCertificates.Chunk0003
import Support.LuWang.SourceCertificates.Chunk0004
import Support.LuWang.SourceCertificates.Chunk0005
import Support.LuWang.SourceCertificates.Chunk0006
import Support.LuWang.SourceCertificates.Chunk0007
import Support.LuWang.SourceCertificates.Chunk0008
import Support.LuWang.SourceCertificates.Chunk0009
import Support.LuWang.SourceCertificates.Chunk0010
import Support.LuWang.SourceCertificates.Chunk0011
import Support.LuWang.SourceCertificates.Chunk0012
import Support.LuWang.SourceCertificates.Chunk0013
import Support.LuWang.SourceCertificates.Chunk0014
import Support.LuWang.SourceCertificates.Chunk0015
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group00
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0000.cells ++ (LuWang.SourceCertificates.Chunk0001.cells ++ (LuWang.SourceCertificates.Chunk0002.cells ++ (LuWang.SourceCertificates.Chunk0003.cells ++ (LuWang.SourceCertificates.Chunk0004.cells ++ (LuWang.SourceCertificates.Chunk0005.cells ++ (LuWang.SourceCertificates.Chunk0006.cells ++ (LuWang.SourceCertificates.Chunk0007.cells ++ (LuWang.SourceCertificates.Chunk0008.cells ++ (LuWang.SourceCertificates.Chunk0009.cells ++ (LuWang.SourceCertificates.Chunk0010.cells ++ (LuWang.SourceCertificates.Chunk0011.cells ++ (LuWang.SourceCertificates.Chunk0012.cells ++ (LuWang.SourceCertificates.Chunk0013.cells ++ (LuWang.SourceCertificates.Chunk0014.cells ++ (LuWang.SourceCertificates.Chunk0015.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0000.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0001.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0002.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0003.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0004.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0005.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0006.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0007.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0008.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0009.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0010.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0011.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0012.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0013.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0014.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0015.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0000.all_linked, LuWang.SourceCertificateLinks.Chunk0001.all_linked, LuWang.SourceCertificateLinks.Chunk0002.all_linked, LuWang.SourceCertificateLinks.Chunk0003.all_linked, LuWang.SourceCertificateLinks.Chunk0004.all_linked, LuWang.SourceCertificateLinks.Chunk0005.all_linked, LuWang.SourceCertificateLinks.Chunk0006.all_linked, LuWang.SourceCertificateLinks.Chunk0007.all_linked, LuWang.SourceCertificateLinks.Chunk0008.all_linked, LuWang.SourceCertificateLinks.Chunk0009.all_linked, LuWang.SourceCertificateLinks.Chunk0010.all_linked, LuWang.SourceCertificateLinks.Chunk0011.all_linked, LuWang.SourceCertificateLinks.Chunk0012.all_linked, LuWang.SourceCertificateLinks.Chunk0013.all_linked, LuWang.SourceCertificateLinks.Chunk0014.all_linked, LuWang.SourceCertificateLinks.Chunk0015.all_linked⟩

theorem all_covered : covers (0 / 1 : ℚ) (39564606172720309 / 3200000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0000.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0001.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0002.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0003.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0004.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0005.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0006.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0007.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0008.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0009.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0010.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0011.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0012.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0013.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0014.covered (LuWang.SourceCertificateLinks.Chunk0015.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group00
