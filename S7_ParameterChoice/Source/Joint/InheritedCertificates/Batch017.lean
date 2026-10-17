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

-- Control155
namespace DiagonalRamsey.JointInheritedCertificate155
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(67683160567/250000000000 : ℚ), (11767313706477/10000000000 : ℚ), (-159714802250191/500000000000 : ℚ), 11⟩,
    ⟨(271739714531/1000000000000 : ℚ), (1280552527481/10000000000 : ℚ), (-35324442194277/1000000000000 : ℚ), 8⟩,
    ⟨(273744160401/1000000000000 : ℚ), (111552605807/2500000000 : ℚ), (-12595963862831/1000000000000 : ℚ), 6⟩,
    ⟨(276726675969/1000000000000 : ℚ), (218422596801/10000000000 : ℚ), (-6333947860353/1000000000000 : ℚ), 6⟩,
    ⟨(140329268989/500000000000 : ℚ), (62922030691/5000000000 : ℚ), (-375687920537/100000000000 : ℚ), 5⟩,
    ⟨(285501880449/1000000000000 : ℚ), (15940893361/2000000000 : ℚ), (-2452246441391/1000000000000 : ℚ), 4⟩,
    ⟨(145605029673/500000000000 : ℚ), (10729815451/2000000000 : ℚ), (-1701748535163/1000000000000 : ℚ), 4⟩,
    ⟨(148864050893/500000000000 : ℚ), (18818293107/5000000000 : ℚ), (-1230725324733/1000000000000 : ℚ), 4⟩,
    ⟨(304993235457/1000000000000 : ℚ), (13587478723/5000000000 : ℚ), (-915767277171/1000000000000 : ℚ), 3⟩,
    ⟨(312935493149/1000000000000 : ℚ), (20014816251/10000000000 : ℚ), (-347376092963/500000000000 : ℚ), 3⟩,
    ⟨(321478386581/1000000000000 : ℚ), (2986288477/2000000000 : ℚ), (-266822783627/500000000000 : ℚ), 3⟩,
    ⟨(165269821509/500000000000 : ℚ), (5606754323/5000000000 : ℚ), (-1650144771/4000000000 : ℚ), 3⟩,
    ⟨(170015998803/500000000000 : ℚ), (8426127003/10000000000 : ℚ), (-31914913169/100000000000 : ℚ), 3⟩,
    ⟨(43733004223/125000000000 : ℚ), (6292119299/10000000000 : ℚ), (-122793560311/500000000000 : ℚ), 2⟩,
    ⟨(179970531833/500000000000 : ℚ), (289290651/625000000 : ℚ), (-18658650909/100000000000 : ℚ), 2⟩,
    ⟨(92541509987/250000000000 : ℚ), (3311598191/10000000000 : ℚ), (-138533505967/1000000000000 : ℚ), 2⟩,
    ⟨(190220245259/500000000000 : ℚ), (2254622087/10000000000 : ℚ), (-49442087621/500000000000 : ℚ), 2⟩,
    ⟨(390665466799/1000000000000 : ℚ), (1396399877/10000000000 : ℚ), (-32904643389/500000000000 : ℚ), 2⟩,
    ⟨(200371248341/500000000000 : ℚ), (692591593/10000000000 : ℚ), (-37969610523/1000000000000 : ℚ), 2⟩,
    ⟨(410574532859/1000000000000 : ℚ), (6914839/625000000 : ℚ), (-14369612763/1000000000000 : ℚ), 2⟩,
    ⟨(52508360931/125000000000 : ℚ), (-93423093/2500000000 : ℚ), (2870117631/500000000000 : ℚ), 2⟩,
    ⟨(85825628777/200000000000 : ℚ), (-77863473/1000000000 : ℚ), (22930170483/1000000000000 : ℚ), 2⟩,
    ⟨(109417759329/250000000000 : ℚ), (-223609399/2000000000 : ℚ), (376376169/10000000000 : ℚ), 2⟩,
    ⟨(445613295009/1000000000000 : ℚ), (-1402538823/10000000000 : ℚ), (1568754771/31250000000 : ℚ), 2⟩,
    ⟨(11321960717/25000000000 : ℚ), (-1640277837/10000000000 : ℚ), (1521981753/25000000000 : ℚ), 2⟩,
    ⟨(459396471119/1000000000000 : ℚ), (-1837570099/10000000000 : ℚ), (8734717273/125000000000 : ℚ), 2⟩,
    ⟨(14534520313/31250000000 : ℚ), (-1999282457/10000000000 : ℚ), (38676217921/500000000000 : ℚ), 2⟩,
    ⟨(469947992487/1000000000000 : ℚ), (-2129151899/10000000000 : ℚ), (41711957221/500000000000 : ℚ), 2⟩,
    ⟨(473879854497/1000000000000 : ℚ), (-17840101/80000000 : ℚ), (4409177169/50000000000 : ℚ), 2⟩,
    ⟨(29803898129/62500000000 : ℚ), (-575990479/2500000000 : ℚ), (91698825831/1000000000000 : ℚ), 2⟩,
    ⟨(95773363187/200000000000 : ℚ), (-2352479199/10000000000 : ℚ), (4700863973/50000000000 : ℚ), 2⟩,
    ⟨(239936944099/500000000000 : ℚ), (-297063517/1250000000 : ℚ), (19033830707/200000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-475900221/2000000000 : ℚ), (19062559433/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (274413444061/1000000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control155.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control155.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate155

-- Control156
namespace DiagonalRamsey.JointInheritedCertificate156
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(56866170731/200000000000 : ℚ), (11992292945201/10000000000 : ℚ), (-341871950659519/1000000000000 : ℚ), 11⟩,
    ⟨(285368733703/1000000000000 : ℚ), (261080696901/2000000000 : ℚ), (-37806635196553/1000000000000 : ℚ), 8⟩,
    ⟨(287434498447/1000000000000 : ℚ), (455052571599/10000000000 : ℚ), (-6740681173989/500000000000 : ℚ), 6⟩,
    ⟨(72627063361/250000000000 : ℚ), (44571193529/2000000000 : ℚ), (-3389717727083/500000000000 : ℚ), 6⟩,
    ⟨(294560396751/1000000000000 : ℚ), (16058137703/1250000000 : ℚ), (-15708430571/3906250000 : ℚ), 5⟩,
    ⟨(59910380803/200000000000 : ℚ), (81410149807/10000000000 : ℚ), (-1312562600133/500000000000 : ℚ), 4⟩,
    ⟨(76358676073/250000000000 : ℚ), (2741516361/500000000 : ℚ), (-910985070243/500000000000 : ℚ), 4⟩,
    ⟨(156076071499/500000000000 : ℚ), (9622695041/2500000000 : ℚ), (-1317936122453/1000000000000 : ℚ), 4⟩,
    ⟨(319639527527/1000000000000 : ℚ), (5562492909/2000000000 : ℚ), (-980943021539/1000000000000 : ℚ), 3⟩,
    ⟨(163912375137/500000000000 : ℚ), (20502167777/10000000000 : ℚ), (-744503707577/1000000000000 : ℚ), 3⟩,
    ⟨(84157245767/250000000000 : ℚ), (15311117503/10000000000 : ℚ), (-286095975639/500000000000 : ℚ), 3⟩,
    ⟨(69193487267/200000000000 : ℚ), (1151388517/1000000000 : ℚ), (-88539372401/200000000000 : ℚ), 3⟩,
    ⟨(71150035133/200000000000 : ℚ), (4333432009/5000000000 : ℚ), (-13715207399/40000000000 : ℚ), 3⟩,
    ⟨(365882987931/1000000000000 : ℚ), (25948981/40000000 : ℚ), (-52857747849/200000000000 : ℚ), 2⟩,
    ⟨(376268288611/1000000000000 : ℚ), (2394211569/5000000000 : ℚ), (-201287843861/1000000000000 : ℚ), 2⟩,
    ⟨(193403030791/500000000000 : ℚ), (3443672111/10000000000 : ℚ), (-75004231733/500000000000 : ℚ), 2⟩,
    ⟨(39739482233/100000000000 : ℚ), (2364806739/10000000000 : ℚ), (-107726470397/1000000000000 : ℚ), 2⟩,
    ⟨(407932595301/1000000000000 : ℚ), (372291991/2500000000 : ℚ), (-18120640341/250000000000 : ℚ), 2⟩,
    ⟨(418317895981/1000000000000 : ℚ), (385714197/5000000000 : ℚ), (-21420891653/500000000000 : ℚ), 2⟩,
    ⟨(214225354123/500000000000 : ℚ), (178286769/10000000000 : ℚ), (-17736972603/1000000000000 : ℚ), 2⟩,
    ⟨(438233447577/1000000000000 : ℚ), (-315051307/10000000000 : ℚ), (908944467/250000000000 : ℚ), 2⟩,
    ⟨(111892975211/250000000000 : ℚ), (-727257909/10000000000 : ℚ), (21888493331/1000000000000 : ℚ), 2⟩,
    ⟨(228188066819/500000000000 : ℚ), (-67033061/625000000 : ℚ), (37491035251/1000000000000 : ℚ), 2⟩,
    ⟨(14517542387/31250000000 : ℚ), (-1361739589/10000000000 : ℚ), (50806357231/1000000000000 : ℚ), 2⟩,
    ⟨(236024370457/500000000000 : ℚ), (-1603266453/10000000000 : ℚ), (62115906511/1000000000000 : ℚ), 2⟩,
    ⟨(23938308981/50000000000 : ℚ), (-1803580639/10000000000 : ℚ), (71638179213/1000000000000 : ℚ), 2⟩,
    ⟨(484648979897/1000000000000 : ℚ), (-1967678973/10000000000 : ℚ), (39771214841/500000000000 : ℚ), 2⟩,
    ⟨(489640487161/1000000000000 : ℚ), (-2099400109/10000000000 : ℚ), (335776881/3906250000 : ℚ), 2⟩,
    ⟨(123423157617/250000000000 : ℚ), (-2201656613/10000000000 : ℚ), (90986355697/1000000000000 : ℚ), 2⟩,
    ⟨(99353277093/200000000000 : ℚ), (-1138302271/5000000000 : ℚ), (739827673/7812500000 : ℚ), 2⟩,
    ⟨(498832150209/1000000000000 : ℚ), (-2325765233/10000000000 : ℚ), (4857257067/50000000000 : ℚ), 2⟩,
    ⟨(499870030257/1000000000000 : ℚ), (-2350109287/10000000000 : ℚ), (24590190583/250000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2353141339/10000000000 : ℚ), (98512345189/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (8303327827/31250000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control156.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control156.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate156

-- Control157
namespace DiagonalRamsey.JointInheritedCertificate157
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(298264523691/1000000000000 : ℚ), (12236638135753/10000000000 : ℚ), (-182957471816911/500000000000 : ℚ), 11⟩,
    ⟨(299331597173/1000000000000 : ℚ), (333099223677/2500000000 : ℚ), (-809320504719/20000000000 : ℚ), 8⟩,
    ⟨(60291093527/200000000000 : ℚ), (46465935427/1000000000 : ℚ), (-7215042361403/500000000000 : ℚ), 6⟩,
    ⟨(76153920261/250000000000 : ℚ), (28459305591/1250000000 : ℚ), (-7256877270813/1000000000000 : ℚ), 6⟩,
    ⟨(308781802817/1000000000000 : ℚ), (131315147311/10000000000 : ℚ), (-4304886139417/1000000000000 : ℚ), 5⟩,
    ⟨(78478427731/250000000000 : ℚ), (1665318171/200000000 : ℚ), (-2810524483573/1000000000000 : ℚ), 4⟩,
    ⟨(63992396457/200000000000 : ℚ), (28058173501/5000000000 : ℚ), (-1950961972821/1000000000000 : ℚ), 4⟩,
    ⟨(326868368741/1000000000000 : ℚ), (7699494/1953125 : ℚ), (-1411568787247/1000000000000 : ℚ), 4⟩,
    ⟨(334566358013/1000000000000 : ℚ), (7126889977/2500000000 : ℚ), (-210195173709/200000000000 : ℚ), 3⟩,
    ⟨(171490907129/500000000000 : ℚ), (21033979957/10000000000 : ℚ), (-99752483213/125000000000 : ℚ), 3⟩,
    ⟨(352033692031/1000000000000 : ℚ), (7862889463/5000000000 : ℚ), (-153428052149/250000000000 : ℚ), 3⟩,
    ⟨(361634816801/1000000000000 : ℚ), (740138551/625000000 : ℚ), (-475242485711/1000000000000 : ℚ), 3⟩,
    ⟨(371692724489/1000000000000 : ℚ), (4465110381/5000000000 : ℚ), (-46068436643/125000000000 : ℚ), 3⟩,
    ⟨(47763818993/125000000000 : ℚ), (1340173841/2000000000 : ℚ), (-11383136649/40000000000 : ℚ), 2⟩,
    ⟨(196393984897/500000000000 : ℚ), (198538531/400000000 : ℚ), (-217302999601/1000000000000 : ℚ), 2⟩,
    ⟨(403622148667/1000000000000 : ℚ), (717690291/2000000000 : ℚ), (-81289332093/500000000000 : ℚ), 2⟩,
    ⟨(414508749499/1000000000000 : ℚ), (2485645769/10000000000 : ℚ), (-117488132771/1000000000000 : ℚ), 2⟩,
    ⟨(425342928373/1000000000000 : ℚ), (1590936047/10000000000 : ℚ), (-79932634553/1000000000000 : ℚ), 2⟩,
    ⟨(218010173111/500000000000 : ℚ), (85792297/1000000000 : ℚ), (-48374540161/1000000000000 : ℚ), 2⟩,
    ⟨(223219086839/500000000000 : ℚ), (126250119/5000000000 : ℚ), (-21669812749/1000000000000 : ℚ), 2⟩,
    ⟨(91299216273/200000000000 : ℚ), (-125369891/5000000000 : ℚ), (260963063/250000000000 : ℚ), 2⟩,
    ⟨(93219441227/200000000000 : ℚ), (-670941921/10000000000 : ℚ), (10211697297/500000000000 : ℚ), 2⟩,
    ⟨(475149083909/1000000000000 : ℚ), (-204534031/2000000000 : ℚ), (36973574707/1000000000000 : ℚ), 2⟩,
    ⟨(483564540153/1000000000000 : ℚ), (-1317088249/10000000000 : ℚ), (3192792507/62500000000 : ℚ), 2⟩,
    ⟨(245631264713/500000000000 : ℚ), (-781400237/5000000000 : ℚ), (63059682007/1000000000000 : ℚ), 2⟩,
    ⟨(498168915881/1000000000000 : ℚ), (-1766457643/10000000000 : ℚ), (14626813057/200000000000 : ℚ), 2⟩,
    ⟨(252108593621/500000000000 : ℚ), (-241649787/1250000000 : ℚ), (4074523689/50000000000 : ℚ), 2⟩,
    ⟨(509349095349/1000000000000 : ℚ), (-516743009/2500000000 : ℚ), (2758425397/31250000000 : ℚ), 2⟩,
    ⟨(513515217123/1000000000000 : ℚ), (-33918391/156250000 : ℚ), (93578389999/1000000000000 : ℚ), 2⟩,
    ⟨(129168857633/250000000000 : ℚ), (-1123416789/5000000000 : ℚ), (48747984159/500000000000 : ℚ), 2⟩,
    ⟨(259399650497/500000000000 : ℚ), (-1148354443/5000000000 : ℚ), (50039091077/500000000000 : ℚ), 2⟩,
    ⟨(20794654979/40000000000 : ℚ), (-2321403033/10000000000 : ℚ), (101360628139/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2324478513/10000000000 : ℚ), (5076026629/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (64204062909/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control157.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control157.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate157

-- Control158
namespace DiagonalRamsey.JointInheritedCertificate158
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(159783797527/500000000000 : ℚ), (632918793337/125000000 : ℚ), (-809667698811887/500000000000 : ℚ), 13⟩,
    ⟨(79961279793/250000000000 : ℚ), (2795853331171/5000000000 : ℚ), (-179715541453967/1000000000000 : ℚ), 10⟩,
    ⟨(320399498829/1000000000000 : ℚ), (99650329209/500000000 : ℚ), (-64545955947871/1000000000000 : ℚ), 8⟩,
    ⟨(12849175939/40000000000 : ℚ), (125458288677/1250000000 : ℚ), (-32815563284879/1000000000000 : ℚ), 8⟩,
    ⟨(32233281881/100000000000 : ℚ), (298876971709/5000000000 : ℚ), (-19757791568763/1000000000000 : ℚ), 7⟩,
    ⟨(323707101597/1000000000000 : ℚ), (98267560537/2500000000 : ℚ), (-13147971459679/1000000000000 : ℚ), 6⟩,
    ⟨(81337234017/250000000000 : ℚ), (275894206487/10000000000 : ℚ), (-934634840843/100000000000 : ℚ), 6⟩,
    ⟨(327254366901/1000000000000 : ℚ), (101388455361/5000000000 : ℚ), (-1740295475901/250000000000 : ℚ), 5⟩,
    ⟨(65883760749/200000000000 : ℚ), (154214537741/10000000000 : ℚ), (-5367139222117/1000000000000 : ℚ), 5⟩,
    ⟨(331837032283/1000000000000 : ℚ), (7524982101/625000000 : ℚ), (-4249429386601/1000000000000 : ℚ), 5⟩,
    ⟨(334503226791/1000000000000 : ℚ), (47982753161/5000000000 : ℚ), (-3435571534251/1000000000000 : ℚ), 4⟩,
    ⟨(84352741043/250000000000 : ℚ), (77775716111/10000000000 : ℚ), (-282463266849/100000000000 : ℚ), 4⟩,
    ⟨(42569154929/125000000000 : ℚ), (63898961719/10000000000 : ℚ), (-1177178192443/500000000000 : ℚ), 4⟩,
    ⟨(68784496511/200000000000 : ℚ), (10618731077/2000000000 : ℚ), (-198465093003/100000000000 : ℚ), 4⟩,
    ⟨(347510576739/1000000000000 : ℚ), (44532559389/10000000000 : ℚ), (-1688752479647/1000000000000 : ℚ), 4⟩,
    ⟨(2744600609/7812500000 : ℚ), (4705944143/1250000000 : ℚ), (-1448241393647/1000000000000 : ℚ), 4⟩,
    ⟨(44413529469/125000000000 : ℚ), (16019101377/5000000000 : ℚ), (-250020912941/200000000000 : ℚ), 3⟩,
    ⟨(44937376917/125000000000 : ℚ), (219326733/80000000 : ℚ), (-1084937239649/1000000000000 : ℚ), 3⟩,
    ⟨(1455484483/4000000000 : ℚ), (23568237251/10000000000 : ℚ), (-945805817019/1000000000000 : ℚ), 3⟩,
    ⟨(46051752401/125000000000 : ℚ), (2033662103/1000000000 : ℚ), (-413753927961/500000000000 : ℚ), 3⟩,
    ⟨(37311676647/100000000000 : ℚ), (17600376013/10000000000 : ℚ), (-726078299753/1000000000000 : ℚ), 3⟩,
    ⟨(377968033207/1000000000000 : ℚ), (15266599571/10000000000 : ℚ), (-79806568837/125000000000 : ℚ), 3⟩,
    ⟨(38295613229/100000000000 : ℚ), (6631422911/5000000000 : ℚ), (-562231933267/1000000000000 : ℚ), 3⟩,
    ⟨(194034523477/500000000000 : ℚ), (11531987821/10000000000 : ℚ), (-49551746929/100000000000 : ℚ), 3⟩,
    ⟨(393294459739/1000000000000 : ℚ), (10028520953/10000000000 : ℚ), (-109197534029/250000000000 : ℚ), 3⟩,
    ⟨(398619782167/1000000000000 : ℚ), (8715863781/10000000000 : ℚ), (-384823323847/1000000000000 : ℚ), 3⟩,
    ⟨(404032185071/1000000000000 : ℚ), (1891090133/2500000000 : ℚ), (-67723592483/200000000000 : ℚ), 2⟩,
    ⟨(204759314749/500000000000 : ℚ), (3274892253/5000000000 : ℚ), (-74338461987/250000000000 : ℚ), 2⟩,
    ⟨(207532949061/500000000000 : ℚ), (1130440807/2000000000 : ℚ), (-10414108229/40000000000 : ℚ), 2⟩,
    ⟨(26291289193/62500000000 : ℚ), (303444633/625000000 : ℚ), (-227049861091/1000000000000 : ℚ), 2⟩,
    ⟨(426289338203/1000000000000 : ℚ), (1036191279/2500000000 : ℚ), (-196972299999/1000000000000 : ℚ), 2⟩,
    ⟨(43193847141/100000000000 : ℚ), (701927789/2000000000 : ℚ), (-84860761919/500000000000 : ℚ), 2⟩,
    ⟨(109398604363/250000000000 : ℚ), (147001861/500000000 : ℚ), (-144960035581/1000000000000 : ℚ), 2⟩,
    ⟨(221621775329/500000000000 : ℚ), (2427754653/10000000000 : ℚ), (-15300075669/125000000000 : ℚ), 2⟩,
    ⟨(224436130887/500000000000 : ℚ), (982909163/5000000000 : ℚ), (-25449419913/250000000000 : ℚ), 2⟩,
    ⟨(454466990739/1000000000000 : ℚ), (15482781/100000000 : ℚ), (-41470229293/500000000000 : ℚ), 2⟩,
    ⟨(115003564841/250000000000 : ℚ), (1170037081/10000000000 : ℚ), (-16411820459/250000000000 : ℚ), 2⟩,
    ⟨(46550070379/100000000000 : ℚ), (413356829/5000000000 : ℚ), (-49761046079/1000000000000 : ℚ), 2⟩,
    ⟨(235456553347/500000000000 : ℚ), (51452863/1000000000 : ℚ), (-35145444783/1000000000000 : ℚ), 2⟩,
    ⟨(238119214561/500000000000 : ℚ), (46042473/2000000000 : ℚ), (-21681864439/1000000000000 : ℚ), 2⟩,
    ⟨(481463841907/1000000000000 : ℚ), (-29071923/10000000000 : ℚ), (-9266810947/1000000000000 : ℚ), 2⟩,
    ⟨(486576756571/1000000000000 : ℚ), (-53158377/2000000000 : ℚ), (2190236577/1000000000000 : ℚ), 2⟩,
    ⟨(98312971131/200000000000 : ℚ), (-30131197/625000000 : ℚ), (6384310931/500000000000 : ℚ), 2⟩,
    ⟨(496416122391/1000000000000 : ℚ), (-679873811/10000000000 : ℚ), (5634505683/250000000000 : ℚ), 2⟩,
    ⟨(250559434827/500000000000 : ℚ), (-430380889/5000000000 : ℚ), (31559726887/1000000000000 : ℚ), 2⟩,
    ⟨(31603860507/62500000000 : ℚ), (-1026206313/10000000000 : ℚ), (19943856531/500000000000 : ℚ), 2⟩,
    ⟨(255016936763/500000000000 : ℚ), (-117747469/1000000000 : ℚ), (47569571349/1000000000000 : ℚ), 2⟩,
    ⟨(51422465311/100000000000 : ℚ), (-328920207/2500000000 : ℚ), (10929457713/200000000000 : ℚ), 2⟩,
    ⟨(51822401091/100000000000 : ℚ), (-1441804547/10000000000 : ℚ), (61157920471/1000000000000 : ℚ), 2⟩,
    ⟨(261011156061/500000000000 : ℚ), (-389177/2500000 : ℚ), (16783542399/250000000000 : ℚ), 2⟩,
    ⟨(262805203153/500000000000 : ℚ), (-1661149711/10000000000 : ℚ), (9075610211/125000000000 : ℚ), 2⟩,
    ⟨(52897964943/100000000000 : ℚ), (-877898301/5000000000 : ℚ), (77595474621/1000000000000 : ℚ), 2⟩,
    ⟨(53212192469/100000000000 : ℚ), (-1841234303/10000000000 : ℚ), (41064154409/500000000000 : ℚ), 2⟩,
    ⟨(535029662071/1000000000000 : ℚ), (-479493997/2500000000 : ℚ), (43111503313/500000000000 : ℚ), 2⟩,
    ⟨(268847928289/500000000000 : ℚ), (-993234981/5000000000 : ℚ), (44948364699/500000000000 : ℚ), 2⟩,
    ⟨(540114085117/1000000000000 : ℚ), (-255888269/1250000000 : ℚ), (93164415851/1000000000000 : ℚ), 2⟩,
    ⟨(542278521961/1000000000000 : ℚ), (-105011083/500000000 : ℚ), (96038988099/1000000000000 : ℚ), 2⟩,
    ⟨(272091976397/500000000000 : ℚ), (-1073052743/5000000000 : ℚ), (49265764029/500000000000 : ℚ), 2⟩,
    ⟨(109165157453/200000000000 : ℚ), (-437000503/2000000000 : ℚ), (12581428387/125000000000 : ℚ), 2⟩,
    ⟨(136800017513/250000000000 : ℚ), (-34642451/156250000 : ℚ), (51203256599/500000000000 : ℚ), 2⟩,
    ⟨(274151745193/500000000000 : ℚ), (-1121307319/5000000000 : ℚ), (12975394501/125000000000 : ℚ), 2⟩,
    ⟨(34320836877/62500000000 : ℚ), (-2261626151/10000000000 : ℚ), (104846351779/1000000000000 : ℚ), 2⟩,
    ⟨(549687769689/1000000000000 : ℚ), (-454849533/2000000000 : ℚ), (26384947713/250000000000 : ℚ), 2⟩,
    ⟨(549965293807/1000000000000 : ℚ), (-35633479/156250000 : ℚ), (105885906123/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2281328793/10000000000 : ℚ), (1059291423/10000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (4864138493/20000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control158.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control158.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate158

-- Control159
namespace DiagonalRamsey.JointInheritedCertificate159
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(178493984573/500000000000 : ℚ), (53637437449587/10000000000 : ℚ), (-95809825293367/50000000000 : ℚ), 13⟩,
    ⟨(357280643693/1000000000000 : ℚ), (2962506126573/5000000000 : ℚ), (-212663401123981/1000000000000 : ℚ), 10⟩,
    ⟨(357865287707/1000000000000 : ℚ), (211266299/1000000 : ℚ), (-76380776645521/1000000000000 : ℚ), 8⟩,
    ⟨(358740492731/1000000000000 : ℚ), (13305768779/125000000 : ℚ), (-19416775364833/500000000000 : ℚ), 8⟩,
    ⟨(179952075159/500000000000 : ℚ), (158581973953/2500000000 : ℚ), (-5845512025651/250000000000 : ℚ), 7⟩,
    ⟨(90338364279/250000000000 : ℚ), (417385019367/10000000000 : ℚ), (-15560554940793/1000000000000 : ℚ), 6⟩,
    ⟨(181542460809/500000000000 : ℚ), (146579890009/5000000000 : ℚ), (-11062071549687/1000000000000 : ℚ), 6⟩,
    ⟨(365094372573/1000000000000 : ℚ), (107810715337/5000000000 : ℚ), (-4119860762737/500000000000 : ℚ), 5⟩,
    ⟨(367376969039/1000000000000 : ℚ), (641039407/39062500 : ℚ), (-3176767623987/500000000000 : ℚ), 5⟩,
    ⟨(369927212041/1000000000000 : ℚ), (801389967/62500000 : ℚ), (-5031013813597/1000000000000 : ℚ), 5⟩,
    ⟨(18636947891/50000000000 : ℚ), (102283431041/10000000000 : ℚ), (-4068056920029/1000000000000 : ℚ), 4⟩,
    ⟨(75161086527/200000000000 : ℚ), (41482868303/5000000000 : ℚ), (-3345228375181/1000000000000 : ℚ), 4⟩,
    ⟨(379119249077/1000000000000 : ℚ), (34111208351/5000000000 : ℚ), (-697214702667/250000000000 : ℚ), 4⟩,
    ⟨(3061379391/8000000000 : ℚ), (11347497283/2000000000 : ℚ), (-18371146419/7812500000 : ℚ), 4⟩,
    ⟨(193228198559/500000000000 : ℚ), (4763403447/1000000000 : ℚ), (-250187735331/125000000000 : ℚ), 4⟩,
    ⟨(390462052883/1000000000000 : ℚ), (20154872589/5000000000 : ℚ), (-42926194277/25000000000 : ℚ), 4⟩,
    ⟨(78935948239/200000000000 : ℚ), (17170009293/5000000000 : ℚ), (-1482745580221/1000000000000 : ℚ), 3⟩,
    ⟨(199549650637/500000000000 : ℚ), (14709357743/5000000000 : ℚ), (-20116660831/15625000000 : ℚ), 3⟩,
    ⟨(403710086011/1000000000000 : ℚ), (25320714771/10000000000 : ℚ), (-1123005026239/1000000000000 : ℚ), 3⟩,
    ⟨(408500987623/1000000000000 : ℚ), (10938785331/5000000000 : ℚ), (-983205380261/1000000000000 : ℚ), 3⟩,
    ⟨(51682558051/125000000000 : ℚ), (9480642307/5000000000 : ℚ), (-431687571951/500000000000 : ℚ), 3⟩,
    ⟨(418576568551/1000000000000 : ℚ), (164732431/100000000 : ℚ), (-379943801437/500000000000 : ℚ), 3⟩,
    ⟨(423836974911/1000000000000 : ℚ), (14336525069/10000000000 : ℚ), (-669904007811/1000000000000 : ℚ), 3⟩,
    ⟨(107307252677/250000000000 : ℚ), (6245227943/5000000000 : ℚ), (-59117687741/100000000000 : ℚ), 3⟩,
    ⟨(217369843027/500000000000 : ℚ), (5443344339/5000000000 : ℚ), (-6523853827/12500000000 : ℚ), 3⟩,
    ⟨(1761422901/4000000000 : ℚ), (148224107/156250000 : ℚ), (-460646373539/1000000000000 : ℚ), 3⟩,
    ⟨(223031799383/500000000000 : ℚ), (2064471569/2500000000 : ℚ), (-406208380197/1000000000000 : ℚ), 2⟩,
    ⟨(90369911167/200000000000 : ℚ), (7175548469/10000000000 : ℚ), (-178811626173/500000000000 : ℚ), 2⟩,
    ⟨(457699657579/1000000000000 : ℚ), (6218118021/10000000000 : ℚ), (-31408783461/100000000000 : ℚ), 2⟩,
    ⟨(463599810591/1000000000000 : ℚ), (2684010859/5000000000 : ℚ), (-68733342293/250000000000 : ℚ), 2⟩,
    ⟨(93907160177/200000000000 : ℚ), (2305306243/5000000000 : ℚ), (-239599536083/1000000000000 : ℚ), 2⟩,
    ⟨(475493328141/1000000000000 : ℚ), (196680693/500000000 : ℚ), (-41522833121/200000000000 : ℚ), 2⟩,
    ⟨(240729020077/500000000000 : ℚ), (1663341477/5000000000 : ℚ), (-44644312441/250000000000 : ℚ), 2⟩,
    ⟨(48741556741/100000000000 : ℚ), (2781063967/10000000000 : ℚ), (-76074120509/500000000000 : ℚ), 2⟩,
    ⟨(61668944713/125000000000 : ℚ), (1144655743/5000000000 : ℚ), (-64017944273/500000000000 : ℚ), 2⟩,
    ⟨(124812927679/250000000000 : ℚ), (184506803/1000000000 : ℚ), (-105990048817/1000000000000 : ℚ), 2⟩,
    ⟨(25255090623/50000000000 : ℚ), (1442884061/10000000000 : ℚ), (-5362190193/62500000000 : ℚ), 2⟩,
    ⟨(510887769529/1000000000000 : ℚ), (539035753/5000000000 : ℚ), (-67264238281/1000000000000 : ℚ), 2⟩,
    ⟨(103319128609/200000000000 : ℚ), (373291937/5000000000 : ℚ), (-50235598883/1000000000000 : ℚ), 2⟩,
    ⟨(522211682241/1000000000000 : ℚ), (88983527/2000000000 : ℚ), (-17284008439/500000000000 : ℚ), 2⟩,
    ⟨(527722357587/1000000000000 : ℚ), (21253837/1250000000 : ℚ), (-1258641777/62500000000 : ℚ), 2⟩,
    ⟨(533114393383/1000000000000 : ℚ), (-40362651/5000000000 : ℚ), (-213702433/31250000000 : ℚ), 2⟩,
    ⟨(538374799743/1000000000000 : ℚ), (-15483073/500000000 : ℚ), (1356501579/250000000000 : ℚ), 2⟩,
    ⟨(543490903887/1000000000000 : ℚ), (-5187989/100000000 : ℚ), (8369197619/500000000000 : ℚ), 2⟩,
    ⟨(4284768599/7812500000 : ℚ), (-17747713/250000000 : ℚ), (5434393409/200000000000 : ℚ), 2⟩,
    ⟨(138310320571/250000000000 : ℚ), (-22113613/250000000 : ℚ), (36791342949/1000000000000 : ℚ), 2⟩,
    ⟨(557852067021/1000000000000 : ℚ), (-1044072781/10000000000 : ℚ), (1826142919/40000000000 : ℚ), 2⟩,
    ⟨(562271627099/1000000000000 : ℚ), (-1189694953/10000000000 : ℚ), (53809062037/1000000000000 : ℚ), 2⟩,
    ⟨(566489315411/1000000000000 : ℚ), (-330617239/2500000000 : ℚ), (61302362119/1000000000000 : ℚ), 2⟩,
    ⟨(570494971177/1000000000000 : ℚ), (-180415809/1250000000 : ℚ), (17043212987/250000000000 : ℚ), 2⟩,
    ⟨(28713947221/50000000000 : ℚ), (-1553087909/10000000000 : ℚ), (9306915309/125000000000 : ℚ), 2⟩,
    ⟨(577832119217/1000000000000 : ℚ), (-826237603/5000000000 : ℚ), (80180480077/1000000000000 : ℚ), 2⟩,
    ⟨(29057296783/50000000000 : ℚ), (-217765353/1250000000 : ℚ), (666995173/7812500000 : ℚ), 2⟩,
    ⟨(292106205237/500000000000 : ℚ), (-364517433/2000000000 : ℚ), (90063811913/1000000000000 : ℚ), 2⟩,
    ⟨(587024156253/1000000000000 : ℚ), (-947177333/5000000000 : ℚ), (23566650969/250000000000 : ℚ), 2⟩,
    ⟨(117914879851/200000000000 : ℚ), (-1957848719/10000000000 : ℚ), (98001922701/1000000000000 : ℚ), 2⟩,
    ⟨(591856995721/1000000000000 : ℚ), (-2013435603/10000000000 : ℚ), (25321376323/250000000000 : ℚ), 2⟩,
    ⟨(593866446677/1000000000000 : ℚ), (-412285903/2000000000 : ℚ), (104130866049/1000000000000 : ℚ), 2⟩,
    ⟨(297798955589/500000000000 : ℚ), (-420419369/2000000000 : ℚ), (106549474003/1000000000000 : ℚ), 2⟩,
    ⟨(74630902247/125000000000 : ℚ), (-2135659737/10000000000 : ℚ), (108550899801/1000000000000 : ℚ), 2⟩,
    ⟨(149552718891/250000000000 : ℚ), (-2162299041/10000000000 : ℚ), (11014293931/100000000000 : ℚ), 2⟩,
    ⟨(599086080587/1000000000000 : ℚ), (-545539173/2500000000 : ℚ), (111331713467/1000000000000 : ℚ), 2⟩,
    ⟨(299835362301/500000000000 : ℚ), (-2195337559/10000000000 : ℚ), (112121745829/1000000000000 : ℚ), 2⟩,
    ⟨(149990849787/250000000000 : ℚ), (-550477703/2500000000 : ℚ), (112516020761/1000000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-440546333/2000000000 : ℚ), (112565270419/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (109807473813/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control159.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control159.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate159

-- Control160
namespace DiagonalRamsey.JointInheritedCertificate160
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(109965833547/250000000000 : ℚ), (30873135959397/5000000000 : ℚ), (-679434346646857/250000000000 : ℚ), 13⟩,
    ⟨(440176633001/1000000000000 : ℚ), (426550148143/625000000 : ℚ), (-301626718576267/1000000000000 : ℚ), 10⟩,
    ⟨(440802475861/1000000000000 : ℚ), (2435731884833/10000000000 : ℚ), (-27084486791053/250000000000 : ℚ), 9⟩,
    ⟨(22086967753/50000000000 : ℚ), (122864081801/1000000000 : ℚ), (-13771255434939/250000000000 : ℚ), 8⟩,
    ⟨(442985013573/1000000000000 : ℚ), (733123923547/10000000000 : ℚ), (-16585176823399/500000000000 : ℚ), 7⟩,
    ⟨(444536450499/1000000000000 : ℚ), (483087728959/10000000000 : ℚ), (-5519327094873/250000000000 : ℚ), 6⟩,
    ⟨(446389928291/1000000000000 : ℚ), (13593306747/400000000 : ℚ), (-1962161794547/125000000000 : ℚ), 6⟩,
    ⟨(448540981759/1000000000000 : ℚ), (125179341597/5000000000 : ℚ), (-11694556825893/1000000000000 : ℚ), 5⟩,
    ⟨(225492214413/500000000000 : ℚ), (19087043973/1000000000 : ℚ), (-9019601454963/1000000000000 : ℚ), 5⟩,
    ⟨(90742876603/200000000000 : ℚ), (47808063/3200000 : ℚ), (-1428823077081/200000000000 : ℚ), 5⟩,
    ⟨(228362133813/500000000000 : ℚ), (119397280967/10000000000 : ℚ), (-5778624452451/1000000000000 : ℚ), 5⟩,
    ⟨(92001366317/200000000000 : ℚ), (97032756993/10000000000 : ℚ), (-148554157721/31250000000 : ℚ), 4⟩,
    ⟨(231777083453/500000000000 : ℚ), (7994792977/1000000000 : ℚ), (-3964956320647/1000000000000 : ℚ), 4⟩,
    ⟨(467357727749/1000000000000 : ℚ), (1332520059/200000000 : ℚ), (-104531506673/31250000000 : ℚ), 4⟩,
    ⟨(235704175501/500000000000 : ℚ), (875874881/156250000 : ℚ), (-2848970793809/1000000000000 : ℚ), 4⟩,
    ⟨(475696278359/1000000000000 : ℚ), (47543291821/10000000000 : ℚ), (-2445930037427/1000000000000 : ℚ), 4⟩,
    ⟨(480211179827/1000000000000 : ℚ), (40598082811/10000000000 : ℚ), (-1057022782519/500000000000 : ℚ), 3⟩,
    ⟨(242471089307/500000000000 : ℚ), (17433537761/5000000000 : ℚ), (-918766377813/500000000000 : ℚ), 3⟩,
    ⟨(489877877329/1000000000000 : ℚ), (30090371783/10000000000 : ℚ), (-1604754175813/1000000000000 : ℚ), 3⟩,
    ⟨(495006385441/1000000000000 : ℚ), (203698571/78125000 : ℚ), (-1406977651411/1000000000000 : ℚ), 3⟩,
    ⟨(20012613917/40000000000 : ℚ), (4533660037/2000000000 : ℚ), (-77346722543/62500000000 : ℚ), 3⟩,
    ⟨(20231679001/40000000000 : ℚ), (9880501989/5000000000 : ℚ), (-272829843249/250000000000 : ℚ), 3⟩,
    ⟨(127855768267/250000000000 : ℚ), (3452507759/2000000000 : ℚ), (-241066506719/250000000000 : ℚ), 3⟩,
    ⟨(129298769061/250000000000 : ℚ), (1510266419/1000000000 : ℚ), (-853198957601/1000000000000 : ℚ), 3⟩,
    ⟨(523094079293/1000000000000 : ℚ), (13225370881/10000000000 : ℚ), (-755567137377/1000000000000 : ℚ), 3⟩,
    ⟨(529105870999/1000000000000 : ℚ), (2896395267/2500000000 : ℚ), (-334655077811/500000000000 : ℚ), 3⟩,
    ⟨(53521596843/100000000000 : ℚ), (3963557/3906250 : ℚ), (-118549869503/200000000000 : ℚ), 2⟩,
    ⟨(21656386073/40000000000 : ℚ), (8878815111/10000000000 : ℚ), (-10490122207/20000000000 : ℚ), 2⟩,
    ⟨(27383600003/50000000000 : ℚ), (1939312347/2500000000 : ℚ), (-231719958027/500000000000 : ℚ), 2⟩,
    ⟨(138496981647/250000000000 : ℚ), (3380778941/5000000000 : ℚ), (-3192193539/7812500000 : ℚ), 2⟩,
    ⟨(560342215789/1000000000000 : ℚ), (5874676221/10000000000 : ℚ), (-359192410493/1000000000000 : ℚ), 2⟩,
    ⟨(70839944953/125000000000 : ℚ), (1016457031/2000000000 : ℚ), (-78635877277/250000000000 : ℚ), 2⟩,
    ⟨(286552297257/500000000000 : ℚ), (2186152923/5000000000 : ℚ), (-137042513697/500000000000 : ℚ), 2⟩,
    ⟨(579481938349/1000000000000 : ℚ), (3734499599/10000000000 : ℚ), (-237332191761/1000000000000 : ℚ), 2⟩,
    ⟨(11716724551/20000000000 : ℚ), (790037029/2500000000 : ℚ), (-50967521387/250000000000 : ℚ), 2⟩,
    ⟨(296076077039/500000000000 : ℚ), (1320898167/5000000000 : ℚ), (-21667754739/125000000000 : ℚ), 2⟩,
    ⟨(598414502313/1000000000000 : ℚ), (1086522139/5000000000 : ℚ), (-36360051891/250000000000 : ℚ), 2⟩,
    ⟨(151152046427/250000000000 : ℚ), (1748377593/10000000000 : ℚ), (-59948950623/500000000000 : ℚ), 2⟩,
    ⟨(610718283139/1000000000000 : ℚ), (1363028787/10000000000 : ℚ), (-48241635143/500000000000 : ℚ), 2⟩,
    ⟨(123346014969/200000000000 : ℚ), (506431517/5000000000 : ℚ), (-14998822259/200000000000 : ℚ), 2⟩,
    ⟨(311314538947/500000000000 : ℚ), (347141863/5000000000 : ℚ), (-1381338893/25000000000 : ℚ), 2⟩,
    ⟨(62840108107/100000000000 : ℚ), (202076999/5000000000 : ℚ), (-37106479091/1000000000000 : ℚ), 2⟩,
    ⟨(634032179113/1000000000000 : ℚ), (8733203/625000000 : ℚ), (-127603107/6250000000 : ℚ), 2⟩,
    ⟨(639508806213/1000000000000 : ℚ), (-101387721/10000000000 : ℚ), (-5063442099/1000000000000 : ℚ), 2⟩,
    ⟨(644817768697/1000000000000 : ℚ), (-80328209/2500000000 : ℚ), (9058765799/1000000000000 : ℚ), 2⟩,
    ⟨(649946276809/1000000000000 : ℚ), (-521899681/10000000000 : ℚ), (688872489/31250000000 : ℚ), 2⟩,
    ⟨(163720493881/250000000000 : ℚ), (-704782459/10000000000 : ℚ), (33975056217/1000000000000 : ℚ), 2⟩,
    ⟨(659612974311/1000000000000 : ℚ), (-108925247/1250000000 : ℚ), (44925759139/1000000000000 : ℚ), 2⟩,
    ⟨(664127875779/1000000000000 : ℚ), (-255757367/2500000000 : ℚ), (54961272363/1000000000000 : ℚ), 2⟩,
    ⟨(2610999231/3906250000 : ℚ), (-1160786939/10000000000 : ℚ), (64139454199/1000000000000 : ℚ), 2⟩,
    ⟨(672466426389/1000000000000 : ℚ), (-642832273/5000000000 : ℚ), (7251159513/100000000000 : ℚ), 2⟩,
    ⟨(21133437101/31250000000 : ℚ), (-699267751/5000000000 : ℚ), (80123122507/1000000000000 : ℚ), 2⟩,
    ⟨(679817322553/1000000000000 : ℚ), (-1500168847/10000000000 : ℚ), (87014205919/1000000000000 : ℚ), 2⟩,
    ⟨(42693742907/62500000000 : ℚ), (-318248083/2000000000 : ℚ), (46610139937/500000000000 : ℚ), 2⟩,
    ⟨(686109771123/1000000000000 : ℚ), (-836171119/5000000000 : ℚ), (9877249339/100000000000 : ℚ), 2⟩,
    ⟨(2690780177/3906250000 : ℚ), (-1743990609/10000000000 : ℚ), (5184904871/50000000000 : ℚ), 2⟩,
    ⟨(691283172379/1000000000000 : ℚ), (-72265319/400000000 : ℚ), (108020777469/1000000000000 : ℚ), 2⟩,
    ⟨(693434225847/1000000000000 : ℚ), (-116290863/625000000 : ℚ), (111760938261/1000000000000 : ℚ), 2⟩,
    ⟨(695287703639/1000000000000 : ℚ), (-953189783/5000000000 : ℚ), (28733986201/250000000000 : ℚ), 2⟩,
    ⟨(139367828113/200000000000 : ℚ), (-972041429/5000000000 : ℚ), (29390081599/250000000000 : ℚ), 2⟩,
    ⟨(349042399539/500000000000 : ℚ), (-493496469/2500000000 : ℚ), (23929188959/200000000000 : ℚ), 2⟩,
    ⟨(174755419569/250000000000 : ℚ), (-1996263169/10000000000 : ℚ), (60601065457/500000000000 : ℚ), 2⟩,
    ⟨(699647521137/1000000000000 : ℚ), (-502760951/2500000000 : ℚ), (24447158289/200000000000 : ℚ), 2⟩,
    ⟨(13999216399/20000000000 : ℚ), (-2018412957/10000000000 : ℚ), (7671967987/62500000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2019333111/10000000000 : ℚ), (12281589673/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (42149876539/250000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control160.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control160.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate160

-- Control162
namespace DiagonalRamsey.JointInheritedCertificate162
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10305803401/250000000000 : ℚ), (126246229611/500000000 : ℚ), (-2618714870907/250000000000 : ℚ), 9⟩,
    ⟨(41884825813/1000000000000 : ℚ), (58194114103/2500000000 : ℚ), (-62354717107/62500000000 : ℚ), 6⟩,
    ⟨(43107325769/1000000000000 : ℚ), (10602610569/2000000000 : ℚ), (-118612882189/500000000000 : ℚ), 4⟩,
    ⟨(44704598937/1000000000000 : ℚ), (2281560899/5000000000 : ℚ), (-25262701881/1000000000000 : ℚ), 4⟩,
    ⟨(9286694991/200000000000 : ℚ), (-15035104423/10000000000 : ℚ), (15956948393/250000000000 : ℚ), 3⟩,
    ⟨(24015374061/500000000000 : ℚ), (-3088056991/1250000000 : ℚ), (109436023067/1000000000000 : ℚ), 3⟩,
    ⟨(49253248079/1000000000000 : ℚ), (-29773554747/10000000000 : ℚ), (134078868717/1000000000000 : ℚ), 3⟩,
    ⟨(49914860287/1000000000000 : ℚ), (-32023826907/10000000000 : ℚ), (145235097957/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-32294259401/10000000000 : ℚ), (146586106371/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (91443522833/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control162.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control162.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate162

-- Control163
namespace DiagonalRamsey.JointInheritedCertificate163
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(82539562913/1000000000000 : ℚ), (2090110264157/2000000000 : ℚ), (-86451711629003/1000000000000 : ℚ), 11⟩,
    ⟨(82874250611/1000000000000 : ℚ), (55344956283/500000000 : ℚ), (-9271923842111/1000000000000 : ℚ), 8⟩,
    ⟨(16706152829/200000000000 : ℚ), (72743289633/2000000000 : ℚ), (-1548209038533/500000000000 : ℚ), 6⟩,
    ⟨(84483874069/1000000000000 : ℚ), (160770173973/10000000000 : ℚ), (-174201544021/125000000000 : ℚ), 5⟩,
    ⟨(85696952903/1000000000000 : ℚ), (15629609659/2000000000 : ℚ), (-172843799813/250000000000 : ℚ), 5⟩,
    ⟨(21780845677/250000000000 : ℚ), (29437031/8000000 : ℚ), (-33441843269/100000000000 : ℚ), 4⟩,
    ⟨(44354173293/500000000000 : ℚ), (3316505211/2500000000 : ℚ), (-12773376851/100000000000 : ℚ), 4⟩,
    ⟨(2824716727/31250000000 : ℚ), (-679070473/5000000000 : ℚ), (97730193/31250000000 : ℚ), 4⟩,
    ⟨(92106487803/1000000000000 : ℚ), (-5523232663/5000000000 : ℚ), (45739435679/500000000000 : ℚ), 3⟩,
    ⟨(46894538241/500000000000 : ℚ), (-8884600671/5000000000 : ℚ), (153936259409/1000000000000 : ℚ), 3⟩,
    ⟨(2384351009/25000000000 : ℚ), (-11290709571/5000000000 : ℚ), (99717797901/500000000000 : ℚ), 3⟩,
    ⟨(19360094033/200000000000 : ℚ), (-3259819293/1250000000 : ℚ), (116515437253/500000000000 : ℚ), 3⟩,
    ⟨(98013548999/1000000000000 : ℚ), (-5721565341/2000000000 : ℚ), (257664222659/1000000000000 : ℚ), 3⟩,
    ⟨(98966658923/1000000000000 : ℚ), (-30374452173/10000000000 : ℚ), (275062367953/1000000000000 : ℚ), 3⟩,
    ⟨(99623172457/1000000000000 : ℚ), (-7874595357/2500000000 : ℚ), (143111016809/500000000000 : ℚ), 3⟩,
    ⟨(49978930077/500000000000 : ℚ), (-6409142403/2000000000 : ℚ), (291683828031/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32113477497/10000000000 : ℚ), (58472267997/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (285328453293/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control163.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control163.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate163
