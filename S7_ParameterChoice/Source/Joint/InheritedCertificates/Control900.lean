import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
