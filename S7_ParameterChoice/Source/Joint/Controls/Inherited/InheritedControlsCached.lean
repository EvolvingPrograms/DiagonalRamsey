import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
import Support.Controls.ControlBank.K_10_12_0Certificate
import Support.Controls.ControlBank.K_11_12_0Certificate
import Support.Controls.ControlBank.K_12_12_0Certificate
import Support.Controls.ControlBank.K_13_12_0Certificate
import Support.Controls.ControlBank.K_14_12_0Certificate
import Support.Controls.ControlBank.K_22_12_0Certificate
import Support.Controls.ControlBank.K_23_12_0Certificate
import Support.Controls.ControlBank.K_27_12_0Certificate
import Support.Controls.ControlBank.K_30_12_0Certificate
import Support.Controls.ControlBank.K_31_12_0Certificate
import Support.Controls.ControlBank.K_31_12_1Certificate
import Support.Controls.ControlBank.K_35_12_0Certificate
import Support.Controls.ControlBank.K_35_12_1Certificate
import Support.Controls.ControlBank.K_35_1_20Certificate
import Support.Controls.ControlBank.K_38_12_0Certificate
import Support.Controls.ControlBank.K_38_12_1Certificate
import Support.Controls.ControlBank.K_39_12_0Certificate
import Support.Controls.ControlBank.K_39_12_1Certificate
import Support.Controls.ControlBank.K_3_12_0Certificate
import Support.Controls.ControlBank.K_42_12_0Certificate
import Support.Controls.ControlBank.K_44_12_0Certificate
import Support.Controls.ControlBank.K_44_12_1Certificate
import Support.Controls.ControlBank.K_45_12_0Certificate
import Support.Controls.ControlBank.K_47_12_0Certificate
import Support.Controls.ControlBank.K_47_12_1Certificate
import Support.Controls.ControlBank.K_47_12_2Certificate
import Support.Controls.ControlBank.K_48_12_0Certificate
import Support.Controls.ControlBank.K_4_12_0Certificate
import Support.Controls.ControlBank.K_52_9_4Certificate
import Support.Controls.ControlBank.K_5_12_0Certificate
import Support.Controls.ControlBank.K_8_12_0Certificate

set_option autoImplicit false
set_option maxRecDepth 100000
namespace DiagonalRamsey.JointInheritedControlsCached
open JointInheritedControls JointGeometry
theorem control1_certOK : JointInheritedControls.control1.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control1.toD RamseyAnalytic.ControlBank.K_10_12_0Certificate.data RamseyAnalytic.ControlBank.K_10_12_0Certificate.sound
  all_goals decide +kernel
theorem control2_certOK : JointInheritedControls.control2.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control2.toD RamseyAnalytic.ControlBank.K_11_12_0Certificate.data RamseyAnalytic.ControlBank.K_11_12_0Certificate.sound
  all_goals decide +kernel
theorem control3_certOK : JointInheritedControls.control3.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control3.toD RamseyAnalytic.ControlBank.K_12_12_0Certificate.data RamseyAnalytic.ControlBank.K_12_12_0Certificate.sound
  all_goals decide +kernel
theorem control4_certOK : JointInheritedControls.control4.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control4.toD RamseyAnalytic.ControlBank.K_13_12_0Certificate.data RamseyAnalytic.ControlBank.K_13_12_0Certificate.sound
  all_goals decide +kernel
theorem control5_certOK : JointInheritedControls.control5.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control5.toD RamseyAnalytic.ControlBank.K_14_12_0Certificate.data RamseyAnalytic.ControlBank.K_14_12_0Certificate.sound
  all_goals decide +kernel
theorem control29_certOK : JointInheritedControls.control29.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control29.toD RamseyAnalytic.ControlBank.K_22_12_0Certificate.data RamseyAnalytic.ControlBank.K_22_12_0Certificate.sound
  all_goals decide +kernel
theorem control33_certOK : JointInheritedControls.control33.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control33.toD RamseyAnalytic.ControlBank.K_23_12_0Certificate.data RamseyAnalytic.ControlBank.K_23_12_0Certificate.sound
  all_goals decide +kernel
