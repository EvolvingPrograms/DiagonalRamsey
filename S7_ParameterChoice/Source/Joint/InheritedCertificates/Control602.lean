import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate602
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141291642081/500000000000 : ℚ), (41231241731/31250000 : ℚ), (-373474477646579/1000000000000 : ℚ), 12⟩,
    ⟨(56648916889/200000000000 : ℚ), (721445388539/5000000000 : ℚ), (-12895257781/312500000 : ℚ), 9⟩,
    ⟨(284560816329/1000000000000 : ℚ), (126512361367/2500000000 : ℚ), (-2937584134287/200000000000 : ℚ), 8⟩,
    ⟨(286519303781/1000000000000 : ℚ), (249415849629/10000000000 : ℚ), (-7365544972543/1000000000000 : ℚ), 7⟩,
    ⟨(36137648187/125000000000 : ℚ), (144633302857/10000000000 : ℚ), (-2176017076167/500000000000 : ℚ), 6⟩,
    ⟨(146140798271/500000000000 : ℚ), (92112414313/10000000000 : ℚ), (-2826400797419/1000000000000 : ℚ), 5⟩,
    ⟨(148014953911/500000000000 : ℚ), (6225461897/1000000000 : ℚ), (-1948730698241/1000000000000 : ℚ), 5⟩,
    ⟨(300310021049/1000000000000 : ℚ), (21883690251/5000000000 : ℚ), (-698933529137/500000000000 : ℚ), 5⟩,
    ⟨(38135089549/125000000000 : ℚ), (631808377/200000000 : ℚ), (-1029512278531/1000000000000 : ℚ), 4⟩,
    ⟨(310296049449/1000000000000 : ℚ), (23184587827/10000000000 : ℚ), (-771031619723/1000000000000 : ℚ), 4⟩,
    ⟨(31590579371/100000000000 : ℚ), (17163932903/10000000000 : ℚ), (-582631942967/1000000000000 : ℚ), 4⟩,
    ⟨(321855924273/1000000000000 : ℚ), (12721059901/10000000000 : ℚ), (-220516330671/500000000000 : ℚ), 4⟩,
    ⟨(524942621/1600000000 : ℚ), (1872118219/2000000000 : ℚ), (-165940232761/500000000000 : ℚ), 4⟩,
    ⟨(83636351503/250000000000 : ℚ), (6765489449/10000000000 : ℚ), (-245939138571/1000000000000 : ℚ), 3⟩,
    ⟨(21322659409/62500000000 : ℚ), (4725644447/10000000000 : ℚ), (-22131312143/125000000000 : ℚ), 3⟩,
    ⟨(347876845001/1000000000000 : ℚ), (3097672709/10000000000 : ℚ), (-24196886591/200000000000 : ℚ), 3⟩,
    ⟨(354623627059/1000000000000 : ℚ), (1781272029/10000000000 : ℚ), (-4672568357/62500000000 : ℚ), 3⟩,
    ⟨(90334480379/250000000000 : ℚ), (704780559/10000000000 : ℚ), (-18117994411/500000000000 : ℚ), 3⟩,
    ⟨(5749297907/15625000000 : ℚ), (-183932609/10000000000 : ℚ), (-767519597/200000000000 : ℚ), 3⟩,
    ⟨(74882266787/200000000000 : ℚ), (-115422277/1250000000 : ℚ), (2360338853/100000000000 : ℚ), 3⟩,
    ⟨(95161136947/250000000000 : ℚ), (-1542378399/10000000000 : ℚ), (46968047733/1000000000000 : ℚ), 3⟩,
    ⟨(7731893567/20000000000 : ℚ), (-515684941/2500000000 : ℚ), (33463522439/500000000000 : ℚ), 3⟩,
    ⟨(392204422611/1000000000000 : ℚ), (-2501106609/10000000000 : ℚ), (41997433883/500000000000 : ℚ), 3⟩,
    ⟨(99354938917/250000000000 : ℚ), (-574053651/2000000000 : ℚ), (49284167339/500000000000 : ℚ), 3⟩,
    ⟨(402190451011/1000000000000 : ℚ), (-1590047787/5000000000 : ℚ), (110954404727/1000000000000 : ℚ), 3⟩,
    ⟨(203235282119/500000000000 : ℚ), (-343822087/1000000000 : ℚ), (7586910611/62500000000 : ℚ), 3⟩,
    ⟨(205109437759/500000000000 : ℚ), (-912634209/2500000000 : ℚ), (65030000427/500000000000 : ℚ), 3⟩,
    ⟨(103349821641/250000000000 : ℚ), (-3821565519/10000000000 : ℚ), (137102905497/1000000000000 : ℚ), 3⟩,
    ⟨(415981168279/1000000000000 : ℚ), (-158189277/400000000 : ℚ), (2852501617/20000000000 : ℚ), 3⟩,
    ⟨(417939655731/1000000000000 : ℚ), (-4052565929/10000000000 : ℚ), (146704328063/1000000000000 : ℚ), 3⟩,
    ⟨(83851177523/200000000000 : ℚ), (-4116848657/10000000000 : ℚ), (29879035211/200000000000 : ℚ), 3⟩,
    ⟨(209958593949/500000000000 : ℚ), (-4148714269/10000000000 : ℚ), (30146442539/200000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-2076342347/5000000000 : ℚ), (943118463/6250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (2354422741/6250000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control602.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control602.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate602
