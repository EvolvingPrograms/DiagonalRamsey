import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control339
namespace DiagonalRamsey.JointInheritedCertificate339
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28173401389/100000000000 : ℚ), (279144887073/250000000 : ℚ), (-157672894576269/500000000000 : ℚ), 11⟩,
    ⟨(141344071733/500000000000 : ℚ), (60830849747/500000000 : ℚ), (-4358615218381/125000000000 : ℚ), 8⟩,
    ⟨(284587213829/1000000000000 : ℚ), (106164043241/2500000000 : ℚ), (-2486135873357/200000000000 : ℚ), 7⟩,
    ⟨(143706467947/500000000000 : ℚ), (8330527093/400000000 : ℚ), (-6248594290533/1000000000000 : ℚ), 6⟩,
    ⟨(291138096411/1000000000000 : ℚ), (120218044019/10000000000 : ℚ), (-3704388000729/1000000000000 : ℚ), 5⟩,
    ⟨(295726820049/1000000000000 : ℚ), (76277283743/10000000000 : ℚ), (-1208181727757/500000000000 : ℚ), 5⟩,
    ⟨(301134914891/1000000000000 : ℚ), (51423639609/10000000000 : ℚ), (-418849379273/250000000000 : ℚ), 4⟩,
    ⟨(307310298027/1000000000000 : ℚ), (36122269717/10000000000 : ℚ), (-1210342078179/1000000000000 : ℚ), 4⟩,
    ⟨(314193497141/1000000000000 : ℚ), (163162309/62500000 : ℚ), (-899367621309/1000000000000 : ℚ), 4⟩,
    ⟨(10053694477/31250000000 : ℚ), (19236871431/10000000000 : ℚ), (-681148593779/1000000000000 : ℚ), 3⟩,
    ⟨(329812009169/1000000000000 : ℚ), (14350246343/10000000000 : ℚ), (-130521908383/250000000000 : ℚ), 3⟩,
    ⟨(169198453637/500000000000 : ℚ), (2692274457/2500000000 : ℚ), (-80505872557/200000000000 : ℚ), 3⟩,
    ⟨(347390240317/1000000000000 : ℚ), (8079148751/10000000000 : ℚ), (-155178135663/500000000000 : ℚ), 3⟩,
    ⟨(22294087349/62500000000 : ℚ), (6016071433/10000000000 : ℚ), (-237771757731/1000000000000 : ℚ), 3⟩,
    ⟨(366252669019/1000000000000 : ℚ), (1101322037/2500000000 : ℚ), (-22447305951/125000000000 : ℚ), 3⟩,
    ⟨(375940109179/1000000000000 : ℚ), (625622729/2000000000 : ℚ), (-132207131331/1000000000000 : ℚ), 3⟩,
    ⟨(385674422719/1000000000000 : ℚ), (2101859421/10000000000 : ℚ), (-93144308429/1000000000000 : ℚ), 2⟩,
    ⟨(395361862879/1000000000000 : ℚ), (792311/6250000 : ℚ), (-60581717721/1000000000000 : ℚ), 2⟩,
    ⟨(202454567157/500000000000 : ℚ), (291508187/5000000000 : ℚ), (-33194639217/1000000000000 : ℚ), 2⟩,
    ⟨(414224291581/1000000000000 : ℚ), (16468531/10000000000 : ℚ), (-4998792869/500000000000 : ℚ), 2⟩,
    ⟨(26451101539/62500000000 : ℚ), (-455314801/10000000000 : ℚ), (9752032303/1000000000000 : ℚ), 2⟩,
    ⟨(431802522729/1000000000000 : ℚ), (-424976211/5000000000 : ℚ), (13309837989/500000000000 : ℚ), 2⟩,
    ⟨(219948154317/500000000000 : ℚ), (-1180852781/10000000000 : ℚ), (41039492697/1000000000000 : ℚ), 2⟩,
    ⟨(447421034757/1000000000000 : ℚ), (-729147893/5000000000 : ℚ), (53346812751/1000000000000 : ℚ), 2⟩,
    ⟨(454304233871/1000000000000 : ℚ), (-845102029/5000000000 : ℚ), (31900787809/500000000000 : ℚ), 2⟩,
    ⟨(460479617007/1000000000000 : ℚ), (-1882699693/10000000000 : ℚ), (72605459937/1000000000000 : ℚ), 2⟩,
    ⟨(465887711849/1000000000000 : ℚ), (-408102051/2000000000 : ℚ), (3995727929/50000000000 : ℚ), 2⟩,
    ⟨(470476435487/1000000000000 : ℚ), (-270908361/1250000000 : ℚ), (42924418767/500000000000 : ℚ), 2⟩,
    ⟨(118550399001/250000000000 : ℚ), (-2265723731/10000000000 : ℚ), (90499219319/1000000000000 : ℚ), 2⟩,
    ⟨(119256829517/250000000000 : ℚ), (-584479657/2500000000 : ℚ), (23483215977/250000000000 : ℚ), 2⟩,
    ⟨(478926388431/1000000000000 : ℚ), (-2385288809/10000000000 : ℚ), (19239406917/200000000000 : ℚ), 2⟩,
    ⟨(59985064751/125000000000 : ℚ), (-2408750829/10000000000 : ℚ), (97321810177/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2411673241/10000000000 : ℚ), (97462068459/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (8324878703/25000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control339.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control339.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate339

-- Control340
namespace DiagonalRamsey.JointInheritedCertificate340
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(295793416917/1000000000000 : ℚ), (2845664998363/2500000000 : ℚ), (-337498517525319/1000000000000 : ℚ), 11⟩,
    ⟨(296776134853/1000000000000 : ℚ), (620289959131/5000000000 : ℚ), (-18659536329269/500000000000 : ℚ), 8⟩,
    ⟨(298732106613/1000000000000 : ℚ), (1732752849/40000000 : ℚ), (-6652319653981/500000000000 : ℚ), 7⟩,
    ⟨(301642495121/1000000000000 : ℚ), (212545403063/10000000000 : ℚ), (-1337663358973/200000000000 : ℚ), 6⟩,
    ⟨(4773113621/15625000000 : ℚ), (491012307/40000000 : ℚ), (-247839595317/62500000000 : ℚ), 5⟩,
    ⟨(155102743113/500000000000 : ℚ), (19482412507/2500000000 : ℚ), (-1293492958057/500000000000 : ℚ), 5⟩,
    ⟨(157887811269/500000000000 : ℚ), (52570102463/10000000000 : ℚ), (-112127319077/62500000000 : ℚ), 4⟩,
    ⟨(161068018611/500000000000 : ℚ), (1478121871/400000000 : ℚ), (-1296391497223/1000000000000 : ℚ), 4⟩,
    ⟨(41153184501/125000000000 : ℚ), (13363712609/5000000000 : ℚ), (-30114410211/31250000000 : ℚ), 4⟩,
    ⟨(13479026549/40000000000 : ℚ), (19713127879/10000000000 : ℚ), (-146042415887/200000000000 : ℚ), 3⟩,
    ⟨(86327990457/250000000000 : ℚ), (14722253041/10000000000 : ℚ), (-560086314811/1000000000000 : ℚ), 3⟩,
    ⟨(354154087209/1000000000000 : ℚ), (11064221919/10000000000 : ℚ), (-432247018377/1000000000000 : ℚ), 3⟩,
    ⟨(363416885369/1000000000000 : ℚ), (8316361399/10000000000 : ℚ), (-333724613689/1000000000000 : ℚ), 3⟩,
    ⟨(11656598453/31250000000 : ℚ), (620892251/1000000000 : ℚ), (-64043456271/250000000000 : ℚ), 3⟩,
    ⟨(382844484573/1000000000000 : ℚ), (2281848619/5000000000 : ℚ), (-194031058427/1000000000000 : ℚ), 3⟩,
    ⟨(392822187217/1000000000000 : ℚ), (814873341/2500000000 : ℚ), (-143475132353/1000000000000 : ℚ), 3⟩,
    ⟨(402848167697/1000000000000 : ℚ), (88473801/400000000 : ℚ), (-101814620489/1000000000000 : ℚ), 2⟩,
    ⟨(412825870341/1000000000000 : ℚ), (680317717/5000000000 : ℚ), (-67112775753/1000000000000 : ℚ), 2⟩,
    ⟨(211329602209/500000000000 : ℚ), (41393729/625000000 : ℚ), (-37950274993/1000000000000 : ℚ), 2⟩,
    ⟨(86450693909/200000000000 : ℚ), (21193433/2500000000 : ℚ), (-13270792769/1000000000000 : ℚ), 2⟩,
    ⟨(88303253541/200000000000 : ℚ), (-2474113/62500000 : ℚ), (3861039081/500000000000 : ℚ), 2⟩,
    ⟨(225179196543/500000000000 : ℚ), (-199409217/2500000000 : ℚ), (25635191737/1000000000000 : ℚ), 2⟩,
    ⟨(458694691189/1000000000000 : ℚ), (-226860083/2000000000 : ℚ), (409348541/10000000000 : ℚ), 2⟩,
    ⟨(233222439453/500000000000 : ℚ), (-283277477/2000000000 : ℚ), (10796314857/200000000000 : ℚ), 2⟩,
    ⟨(118383579423/250000000000 : ℚ), (-826012339/5000000000 : ℚ), (65055106697/1000000000000 : ℚ), 2⟩,
    ⟨(59986841547/125000000000 : ℚ), (-1847495943/10000000000 : ℚ), (3718637829/50000000000 : ℚ), 2⟩,
    ⟨(30341554293/62500000000 : ℚ), (-62739257/312500000 : ℚ), (41051458817/500000000000 : ℚ), 2⟩,
    ⟨(49019108317/100000000000 : ℚ), (-213623653/1000000000 : ℚ), (44187586121/500000000000 : ℚ), 2⟩,
    ⟨(494027859793/1000000000000 : ℚ), (-1118034031/5000000000 : ℚ), (93287850999/1000000000000 : ℚ), 2⟩,
    ⟨(496938248301/1000000000000 : ℚ), (-2309246511/10000000000 : ℚ), (24228416841/250000000000 : ℚ), 2⟩,
    ⟨(498894220061/1000000000000 : ℚ), (-2357250377/10000000000 : ℚ), (775811271/7812500000 : ℚ), 2⟩,
    ⟨(499876937997/1000000000000 : ℚ), (-2381022749/10000000000 : ℚ), (25122749703/250000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1191991827/5000000000 : ℚ), (100639025827/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (323269486613/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control340.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control340.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate340

-- Control341
namespace DiagonalRamsey.JointInheritedCertificate341
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(77524175689/250000000000 : ℚ), (5804963898697/5000000000 : ℚ), (-90216829785073/250000000000 : ℚ), 11⟩,
    ⟨(77776708849/250000000000 : ℚ), (1265693004091/10000000000 : ℚ), (-39903739560933/1000000000000 : ℚ), 8⟩,
    ⟨(78279343137/250000000000 : ℚ), (8842603647/200000000 : ℚ), (-222290514583/15625000000 : ℚ), 7⟩,
    ⟨(158054475819/500000000000 : ℚ), (108516822857/5000000000 : ℚ), (-894024774873/125000000000 : ℚ), 6⟩,
    ⟨(160026381063/500000000000 : ℚ), (125410241981/10000000000 : ℚ), (-4240832750419/1000000000000 : ℚ), 5⟩,
    ⟨(324910822959/1000000000000 : ℚ), (9957714999/1250000000 : ℚ), (-1383501146327/500000000000 : ℚ), 5⟩,
    ⟨(165318174179/500000000000 : ℚ), (53771901301/10000000000 : ℚ), (-959610871257/500000000000 : ℚ), 4⟩,
    ⟨(337174198381/1000000000000 : ℚ), (37823907831/10000000000 : ℚ), (-1387202407309/1000000000000 : ℚ), 4⟩,
    ⟨(8611535249/25000000000 : ℚ), (13689404627/5000000000 : ℚ), (-64470502887/62500000000 : ℚ), 4⟩,
    ⟨(2753342213/7812500000 : ℚ), (20212229497/10000000000 : ℚ), (-156403970679/200000000000 : ℚ), 3⟩,
    ⟨(360996657569/1000000000000 : ℚ), (7555992723/5000000000 : ℚ), (-600229489771/1000000000000 : ℚ), 3⟩,
    ⟨(2960683601/8000000000 : ℚ), (11373266577/10000000000 : ℚ), (-463662829063/1000000000000 : ℚ), 3⟩,
    ⟨(94901662723/250000000000 : ℚ), (428230149/500000000 : ℚ), (-44806425637/125000000000 : ℚ), 3⟩,
    ⟨(778937131/2000000000 : ℚ), (256422637/400000000 : ℚ), (-137835544561/500000000000 : ℚ), 3⟩,
    ⟨(399576218321/1000000000000 : ℚ), (4729144221/10000000000 : ℚ), (-104685947243/500000000000 : ℚ), 3⟩,
    ⟨(204916133567/500000000000 : ℚ), (1698259681/5000000000 : ℚ), (-155466757739/1000000000000 : ℚ), 3⟩,
    ⟨(420137940581/1000000000000 : ℚ), (145397719/625000000 : ℚ), (-111076471071/1000000000000 : ℚ), 2⟩,
    ⟨(430393989393/1000000000000 : ℚ), (145720949/1000000000 : ℚ), (-14825730161/200000000000 : ℚ), 2⟩,
    ⟨(88100328443/200000000000 : ℚ), (372246841/5000000000 : ℚ), (-43104071043/1000000000000 : ℚ), 2⟩,
    ⟨(450363556823/1000000000000 : ℚ), (7770043/500000000 : ℚ), (-16871564839/1000000000000 : ℚ), 2⟩,
    ⟨(459884757589/1000000000000 : ℚ), (-83639509/2500000000 : ℚ), (542216873/100000000000 : ℚ), 2⟩,
    ⟨(93794710029/200000000000 : ℚ), (-148773413/2000000000 : ℚ), (24427775659/1000000000000 : ℚ), 2⟩,
    ⟨(477542404451/1000000000000 : ℚ), (-543304833/5000000000 : ℚ), (20322808213/500000000000 : ℚ), 2⟩,
    ⟨(242754398877/500000000000 : ℚ), (-1373596273/10000000000 : ℚ), (27231445861/500000000000 : ℚ), 2⟩,
    ⟨(492796009333/1000000000000 : ℚ), (-1613168523/10000000000 : ℚ), (66180388341/1000000000000 : ℚ), 2⟩,
    ⟨(499333859357/1000000000000 : ℚ), (-28309063/156250000 : ℚ), (118800031/1562500000 : ℚ), 2⟩,
    ⟨(101011876951/200000000000 : ℚ), (-15425157/78125000 : ℚ), (84199272743/1000000000000 : ℚ), 2⟩,
    ⟨(509917445589/1000000000000 : ℚ), (-263115623/1250000000 : ℚ), (90821978767/1000000000000 : ℚ), 2⟩,
    ⟨(128465314019/250000000000 : ℚ), (-551551799/2500000000 : ℚ), (96006375171/1000000000000 : ℚ), 2⟩,
    ⟨(516852835167/1000000000000 : ℚ), (-2280423501/10000000000 : ℚ), (99831110199/1000000000000 : ℚ), 2⟩,
    ⟨(259431686159/500000000000 : ℚ), (-1164547999/5000000000 : ℚ), (102351638987/1000000000000 : ℚ), 2⟩,
    ⟨(259936752479/500000000000 : ℚ), (-147074739/625000000 : ℚ), (103603305961/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1178098671/5000000000 : ℚ), (1037593659/10000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (31336515049/100000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control341.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control341.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate341

-- Control342
namespace DiagonalRamsey.JointInheritedCertificate342
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129630788729/500000000000 : ℚ), (11933961857991/10000000000 : ℚ), (-310108661842261/1000000000000 : ℚ), 12⟩,
    ⟨(260083234173/1000000000000 : ℚ), (1301248903103/10000000000 : ℚ), (-34282508745889/1000000000000 : ℚ), 8⟩,
    ⟨(261718634599/1000000000000 : ℚ), (45460552127/1000000000 : ℚ), (-12216285272309/1000000000000 : ℚ), 7⟩,
    ⟨(52830405787/200000000000 : ℚ), (55786784621/2500000000 : ℚ), (-767080877071/125000000000 : ℚ), 6⟩,
    ⟨(133679991133/500000000000 : ℚ), (128902448557/10000000000 : ℚ), (-29076372541/8000000000 : ℚ), 5⟩,
    ⟨(54262320049/200000000000 : ℚ), (81823618659/10000000000 : ℚ), (-1183889982333/500000000000 : ℚ), 5⟩,
    ⟨(275968826633/1000000000000 : ℚ), (27582589713/5000000000 : ℚ), (-327796683459/200000000000 : ℚ), 4⟩,
    ⟨(4395106403/15625000000 : ℚ), (3873143793/1000000000 : ℚ), (-236301187167/200000000000 : ℚ), 4⟩,
    ⟨(143607167319/500000000000 : ℚ), (13979117057/5000000000 : ℚ), (-875539220861/1000000000000 : ℚ), 4⟩,
    ⟨(293694315867/1000000000000 : ℚ), (20558198453/10000000000 : ℚ), (-41298481403/62500000000 : ℚ), 3⟩,
    ⟨(75166086929/250000000000 : ℚ), (1528467923/1000000000 : ℚ), (-504176236441/1000000000000 : ℚ), 3⟩,
    ⟨(30805730497/100000000000 : ℚ), (2282548413/2000000000 : ℚ), (-193206253357/500000000000 : ℚ), 3⟩,
    ⟨(315801989407/1000000000000 : ℚ), (1699710113/2000000000 : ℚ), (-295569122253/1000000000000 : ℚ), 3⟩,
    ⟨(80955953871/250000000000 : ℚ), (6258757609/10000000000 : ℚ), (-27997503871/125000000000 : ℚ), 3⟩,
    ⟨(33204552863/100000000000 : ℚ), (4506110333/10000000000 : ℚ), (-33307083847/200000000000 : ℚ), 3⟩,
    ⟨(340387949253/1000000000000 : ℚ), (778306469/2500000000 : ℚ), (-14965847783/125000000000 : ℚ), 3⟩,
    ⟨(174385367641/500000000000 : ℚ), (398259971/2000000000 : ℚ), (-40541993157/500000000000 : ℚ), 3⟩,
    ⟨(71422631181/200000000000 : ℚ), (269278773/2500000000 : ℚ), (-12207656691/250000000000 : ℚ), 2⟩,
    ⟨(365334869051/1000000000000 : ℚ), (64971101/2000000000 : ℚ), (-10833006319/500000000000 : ℚ), 2⟩,
    ⟨(46669586891/125000000000 : ℚ), (-74799617/2500000000 : ℚ), (688378229/500000000000 : ℚ), 2⟩,
    ⟨(76220275913/200000000000 : ℚ), (-820192337/10000000000 : ℚ), (21025546241/1000000000000 : ℚ), 2⟩,
    ⟨(388494336819/1000000000000 : ℚ), (-628543781/5000000000 : ℚ), (37833899091/1000000000000 : ℚ), 2⟩,
    ⟨(98866092167/250000000000 : ℚ), (-162431429/1000000000 : ℚ), (52226132229/1000000000000 : ℚ), 2⟩,
    ⟨(401944349897/1000000000000 : ℚ), (-193293361/1000000000 : ℚ), (6452934801/100000000000 : ℚ), 2⟩,
    ⟨(407871874743/1000000000000 : ℚ), (-2191467/10000000 : ℚ), (14999306321/200000000000 : ℚ), 2⟩,
    ⟨(206594928951/500000000000 : ℚ), (-1203247881/5000000000 : ℚ), (20955865169/250000000000 : ℚ), 2⟩,
    ⟨(41784708429/100000000000 : ℚ), (-2583098647/10000000000 : ℚ), (91161235163/1000000000000 : ℚ), 2⟩,
    ⟨(421798702269/1000000000000 : ℚ), (-2725173561/10000000000 : ℚ), (48562820501/500000000000 : ℚ), 2⟩,
    ⟨(1062516639/2500000000 : ℚ), (-1417837313/5000000000 : ℚ), (50902087081/500000000000 : ℚ), 2⟩,
    ⟨(26715003121/62500000000 : ℚ), (-729196493/2500000000 : ℚ), (105261283157/1000000000000 : ℚ), 2⟩,
    ⟨(214537725181/500000000000 : ℚ), (-1485023477/5000000000 : ℚ), (26885553137/250000000000 : ℚ), 2⟩,
    ⟨(429897107077/1000000000000 : ℚ), (-749109683/2500000000 : ℚ), (54337850773/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2999726641/10000000000 : ℚ), (108817064713/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (169004023129/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control342.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control342.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate342

-- Control343
namespace DiagonalRamsey.JointInheritedCertificate343
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(266163677941/1000000000000 : ℚ), (12033635272737/10000000000 : ℚ), (-12840713535793/40000000000 : ℚ), 12⟩,
    ⟨(133500121449/500000000000 : ℚ), (82016423517/625000000 : ℚ), (-17744401157337/500000000000 : ℚ), 8⟩,
    ⟨(67166329059/250000000000 : ℚ), (458527197313/10000000000 : ℚ), (-6323176799109/500000000000 : ℚ), 7⟩,
    ⟨(67785715597/250000000000 : ℚ), (112557779227/5000000000 : ℚ), (-6352864410941/1000000000000 : ℚ), 6⟩,
    ⟨(274409021229/1000000000000 : ℚ), (65033923009/5000000000 : ℚ), (-376276733027/100000000000 : ℚ), 5⟩,
    ⟨(34804042233/125000000000 : ℚ), (82583342421/10000000000 : ℚ), (-1225732661499/500000000000 : ℚ), 5⟩,
    ⟨(70793516389/250000000000 : ℚ), (55692397959/10000000000 : ℚ), (-1697062961619/1000000000000 : ℚ), 4⟩,
    ⟨(144294269437/500000000000 : ℚ), (9778395579/2500000000 : ℚ), (-305882250743/250000000000 : ℚ), 4⟩,
    ⟨(7365590337/25000000000 : ℚ), (3530524543/1250000000 : ℚ), (-18136808287/20000000000 : ℚ), 4⟩,
    ⟨(301221168307/1000000000000 : ℚ), (10388727919/5000000000 : ℚ), (-684567929529/1000000000000 : ℚ), 3⟩,
    ⟨(61663533059/200000000000 : ℚ), (1932007373/1250000000 : ℚ), (-65313735853/125000000000 : ℚ), 3⟩,
    ⟨(315844761299/1000000000000 : ℚ), (72180179/62500000 : ℚ), (-200328852987/500000000000 : ℚ), 3⟩,
    ⟨(32372996627/100000000000 : ℚ), (86080691/100000000 : ℚ), (-306676438587/1000000000000 : ℚ), 3⟩,
    ⟨(331897341373/1000000000000 : ℚ), (6347940859/10000000000 : ℚ), (-58157473951/250000000000 : ℚ), 3⟩,
    ⟨(340268230321/1000000000000 : ℚ), (1144880403/2500000000 : ℚ), (-5413374719/31250000000 : ℚ), 3⟩,
    ⟨(348762016879/1000000000000 : ℚ), (3174275183/10000000000 : ℚ), (-15604777679/125000000000 : ℚ), 3⟩,
    ⟨(357296901237/1000000000000 : ℚ), (204257911/1000000000 : ℚ), (-42451466369/500000000000 : ℚ), 3⟩,
    ⟨(182895343897/500000000000 : ℚ), (1120622601/10000000000 : ℚ), (-5158256033/100000000000 : ℚ), 2⟩,
    ⟨(187080788371/500000000000 : ℚ), (90537579/2500000000 : ℚ), (-11764976009/500000000000 : ℚ), 2⟩,
    ⟨(76465790369/200000000000 : ℚ), (-266887853/10000000000 : ℚ), (128268699/500000000000 : ℚ), 2⟩,
    ⟨(24388384801/62500000000 : ℚ), (-791889747/10000000000 : ℚ), (20531125207/1000000000000 : ℚ), 2⟩,
    ⟨(19887062641/50000000000 : ℚ), (-246402353/2000000000 : ℚ), (9466894227/250000000000 : ℚ), 2⟩,
    ⟨(25302359363/62500000000 : ℚ), (-1601836099/10000000000 : ℚ), (52705877859/1000000000000 : ℚ), 2⟩,
    ⟨(82287060927/200000000000 : ℚ), (-1912543277/10000000000 : ℚ), (13077071437/200000000000 : ℚ), 2⟩,
    ⟨(208735189621/500000000000 : ℚ), (-1086374511/5000000000 : ℚ), (15233717111/200000000000 : ℚ), 2⟩,
    ⟨(422884852559/1000000000000 : ℚ), (-1194554551/5000000000 : ℚ), (85258867697/1000000000000 : ℚ), 2⟩,
    ⟨(427626580251/1000000000000 : ℚ), (-2566760953/10000000000 : ℚ), (46406600619/500000000000 : ℚ), 2⟩,
    ⟨(431649896887/1000000000000 : ℚ), (-2709648389/10000000000 : ℚ), (98951961239/1000000000000 : ℚ), 2⟩,
    ⟨(27182253483/62500000000 : ℚ), (-1410380449/5000000000 : ℚ), (51883081207/500000000000 : ℚ), 2⟩,
    ⟨(437393601879/1000000000000 : ℚ), (-1451154559/5000000000 : ℚ), (107322880093/1000000000000 : ℚ), 2⟩,
    ⟨(439058675217/1000000000000 : ℚ), (-2955851289/10000000000 : ℚ), (109669224187/1000000000000 : ℚ), 2⟩,
    ⟨(17595809607/40000000000 : ℚ), (-372797587/1250000000 : ℚ), (6927195547/62500000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2985685671/10000000000 : ℚ), (27745132583/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (83264618419/250000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control343.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control343.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate343

-- Control344
namespace DiagonalRamsey.JointInheritedCertificate344
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(273157832009/1000000000000 : ℚ), (12140256496097/10000000000 : ℚ), (-20772901896969/62500000000 : ℚ), 12⟩,
    ⟨(137004431107/500000000000 : ℚ), (1324045979213/10000000000 : ℚ), (-4592973284551/125000000000 : ℚ), 8⟩,
    ⟨(137851363369/500000000000 : ℚ), (231361977481/5000000000 : ℚ), (-2618771045967/200000000000 : ℚ), 7⟩,
    ⟨(13911155637/50000000000 : ℚ), (227222916027/10000000000 : ℚ), (-3288952161459/500000000000 : ℚ), 6⟩,
    ⟨(70386436881/250000000000 : ℚ), (131316184067/10000000000 : ℚ), (-3896268048891/1000000000000 : ℚ), 5⟩,
    ⟨(285638632301/1000000000000 : ℚ), (83397692041/10000000000 : ℚ), (-634659612219/250000000000 : ℚ), 5⟩,
    ⟨(58092470071/200000000000 : ℚ), (28128994263/5000000000 : ℚ), (-878800300699/500000000000 : ℚ), 4⟩,
    ⟨(295970446641/1000000000000 : ℚ), (9880983039/2500000000 : ℚ), (-126736527929/100000000000 : ℚ), 4⟩,
    ⟨(18881867199/62500000000 : ℚ), (28551600121/10000000000 : ℚ), (-939524991939/1000000000000 : ℚ), 4⟩,
    ⟨(308821509929/1000000000000 : ℚ), (21013441689/10000000000 : ℚ), (-709443333699/1000000000000 : ℚ), 3⟩,
    ⟨(79010178541/250000000000 : ℚ), (3128152767/2000000000 : ℚ), (-27085465209/50000000000 : ℚ), 3⟩,
    ⟨(79027823/244140625 : ℚ), (2339142519/2000000000 : ℚ), (-415606652947/1000000000000 : ℚ), 3⟩,
    ⟨(331719512967/1000000000000 : ℚ), (8726464923/10000000000 : ℚ), (-318363963819/1000000000000 : ℚ), 3⟩,
    ⟨(34002811213/100000000000 : ℚ), (6444516069/10000000000 : ℚ), (-241764013817/1000000000000 : ℚ), 3⟩,
    ⟨(174271872073/500000000000 : ℚ), (4659158679/10000000000 : ℚ), (-9016458023/50000000000 : ℚ), 3⟩,
    ⟨(357184398823/1000000000000 : ℚ), (162031177/500000000 : ℚ), (-26059576649/200000000000 : ℚ), 3⟩,
    ⟨(365866861933/1000000000000 : ℚ), (2098413663/10000000000 : ℚ), (-22255363237/250000000000 : ℚ), 3⟩,
    ⟨(37450751661/100000000000 : ℚ), (584041877/5000000000 : ℚ), (-54594568517/1000000000000 : ℚ), 2⟩,
    ⟨(191511574313/500000000000 : ℚ), (402909007/10000000000 : ℚ), (-12810854897/500000000000 : ℚ), 2⟩,
    ⟨(391331747789/1000000000000 : ℚ), (-231513941/10000000000 : ℚ), (-213009831/200000000000 : ℚ), 2⟩,
    ⟨(99838324437/250000000000 : ℚ), (-760852591/10000000000 : ℚ), (19857084001/1000000000000 : ℚ), 2⟩,
    ⟨(407010546591/1000000000000 : ℚ), (-1204471667/10000000000 : ℚ), (37739534021/1000000000000 : ℚ), 2⟩,
    ⟨(414229750827/1000000000000 : ℚ), (-1577115871/10000000000 : ℚ), (662982853/12500000000 : ℚ), 2⟩,
    ⟨(105235346393/250000000000 : ℚ), (-1890093417/10000000000 : ℚ), (66106457983/1000000000000 : ℚ), 2⟩,
    ⟨(213540407057/500000000000 : ℚ), (-538030201/2500000000 : ℚ), (38607803603/500000000000 : ℚ), 2⟩,
    ⟨(432588910401/1000000000000 : ℚ), (-2369933457/10000000000 : ℚ), (43288625507/500000000000 : ℚ), 2⟩,
    ⟨(87482525691/200000000000 : ℚ), (-318591453/1250000000 : ℚ), (18870912093/200000000000 : ℚ), 2⟩,
    ⟨(27594094577/62500000000 : ℚ), (-107700331/400000000 : ℚ), (100672718709/1000000000000 : ℚ), 2⟩,
    ⟨(27801759251/62500000000 : ℚ), (-2804290791/10000000000 : ℚ), (1056264311/10000000000 : ℚ), 2⟩,
    ⟨(223674267009/500000000000 : ℚ), (-288631823/1000000000 : ℚ), (21857106181/200000000000 : ℚ), 2⟩,
    ⟨(224521199271/500000000000 : ℚ), (-2940169083/10000000000 : ℚ), (111699087527/1000000000000 : ℚ), 2⟩,
    ⟨(449893428747/1000000000000 : ℚ), (-2966849651/10000000000 : ℚ), (22579658343/200000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2970173373/10000000000 : ℚ), (56523920737/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (164026745507/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control344.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control344.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate344

-- Control345
namespace DiagonalRamsey.JointInheritedCertificate345
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280179825483/1000000000000 : ℚ), (6123217252161/5000000000 : ℚ), (-85971476083577/250000000000 : ℚ), 12⟩,
    ⟨(140522593481/500000000000 : ℚ), (166972435497/1250000000 : ℚ), (-38017622403429/1000000000000 : ℚ), 8⟩,
    ⟨(56553515203/200000000000 : ℚ), (233451246309/5000000000 : ℚ), (-3387011794103/250000000000 : ℚ), 7⟩,
    ⟨(57066081019/200000000000 : ℚ), (11466036053/500000000 : ℚ), (-1701571119607/250000000000 : ℚ), 6⟩,
    ⟨(72177248189/250000000000 : ℚ), (132558530933/10000000000 : ℚ), (-4031731097743/1000000000000 : ℚ), 5⟩,
    ⟨(292870801353/1000000000000 : ℚ), (84207847801/10000000000 : ℚ), (-2627077170147/1000000000000 : ℚ), 5⟩,
    ⟨(297775750393/1000000000000 : ℚ), (14205103471/2500000000 : ℚ), (-1819003901519/1000000000000 : ℚ), 4⟩,
    ⟨(37922075317/125000000000 : ℚ), (19965878789/5000000000 : ℚ), (-1311817098419/1000000000000 : ℚ), 4⟩,
    ⟨(154809709257/500000000000 : ℚ), (28856903773/10000000000 : ℚ), (-972658766287/1000000000000 : ℚ), 4⟩,
    ⟨(316444076597/1000000000000 : ℚ), (2124762163/1000000000 : ℚ), (-367326053209/500000000000 : ℚ), 3⟩,
    ⟨(80946212899/250000000000 : ℚ), (15823874403/10000000000 : ℚ), (-280579276643/500000000000 : ℚ), 3⟩,
    ⟨(66314209567/200000000000 : ℚ), (2960289799/2500000000 : ℚ), (-430743514881/1000000000000 : ℚ), 3⟩,
    ⟨(84931919997/250000000000 : ℚ), (884354287/1000000000 : ℚ), (-165096259087/500000000000 : ℚ), 3⟩,
    ⟨(348176195229/1000000000000 : ℚ), (3269933279/5000000000 : ℚ), (-2008024451/8000000000 : ℚ), 3⟩,
    ⟨(178417614869/500000000000 : ℚ), (4737645283/10000000000 : ℚ), (-187507087951/1000000000000 : ℚ), 3⟩,
    ⟨(182810696139/500000000000 : ℚ), (330588187/1000000000 : ℚ), (-67906055363/500000000000 : ℚ), 3⟩,
    ⟨(187225033651/500000000000 : ℚ), (2153208343/10000000000 : ℚ), (-23294231591/250000000000 : ℚ), 3⟩,
    ⟨(191618114921/500000000000 : ℚ), (6072737/50000000 : ℚ), (-2881474123/50000000000 : ℚ), 2⟩,
    ⟨(7837905287/20000000000 : ℚ), (88541309/2000000000 : ℚ), (-5545027253/200000000000 : ℚ), 2⟩,
    ⟨(50042972449/125000000000 : ℚ), (-9853479/500000000 : ℚ), (-2389304923/1000000000000 : ℚ), 2⟩,
    ⟨(81700082349/200000000000 : ℚ), (-18267931/250000000 : ℚ), (19187577507/1000000000000 : ℚ), 2⟩,
    ⟨(26017912999/62500000000 : ℚ), (-1177808867/10000000000 : ℚ), (37621781763/1000000000000 : ℚ), 2⟩,
    ⟨(423627382983/1000000000000 : ℚ), (-38831281/250000000 : ℚ), (13346563133/250000000000 : ℚ), 2⟩,
    ⟨(215226020533/500000000000 : ℚ), (-1868479971/10000000000 : ℚ), (334230323/5000000000 : ℚ), 2⟩,
    ⟨(109173714261/250000000000 : ℚ), (-266539019/1250000000 : ℚ), (78283994343/1000000000000 : ℚ), 2⟩,
    ⟨(442295709187/1000000000000 : ℚ), (-470312549/2000000000 : ℚ), (87919231749/1000000000000 : ℚ), 2⟩,
    ⟨(447200658227/1000000000000 : ℚ), (-1265747371/5000000000 : ℚ), (11990154799/125000000000 : ℚ), 2⟩,
    ⟨(451362466823/1000000000000 : ℚ), (-2676150229/10000000000 : ℚ), (51210049527/500000000000 : ℚ), 2⟩,
    ⟨(90948210897/200000000000 : ℚ), (-2788594463/10000000000 : ℚ), (26878570933/250000000000 : ℚ), 2⟩,
    ⟨(91460776713/200000000000 : ℚ), (-1435547453/5000000000 : ℚ), (55638219661/500000000000 : ℚ), 2⟩,
    ⟨(229513136309/500000000000 : ℚ), (-2925250301/10000000000 : ℚ), (113757635839/1000000000000 : ℚ), 2⟩,
    ⟨(459891634097/1000000000000 : ℚ), (-1476039979/5000000000 : ℚ), (57495173319/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2955422169/10000000000 : ℚ), (115144070239/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (161513918629/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control345.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control345.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate345

-- Control346
namespace DiagonalRamsey.JointInheritedCertificate346
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287227504613/1000000000000 : ℚ), (6176000184427/5000000000 : ℚ), (-355568689646573/1000000000000 : ℚ), 12⟩,
    ⟨(288107073757/1000000000000 : ℚ), (336861129883/2500000000 : ℚ), (-39309464616497/1000000000000 : ℚ), 8⟩,
    ⟨(566128401/1953125000 : ℚ), (471056046859/10000000000 : ℚ), (-14008621198831/1000000000000 : ℚ), 7⟩,
    ⟨(292462647393/1000000000000 : ℚ), (5785137951/250000000 : ℚ), (-1759461206289/250000000000 : ℚ), 6⟩,
    ⟨(295896705331/1000000000000 : ℚ), (133792792061/10000000000 : ℚ), (-4169057414167/1000000000000 : ℚ), 5⟩,
    ⟨(300126843271/1000000000000 : ℚ), (5313275237/625000000 : ℚ), (-169794581657/62500000000 : ℚ), 5⟩,
    ⟨(305112322671/1000000000000 : ℚ), (14344665971/2500000000 : ℚ), (-376244490407/200000000000 : ℚ), 4⟩,
    ⟨(3885064133/12500000000 : ℚ), (2521018529/625000000 : ℚ), (-1356845209299/1000000000000 : ℚ), 4⟩,
    ⟨(12686017693/40000000000 : ℚ), (14579755323/5000000000 : ℚ), (-503104976217/500000000000 : ℚ), 4⟩,
    ⟨(162043574453/500000000000 : ℚ), (2684939343/1250000000 : ℚ), (-760167706053/1000000000000 : ℚ), 3⟩,
    ⟨(165774223053/500000000000 : ℚ), (16004993767/10000000000 : ℚ), (-580834918141/1000000000000 : ℚ), 3⟩,
    ⟨(169731238777/500000000000 : ℚ), (5992417151/5000000000 : ℚ), (-446048454437/1000000000000 : ℚ), 3⟩,
    ⟨(347753026803/1000000000000 : ℚ), (8959016869/10000000000 : ℚ), (-342144486733/1000000000000 : ℚ), 3⟩,
    ⟨(356340251329/1000000000000 : ℚ), (3316871903/5000000000 : ℚ), (-2603311621/10000000000 : ℚ), 3⟩,
    ⟨(365141451467/1000000000000 : ℚ), (601845341/1250000000 : ℚ), (-194747320799/1000000000000 : ℚ), 3⟩,
    ⟨(11689745839/31250000000 : ℚ), (1684927751/5000000000 : ℚ), (-141367600879/1000000000000 : ℚ), 3⟩,
    ⟨(38304549269/100000000000 : ℚ), (1103394031/5000000000 : ℚ), (-97357000663/1000000000000 : ℚ), 3⟩,
    ⟨(391975908071/1000000000000 : ℚ), (62992729/500000000 : ℚ), (-15168936337/250000000000 : ℚ), 2⟩,
    ⟨(400777108209/1000000000000 : ℚ), (481397367/10000000000 : ℚ), (-29829346609/1000000000000 : ℚ), 2⟩,
    ⟨(6396317699/15625000000 : ℚ), (-163689129/10000000000 : ℚ), (-1852958607/500000000000 : ℚ), 2⟩,
    ⟨(6525857531/15625000000 : ℚ), (-701608643/10000000000 : ℚ), (4633107323/250000000000 : ℚ), 2⟩,
    ⟨(53196114179/125000000000 : ℚ), (-288035093/2500000000 : ℚ), (37523723031/1000000000000 : ℚ), 2⟩,
    ⟨(433030210633/1000000000000 : ℚ), (-153035251/1000000000 : ℚ), (10751558439/200000000000 : ℚ), 2⟩,
    ⟨(439966917213/1000000000000 : ℚ), (-184780759/1000000000 : ℚ), (67612908317/1000000000000 : ℚ), 2⟩,
    ⟨(223156114449/500000000000 : ℚ), (-422684593/2000000000 : ℚ), (79382213039/1000000000000 : ℚ), 2⟩,
    ⟨(452005036867/1000000000000 : ℚ), (-583523227/2500000000 : ℚ), (89293051831/1000000000000 : ℚ), 2⟩,
    ⟨(456990516267/1000000000000 : ℚ), (-1257571497/5000000000 : ℚ), (380942539/3906250000 : ℚ), 2⟩,
    ⟨(461220654207/1000000000000 : ℚ), (-519661/1953125 : ℚ), (52101002571/500000000000 : ℚ), 2⟩,
    ⟨(92930942429/200000000000 : ℚ), (-1386879971/5000000000 : ℚ), (54718751641/500000000000 : ℚ), 2⟩,
    ⟨(233629809113/500000000000 : ℚ), (-2856725679/10000000000 : ℚ), (28325824971/250000000000 : ℚ), 2⟩,
    ⟨(234505142891/500000000000 : ℚ), (-727795123/2500000000 : ℚ), (23170501011/200000000000 : ℚ), 2⟩,
    ⟨(18795594197/40000000000 : ℚ), (-1469078341/5000000000 : ℚ), (117118900637/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1470758531/5000000000 : ℚ), (117276819989/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (317982902093/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control346.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control346.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate346
