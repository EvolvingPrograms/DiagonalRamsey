import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate419
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280499181493/1000000000000 : ℚ), (15036405384/9765625 : ℚ), (-86528682239989/200000000000 : ℚ), 12⟩,
    ⟨(281170511253/1000000000000 : ℚ), (841759763567/5000000000 : ℚ), (-119510341457/2500000000 : ℚ), 9⟩,
    ⟨(565013411/2000000000 : ℚ), (295146974903/5000000000 : ℚ), (-8508418717297/500000000000 : ℚ), 7⟩,
    ⟨(142247447977/500000000000 : ℚ), (145429937461/5000000000 : ℚ), (-2133605486731/250000000000 : ℚ), 6⟩,
    ⟨(287115935253/1000000000000 : ℚ), (84311728763/5000000000 : ℚ), (-5043490093007/1000000000000 : ℚ), 6⟩,
    ⟨(72586145339/250000000000 : ℚ), (1677612833/156250000 : ℚ), (-3276144321693/1000000000000 : ℚ), 5⟩,
    ⟨(73537435159/250000000000 : ℚ), (36276017337/5000000000 : ℚ), (-2259407609611/1000000000000 : ℚ), 5⟩,
    ⟨(298494767329/1000000000000 : ℚ), (2550054339/500000000 : ℚ), (-50663858439/31250000000 : ℚ), 4⟩,
    ⟨(303337816453/1000000000000 : ℚ), (36810105601/10000000000 : ℚ), (-59724666881/50000000000 : ℚ), 4⟩,
    ⟨(154316123399/500000000000 : ℚ), (3377084333/1250000000 : ℚ), (-895014812113/1000000000000 : ℚ), 4⟩,
    ⟨(62865414021/200000000000 : ℚ), (1250247463/625000000 : ℚ), (-338355144449/500000000000 : ℚ), 4⟩,
    ⟨(5005741283/15625000000 : ℚ), (926886263/625000000 : ℚ), (-512611055599/1000000000000 : ℚ), 3⟩,
    ⟨(163347595367/500000000000 : ℚ), (10917596329/10000000000 : ℚ), (-24130646729/62500000000 : ℚ), 3⟩,
    ⟨(66649875259/200000000000 : ℚ), (7896531147/10000000000 : ℚ), (-71612381783/250000000000 : ℚ), 3⟩,
    ⟨(339966878403/1000000000000 : ℚ), (5522047113/10000000000 : ℚ), (-206555952857/1000000000000 : ℚ), 3⟩,
    ⟨(173391501921/500000000000 : ℚ), (1813521263/5000000000 : ℚ), (-28302157073/200000000000 : ℚ), 3⟩,
    ⟨(353632109597/1000000000000 : ℚ), (2094662577/10000000000 : ℚ), (-43931858061/500000000000 : ℚ), 3⟩,
    ⟨(72089647007/200000000000 : ℚ), (841450641/10000000000 : ℚ), (-43132268391/1000000000000 : ℚ), 3⟩,
    ⟨(367165737143/1000000000000 : ℚ), (-48319993/2500000000 : ℚ), (-1374439401/250000000000 : ℚ), 3⟩,
    ⟨(23357495169/62500000000 : ℚ), (-105434213/1000000000 : ℚ), (5278519263/200000000000 : ℚ), 3⟩,
    ⟨(380047671327/1000000000000 : ℚ), (-887630789/5000000000 : ℚ), (26778886011/500000000000 : ℚ), 3⟩,
    ⟨(193044021667/500000000000 : ℚ), (-2381395077/10000000000 : ℚ), (76773154217/1000000000000 : ℚ), 2⟩,
    ⟨(4897285833/12500000000 : ℚ), (-2892091727/10000000000 : ℚ), (96633403497/1000000000000 : ℚ), 2⟩,
    ⟨(79415459397/200000000000 : ℚ), (-830554281/2500000000 : ℚ), (28399273299/250000000000 : ℚ), 2⟩,
    ⟨(401920346109/1000000000000 : ℚ), (-3683244639/10000000000 : ℚ), (1600236709/12500000000 : ℚ), 2⟩,
    ⟨(406265372803/1000000000000 : ℚ), (-3984047063/10000000000 : ℚ), (70086702707/500000000000 : ℚ), 2⟩,
    ⟨(410070532083/1000000000000 : ℚ), (-4231477007/10000000000 : ℚ), (75136127149/500000000000 : ℚ), 2⟩,
    ⟨(206649589093/500000000000 : ℚ), (-4430795577/10000000000 : ℚ), (79238823697/500000000000 : ℚ), 2⟩,
    ⟨(83184043497/200000000000 : ℚ), (-143312181/312500000 : ℚ), (164912025397/1000000000000 : ℚ), 2⟩,
    ⟨(208954203969/500000000000 : ℚ), (-235000323/500000000 : ℚ), (84832746027/500000000000 : ℚ), 2⟩,
    ⟨(209622301093/500000000000 : ℚ), (-4774921469/10000000000 : ℚ), (172801243327/1000000000000 : ℚ), 2⟩,
    ⟨(209957965973/500000000000 : ℚ), (-4812057323/10000000000 : ℚ), (21794923581/125000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-12041711/25000000 : ℚ), (87276853213/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (150062281179/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control419.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control419.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate419
