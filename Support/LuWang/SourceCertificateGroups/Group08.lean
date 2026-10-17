import Support.LuWang.SourceCertificates.Chunk0128
import Support.LuWang.SourceCertificates.Chunk0129
import Support.LuWang.SourceCertificates.Chunk0130
import Support.LuWang.SourceCertificates.Chunk0131
import Support.LuWang.SourceCertificates.Chunk0132
import Support.LuWang.SourceCertificates.Chunk0133
import Support.LuWang.SourceCertificates.Chunk0134
import Support.LuWang.SourceCertificates.Chunk0135
import Support.LuWang.SourceCertificates.Chunk0136
import Support.LuWang.SourceCertificates.Chunk0137
import Support.LuWang.SourceCertificates.Chunk0138
import Support.LuWang.SourceCertificates.Chunk0139
import Support.LuWang.SourceCertificates.Chunk0140
import Support.LuWang.SourceCertificates.Chunk0141
import Support.LuWang.SourceCertificates.Chunk0142
import Support.LuWang.SourceCertificates.Chunk0143
import Support.LuWang.SourceCertificateAssembly

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group08
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0128.cells ++ (LuWang.SourceCertificates.Chunk0129.cells ++ (LuWang.SourceCertificates.Chunk0130.cells ++ (LuWang.SourceCertificates.Chunk0131.cells ++ (LuWang.SourceCertificates.Chunk0132.cells ++ (LuWang.SourceCertificates.Chunk0133.cells ++ (LuWang.SourceCertificates.Chunk0134.cells ++ (LuWang.SourceCertificates.Chunk0135.cells ++ (LuWang.SourceCertificates.Chunk0136.cells ++ (LuWang.SourceCertificates.Chunk0137.cells ++ (LuWang.SourceCertificates.Chunk0138.cells ++ (LuWang.SourceCertificates.Chunk0139.cells ++ (LuWang.SourceCertificates.Chunk0140.cells ++ (LuWang.SourceCertificates.Chunk0141.cells ++ (LuWang.SourceCertificates.Chunk0142.cells ++ (LuWang.SourceCertificates.Chunk0143.cells)))))))))))))))

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificates.Chunk0128.all_certified, LuWang.SourceCertificates.Chunk0129.all_certified, LuWang.SourceCertificates.Chunk0130.all_certified, LuWang.SourceCertificates.Chunk0131.all_certified, LuWang.SourceCertificates.Chunk0132.all_certified, LuWang.SourceCertificates.Chunk0133.all_certified, LuWang.SourceCertificates.Chunk0134.all_certified, LuWang.SourceCertificates.Chunk0135.all_certified, LuWang.SourceCertificates.Chunk0136.all_certified, LuWang.SourceCertificates.Chunk0137.all_certified, LuWang.SourceCertificates.Chunk0138.all_certified, LuWang.SourceCertificates.Chunk0139.all_certified, LuWang.SourceCertificates.Chunk0140.all_certified, (fun c hc => SourceCertificateFamily.of_checked (List.all_eq_true.mp LuWang.SourceCertificates.Chunk0141.all_checked c hc)), (fun c hc => SourceCertificateFamily.of_checked (List.all_eq_true.mp LuWang.SourceCertificates.Chunk0142.all_checked c hc)), (fun c hc => SourceCertificateFamily.of_checked (List.all_eq_true.mp LuWang.SourceCertificates.Chunk0143.all_checked c hc))⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0128.all_linked, LuWang.SourceCertificateLinks.Chunk0129.all_linked, LuWang.SourceCertificateLinks.Chunk0130.all_linked, LuWang.SourceCertificateLinks.Chunk0131.all_linked, LuWang.SourceCertificateLinks.Chunk0132.all_linked, LuWang.SourceCertificateLinks.Chunk0133.all_linked, LuWang.SourceCertificateLinks.Chunk0134.all_linked, LuWang.SourceCertificateLinks.Chunk0135.all_linked, LuWang.SourceCertificateLinks.Chunk0136.all_linked, LuWang.SourceCertificateLinks.Chunk0137.all_linked, LuWang.SourceCertificateLinks.Chunk0138.all_linked, LuWang.SourceCertificateLinks.Chunk0139.all_linked, LuWang.SourceCertificateLinks.Chunk0140.all_linked, LuWang.SourceCertificateLinks.Chunk0141.all_linked, LuWang.SourceCertificateLinks.Chunk0142.all_linked, LuWang.SourceCertificateLinks.Chunk0143.all_linked⟩

theorem all_covered : covers (20293749999999999 / 100000000000000000 : ℚ) (25637500000000001 / 100000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0128.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0129.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0130.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0131.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0132.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0133.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0134.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0135.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0136.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0137.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0138.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0139.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0140.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0141.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0142.covered (LuWang.SourceCertificateLinks.Chunk0143.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group08
