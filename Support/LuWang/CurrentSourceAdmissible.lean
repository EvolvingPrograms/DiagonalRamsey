module

public import Support.LuWang.SourceCertificateAll
public import Support.LuWang.CurrentSourceGeometry
public import Support.LuWang.SourceCertificateFamily.Assembly

@[expose] public section

/-! The current, fixed 2279-piece source, with all real analysis and every
finite closed-cell witness discharged by kernel-checked proofs. -/

set_option autoImplicit false

namespace LuWang.CurrentSourceAdmissible

open CurrentSourceGeometry

theorem finiteSource : FiniteSourceBound F :=
  SourceCertificateFamily.finiteSource_of_certified_cells SourceCertificateAll.cells
    (by simpa only [div_one] using SourceCertificateAll.all_covered)
    SourceCertificateAll.all_certified SourceCertificateAll.all_linked

#print axioms finiteSource

end LuWang.CurrentSourceAdmissible
