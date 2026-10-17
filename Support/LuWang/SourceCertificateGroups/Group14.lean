import Support.LuWang.SourceCertificates.Chunk0224
import Support.LuWang.SourceCertificates.Chunk0225
import Support.LuWang.SourceCertificates.Chunk0226
import Support.LuWang.SourceCertificates.Chunk0227
import Support.LuWang.SourceCertificates.Chunk0228
import Support.LuWang.SourceCertificates.Chunk0229
import Support.LuWang.SourceCertificates.Chunk0230
import Support.LuWang.SourceCertificates.Chunk0231
import Support.LuWang.SourceCertificates.Chunk0232
import Support.LuWang.SourceCertificates.Chunk0233
import Support.LuWang.SourceCertificates.Chunk0234
import Support.LuWang.SourceCertificates.Chunk0235
import Support.LuWang.SourceCertificates.Chunk0236
import Support.LuWang.SourceCertificates.Chunk0237
import Support.LuWang.SourceCertificates.Chunk0238
import Support.LuWang.SourceCertificates.Chunk0239
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group14
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0224.cells ++ (LuWang.SourceCertificates.Chunk0225.cells ++ (LuWang.SourceCertificates.Chunk0226.cells ++ (LuWang.SourceCertificates.Chunk0227.cells ++ (LuWang.SourceCertificates.Chunk0228.cells ++ (LuWang.SourceCertificates.Chunk0229.cells ++ (LuWang.SourceCertificates.Chunk0230.cells ++ (LuWang.SourceCertificates.Chunk0231.cells ++ (LuWang.SourceCertificates.Chunk0232.cells ++ (LuWang.SourceCertificates.Chunk0233.cells ++ (LuWang.SourceCertificates.Chunk0234.cells ++ (LuWang.SourceCertificates.Chunk0235.cells ++ (LuWang.SourceCertificates.Chunk0236.cells ++ (LuWang.SourceCertificates.Chunk0237.cells ++ (LuWang.SourceCertificates.Chunk0238.cells ++ (LuWang.SourceCertificates.Chunk0239.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0224.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0225.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0226.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0227.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0228.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0229.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0230.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0231.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0232.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0233.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0234.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0235.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0236.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0237.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0238.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0239.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0224.all_linked, LuWang.SourceCertificateLinks.Chunk0225.all_linked, LuWang.SourceCertificateLinks.Chunk0226.all_linked, LuWang.SourceCertificateLinks.Chunk0227.all_linked, LuWang.SourceCertificateLinks.Chunk0228.all_linked, LuWang.SourceCertificateLinks.Chunk0229.all_linked, LuWang.SourceCertificateLinks.Chunk0230.all_linked, LuWang.SourceCertificateLinks.Chunk0231.all_linked, LuWang.SourceCertificateLinks.Chunk0232.all_linked, LuWang.SourceCertificateLinks.Chunk0233.all_linked, LuWang.SourceCertificateLinks.Chunk0234.all_linked, LuWang.SourceCertificateLinks.Chunk0235.all_linked, LuWang.SourceCertificateLinks.Chunk0236.all_linked, LuWang.SourceCertificateLinks.Chunk0237.all_linked, LuWang.SourceCertificateLinks.Chunk0238.all_linked, LuWang.SourceCertificateLinks.Chunk0239.all_linked⟩

theorem all_covered : covers (14343750000000001 / 25000000000000000 : ℚ) (67249999999999999 / 100000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0224.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0225.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0226.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0227.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0228.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0229.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0230.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0231.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0232.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0233.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0234.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0235.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0236.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0237.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0238.covered (LuWang.SourceCertificateLinks.Chunk0239.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group14
