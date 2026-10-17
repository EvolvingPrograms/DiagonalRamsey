import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate86
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(112961687439/500000000000 : ℚ), (1724510366207/2500000000 : ℚ), (-15658442401291/100000000000 : ℚ), 10⟩,
    ⟨(45496590397/200000000000 : ℚ), (741967775981/10000000000 : ℚ), (-693112989077/40000000000 : ℚ), 7⟩,
    ⟨(230587086619/1000000000000 : ℚ), (254470117143/10000000000 : ℚ), (-6187399941237/1000000000000 : ℚ), 6⟩,
    ⟨(117602942133/500000000000 : ℚ), (30598855409/2500000000 : ℚ), (-1559107555219/500000000000 : ℚ), 5⟩,
    ⟨(12064743169/50000000000 : ℚ), (69272642359/10000000000 : ℚ), (-1855282791267/1000000000000 : ℚ), 4⟩,
    ⟨(62198845941/250000000000 : ℚ), (10783271161/2500000000 : ℚ), (-608036541017/500000000000 : ℚ), 4⟩,
    ⟨(128817605653/500000000000 : ℚ), (28587590133/10000000000 : ℚ), (-53030522003/62500000000 : ℚ), 3⟩,
    ⟨(133864606817/500000000000 : ℚ), (19792366041/10000000000 : ℚ), (-617886907217/1000000000000 : ℚ), 3⟩,
    ⟨(278980179989/1000000000000 : ℚ), (14144298577/10000000000 : ℚ), (-92753265347/200000000000 : ℚ), 3⟩,
    ⟨(145639878707/500000000000 : ℚ), (80834887/78125000 : ℚ), (-5557307601/15625000000 : ℚ), 2⟩,
    ⟨(152254747127/500000000000 : ℚ), (1924699977/2500000000 : ℚ), (-276902589087/1000000000000 : ℚ), 2⟩,
    ⟨(19908873807/62500000000 : ℚ), (1449005211/2500000000 : ℚ), (-217708148117/1000000000000 : ℚ), 2⟩,
    ⟨(333242076871/1000000000000 : ℚ), (219688051/500000000 : ℚ), (-86033470313/500000000000 : ℚ), 2⟩,
    ⟨(34846821217/100000000000 : ℚ), (3337645211/10000000000 : ℚ), (-136109258489/1000000000000 : ℚ), 2⟩,
    ⟨(182036875401/500000000000 : ℚ), (2527012007/10000000000 : ℚ), (-26814432013/250000000000 : ℚ), 2⟩,
    ⟨(379908402901/1000000000000 : ℚ), (1894364467/10000000000 : ℚ), (-83744635709/1000000000000 : ℚ), 2⟩,
    ⟨(39581967211/100000000000 : ℚ), (348338143/2500000000 : ℚ), (-64327217321/1000000000000 : ℚ), 2⟩,
    ⟨(25728395263/62500000000 : ℚ), (991486047/10000000000 : ℚ), (-12028309457/250000000000 : ℚ), 2⟩,
    ⟨(427259862841/1000000000000 : ℚ), (41598557/625000000 : ℚ), (-4306322717/125000000000 : ℚ), 2⟩,
    ⟨(22124299907/50000000000 : ℚ), (398812373/10000000000 : ℚ), (-5713835471/250000000000 : ℚ), 2⟩,
    ⟨(228593047049/500000000000 : ℚ), (3576617/200000000 : ℚ), (-12963793411/1000000000000 : ℚ), 2⟩,
    ⟨(117804645189/250000000000 : ℚ), (-892113/2500000000 : ℚ), (-899921153/200000000000 : ℚ), 2⟩,
    ⟨(484448317597/1000000000000 : ℚ), (-38826649/2500000000 : ℚ), (1374492363/500000000000 : ℚ), 2⟩,
    ⟨(496747895021/1000000000000 : ℚ), (-281635947/10000000000 : ℚ), (44726713/5000000000 : ℚ), 2⟩,
    ⟨(7937482209/15625000000 : ℚ), (-15462791/400000000 : ℚ), (7108028163/500000000000 : ℚ), 2⟩,
    ⟨(103618572741/200000000000 : ℚ), (-473187851/10000000000 : ℚ), (18659400451/1000000000000 : ℚ), 1⟩,
    ⟨(526932691247/1000000000000 : ℚ), (-543855903/10000000000 : ℚ), (22351559279/1000000000000 : ℚ), 1⟩,
    ⟨(534433211631/1000000000000 : ℚ), (-150096061/2500000000 : ℚ), (25351234203/1000000000000 : ℚ), 1⟩,
    ⟨(108104438149/200000000000 : ℚ), (-644142699/10000000000 : ℚ), (6925765091/250000000000 : ℚ), 1⟩,
    ⟨(68142623549/125000000000 : ℚ), (-676143521/10000000000 : ℚ), (14720063827/500000000000 : ℚ), 1⟩,
    ⟨(274122561513/500000000000 : ℚ), (-697100243/10000000000 : ℚ), (30585805873/1000000000000 : ℚ), 1⟩,
    ⟨(137451175033/250000000000 : ℚ), (-35373393/500000000 : ℚ), (31155012499/1000000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-708758679/10000000000 : ℚ), (31225994959/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (57408395769/200000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control86.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control86.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate86
