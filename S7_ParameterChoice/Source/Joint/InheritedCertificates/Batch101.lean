import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control899
namespace DiagonalRamsey.JointInheritedCertificate899
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(84408742193/1000000000000 : ℚ), (118658275233/2500000000 : ℚ), (-4028886722491/1000000000000 : ℚ), 12⟩,
    ⟨(10698005409/125000000000 : ℚ), (44144403069/10000000000 : ℚ), (-192884576213/500000000000 : ℚ), 9⟩,
    ⟨(87755716493/1000000000000 : ℚ), (10322003819/10000000000 : ℚ), (-9379141623/100000000000 : ℚ), 7⟩,
    ⟨(11324143037/125000000000 : ℚ), (1207518689/10000000000 : ℚ), (-6384123557/500000000000 : ℚ), 7⟩,
    ⟨(93664354019/1000000000000 : ℚ), (-2466785051/10000000000 : ℚ), (21010051861/1000000000000 : ℚ), 6⟩,
    ⟨(48250890911/500000000000 : ℚ), (-4271861343/10000000000 : ℚ), (38152519461/1000000000000 : ℚ), 6⟩,
    ⟨(24668363761/250000000000 : ℚ), (-65208717/125000000 : ℚ), (5921029131/125000000000 : ℚ), 6⟩,
    ⟨(49924378061/500000000000 : ℚ), (-5636694837/10000000000 : ℚ), (25768337089/500000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-5687232803/10000000000 : ℚ), (2602083537/50000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (841433395599/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control899.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control899.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate899

-- Control900
namespace DiagonalRamsey.JointInheritedCertificate900
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(721793040107/1000000000000 : ℚ), (6696740294977/5000000000 : ℚ), (-967108610128257/1000000000000 : ℚ), 15⟩,
    ⟨(14443388021/20000000000 : ℚ), (294992857037/2000000000 : ℚ), (-13344475497327/125000000000 : ℚ), 12⟩,
    ⟨(361459249187/500000000000 : ℚ), (65279073853/1250000000 : ℚ), (-18964233788963/500000000000 : ℚ), 11⟩,
    ⟨(724033117863/1000000000000 : ℚ), (260099222821/10000000000 : ℚ), (-474174051939/25000000000 : ℚ), 10⟩,
    ⟨(362751262561/500000000000 : ℚ), (152435446131/10000000000 : ℚ), (-11165138405511/1000000000000 : ℚ), 9⟩,
    ⟨(181828142239/250000000000 : ℚ), (6129875227/625000000 : ℚ), (-3608608285739/500000000000 : ℚ), 8⟩,
    ⟨(182361454413/250000000000 : ℚ), (3345920809/500000000 : ℚ), (-2473988521863/500000000000 : ℚ), 8⟩,
    ⟨(36594086343/50000000000 : ℚ), (23724724641/5000000000 : ℚ), (-440708555949/125000000000 : ℚ), 7⟩,
    ⟨(734596837443/1000000000000 : ℚ), (34503520711/10000000000 : ℚ), (-128828112493/50000000000 : ℚ), 7⟩,
    ⟨(737565001401/1000000000000 : ℚ), (5096173639/2000000000 : ℚ), (-1912515818103/1000000000000 : ℚ), 7⟩,
    ⟨(740757633693/1000000000000 : ℚ), (4739492387/2500000000 : ℚ), (-1430433157197/1000000000000 : ℚ), 7⟩,
    ⟨(29765759501/40000000000 : ℚ), (14102388197/10000000000 : ℚ), (-534987958253/500000000000 : ℚ), 6⟩,
    ⟨(373845725229/500000000000 : ℚ), (5200522519/5000000000 : ℚ), (-793919116027/1000000000000 : ℚ), 6⟩,
    ⟨(187841464621/250000000000 : ℚ), (7523778509/10000000000 : ℚ), (-144570938741/250000000000 : ℚ), 6⟩,
    ⟨(755131825047/1000000000000 : ℚ), (656295077/1250000000 : ℚ), (-101764118181/250000000000 : ℚ), 6⟩,
    ⟨(758953081829/1000000000000 : ℚ), (857339823/2500000000 : ℚ), (-67303000153/250000000000 : ℚ), 6⟩,
    ⟨(381396414019/500000000000 : ℚ), (1953907711/10000000000 : ℚ), (-78479281343/500000000000 : ℚ), 6⟩,
    ⟨(38330704241/50000000000 : ℚ), (149377271/2000000000 : ℚ), (-12932879691/200000000000 : ℚ), 6⟩,
    ⟨(770380051383/1000000000000 : ℚ), (-248436673/10000000000 : ℚ), (11820583859/1000000000000 : ℚ), 6⟩,
    ⟨(77405445941/100000000000 : ℚ), (-268621653/2500000000 : ℚ), (37802847867/500000000000 : ℚ), 5⟩,
    ⟨(777601922343/1000000000000 : ℚ), (-220428997/1250000000 : ℚ), (25810638551/200000000000 : ℚ), 5⟩,
    ⟨(390494138087/500000000000 : ℚ), (-467988407/2000000000 : ℚ), (173978313393/1000000000000 : ℚ), 5⟩,
    ⟨(784180908467/1000000000000 : ℚ), (-564620429/2000000000 : ℚ), (211788253671/1000000000000 : ℚ), 5⟩,
    ⟨(31485962897/40000000000 : ℚ), (-161388443/500000000 : ℚ), (243580521589/1000000000000 : ℚ), 5⟩,
    ⟨(789864183007/1000000000000 : ℚ), (-713109081/2000000000 : ℚ), (33776721783/125000000000 : ℚ), 5⟩,
    ⟨(99037511527/125000000000 : ℚ), (-3845495487/10000000000 : ℚ), (292359709089/1000000000000 : ℚ), 5⟩,
    ⟨(49652083807/62500000000 : ℚ), (-1018668403/2500000000 : ℚ), (155270843811/500000000000 : ℚ), 5⟩,
    ⟨(159248676949/200000000000 : ℚ), (-4258524179/10000000000 : ℚ), (32516388841/100000000000 : ℚ), 5⟩,
    ⟨(199428198001/250000000000 : ℚ), (-2200592141/5000000000 : ℚ), (168266758227/500000000000 : ℚ), 5⟩,
    ⟨(798827411493/1000000000000 : ℚ), (-70401771/156250000 : ℚ), (344877730261/1000000000000 : ℚ), 5⟩,
    ⟨(399788254409/500000000000 : ℚ), (-2287132283/5000000000 : ℚ), (350356349049/1000000000000 : ℚ), 5⟩,
    ⟨(799952869761/1000000000000 : ℚ), (-4608207533/10000000000 : ℚ), (353070986649/1000000000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-922487/2000000 : ℚ), (353409174013/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (121866991407/500000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control900.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control900.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate900

-- Control901
namespace DiagonalRamsey.JointInheritedCertificate901
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(363850301809/500000000000 : ℚ), (907992782549/2500000000 : ℚ), (-4134217985459/15625000000 : ℚ), 13⟩,
    ⟨(145817292691/200000000000 : ℚ), (39035378671/1000000000 : ℚ), (-28614343282567/1000000000000 : ℚ), 10⟩,
    ⟨(5717225979/7812500000 : ℚ), (65901933971/5000000000 : ℚ), (-4870063240677/500000000000 : ℚ), 9⟩,
    ⟨(367875760113/500000000000 : ℚ), (30480706251/5000000000 : ℚ), (-4544877836733/1000000000000 : ℚ), 8⟩,
    ⟨(370387291383/500000000000 : ℚ), (16028750479/5000000000 : ℚ), (-2412163781433/1000000000000 : ℚ), 7⟩,
    ⟨(746681079457/1000000000000 : ℚ), (8803771503/5000000000 : ℚ), (-10704080791/8000000000 : ℚ), 7⟩,
    ⟨(376622013471/500000000000 : ℚ), (4719252263/5000000000 : ℚ), (-725631287491/1000000000000 : ℚ), 6⟩,
    ⟨(760211214831/1000000000000 : ℚ), (2214719257/5000000000 : ℚ), (-86681254973/250000000000 : ℚ), 6⟩,
    ⟨(383657449/500000000 : ℚ), (1180210057/10000000000 : ℚ), (-49319795519/500000000000 : ℚ), 6⟩,
    ⟨(1512269699/1953125000 : ℚ), (-253065433/2500000000 : ℚ), (70312794029/1000000000000 : ℚ), 6⟩,
    ⟨(390422516687/500000000000 : ℚ), (-2531072573/10000000000 : ℚ), (94193535877/500000000000 : ℚ), 5⟩,
    ⟨(49171970629/62500000000 : ℚ), (-719490113/2000000000 : ℚ), (271958044617/1000000000000 : ℚ), 5⟩,
    ⟨(197943648151/250000000000 : ℚ), (-4343933749/10000000000 : ℚ), (165434963399/500000000000 : ℚ), 5⟩,
    ⟨(397860593759/500000000000 : ℚ), (-1212765297/2500000000 : ℚ), (185560513709/500000000000 : ℚ), 5⟩,
    ⟨(1277503439/1600000000 : ℚ), (-5167072799/10000000000 : ℚ), (12384660353/31250000000 : ℚ), 5⟩,
    ⟨(199956377303/250000000000 : ℚ), (-5319027457/10000000000 : ℚ), (51056531953/125000000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-5337751641/10000000000 : ℚ), (409950026873/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (206114869019/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control901.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control901.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate901

-- Control902
namespace DiagonalRamsey.JointInheritedCertificate902
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43825780187/1000000000000 : ℚ), (623086515351/10000000000 : ℚ), (-2742835521907/1000000000000 : ℚ), 12⟩,
    ⟨(22145602787/500000000000 : ℚ), (57839849597/10000000000 : ℚ), (-65174412243/250000000000 : ℚ), 9⟩,
    ⟨(45151199553/1000000000000 : ℚ), (13224082937/10000000000 : ℚ), (-61775226371/1000000000000 : ℚ), 8⟩,
    ⟨(9254967167/200000000000 : ℚ), (280537/2500000 : ℚ), (-329341289/50000000000 : ℚ), 7⟩,
    ⟨(47491050983/1000000000000 : ℚ), (-379067917/1000000000 : ℚ), (656313447/40000000000 : ℚ), 7⟩,
    ⟨(24307343633/500000000000 : ℚ), (-310964377/500000000 : ℚ), (14033532067/500000000000 : ℚ), 6⟩,
    ⟨(12368670311/250000000000 : ℚ), (-3748343853/5000000000 : ℚ), (17164772339/500000000000 : ℚ), 6⟩,
    ⟨(6242513329/125000000000 : ℚ), (-4033160073/5000000000 : ℚ), (37160775259/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-8134950641/10000000000 : ℚ), (9375930431/250000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (215907473701/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control902.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control902.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate902

-- Control903
namespace DiagonalRamsey.JointInheritedCertificate903
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2732739073/31250000000 : ℚ), (152796734063/2500000000 : ℚ), (-5368068737963/1000000000000 : ℚ), 12⟩,
    ⟨(88393872269/1000000000000 : ℚ), (28234180719/5000000000 : ℚ), (-101481780121/200000000000 : ℚ), 9⟩,
    ⟨(90142262423/1000000000000 : ℚ), (12700737873/10000000000 : ℚ), (-117910015871/1000000000000 : ℚ), 8⟩,
    ⟨(46213322123/500000000000 : ℚ), (837997463/10000000000 : ℚ), (-9887277281/1000000000000 : ℚ), 7⟩,
    ⟨(94899241313/1000000000000 : ℚ), (-3973096849/10000000000 : ℚ), (35098872993/1000000000000 : ℚ), 6⟩,
    ⟨(3036988223/31250000000 : ℚ), (-198436597/312500000 : ℚ), (1447623811/25000000000 : ℚ), 6⟩,
    ⟨(9893201329/100000000000 : ℚ), (-304015001/400000000 : ℚ), (70161198813/1000000000000 : ℚ), 6⟩,
    ⟨(49939117611/500000000000 : ℚ), (-101979181/125000000 : ℚ), (18926769799/250000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-2056396487/2500000000 : ℚ), (76379183469/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (407453254591/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control903.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control903.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate903

-- Control904
namespace DiagonalRamsey.JointInheritedCertificate904
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9162967447/200000000000 : ℚ), (103030387307/1250000000 : ℚ), (-189371482971/50000000000 : ℚ), 13⟩,
    ⟨(11532580853/250000000000 : ℚ), (75811161933/10000000000 : ℚ), (-177049460811/500000000000 : ℚ), 10⟩,
    ⟨(23356632927/500000000000 : ℚ), (8218230289/5000000000 : ℚ), (-4938423979/62500000000 : ℚ), 8⟩,
    ⟨(2373745843/50000000000 : ℚ), (221095473/10000000000 : ℚ), (-554057317/200000000000 : ℚ), 8⟩,
    ⟨(3018707623/62500000000 : ℚ), (-3203739953/5000000000 : ℚ), (28937481969/1000000000000 : ℚ), 7⟩,
    ⟨(49060972973/1000000000000 : ℚ), (-9705017391/10000000000 : ℚ), (11245001071/250000000000 : ℚ), 7⟩,
    ⟨(6205489427/125000000000 : ℚ), (-11449265077/10000000000 : ℚ), (13396508439/250000000000 : ℚ), 7⟩,
    ⟨(6244925199/125000000000 : ℚ), (-6115250947/5000000000 : ℚ), (57476484227/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-2464962363/2000000000 : ℚ), (57947841953/1000000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (853557422599/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control904.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control904.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate904

-- Control905
namespace DiagonalRamsey.JointInheritedCertificate905
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11649090357/250000000000 : ℚ), (103068053359/1000000000 : ℚ), (-4814116198239/1000000000000 : ℚ), 13⟩,
    ⟨(46852934703/1000000000000 : ℚ), (11766154599/1250000000 : ℚ), (-445646620033/1000000000000 : ℚ), 10⟩,
    ⟨(47327020299/1000000000000 : ℚ), (19688750147/10000000000 : ℚ), (-3826419143/40000000000 : ℚ), 9⟩,
    ⟨(2397322149/50000000000 : ℚ), (-695624147/10000000000 : ℚ), (82582631/62500000000 : ℚ), 8⟩,
    ⟨(48616901259/1000000000000 : ℚ), (-9053089561/10000000000 : ℚ), (20818625379/500000000000 : ℚ), 8⟩,
    ⟨(49236323941/1000000000000 : ℚ), (-6611608439/5000000000 : ℚ), (62030113127/1000000000000 : ℚ), 7⟩,
    ⟨(776725149/15625000000 : ℚ), (-15435524309/10000000000 : ℚ), (7297283681/100000000000 : ℚ), 7⟩,
    ⟨(12491745703/250000000000 : ℚ), (-328575307/200000000 : ℚ), (4870173623/62500000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-16548797013/10000000000 : ℚ), (15704547537/200000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (831857721043/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control905.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control905.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate905

-- Control906
namespace DiagonalRamsey.JointInheritedCertificate906
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48010694477/1000000000000 : ℚ), (1815829618301/10000000000 : ℚ), (-4365232748449/500000000000 : ℚ), 14⟩,
    ⟨(48160652419/1000000000000 : ℚ), (81521906767/5000000000 : ℚ), (-790701223731/1000000000000 : ℚ), 11⟩,
    ⟨(9687547713/200000000000 : ℚ), (6247630323/2000000000 : ℚ), (-30932526257/200000000000 : ℚ), 9⟩,
    ⟨(48799769061/1000000000000 : ℚ), (-2512717319/5000000000 : ℚ), (21519359021/1000000000000 : ℚ), 9⟩,
    ⟨(24595814023/500000000000 : ℚ), (-9986438337/5000000000 : ℚ), (9471874309/100000000000 : ℚ), 8⟩,
    ⟨(24776829271/500000000000 : ℚ), (-13736662429/5000000000 : ℚ), (131739888159/1000000000000 : ℚ), 8⟩,
    ⟨(3114421543/62500000000 : ℚ), (-983600187/312500000 : ℚ), (37905932309/250000000000 : ℚ), 8⟩,
    ⟨(49980702629/1000000000000 : ℚ), (-33280415553/10000000000 : ℚ), (160632508631/1000000000000 : ℚ), 8⟩,
    ⟨(1/20 : ℚ), (-16749521433/5000000000 : ℚ), (161725433797/1000000000000 : ℚ), 8⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (93824367289/125000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control906.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control906.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate906
