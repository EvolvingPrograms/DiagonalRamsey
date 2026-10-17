import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate134
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(320339678263/1000000000000 : ℚ), (10651199825207/10000000000 : ℚ), (-342225562785739/1000000000000 : ℚ), 11⟩,
    ⟨(321685507619/1000000000000 : ℚ), (1157160251019/10000000000 : ℚ), (-37858747113483/1000000000000 : ℚ), 8⟩,
    ⟨(324364205257/1000000000000 : ℚ), (402340365113/10000000000 : ℚ), (-13509486444331/1000000000000 : ℚ), 6⟩,
    ⟨(10260936683/31250000000 : ℚ), (196509035833/10000000000 : ℚ), (-2176356867/320000000 : ℚ), 5⟩,
    ⟨(83401107071/250000000000 : ℚ), (14124068663/1250000000 : ℚ), (-505070679133/125000000000 : ℚ), 5⟩,
    ⟨(13603078611/40000000000 : ℚ), (8932092993/1250000000 : ℚ), (-2643265483009/1000000000000 : ℚ), 4⟩,
    ⟨(347705250757/1000000000000 : ℚ), (4806043031/1000000000 : ℚ), (-459920208199/250000000000 : ℚ), 4⟩,
    ⟨(356415820171/1000000000000 : ℚ), (16862138083/5000000000 : ℚ), (-1335557070333/1000000000000 : ℚ), 3⟩,
    ⟨(183062392987/500000000000 : ℚ), (12194480953/5000000000 : ℚ), (-39947092669/40000000000 : ℚ), 3⟩,
    ⟨(94184661379/250000000000 : ℚ), (18023237611/10000000000 : ℚ), (-762483126061/1000000000000 : ℚ), 3⟩,
    ⟨(388155181527/1000000000000 : ℚ), (3380521577/2500000000 : ℚ), (-118101449613/200000000000 : ℚ), 3⟩,
    ⟨(200132223263/500000000000 : ℚ), (2048869519/2000000000 : ℚ), (-461413249331/1000000000000 : ℚ), 3⟩,
    ⟨(412949821671/1000000000000 : ℚ), (7798483053/10000000000 : ℚ), (-362045858769/1000000000000 : ℚ), 2⟩,
    ⟨(53261142483/125000000000 : ℚ), (2967632827/5000000000 : ℚ), (-141969916103/500000000000 : ℚ), 2⟩,
    ⟨(439555862289/1000000000000 : ℚ), (4490528377/10000000000 : ℚ), (-55362846631/250000000000 : ℚ), 2⟩,
    ⟨(453220297047/1000000000000 : ℚ), (3352986739/10000000000 : ℚ), (-170704153567/1000000000000 : ℚ), 2⟩,
    ⟨(466950848161/1000000000000 : ℚ), (2445345681/10000000000 : ℚ), (-64483844631/500000000000 : ℚ), 2⟩,
    ⟨(480615282919/1000000000000 : ℚ), (34255731/200000000 : ℚ), (-18855379437/200000000000 : ℚ), 2⟩,
    ⟨(15440062667/31250000000 : ℚ), (557862021/5000000000 : ℚ), (-32595613969/500000000000 : ℚ), 2⟩,
    ⟨(507221323537/1000000000000 : ℚ), (625122081/10000000000 : ℚ), (-40637911647/1000000000000 : ℚ), 2⟩,
    ⟨(259953349341/500000000000 : ℚ), (43878193/2000000000 : ℚ), (-19807305509/1000000000000 : ℚ), 2⟩,
    ⟨(3325099773/6250000000 : ℚ), (-23542317/2000000000 : ℚ), (-1040736419/500000000000 : ℚ), 2⟩,
    ⟨(135858124923/250000000000 : ℚ), (-79705331/2000000000 : ℚ), (13015522833/1000000000000 : ℚ), 2⟩,
    ⟨(277023179617/500000000000 : ℚ), (-632506803/10000000000 : ℚ), (6463203089/250000000000 : ℚ), 2⟩,
    ⟨(140938831259/250000000000 : ℚ), (-413467569/5000000000 : ℚ), (917950521/25000000000 : ℚ), 2⟩,
    ⟨(572465894451/1000000000000 : ℚ), (-493721017/5000000000 : ℚ), (4583569153/100000000000 : ℚ), 2⟩,
    ⟨(580094179933/1000000000000 : ℚ), (-223675997/2000000000 : ℚ), (2135233751/40000000000 : ℚ), 2⟩,
    ⟨(586566716923/1000000000000 : ℚ), (-611548667/5000000000 : ℚ), (59489024039/1000000000000 : ℚ), 2⟩,
    ⟨(73977646419/125000000000 : ℚ), (-1304138581/10000000000 : ℚ), (12852755063/200000000000 : ℚ), 2⟩,
    ⟨(595806939951/1000000000000 : ℚ), (-54535611/400000000 : ℚ), (67782162417/1000000000000 : ℚ), 2⟩,
    ⟨(598485637589/1000000000000 : ℚ), (-1402185479/10000000000 : ℚ), (70098785591/1000000000000 : ℚ), 2⟩,
    ⟨(119966293389/200000000000 : ℚ), (-355343911/2500000000 : ℚ), (35624289259/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-284752959/2000000000 : ℚ), (71391907427/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (1249329813/5000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control134.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control134.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate134
