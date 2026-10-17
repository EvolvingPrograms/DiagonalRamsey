import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate504
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(70996733297/250000000000 : ℚ), (15125392147751/10000000000 : ℚ), (-430261304141121/1000000000000 : ℚ), 12⟩,
    ⟨(284641478591/1000000000000 : ℚ), (827155081309/5000000000 : ℚ), (-23768946845877/500000000000 : ℚ), 9⟩,
    ⟨(285944265767/1000000000000 : ℚ), (290145015133/5000000000 : ℚ), (-16919869577821/1000000000000 : ℚ), 7⟩,
    ⟨(71970687041/250000000000 : ℚ), (286052970273/10000000000 : ℚ), (-8484099060799/1000000000000 : ℚ), 6⟩,
    ⟨(18152391071/62500000000 : ℚ), (41475714169/2500000000 : ℚ), (-626546534231/125000000000 : ℚ), 6⟩,
    ⟨(146793090867/500000000000 : ℚ), (52835126549/5000000000 : ℚ), (-3254759180809/1000000000000 : ℚ), 5⟩,
    ⟨(11891848229/40000000000 : ℚ), (2856894871/400000000 : ℚ), (-560908179147/250000000000 : ℚ), 5⟩,
    ⟨(301532599549/1000000000000 : ℚ), (50212613091/10000000000 : ℚ), (-160900230931/100000000000 : ℚ), 4⟩,
    ⟨(153127282209/500000000000 : ℚ), (18119622491/5000000000 : ℚ), (-118462877857/100000000000 : ℚ), 4⟩,
    ⟨(77854156307/250000000000 : ℚ), (26590924001/10000000000 : ℚ), (-886832537451/1000000000000 : ℚ), 4⟩,
    ⟨(9905283391/31250000000 : ℚ), (4919610363/2500000000 : ℚ), (-669769447517/1000000000000 : ℚ), 4⟩,
    ⟨(322858421207/1000000000000 : ℚ), (14575934211/10000000000 : ℚ), (-506618899487/1000000000000 : ℚ), 3⟩,
    ⟨(105288949/320000000 : ℚ), (10715296971/10000000000 : ℚ), (-380845177839/1000000000000 : ℚ), 3⟩,
    ⟨(335418285683/1000000000000 : ℚ), (1933230289/2500000000 : ℚ), (-140903959023/500000000000 : ℚ), 3⟩,
    ⟨(2671623743/7812500000 : ℚ), (1346953693/2500000000 : ℚ), (-40482597047/200000000000 : ℚ), 3⟩,
    ⟨(87153387527/250000000000 : ℚ), (1757754821/5000000000 : ℚ), (-17223454193/125000000000 : ℚ), 3⟩,
    ⟨(177645708433/500000000000 : ℚ), (1000473683/5000000000 : ℚ), (-84499589313/1000000000000 : ℚ), 3⟩,
    ⟨(361937127871/1000000000000 : ℚ), (380959689/5000000000 : ℚ), (-40079032493/1000000000000 : ℚ), 3⟩,
    ⟨(368486681291/1000000000000 : ℚ), (-261380071/10000000000 : ℚ), (-2716268569/1000000000000 : ℚ), 3⟩,
    ⟨(374877001349/1000000000000 : ℚ), (-55656661/500000000 : ℚ), (1446751729/50000000000 : ℚ), 3⟩,
    ⟨(381046545767/1000000000000 : ℚ), (-182640847/1000000000 : ℚ), (27944595027/500000000000 : ℚ), 3⟩,
    ⟨(193467949231/500000000000 : ℚ), (-606556693/2500000000 : ℚ), (78918175783/1000000000000 : ℚ), 3⟩,
    ⟨(196244170873/500000000000 : ℚ), (-586337529/2000000000 : ℚ), (98614137649/1000000000000 : ℚ), 3⟩,
    ⟨(99412600639/250000000000 : ℚ), (-209841811/625000000 : ℚ), (57716883911/500000000000 : ℚ), 3⟩,
    ⟨(16094894697/40000000000 : ℚ), (-3714901353/10000000000 : ℚ), (64865174497/500000000000 : ℚ), 2⟩,
    ⟨(406608761249/1000000000000 : ℚ), (-2006373943/5000000000 : ℚ), (70888622369/500000000000 : ℚ), 2⟩,
    ⟨(10257969631/25000000000 : ℚ), (-851555271/2000000000 : ℚ), (151785337927/1000000000000 : ℚ), 2⟩,
    ⟨(206733354919/500000000000 : ℚ), (-4455182147/10000000000 : ℚ), (159916097911/1000000000000 : ℚ), 2⟩,
    ⟨(41602221881/100000000000 : ℚ), (-4608901739/10000000000 : ℚ), (41572853193/250000000000 : ℚ), 2⟩,
    ⟨(417960701207/1000000000000 : ℚ), (-2360921953/5000000000 : ℚ), (85500477577/500000000000 : ℚ), 2⟩,
    ⟨(419263488383/1000000000000 : ℚ), (-4796057247/10000000000 : ℚ), (174107600943/1000000000000 : ℚ), 2⟩,
    ⟨(209959016893/500000000000 : ℚ), (-2416423303/5000000000 : ℚ), (87825623327/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4837430573/10000000000 : ℚ), (175843754461/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (31785892677/100000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control504.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control504.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate504
