import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate403
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(491432801993/1000000000000 : ℚ), (1805007979389/1000000000 : ℚ), (-444189802722033/500000000000 : ℚ), 12⟩,
    ⟨(123109126207/250000000000 : ℚ), (123593183677/625000000 : ℚ), (-98222938340519/1000000000000 : ℚ), 9⟩,
    ⟨(49443424429/100000000000 : ℚ), (347787546201/5000000000 : ℚ), (-350107711779/10000000000 : ℚ), 7⟩,
    ⟨(497406781057/1000000000000 : ℚ), (17208758397/500000000 : ℚ), (-879781916443/50000000000 : ℚ), 6⟩,
    ⟨(250662743987/500000000000 : ℚ), (200576073721/10000000000 : ℚ), (-651839827683/62500000000 : ℚ), 5⟩,
    ⟨(63269078219/125000000000 : ℚ), (128529656527/10000000000 : ℚ), (-3401236455131/500000000000 : ℚ), 5⟩,
    ⟨(102368341283/200000000000 : ℚ), (21883134459/2500000000 : ℚ), (-4717009297033/1000000000000 : ℚ), 5⟩,
    ⟨(259168970503/500000000000 : ℚ), (12425399903/2000000000 : ℚ), (-426145901823/125000000000 : ℚ), 4⟩,
    ⟨(131394691809/250000000000 : ℚ), (907671627/200000000 : ℚ), (-507144616429/200000000000 : ℚ), 4⟩,
    ⟨(133373612997/250000000000 : ℚ), (33823467203/10000000000 : ℚ), (-1923900477371/1000000000000 : ℚ), 4⟩,
    ⟨(542008762893/1000000000000 : ℚ), (25546573161/10000000000 : ℚ), (-739517025517/500000000000 : ℚ), 3⟩,
    ⟨(551039702481/1000000000000 : ℚ), (19445086201/10000000000 : ℚ), (-1145730891651/1000000000000 : ℚ), 3⟩,
    ⟨(560500297867/1000000000000 : ℚ), (1483859721/1000000000 : ℚ), (-889828836847/1000000000000 : ℚ), 3⟩,
    ⟨(570299438347/1000000000000 : ℚ), (2258215741/2000000000 : ℚ), (-689333782811/1000000000000 : ℚ), 3⟩,
    ⟨(14508568821/25000000000 : ℚ), (8513086759/10000000000 : ℚ), (-132392402153/250000000000 : ℚ), 3⟩,
    ⟨(295266759369/500000000000 : ℚ), (3153348333/5000000000 : ℚ), (-400442847003/1000000000000 : ℚ), 3⟩,
    ⟨(300386796697/500000000000 : ℚ), (2266552283/5000000000 : ℚ), (-294830396213/1000000000000 : ℚ), 3⟩,
    ⟨(152741089823/250000000000 : ℚ), (48325561/156250000 : ℚ), (-10379634353/50000000000 : ℚ), 2⟩,
    ⟨(124201534757/200000000000 : ℚ), (956628681/5000000000 : ℚ), (-134949698119/1000000000000 : ℚ), 2⟩,
    ⟨(126161362853/200000000000 : ℚ), (188094423/2000000000 : ℚ), (-1851876639/25000000000 : ℚ), 2⟩,
    ⟨(640267409651/1000000000000 : ℚ), (133928563/10000000000 : ℚ), (-22825417341/1000000000000 : ℚ), 2⟩,
    ⟨(649298349239/1000000000000 : ℚ), (-107448919/2000000000 : ℚ), (817764661/40000000000 : ℚ), 2⟩,
    ⟨(41113291259/62500000000 : ℚ), (-1096777921/10000000000 : ℚ), (57008118177/1000000000000 : ℚ), 2⟩,
    ⟨(10402005389/15625000000 : ℚ), (-31261021/200000000 : ℚ), (43930768923/500000000000 : ℚ), 2⟩,
    ⟨(336484585563/500000000000 : ℚ), (-487593259/2500000000 : ℚ), (113784783407/1000000000000 : ℚ), 2⟩,
    ⟨(679465405717/1000000000000 : ℚ), (-2269910179/10000000000 : ℚ), (135391093259/1000000000000 : ℚ), 2⟩,
    ⟨(34257724319/50000000000 : ℚ), (-2530365617/10000000000 : ℚ), (76580707123/500000000000 : ℚ), 2⟩,
    ⟨(344990812079/500000000000 : ℚ), (-2738480969/10000000000 : ℚ), (41867576679/250000000000 : ℚ), 2⟩,
    ⟨(27756013243/40000000000 : ℚ), (-2899407867/10000000000 : ℚ), (22325659017/125000000000 : ℚ), 2⟩,
    ⟨(348436433921/500000000000 : ℚ), (-603396403/2000000000 : ℚ), (1167382047/6250000000 : ℚ), 2⟩,
    ⟨(87358825913/125000000000 : ℚ), (-309392199/1000000000 : ℚ), (192150523703/1000000000000 : ℚ), 2⟩,
    ⟨(349937155069/500000000000 : ℚ), (-1565983817/5000000000 : ℚ), (194811327903/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-3136703653/10000000000 : ℚ), (97571409731/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (6739854519/40000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control403.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control403.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate403
