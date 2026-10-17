import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate638
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(248554026759/1000000000000 : ℚ), (919394468917/625000000 : ℚ), (-183076340251539/500000000000 : ℚ), 13⟩,
    ⟨(249042222467/1000000000000 : ℚ), (1610495031943/10000000000 : ℚ), (-40433752580867/1000000000000 : ℚ), 9⟩,
    ⟨(62503478073/250000000000 : ℚ), (565547713243/10000000000 : ℚ), (-7188036409919/500000000000 : ℚ), 8⟩,
    ⟨(251459738329/1000000000000 : ℚ), (34879366773/1250000000 : ℚ), (-71967060303/10000000000 : ℚ), 7⟩,
    ⟨(253365776483/1000000000000 : ℚ), (80951658381/5000000000 : ℚ), (-424199904647/100000000000 : ℚ), 6⟩,
    ⟨(63928417641/250000000000 : ℚ), (51549028109/5000000000 : ℚ), (-686520458011/250000000000 : ℚ), 6⟩,
    ⟨(25848080907/100000000000 : ℚ), (69603427557/10000000000 : ℚ), (-377090239209/200000000000 : ℚ), 5⟩,
    ⟨(8176266967/31250000000 : ℚ), (48818608531/10000000000 : ℚ), (-672612926347/500000000000 : ℚ), 5⟩,
    ⟨(265162442221/1000000000000 : ℚ), (17547286697/5000000000 : ℚ), (-196785644391/200000000000 : ℚ), 5⟩,
    ⟨(269012589087/1000000000000 : ℚ), (3199406871/1250000000 : ℚ), (-182585854261/250000000000 : ℚ), 4⟩,
    ⟨(273153904521/1000000000000 : ℚ), (1877165923/1000000000 : ℚ), (-21818259303/40000000000 : ℚ), 4⟩,
    ⟨(277546505393/1000000000000 : ℚ), (13720752999/10000000000 : ℚ), (-203221202251/500000000000 : ℚ), 4⟩,
    ⟨(141074044277/500000000000 : ℚ), (2472003581/2500000000 : ℚ), (-299229071969/1000000000000 : ℚ), 4⟩,
    ⟨(71728584561/250000000000 : ℚ), (216194363/312500000 : ℚ), (-214761580527/1000000000000 : ℚ), 4⟩,
    ⟨(291799352873/1000000000000 : ℚ), (2287853591/5000000000 : ℚ), (-147003064073/1000000000000 : ℚ), 4⟩,
    ⟨(296756087079/1000000000000 : ℚ), (2699479567/10000000000 : ℚ), (-9180725637/100000000000 : ℚ), 3⟩,
    ⟨(150868402401/500000000000 : ℚ), (73549057/625000000 : ℚ), (-23126981799/500000000000 : ℚ), 3⟩,
    ⟨(4792086547/15625000000 : ℚ), (-14604731/2000000000 : ℚ), (-4121157899/500000000000 : ℚ), 3⟩,
    ⟨(311578553637/1000000000000 : ℚ), (-1108674649/10000000000 : ℚ), (23766472189/1000000000000 : ℚ), 3⟩,
    ⟨(316344803327/1000000000000 : ℚ), (-1973591967/10000000000 : ℚ), (50916514453/1000000000000 : ℚ), 3⟩,
    ⟨(40118298311/125000000000 : ℚ), (-1350148707/5000000000 : ℚ), (74069014583/1000000000000 : ℚ), 3⟩,
    ⟨(2033368671/6250000000 : ℚ), (-82835173/250000000 : ℚ), (23469648947/250000000000 : ℚ), 3⟩,
    ⟨(164740151397/500000000000 : ℚ), (-1915855189/5000000000 : ℚ), (27711631111/250000000000 : ℚ), 3⟩,
    ⟨(333330449659/1000000000000 : ℚ), (-533705143/1250000000 : ℚ), (15669816701/125000000000 : ℚ), 3⟩,
    ⟨(336852348937/1000000000000 : ℚ), (-4638330759/10000000000 : ℚ), (137712173193/1000000000000 : ℚ), 3⟩,
    ⟨(34001208281/100000000000 : ℚ), (-4946376401/10000000000 : ℚ), (148136898813/1000000000000 : ℚ), 3⟩,
    ⟨(342779221317/1000000000000 : ℚ), (-1300101401/2500000000 : ℚ), (78404512231/500000000000 : ℚ), 3⟩,
    ⟨(172563557699/500000000000 : ℚ), (-2702747549/5000000000 : ℚ), (40965740833/250000000000 : ℚ), 3⟩,
    ⟨(21689572097/62500000000 : ℚ), (-5565482369/10000000000 : ℚ), (42349928949/250000000000 : ℚ), 3⟩,
    ⟨(348478979589/1000000000000 : ℚ), (-5683196301/10000000000 : ℚ), (173493252407/1000000000000 : ℚ), 3⟩,
    ⟨(349450669413/1000000000000 : ℚ), (-5760624891/10000000000 : ℚ), (176195227141/1000000000000 : ℚ), 3⟩,
    ⟨(349938865121/1000000000000 : ℚ), (-1159806431/2000000000 : ℚ), (88769153869/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1450954711/2500000000 : ℚ), (88852913611/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (39917288299/100000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control638.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control638.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate638
