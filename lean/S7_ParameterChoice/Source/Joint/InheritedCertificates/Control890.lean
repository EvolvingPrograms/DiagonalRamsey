import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate890
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (6424494192903/51229610848900 : ℚ), (112986000551/2000000000 : ℚ), (-1421484346711/200000000000 : ℚ)⟩,
  ⟨(6424494192903/51229610848900 : ℚ), (102963797403/803626292920 : ℚ), (26316947133/5000000000 : ℚ), (-170731885163/250000000000 : ℚ)⟩,
  ⟨(102963797403/803626292920 : ℚ), (7138954877/53988034540 : ℚ), (622628981/500000000 : ℚ), (-168108553637/1000000000000 : ℚ)⟩,
  ⟨(7138954877/53988034540 : ℚ), (59449067827/433652224800 : ℚ), (206871589/1250000000 : ℚ), (-25329456097/1000000000000 : ℚ)⟩,
  ⟨(59449067827/433652224800 : ℚ), (3764224269/26518320100 : ℚ), (-83798423/312500000 : ℚ), (3411961173/100000000000 : ℚ)⟩,
  ⟨(3764224269/26518320100 : ℚ), (16156471457/110615555800 : ℚ), (-600376893/1250000000 : ℚ), (32116702941/500000000000 : ℚ)⟩,
  ⟨(16156471457/110615555800 : ℚ), (243225473/1634596130 : ℚ), (-2954585351/5000000000 : ℚ), (80389877339/1000000000000 : ℚ)⟩,
  ⟨(243225473/1634596130 : ℚ), (441712389/2947132100 : ℚ), (-6399549541/10000000000 : ℚ), (87686641529/1000000000000 : ℚ)⟩,
  ⟨(441712389/2947132100 : ℚ), (3/20 : ℚ), (-6458492183/10000000000 : ℚ), (88570066307/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1541507817/8000000000 : ℚ), (-3/25 : ℚ), (55846341781/500000000000 : ℚ)⟩,
  ⟨(1541507817/8000000000 : ℚ), (1600450459/8000000000 : ℚ), (-441712389/3683915125 : ℚ), (82279498890853159/736783025000000000 : ℚ)⟩,
  ⟨(1600450459/8000000000 : ℚ), (1045414649/4000000000 : ℚ), (-486450946/4086490325 : ℚ), (18225927688633489347/163459613000000000000 : ℚ)⟩,
  ⟨(1045414649/4000000000 : ℚ), (399623107/1000000000 : ℚ), (-16156471457/138269444750 : ℚ), (30676033375017361837/276538889500000000000 : ℚ)⟩,
  ⟨(399623107/1000000000 : ℚ), (166201577/250000000 : ℚ), (-3764224269/33147900125 : ℚ), (14533894082750829273/132591600500000000000 : ℚ)⟩,
  ⟨(166201577/250000000 : ℚ), (1206871589/1000000000 : ℚ), (-59449067827/542065281000 : ℚ), (29008586108071399423/271032640500000000000 : ℚ)⟩,
  ⟨(1206871589/1000000000 : ℚ), (1022628981/400000000 : ℚ), (-7138954877/67485043175 : ℚ), (25114335919632645691/245400157000000000000 : ℚ)⟩,
  ⟨(1022628981/400000000 : ℚ), (30316947133/4000000000 : ℚ), (-102963797403/1004532866150 : ℚ), (171570619701807680309/1826423393000000000000 : ℚ)⟩,
  ⟨(30316947133/4000000000 : ℚ), (32/1 : ℚ), (-6424494192903/64037013561125 : ℚ), (360736183172986907267/4657237349900000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (191991092757/250000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(125056013621/1000000000000 : ℚ), (112986000551/2000000000 : ℚ), (-1421484346711/200000000000 : ℚ), 11⟩,
    ⟨(63468171307/500000000000 : ℚ), (26316947133/5000000000 : ℚ), (-170731885163/250000000000 : ℚ), 8⟩,
    ⟨(26082147511/200000000000 : ℚ), (622628981/500000000 : ℚ), (-168108553637/1000000000000 : ℚ), 7⟩,
    ⟨(527149427/3906250000 : ℚ), (206871589/1250000000 : ℚ), (-25329456097/1000000000000 : ℚ), 6⟩,
    ⟨(139863789759/1000000000000 : ℚ), (-83798423/312500000 : ℚ), (3411961173/100000000000 : ℚ), 6⟩,
    ⟨(28880661103/200000000000 : ℚ), (-600376893/1250000000 : ℚ), (32116702941/500000000000 : ℚ), 5⟩,
    ⟨(147877700457/1000000000000 : ℚ), (-2954585351/5000000000 : ℚ), (80389877339/1000000000000 : ℚ), 5⟩,
    ⟨(2995160589/20000000000 : ℚ), (-6399549541/10000000000 : ℚ), (87686641529/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6458492183/10000000000 : ℚ), (88570066307/1000000000000 : ℚ), 5⟩]
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control890.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control890.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate890
