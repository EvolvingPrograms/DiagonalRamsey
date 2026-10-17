import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control307
namespace DiagonalRamsey.JointInheritedCertificate307
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38360688441/125000000000 : ℚ), (6409886621913/5000000000 : ℚ), (-394282744795539/1000000000000 : ℚ), 12⟩,
    ⟨(307814846203/1000000000000 : ℚ), (174839796397/1250000000 : ℚ), (-21795903310097/500000000000 : ℚ), 8⟩,
    ⟨(154832286757/500000000000 : ℚ), (489116149851/10000000000 : ℚ), (-3107290787083/200000000000 : ℚ), 7⟩,
    ⟨(39052109447/125000000000 : ℚ), (3004553533/125000000 : ℚ), (-3903408540629/500000000000 : ℚ), 6⟩,
    ⟨(63209049243/200000000000 : ℚ), (69517406131/5000000000 : ℚ), (-1156444972869/250000000000 : ℚ), 5⟩,
    ⟨(160257371119/500000000000 : ℚ), (44195901403/5000000000 : ℚ), (-376926951187/125000000000 : ℚ), 5⟩,
    ⟨(81445579989/250000000000 : ℚ), (11940014639/2000000000 : ℚ), (-2089080469537/1000000000000 : ℚ), 4⟩,
    ⟨(66359449943/200000000000 : ℚ), (42003819133/10000000000 : ℚ), (-1507747409399/1000000000000 : ℚ), 4⟩,
    ⟨(169250802227/500000000000 : ℚ), (30397687121/10000000000 : ℚ), (-559543906557/500000000000 : ℚ), 4⟩,
    ⟨(86457704393/250000000000 : ℚ), (22422724217/10000000000 : ℚ), (-846423143679/1000000000000 : ℚ), 3⟩,
    ⟨(353714304739/1000000000000 : ℚ), (16738355847/10000000000 : ℚ), (-647744120931/1000000000000 : ℚ), 3⟩,
    ⟨(181038071833/500000000000 : ℚ), (3141183861/2500000000 : ℚ), (-498473303781/1000000000000 : ℚ), 3⟩,
    ⟨(370835805271/1000000000000 : ℚ), (9424184567/10000000000 : ℚ), (-383457800221/1000000000000 : ℚ), 3⟩,
    ⟨(189954464613/500000000000 : ℚ), (3505789773/5000000000 : ℚ), (-292947016679/1000000000000 : ℚ), 3⟩,
    ⟨(194604068193/500000000000 : ℚ), (2562570701/5000000000 : ℚ), (-13777501163/62500000000 : ℚ), 3⟩,
    ⟨(398643870303/1000000000000 : ℚ), (1813749077/5000000000 : ℚ), (-32294284623/200000000000 : ℚ), 3⟩,
    ⟨(204062629851/500000000000 : ℚ), (2422795079/10000000000 : ℚ), (-28223921813/250000000000 : ℚ), 2⟩,
    ⟨(20878049681/50000000000 : ℚ), (90170367/625000000 : ℚ), (-36224477079/500000000000 : ℚ), 2⟩,
    ⟨(21343010039/50000000000 : ℚ), (127545753/2000000000 : ℚ), (-38471905479/1000000000000 : ℚ), 2⟩,
    ⟨(217966662367/500000000000 : ℚ), (-28719637/10000000000 : ℚ), (-2432343909/250000000000 : ℚ), 2⟩,
    ⟨(22234649317/50000000000 : ℚ), (-291947233/5000000000 : ℚ), (3677513359/250000000000 : ℚ), 2⟩,
    ⟨(226527412633/500000000000 : ℚ), (-209678969/2000000000 : ℚ), (17778121211/500000000000 : ℚ), 2⟩,
    ⟨(230469156217/500000000000 : ℚ), (-1437923159/10000000000 : ℚ), (6669342323/125000000000 : ℚ), 2⟩,
    ⟨(29266720347/62500000000 : ℚ), (-352907329/2000000000 : ℚ), (34263685453/500000000000 : ℚ), 2⟩,
    ⟨(474971880291/1000000000000 : ℚ), (-509385217/2500000000 : ℚ), (1017518867/12500000000 : ℚ), 2⟩,
    ⟨(9619736201/20000000000 : ℚ), (-2264135653/10000000000 : ℚ), (23057864137/250000000000 : ℚ), 2⟩,
    ⟨(60781798471/125000000000 : ℚ), (-489977371/2000000000 : ℚ), (101214275047/1000000000000 : ℚ), 2⟩,
    ⟨(490723883791/1000000000000 : ℚ), (-1299536681/5000000000 : ℚ), (108501598919/1000000000000 : ℚ), 2⟩,
    ⟨(494352254429/1000000000000 : ℚ), (-2714942959/10000000000 : ℚ), (114208480963/1000000000000 : ℚ), 2⟩,
    ⟨(497104556491/1000000000000 : ℚ), (-87496877/312500000 : ℚ), (29604997397/250000000000 : ℚ), 2⟩,
    ⟨(249477141901/500000000000 : ℚ), (-2855641109/10000000000 : ℚ), (121196041201/1000000000000 : ℚ), 2⟩,
    ⟨(499883622477/1000000000000 : ℚ), (-2883248223/10000000000 : ℚ), (4902991629/40000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2886686903/10000000000 : ℚ), (490986819/4000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (146627206953/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control307.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control307.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate307

-- Control308
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
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

-- Control309
namespace DiagonalRamsey.JointInheritedCertificate309
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(223908979299/1000000000000 : ℚ), (5784254396823/5000000000 : ℚ), (-64913349851571/250000000000 : ℚ), 11⟩,
    ⟨(8986405891/40000000000 : ℚ), (1260451796473/10000000000 : ℚ), (-717606821199/25000000000 : ℚ), 8⟩,
    ⟨(56538812267/250000000000 : ℚ), (219941113049/5000000000 : ℚ), (-2557047979939/250000000000 : ℚ), 7⟩,
    ⟨(14273742877/62500000000 : ℚ), (4313015491/200000000 : ℚ), (-1027529899041/200000000000 : ℚ), 6⟩,
    ⟨(46262526739/200000000000 : ℚ), (12440214781/1000000000 : ℚ), (-3042555979389/1000000000000 : ℚ), 5⟩,
    ⟨(117462624047/500000000000 : ℚ), (9856478549/1250000000 : ℚ), (-1981784959717/1000000000000 : ℚ), 5⟩,
    ⟨(239182937779/1000000000000 : ℚ), (26539455029/5000000000 : ℚ), (-685717011117/500000000000 : ℚ), 4⟩,
    ⟨(24404469887/100000000000 : ℚ), (37203904537/10000000000 : ℚ), (-197647311201/200000000000 : ℚ), 4⟩,
    ⟨(249463709949/1000000000000 : ℚ), (837664543/312500000 : ℚ), (-731877511493/1000000000000 : ℚ), 4⟩,
    ⟨(255387782979/1000000000000 : ℚ), (19667765887/10000000000 : ℚ), (-137965517171/250000000000 : ℚ), 3⟩,
    ⟨(261759865897/1000000000000 : ℚ), (14584530017/10000000000 : ℚ), (-420527579957/1000000000000 : ℚ), 3⟩,
    ⟨(268518592061/1000000000000 : ℚ), (10854081103/10000000000 : ℚ), (-321691817669/1000000000000 : ℚ), 3⟩,
    ⟨(68899717811/250000000000 : ℚ), (8047188801/10000000000 : ℚ), (-958514631/3906250000 : ℚ), 3⟩,
    ⟨(282932516487/1000000000000 : ℚ), (1472504203/2500000000 : ℚ), (-185174638761/1000000000000 : ℚ), 3⟩,
    ⟨(36306112597/125000000000 : ℚ), (210087091/500000000 : ℚ), (-136800429249/1000000000000 : ℚ), 3⟩,
    ⟨(37259454653/125000000000 : ℚ), (2859467527/10000000000 : ℚ), (-97322111993/1000000000000 : ℚ), 3⟩,
    ⟨(305739276187/1000000000000 : ℚ), (1777605887/10000000000 : ℚ), (-16168589393/250000000000 : ℚ), 3⟩,
    ⟨(62673202527/200000000000 : ℚ), (895299063/10000000000 : ℚ), (-233580617/6250000000 : ℚ), 2⟩,
    ⟨(80220599231/250000000000 : ℚ), (33699153/2000000000 : ℚ), (-14331934713/1000000000000 : ℚ), 2⟩,
    ⟨(328216042167/1000000000000 : ℚ), (-435181623/10000000000 : ℚ), (2627377323/500000000000 : ℚ), 2⟩,
    ⟨(6705926427/20000000000 : ℚ), (-939844213/10000000000 : ℚ), (2199320553/100000000000 : ℚ), 2⟩,
    ⟨(171027523757/500000000000 : ℚ), (-272729469/2000000000 : ℚ), (18171755619/500000000000 : ℚ), 2⟩,
    ⟨(5444173913/15625000000 : ℚ), (-1720387661/10000000000 : ℚ), (9731528169/200000000000 : ℚ), 2⟩,
    ⟨(177175601731/500000000000 : ℚ), (-25257819/125000000 : ℚ), (59206297697/1000000000000 : ℚ), 2⟩,
    ⟨(359770214541/1000000000000 : ℚ), (-1136242711/5000000000 : ℚ), (68198311413/1000000000000 : ℚ), 2⟩,
    ⟨(22789498477/62500000000 : ℚ), (-2482233977/10000000000 : ℚ), (3789742213/50000000000 : ℚ), 2⟩,
    ⟨(368889665317/1000000000000 : ℚ), (-2654701407/10000000000 : ℚ), (20529980507/250000000000 : ℚ), 2⟩,
    ⟨(372502279717/1000000000000 : ℚ), (-2793591063/10000000000 : ℚ), (87268309097/1000000000000 : ℚ), 2⟩,
    ⟨(375435027379/1000000000000 : ℚ), (-1450853591/5000000000 : ℚ), (91311415311/1000000000000 : ℚ), 2⟩,
    ⟨(377659664343/1000000000000 : ℚ), (-2981121629/10000000000 : ℚ), (9430170489/100000000000 : ℚ), 2⟩,
    ⟨(47394345767/125000000000 : ℚ), (-3033293869/10000000000 : ℚ), (96275928357/1000000000000 : ℚ), 2⟩,
    ⟨(11872060441/31250000000 : ℚ), (-764788449/2500000000 : ℚ), (778059117/8000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-612475161/2000000000 : ℚ), (97379810817/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (88001904363/250000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control309.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control309.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate309

-- Control310
namespace DiagonalRamsey.JointInheritedCertificate310
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23723258529/100000000000 : ℚ), (11754726204889/10000000000 : ℚ), (-279522553386907/1000000000000 : ℚ), 11⟩,
    ⟨(119007941277/500000000000 : ℚ), (640513803861/5000000000 : ℚ), (-15450668018257/500000000000 : ℚ), 8⟩,
    ⟨(239574933501/1000000000000 : ℚ), (223603925537/5000000000 : ℚ), (-11011494521941/1000000000000 : ℚ), 7⟩,
    ⟨(120947361809/500000000000 : ℚ), (109663634707/5000000000 : ℚ), (-2765727565213/500000000000 : ℚ), 6⟩,
    ⟨(122476456029/500000000000 : ℚ), (63289255697/5000000000 : ℚ), (-3276084219903/1000000000000 : ℚ), 5⟩,
    ⟨(124360023397/500000000000 : ℚ), (20067612437/2500000000 : ℚ), (-1067095483593/500000000000 : ℚ), 5⟩,
    ⟨(253159848261/1000000000000 : ℚ), (54063339241/10000000000 : ℚ), (-738596458631/500000000000 : ℚ), 4⟩,
    ⟨(129114779371/500000000000 : ℚ), (18958751827/5000000000 : ℚ), (-266184749969/250000000000 : ℚ), 4⟩,
    ⟨(52776070831/200000000000 : ℚ), (13669694271/5000000000 : ℚ), (-788837803671/1000000000000 : ℚ), 4⟩,
    ⟨(1080231257/4000000000 : ℚ), (20077489399/10000000000 : ℚ), (-595130264533/1000000000000 : ℚ), 3⟩,
    ⟨(27670244671/100000000000 : ℚ), (14905027569/10000000000 : ℚ), (-28364780491/62500000000 : ℚ), 3⟩,
    ⟨(70937565023/250000000000 : ℚ), (1110885857/1000000000 : ℚ), (-173767681207/500000000000 : ℚ), 3⟩,
    ⟨(2911333801/10000000000 : ℚ), (165050759/200000000 : ℚ), (-53097565327/200000000000 : ℚ), 3⟩,
    ⟨(298780703253/1000000000000 : ℚ), (6057569883/10000000000 : ℚ), (-100392649859/500000000000 : ℚ), 3⟩,
    ⟨(19163661353/62500000000 : ℚ), (868001959/2000000000 : ℚ), (-148823554601/1000000000000 : ℚ), 3⟩,
    ⟨(39321441529/125000000000 : ℚ), (148740257/500000000 : ℚ), (-106441947353/1000000000000 : ℚ), 3⟩,
    ⟨(161281481871/500000000000 : ℚ), (14998709/80000000 : ℚ), (-55793727/781250000 : ℚ), 3⟩,
    ⟨(165257957163/500000000000 : ℚ), (1565029/16000000 : ℚ), (-42146567879/1000000000000 : ℚ), 2⟩,
    ⟨(338353792721/1000000000000 : ℚ), (59961741/2500000000 : ℚ), (-17463581663/1000000000000 : ℚ), 2⟩,
    ⟨(173000557937/500000000000 : ℚ), (-74608867/2000000000 : ℚ), (1751106079/500000000000 : ℚ), 2⟩,
    ⟨(176692117941/500000000000 : ℚ), (-885112287/10000000000 : ℚ), (21404557431/1000000000000 : ℚ), 2⟩,
    ⟨(22527003079/62500000000 : ℚ), (-328718789/2500000000 : ℚ), (36740087777/1000000000000 : ℚ), 2⟩,
    ⟨(91769170431/250000000000 : ℚ), (-83820611/500000000 : ℚ), (3118063627/62500000000 : ℚ), 2⟩,
    ⟨(373254141819/1000000000000 : ℚ), (-495126369/2500000000 : ℚ), (305720179/5000000000 : ℚ), 2⟩,
    ⟨(23681558577/62500000000 : ℚ), (-69857937/312500000 : ℚ), (70731156391/1000000000000 : ℚ), 2⟩,
    ⟨(383974647713/1000000000000 : ℚ), (-611915501/2500000000 : ℚ), (39412497647/500000000000 : ℚ), 2⟩,
    ⟨(19420722459/50000000000 : ℚ), (-163879253/625000000 : ℚ), (85560087683/1000000000000 : ℚ), 2⟩,
    ⟨(98045395979/250000000000 : ℚ), (-138123001/500000000 : ℚ), (45519674831/500000000000 : ℚ), 2⟩,
    ⟨(98809943089/250000000000 : ℚ), (-1435853597/5000000000 : ℚ), (95340423687/1000000000000 : ℚ), 2⟩,
    ⟨(397559562473/1000000000000 : ℚ), (-2951930119/10000000000 : ℚ), (98520414913/1000000000000 : ℚ), 2⟩,
    ⟨(19955930671/50000000000 : ℚ), (-3004622901/10000000000 : ℚ), (100619361903/1000000000000 : ℚ), 2⟩,
    ⟨(99975477671/250000000000 : ℚ), (-757684417/2500000000 : ℚ), (101662672121/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3033991279/10000000000 : ℚ), (1590512509/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (342531925917/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control310.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control310.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate310

-- Control311
namespace DiagonalRamsey.JointInheritedCertificate311
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31334021361/125000000000 : ℚ), (2985000511491/2500000000 : ℚ), (-150001555233553/500000000000 : ℚ), 11⟩,
    ⟨(125743519651/500000000000 : ℚ), (1301497284263/10000000000 : ℚ), (-16582943414009/500000000000 : ℚ), 8⟩,
    ⟨(31638616063/125000000000 : ℚ), (227247079701/5000000000 : ℚ), (-2954693298617/250000000000 : ℚ), 7⟩,
    ⟨(255522218813/1000000000000 : ℚ), (55745710087/2500000000 : ℚ), (-5937251248201/1000000000000 : ℚ), 6⟩,
    ⟨(64675917231/250000000000 : ℚ), (64370751457/5000000000 : ℚ), (-1758336579889/500000000000 : ℚ), 5⟩,
    ⟨(262622639733/1000000000000 : ℚ), (8167950499/1000000000 : ℚ), (-572791236421/250000000000 : ℚ), 5⟩,
    ⟨(267241389409/1000000000000 : ℚ), (27520187889/5000000000 : ℚ), (-79304445657/50000000000 : ℚ), 4⟩,
    ⟨(272515436869/1000000000000 : ℚ), (772501201/200000000 : ℚ), (-571741837411/500000000000 : ℚ), 4⟩,
    ⟨(278393990151/1000000000000 : ℚ), (69670899/25000000 : ℚ), (-423722580531/500000000000 : ℚ), 4⟩,
    ⟨(142410217787/500000000000 : ℚ), (10241338003/5000000000 : ℚ), (-79953886229/125000000000 : ℚ), 3⟩,
    ⟨(72933220739/250000000000 : ℚ), (15221429207/10000000000 : ℚ), (-488079108973/1000000000000 : ℚ), 3⟩,
    ⟨(5981295233/20000000000 : ℚ), (11359866403/10000000000 : ℚ), (-93522760217/250000000000 : ℚ), 3⟩,
    ⟨(38343182707/125000000000 : ℚ), (8454365869/10000000000 : ℚ), (-143070111379/500000000000 : ℚ), 3⟩,
    ⟨(314701013633/1000000000000 : ℚ), (6221796017/10000000000 : ℚ), (-21681101207/100000000000 : ℚ), 3⟩,
    ⟨(80713700317/250000000000 : ℚ), (447510681/1000000000 : ℚ), (-161160846689/1000000000000 : ℚ), 3⟩,
    ⟨(331128299129/1000000000000 : ℚ), (3087100203/10000000000 : ℚ), (-115796416083/1000000000000 : ℚ), 3⟩,
    ⟨(84860457227/250000000000 : ℚ), (1969137063/10000000000 : ℚ), (-7832904477/100000000000 : ℚ), 2⟩,
    ⟨(347715326769/1000000000000 : ℚ), (1058146121/10000000000 : ℚ), (-47041257061/1000000000000 : ℚ), 2⟩,
    ⟨(88967278601/250000000000 : ℚ), (308438879/10000000000 : ℚ), (-2067583897/100000000000 : ℚ), 2⟩,
    ⟨(363824666381/1000000000000 : ℚ), (-78398391/2500000000 : ℚ), (106342789/62500000000 : ℚ), 2⟩,
    ⟨(371505366387/1000000000000 : ℚ), (-416500743/5000000000 : ℚ), (20793744149/1000000000000 : ℚ), 2⟩,
    ⟨(378837245081/1000000000000 : ℚ), (-1268665023/10000000000 : ℚ), (18567675371/500000000000 : ℚ), 2⟩,
    ⟨(385749692463/1000000000000 : ℚ), (-408736361/2500000000 : ℚ), (1597992053/31250000000 : ℚ), 2⟩,
    ⟨(196088068943/500000000000 : ℚ), (-971423017/5000000000 : ℚ), (31555193229/500000000000 : ℚ), 2⟩,
    ⟨(12439209099/31250000000 : ℚ), (-8803361/40000000 : ℚ), (11728497/160000000 : ℚ), 2⟩,
    ⟨(100832184657/250000000000 : ℚ), (-1207734989/5000000000 : ℚ), (81902485157/1000000000000 : ℚ), 2⟩,
    ⟨(25496718019/62500000000 : ℚ), (-1295891029/5000000000 : ℚ), (22263494707/250000000000 : ℚ), 2⟩,
    ⟨(411866459113/1000000000000 : ℚ), (-2733649021/10000000000 : ℚ), (47434491629/500000000000 : ℚ), 2⟩,
    ⟨(51880988653/125000000000 : ℚ), (-1422002633/5000000000 : ℚ), (99431631379/1000000000000 : ℚ), 2⟩,
    ⟨(417461199533/1000000000000 : ℚ), (-1462510053/5000000000 : ℚ), (20560773119/200000000000 : ℚ), 2⟩,
    ⟨(83816617747/200000000000 : ℚ), (-186138897/625000000 : ℚ), (10502915413/100000000000 : ℚ), 2⟩,
    ⟨(8397959143/20000000000 : ℚ), (-3004586407/10000000000 : ℚ), (106135099583/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3007870927/10000000000 : ℚ), (106273032657/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (66594897843/200000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control311.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control311.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate311

-- Control312
namespace DiagonalRamsey.JointInheritedCertificate312
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74931461557/250000000000 : ℚ), (838376337059/625000000 : ℚ), (-402896047358051/1000000000000 : ℚ), 12⟩,
    ⟨(37574174053/125000000000 : ℚ), (183027490067/1250000000 : ℚ), (-445388348213/10000000000 : ℚ), 8⟩,
    ⟨(302320129871/1000000000000 : ℚ), (512318468207/10000000000 : ℚ), (-7935079920931/500000000000 : ℚ), 7⟩,
    ⟨(304889429143/1000000000000 : ℚ), (25191333893/1000000000 : ℚ), (-1992880202343/250000000000 : ℚ), 6⟩,
    ⟨(61655309297/200000000000 : ℚ), (145788933647/10000000000 : ℚ), (-944181411389/200000000000 : ℚ), 5⟩,
    ⟨(62489772421/200000000000 : ℚ), (46359688571/5000000000 : ℚ), (-768823386877/250000000000 : ℚ), 5⟩,
    ⟨(317366194323/1000000000000 : ℚ), (62632631323/10000000000 : ℚ), (-266081835557/125000000000 : ℚ), 4⟩,
    ⟨(16149059327/50000000000 : ℚ), (4406168843/1000000000 : ℚ), (-306910548173/200000000000 : ℚ), 4⟩,
    ⟨(164619881657/500000000000 : ℚ), (15935739961/5000000000 : ℚ), (-1137329733461/1000000000000 : ℚ), 4⟩,
    ⟨(336081651127/1000000000000 : ℚ), (23487397299/10000000000 : ℚ), (-107328933711/125000000000 : ℚ), 3⟩,
    ⟨(343440958861/1000000000000 : ℚ), (17505483729/10000000000 : ℚ), (-81941357281/125000000000 : ℚ), 3⟩,
    ⟨(175623406179/500000000000 : ℚ), (327719899/250000000 : ℚ), (-502913678383/1000000000000 : ℚ), 3⟩,
    ⟨(359424036983/1000000000000 : ℚ), (391870917/400000000 : ℚ), (-24081016321/62500000000 : ℚ), 3⟩,
    ⟨(45986735199/125000000000 : ℚ), (7249558877/10000000000 : ℚ), (-292715331169/1000000000000 : ℚ), 3⟩,
    ⟨(376574776951/1000000000000 : ℚ), (1313887069/2500000000 : ℚ), (-54632083471/250000000000 : ℚ), 3⟩,
    ⟨(385383121293/1000000000000 : ℚ), (917654443/2500000000 : ℚ), (-158172813287/1000000000000 : ℚ), 3⟩,
    ⟨(394234085447/1000000000000 : ℚ), (37408707/156250000 : ℚ), (-10843507709/100000000000 : ℚ), 3⟩,
    ⟨(40304242979/100000000000 : ℚ), (1354439999/10000000000 : ℚ), (-3350124207/50000000000 : ℚ), 2⟩,
    ⟨(411723325149/1000000000000 : ℚ), (499400417/10000000000 : ℚ), (-16090125413/500000000000 : ℚ), 2⟩,
    ⟨(210096584879/500000000000 : ℚ), (-209344847/10000000000 : ℚ), (-2707127847/1000000000000 : ℚ), 2⟩,
    ⟨(428370394383/1000000000000 : ℚ), (-20011733/250000000 : ℚ), (2236763999/100000000000 : ℚ), 2⟩,
    ⟨(10904406197/25000000000 : ℚ), (-1295633701/10000000000 : ℚ), (1094207781/25000000000 : ℚ), 2⟩,
    ⟨(221767777807/500000000000 : ℚ), (-85567613/500000000 : ℚ), (62051162287/1000000000000 : ℚ), 2⟩,
    ⟨(450377443427/1000000000000 : ℚ), (-257538301/1250000000 : ℚ), (38822997661/500000000000 : ℚ), 2⟩,
    ⟨(2283180101/5000000000 : ℚ), (-1176141501/5000000000 : ℚ), (90886068883/1000000000000 : ℚ), 2⟩,
    ⟨(231125506209/500000000000 : ℚ), (-1297426577/5000000000 : ℚ), (5101499623/50000000000 : ℚ), 2⟩,
    ⟨(93433668927/200000000000 : ℚ), (-1396934193/5000000000 : ℚ), (22255587399/200000000000 : ℚ), 2⟩,
    ⟨(94268132051/200000000000 : ℚ), (-2953825861/10000000000 : ℚ), (2375674843/20000000000 : ℚ), 2⟩,
    ⟨(237363888799/500000000000 : ℚ), (-96191809/312500000 : ℚ), (124663991437/1000000000000 : ℚ), 2⟩,
    ⟨(47729707687/100000000000 : ℚ), (-1584664911/5000000000 : ℚ), (129004785133/1000000000000 : ℚ), 2⟩,
    ⟨(479023814317/1000000000000 : ℚ), (-201823929/625000000 : ℚ), (32966676163/250000000000 : ℚ), 2⟩,
    ⟨(479891360513/1000000000000 : ℚ), (-3258832929/10000000000 : ℚ), (66644148733/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1631263187/5000000000 : ℚ), (66732781399/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (291250659157/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control312.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control312.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate312

-- Control313
namespace DiagonalRamsey.JointInheritedCertificate313
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(314368342061/1000000000000 : ℚ), (13663979162287/10000000000 : ℚ), (-215218921529857/500000000000 : ℚ), 12⟩,
    ⟨(315261670557/1000000000000 : ℚ), (745923392251/5000000000 : ℚ), (-1487013491343/31250000000 : ℚ), 8⟩,
    ⟨(317039724307/1000000000000 : ℚ), (522160132317/10000000000 : ℚ), (-4239020230023/250000000000 : ℚ), 7⟩,
    ⟨(319685379681/1000000000000 : ℚ), (256856594297/10000000000 : ℚ), (-8517556655117/1000000000000 : ℚ), 6⟩,
    ⟨(80793289393/250000000000 : ℚ), (148718138609/10000000000 : ℚ), (-630599550281/125000000000 : ℚ), 5⟩,
    ⟨(81867367193/250000000000 : ℚ), (4731544941/500000000 : ℚ), (-328676301839/100000000000 : ℚ), 5⟩,
    ⟨(20783308591/62500000000 : ℚ), (15990168237/2500000000 : ℚ), (-568874381849/250000000000 : ℚ), 4⟩,
    ⟨(84578699913/250000000000 : ℚ), (9005092413/2000000000 : ℚ), (-410220113113/250000000000 : ℚ), 4⟩,
    ⟨(86189843217/250000000000 : ℚ), (32593565213/10000000000 : ℚ), (-304153266453/250000000000 : ℚ), 4⟩,
    ⟨(175902296169/500000000000 : ℚ), (375651549/156250000 : ℚ), (-897445847/976562500 : ℚ), 3⟩,
    ⟨(287506087/800000000 : ℚ), (17939210259/10000000000 : ℚ), (-175533179707/250000000000 : ℚ), 3⟩,
    ⟨(183710220831/500000000000 : ℚ), (13453509679/10000000000 : ℚ), (-539225750971/1000000000000 : ℚ), 3⟩,
    ⟨(375840682349/1000000000000 : ℚ), (10074366341/10000000000 : ℚ), (-413720521471/1000000000000 : ℚ), 3⟩,
    ⟨(384562239291/1000000000000 : ℚ), (747568097/1000000000 : ℚ), (-31497150009/100000000000 : ℚ), 3⟩,
    ⟨(196750559563/500000000000 : ℚ), (5441666819/10000000000 : ℚ), (-235880716917/1000000000000 : ℚ), 3⟩,
    ⟨(80514247111/200000000000 : ℚ), (1912656159/5000000000 : ℚ), (-85786171199/500000000000 : ℚ), 3⟩,
    ⟨(128651637/312500000 : ℚ), (2523958613/10000000000 : ℚ), (-59305686567/500000000000 : ℚ), 3⟩,
    ⟨(420755354829/1000000000000 : ℚ), (732196037/5000000000 : ℚ), (-74525329643/1000000000000 : ℚ), 2⟩,
    ⟨(85938846933/200000000000 : ℚ), (296723163/5000000000 : ℚ), (-18750862171/500000000000 : ℚ), 2⟩,
    ⟨(438415791607/1000000000000 : ℚ), (-128090941/10000000000 : ℚ), (-6191161249/1000000000000 : ℚ), 2⟩,
    ⟨(223418016147/500000000000 : ℚ), (-29181069/400000000 : ℚ), (5106021737/250000000000 : ℚ), 2⟩,
    ⟨(90974773041/200000000000 : ℚ), (-616505901/5000000000 : ℚ), (43119788983/1000000000000 : ℚ), 2⟩,
    ⟨(462451881617/1000000000000 : ℚ), (-1655443357/10000000000 : ℚ), (31246117547/500000000000 : ℚ), 2⟩,
    ⟨(14671784409/31250000000 : ℚ), (-502451057/2500000000 : ℚ), (19750637083/250000000000 : ℚ), 2⟩,
    ⟨(475941674303/1000000000000 : ℚ), (-1153059837/5000000000 : ℚ), (93008625927/1000000000000 : ℚ), 2⟩,
    ⟨(481723536499/1000000000000 : ℚ), (-2552149651/10000000000 : ℚ), (26197124047/250000000000 : ℚ), 2⟩,
    ⟨(486787005183/1000000000000 : ℚ), (-1376947457/5000000000 : ℚ), (22911521071/200000000000 : ℚ), 2⟩,
    ⟨(491083316383/1000000000000 : ℚ), (-145798483/500000000 : ℚ), (12248172383/100000000000 : ℚ), 2⟩,
    ⟨(247285547137/500000000000 : ℚ), (-3041876593/10000000000 : ℚ), (128686617963/1000000000000 : ℚ), 2⟩,
    ⟨(497216749649/1000000000000 : ℚ), (-3134208967/10000000000 : ℚ), (133265265651/1000000000000 : ℚ), 2⟩,
    ⟨(249497401699/500000000000 : ℚ), (-3194796441/10000000000 : ℚ), (136283145621/1000000000000 : ℚ), 2⟩,
    ⟨(249944065947/500000000000 : ℚ), (-32248061/100000000 : ℚ), (137781950351/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-3228544139/10000000000 : ℚ), (137968831381/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (70198530217/250000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control313.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control313.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate313

-- Control314
namespace DiagonalRamsey.JointInheritedCertificate314
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(164613743761/500000000000 : ℚ), (13924929564249/10000000000 : ℚ), (-459375692583403/1000000000000 : ℚ), 12⟩,
    ⟨(330145555719/1000000000000 : ℚ), (760344300347/5000000000 : ℚ), (-25392207128209/500000000000 : ℚ), 8⟩,
    ⟨(66394570123/200000000000 : ℚ), (532434551529/10000000000 : ℚ), (-3619411385373/200000000000 : ℚ), 7⟩,
    ⟨(167345887181/500000000000 : ℚ), (3275214133/125000000 : ℚ), (-9091284535411/1000000000000 : ℚ), 6⟩,
    ⟨(338276142237/1000000000000 : ℚ), (75887992673/5000000000 : ℚ), (-1346280382191/250000000000 : ℚ), 5⟩,
    ⟨(171345717409/500000000000 : ℚ), (96626229187/10000000000 : ℚ), (-3508974858929/1000000000000 : ℚ), 5⟩,
    ⟨(347895130423/1000000000000 : ℚ), (16336693859/2500000000 : ℚ), (-2429812855499/1000000000000 : ℚ), 4⟩,
    ⟨(353837114621/1000000000000 : ℚ), (368249451/80000000 : ℚ), (-3423113053/1953125000 : ℚ), 4⟩,
    ⟨(180230081427/500000000000 : ℚ), (16673433153/5000000000 : ℚ), (-1299959081513/1000000000000 : ℚ), 4⟩,
    ⟨(367700491547/1000000000000 : ℚ), (12309866967/5000000000 : ℚ), (-196489889793/200000000000 : ℚ), 3⟩,
    ⟨(187744186189/500000000000 : ℚ), (4597815527/2500000000 : ℚ), (-93894862787/125000000000 : ℚ), 3⟩,
    ⟨(95937200949/250000000000 : ℚ), (3453132561/2500000000 : ℚ), (-288725443267/500000000000 : ℚ), 3⟩,
    ⟨(98100558333/250000000000 : ℚ), (129540173/125000000 : ℚ), (-443669060243/1000000000000 : ℚ), 3⟩,
    ⟨(25085332733/62500000000 : ℚ), (7710697049/10000000000 : ℚ), (-169225490221/500000000000 : ℚ), 3⟩,
    ⟨(102637938881/250000000000 : ℚ), (5634829283/10000000000 : ℚ), (-127110045369/500000000000 : ℚ), 3⟩,
    ⟨(419873058361/1000000000000 : ℚ), (3985584699/10000000000 : ℚ), (-232214007/1250000000 : ℚ), 3⟩,
    ⟨(107309865749/250000000000 : ℚ), (1329083141/5000000000 : ℚ), (-12943668221/100000000000 : ℚ), 3⟩,
    ⟨(438560765833/1000000000000 : ℚ), (98613031/625000000 : ℚ), (-41287989711/500000000000 : ℚ), 2⟩,
    ⟨(44774719763/100000000000 : ℚ), (690195951/10000000000 : ℚ), (-5406600893/125000000000 : ℚ), 2⟩,
    ⟨(228355144013/500000000000 : ℚ), (-44749141/10000000000 : ℚ), (-5012506457/500000000000 : ℚ), 2⟩,
    ⟨(232681858781/500000000000 : ℚ), (-328497687/5000000000 : ℚ), (3639129639/200000000000 : ℚ), 2⟩,
    ⟨(23681207449/50000000000 : ℚ), (-1169205573/10000000000 : ℚ), (1689568873/40000000000 : ℚ), 2⟩,
    ⟨(481412029811/1000000000000 : ℚ), (-1598677239/10000000000 : ℚ), (62744200583/1000000000000 : ℚ), 2⟩,
    ⟨(61081544813/125000000000 : ℚ), (-30604821/156250000 : ℚ), (80204776241/1000000000000 : ℚ), 2⟩,
    ⟨(495275406737/1000000000000 : ℚ), (-2259574339/10000000000 : ℚ), (95004890669/1000000000000 : ℚ), 2⟩,
    ⟨(250608695467/500000000000 : ℚ), (-627308113/2500000000 : ℚ), (107443125559/1000000000000 : ℚ), 2⟩,
    ⟨(25321054327/50000000000 : ℚ), (-1356920071/5000000000 : ℚ), (29437779217/250000000000 : ℚ), 2⟩,
    ⟨(510836379121/1000000000000 : ℚ), (-1439067223/5000000000 : ℚ), (63053648433/500000000000 : ℚ), 2⟩,
    ⟨(128605186749/250000000000 : ℚ), (-1502856509/5000000000 : ℚ), (132647189461/1000000000000 : ℚ), 2⟩,
    ⟨(258569835371/500000000000 : ℚ), (-3099240489/10000000000 : ℚ), (137471089697/1000000000000 : ℚ), 2⟩,
    ⟨(518966965639/1000000000000 : ℚ), (-790149371/2500000000 : ℚ), (3516242281/25000000000 : ℚ), 2⟩,
    ⟨(129971258459/250000000000 : ℚ), (-1595491939/5000000000 : ℚ), (142228037297/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-3194768637/10000000000 : ℚ), (28484964607/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (270230344943/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control314.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control314.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate314
