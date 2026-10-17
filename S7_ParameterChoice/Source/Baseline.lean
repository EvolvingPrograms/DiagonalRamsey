import Support.LuWang.CurrentSourceAdmissible

/-! The fixed Lu–Wang baseline, including every certified source cell. -/
set_option autoImplicit false

namespace DiagonalRamsey.SourceBaseline

theorem finiteSource :
    LuWang.FiniteSourceBound LuWang.CurrentSourceGeometry.F :=
  LuWang.CurrentSourceAdmissible.finiteSource

#print axioms finiteSource
end DiagonalRamsey.SourceBaseline
