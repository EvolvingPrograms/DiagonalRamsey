import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate308
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(160774395851/500000000000 : ℚ), (13071824738243/10000000000 : ℚ), (-84245600515699/200000000000 : ℚ), 12⟩,
    ⟨(322503812637/1000000000000 : ℚ), (71328747087/500000000 : ℚ), (-46571745938061/1000000000000 : ℚ), 8⟩,
    ⟨(81101164283/250000000000 : ℚ), (249519216407/5000000000 : ℚ), (-1037449311909/62500000000 : ℚ), 7⟩,
    ⟨(65446603803/200000000000 : ℚ), (122673558633/5000000000 : ℚ), (-130333898687/15625000000 : ℚ), 6⟩,
    ⟨(330961659617/1000000000000 : ℚ), (28397349021/2000000000 : ℚ), (-1235750784141/250000000000 : ℚ), 5⟩,
    ⟨(335554670089/1000000000000 : ℚ), (90317558733/10000000000 : ℚ), (-161132950983/50000000000 : ℚ), 5⟩,
    ⟨(340967817231/1000000000000 : ℚ), (12207499553/2000000000 : ℚ), (-2233102223957/1000000000000 : ℚ), 4⟩,
    ⟨(13885958779/40000000000 : ℚ), (1342936311/312500000 : ℚ), (-806068575681/500000000000 : ℚ), 4⟩,
    ⟨(354038598947/1000000000000 : ℚ), (31124153009/10000000000 : ℚ), (-1197025027237/1000000000000 : ℚ), 4⟩,
    ⟨(361570354749/1000000000000 : ℚ), (2872504153/1250000000 : ℚ), (-18116935057/20000000000 : ℚ), 3⟩,
    ⟨(73934340391/200000000000 : ℚ), (17174105909/10000000000 : ℚ), (-693721543923/1000000000000 : ℚ), 3⟩,
    ⟨(378264620163/1000000000000 : ℚ), (6455373287/5000000000 : ℚ), (-267195772081/500000000000 : ℚ), 3⟩,
    ⟨(48408294359/125000000000 : ℚ), (9702525101/10000000000 : ℚ), (-102916833471/250000000000 : ℚ), 3⟩,
    ⟨(198295107229/500000000000 : ℚ), (7238021797/10000000000 : ℚ), (-39391351219/125000000000 : ℚ), 3⟩,
    ⟨(6346037579/15625000000 : ℚ), (1327810423/2500000000 : ℚ), (-237835443717/1000000000000 : ℚ), 3⟩,
    ⟨(16633715813/40000000000 : ℚ), (1890950503/5000000000 : ℚ), (-3500184299/20000000000 : ℚ), 3⟩,
    ⟨(106396575691/250000000000 : ℚ), (2552080013/10000000000 : ℚ), (-1541124999/12500000000 : ℚ), 2⟩,
    ⟨(435282793033/1000000000000 : ℚ), (775987057/5000000000 : ℚ), (-80257490387/1000000000000 : ℚ), 2⟩,
    ⟨(44483898363/100000000000 : ℚ), (730912749/10000000000 : ℚ), (-8827425217/200000000000 : ℚ), 2⟩,
    ⟨(28385177701/62500000000 : ℚ), (51537839/10000000000 : ℚ), (-13607403669/1000000000000 : ℚ), 2⟩,
    ⟨(231582288963/500000000000 : ℚ), (-514063349/10000000000 : ℚ), (12328729521/1000000000000 : ℚ), 2⟩,
    ⟨(235878748067/500000000000 : ℚ), (-1542161/15625000 : ℚ), (34431653241/1000000000000 : ℚ), 2⟩,
    ⟨(23992942167/50000000000 : ℚ), (-108071/781250 : ℚ), (53286196481/1000000000000 : ℚ), 2⟩,
    ⟨(243695299571/500000000000 : ℚ), (-857700517/5000000000 : ℚ), (69344972219/1000000000000 : ℚ), 2⟩,
    ⟨(247140114307/500000000000 : ℚ), (-398561017/2000000000 : ℚ), (82959600287/1000000000000 : ℚ), 2⟩,
    ⟨(250230690429/500000000000 : ℚ), (-2222910743/10000000000 : ℚ), (94403525873/1000000000000 : ℚ), 2⟩,
    ⟨(505874527999/1000000000000 : ℚ), (-241143403/1000000000 : ℚ), (103888895591/1000000000000 : ℚ), 2⟩,
    ⟨(63808442309/125000000000 : ℚ), (-640692913/2500000000 : ℚ), (55789572957/500000000000 : ℚ), 2⟩,
    ⟨(514196179073/1000000000000 : ℚ), (-670065609/2500000000 : ℚ), (11759842923/100000000000 : ℚ), 2⟩,
    ⟨(517024540957/1000000000000 : ℚ), (-1383189613/5000000000 : ℚ), (4881545633/40000000000 : ℚ), 2⟩,
    ⟨(129731346363/250000000000 : ℚ), (-2822867309/10000000000 : ℚ), (62482282391/500000000000 : ℚ), 2⟩,
    ⟨(259940203193/500000000000 : ℚ), (-712710063/2500000000 : ℚ), (7901092839/62500000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1427162151/5000000000 : ℚ), (63299317583/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (141480413677/500000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control308.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control308.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate308
