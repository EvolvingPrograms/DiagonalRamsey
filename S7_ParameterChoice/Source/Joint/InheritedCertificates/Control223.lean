import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate223
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(260127397643/1000000000000 : ℚ), (574091437121/625000000 : ℚ), (-119846569940789/500000000000 : ℚ), 11⟩,
    ⟨(261281753713/1000000000000 : ℚ), (996977882161/10000000000 : ℚ), (-26514326909407/1000000000000 : ℚ), 8⟩,
    ⟨(65894837193/250000000000 : ℚ), (34617765213/1000000000 : ℚ), (-4729985064333/500000000000 : ℚ), 6⟩,
    ⟨(66749513931/250000000000 : ℚ), (33761466451/2000000000 : ℚ), (-2380625131511/500000000000 : ℚ), 6⟩,
    ⟨(271504950553/1000000000000 : ℚ), (6055548307/625000000 : ℚ), (-17672088841/6250000000 : ℚ), 5⟩,
    ⟨(277056629397/1000000000000 : ℚ), (61149073183/10000000000 : ℚ), (-924294496087/500000000000 : ℚ), 4⟩,
    ⟨(141799813277/500000000000 : ℚ), (1641352709/400000000 : ℚ), (-642717751223/500000000000 : ℚ), 4⟩,
    ⟨(58214185877/200000000000 : ℚ), (14358713243/5000000000 : ℚ), (-232995396561/250000000000 : ℚ), 4⟩,
    ⟨(299398585159/1000000000000 : ℚ), (20702337791/10000000000 : ℚ), (-173906637517/250000000000 : ℚ), 3⟩,
    ⟨(154251197/500000000 : ℚ), (1523918171/1000000000 : ℚ), (-66219633279/125000000000 : ℚ), 3⟩,
    ⟨(50927149/160000000 : ℚ), (2844204861/2500000000 : ℚ), (-40883577421/100000000000 : ℚ), 3⟩,
    ⟨(41085142729/125000000000 : ℚ), (1070468951/1250000000 : ℚ), (-4967546391/15625000000 : ℚ), 3⟩,
    ⟨(339561748451/1000000000000 : ℚ), (6463465151/10000000000 : ℚ), (-247809035303/1000000000000 : ℚ), 3⟩,
    ⟨(175415857459/500000000000 : ℚ), (2430978699/5000000000 : ℚ), (-48142313453/250000000000 : ℚ), 2⟩,
    ⟨(22648906581/62500000000 : ℚ), (1809205387/5000000000 : ℚ), (-148255074901/1000000000000 : ℚ), 2⟩,
    ⟨(187051439579/500000000000 : ℚ), (659369631/2500000000 : ℚ), (-112155893161/1000000000000 : ℚ), 2⟩,
    ⟨(385879962897/1000000000000 : ℚ), (115813651/625000000 : ℚ), (-41181893661/500000000000 : ℚ), 2⟩,
    ⟨(397600336759/1000000000000 : ℚ), (609092547/5000000000 : ℚ), (-14376748241/250000000000 : ℚ), 2⟩,
    ⟨(12785972723/31250000000 : ℚ), (139840089/2000000000 : ℚ), (-36581266831/1000000000000 : ℚ), 2⟩,
    ⟨(420421093603/1000000000000 : ℚ), (271327333/10000000000 : ℚ), (-1177505773/62500000000 : ℚ), 2⟩,
    ⟨(215650850111/500000000000 : ℚ), (-83795713/10000000000 : ℚ), (-930343007/250000000000 : ℚ), 2⟩,
    ⟨(110422040201/250000000000 : ℚ), (-379956321/10000000000 : ℚ), (9202626257/1000000000000 : ℚ), 2⟩,
    ⟨(225740224027/500000000000 : ℚ), (-627609019/10000000000 : ℚ), (20260130889/1000000000000 : ℚ), 2⟩,
    ⟨(92116851379/200000000000 : ℚ), (-834743601/10000000000 : ℚ), (29704584493/1000000000000 : ℚ), 2⟩,
    ⟨(468911912669/1000000000000 : ℚ), (-251875379/2500000000 : ℚ), (37732446049/1000000000000 : ℚ), 2⟩,
    ⟨(952766431/2000000000 : ℚ), (-287654683/2500000000 : ℚ), (22248095437/500000000000 : ℚ), 2⟩,
    ⟨(241463106329/500000000000 : ℚ), (-19808547/156250000 : ℚ), (50113908661/1000000000000 : ℚ), 2⟩,
    ⟨(244238945751/500000000000 : ℚ), (-1361688529/10000000000 : ℚ), (54676447099/1000000000000 : ℚ), 2⟩,
    ⟨(49298478633/100000000000 : ℚ), (-717283827/5000000000 : ℚ), (14563186143/250000000000 : ℚ), 2⟩,
    ⟨(248201746641/500000000000 : ℚ), (-1487956021/10000000000 : ℚ), (60893790633/1000000000000 : ℚ), 2⟩,
    ⟨(498701088341/1000000000000 : ℚ), (-761481077/5000000000 : ℚ), (62635515627/1000000000000 : ℚ), 2⟩,
    ⟨(499855444411/1000000000000 : ℚ), (-154029311/1000000000 : ℚ), (3175040549/50000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1542451501/10000000000 : ℚ), (63608714917/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (331594581547/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control223.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control223.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate223
