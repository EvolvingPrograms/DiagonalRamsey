import Support.LuWang.SourceCertificateLinks.Chunk0272
import Support.LuWang.SourceCertificateLinks.Chunk0273
import Support.LuWang.SourceCertificateLinks.Chunk0274
import Support.LuWang.SourceCertificateLinks.Chunk0275
import Support.LuWang.SourceCertificateLinks.Chunk0276
import Support.LuWang.SourceCertificateLinks.Chunk0277
import Support.LuWang.SourceCertificateLinks.Chunk0278
import Support.LuWang.SourceCertificateLinks.Chunk0279
import Support.LuWang.SourceCertificateLinks.Chunk0280
import Support.LuWang.SourceCertificateLinks.Chunk0281
import Support.LuWang.SourceCertificateLinks.Chunk0282
import Support.LuWang.SourceCertificateLinks.Chunk0283
import Support.LuWang.SourceCertificateLinks.Chunk0284
import Support.LuWang.SourceCertificateLinks.Chunk0285
import Support.LuWang.SourceCertificateLinks.Chunk0286
import Support.LuWang.SourceCertificateLinks.Chunk0287
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group17
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0272.cells ++ (LuWang.SourceCertificates.Chunk0273.cells ++ (LuWang.SourceCertificates.Chunk0274.cells ++ (LuWang.SourceCertificates.Chunk0275.cells ++ (LuWang.SourceCertificates.Chunk0276.cells ++ (LuWang.SourceCertificates.Chunk0277.cells ++ (LuWang.SourceCertificates.Chunk0278.cells ++ (LuWang.SourceCertificates.Chunk0279.cells ++ (LuWang.SourceCertificates.Chunk0280.cells ++ (LuWang.SourceCertificates.Chunk0281.cells ++ (LuWang.SourceCertificates.Chunk0282.cells ++ (LuWang.SourceCertificates.Chunk0283.cells ++ (LuWang.SourceCertificates.Chunk0284.cells ++ (LuWang.SourceCertificates.Chunk0285.cells ++ (LuWang.SourceCertificates.Chunk0286.cells ++ (LuWang.SourceCertificates.Chunk0287.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0272.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0273.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0274.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0275.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0276.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0277.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0278.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0279.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0280.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0281.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0282.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0283.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0284.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0285.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0286.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0287.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0272.all_linked, LuWang.SourceCertificateLinks.Chunk0273.all_linked, LuWang.SourceCertificateLinks.Chunk0274.all_linked, LuWang.SourceCertificateLinks.Chunk0275.all_linked, LuWang.SourceCertificateLinks.Chunk0276.all_linked, LuWang.SourceCertificateLinks.Chunk0277.all_linked, LuWang.SourceCertificateLinks.Chunk0278.all_linked, LuWang.SourceCertificateLinks.Chunk0279.all_linked, LuWang.SourceCertificateLinks.Chunk0280.all_linked, LuWang.SourceCertificateLinks.Chunk0281.all_linked, LuWang.SourceCertificateLinks.Chunk0282.all_linked, LuWang.SourceCertificateLinks.Chunk0283.all_linked, LuWang.SourceCertificateLinks.Chunk0284.all_linked, LuWang.SourceCertificateLinks.Chunk0285.all_linked, LuWang.SourceCertificateLinks.Chunk0286.all_linked, LuWang.SourceCertificateLinks.Chunk0287.all_linked⟩

theorem all_covered : covers (343950000000000001 / 400000000000000000 : ℚ) (1 / 1 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0272.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0273.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0274.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0275.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0276.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0277.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0278.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0279.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0280.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0281.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0282.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0283.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0284.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0285.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0286.covered (LuWang.SourceCertificateLinks.Chunk0287.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group17
