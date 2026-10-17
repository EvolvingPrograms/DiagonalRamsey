import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate539
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42633596167/200000000000 : ℚ), (4320095499209/2500000000 : ℚ), (-92221570982717/250000000000 : ℚ), 12⟩,
    ⟨(213585848767/1000000000000 : ℚ), (236456437977/1250000000 : ℚ), (-40729460965491/1000000000000 : ℚ), 9⟩,
    ⟨(42883512067/200000000000 : ℚ), (664112367233/10000000000 : ℚ), (-361917369631/25000000000 : ℚ), 8⟩,
    ⟨(215655105701/1000000000000 : ℚ), (163764316029/5000000000 : ℚ), (-7243510381309/1000000000000 : ℚ), 7⟩,
    ⟨(54321641657/250000000000 : ℚ), (94960893611/5000000000 : ℚ), (-2133289073453/500000000000 : ℚ), 6⟩,
    ⟨(109648115627/500000000000 : ℚ), (1888002921/156250000 : ℚ), (-2759326886619/1000000000000 : ℚ), 6⟩,
    ⟨(221664745411/1000000000000 : ℚ), (20368780551/2500000000 : ℚ), (-47302255713/25000000000 : ℚ), 5⟩,
    ⟨(224369299013/1000000000000 : ℚ), (2852398123/500000000 : ℚ), (-1347630747961/1000000000000 : ℚ), 5⟩,
    ⟨(227383845729/1000000000000 : ℚ), (1636584659/400000000 : ℚ), (-98341284821/100000000000 : ℚ), 4⟩,
    ⟨(57669838457/250000000000 : ℚ), (29743499417/10000000000 : ℚ), (-145537964561/200000000000 : ℚ), 4⟩,
    ⟨(58556021441/250000000000 : ℚ), (542875493/250000000 : ℚ), (-54115624463/100000000000 : ℚ), 4⟩,
    ⟨(29747987979/125000000000 : ℚ), (15768438587/10000000000 : ℚ), (-100204542147/250000000000 : ℚ), 4⟩,
    ⟨(15120162433/62500000000 : ℚ), (11252442001/10000000000 : ℚ), (-292500437799/1000000000000 : ℚ), 4⟩,
    ⟨(7687569977/31250000000 : ℚ), (309994067/400000000 : ℚ), (-41416603673/200000000000 : ℚ), 3⟩,
    ⟨(62545883919/250000000000 : ℚ), (311497027/625000000 : ℚ), (-138486845073/1000000000000 : ℚ), 3⟩,
    ⟨(31803277499/125000000000 : ℚ), (2765746059/10000000000 : ℚ), (-3301516303/40000000000 : ℚ), 3⟩,
    ⟨(129344716421/500000000000 : ℚ), (15045519/156250000 : ℚ), (-36297698893/1000000000000 : ℚ), 3⟩,
    ⟨(131466058579/500000000000 : ℚ), (-519150499/10000000000 : ℚ), (73332441/31250000000 : ℚ), 3⟩,
    ⟨(26711341357/100000000000 : ℚ), (-437325971/2500000000 : ℚ), (3494154323/100000000000 : ℚ), 3⟩,
    ⟨(135596526953/500000000000 : ℚ), (-2778431979/10000000000 : ℚ), (62635779457/1000000000000 : ℚ), 3⟩,
    ⟨(137565874501/500000000000 : ℚ), (-3644619969/10000000000 : ℚ), (86293105579/1000000000000 : ℚ), 3⟩,
    ⟨(27889156707/100000000000 : ℚ), (-2188337323/5000000000 : ℚ), (5328462567/50000000000 : ℚ), 3⟩,
    ⟨(141218149503/500000000000 : ℚ), (-4996568963/10000000000 : ℚ), (4958624369/40000000000 : ℚ), 3⟩,
    ⟨(57146361421/200000000000 : ℚ), (-5521169149/10000000000 : ℚ), (34716850599/250000000000 : ℚ), 3⟩,
    ⟨(288746353821/1000000000000 : ℚ), (-1192694829/2000000000 : ℚ), (30314258263/200000000000 : ℚ), 3⟩,
    ⟨(291450907423/1000000000000 : ℚ), (-3166758579/5000000000 : ℚ), (40576413141/250000000000 : ℚ), 3⟩,
    ⟨(14690971079/50000000000 : ℚ), (-6639028689/10000000000 : ℚ), (42811417613/250000000000 : ℚ), 3⟩,
    ⟨(147914543103/500000000000 : ℚ), (-6885927901/10000000000 : ℚ), (178524677089/1000000000000 : ℚ), 3⟩,
    ⟨(297460547133/1000000000000 : ℚ), (-6912781/9765625 : ℚ), (184242707887/1000000000000 : ℚ), 3⟩,
    ⟨(298698092499/1000000000000 : ℚ), (-7051372/9765625 : ℚ), (37694585701/200000000000 : ℚ), 3⟩,
    ⟨(299529804067/1000000000000 : ℚ), (-7313995983/10000000000 : ℚ), (38253274877/200000000000 : ℚ), 3⟩,
    ⟨(299947671999/1000000000000 : ℚ), (-3680166879/5000000000 : ℚ), (38531059133/200000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-1841527353/2500000000 : ℚ), (192828550177/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (44372283171/125000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control539.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control539.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate539
