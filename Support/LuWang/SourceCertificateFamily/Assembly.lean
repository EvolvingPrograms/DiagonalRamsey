import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.SourceCertificateFamily.Piece317
import Support.LuWang.SourceCertificateLink

set_option autoImplicit false
namespace LuWang.SourceCertificateFamily
open CurrentSourceGeometry

theorem finiteSource_of_certified_cells (cells : List SourceCertificate.Cell)
 (hcover : AnalyticBounds.ExpressionCertificate.covers 0 1
   (cells.map SourceCertificate.Cell.domain) = true)
 (hcert : ∀ c ∈ cells, Certified c)
 (hlinks : ∀ c ∈ cells, SourceCertificate.Linked c CurrentSourceData.pieces) :
 FiniteSourceBound F := by
  apply sourceCriterion (D := D)
  refine ⟨continuous,zero,concave,(fun _ ht => derivative ht),derivative_continuous,
    (fun _ ht => derivative_pos ht),?_⟩
  intro t ht
  obtain ⟨domain,hmem,hdom⟩ := AnalyticBounds.ExpressionCertificate.covers_unit_sound
    (cells.map SourceCertificate.Cell.domain)
    hcover ht
  obtain ⟨c,hc,rfl⟩ := List.mem_map.mp hmem
  rcases hcert c hc with (hcheck | hright) | hfamily
  · exact (hlinks c hc).sound hcheck AllPieceFormulas ht.1 hdom
      (derivative_pos ht) (fun _ hs => tangent_support hs) (fun _ hA hAD => middle_support hA hAD)
  · exact RightNormalized.linked_sound (hlinks c hc) hright AllPieceFormulas ht.1 hdom
      (derivative_pos ht) (fun _ hs => tangent_support hs)
  · exact SourceCertificateFamily.Piece317.family_control (hfamily.contains hdom)


#print axioms finiteSource_of_certified_cells
end LuWang.SourceCertificateFamily
