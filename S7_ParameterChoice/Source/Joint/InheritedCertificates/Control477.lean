import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate477
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(286031714717/1000000000000 : ℚ), (2380849307273/2000000000 : ℚ), (-170610218804379/500000000000 : ℚ), 12⟩,
    ⟨(286868914731/1000000000000 : ℚ), (1299226278537/10000000000 : ℚ), (-7543968159631/200000000000 : ℚ), 9⟩,
    ⟨(57707050413/200000000000 : ℚ), (454487340787/10000000000 : ℚ), (-13439680937599/1000000000000 : ℚ), 7⟩,
    ⟨(14550733949/50000000000 : ℚ), (111707471203/5000000000 : ℚ), (-6750105731331/1000000000000 : ℚ), 6⟩,
    ⟨(147141658619/500000000000 : ℚ), (32313371343/2500000000 : ℚ), (-1998515970073/500000000000 : ℚ), 6⟩,
    ⟨(74577422017/250000000000 : ℚ), (20542794467/2500000000 : ℚ), (-2603256281979/1000000000000 : ℚ), 5⟩,
    ⟨(75763753829/250000000000 : ℚ), (27740823283/5000000000 : ℚ), (-900723663097/500000000000 : ℚ), 5⟩,
    ⟨(308473598887/1000000000000 : ℚ), (19504633987/5000000000 : ℚ), (-1298200952269/1000000000000 : ℚ), 4⟩,
    ⟨(15725662743/50000000000 : ℚ), (28197487873/10000000000 : ℚ), (-961688583007/1000000000000 : ℚ), 4⟩,
    ⟨(64223163609/200000000000 : ℚ), (10380945019/5000000000 : ℚ), (-725551843433/1000000000000 : ℚ), 4⟩,
    ⟨(328217702151/1000000000000 : ℚ), (15456854739/10000000000 : ℚ), (-553436224397/1000000000000 : ℚ), 3⟩,
    ⟨(6715010243/20000000000 : ℚ), (2311527349/2000000000 : ℚ), (-21203658699/50000000000 : ℚ), 3⟩,
    ⟨(85910425741/250000000000 : ℚ), (1724042297/2000000000 : ℚ), (-162175150701/500000000000 : ℚ), 3⟩,
    ⟨(351815278113/1000000000000 : ℚ), (6360880979/10000000000 : ℚ), (-122915199747/500000000000 : ℚ), 3⟩,
    ⟨(360192521599/1000000000000 : ℚ), (28699891/62500000 : ℚ), (-91444257079/500000000000 : ℚ), 3⟩,
    ⟨(368692755989/1000000000000 : ℚ), (3185716147/10000000000 : ℚ), (-131661262951/1000000000000 : ℚ), 3⟩,
    ⟨(377234119377/1000000000000 : ℚ), (205287841/1000000000 : ℚ), (-11178436001/125000000000 : ℚ), 3⟩,
    ⟨(385734353767/1000000000000 : ℚ), (1129883833/10000000000 : ℚ), (-10845822777/200000000000 : ℚ), 3⟩,
    ⟨(394111597253/1000000000000 : ℚ), (185291919/5000000000 : ℚ), (-24631340849/1000000000000 : ℚ), 3⟩,
    ⟨(201142586201/500000000000 : ℚ), (-259036423/10000000000 : ℚ), (108358523/250000000000 : ℚ), 3⟩,
    ⟨(25636022701/62500000000 : ℚ), (-784381287/10000000000 : ℚ), (5442449821/250000000000 : ℚ), 2⟩,
    ⟨(83541834643/200000000000 : ℚ), (-76539779/625000000 : ℚ), (19995227639/500000000000 : ℚ), 2⟩,
    ⟨(424811057321/1000000000000 : ℚ), (-797212123/5000000000 : ℚ), (27782883799/500000000000 : ℚ), 2⟩,
    ⟨(215706810253/500000000000 : ℚ), (-380993701/2000000000 : ℚ), (34429463623/500000000000 : ℚ), 2⟩,
    ⟨(437453276479/1000000000000 : ℚ), (-270615871/1250000000 : ℚ), (40075657233/500000000000 : ℚ), 2⟩,
    ⟨(8857437201/20000000000 : ℚ), (-1190496727/5000000000 : ℚ), (1400954139/15625000000 : ℚ), 2⟩,
    ⟨(223808593649/500000000000 : ℚ), (-511667639/2000000000 : ℚ), (97556827323/1000000000000 : ℚ), 2⟩,
    ⟨(28227722383/62500000000 : ℚ), (-1350466051/5000000000 : ℚ), (103968050717/1000000000000 : ℚ), 2⟩,
    ⟨(454912196387/1000000000000 : ℚ), (-56235723/200000000 : ℚ), (108992704221/1000000000000 : ℚ), 2⟩,
    ⟨(457391623301/1000000000000 : ℚ), (-2893127251/10000000000 : ℚ), (112703046511/1000000000000 : ℚ), 2⟩,
    ⟨(91811592127/200000000000 : ℚ), (-368315653/1250000000 : ℚ), (14393732523/125000000000 : ℚ), 2⟩,
    ⟨(459895160649/1000000000000 : ℚ), (-2972980739/10000000000 : ℚ), (116365427361/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-595255279/2000000000 : ℚ), (29129252569/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (70464619603/200000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control477.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control477.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate477
