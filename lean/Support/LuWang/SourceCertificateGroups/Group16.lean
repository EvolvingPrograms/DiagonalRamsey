import Support.LuWang.SourceCertificateLinks.Chunk0256
import Support.LuWang.SourceCertificateLinks.Chunk0257
import Support.LuWang.SourceCertificateLinks.Chunk0258
import Support.LuWang.SourceCertificateLinks.Chunk0259
import Support.LuWang.SourceCertificateLinks.Chunk0260
import Support.LuWang.SourceCertificateLinks.Chunk0261
import Support.LuWang.SourceCertificateLinks.Chunk0262
import Support.LuWang.SourceCertificateLinks.Chunk0263
import Support.LuWang.SourceCertificateLinks.Chunk0264
import Support.LuWang.SourceCertificateLinks.Chunk0265
import Support.LuWang.SourceCertificateLinks.Chunk0266
import Support.LuWang.SourceCertificateLinks.Chunk0267
import Support.LuWang.SourceCertificateLinks.Chunk0268
import Support.LuWang.SourceCertificateLinks.Chunk0269
import Support.LuWang.SourceCertificateLinks.Chunk0270
import Support.LuWang.SourceCertificateLinks.Chunk0271
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group16
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0256.cells ++ (LuWang.SourceCertificates.Chunk0257.cells ++ (LuWang.SourceCertificates.Chunk0258.cells ++ (LuWang.SourceCertificates.Chunk0259.cells ++ (LuWang.SourceCertificates.Chunk0260.cells ++ (LuWang.SourceCertificates.Chunk0261.cells ++ (LuWang.SourceCertificates.Chunk0262.cells ++ (LuWang.SourceCertificates.Chunk0263.cells ++ (LuWang.SourceCertificates.Chunk0264.cells ++ (LuWang.SourceCertificates.Chunk0265.cells ++ (LuWang.SourceCertificates.Chunk0266.cells ++ (LuWang.SourceCertificates.Chunk0267.cells ++ (LuWang.SourceCertificates.Chunk0268.cells ++ (LuWang.SourceCertificates.Chunk0269.cells ++ (LuWang.SourceCertificates.Chunk0270.cells ++ (LuWang.SourceCertificates.Chunk0271.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0256.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0257.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0258.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0259.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0260.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0261.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0262.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0263.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0264.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0265.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0266.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0267.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0268.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0269.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0270.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0271.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0256.all_linked, LuWang.SourceCertificateLinks.Chunk0257.all_linked, LuWang.SourceCertificateLinks.Chunk0258.all_linked, LuWang.SourceCertificateLinks.Chunk0259.all_linked, LuWang.SourceCertificateLinks.Chunk0260.all_linked, LuWang.SourceCertificateLinks.Chunk0261.all_linked, LuWang.SourceCertificateLinks.Chunk0262.all_linked, LuWang.SourceCertificateLinks.Chunk0263.all_linked, LuWang.SourceCertificateLinks.Chunk0264.all_linked, LuWang.SourceCertificateLinks.Chunk0265.all_linked, LuWang.SourceCertificateLinks.Chunk0266.all_linked, LuWang.SourceCertificateLinks.Chunk0267.all_linked, LuWang.SourceCertificateLinks.Chunk0268.all_linked, LuWang.SourceCertificateLinks.Chunk0269.all_linked, LuWang.SourceCertificateLinks.Chunk0270.all_linked, LuWang.SourceCertificateLinks.Chunk0271.all_linked⟩

theorem all_covered : covers (154350000000000009 / 200000000000000000 : ℚ) (343950000000000001 / 400000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0256.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0257.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0258.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0259.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0260.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0261.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0262.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0263.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0264.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0265.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0266.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0267.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0268.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0269.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0270.covered (LuWang.SourceCertificateLinks.Chunk0271.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group16
