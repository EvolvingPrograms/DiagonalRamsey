import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate228
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131216624503/500000000000 : ℚ), (17592641277/15625000 : ℚ), (-296249487748493/1000000000000 : ℚ), 11⟩,
    ⟨(263384013603/1000000000000 : ℚ), (245138019513/2000000000 : ℚ), (-4094866940933/125000000000 : ℚ), 8⟩,
    ⟨(53055277283/200000000000 : ℚ), (106821698631/2500000000 : ℚ), (-11679594001583/1000000000000 : ℚ), 7⟩,
    ⟨(33511517857/125000000000 : ℚ), (10462895287/500000000 : ℚ), (-5871893149063/1000000000000 : ℚ), 6⟩,
    ⟨(271804165653/1000000000000 : ℚ), (120615577567/10000000000 : ℚ), (-1740872399277/500000000000 : ℚ), 5⟩,
    ⟨(276376705997/1000000000000 : ℚ), (955231871/125000000 : ℚ), (-567922815217/250000000000 : ℚ), 5⟩,
    ⟨(140882863913/500000000000 : ℚ), (12861758533/2500000000 : ℚ), (-63022152249/40000000000 : ℚ), 4⟩,
    ⟨(35989916489/125000000000 : ℚ), (9022817387/2500000000 : ℚ), (-569302050421/500000000000 : ℚ), 4⟩,
    ⟨(58955651137/200000000000 : ℚ), (26051796829/10000000000 : ℚ), (-846389611983/1000000000000 : ℚ), 3⟩,
    ⟨(302276443959/1000000000000 : ℚ), (19175384123/10000000000 : ℚ), (-641297917551/1000000000000 : ℚ), 3⟩,
    ⟨(155170842541/500000000000 : ℚ), (14289466581/10000000000 : ℚ), (-491765985291/1000000000000 : ℚ), 3⟩,
    ⟨(159448153187/500000000000 : ℚ), (10712873959/10000000000 : ℚ), (-379328927971/1000000000000 : ℚ), 3⟩,
    ⟨(163928961077/500000000000 : ℚ), (8029055561/10000000000 : ℚ), (-29260373521/100000000000 : ℚ), 3⟩,
    ⟨(67428045433/200000000000 : ℚ), (59724449/100000000 : ℚ), (-224267112939/1000000000000 : ℚ), 3⟩,
    ⟨(173326913867/500000000000 : ℚ), (873561637/2000000000 : ℚ), (-33887604183/200000000000 : ℚ), 3⟩,
    ⟨(356307102687/1000000000000 : ℚ), (3096139039/10000000000 : ℚ), (-62382677317/500000000000 : ℚ), 2⟩,
    ⟨(36600708571/100000000000 : ℚ), (1037310813/5000000000 : ℚ), (-87890085843/1000000000000 : ℚ), 2⟩,
    ⟨(375660360663/1000000000000 : ℚ), (622205871/5000000000 : ℚ), (-57115940857/1000000000000 : ℚ), 2⟩,
    ⟨(24073372577/62500000000 : ℚ), (562942689/10000000000 : ℚ), (-15600526113/500000000000 : ℚ), 2⟩,
    ⟨(394456266243/1000000000000 : ℚ), (-264059/2500000000 : ℚ), (-1844463147/200000000000 : ℚ), 2⟩,
    ⟨(403417882023/1000000000000 : ℚ), (-235432119/5000000000 : ℚ), (9515179193/1000000000000 : ℚ), 2⟩,
    ⟨(82394500663/200000000000 : ℚ), (-864008279/10000000000 : ℚ), (5107999707/200000000000 : ℚ), 2⟩,
    ⟨(420037744439/1000000000000 : ℚ), (-1193809229/10000000000 : ℚ), (39257458467/1000000000000 : ℚ), 2⟩,
    ⟨(427535932713/1000000000000 : ℚ), (-36761681/250000000 : ℚ), (25490100347/500000000000 : ℚ), 2⟩,
    ⟨(217197428243/500000000000 : ℚ), (-1701834733/10000000000 : ℚ), (3809389841/62500000000 : ℚ), 2⟩,
    ⟨(110137115143/250000000000 : ℚ), (-473493433/2500000000 : ℚ), (6935507193/100000000000 : ℚ), 2⟩,
    ⟨(557421853/1250000000 : ℚ), (-2051561711/10000000000 : ℚ), (381698123/5000000000 : ℚ), 2⟩,
    ⟨(56313752843/125000000000 : ℚ), (-435637827/2000000000 : ℚ), (2050378249/25000000000 : ℚ), 2⟩,
    ⟨(454222045541/1000000000000 : ℚ), (-569144519/2500000000 : ℚ), (17293158767/200000000000 : ℚ), 2⟩,
    ⟨(457037801983/1000000000000 : ℚ), (-469748411/2000000000 : ℚ), (3590150087/40000000000 : ℚ), 2⟩,
    ⟨(229465087397/500000000000 : ℚ), (-1198050449/5000000000 : ℚ), (91922697217/1000000000000 : ℚ), 2⟩,
    ⟨(459880939391/1000000000000 : ℚ), (-1209779989/5000000000 : ℚ), (18600083727/200000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-48449643/200000000 : ℚ), (93134821151/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (312487610703/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control228.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control228.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate228
