module

public import S7_ParameterChoice.Source.Joint.Controls.ControlHardChecks
public import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls
public import S7_ParameterChoice.Source.Joint.Controls.ControlTransport

@[expose] public section
namespace DiagonalRamsey.JointControlHardData
theorem actual_certOK : JointInheritedControls.control576.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control576.toD data sound
  all_goals decide +kernel
#print axioms actual_certOK
end DiagonalRamsey.JointControlHardData
