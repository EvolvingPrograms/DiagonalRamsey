import Support.LuWang.CurrentSourceData
import Support.Published.Definitions.Def_DiagRamsey_LuWangSource
import Support.Published.Bridge.KernelRfl

set_option maxRecDepth 100000

namespace LuWangBridge

set_option maxHeartbeats 0 in
/-- Checked by the kernel, entry by entry. -/
theorem knotsData_eqS :
    DiagRamsey.luWangKnotData = LuWang.CurrentSourceData.knots.map fmtS := by
  kernel_rfl

end LuWangBridge
