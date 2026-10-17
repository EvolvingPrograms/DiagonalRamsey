import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate728
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(15727504507/62500000000 : ℚ), (1271280392469/1000000000 : ℚ), (-160171348700667/500000000000 : ℚ), 13⟩,
    ⟨(15757088539/62500000000 : ℚ), (1392190027721/10000000000 : ℚ), (-1105376673241/31250000000 : ℚ), 10⟩,
    ⟨(6326388677/25000000000 : ℚ), (489055944071/10000000000 : ℚ), (-3143568037809/250000000000 : ℚ), 8⟩,
    ⟨(1017829561/4000000000 : ℚ), (48275422907/2000000000 : ℚ), (-6293086091993/1000000000000 : ℚ), 7⟩,
    ⟨(128152722809/500000000000 : ℚ), (70047048453/5000000000 : ℚ), (-3708051954281/1000000000000 : ℚ), 7⟩,
    ⟨(258581915399/1000000000000 : ℚ), (11153585729/1250000000 : ℚ), (-1199658579959/500000000000 : ℚ), 6⟩,
    ⟨(261264875947/1000000000000 : ℚ), (30122737447/5000000000 : ℚ), (-32928016579/20000000000 : ℚ), 6⟩,
    ⟨(264328488883/1000000000000 : ℚ), (42252723443/10000000000 : ℚ), (-1173813987369/1000000000000 : ℚ), 5⟩,
    ⟨(133871624971/500000000000 : ℚ), (6073421567/2000000000 : ℚ), (-857777995999/1000000000000 : ℚ), 5⟩,
    ⟨(135738136553/500000000000 : ℚ), (11068337903/5000000000 : ℚ), (-158996680621/250000000000 : ℚ), 5⟩,
    ⟨(137745803661/500000000000 : ℚ), (811101273/500000000 : ℚ), (-474305514369/1000000000000 : ℚ), 5⟩,
    ⟨(279750582727/1000000000000 : ℚ), (5921083719/5000000000 : ℚ), (-352764096541/1000000000000 : ℚ), 4⟩,
    ⟨(14210609153/50000000000 : ℚ), (8517415263/10000000000 : ℚ), (-4047655189/15625000000 : ℚ), 4⟩,
    ⟨(28883344067/100000000000 : ℚ), (5940402057/10000000000 : ℚ), (-92619943471/500000000000 : ℚ), 4⟩,
    ⟨(3669623129/12500000000 : ℚ), (3907150793/10000000000 : ℚ), (-126051187857/1000000000000 : ℚ), 4⟩,
    ⟨(74593949449/250000000000 : ℚ), (2278259631/10000000000 : ℚ), (-4865941377/62500000000 : ℚ), 4⟩,
    ⟨(75801249799/250000000000 : ℚ), (956061421/10000000000 : ℚ), (-38095380651/1000000000000 : ℚ), 4⟩,
    ⟨(19250684167/62500000000 : ℚ), (-129331593/10000000000 : ℚ), (-4932835703/1000000000000 : ℚ), 4⟩,
    ⟨(156373678161/500000000000 : ℚ), (-1028835783/10000000000 : ℚ), (22980077081/1000000000000 : ℚ), 4⟩,
    ⟨(79342153483/250000000000 : ℚ), (-1780115299/10000000000 : ℚ), (11661372469/250000000000 : ℚ), 3⟩,
    ⟨(64366042853/200000000000 : ℚ), (-2411389579/10000000000 : ℚ), (33408953681/500000000000 : ℚ), 3⟩,
    ⟨(32608918967/100000000000 : ℚ), (-1472012563/5000000000 : ℚ), (42035480327/500000000000 : ℚ), 3⟩,
    ⟨(165052261943/500000000000 : ℚ), (-3394335119/10000000000 : ℚ), (3953758107/40000000000 : ℚ), 3⟩,
    ⟨(6676750941/20000000000 : ℚ), (-117964109/312500000 : ℚ), (11147494051/100000000000 : ℚ), 3⟩,
    ⟨(337252308109/1000000000000 : ℚ), (-2047619251/5000000000 : ℚ), (61112332013/500000000000 : ℚ), 3⟩,
    ⟨(68063184209/200000000000 : ℚ), (-4362958109/10000000000 : ℚ), (8205883259/62500000000 : ℚ), 3⟩,
    ⟨(342998881593/1000000000000 : ℚ), (-1145940019/2500000000 : ℚ), (2776754499/20000000000 : ℚ), 3⟩,
    ⟨(172637675687/500000000000 : ℚ), (-2381023009/5000000000 : ℚ), (144973055273/1000000000000 : ℚ), 3⟩,
    ⟨(173561703371/500000000000 : ℚ), (-4901140631/10000000000 : ℚ), (37447106807/250000000000 : ℚ), 3⟩,
    ⟨(43565656239/125000000000 : ℚ), (-5003492833/10000000000 : ℚ), (76674227463/500000000000 : ℚ), 3⟩,
    ⟨(21841711273/62500000000 : ℚ), (-316926393/625000000 : ℚ), (31139643819/200000000000 : ℚ), 3⟩,
    ⟨(4374259061/12500000000 : ℚ), (-5104221707/10000000000 : ℚ), (39216552299/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-102167687/200000000 : ℚ), (15701188937/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (58620004429/125000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control728.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control728.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate728
