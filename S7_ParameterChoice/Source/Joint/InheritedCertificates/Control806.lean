import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate806
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4324644781/7812500000 : ℚ), (7439738203023/5000000000 : ℚ), (-164887971551791/200000000000 : ℚ), 13⟩,
    ⟨(554259281961/1000000000000 : ℚ), (51079209687/312500000 : ℚ), (-91088265628547/1000000000000 : ℚ), 10⟩,
    ⟨(555661994819/1000000000000 : ℚ), (576945250659/10000000000 : ℚ), (-2026286381641/62500000000 : ℚ), 9⟩,
    ⟨(139437290413/250000000000 : ℚ), (143246409763/5000000000 : ℚ), (-2032200348461/125000000000 : ℚ), 8⟩,
    ⟨(560500681901/1000000000000 : ℚ), (167494512869/10000000000 : ℚ), (-2401702429181/250000000000 : ℚ), 7⟩,
    ⟨(281945028461/500000000000 : ℚ), (26899883401/2500000000 : ℚ), (-3120437823671/500000000000 : ℚ), 6⟩,
    ⟨(567884645181/1000000000000 : ℚ), (73388932371/10000000000 : ℚ), (-861137076151/200000000000 : ℚ), 6⟩,
    ⟨(572445976609/1000000000000 : ℚ), (52099336881/10000000000 : ℚ), (-3092276818357/1000000000000 : ℚ), 6⟩,
    ⟨(144382530773/250000000000 : ℚ), (19002007537/5000000000 : ℚ), (-1141050505913/500000000000 : ℚ), 5⟩,
    ⟨(291544060759/500000000000 : ℚ), (28224875093/10000000000 : ℚ), (-107175065857/62500000000 : ℚ), 5⟩,
    ⟨(294533222663/500000000000 : ℚ), (10593962323/5000000000 : ℚ), (-325628463799/250000000000 : ℚ), 5⟩,
    ⟨(595407519989/1000000000000 : ℚ), (1597407127/1000000000 : ℚ), (-993823517789/1000000000000 : ℚ), 5⟩,
    ⟨(602050277491/1000000000000 : ℚ), (1502224221/1250000000 : ℚ), (-30280666887/40000000000 : ℚ), 4⟩,
    ⟨(304465372223/500000000000 : ℚ), (1791183079/2000000000 : ℚ), (-114334288151/200000000000 : ℚ), 4⟩,
    ⟨(615982658197/1000000000000 : ℚ), (6546753029/10000000000 : ℚ), (-42415628821/100000000000 : ℚ), 4⟩,
    ⟨(311569052479/500000000000 : ℚ), (144517819/312500000 : ℚ), (-305091698689/1000000000000 : ℚ), 4⟩,
    ⟨(630328173867/1000000000000 : ℚ), (3072763839/10000000000 : ℚ), (-51963560299/250000000000 : ℚ), 4⟩,
    ⟨(159370905157/250000000000 : ℚ), (1807475433/10000000000 : ℚ), (-3191529669/25000000000 : ℚ), 4⟩,
    ⟨(644535534379/1000000000000 : ℚ), (767244197/10000000000 : ℚ), (-15247979139/250000000000 : ℚ), 4⟩,
    ⟨(325708000667/500000000000 : ℚ), (-93712347/10000000000 : ℚ), (-8338783/1600000000 : ℚ), 4⟩,
    ⟨(164514689709/250000000000 : ℚ), (-161994309/2000000000 : ℚ), (8335765993/200000000000 : ℚ), 4⟩,
    ⟨(664399833499/1000000000000 : ℚ), (-1407949621/10000000000 : ℚ), (8121488703/100000000000 : ℚ), 4⟩,
    ⟨(670378157307/1000000000000 : ℚ), (-1908014257/10000000000 : ℚ), (895201839/7812500000 : ℚ), 3⟩,
    ⟨(337968077867/500000000000 : ℚ), (-581494247/2500000000 : ℚ), (17839920377/125000000000 : ℚ), 3⟩,
    ⟨(85127537777/125000000000 : ℚ), (-1337082297/5000000000 : ℚ), (166341847569/1000000000000 : ℚ), 3⟩,
    ⟨(171395408411/250000000000 : ℚ), (-118487981/400000000 : ℚ), (186022480433/1000000000000 : ℚ), 3⟩,
    ⟨(689576221903/1000000000000 : ℚ), (-799393909/2500000000 : ℚ), (202205949331/1000000000000 : ℚ), 3⟩,
    ⟨(173241399231/250000000000 : ℚ), (-3386087141/10000000000 : ℚ), (215236923901/1000000000000 : ℚ), 3⟩,
    ⟨(695717117173/1000000000000 : ℚ), (-353214991/1000000000 : ℚ), (225378528121/1000000000000 : ℚ), 3⟩,
    ⟨(348902142003/500000000000 : ℚ), (-90976037/250000000 : ℚ), (23282625577/100000000000 : ℚ), 3⟩,
    ⟨(139841399373/200000000000 : ℚ), (-3709077427/10000000000 : ℚ), (118859144819/500000000000 : ℚ), 3⟩,
    ⟨(349955873429/500000000000 : ℚ), (-3743735619/10000000000 : ℚ), (240142833907/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-749610243/2000000000 : ℚ), (4808898131/20000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (70489385881/250000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control806.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control806.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate806
