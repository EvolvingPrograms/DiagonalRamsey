import Support.LuWang.SourceCertificates.Left.Batch00
import Support.LuWang.SourceCertificates.Left.Batch01
import Support.LuWang.SourceCertificates.Left.Batch02
import Support.LuWang.SourceCertificates.Left.Batch03
import Support.LuWang.SourceCertificates.Left.Batch04
import Support.LuWang.SourceCertificates.Left.Batch05
import Support.LuWang.SourceCertificates.Left.Batch06
import Support.LuWang.SourceCertificates.Left.Batch07
import Support.LuWang.SourceCertificates.Left.Batch08
import Support.LuWang.SourceCertificates.Left.Batch09
import Support.LuWang.SourceCertificates.Left.Batch10
import Support.LuWang.SourceCertificates.Left.Batch11

/-! Assemble independently checked batches without changing the source-bank interface. -/

section

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group09
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0144.cells ++ (LuWang.SourceCertificates.Chunk0145.cells ++ (LuWang.SourceCertificates.Chunk0146.cells ++ (LuWang.SourceCertificates.Chunk0147.cells ++ (LuWang.SourceCertificates.Chunk0148.cells ++ (LuWang.SourceCertificates.Chunk0149.cells ++ (LuWang.SourceCertificates.Chunk0150.cells ++ (LuWang.SourceCertificates.Chunk0151.cells ++ (LuWang.SourceCertificates.Chunk0152.cells ++ (LuWang.SourceCertificates.Chunk0153.cells ++ (LuWang.SourceCertificates.Chunk0154.cells ++ (LuWang.SourceCertificates.Chunk0155.cells ++ (LuWang.SourceCertificates.Chunk0156.cells ++ (LuWang.SourceCertificates.Chunk0157.cells ++ (LuWang.SourceCertificates.Chunk0158.cells ++ (LuWang.SourceCertificates.Chunk0159.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0144.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0145.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0146.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0147.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0148.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0149.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0150.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0151.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0152.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0153.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0154.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0155.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0156.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0157.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0158.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0159.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0144.all_linked, LuWang.SourceCertificateLinks.Chunk0145.all_linked, LuWang.SourceCertificateLinks.Chunk0146.all_linked, LuWang.SourceCertificateLinks.Chunk0147.all_linked, LuWang.SourceCertificateLinks.Chunk0148.all_linked, LuWang.SourceCertificateLinks.Chunk0149.all_linked, LuWang.SourceCertificateLinks.Chunk0150.all_linked, LuWang.SourceCertificateLinks.Chunk0151.all_linked, LuWang.SourceCertificateLinks.Chunk0152.all_linked, LuWang.SourceCertificateLinks.Chunk0153.all_linked, LuWang.SourceCertificateLinks.Chunk0154.all_linked, LuWang.SourceCertificateLinks.Chunk0155.all_linked, LuWang.SourceCertificateLinks.Chunk0156.all_linked, LuWang.SourceCertificateLinks.Chunk0157.all_linked, LuWang.SourceCertificateLinks.Chunk0158.all_linked, LuWang.SourceCertificateLinks.Chunk0159.all_linked⟩

theorem all_covered : covers (25637500000000001 / 100000000000000000 : ℚ) (6108750000000001 / 20000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0144.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0145.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0146.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0147.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0148.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0149.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0150.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0151.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0152.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0153.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0154.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0155.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0156.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0157.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0158.covered (LuWang.SourceCertificateLinks.Chunk0159.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group09
end

section

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group10
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0160.cells ++ (LuWang.SourceCertificates.Chunk0161.cells ++ (LuWang.SourceCertificates.Chunk0162.cells ++ (LuWang.SourceCertificates.Chunk0163.cells ++ (LuWang.SourceCertificates.Chunk0164.cells ++ (LuWang.SourceCertificates.Chunk0165.cells ++ (LuWang.SourceCertificates.Chunk0166.cells ++ (LuWang.SourceCertificates.Chunk0167.cells ++ (LuWang.SourceCertificates.Chunk0168.cells ++ (LuWang.SourceCertificates.Chunk0169.cells ++ (LuWang.SourceCertificates.Chunk0170.cells ++ (LuWang.SourceCertificates.Chunk0171.cells ++ (LuWang.SourceCertificates.Chunk0172.cells ++ (LuWang.SourceCertificates.Chunk0173.cells ++ (LuWang.SourceCertificates.Chunk0174.cells ++ (LuWang.SourceCertificates.Chunk0175.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0160.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0161.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0162.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0163.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0164.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0165.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0166.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0167.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0168.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0169.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0170.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0171.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0172.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0173.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0174.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0175.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0160.all_linked, LuWang.SourceCertificateLinks.Chunk0161.all_linked, LuWang.SourceCertificateLinks.Chunk0162.all_linked, LuWang.SourceCertificateLinks.Chunk0163.all_linked, LuWang.SourceCertificateLinks.Chunk0164.all_linked, LuWang.SourceCertificateLinks.Chunk0165.all_linked, LuWang.SourceCertificateLinks.Chunk0166.all_linked, LuWang.SourceCertificateLinks.Chunk0167.all_linked, LuWang.SourceCertificateLinks.Chunk0168.all_linked, LuWang.SourceCertificateLinks.Chunk0169.all_linked, LuWang.SourceCertificateLinks.Chunk0170.all_linked, LuWang.SourceCertificateLinks.Chunk0171.all_linked, LuWang.SourceCertificateLinks.Chunk0172.all_linked, LuWang.SourceCertificateLinks.Chunk0173.all_linked, LuWang.SourceCertificateLinks.Chunk0174.all_linked, LuWang.SourceCertificateLinks.Chunk0175.all_linked⟩

theorem all_covered : covers (6108750000000001 / 20000000000000000 : ℚ) (8879687500000001 / 25000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0160.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0161.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0162.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0163.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0164.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0165.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0166.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0167.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0168.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0169.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0170.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0171.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0172.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0173.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0174.covered (LuWang.SourceCertificateLinks.Chunk0175.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group10
end

section

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
end

section

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group12
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0192.cells ++ (LuWang.SourceCertificates.Chunk0193.cells ++ (LuWang.SourceCertificates.Chunk0194.cells ++ (LuWang.SourceCertificates.Chunk0195.cells ++ (LuWang.SourceCertificates.Chunk0196.cells ++ (LuWang.SourceCertificates.Chunk0197.cells ++ (LuWang.SourceCertificates.Chunk0198.cells ++ (LuWang.SourceCertificates.Chunk0199.cells ++ (LuWang.SourceCertificates.Chunk0200.cells ++ (LuWang.SourceCertificates.Chunk0201.cells ++ (LuWang.SourceCertificates.Chunk0202.cells ++ (LuWang.SourceCertificates.Chunk0203.cells ++ (LuWang.SourceCertificates.Chunk0204.cells ++ (LuWang.SourceCertificates.Chunk0205.cells ++ (LuWang.SourceCertificates.Chunk0206.cells ++ (LuWang.SourceCertificates.Chunk0207.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0192.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0193.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0194.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0195.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0196.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0197.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0198.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0199.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0200.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0201.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0202.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0203.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0204.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0205.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0206.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0207.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0192.all_linked, LuWang.SourceCertificateLinks.Chunk0193.all_linked, LuWang.SourceCertificateLinks.Chunk0194.all_linked, LuWang.SourceCertificateLinks.Chunk0195.all_linked, LuWang.SourceCertificateLinks.Chunk0196.all_linked, LuWang.SourceCertificateLinks.Chunk0197.all_linked, LuWang.SourceCertificateLinks.Chunk0198.all_linked, LuWang.SourceCertificateLinks.Chunk0199.all_linked, LuWang.SourceCertificateLinks.Chunk0200.all_linked, LuWang.SourceCertificateLinks.Chunk0201.all_linked, LuWang.SourceCertificateLinks.Chunk0202.all_linked, LuWang.SourceCertificateLinks.Chunk0203.all_linked, LuWang.SourceCertificateLinks.Chunk0204.all_linked, LuWang.SourceCertificateLinks.Chunk0205.all_linked, LuWang.SourceCertificateLinks.Chunk0206.all_linked, LuWang.SourceCertificateLinks.Chunk0207.all_linked⟩

theorem all_covered : covers (40531250000000003 / 100000000000000000 : ℚ) (47550000000000003 / 100000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0192.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0193.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0194.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0195.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0196.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0197.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0198.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0199.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0200.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0201.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0202.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0203.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0204.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0205.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0206.covered (LuWang.SourceCertificateLinks.Chunk0207.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group12
end

section

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace LuWang.SourceCertificateGroups.Group13
open SourceCertificate
open AnalyticBounds.ExpressionCertificate

noncomputable def cells : List Cell := LuWang.SourceCertificates.Chunk0208.cells ++ (LuWang.SourceCertificates.Chunk0209.cells ++ (LuWang.SourceCertificates.Chunk0210.cells ++ (LuWang.SourceCertificates.Chunk0211.cells ++ (LuWang.SourceCertificates.Chunk0212.cells ++ (LuWang.SourceCertificates.Chunk0213.cells ++ (LuWang.SourceCertificates.Chunk0214.cells ++ (LuWang.SourceCertificates.Chunk0215.cells ++ (LuWang.SourceCertificates.Chunk0216.cells ++ (LuWang.SourceCertificates.Chunk0217.cells ++ (LuWang.SourceCertificates.Chunk0218.cells ++ (LuWang.SourceCertificates.Chunk0219.cells ++ (LuWang.SourceCertificates.Chunk0220.cells ++ (LuWang.SourceCertificates.Chunk0221.cells ++ (LuWang.SourceCertificates.Chunk0222.cells ++ (LuWang.SourceCertificates.Chunk0223.cells)))))))))))))))

theorem all_checked : ∀ c ∈ cells, c.check = true := by
  simp only [cells,List.forall_mem_append]
  exact ⟨List.all_eq_true.mp LuWang.SourceCertificates.Chunk0208.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0209.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0210.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0211.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0212.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0213.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0214.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0215.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0216.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0217.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0218.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0219.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0220.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0221.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0222.all_checked, List.all_eq_true.mp LuWang.SourceCertificates.Chunk0223.all_checked⟩

theorem all_linked : ∀ c ∈ cells, Linked c CurrentSourceData.pieces := by
  simp only [cells,List.forall_mem_append]
  exact ⟨LuWang.SourceCertificateLinks.Chunk0208.all_linked, LuWang.SourceCertificateLinks.Chunk0209.all_linked, LuWang.SourceCertificateLinks.Chunk0210.all_linked, LuWang.SourceCertificateLinks.Chunk0211.all_linked, LuWang.SourceCertificateLinks.Chunk0212.all_linked, LuWang.SourceCertificateLinks.Chunk0213.all_linked, LuWang.SourceCertificateLinks.Chunk0214.all_linked, LuWang.SourceCertificateLinks.Chunk0215.all_linked, LuWang.SourceCertificateLinks.Chunk0216.all_linked, LuWang.SourceCertificateLinks.Chunk0217.all_linked, LuWang.SourceCertificateLinks.Chunk0218.all_linked, LuWang.SourceCertificateLinks.Chunk0219.all_linked, LuWang.SourceCertificateLinks.Chunk0220.all_linked, LuWang.SourceCertificateLinks.Chunk0221.all_linked, LuWang.SourceCertificateLinks.Chunk0222.all_linked, LuWang.SourceCertificateLinks.Chunk0223.all_linked⟩

theorem all_covered : covers (47550000000000003 / 100000000000000000 : ℚ) (14343750000000001 / 25000000000000000 : ℚ) (cells.map Cell.domain) = true := by
  simpa only [cells,List.map_append] using covers_append _ _ LuWang.SourceCertificateLinks.Chunk0208.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0209.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0210.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0211.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0212.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0213.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0214.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0215.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0216.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0217.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0218.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0219.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0220.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0221.covered (covers_append _ _ LuWang.SourceCertificateLinks.Chunk0222.covered (LuWang.SourceCertificateLinks.Chunk0223.covered)))))))))))))))

#print axioms all_covered
end LuWang.SourceCertificateGroups.Group13
end

section

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
end

section

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
end

section

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
end

section

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
end
