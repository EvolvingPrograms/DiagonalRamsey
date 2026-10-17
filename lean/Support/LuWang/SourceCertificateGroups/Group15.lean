import Support.LuWang.SourceCertificateLinks.Chunk0240
import Support.LuWang.SourceCertificateLinks.Chunk0241
import Support.LuWang.SourceCertificateLinks.Chunk0242
import Support.LuWang.SourceCertificateLinks.Chunk0243
import Support.LuWang.SourceCertificateLinks.Chunk0244
import Support.LuWang.SourceCertificateLinks.Chunk0245
import Support.LuWang.SourceCertificateLinks.Chunk0246
import Support.LuWang.SourceCertificateLinks.Chunk0247
import Support.LuWang.SourceCertificateLinks.Chunk0248
import Support.LuWang.SourceCertificateLinks.Chunk0249
import Support.LuWang.SourceCertificateLinks.Chunk0250
import Support.LuWang.SourceCertificateLinks.Chunk0251
import Support.LuWang.SourceCertificateLinks.Chunk0252
import Support.LuWang.SourceCertificateLinks.Chunk0253
import Support.LuWang.SourceCertificateLinks.Chunk0254
import Support.LuWang.SourceCertificateLinks.Chunk0255
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group15
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0240.cells ++ (LuWang.SourceCertificates.Chunk0241.cells ++ (LuWang.SourceCertificates.Chunk0242.cells ++ (LuWang.SourceCertificates.Chunk0243.cells ++ (LuWang.SourceCertificates.Chunk0244.cells ++ (LuWang.SourceCertificates.Chunk0245.cells ++ (LuWang.SourceCertificates.Chunk0246.cells ++ (LuWang.SourceCertificates.Chunk0247.cells ++ (LuWang.SourceCertificates.Chunk0248.cells ++ (LuWang.SourceCertificates.Chunk0249.cells ++ (LuWang.SourceCertificates.Chunk0250.cells ++ (LuWang.SourceCertificates.Chunk0251.cells ++ (LuWang.SourceCertificates.Chunk0252.cells ++ (LuWang.SourceCertificates.Chunk0253.cells ++ (LuWang.SourceCertificates.Chunk0254.cells ++ (LuWang.SourceCertificates.Chunk0255.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0240.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0241.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0242.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0243.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0244.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0245.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0246.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0247.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0248.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0249.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0250.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0251.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0252.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0253.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0254.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0255.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0240.all_linked, LuWang.SourceCertificateLinks.Chunk0241.all_linked, LuWang.SourceCertificateLinks.Chunk0242.all_linked, LuWang.SourceCertificateLinks.Chunk0243.all_linked, LuWang.SourceCertificateLinks.Chunk0244.all_linked, LuWang.SourceCertificateLinks.Chunk0245.all_linked, LuWang.SourceCertificateLinks.Chunk0246.all_linked, LuWang.SourceCertificateLinks.Chunk0247.all_linked, LuWang.SourceCertificateLinks.Chunk0248.all_linked, LuWang.SourceCertificateLinks.Chunk0249.all_linked, LuWang.SourceCertificateLinks.Chunk0250.all_linked, LuWang.SourceCertificateLinks.Chunk0251.all_linked, LuWang.SourceCertificateLinks.Chunk0252.all_linked, LuWang.SourceCertificateLinks.Chunk0253.all_linked, LuWang.SourceCertificateLinks.Chunk0254.all_linked, LuWang.SourceCertificateLinks.Chunk0255.all_linked⟩

theorem all_covered : covers (67249999999999999 / 100000000000000000 : ℚ) (154350000000000009 / 200000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0240.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0241.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0242.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0243.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0244.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0245.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0246.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0247.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0248.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0249.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0250.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0251.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0252.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0253.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0254.covered (LuWang.SourceCertificateLinks.Chunk0255.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group15
