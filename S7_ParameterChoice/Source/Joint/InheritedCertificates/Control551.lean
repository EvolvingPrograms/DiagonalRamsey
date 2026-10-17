import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate551
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(273638606639/1000000000000 : ℚ), (12766875402139/10000000000 : ℚ), (-87500794485161/250000000000 : ℚ), 12⟩,
    ⟨(137171476017/500000000000 : ℚ), (1395034338877/10000000000 : ℚ), (-38678295073117/1000000000000 : ℚ), 9⟩,
    ⟨(34468107449/125000000000 : ℚ), (97748373391/2000000000 : ℚ), (-3443041721191/250000000000 : ℚ), 7⟩,
    ⟨(277830828177/1000000000000 : ℚ), (240617647569/10000000000 : ℚ), (-276403975603/40000000000 : ℚ), 6⟩,
    ⟨(70145192193/250000000000 : ℚ), (69693869237/5000000000 : ℚ), (-408600666183/100000000000 : ℚ), 6⟩,
    ⟨(56793639589/200000000000 : ℚ), (88696059187/10000000000 : ℚ), (-2656245915919/1000000000000 : ℚ), 5⟩,
    ⟨(143980246451/500000000000 : ℚ), (29955104201/5000000000 : ℚ), (-1833704948107/1000000000000 : ℚ), 5⟩,
    ⟨(14625960283/50000000000 : ℚ), (10527191167/2500000000 : ℚ), (-1317416732323/1000000000000 : ℚ), 4⟩,
    ⟨(297600433323/1000000000000 : ℚ), (15199565911/5000000000 : ℚ), (-194431023763/200000000000 : ℚ), 4⟩,
    ⟨(30315524089/100000000000 : ℚ), (2790894013/1250000000 : ℚ), (-182462958957/250000000000 : ℚ), 4⟩,
    ⟨(309130132529/1000000000000 : ℚ), (16553820677/10000000000 : ℚ), (-55321580209/100000000000 : ℚ), 4⟩,
    ⟨(157733783383/500000000000 : ℚ), (6149742447/5000000000 : ℚ), (-10510765839/25000000000 : ℚ), 4⟩,
    ⟨(161053255323/500000000000 : ℚ), (4543035679/5000000000 : ℚ), (-63609243951/200000000000 : ℚ), 3⟩,
    ⟨(32898302751/100000000000 : ℚ), (1651957183/2500000000 : ℚ), (-237408049277/1000000000000 : ℚ), 3⟩,
    ⟨(336030892741/1000000000000 : ℚ), (466228561/1000000000 : ℚ), (-86373153667/500000000000 : ℚ), 3⟩,
    ⟨(68636446309/200000000000 : ℚ), (48615523/156250000 : ℚ), (-120098169821/1000000000000 : ℚ), 3⟩,
    ⟨(175184086309/500000000000 : ℚ), (1858675027/10000000000 : ℚ), (-19168137689/250000000000 : ℚ), 3⟩,
    ⟨(178759755711/500000000000 : ℚ), (417635909/5000000000 : ℚ), (-20230621391/500000000000 : ℚ), 3⟩,
    ⟨(364567376653/1000000000000 : ℚ), (-4427287/5000000000 : ℚ), (-9992974219/1000000000000 : ℚ), 3⟩,
    ⟨(371443893517/1000000000000 : ℚ), (-1110359/15625000 : ℚ), (15826659897/1000000000000 : ℚ), 3⟩,
    ⟨(378082837397/1000000000000 : ℚ), (-1297661057/10000000000 : ℚ), (37822048627/1000000000000 : ℚ), 3⟩,
    ⟨(192210135817/500000000000 : ℚ), (-71632639/400000000 : ℚ), (7077565683/125000000000 : ℚ), 3⟩,
    ⟨(390395163273/1000000000000 : ℚ), (-17648069/80000000 : ℚ), (72703215703/1000000000000 : ℚ), 3⟩,
    ⟨(395949970841/1000000000000 : ℚ), (-2555458833/10000000000 : ℚ), (345764549/4000000000 : ℚ), 3⟩,
    ⟨(401031198503/1000000000000 : ℚ), (-2848593153/10000000000 : ℚ), (98121265999/1000000000000 : ℚ), 3⟩,
    ⟨(405589911261/1000000000000 : ℚ), (-3092698113/10000000000 : ℚ), (107965639941/1000000000000 : ℚ), 2⟩,
    ⟨(204791103109/500000000000 : ℚ), (-3293398879/10000000000 : ℚ), (929164311/8000000000 : ℚ), 2⟩,
    ⟨(412969635391/1000000000000 : ℚ), (-345501259/1000000000 : ℚ), (122792106933/1000000000000 : ℚ), 2⟩,
    ⟨(207859787993/500000000000 : ℚ), (-3580809853/10000000000 : ℚ), (128004341851/1000000000000 : ℚ), 2⟩,
    ⟨(417805544571/1000000000000 : ℚ), (-3673207331/10000000000 : ℚ), (131855078739/1000000000000 : ℚ), 2⟩,
    ⟨(419207452129/1000000000000 : ℚ), (-233369193/625000000 : ℚ), (67197695089/500000000000 : ℚ), 2⟩,
    ⟨(104977949381/250000000000 : ℚ), (-470499163/1250000000 : ℚ), (33914421187/250000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-470967733/1250000000 : ℚ), (16976888467/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (369007415107/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control551.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control551.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate551
