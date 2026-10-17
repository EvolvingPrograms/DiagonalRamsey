import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate835
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7298402191/12500000000 : ℚ), (16670973341303/10000000000 : ℚ), (-243516095215107/250000000000 : ℚ), 14⟩,
    ⟨(73053878189/125000000000 : ℚ), (458260102207/2500000000 : ℚ), (-21513219113599/200000000000 : ℚ), 11⟩,
    ⟨(585543343941/1000000000000 : ℚ), (323849759999/5000000000 : ℚ), (-19123412301087/500000000000 : ℚ), 9⟩,
    ⟨(293599209167/500000000000 : ℚ), (321910109081/10000000000 : ℚ), (-19149410552059/1000000000000 : ℚ), 8⟩,
    ⟨(589380309419/1000000000000 : ℚ), (188292665773/10000000000 : ℚ), (-5645619342411/500000000000 : ℚ), 7⟩,
    ⟨(592068004393/1000000000000 : ℚ), (120950317193/10000000000 : ℚ), (-1828587659383/250000000000 : ℚ), 7⟩,
    ⟨(595235619283/1000000000000 : ℚ), (82425759061/10000000000 : ℚ), (-1005599260391/200000000000 : ℚ), 6⟩,
    ⟨(598852648227/1000000000000 : ℚ), (14602249401/2500000000 : ℚ), (-3594491148537/1000000000000 : ℚ), 6⟩,
    ⟨(602884257259/1000000000000 : ℚ), (5309627731/1250000000 : ℚ), (-1318723180591/500000000000 : ℚ), 6⟩,
    ⟨(607291619779/1000000000000 : ℚ), (31400409953/10000000000 : ℚ), (-393477184637/200000000000 : ℚ), 5⟩,
    ⟨(306016145239/500000000000 : ℚ), (4682425211/2000000000 : ℚ), (-1480489191679/1000000000000 : ℚ), 5⟩,
    ⟨(123412122821/200000000000 : ℚ), (17479734177/10000000000 : ℚ), (-1115999791967/1000000000000 : ℚ), 5⟩,
    ⟨(311164082577/500000000000 : ℚ), (12967527953/10000000000 : ℚ), (-209110238599/250000000000 : ℚ), 5⟩,
    ⟨(627784214231/1000000000000 : ℚ), (4733464633/5000000000 : ℚ), (-617677538837/1000000000000 : ℚ), 5⟩,
    ⟨(316688108299/500000000000 : ℚ), (3352896893/5000000000 : ℚ), (-17743913827/40000000000 : ℚ), 5⟩,
    ⟨(319525159109/500000000000 : ℚ), (2248653443/5000000000 : ℚ), (-75778657151/250000000000 : ℚ), 4⟩,
    ⟨(644751874389/1000000000000 : ℚ), (2709891853/10000000000 : ℚ), (-9419887957/50000000000 : ℚ), 4⟩,
    ⟨(81303247001/125000000000 : ℚ), (249762551/2000000000 : ℚ), (-46896418079/500000000000 : ℚ), 4⟩,
    ⟨(82002247297/125000000000 : ℚ), (2227829/500000000 : ℚ), (-3784429171/250000000000 : ℚ), 4⟩,
    ⟨(165368506863/250000000000 : ℚ), (-477356877/5000000000 : ℚ), (25340913983/500000000000 : ℚ), 4⟩,
    ⟨(666741578501/1000000000000 : ℚ), (-894092707/5000000000 : ℚ), (21205652053/200000000000 : ℚ), 4⟩,
    ⟨(41985618883/62500000000 : ℚ), (-1242908843/5000000000 : ℚ), (15271407047/100000000000 : ℚ), 4⟩,
    ⟨(676510572827/1000000000000 : ℚ), (-307071879/1000000000 : ℚ), (192142055289/1000000000000 : ℚ), 4⟩,
    ⟨(170229483837/250000000000 : ℚ), (-3560826961/10000000000 : ℚ), (225404643287/1000000000000 : ℚ), 4⟩,
    ⟨(684949544379/1000000000000 : ℚ), (-1985059733/5000000000 : ℚ), (253355443221/1000000000000 : ℚ), 4⟩,
    ⟨(688566573323/1000000000000 : ℚ), (-430949553/1000000000 : ℚ), (276661623219/1000000000000 : ℚ), 4⟩,
    ⟨(345867094107/500000000000 : ℚ), (-4587429907/10000000000 : ℚ), (147921412557/500000000000 : ℚ), 4⟩,
    ⟨(694421883187/1000000000000 : ℚ), (-2405230969/5000000000 : ℚ), (155650217131/500000000000 : ℚ), 4⟩,
    ⟨(696603774273/1000000000000 : ℚ), (-996712739/2000000000 : ℚ), (161669879361/500000000000 : ℚ), 4⟩,
    ⟨(139651769733/200000000000 : ℚ), (-5110416491/10000000000 : ℚ), (332186818537/1000000000000 : ℚ), 4⟩,
    ⟨(139874233419/200000000000 : ℚ), (-5193615143/10000000000 : ℚ), (169000425109/500000000000 : ℚ), 4⟩,
    ⟨(349965008663/500000000000 : ℚ), (-2617406289/5000000000 : ℚ), (340883229323/1000000000000 : ℚ), 4⟩,
    ⟨(7/10 : ℚ), (-2619971819/5000000000 : ℚ), (85310596387/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (236588539459/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control835.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control835.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate835