theorem control53_certOK : JointInheritedControls.control53.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control53.toD RamseyAnalytic.ControlBank.K_27_12_0Certificate.data RamseyAnalytic.ControlBank.K_27_12_0Certificate.sound
  all_goals decide +kernel
theorem control79_certOK : JointInheritedControls.control79.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control79.toD RamseyAnalytic.ControlBank.K_30_12_0Certificate.data RamseyAnalytic.ControlBank.K_30_12_0Certificate.sound
  all_goals decide +kernel
theorem control89_certOK : JointInheritedControls.control89.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control89.toD RamseyAnalytic.ControlBank.K_31_12_0Certificate.data RamseyAnalytic.ControlBank.K_31_12_0Certificate.sound
  all_goals decide +kernel
theorem control90_certOK : JointInheritedControls.control90.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control90.toD RamseyAnalytic.ControlBank.K_31_12_1Certificate.data RamseyAnalytic.ControlBank.K_31_12_1Certificate.sound
  all_goals decide +kernel
theorem control142_certOK : JointInheritedControls.control142.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control142.toD RamseyAnalytic.ControlBank.K_35_12_0Certificate.data RamseyAnalytic.ControlBank.K_35_12_0Certificate.sound
  all_goals decide +kernel
theorem control143_certOK : JointInheritedControls.control143.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control143.toD RamseyAnalytic.ControlBank.K_35_12_1Certificate.data RamseyAnalytic.ControlBank.K_35_12_1Certificate.sound
  all_goals decide +kernel
theorem control151_certOK : JointInheritedControls.control151.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control151.toD RamseyAnalytic.ControlBank.K_35_1_20Certificate.data RamseyAnalytic.ControlBank.K_35_1_20Certificate.sound
  all_goals decide +kernel
theorem control217_certOK : JointInheritedControls.control217.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control217.toD RamseyAnalytic.ControlBank.K_38_12_0Certificate.data RamseyAnalytic.ControlBank.K_38_12_0Certificate.sound
  all_goals decide +kernel
theorem control218_certOK : JointInheritedControls.control218.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control218.toD RamseyAnalytic.ControlBank.K_38_12_1Certificate.data RamseyAnalytic.ControlBank.K_38_12_1Certificate.sound
  all_goals decide +kernel
theorem control252_certOK : JointInheritedControls.control252.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control252.toD RamseyAnalytic.ControlBank.K_39_12_0Certificate.data RamseyAnalytic.ControlBank.K_39_12_0Certificate.sound
  all_goals decide +kernel
theorem control253_certOK : JointInheritedControls.control253.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control253.toD RamseyAnalytic.ControlBank.K_39_12_1Certificate.data RamseyAnalytic.ControlBank.K_39_12_1Certificate.sound
  all_goals decide +kernel
theorem control289_certOK : JointInheritedControls.control289.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control289.toD RamseyAnalytic.ControlBank.K_3_12_0Certificate.data RamseyAnalytic.ControlBank.K_3_12_0Certificate.sound
  all_goals decide +kernel
theorem control377_certOK : JointInheritedControls.control377.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control377.toD RamseyAnalytic.ControlBank.K_42_12_0Certificate.data RamseyAnalytic.ControlBank.K_42_12_0Certificate.sound
  all_goals decide +kernel
theorem control475_certOK : JointInheritedControls.control475.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control475.toD RamseyAnalytic.ControlBank.K_44_12_0Certificate.data RamseyAnalytic.ControlBank.K_44_12_0Certificate.sound
  all_goals decide +kernel
theorem control476_certOK : JointInheritedControls.control476.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control476.toD RamseyAnalytic.ControlBank.K_44_12_1Certificate.data RamseyAnalytic.ControlBank.K_44_12_1Certificate.sound
  all_goals decide +kernel
