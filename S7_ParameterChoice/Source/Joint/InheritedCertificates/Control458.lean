import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate458
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(122291801663/500000000000 : ℚ), (13453643738897/10000000000 : ℚ), (-41211055869869/125000000000 : ℚ), 12⟩,
    ⟨(245235277331/1000000000000 : ℚ), (734743554339/5000000000 : ℚ), (-1821595005659/50000000000 : ℚ), 9⟩,
    ⟨(246532349363/1000000000000 : ℚ), (10290425519/200000000 : ℚ), (-12971207318729/1000000000000 : ℚ), 7⟩,
    ⟨(248462327911/1000000000000 : ℚ), (63281722351/2500000000 : ℚ), (-6507331642627/1000000000000 : ℚ), 6⟩,
    ⟨(125503313113/500000000000 : ℚ), (29302566643/2000000000 : ℚ), (-3847057846539/1000000000000 : ℚ), 6⟩,
    ⟨(254140741323/1000000000000 : ℚ), (93142547889/10000000000 : ℚ), (-100006878407/40000000000 : ℚ), 5⟩,
    ⟨(128917244981/500000000000 : ℚ), (62846387479/10000000000 : ℚ), (-1725243258463/1000000000000 : ℚ), 5⟩,
    ⟨(65513074831/250000000000 : ℚ), (44117616801/10000000000 : ℚ), (-619385980537/500000000000 : ℚ), 4⟩,
    ⟨(266753549599/1000000000000 : ℚ), (31802023653/10000000000 : ℚ), (-182676059211/200000000000 : ℚ), 4⟩,
    ⟨(33986620647/125000000000 : ℚ), (1165729961/500000000 : ℚ), (-684951020247/1000000000000 : ℚ), 4⟩,
    ⟨(11096842027/40000000000 : ℚ), (17245206547/10000000000 : ℚ), (-518358201841/1000000000000 : ℚ), 4⟩,
    ⟨(28328456761/100000000000 : ℚ), (6386483957/5000000000 : ℚ), (-393052865639/1000000000000 : ℚ), 3⟩,
    ⟨(72356761777/250000000000 : ℚ), (9394679673/10000000000 : ℚ), (-74091783229/250000000000 : ℚ), 3⟩,
    ⟨(73947333433/250000000000 : ℚ), (3394318209/5000000000 : ℚ), (-44030154637/200000000000 : ℚ), 3⟩,
    ⟨(151155077593/500000000000 : ℚ), (948379457/2000000000 : ℚ), (-4967849521/31250000000 : ℚ), 3⟩,
    ⟨(154463356197/500000000000 : ℚ), (3109353567/10000000000 : ℚ), (-109098202211/1000000000000 : ℚ), 3⟩,
    ⟨(78893821073/250000000000 : ℚ), (1789657931/10000000000 : ℚ), (-13581133591/200000000000 : ℚ), 3⟩,
    ⟨(644383683/2000000000 : ℚ), (355264293/5000000000 : ℚ), (-8376271673/250000000000 : ℚ), 3⟩,
    ⟨(164356331477/500000000000 : ℚ), (-18051769/1000000000 : ℚ), (-2256948139/500000000000 : ℚ), 3⟩,
    ⟨(335074949579/1000000000000 : ℚ), (-14408999/156250000 : ℚ), (20095376621/1000000000000 : ℚ), 3⟩,
    ⟨(85304357269/250000000000 : ℚ), (-1543348627/10000000000 : ℚ), (20547916797/500000000000 : ℚ), 3⟩,
    ⟨(347080946011/1000000000000 : ℚ), (-2065860391/10000000000 : ℚ), (3692187329/62500000000 : ℚ), 2⟩,
    ⟨(35260903151/100000000000 : ℚ), (-3132923/12500000 : ℚ), (9310346581/125000000000 : ℚ), 2⟩,
    ⟨(22359277943/62500000000 : ℚ), (-89923041/312500000 : ℚ), (21916378053/250000000000 : ℚ), 2⟩,
    ⟨(181224848681/500000000000 : ℚ), (-159464349/500000000 : ℚ), (49445310467/500000000000 : ℚ), 2⟩,
    ⟨(91666876681/250000000000 : ℚ), (-68983583/200000000 : ℚ), (54182297943/500000000000 : ℚ), 2⟩,
    ⟨(370361255363/1000000000000 : ℚ), (-3663070227/10000000000 : ℚ), (11624641659/100000000000 : ℚ), 2⟩,
    ⟨(373495370461/1000000000000 : ℚ), (-3835452043/10000000000 : ℚ), (61328788007/500000000000 : ℚ), 2⟩,
    ⟨(15041586751/40000000000 : ℚ), (-992431477/2500000000 : ℚ), (127689620657/1000000000000 : ℚ), 2⟩,
    ⟨(377969647323/1000000000000 : ℚ), (-813680837/2000000000 : ℚ), (26281958983/200000000000 : ℚ), 2⟩,
    ⟨(94816679839/250000000000 : ℚ), (-2066627961/5000000000 : ℚ), (133865187111/1000000000000 : ℚ), 2⟩,
    ⟨(4748979917/12500000000 : ℚ), (-416540781/1000000000 : ℚ), (67542823649/500000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4169414101/10000000000 : ℚ), (33809467499/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (87891263193/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control458.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control458.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate458
