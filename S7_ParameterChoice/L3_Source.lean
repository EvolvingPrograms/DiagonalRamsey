import S7_ParameterChoice.Source.Baseline
import S7_ParameterChoice.Source.Joint.Assembly.RawAssembly
import S7_ParameterChoice.Source.Joint.Assembly.BaselineInputs

/-! The exact chosen source follows from the actual Lu–Wang baseline,
all original proper-host pieces and the checked joint source covers. -/
set_option autoImplicit false
namespace DiagonalRamsey

theorem source_bound : SourceAdmissible (sourceA : ℝ) (sourceB : ℝ) :=
  JointBaseline.chosen_source_admissible SourceBaseline.finiteSource JointRawAssembly.all_pieces

#print axioms source_bound
end DiagonalRamsey
