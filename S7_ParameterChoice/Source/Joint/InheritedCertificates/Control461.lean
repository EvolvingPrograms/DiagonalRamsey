import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate461
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(297218438031/1000000000000 : ℚ), (15510532515487/10000000000 : ℚ), (-461777231078889/1000000000000 : ℚ), 12⟩,
    ⟨(297905555947/1000000000000 : ℚ), (848234137561/5000000000 : ℚ), (-25511536965837/500000000000 : ℚ), 9⟩,
    ⟨(149636587229/500000000000 : ℚ), (595115088487/10000000000 : ℚ), (-18162603320091/1000000000000 : ℚ), 7⟩,
    ⟨(301308122651/1000000000000 : ℚ), (916862731/31250000 : ℚ), (-9109032524047/1000000000000 : ℚ), 6⟩,
    ⟨(15199540143/50000000000 : ℚ), (170194751361/10000000000 : ℚ), (-269154263343/50000000000 : ℚ), 6⟩,
    ⟨(307295379411/1000000000000 : ℚ), (108435521117/10000000000 : ℚ), (-874201336927/250000000000 : ℚ), 5⟩,
    ⟨(9724688357/31250000000 : ℚ), (73322008991/10000000000 : ℚ), (-2411695907199/1000000000000 : ℚ), 5⟩,
    ⟨(315637239309/1000000000000 : ℚ), (12894548701/2500000000 : ℚ), (-27041680537/15625000000 : ℚ), 4⟩,
    ⟨(160297092993/500000000000 : ℚ), (37254754107/10000000000 : ℚ), (-318826259371/250000000000 : ℚ), 4⟩,
    ⟨(326013129347/1000000000000 : ℚ), (27366293101/10000000000 : ℚ), (-955799337701/1000000000000 : ℚ), 4⟩,
    ⟨(165920941003/500000000000 : ℚ), (20283185047/10000000000 : ℚ), (-36147395993/50000000000 : ℚ), 4⟩,
    ⟨(338024309889/1000000000000 : ℚ), (15056018703/10000000000 : ℚ), (-136991256113/250000000000 : ℚ), 3⟩,
    ⟨(68900174567/200000000000 : ℚ), (11102236497/10000000000 : ℚ), (-413103008189/1000000000000 : ℚ), 3⟩,
    ⟨(87802299501/250000000000 : ℚ), (4024487611/5000000000 : ℚ), (-76735325721/250000000000 : ℚ), 3⟩,
    ⟨(71616936111/200000000000 : ℚ), (1412275901/2500000000 : ℚ), (-110932617369/500000000000 : ℚ), 3⟩,
    ⟨(182530552917/500000000000 : ℚ), (3733957549/10000000000 : ℚ), (-38161035673/250000000000 : ℚ), 3⟩,
    ⟨(93017821763/250000000000 : ℚ), (2185536799/10000000000 : ℚ), (-95593258659/1000000000000 : ℚ), 3⟩,
    ⟨(379047712331/1000000000000 : ℚ), (919524109/10000000000 : ℚ), (-48060674137/1000000000000 : ℚ), 3⟩,
    ⟨(192961597441/500000000000 : ℚ), (-125427189/10000000000 : ℚ), (-1012858447/125000000000 : ℚ), 3⟩,
    ⟨(392631520051/1000000000000 : ℚ), (-994644579/10000000000 : ℚ), (25726464929/1000000000000 : ℚ), 3⟩,
    ⟨(399108082997/1000000000000 : ℚ), (-1722060361/10000000000 : ℚ), (13629340713/250000000000 : ℚ), 3⟩,
    ⟨(2533065693/6250000000 : ℚ), (-2333355603/10000000000 : ℚ), (79099837361/1000000000000 : ℚ), 3⟩,
    ⟨(411119263539/1000000000000 : ℚ), (-2848139763/10000000000 : ℚ), (20022186103/200000000000 : ℚ), 2⟩,
    ⟨(4165382069/10000000000 : ℚ), (-5250381/16000000 : ℚ), (2951057919/25000000000 : ℚ), 2⟩,
    ⟨(421495153577/1000000000000 : ℚ), (-3645042939/10000000000 : ℚ), (133274663901/1000000000000 : ℚ), 2⟩,
    ⟨(212971182731/500000000000 : ℚ), (-3947812551/10000000000 : ℚ), (73051405261/500000000000 : ℚ), 2⟩,
    ⟨(17193480539/40000000000 : ℚ), (-839351521/2000000000 : ℚ), (39188611941/250000000000 : ℚ), 2⟩,
    ⟨(216570795013/500000000000 : ℚ), (-4397224279/10000000000 : ℚ), (165404110501/1000000000000 : ℚ), 2⟩,
    ⟨(108956067559/250000000000 : ℚ), (-4553265337/10000000000 : ℚ), (86091849437/500000000000 : ℚ), 2⟩,
    ⟨(109464804607/250000000000 : ℚ), (-4667876873/10000000000 : ℚ), (177190355899/1000000000000 : ℚ), 2⟩,
    ⟨(439226836939/1000000000000 : ℚ), (-474316983/1000000000 : ℚ), (180492260513/1000000000000 : ℚ), 2⟩,
    ⟨(87982790971/200000000000 : ℚ), (-597561147/1250000000 : ℚ), (91066353277/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-957027787/2000000000 : ℚ), (182337275923/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (297062700113/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control461.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control461.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate461
