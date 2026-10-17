import S7_ParameterChoice.Source.Joint.Controls.ControlHardChecks
import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
namespace DiagonalRamsey.JointControlHardData
theorem actual_certOK : JointInheritedControls.control576.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control576.toD data sound
  all_goals decide +kernel
#print axioms actual_certOK
end DiagonalRamsey.JointControlHardData
