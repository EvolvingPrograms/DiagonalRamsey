import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate133
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(285476988211/1000000000000 : ℚ), (5016424082551/5000000000 : ℚ), (-71830952166051/250000000000 : ℚ), 11⟩,
    ⟨(35843746401/125000000000 : ℚ), (1088880695133/10000000000 : ℚ), (-31784679652601/1000000000000 : ℚ), 8⟩,
    ⟨(289283677679/1000000000000 : ℚ), (47257767063/1250000000 : ℚ), (-5670787659653/500000000000 : ℚ), 6⟩,
    ⟨(293053706647/1000000000000 : ℚ), (92174050383/5000000000 : ℚ), (-114186324221/20000000000 : ℚ), 5⟩,
    ⟨(298023750671/1000000000000 : ℚ), (105812150573/10000000000 : ℚ), (-3391529007021/1000000000000 : ℚ), 5⟩,
    ⟨(30414594551/100000000000 : ℚ), (33395669083/5000000000 : ℚ), (-2218268531203/1000000000000 : ℚ), 4⟩,
    ⟨(155680665541/500000000000 : ℚ), (44835447231/10000000000 : ℚ), (-154345156009/100000000000 : ℚ), 4⟩,
    ⟨(319600419279/1000000000000 : ℚ), (31397176863/10000000000 : ℚ), (-1120028989229/1000000000000 : ℚ), 3⟩,
    ⟨(164391931589/500000000000 : ℚ), (11328201157/5000000000 : ℚ), (-836994939229/1000000000000 : ℚ), 3⟩,
    ⟨(169411610597/500000000000 : ℚ), (16702406193/10000000000 : ℚ), (-638469223613/1000000000000 : ℚ), 3⟩,
    ⟨(349621808821/1000000000000 : ℚ), (12496313471/10000000000 : ℚ), (-61729496113/125000000000 : ℚ), 3⟩,
    ⟨(361075629757/1000000000000 : ℚ), (9435746411/10000000000 : ℚ), (-77036646299/200000000000 : ℚ), 3⟩,
    ⟨(74614875489/200000000000 : ℚ), (286125829/400000000 : ℚ), (-301468206407/1000000000000 : ℚ), 2⟩,
    ⟨(192751248693/500000000000 : ℚ), (216590687/400000000 : ℚ), (-29448264193/125000000000 : ℚ), 2⟩,
    ⟨(398240299991/1000000000000 : ℚ), (127087707/312500000 : ℚ), (-182801349191/1000000000000 : ℚ), 2⟩,
    ⟨(411165113257/1000000000000 : ℚ), (120205129/400000000 : ℚ), (-139862488053/1000000000000 : ℚ), 2⟩,
    ⟨(424152464169/1000000000000 : ℚ), (2157496081/10000000000 : ℚ), (-52240224447/500000000000 : ℚ), 2⟩,
    ⟨(87415455487/200000000000 : ℚ), (147275109/1000000000 : ℚ), (-18752231953/250000000000 : ℚ), 2⟩,
    ⟨(11245377001/25000000000 : ℚ), (228501331/2500000000 : ℚ), (-25121093187/500000000000 : ℚ), 2⟩,
    ⟨(462243199981/1000000000000 : ℚ), (227121697/5000000000 : ℚ), (-457552957/15625000000 : ℚ), 2⟩,
    ⟨(474241947669/1000000000000 : ℚ), (36705349/5000000000 : ℚ), (-11456696321/1000000000000 : ℚ), 2⟩,
    ⟨(242847884303/500000000000 : ℚ), (-243554809/10000000000 : ℚ), (3752750341/1000000000000 : ℚ), 2⟩,
    ⟨(62061794529/125000000000 : ℚ), (-127019423/2500000000 : ℚ), (16740610587/1000000000000 : ℚ), 2⟩,
    ⟨(63316714281/125000000000 : ℚ), (-91111641/1250000000 : ℚ), (27812953139/1000000000000 : ℚ), 2⟩,
    ⟨(515717158147/1000000000000 : ℚ), (-912719591/10000000000 : ℚ), (37207557939/1000000000000 : ℚ), 2⟩,
    ⟨(65494530793/125000000000 : ℚ), (-1064741863/10000000000 : ℚ), (4510944833/100000000000 : ℚ), 2⟩,
    ⟨(132792907979/250000000000 : ℚ), (-1188961187/10000000000 : ℚ), (2066493541/40000000000 : ℚ), 2⟩,
    ⟨(107458765351/200000000000 : ℚ), (-1288450773/10000000000 : ℚ), (28488566893/500000000000 : ℚ), 2⟩,
    ⟨(542263870779/1000000000000 : ℚ), (-1365542643/10000000000 : ℚ), (61138258587/1000000000000 : ℚ), 2⟩,
    ⟨(546033899747/1000000000000 : ℚ), (-355490907/2500000000 : ℚ), (64208346107/1000000000000 : ℚ), 2⟩,
    ⟨(274283803109/500000000000 : ℚ), (-729466337/5000000000 : ℚ), (2649265959/40000000000 : ℚ), 2⟩,
    ⟨(109968117843/200000000000 : ℚ), (-1477227751/10000000000 : ℚ), (67236420163/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-369876463/2500000000 : ℚ), (8420212193/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (270759469719/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control133.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control133.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate133
