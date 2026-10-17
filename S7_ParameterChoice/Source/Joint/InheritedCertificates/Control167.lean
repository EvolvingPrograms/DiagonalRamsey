import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate167
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(115723072603/500000000000 : ℚ), (8993290490463/10000000000 : ℚ), (-104423053029513/500000000000 : ℚ), 11⟩,
    ⟨(232546031257/1000000000000 : ℚ), (974944867113/10000000000 : ℚ), (-5775591624447/250000000000 : ℚ), 8⟩,
    ⟨(29341901357/125000000000 : ℚ), (84490207933/2500000000 : ℚ), (-824280728633/100000000000 : ℚ), 6⟩,
    ⟨(237992601007/1000000000000 : ℚ), (164486671983/10000000000 : ℚ), (-4148765193961/1000000000000 : ℚ), 5⟩,
    ⟨(242286831261/1000000000000 : ℚ), (18843767447/2000000000 : ℚ), (-2463873514203/1000000000000 : ℚ), 5⟩,
    ⟨(123788272917/500000000000 : ℚ), (11868411977/2000000000 : ℚ), (-1610865687327/1000000000000 : ℚ), 4⟩,
    ⟨(253810801883/1000000000000 : ℚ), (39739510069/10000000000 : ℚ), (-1120124863421/1000000000000 : ℚ), 4⟩,
    ⟨(130464780057/500000000000 : ℚ), (5550942539/2000000000 : ℚ), (-812080411897/1000000000000 : ℚ), 3⟩,
    ⟨(134432131497/500000000000 : ℚ), (19967116617/10000000000 : ℚ), (-121209548713/200000000000 : ℚ), 3⟩,
    ⟨(69384623749/250000000000 : ℚ), (7333387511/5000000000 : ℚ), (-461411768701/1000000000000 : ℚ), 3⟩,
    ⟨(71717179631/250000000000 : ℚ), (682787317/625000000 : ℚ), (-88980382913/250000000000 : ℚ), 3⟩,
    ⟨(296765078427/1000000000000 : ℚ), (1640460547/2000000000 : ℚ), (-138280209689/500000000000 : ℚ), 3⟩,
    ⟨(153566133673/500000000000 : ℚ), (3085881409/5000000000 : ℚ), (-33641407/156250000 : ℚ), 2⟩,
    ⟨(317870443587/1000000000000 : ℚ), (4624542051/10000000000 : ℚ), (-20874311323/125000000000 : ℚ), 2⟩,
    ⟨(164438096321/500000000000 : ℚ), (1711831441/5000000000 : ℚ), (-25638069653/200000000000 : ℚ), 2⟩,
    ⟨(340043523131/1000000000000 : ℚ), (1238255729/5000000000 : ℚ), (-96533030323/1000000000000 : ℚ), 2⟩,
    ⟨(351264887557/1000000000000 : ℚ), (343788301/2000000000 : ℚ), (-8795331963/125000000000 : ℚ), 2⟩,
    ⟨(181216109023/500000000000 : ℚ), (552798411/5000000000 : ℚ), (-48486714919/1000000000000 : ℚ), 2⟩,
    ⟨(373437967101/1000000000000 : ℚ), (603829963/10000000000 : ℚ), (-3754133917/125000000000 : ℚ), 2⟩,
    ⟨(192088071671/500000000000 : ℚ), (189774629/10000000000 : ℚ), (-14354234327/1000000000000 : ℚ), 2⟩,
    ⟨(197271666131/500000000000 : ℚ), (-154252161/10000000000 : ℚ), (-96342737/100000000000 : ℚ), 2⟩,
    ⟨(101109923041/250000000000 : ℚ), (-441504593/10000000000 : ℚ), (2101815667/200000000000 : ℚ), 2⟩,
    ⟨(103442478923/250000000000 : ℚ), (-170503739/2500000000 : ℚ), (5086597717/250000000000 : ℚ), 2⟩,
    ⟨(211222073847/500000000000 : ℚ), (-55214833/625000000 : ℚ), (28766581361/1000000000000 : ℚ), 2⟩,
    ⟨(215189425287/500000000000 : ℚ), (-525822851/5000000000 : ℚ), (35938238719/1000000000000 : ℚ), 2⟩,
    ⟨(87499521761/200000000000 : ℚ), (-1191163137/10000000000 : ℚ), (41991834403/1000000000000 : ℚ), 2⟩,
    ⟨(221865932427/500000000000 : ℚ), (-261094527/2000000000 : ℚ), (23514059059/500000000000 : ℚ), 2⟩,
    ⟨(449021579427/1000000000000 : ℚ), (-1397243837/10000000000 : ℚ), (51124369373/1000000000000 : ℚ), 2⟩,
    ⟨(453315809681/1000000000000 : ℚ), (-1468498691/10000000000 : ℚ), (54339065169/1000000000000 : ℚ), 2⟩,
    ⟨(57071649979/125000000000 : ℚ), (-1520731927/10000000000 : ℚ), (28357673109/500000000000 : ℚ), 2⟩,
    ⟨(458762379431/1000000000000 : ℚ), (-1554997221/10000000000 : ℚ), (58283546323/1000000000000 : ℚ), 2⟩,
    ⟨(459862265483/1000000000000 : ℚ), (-196495797/1250000000 : ℚ), (29531479513/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1574079943/10000000000 : ℚ), (29580084289/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (325998261669/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control167.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control167.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate167
