import Support.LuWang.SourceCertificates.Chunk0176
import Support.LuWang.SourceCertificates.Chunk0177
import Support.LuWang.SourceCertificates.Chunk0178
import Support.LuWang.SourceCertificates.Chunk0179
import Support.LuWang.SourceCertificates.Chunk0180
import Support.LuWang.SourceCertificates.Chunk0181
import Support.LuWang.SourceCertificates.Chunk0182
import Support.LuWang.SourceCertificates.Chunk0183
import Support.LuWang.SourceCertificates.Chunk0184
import Support.LuWang.SourceCertificates.Chunk0185
import Support.LuWang.SourceCertificates.Chunk0186
import Support.LuWang.SourceCertificates.Chunk0187
import Support.LuWang.SourceCertificates.Chunk0188
import Support.LuWang.SourceCertificates.Chunk0189
import Support.LuWang.SourceCertificates.Chunk0190
import Support.LuWang.SourceCertificates.Chunk0191
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group11
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0176.cells ++ (LuWang.SourceCertificates.Chunk0177.cells ++ (LuWang.SourceCertificates.Chunk0178.cells ++ (LuWang.SourceCertificates.Chunk0179.cells ++ (LuWang.SourceCertificates.Chunk0180.cells ++ (LuWang.SourceCertificates.Chunk0181.cells ++ (LuWang.SourceCertificates.Chunk0182.cells ++ (LuWang.SourceCertificates.Chunk0183.cells ++ (LuWang.SourceCertificates.Chunk0184.cells ++ (LuWang.SourceCertificates.Chunk0185.cells ++ (LuWang.SourceCertificates.Chunk0186.cells ++ (LuWang.SourceCertificates.Chunk0187.cells ++ (LuWang.SourceCertificates.Chunk0188.cells ++ (LuWang.SourceCertificates.Chunk0189.cells ++ (LuWang.SourceCertificates.Chunk0190.cells ++ (LuWang.SourceCertificates.Chunk0191.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0176.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0177.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0178.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0179.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0180.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0181.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0182.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0183.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0184.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0185.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0186.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0187.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0188.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0189.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0190.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0191.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0176.all_linked, LuWang.SourceCertificateLinks.Chunk0177.all_linked, LuWang.SourceCertificateLinks.Chunk0178.all_linked, LuWang.SourceCertificateLinks.Chunk0179.all_linked, LuWang.SourceCertificateLinks.Chunk0180.all_linked, LuWang.SourceCertificateLinks.Chunk0181.all_linked, LuWang.SourceCertificateLinks.Chunk0182.all_linked, LuWang.SourceCertificateLinks.Chunk0183.all_linked, LuWang.SourceCertificateLinks.Chunk0184.all_linked, LuWang.SourceCertificateLinks.Chunk0185.all_linked, LuWang.SourceCertificateLinks.Chunk0186.all_linked, LuWang.SourceCertificateLinks.Chunk0187.all_linked, LuWang.SourceCertificateLinks.Chunk0188.all_linked, LuWang.SourceCertificateLinks.Chunk0189.all_linked, LuWang.SourceCertificateLinks.Chunk0190.all_linked, LuWang.SourceCertificateLinks.Chunk0191.all_linked⟩

theorem all_covered : covers (8879687500000001 / 25000000000000000 : ℚ) (40531250000000003 / 100000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0176.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0177.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0178.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0179.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0180.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0181.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0182.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0183.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0184.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0185.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0186.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0187.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0188.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0189.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0190.covered (LuWang.SourceCertificateLinks.Chunk0191.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group11
