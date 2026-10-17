import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate257
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264239867859/1000000000000 : ℚ), (111629410879/100000000 : ℚ), (-147862350085979/500000000000 : ℚ), 11⟩,
    ⟨(53036387667/200000000000 : ℚ), (1215464487521/10000000000 : ℚ), (-6540057238317/200000000000 : ℚ), 8⟩,
    ⟨(267057006633/1000000000000 : ℚ), (8476938319/200000000 : ℚ), (-11658232021581/1000000000000 : ℚ), 7⟩,
    ⟨(134923507411/500000000000 : ℚ), (103820348677/5000000000 : ℚ), (-1465200020609/250000000000 : ℚ), 6⟩,
    ⟨(68381273399/250000000000 : ℚ), (14965318221/1250000000 : ℚ), (-138994949623/40000000000 : ℚ), 5⟩,
    ⟨(139027910523/500000000000 : ℚ), (75876178317/10000000000 : ℚ), (-2266954207239/1000000000000 : ℚ), 5⟩,
    ⟨(283395563791/1000000000000 : ℚ), (51095934027/10000000000 : ℚ), (-1572041955829/1000000000000 : ℚ), 4⟩,
    ⟨(72373224297/250000000000 : ℚ), (17926549969/5000000000 : ℚ), (-283964985763/250000000000 : ℚ), 4⟩,
    ⟨(59257820117/200000000000 : ℚ), (25884175831/10000000000 : ℚ), (-844158698527/1000000000000 : ℚ), 4⟩,
    ⟨(151859361413/500000000000 : ℚ), (19053750947/10000000000 : ℚ), (-319714100963/500000000000 : ℚ), 3⟩,
    ⟨(311710212589/1000000000000 : ℚ), (7099419639/5000000000 : ℚ), (-490161609429/1000000000000 : ℚ), 3⟩,
    ⟨(160093303729/500000000000 : ℚ), (425749837/400000000 : ℚ), (-23620431827/62500000000 : ℚ), 3⟩,
    ⟨(164533137559/500000000000 : ℚ), (7975202773/10000000000 : ℚ), (-145680648479/500000000000 : ℚ), 3⟩,
    ⟨(169131849757/500000000000 : ℚ), (1482421641/2500000000 : ℚ), (-55788592797/250000000000 : ℚ), 3⟩,
    ⟨(173845152211/500000000000 : ℚ), (2166636951/5000000000 : ℚ), (-168433547933/1000000000000 : ℚ), 3⟩,
    ⟨(357255306483/1000000000000 : ℚ), (766954831/2500000000 : ℚ), (-61926688541/500000000000 : ℚ), 2⟩,
    ⟨(366866589499/1000000000000 : ℚ), (2051083867/10000000000 : ℚ), (-21764664151/250000000000 : ℚ), 2⟩,
    ⟨(9410789789/25000000000 : ℚ), (1224616281/10000000000 : ℚ), (-56355716043/1000000000000 : ℚ), 2⟩,
    ⟨(385858196467/1000000000000 : ℚ), (546121339/10000000000 : ℚ), (-15252229177/500000000000 : ℚ), 2⟩,
    ⟨(395055620863/1000000000000 : ℚ), (-1935219/1250000000 : ℚ), (-2145744121/250000000000 : ℚ), 2⟩,
    ⟨(403935288523/1000000000000 : ℚ), (-120834447/2500000000 : ℚ), (2020567831/200000000000 : ℚ), 2⟩,
    ⟨(6443932553/15625000000 : ℚ), (-218719379/2500000000 : ℚ), (26081026143/1000000000000 : ℚ), 2⟩,
    ⟨(84080634631/200000000000 : ℚ), (-60167607/500000000 : ℚ), (39756557951/1000000000000 : ℚ), 2⟩,
    ⟨(427832795397/1000000000000 : ℚ), (-739455387/5000000000 : ℚ), (25720928761/500000000000 : ℚ), 2⟩,
    ⟨(434628998793/1000000000000 : ℚ), (-1709368003/10000000000 : ℚ), (30689399297/500000000000 : ℚ), 2⟩,
    ⟨(440726332191/1000000000000 : ℚ), (-950378747/5000000000 : ℚ), (13950959281/200000000000 : ℚ), 2⟩,
    ⟨(89213214987/200000000000 : ℚ), (-1028867639/5000000000 : ℚ), (9589339211/125000000000 : ℚ), 2⟩,
    ⟨(225298401193/500000000000 : ℚ), (-1091937769/5000000000 : ℚ), (41184872363/500000000000 : ℚ), 2⟩,
    ⟨(11356872029/25000000000 : ℚ), (-2281888033/10000000000 : ℚ), (86804065257/1000000000000 : ℚ), 2⟩,
    ⟨(114266222337/250000000000 : ℚ), (-1176888571/5000000000 : ℚ), (90079787623/1000000000000 : ℚ), 2⟩,
    ⟨(458939957647/1000000000000 : ℚ), (-2400956199/10000000000 : ℚ), (92240585877/1000000000000 : ℚ), 2⟩,
    ⟨(459882028123/1000000000000 : ℚ), (-303040801/1250000000 : ℚ), (46657118633/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1213618759/5000000000 : ℚ), (23362032783/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (322430251713/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control257.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control257.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate257
