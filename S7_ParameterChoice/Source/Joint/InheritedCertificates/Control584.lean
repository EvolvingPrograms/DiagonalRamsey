import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate584
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(259456523173/1000000000000 : ℚ), (14256497526471/10000000000 : ℚ), (-370494884193263/1000000000000 : ℚ), 12⟩,
    ⟨(260036623163/1000000000000 : ℚ), (389877398407/2500000000 : ℚ), (-40927685403673/1000000000000 : ℚ), 9⟩,
    ⟨(130595618231/500000000000 : ℚ), (547101839781/10000000000 : ℚ), (-14562146550759/1000000000000 : ℚ), 8⟩,
    ⟨(262909243513/1000000000000 : ℚ), (269695667331/10000000000 : ℚ), (-729796454327/100000000000 : ℚ), 7⟩,
    ⟨(26517409897/100000000000 : ℚ), (156390463387/10000000000 : ℚ), (-4308357230499/1000000000000 : ℚ), 6⟩,
    ⟨(53592798207/200000000000 : ℚ), (995711243/100000000 : ℚ), (-2794776241163/1000000000000 : ℚ), 5⟩,
    ⟨(67813012881/250000000000 : ℚ), (4203201863/625000000 : ℚ), (-1923988558389/1000000000000 : ℚ), 5⟩,
    ⟨(275006614617/1000000000000 : ℚ), (4722600617/1000000000 : ℚ), (-688696174589/500000000000 : ℚ), 5⟩,
    ⟨(279191521817/1000000000000 : ℚ), (2126608427/625000000 : ℚ), (-126479787409/125000000000 : ℚ), 4⟩,
    ⟨(283766470183/1000000000000 : ℚ), (24905432573/10000000000 : ℚ), (-755270047441/1000000000000 : ℚ), 4⟩,
    ⟨(144343700229/500000000000 : ℚ), (3673309333/2000000000 : ℚ), (-568211737483/1000000000000 : ℚ), 4⟩,
    ⟨(73476730349/250000000000 : ℚ), (13535927329/10000000000 : ℚ), (-427568872351/1000000000000 : ℚ), 4⟩,
    ⟨(74843691539/250000000000 : ℚ), (61735901/62500000 : ℚ), (-319103391797/1000000000000 : ℚ), 4⟩,
    ⟨(76259569101/250000000000 : ℚ), (352449873/500000000 : ℚ), (-116826904239/500000000000 : ℚ), 3⟩,
    ⟨(310842909441/1000000000000 : ℚ), (192892847/400000000 : ℚ), (-82556189429/500000000000 : ℚ), 3⟩,
    ⟨(79183190869/250000000000 : ℚ), (1521262119/5000000000 : ℚ), (-21856859277/200000000000 : ℚ), 3⟩,
    ⟨(322651115997/1000000000000 : ℚ), (160102463/1000000000 : ℚ), (-12643052379/200000000000 : ℚ), 3⟩,
    ⟨(328540970033/1000000000000 : ℚ), (52529243/1250000000 : ℚ), (-1548742529/62500000000 : ℚ), 3⟩,
    ⟨(334345603069/1000000000000 : ℚ), (-278147313/5000000000 : ℚ), (1515732157/200000000000 : ℚ), 3⟩,
    ⟨(340009113317/1000000000000 : ℚ), (-685130109/5000000000 : ℚ), (35018020413/1000000000000 : ℚ), 3⟩,
    ⟨(345476958077/1000000000000 : ℚ), (-2052868327/10000000000 : ℚ), (29204903871/500000000000 : ℚ), 3⟩,
    ⟨(70139295803/200000000000 : ℚ), (-1313862017/5000000000 : ℚ), (19604206357/250000000000 : ℚ), 3⟩,
    ⟨(355617409291/1000000000000 : ℚ), (-3112838637/10000000000 : ℚ), (95546919187/1000000000000 : ℚ), 3⟩,
    ⟨(45024044707/125000000000 : ℚ), (-3522045829/10000000000 : ℚ), (55095614633/500000000000 : ℚ), 3⟩,
    ⟨(364377264857/1000000000000 : ℚ), (-1933008361/5000000000 : ℚ), (30662957903/250000000000 : ℚ), 3⟩,
    ⟨(368131827949/1000000000000 : ℚ), (-2076498553/5000000000 : ℚ), (13316201821/100000000000 : ℚ), 3⟩,
    ⟨(185709944219/500000000000 : ℚ), (-548668603/1250000000 : ℚ), (14190137149/100000000000 : ℚ), 3⟩,
    ⟨(46776222563/125000000000 : ℚ), (-57249379/125000000 : ℚ), (18625884427/125000000000 : ℚ), 3⟩,
    ⟨(9411865899/25000000000 : ℚ), (-1182123451/2500000000 : ℚ), (38645609651/250000000000 : ℚ), 3⟩,
    ⟨(94548160753/250000000000 : ℚ), (-604713079/1250000000 : ℚ), (39675822237/250000000000 : ℚ), 3⟩,
    ⟨(379347256311/1000000000000 : ℚ), (-1227375103/2500000000 : ℚ), (20177835653/125000000000 : ℚ), 3⟩,
    ⟨(3799273563/10000000000 : ℚ), (-1236275411/2500000000 : ℚ), (40693559829/250000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-989907611/2000000000 : ℚ), (162942806809/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (185098515667/500000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control584.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control584.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate584
