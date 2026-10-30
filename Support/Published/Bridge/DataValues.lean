module

public import Support.LuWang.CurrentSourceData
public import Support.Published.Definitions.Def_DiagRamsey_LuWangSource
public import Support.Published.Bridge.KernelRfl

@[expose] public section

set_option maxRecDepth 100000

namespace LuWangBridge

set_option maxHeartbeats 0 in
/-- Checked by the kernel, entry by entry. -/
theorem valuesData_eqS :
    DiagRamsey.luWangValueData = LuWang.CurrentSourceData.values.map fmtS := by
  kernel_rfl

end LuWangBridge
