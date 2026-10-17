import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate526
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(14665203471/50000000000 : ℚ), (14746427214/9765625 : ℚ), (-443622202680111/1000000000000 : ℚ), 12⟩,
    ⟨(293961901017/1000000000000 : ℚ), (165196530787/1000000000 : ℚ), (-24506515208799/500000000000 : ℚ), 9⟩,
    ⟨(147635614467/500000000000 : ℚ), (28982889457/500000000 : ℚ), (-17444156755169/1000000000000 : ℚ), 7⟩,
    ⟨(148609721813/500000000000 : ℚ), (285846098013/10000000000 : ℚ), (-8746432233787/1000000000000 : ℚ), 7⟩,
    ⟨(149893891361/500000000000 : ℚ), (33169115341/2000000000 : ℚ), (-5166922269139/1000000000000 : ℚ), 6⟩,
    ⟨(302951511711/1000000000000 : ℚ), (105673240029/10000000000 : ℚ), (-3354767834087/1000000000000 : ℚ), 5⟩,
    ⟨(61336032431/200000000000 : ℚ), (71450082289/10000000000 : ℚ), (-578072876271/250000000000 : ℚ), 5⟩,
    ⟨(31093782511/100000000000 : ℚ), (50249236609/10000000000 : ℚ), (-25906442839/15625000000 : ℚ), 5⟩,
    ⟨(315683496957/1000000000000 : ℚ), (906934393/250000000 : ℚ), (-1220528348373/1000000000000 : ℚ), 4⟩,
    ⟨(320871474279/1000000000000 : ℚ), (26627102837/10000000000 : ℚ), (-456780474231/500000000000 : ℚ), 4⟩,
    ⟨(16322589701/50000000000 : ℚ), (19711182037/10000000000 : ℚ), (-689841876897/1000000000000 : ℚ), 4⟩,
    ⟨(6647414293/20000000000 : ℚ), (584190811/400000000 : ℚ), (-104343406381/200000000000 : ℚ), 4⟩,
    ⟨(338571233727/1000000000000 : ℚ), (1342536503/1250000000 : ℚ), (-98034112963/250000000000 : ℚ), 3⟩,
    ⟨(673815697/1953125000 : ℚ), (387720203/500000000 : ℚ), (-145064228383/500000000000 : ℚ), 3⟩,
    ⟨(351576072807/1000000000000 : ℚ), (540623257/1000000000 : ℚ), (-52094396141/250000000000 : ℚ), 3⟩,
    ⟨(358255149101/1000000000000 : ℚ), (3531344381/10000000000 : ℚ), (-141858624827/1000000000000 : ℚ), 3⟩,
    ⟨(91241635647/250000000000 : ℚ), (1007334633/5000000000 : ℚ), (-21757867863/250000000000 : ℚ), 3⟩,
    ⟨(371645618881/1000000000000 : ℚ), (773961349/10000000000 : ℚ), (-41348285567/1000000000000 : ℚ), 3⟩,
    ⟨(47278506853/125000000000 : ℚ), (-125317543/5000000000 : ℚ), (-36772577/12500000000 : ℚ), 3⟩,
    ⟨(384650457961/1000000000000 : ℚ), (-137919633/1250000000 : ℚ), (29577494091/1000000000000 : ℚ), 3⟩,
    ⟨(390850977039/1000000000000 : ℚ), (-1817327789/10000000000 : ℚ), (57256801789/1000000000000 : ℚ), 3⟩,
    ⟨(396769897669/1000000000000 : ℚ), (-2417620129/10000000000 : ℚ), (40446702007/500000000000 : ℚ), 3⟩,
    ⟨(40235021741/100000000000 : ℚ), (-58467619/200000000 : ℚ), (101099106823/1000000000000 : ℚ), 3⟩,
    ⟨(101884548683/250000000000 : ℚ), (-1674665017/5000000000 : ℚ), (118345969237/1000000000000 : ℚ), 3⟩,
    ⟨(206141933289/500000000000 : ℚ), (-463354261/1250000000 : ℚ), (26599865087/200000000000 : ℚ), 3⟩,
    ⟨(208270764767/500000000000 : ℚ), (-4004686591/10000000000 : ℚ), (29068398097/200000000000 : ℚ), 3⟩,
    ⟨(420270179977/1000000000000 : ℚ), (-849936047/2000000000 : ℚ), (77796116279/500000000000 : ℚ), 2⟩,
    ⟨(423433908967/1000000000000 : ℚ), (-4447030313/10000000000 : ℚ), (20489655341/125000000000 : ℚ), 2⟩,
    ⟨(213001124031/500000000000 : ℚ), (-184027549/400000000 : ℚ), (170443272291/1000000000000 : ℚ), 2⟩,
    ⟨(85590092551/200000000000 : ℚ), (-942715149/2000000000 : ℚ), (35052646241/200000000000 : ℚ), 2⟩,
    ⟨(429259790671/1000000000000 : ℚ), (-598468509/1250000000 : ℚ), (44610570161/250000000000 : ℚ), 2⟩,
    ⟨(429917622269/1000000000000 : ℚ), (-2412257841/5000000000 : ℚ), (45005443457/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-4829096873/10000000000 : ℚ), (180218746153/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (320679602219/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control526.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control526.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate526
