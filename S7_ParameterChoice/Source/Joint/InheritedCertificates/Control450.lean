import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate450
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(119921664157/500000000000 : ℚ), (12745060854191/10000000000 : ℚ), (-306302836667011/1000000000000 : ℚ), 12⟩,
    ⟨(240517814283/1000000000000 : ℚ), (86960092259/625000000 : ℚ), (-33851005902051/1000000000000 : ℚ), 9⟩,
    ⟨(241860290553/1000000000000 : ℚ), (486831065637/10000000000 : ℚ), (-12054696018941/1000000000000 : ℚ), 7⟩,
    ⟨(121928914171/500000000000 : ℚ), (9573228303/400000000 : ℚ), (-6049381708187/1000000000000 : ℚ), 6⟩,
    ⟨(246491190271/1000000000000 : ℚ), (34608197009/2500000000 : ℚ), (-3577823820257/1000000000000 : ℚ), 6⟩,
    ⟨(31216876953/125000000000 : ℚ), (87954396277/10000000000 : ℚ), (-145404586827/62500000000 : ℚ), 5⟩,
    ⟨(25355806459/100000000000 : ℚ), (59319920101/10000000000 : ℚ), (-803249730557/500000000000 : ℚ), 5⟩,
    ⟨(128961759559/500000000000 : ℚ), (4163218189/1000000000 : ℚ), (-1154514734573/1000000000000 : ℚ), 4⟩,
    ⟨(262789337493/1000000000000 : ℚ), (6002178547/2000000000 : ℚ), (-426089053777/500000000000 : ℚ), 4⟩,
    ⟨(134054329613/500000000000 : ℚ), (4401793729/2000000000 : ℚ), (-127984231153/200000000000 : ℚ), 4⟩,
    ⟨(273830256339/1000000000000 : ℚ), (16291870363/10000000000 : ℚ), (-485110110653/1000000000000 : ℚ), 4⟩,
    ⟨(11195961069/40000000000 : ℚ), (12082977383/10000000000 : ℚ), (-184327057369/500000000000 : ℚ), 3⟩,
    ⟨(35782065601/125000000000 : ℚ), (8906396239/10000000000 : ℚ), (-34848048193/125000000000 : ℚ), 3⟩,
    ⟨(146420762203/500000000000 : ℚ), (6458014381/10000000000 : ℚ), (-25991171523/125000000000 : ℚ), 3⟩,
    ⟨(299590608373/1000000000000 : ℚ), (9073271/20000000 : ℚ), (-75521210799/500000000000 : ℚ), 3⟩,
    ⟨(306438779341/1000000000000 : ℚ), (3005229301/10000000000 : ℚ), (-13082323827/125000000000 : ℚ), 3⟩,
    ⟨(313320085679/1000000000000 : ℚ), (1768147241/10000000000 : ℚ), (-66338653011/1000000000000 : ℚ), 3⟩,
    ⟨(320168256647/1000000000000 : ℚ), (757214533/10000000000 : ℚ), (-4291090821/125000000000 : ℚ), 3⟩,
    ⟨(163458670307/500000000000 : ℚ), (-7703823/1000000000 : ℚ), (-1836241281/250000000000 : ℚ), 3⟩,
    ⟨(333502340211/1000000000000 : ℚ), (-4819129/62500000 : ℚ), (7783299889/500000000000 : ℚ), 3⟩,
    ⟨(67971967659/200000000000 : ℚ), (-676030507/5000000000 : ℚ), (702472901/20000000000 : ℚ), 2⟩,
    ⟨(345928608681/1000000000000 : ℚ), (-1840572663/10000000000 : ℚ), (10374295857/200000000000 : ℚ), 2⟩,
    ⟨(175825102897/500000000000 : ℚ), (-1126115341/5000000000 : ℚ), (13245522081/200000000000 : ℚ), 2⟩,
    ⟨(356969527527/1000000000000 : ℚ), (-1299511611/5000000000 : ℚ), (15702679757/200000000000 : ℚ), 2⟩,
    ⟨(180917672951/500000000000 : ℚ), (-2890185971/10000000000 : ℚ), (3559076797/40000000000 : ℚ), 2⟩,
    ⟨(36620080043/100000000000 : ℚ), (-783212451/2500000000 : ℚ), (19561944571/200000000000 : ℚ), 2⟩,
    ⟨(92505962349/250000000000 : ℚ), (-16662573/50000000 : ℚ), (1314490853/12500000000 : ℚ), 2⟩,
    ⟨(373267674749/1000000000000 : ℚ), (-3493398341/10000000000 : ℚ), (55569121079/500000000000 : ℚ), 2⟩,
    ⟨(375901036677/1000000000000 : ℚ), (-3618694923/10000000000 : ℚ), (115831555579/1000000000000 : ℚ), 2⟩,
    ⟨(377898574467/1000000000000 : ℚ), (-371076359/1000000000 : ℚ), (119301580381/1000000000000 : ℚ), 2⟩,
    ⟨(379241050737/1000000000000 : ℚ), (-3771265693/10000000000 : ℚ), (121591995241/1000000000000 : ℚ), 2⟩,
    ⟨(189957768353/500000000000 : ℚ), (-3801259411/10000000000 : ℚ), (122730490197/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1902498351/5000000000 : ℚ), (61436245737/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (361599718491/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control450.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control450.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate450
