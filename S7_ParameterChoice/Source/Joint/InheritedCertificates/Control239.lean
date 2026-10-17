import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate239
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18937981599/62500000000 : ℚ), (3260945487391/2500000000 : ℚ), (-19806534823883/50000000000 : ℚ), 11⟩,
    ⟨(151977852841/500000000000 : ℚ), (355655937257/2500000000 : ℚ), (-43797924363283/1000000000000 : ℚ), 8⟩,
    ⟨(305842576121/1000000000000 : ℚ), (497221930347/10000000000 : ℚ), (-15611231097541/1000000000000 : ℚ), 7⟩,
    ⟨(61730029061/200000000000 : ℚ), (244211278157/10000000000 : ℚ), (-7845415564709/1000000000000 : ℚ), 6⟩,
    ⟨(39043921851/125000000000 : ℚ), (28236294663/2000000000 : ℚ), (-2324748196119/500000000000 : ℚ), 5⟩,
    ⟨(39613827471/125000000000 : ℚ), (17942012559/2000000000 : ℚ), (-606320746007/200000000000 : ℚ), 5⟩,
    ⟨(322283972163/1000000000000 : ℚ), (30281580919/5000000000 : ℚ), (-210094144711/100000000000 : ℚ), 4⟩,
    ⟨(41052460459/125000000000 : ℚ), (42595915759/10000000000 : ℚ), (-303378786513/200000000000 : ℚ), 4⟩,
    ⟨(335258664039/1000000000000 : ℚ), (30818928557/10000000000 : ℚ), (-1126418218257/1000000000000 : ℚ), 4⟩,
    ⟨(68547010029/200000000000 : ℚ), (22731489549/10000000000 : ℚ), (-426237896823/500000000000 : ℚ), 3⟩,
    ⟨(21923552519/62500000000 : ℚ), (3394101209/2000000000 : ℚ), (-81607497303/125000000000 : ℚ), 3⟩,
    ⟨(359306587681/1000000000000 : ℚ), (6371603607/5000000000 : ℚ), (-502877834391/1000000000000 : ℚ), 3⟩,
    ⟨(368242146147/1000000000000 : ℚ), (76513019/80000000 : ℚ), (-193652697413/500000000000 : ℚ), 3⟩,
    ⟨(377497461387/1000000000000 : ℚ), (7123266707/10000000000 : ℚ), (-148173284703/500000000000 : ℚ), 3⟩,
    ⟨(193491699829/500000000000 : ℚ), (1303924301/2500000000 : ℚ), (-111735198621/500000000000 : ℚ), 3⟩,
    ⟨(396608606187/1000000000000 : ℚ), (1850980849/5000000000 : ℚ), (-3283824309/20000000000 : ℚ), 2⟩,
    ⟨(16251215399/40000000000 : ℚ), (1242398023/5000000000 : ℚ), (-57674774737/500000000000 : ℚ), 2⟩,
    ⟨(83181118301/200000000000 : ℚ), (373731201/2500000000 : ℚ), (-74671858709/1000000000000 : ℚ), 2⟩,
    ⟨(17015661191/40000000000 : ℚ), (341054979/5000000000 : ℚ), (-1619681663/40000000000 : ℚ), 2⟩,
    ⟨(54330855627/125000000000 : ℚ), (1870019/2000000000 : ℚ), (-5785079687/500000000000 : ℚ), 2⟩,
    ⟨(443582403481/1000000000000 : ℚ), (-68871481/1250000000 : ℚ), (13028573229/1000000000000 : ℚ), 2⟩,
    ⟨(226056075429/500000000000 : ℚ), (-254925597/2500000000 : ℚ), (34016398881/1000000000000 : ℚ), 2⟩,
    ⟨(460153941017/1000000000000 : ℚ), (-353181231/2500000000 : ℚ), (12985138969/250000000000 : ℚ), 2⟩,
    ⟨(467630327123/1000000000000 : ℚ), (-348446129/2000000000 : ℚ), (6722408333/100000000000 : ℚ), 2⟩,
    ⟨(47446930749/100000000000 : ℚ), (-1008812671/5000000000 : ℚ), (80195228383/1000000000000 : ℚ), 2⟩,
    ⟨(480605018999/1000000000000 : ℚ), (-2246184597/10000000000 : ℚ), (91108942181/1000000000000 : ℚ), 2⟩,
    ⟨(242989185697/500000000000 : ℚ), (-2433531967/10000000000 : ℚ), (10016277787/100000000000 : ℚ), 2⟩,
    ⟨(245268808177/500000000000 : ℚ), (-1291995213/5000000000 : ℚ), (107508749237/1000000000000 : ℚ), 2⟩,
    ⟨(247119422929/500000000000 : ℚ), (-540168251/2000000000 : ℚ), (56631102847/500000000000 : ℚ), 2⟩,
    ⟨(248523207521/500000000000 : ℚ), (-1393256917/5000000000 : ℚ), (2937711147/25000000000 : ℚ), 2⟩,
    ⟨(12473332137/25000000000 : ℚ), (-568544473/2000000000 : ℚ), (12030755671/100000000000 : ℚ), 2⟩,
    ⟨(499881285579/1000000000000 : ℚ), (-2870560421/10000000000 : ℚ), (1521222593/12500000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2874027837/10000000000 : ℚ), (12187115763/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (137454418519/500000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control239.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control239.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate239