theorem control510_certOK : JointInheritedControls.control510.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control510.toD RamseyAnalytic.ControlBank.K_45_12_0Certificate.data RamseyAnalytic.ControlBank.K_45_12_0Certificate.sound
  all_goals decide +kernel
theorem control572_certOK : JointInheritedControls.control572.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control572.toD RamseyAnalytic.ControlBank.K_47_12_0Certificate.data RamseyAnalytic.ControlBank.K_47_12_0Certificate.sound
  all_goals decide +kernel
theorem control573_certOK : JointInheritedControls.control573.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control573.toD RamseyAnalytic.ControlBank.K_47_12_1Certificate.data RamseyAnalytic.ControlBank.K_47_12_1Certificate.sound
  all_goals decide +kernel
theorem control574_certOK : JointInheritedControls.control574.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control574.toD RamseyAnalytic.ControlBank.K_47_12_2Certificate.data RamseyAnalytic.ControlBank.K_47_12_2Certificate.sound
  all_goals decide +kernel
theorem control596_certOK : JointInheritedControls.control596.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control596.toD RamseyAnalytic.ControlBank.K_48_12_0Certificate.data RamseyAnalytic.ControlBank.K_48_12_0Certificate.sound
  all_goals decide +kernel
theorem control631_certOK : JointInheritedControls.control631.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control631.toD RamseyAnalytic.ControlBank.K_4_12_0Certificate.data RamseyAnalytic.ControlBank.K_4_12_0Certificate.sound
  all_goals decide +kernel
theorem control684_certOK : JointInheritedControls.control684.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control684.toD RamseyAnalytic.ControlBank.K_52_9_4Certificate.data RamseyAnalytic.ControlBank.K_52_9_4Certificate.sound
  all_goals decide +kernel
theorem control799_certOK : JointInheritedControls.control799.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control799.toD RamseyAnalytic.ControlBank.K_5_12_0Certificate.data RamseyAnalytic.ControlBank.K_5_12_0Certificate.sound
  all_goals decide +kernel
theorem control916_certOK : JointInheritedControls.control916.toD.CertOK := by
  apply certOK_of_sound JointInheritedControls.control916.toD RamseyAnalytic.ControlBank.K_8_12_0Certificate.data RamseyAnalytic.ControlBank.K_8_12_0Certificate.sound
  all_goals decide +kernel
def checkedIndices : List ℕ := [1, 2, 3, 4, 5, 29, 33, 53, 79, 89, 90, 142, 143, 151, 217, 218, 252, 253, 289, 377, 475, 476, 510, 572, 573, 574, 596, 631, 684, 799, 916]
theorem certOK_of_mem (i : ℕ) (hi : i ∈ checkedIndices) : (control i).toD.CertOK := by
  simp only [checkedIndices, List.mem_cons, List.not_mem_nil, or_false] at hi
  rcases hi with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30
  · subst i; exact control1_certOK
  · subst i; exact control2_certOK
  · subst i; exact control3_certOK
  · subst i; exact control4_certOK
  · subst i; exact control5_certOK
  · subst i; exact control29_certOK
  · subst i; exact control33_certOK
  · subst i; exact control53_certOK
  · subst i; exact control79_certOK
  · subst i; exact control89_certOK
  · subst i; exact control90_certOK
  · subst i; exact control142_certOK
  · subst i; exact control143_certOK
  · subst i; exact control151_certOK
  · subst i; exact control217_certOK
  · subst i; exact control218_certOK
  · subst i; exact control252_certOK
  · subst i; exact control253_certOK
  · subst i; exact control289_certOK
  · subst i; exact control377_certOK
  · subst i; exact control475_certOK
  · subst i; exact control476_certOK
  · subst i; exact control510_certOK
  · subst i; exact control572_certOK
  · subst i; exact control573_certOK
  · subst i; exact control574_certOK
  · subst i; exact control596_certOK
  · subst i; exact control631_certOK
  · subst i; exact control684_certOK
  · subst i; exact control799_certOK
  · subst i; exact control916_certOK
#print axioms certOK_of_mem
end DiagonalRamsey.JointInheritedControlsCached
