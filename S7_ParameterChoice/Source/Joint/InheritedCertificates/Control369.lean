import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate369
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30174749937/125000000000 : ℚ), (13692779601971/10000000000 : ℚ), (-331201128811807/1000000000000 : ℚ), 12⟩,
    ⟨(242065003809/1000000000000 : ℚ), (1495078371477/10000000000 : ℚ), (-9150334204561/250000000000 : ℚ), 9⟩,
    ⟨(243392588821/1000000000000 : ℚ), (523237485689/10000000000 : ℚ), (-13033180726969/1000000000000 : ℚ), 7⟩,
    ⟨(6134199229/25000000000 : ℚ), (257287832263/10000000000 : ℚ), (-817461610331/125000000000 : ℚ), 6⟩,
    ⟨(61993030209/250000000000 : ℚ), (37212810069/2500000000 : ℚ), (-3867226739917/1000000000000 : ℚ), 5⟩,
    ⟨(251179964443/1000000000000 : ℚ), (47295253961/5000000000 : ℚ), (-2514161495379/1000000000000 : ℚ), 5⟩,
    ⟨(254960606693/1000000000000 : ℚ), (2552132603/400000000 : ℚ), (-173566977537/100000000000 : ℚ), 5⟩,
    ⟨(259277637937/1000000000000 : ℚ), (44780894231/10000000000 : ℚ), (-623476360891/500000000000 : ℚ), 4⟩,
    ⟨(264089482801/1000000000000 : ℚ), (16139581713/5000000000 : ℚ), (-46002434609/50000000000 : ℚ), 4⟩,
    ⟨(269349800591/1000000000000 : ℚ), (23668426769/10000000000 : ℚ), (-690546474439/1000000000000 : ℚ), 4⟩,
    ⟨(27500793157/100000000000 : ℚ), (17514426931/10000000000 : ℚ), (-523159131027/1000000000000 : ℚ), 3⟩,
    ⟨(70252346211/250000000000 : ℚ), (12982426101/10000000000 : ℚ), (-198621817567/500000000000 : ℚ), 3⟩,
    ⟨(143648181569/500000000000 : ℚ), (9560857257/10000000000 : ℚ), (-300074340731/1000000000000 : ℚ), 3⟩,
    ⟨(73452079853/250000000000 : ℚ), (865346059/1250000000 : ℚ), (-111732058547/500000000000 : ℚ), 3⟩,
    ⟨(300482539969/1000000000000 : ℚ), (4851822987/10000000000 : ℚ), (-20244507861/125000000000 : ℚ), 3⟩,
    ⟨(1200213861/3906250000 : ℚ), (640131441/2000000000 : ℚ), (-111803635067/1000000000000 : ℚ), 3⟩,
    ⟨(78514931171/250000000000 : ℚ), (1866394573/10000000000 : ℚ), (-70369445731/1000000000000 : ℚ), 3⟩,
    ⟨(320831933131/1000000000000 : ℚ), (387848789/5000000000 : ℚ), (-8939301119/250000000000 : ℚ), 3⟩,
    ⟨(40938269211/125000000000 : ℚ), (-124657167/10000000000 : ℚ), (-6578892103/1000000000000 : ℚ), 3⟩,
    ⟨(334018109963/1000000000000 : ℚ), (-873890831/10000000000 : ℚ), (454920153/25000000000 : ℚ), 2⟩,
    ⟨(1329316751/3906250000 : ℚ), (-1501284719/10000000000 : ℚ), (39345707997/1000000000000 : ℚ), 2⟩,
    ⟨(34630654153/100000000000 : ℚ), (-50723491/250000000 : ℚ), (11491453163/200000000000 : ℚ), 2⟩,
    ⟨(351964672509/1000000000000 : ℚ), (-618421653/2500000000 : ℚ), (14596553019/200000000000 : ℚ), 2⟩,
    ⟨(357224990299/1000000000000 : ℚ), (-712108153/2500000000 : ℚ), (10783694669/125000000000 : ℚ), 2⟩,
    ⟨(90509208791/250000000000 : ℚ), (-197695167/625000000 : ℚ), (19517156649/200000000000 : ℚ), 2⟩,
    ⟨(366353866407/1000000000000 : ℚ), (-428179569/1250000000 : ℚ), (107138493641/1000000000000 : ℚ), 2⟩,
    ⟨(185067254329/500000000000 : ℚ), (-3641298441/10000000000 : ℚ), (57543548119/500000000000 : ℚ), 2⟩,
    ⟨(46667794033/125000000000 : ℚ), (-763050497/2000000000 : ℚ), (121553420907/1000000000000 : ℚ), 2⟩,
    ⟨(18797325197/50000000000 : ℚ), (-3950740123/10000000000 : ℚ), (126629282491/1000000000000 : ℚ), 2⟩,
    ⟨(377921884279/1000000000000 : ℚ), (-506287981/1250000000 : ℚ), (2037220867/15625000000 : ℚ), 2⟩,
    ⟨(379249469291/1000000000000 : ℚ), (-823146859/2000000000 : ℚ), (132859225559/1000000000000 : ℚ), 2⟩,
    ⟨(75983294721/200000000000 : ℚ), (-4148172111/10000000000 : ℚ), (134090508241/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4152213983/10000000000 : ℚ), (134244082471/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (33224886841/100000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control369.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control369.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate369
