import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate555
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(249583220563/1000000000000 : ℚ), (13068736913697/10000000000 : ℚ), (-81692001998489/250000000000 : ℚ), 12⟩,
    ⟨(250210834553/1000000000000 : ℚ), (57127926599/400000000 : ℚ), (-36105237616881/1000000000000 : ℚ), 9⟩,
    ⟨(125730009133/500000000000 : ℚ), (250204478313/5000000000 : ℚ), (-1285205579189/100000000000 : ℚ), 7⟩,
    ⟨(12665937069/50000000000 : ℚ), (61590248979/2500000000 : ℚ), (-805670393911/125000000000 : ℚ), 7⟩,
    ⟨(15985568961/62500000000 : ℚ), (5707680889/400000000 : ℚ), (-952158833293/250000000000 : ℚ), 6⟩,
    ⟨(258787505929/1000000000000 : ℚ), (90764299031/10000000000 : ℚ), (-98947368227/40000000000 : ℚ), 5⟩,
    ⟨(65586220043/250000000000 : ℚ), (61266100137/10000000000 : ℚ), (-852818684217/500000000000 : ℚ), 5⟩,
    ⟨(53281393329/200000000000 : ℚ), (336064553/78125000 : ℚ), (-152937877091/125000000000 : ℚ), 4⟩,
    ⟨(270934645237/1000000000000 : ℚ), (15502749917/5000000000 : ℚ), (-56314397587/62500000000 : ℚ), 4⟩,
    ⟨(137942155963/500000000000 : ℚ), (22720928419/10000000000 : ℚ), (-168667358327/250000000000 : ℚ), 4⟩,
    ⟨(140604149359/500000000000 : ℚ), (16791385271/10000000000 : ℚ), (-509604932861/1000000000000 : ℚ), 4⟩,
    ⟨(71713833177/250000000000 : ℚ), (6209209433/5000000000 : ℚ), (-77093870117/200000000000 : ℚ), 4⟩,
    ⟨(18298189367/62500000000 : ℚ), (9112381369/10000000000 : ℚ), (-289706330587/1000000000000 : ℚ), 3⟩,
    ⟨(298898418813/1000000000000 : ℚ), (6560089577/10000000000 : ℚ), (-107118494137/500000000000 : ℚ), 3⟩,
    ⟨(305178489427/1000000000000 : ℚ), (284633331/625000000 : ℚ), (-153675840421/1000000000000 : ℚ), 3⟩,
    ⟨(311550761199/1000000000000 : ℚ), (46141997/156250000 : ℚ), (-104324631389/1000000000000 : ℚ), 3⟩,
    ⟨(317953865669/1000000000000 : ℚ), (829056727/5000000000 : ℚ), (-31789620623/500000000000 : ℚ), 3⟩,
    ⟨(324326137441/1000000000000 : ℚ), (299333521/5000000000 : ℚ), (-29566628783/1000000000000 : ℚ), 3⟩,
    ⟨(165303104027/500000000000 : ℚ), (-69127473/2500000000 : ℚ), (-91519879/100000000000 : ℚ), 3⟩,
    ⟨(67346719399/200000000000 : ℚ), (-1005237219/10000000000 : ℚ), (23394664303/1000000000000 : ℚ), 3⟩,
    ⟨(4283116177/12500000000 : ℚ), (-323156747/2000000000 : ℚ), (5516297901/125000000000 : ℚ), 3⟩,
    ⟨(6965926563/20000000000 : ℚ), (-106475471/500000000 : ℚ), (61875340649/1000000000000 : ℚ), 3⟩,
    ⟨(353620314941/1000000000000 : ℚ), (-40042133/156250000 : ℚ), (9634549053/125000000000 : ℚ), 3⟩,
    ⟨(35856998163/100000000000 : ℚ), (-365980063/1250000000 : ℚ), (45038808203/500000000000 : ℚ), 3⟩,
    ⟨(181548830111/500000000000 : ℚ), (-101080447/312500000 : ℚ), (25286173671/250000000000 : ℚ), 3⟩,
    ⟨(73431949339/200000000000 : ℚ), (-872584629/2500000000 : ℚ), (55241398261/500000000000 : ℚ), 3⟩,
    ⟨(185358560469/500000000000 : ℚ), (-3700872773/10000000000 : ℚ), (59124930963/500000000000 : ℚ), 3⟩,
    ⟨(373735523491/1000000000000 : ℚ), (-1935289277/5000000000 : ℚ), (15570820111/125000000000 : ℚ), 3⟩,
    ⟨(376185885487/1000000000000 : ℚ), (-62543559/156250000 : ℚ), (25904757851/200000000000 : ℚ), 2⟩,
    ⟨(189022304301/500000000000 : ℚ), (-2049980323/5000000000 : ℚ), (66594142969/500000000000 : ℚ), 2⟩,
    ⟨(75858758463/200000000000 : ℚ), (-2081914421/5000000000 : ℚ), (67803383013/500000000000 : ℚ), 2⟩,
    ⟨(11872543947/31250000000 : ℚ), (-2097747447/5000000000 : ℚ), (136808831979/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4199440731/10000000000 : ℚ), (27391751649/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (15239131333/40000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control555.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control555.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate555
