import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate52
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25261298321/62500000000 : ℚ), (10967027966191/10000000000 : ℚ), (-222377969550301/500000000000 : ℚ), 10⟩,
    ⟨(203042801147/500000000000 : ℚ), (148645900423/1250000000 : ℚ), (-24605507141943/500000000000 : ℚ), 7⟩,
    ⟨(204938458031/500000000000 : ℚ), (82476156941/2000000000 : ℚ), (-8784053174627/500000000000 : ℚ), 6⟩,
    ⟨(415518202017/1000000000000 : ℚ), (200837867567/10000000000 : ℚ), (-4425502486269/500000000000 : ℚ), 5⟩,
    ⟨(422955131491/1000000000000 : ℚ), (57582713947/5000000000 : ℚ), (-5264620781323/1000000000000 : ℚ), 4⟩,
    ⟨(432116082789/1000000000000 : ℚ), (36331517667/5000000000 : ℚ), (-1725050367167/500000000000 : ℚ), 4⟩,
    ⟨(442912830941/1000000000000 : ℚ), (24398305191/5000000000 : ℚ), (-601838051383/250000000000 : ℚ), 3⟩,
    ⟨(5690517467/12500000000 : ℚ), (3422728887/1000000000 : ℚ), (-1753940142967/1000000000000 : ℚ), 3⟩,
    ⟨(117245762803/250000000000 : ℚ), (4956405903/2000000000 : ℚ), (-659004376111/500000000000 : ℚ), 3⟩,
    ⟨(484005452859/1000000000000 : ℚ), (28709461/15625000 : ℚ), (-1013031537067/1000000000000 : ℚ), 2⟩,
    ⟨(500163928361/1000000000000 : ℚ), (13869038999/10000000000 : ℚ), (-197897510123/250000000000 : ℚ), 2⟩,
    ⟨(103460572553/200000000000 : ℚ), (1326180211/1250000000 : ℚ), (-625932192071/1000000000000 : ℚ), 2⟩,
    ⟨(107051439753/200000000000 : ℚ), (8194181233/10000000000 : ℚ), (-249470398301/500000000000 : ℚ), 2⟩,
    ⟨(553854026289/1000000000000 : ℚ), (1592075349/2500000000 : ℚ), (-49949544229/125000000000 : ℚ), 2⟩,
    ⟨(572914247723/1000000000000 : ℚ), (2482062299/5000000000 : ℚ), (-320548352911/1000000000000 : ℚ), 2⟩,
    ⟨(118450860543/200000000000 : ℚ), (1934093649/5000000000 : ℚ), (-8023281313/31250000000 : ℚ), 2⟩,
    ⟨(305843967981/500000000000 : ℚ), (3001832361/10000000000 : ℚ), (-204625062367/1000000000000 : ℚ), 2⟩,
    ⟨(315513995477/500000000000 : ℚ), (9237549/40000000 : ℚ), (-161622778769/1000000000000 : ℚ), 2⟩,
    ⟨(162522053097/250000000000 : ℚ), (1750730543/10000000000 : ℚ), (-62927250309/500000000000 : ℚ), 1⟩,
    ⟨(83585629989/125000000000 : ℚ), (648243931/5000000000 : ℚ), (-95914564893/1000000000000 : ℚ), 1⟩,
    ⟨(85829921989/125000000000 : ℚ), (115606547/1250000000 : ℚ), (-70738982723/1000000000000 : ℚ), 1⟩,
    ⟨(175944577579/250000000000 : ℚ), (619436471/10000000000 : ℚ), (-24756196819/500000000000 : ℚ), 1⟩,
    ⟨(359968392909/500000000000 : ℚ), (36779379/1000000000 : ℚ), (-15801667929/500000000000 : ℚ), 1⟩,
    ⟨(146991837493/200000000000 : ℚ), (32077311/2000000000 : ℚ), (-8259240923/500000000000 : ℚ), 1⟩,
    ⟨(748700841317/1000000000000 : ℚ), (-10145507/10000000000 : ℚ), (-386985163/100000000000 : ℚ), 1⟩,
    ⟨(761029407737/1000000000000 : ℚ), (-149508227/10000000000 : ℚ), (1662228033/250000000000 : ℚ), 1⟩,
    ⟨(48239134743/62500000000 : ℚ), (-262130111/10000000000 : ℚ), (15279816951/1000000000000 : ℚ), 1⟩,
    ⟨(390493553593/500000000000 : ℚ), (-87858843/2500000000 : ℚ), (22213118231/1000000000000 : ℚ), 1⟩,
    ⟨(39421201833/50000000000 : ℚ), (-105010371/2500000000 : ℚ), (1724779369/62500000000 : ℚ), 1⟩,
    ⟨(158813064523/200000000000 : ℚ), (-46990107/1000000000 : ℚ), (31541497213/1000000000000 : ℚ), 1⟩,
    ⟨(797856636383/1000000000000 : ℚ), (-251200957/5000000000 : ℚ), (8532103117/250000000000 : ℚ), 1⟩,
    ⟨(799761465541/1000000000000 : ℚ), (-103686933/2000000000 : ℚ), (4426140009/125000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-10408573/200000000 : ℚ), (35568615013/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (151896403239/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control52.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control52.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate52
