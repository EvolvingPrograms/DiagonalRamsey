import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control307.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control307.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate307
