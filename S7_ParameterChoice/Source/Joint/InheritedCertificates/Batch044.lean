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

-- Control380
namespace DiagonalRamsey.JointInheritedCertificate380
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(261071799651/1000000000000 : ℚ), (11827010246037/10000000000 : ℚ), (-309463462327259/1000000000000 : ℚ), 12⟩,
    ⟨(261884744903/1000000000000 : ℚ), (257969970069/2000000000 : ℚ), (-34210291459249/1000000000000 : ℚ), 8⟩,
    ⟨(131751403151/500000000000 : ℚ), (112686618983/2500000000 : ℚ), (-761869139207/62500000000 : ℚ), 7⟩,
    ⟨(265910401031/1000000000000 : ℚ), (44263707697/2000000000 : ℚ), (-6122896996133/1000000000000 : ℚ), 6⟩,
    ⟨(67271085659/250000000000 : ℚ), (25576697449/2000000000 : ℚ), (-1812997151561/500000000000 : ℚ), 5⟩,
    ⟨(10919762573/40000000000 : ℚ), (8119853181/1000000000 : ℚ), (-2361860098423/1000000000000 : ℚ), 5⟩,
    ⟨(13880095667/50000000000 : ℚ), (54756168441/10000000000 : ℚ), (-204322457613/125000000000 : ℚ), 4⟩,
    ⟨(141431756789/500000000000 : ℚ), (38450868557/10000000000 : ℚ), (-589028158409/500000000000 : ℚ), 4⟩,
    ⟨(288728192951/1000000000000 : ℚ), (27758528143/10000000000 : ℚ), (-872730988969/1000000000000 : ℚ), 4⟩,
    ⟨(29513947139/100000000000 : ℚ), (2551457837/1250000000 : ℚ), (-658421645011/1000000000000 : ℚ), 4⟩,
    ⟨(302035604781/1000000000000 : ℚ), (7587165837/5000000000 : ℚ), (-62769741699/125000000000 : ℚ), 3⟩,
    ⟨(309350179587/1000000000000 : ℚ), (5663869987/5000000000 : ℚ), (-384651741083/1000000000000 : ℚ), 3⟩,
    ⟨(317012752457/1000000000000 : ℚ), (1686348867/2000000000 : ℚ), (-294012370971/1000000000000 : ℚ), 3⟩,
    ⟨(324949528623/1000000000000 : ℚ), (1551326493/2500000000 : ℚ), (-8903581473/40000000000 : ℚ), 3⟩,
    ⟨(333084072593/1000000000000 : ℚ), (4462659803/10000000000 : ℚ), (-82641895373/500000000000 : ℚ), 3⟩,
    ⟨(341338044261/1000000000000 : ℚ), (769351529/2500000000 : ℚ), (-14824199273/125000000000 : ℚ), 3⟩,
    ⟨(349631953369/1000000000000 : ℚ), (490350927/2500000000 : ℚ), (-80053567559/1000000000000 : ℚ), 3⟩,
    ⟨(178942962519/500000000000 : ℚ), (262972637/2500000000 : ℚ), (-23945291661/500000000000 : ℚ), 3⟩,
    ⟨(22876279313/62500000000 : ℚ), (151683809/5000000000 : ℚ), (-4161244353/200000000000 : ℚ), 2⟩,
    ⟨(186978622587/500000000000 : ℚ), (-158830403/5000000000 : ℚ), (2164839751/1000000000000 : ℚ), 2⟩,
    ⟨(381619818043/1000000000000 : ℚ), (-167236049/2000000000 : ℚ), (21749371261/1000000000000 : ℚ), 2⟩,
    ⟨(7778687857/20000000000 : ℚ), (-50841457/400000000 : ℚ), (7700030889/200000000000 : ℚ), 2⟩,
    ⟨(2473940789/6250000000 : ℚ), (-409143691/2500000000 : ℚ), (52840977451/1000000000000 : ℚ), 2⟩,
    ⟨(10056045117/25000000000 : ℚ), (-1943793577/10000000000 : ℚ), (65098572749/1000000000000 : ℚ), 2⟩,
    ⟨(102026621013/250000000000 : ℚ), (-2201167281/10000000000 : ℚ), (75525662961/1000000000000 : ℚ), 2⟩,
    ⟨(41336808429/100000000000 : ℚ), (-96609661/400000000 : ℚ), (84317835397/1000000000000 : ℚ), 2⟩,
    ⟨(208987966653/500000000000 : ℚ), (-647766957/2500000000 : ℚ), (91626047341/1000000000000 : ℚ), 2⟩,
    ⟨(84377130999/200000000000 : ℚ), (-2732523237/10000000000 : ℚ), (3902638991/40000000000 : ℚ), 2⟩,
    ⟨(2125297983/5000000000 : ℚ), (-2842545983/10000000000 : ℚ), (20445005417/200000000000 : ℚ), 2⟩,
    ⟨(13358349729/31250000000 : ℚ), (-730827083/2500000000 : ℚ), (845340681/8000000000 : ℚ), 2⟩,
    ⟨(429085252727/1000000000000 : ℚ), (-372042647/1250000000 : ℚ), (13492355313/125000000000 : ℚ), 2⟩,
    ⟨(21494909899/50000000000 : ℚ), (-1501310111/5000000000 : ℚ), (109067504161/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1502947051/5000000000 : ℚ), (109208264347/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (347941822623/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control380.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control380.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate380

-- Control381
namespace DiagonalRamsey.JointInheritedCertificate381
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133997645791/500000000000 : ℚ), (745237076187/625000000 : ℚ), (-16013222492627/50000000000 : ℚ), 12⟩,
    ⟨(53764608427/200000000000 : ℚ), (130054420889/1000000000 : ℚ), (-17702283587819/500000000000 : ℚ), 8⟩,
    ⟨(5409411431/20000000000 : ℚ), (454554304353/10000000000 : ℚ), (-6307825328661/500000000000 : ℚ), 7⟩,
    ⟨(136461006609/500000000000 : ℚ), (22322974647/1000000000 : ℚ), (-6336910090167/1000000000000 : ℚ), 6⟩,
    ⟨(17259609901/62500000000 : ℚ), (16126868693/1250000000 : ℚ), (-3752882850233/1000000000000 : ℚ), 5⟩,
    ⟨(35016835459/125000000000 : ℚ), (81936072669/10000000000 : ℚ), (-305581814991/125000000000 : ℚ), 5⟩,
    ⟨(142413225249/500000000000 : ℚ), (27633966737/5000000000 : ℚ), (-105751369383/62500000000 : ℚ), 4⟩,
    ⟨(58036774923/200000000000 : ℚ), (38821752963/10000000000 : ℚ), (-1219601082573/1000000000000 : ℚ), 4⟩,
    ⟨(296155361101/1000000000000 : ℚ), (5607201249/2000000000 : ℚ), (-903660013587/1000000000000 : ℚ), 4⟩,
    ⟨(75670850319/250000000000 : ℚ), (2062435773/1000000000 : ℚ), (-340958007287/500000000000 : ℚ), 4⟩,
    ⟨(61941025309/200000000000 : ℚ), (958782883/625000000 : ℚ), (-260123873707/500000000000 : ℚ), 3⟩,
    ⟨(63430582771/200000000000 : ℚ), (1145965501/1000000000 : ℚ), (-199346791261/500000000000 : ℚ), 3⟩,
    ⟨(162477518471/500000000000 : ℚ), (426892701/500000000 : ℚ), (-304947428173/1000000000000 : ℚ), 3⟩,
    ⟨(333036357097/1000000000000 : ℚ), (6291664443/10000000000 : ℚ), (-28886442427/125000000000 : ℚ), 3⟩,
    ⟨(341319046789/1000000000000 : ℚ), (1133425059/2500000000 : ℚ), (-171847980653/1000000000000 : ℚ), 3⟩,
    ⟨(87430834797/250000000000 : ℚ), (156822089/500000000 : ℚ), (-123592440769/1000000000000 : ℚ), 3⟩,
    ⟨(89542074091/250000000000 : ℚ), (502738347/2500000000 : ℚ), (-20943220419/250000000000 : ℚ), 3⟩,
    ⟨(183286294381/500000000000 : ℚ), (1093896427/10000000000 : ℚ), (-50553635201/1000000000000 : ℚ), 3⟩,
    ⟨(187427639227/500000000000 : ℚ), (3393451/100000000 : ℚ), (-22590273409/1000000000000 : ℚ), 2⟩,
    ⟨(382936598609/1000000000000 : ℚ), (-286517573/10000000000 : ℚ), (1116934521/1000000000000 : ℚ), 2⟩,
    ⟨(390738721697/1000000000000 : ℚ), (-202230611/2500000000 : ℚ), (21320856727/1000000000000 : ℚ), 2⟩,
    ⟨(199093254503/500000000000 : ℚ), (-623452421/5000000000 : ℚ), (38594304303/1000000000000 : ℚ), 2⟩,
    ⟨(16208329371/40000000000 : ℚ), (-807479067/5000000000 : ℚ), (13344146121/250000000000 : ℚ), 2⟩,
    ⟨(8234725489/20000000000 : ℚ), (-19241969/100000000 : ℚ), (16501635029/250000000000 : ℚ), 2⟩,
    ⟨(52213470117/125000000000 : ℚ), (-218318733/1000000000 : ℚ), (2398324617/31250000000 : ℚ), 2⟩,
    ⟨(211532592527/500000000000 : ℚ), (-479709521/2000000000 : ℚ), (85799169063/1000000000000 : ℚ), 2⟩,
    ⟨(10693923797/25000000000 : ℚ), (-2575386419/10000000000 : ℚ), (23330420371/250000000000 : ℚ), 2⟩,
    ⟨(86347575427/200000000000 : ℚ), (-54352511/200000000 : ℚ), (49717072187/500000000000 : ℚ), 2⟩,
    ⟨(434969622333/1000000000000 : ℚ), (-282823769/1000000000 : ℚ), (104227450037/1000000000000 : ℚ), 2⟩,
    ⟨(437421064001/1000000000000 : ℚ), (-1454710467/5000000000 : ℚ), (53884289389/500000000000 : ℚ), 2⟩,
    ⟨(54883574177/125000000000 : ℚ), (-1481362287/5000000000 : ℚ), (1376307121/12500000000 : ℚ), 2⟩,
    ⟨(439896343969/1000000000000 : ℚ), (-2989136129/10000000000 : ℚ), (13908163689/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2992426439/10000000000 : ℚ), (27852516531/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (171460592539/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control381.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control381.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate381

-- Control382
namespace DiagonalRamsey.JointInheritedCertificate382
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137505745569/500000000000 : ℚ), (481105128891/400000000 : ℚ), (-165752587488661/500000000000 : ℚ), 12⟩,
    ⟨(137926800423/500000000000 : ℚ), (656009756143/5000000000 : ℚ), (-1465902866813/40000000000 : ℚ), 8⟩,
    ⟨(277529710287/1000000000000 : ℚ), (458641395911/10000000000 : ℚ), (-13058843400379/1000000000000 : ℚ), 7⟩,
    ⟨(280023677609/1000000000000 : ℚ), (225282026159/10000000000 : ℚ), (-6559754274591/1000000000000 : ℚ), 6⟩,
    ⟨(56662296909/200000000000 : ℚ), (130230644283/10000000000 : ℚ), (-3885057276141/1000000000000 : ℚ), 5⟩,
    ⟨(57472293543/200000000000 : ℚ), (41364552533/5000000000 : ℚ), (-2530941284169/1000000000000 : ℚ), 5⟩,
    ⟨(292134623569/1000000000000 : ℚ), (44654953/8000000 : ℚ), (-350385209593/200000000000 : ℚ), 4⟩,
    ⟨(59516996801/200000000000 : ℚ), (39221309969/10000000000 : ℚ), (-1262962352831/1000000000000 : ℚ), 4⟩,
    ⟨(151830029537/500000000000 : ℚ), (7083822639/2500000000 : ℚ), (-467987689233/500000000000 : ℚ), 4⟩,
    ⟨(155150671241/500000000000 : ℚ), (4170814833/2000000000 : ℚ), (-706496273283/1000000000000 : ℚ), 4⟩,
    ⟨(158722437519/500000000000 : ℚ), (15520286513/10000000000 : ℚ), (-269602928207/500000000000 : ℚ), 3⟩,
    ⟨(16251093031/50000000000 : ℚ), (11602569287/10000000000 : ℚ), (-82688311401/200000000000 : ℚ), 3⟩,
    ⟨(166479664357/500000000000 : ℚ), (1081626623/1250000000 : ℚ), (-79116241191/250000000000 : ℚ), 3⟩,
    ⟨(341180837163/1000000000000 : ℚ), (6385563521/10000000000 : ℚ), (-30009996423/125000000000 : ℚ), 3⟩,
    ⟨(349607208347/1000000000000 : ℚ), (4611096567/10000000000 : ℚ), (-178822865953/1000000000000 : ℚ), 3⟩,
    ⟨(71631458341/200000000000 : ℚ), (3200891687/10000000000 : ℚ), (-128941541453/1000000000000 : ℚ), 3⟩,
    ⟨(18337437263/50000000000 : ℚ), (516290357/2500000000 : ℚ), (-4389687239/50000000000 : ℚ), 3⟩,
    ⟨(375298828617/1000000000000 : ℚ), (56997453/500000000 : ℚ), (-5347868877/100000000000 : ℚ), 3⟩,
    ⟨(383725199801/1000000000000 : ℚ), (94717839/2500000000 : ℚ), (-615100737/25000000000 : ℚ), 2⟩,
    ⟨(391946708251/1000000000000 : ℚ), (-252232967/10000000000 : ℚ), (-67094553/500000000000 : ℚ), 2⟩,
    ⟨(79976835269/200000000000 : ℚ), (-778857673/10000000000 : ℚ), (1035545039/50000000000 : ℚ), 2⟩,
    ⟨(203730580963/500000000000 : ℚ), (-610120643/5000000000 : ℚ), (38524937661/1000000000000 : ℚ), 2⟩,
    ⟨(414604694483/1000000000000 : ℚ), (-79551787/500000000 : ℚ), (53763422021/1000000000000 : ℚ), 2⟩,
    ⟨(42124597789/100000000000 : ℚ), (-951240123/5000000000 : ℚ), (2671113703/40000000000 : ℚ), 2⟩,
    ⟨(427321052959/1000000000000 : ℚ), (-2163239403/10000000000 : ℚ), (19460084633/250000000000 : ℚ), 2⟩,
    ⟨(108192853349/250000000000 : ℚ), (-2380009193/10000000000 : ℚ), (10895218693/125000000000 : ℚ), 2⟩,
    ⟨(437544569249/1000000000000 : ℚ), (-1278979837/5000000000 : ℚ), (2372624727/25000000000 : ℚ), 2⟩,
    ⟨(22079727621/50000000000 : ℚ), (-168816291/625000000 : ℚ), (25298759833/250000000000 : ℚ), 2⟩,
    ⟨(88976471871/200000000000 : ℚ), (-2812321859/10000000000 : ℚ), (106126447689/1000000000000 : ℚ), 2⟩,
    ⟨(447376326677/1000000000000 : ℚ), (-578793829/2000000000 : ℚ), (5488446241/50000000000 : ℚ), 2⟩,
    ⟨(224526218059/500000000000 : ℚ), (-2947571597/10000000000 : ℚ), (1402143123/12500000000 : ℚ), 2⟩,
    ⟨(449894545827/1000000000000 : ℚ), (-2974129451/10000000000 : ℚ), (22673030653/200000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2977437903/10000000000 : ℚ), (56757008073/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (337843233711/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control382.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control382.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate382

-- Control383
namespace DiagonalRamsey.JointInheritedCertificate383
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(35257009141/125000000000 : ℚ), (2426229045889/2000000000 : ℚ), (-42864641161719/125000000000 : ℚ), 12⟩,
    ⟨(141456202703/500000000000 : ℚ), (661729481419/5000000000 : ℚ), (-37909467686861/1000000000000 : ℚ), 8⟩,
    ⟨(142308411507/500000000000 : ℚ), (46271521417/1000000000 : ℚ), (-1688592683407/125000000000 : ℚ), 7⟩,
    ⟨(287152911479/1000000000000 : ℚ), (56831812227/2500000000 : ℚ), (-678594698679/100000000000 : ℚ), 6⟩,
    ⟨(290496246883/1000000000000 : ℚ), (32860458963/2500000000 : ℚ), (-2009599772211/500000000000 : ℚ), 5⟩,
    ⟨(294614631077/1000000000000 : ℚ), (1670378453/200000000 : ℚ), (-2618497746751/1000000000000 : ℚ), 5⟩,
    ⟨(299468401771/1000000000000 : ℚ), (56366971219/10000000000 : ℚ), (-1812699133539/1000000000000 : ℚ), 4⟩,
    ⟨(610021629/2000000000 : ℚ), (39618848037/10000000000 : ℚ), (-261388387553/200000000000 : ℚ), 4⟩,
    ⟨(311188492799/1000000000000 : ℚ), (5726571927/2000000000 : ℚ), (-968742364087/1000000000000 : ℚ), 4⟩,
    ⟨(1271767769/4000000000 : ℚ), (10541142981/5000000000 : ℚ), (-365706039029/500000000000 : ℚ), 4⟩,
    ⟨(162603061721/500000000000 : ℚ), (15698693861/10000000000 : ℚ), (-558415793903/1000000000000 : ℚ), 3⟩,
    ⟨(332911078339/1000000000000 : ℚ), (5872121587/5000000000 : ℚ), (-214189653123/500000000000 : ℚ), 3⟩,
    ⟨(340982604013/1000000000000 : ℚ), (8767017663/10000000000 : ℚ), (-328125285093/1000000000000 : ℚ), 3⟩,
    ⟨(349342967261/1000000000000 : ℚ), (6478375873/10000000000 : ℚ), (-124587500309/500000000000 : ℚ), 3⟩,
    ⟨(178955826607/500000000000 : ℚ), (2343730257/5000000000 : ℚ), (-185876117591/1000000000000 : ℚ), 3⟩,
    ⟨(366606140741/1000000000000 : ℚ), (204022123/625000000 : ℚ), (-67173382703/500000000000 : ℚ), 3⟩,
    ⟨(46917837147/125000000000 : ℚ), (211841953/1000000000 : ℚ), (-22963269649/250000000000 : ℚ), 3⟩,
    ⟨(384037184703/1000000000000 : ℚ), (592542067/5000000000 : ℚ), (-7053516807/125000000000 : ℚ), 3⟩,
    ⟨(6134466729/15625000000 : ℚ), (417508351/10000000000 : ℚ), (-26630916467/1000000000000 : ℚ), 2⟩,
    ⟨(25060389619/62500000000 : ℚ), (-218812551/10000000000 : ℚ), (-694712903/500000000000 : ℚ), 2⟩,
    ⟨(204518879789/500000000000 : ℚ), (-749634667/10000000000 : ℚ), (628251557/31250000000 : ℚ), 2⟩,
    ⟨(16669708579/40000000000 : ℚ), (-37324979/312500000 : ℚ), (4808055259/125000000000 : ℚ), 2⟩,
    ⟨(424006895667/1000000000000 : ℚ), (-156791679/1000000000 : ℚ), (27081860583/500000000000 : ℚ), 2⟩,
    ⟨(430760345117/1000000000000 : ℚ), (-940775377/5000000000 : ℚ), (16891560979/250000000000 : ℚ), 2⟩,
    ⟨(436938023417/1000000000000 : ℚ), (-42881283/200000000 : ℚ), (39477125623/500000000000 : ℚ), 2⟩,
    ⟨(88496087229/200000000000 : ℚ), (-147639421/625000000 : ℚ), (44273263157/500000000000 : ℚ), 2⟩,
    ⟨(11183355171/25000000000 : ℚ), (-635320483/2500000000 : ℚ), (4825610791/50000000000 : ℚ), 2⟩,
    ⟨(225726295517/500000000000 : ℚ), (-1342617797/5000000000 : ℚ), (12872644833/125000000000 : ℚ), 2⟩,
    ⟨(227397963219/500000000000 : ℚ), (-279713849/1000000000 : ℚ), (21610326229/200000000000 : ℚ), 2⟩,
    ⟨(457332014903/1000000000000 : ℚ), (-2879244271/10000000000 : ℚ), (27949032701/250000000000 : ℚ), 2⟩,
    ⟨(459036432511/1000000000000 : ℚ), (-733285457/2500000000 : ℚ), (114265617507/1000000000000 : ℚ), 2⟩,
    ⟨(459892764789/1000000000000 : ℚ), (-2959844123/10000000000 : ℚ), (115492491681/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-592634097/2000000000 : ℚ), (57822743227/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (10398213309/31250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control383.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control383.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate383

-- Control384
namespace DiagonalRamsey.JointInheritedCertificate384
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144597635013/500000000000 : ℚ), (6120858616721/5000000000 : ℚ), (-354795064832639/1000000000000 : ℚ), 12⟩,
    ⟨(290065369551/1000000000000 : ℚ), (1335679669023/10000000000 : ℚ), (-3922299627157/100000000000 : ℚ), 8⟩,
    ⟨(291797189067/1000000000000 : ℚ), (467068400409/10000000000 : ℚ), (-559084987003/40000000000 : ℚ), 7⟩,
    ⟨(147187025103/500000000000 : ℚ), (5737839751/250000000 : ℚ), (-280859731649/40000000000 : ℚ), 6⟩,
    ⟨(297771136387/1000000000000 : ℚ), (132737281207/10000000000 : ℚ), (-831787717313/200000000000 : ℚ), 5⟩,
    ⟨(301955731811/1000000000000 : ℚ), (3374569557/400000000 : ℚ), (-2709750386963/1000000000000 : ℚ), 5⟩,
    ⟨(153443768269/500000000000 : ℚ), (14238560407/2500000000 : ℚ), (-1876076425289/1000000000000 : ℚ), 4⟩,
    ⟨(312519054593/1000000000000 : ℚ), (40045049249/10000000000 : ℚ), (-676420903889/500000000000 : ℚ), 4⟩,
    ⟨(318796051377/1000000000000 : ℚ), (14476109781/5000000000 : ℚ), (-501486887977/500000000000 : ℚ), 4⟩,
    ⟨(325658075981/1000000000000 : ℚ), (21327498663/10000000000 : ℚ), (-378736951457/500000000000 : ℚ), 4⟩,
    ⟨(83259760839/250000000000 : ℚ), (15890642027/10000000000 : ℚ), (-72317643103/125000000000 : ℚ), 3⟩,
    ⟨(10652120961/31250000000 : ℚ), (5948443491/5000000000 : ℚ), (-111015150117/250000000000 : ℚ), 3⟩,
    ⟨(349069162281/1000000000000 : ℚ), (555627403/625000000 : ℚ), (-340398087141/1000000000000 : ℚ), 3⟩,
    ⟨(178781967511/500000000000 : ℚ), (1644673033/2500000000 : ℚ), (-258780698177/1000000000000 : ℚ), 3⟩,
    ⟨(366270379671/1000000000000 : ℚ), (149066889/312500000 : ℚ), (-96679876067/500000000000 : ℚ), 3⟩,
    ⟨(187552324203/500000000000 : ℚ), (3333187681/10000000000 : ℚ), (-140118292339/1000000000000 : ℚ), 3⟩,
    ⟨(383981662389/1000000000000 : ℚ), (2176290589/10000000000 : ℚ), (-48113536469/500000000000 : ℚ), 3⟩,
    ⟨(98203982781/250000000000 : ℚ), (617109133/5000000000 : ℚ), (-14912575969/250000000000 : ℚ), 3⟩,
    ⟨(100380593943/250000000000 : ℚ), (229822209/5000000000 : ℚ), (-2889627477/100000000000 : ℚ), 2⟩,
    ⟨(205008574257/500000000000 : ℚ), (-182302191/10000000000 : ℚ), (-2855042021/1000000000000 : ℚ), 2⟩,
    ⟨(418218440043/1000000000000 : ℚ), (-358828793/5000000000 : ℚ), (9654959127/500000000000 : ℚ), 2⟩,
    ⟨(426047267439/1000000000000 : ℚ), (-1166079517/10000000000 : ℚ), (597432497/15625000000 : ℚ), 2⟩,
    ⟨(216714117407/500000000000 : ℚ), (-1542547201/10000000000 : ℚ), (27205698401/500000000000 : ℚ), 2⟩,
    ⟨(440290259417/1000000000000 : ℚ), (-232319653/1250000000 : ℚ), (34107431063/500000000000 : ℚ), 2⟩,
    ⟨(223283628101/500000000000 : ℚ), (-1061488751/5000000000 : ℚ), (19984718101/250000000000 : ℚ), 2⟩,
    ⟨(28262423391/62500000000 : ℚ), (-468532973/2000000000 : ℚ), (89810518877/1000000000000 : ℚ), 2⟩,
    ⟨(457130578983/1000000000000 : ℚ), (-252291631/1000000000 : ℚ), (98005474457/1000000000000 : ℚ), 2⟩,
    ⟨(57664396801/125000000000 : ℚ), (-1333900529/5000000000 : ℚ), (10465866731/100000000000 : ℚ), 2⟩,
    ⟨(116178065147/250000000000 : ℚ), (-347550689/1250000000 : ℚ), (21974457109/200000000000 : ℚ), 2⟩,
    ⟨(467289121727/1000000000000 : ℚ), (-715753267/2500000000 : ℚ), (113721752829/1000000000000 : ℚ), 2⟩,
    ⟨(117255235311/250000000000 : ℚ), (-2917233829/10000000000 : ℚ), (116260110317/1000000000000 : ℚ), 2⟩,
    ⟨(469891040769/1000000000000 : ℚ), (-2944094391/10000000000 : ℚ), (117521093657/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2947440383/10000000000 : ℚ), (117678337071/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (327584052677/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control384.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control384.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate384

-- Control385
namespace DiagonalRamsey.JointInheritedCertificate385
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74090380911/250000000000 : ℚ), (2470359895351/2000000000 : ℚ), (-366849838019939/1000000000000 : ℚ), 12⟩,
    ⟨(29724526021/100000000000 : ℚ), (673922710287/5000000000 : ℚ), (-20278013967417/500000000000 : ℚ), 8⟩,
    ⟨(11960168899/40000000000 : ℚ), (1841411811/39062500 : ℚ), (-2890485009757/200000000000 : ℚ), 7⟩,
    ⟨(301621470671/1000000000000 : ℚ), (46337869749/2000000000 : ℚ), (-3630244943923/500000000000 : ℚ), 6⟩,
    ⟨(305071799267/1000000000000 : ℚ), (134026081417/10000000000 : ℚ), (-4300701971269/1000000000000 : ℚ), 5⟩,
    ⟨(309321979713/1000000000000 : ℚ), (85204897791/10000000000 : ℚ), (-10946509183/3906250000 : ℚ), 5⟩,
    ⟨(1227855783/3906250000 : ℚ), (14384498233/2500000000 : ℚ), (-485085793139/250000000000 : ℚ), 4⟩,
    ⟨(160025430547/500000000000 : ℚ), (5058555139/1250000000 : ℚ), (-699686155179/500000000000 : ℚ), 4⟩,
    ⟨(65285247407/200000000000 : ℚ), (7317310167/2500000000 : ℚ), (-129707961629/125000000000 : ℚ), 4⟩,
    ⟨(333395809917/1000000000000 : ℚ), (21570699323/10000000000 : ℚ), (-391937194111/500000000000 : ℚ), 4⟩,
    ⟨(170446229471/500000000000 : ℚ), (8040406823/5000000000 : ℚ), (-299459366677/500000000000 : ℚ), 3⟩,
    ⟨(87210996821/250000000000 : ℚ), (12047929231/10000000000 : ℚ), (-459930087207/1000000000000 : ℚ), 3⟩,
    ⟨(11161681793/31250000000 : ℚ), (1802318241/2000000000 : ℚ), (-176405298233/500000000000 : ℚ), 3⟩,
    ⟨(365801728401/1000000000000 : ℚ), (83470559/125000000 : ℚ), (-33561097509/125000000000 : ℚ), 3⟩,
    ⟨(374644628861/1000000000000 : ℚ), (2425770043/5000000000 : ℚ), (-200916667807/1000000000000 : ℚ), 3⟩,
    ⟨(383617356789/1000000000000 : ℚ), (3400809097/10000000000 : ℚ), (-36485046157/250000000000 : ℚ), 3⟩,
    ⟨(39263349991/100000000000 : ℚ), (1116502941/5000000000 : ℚ), (-50316630513/500000000000 : ℚ), 3⟩,
    ⟨(200803113919/500000000000 : ℚ), (64112223/500000000 : ℚ), (-62890189421/1000000000000 : ℚ), 3⟩,
    ⟨(205224564149/500000000000 : ℚ), (500713637/10000000000 : ℚ), (-31167783923/1000000000000 : ℚ), 2⟩,
    ⟨(419077039323/1000000000000 : ℚ), (-146822929/10000000000 : ℚ), (-2158781267/500000000000 : ℚ), 2⟩,
    ⟨(85481373883/200000000000 : ℚ), (-686680201/10000000000 : ℚ), (18526268929/1000000000000 : ℚ), 2⟩,
    ⟨(435358397757/1000000000000 : ℚ), (-1138731653/10000000000 : ℚ), (19011643289/500000000000 : ℚ), 2⟩,
    ⟨(221427523391/500000000000 : ℚ), (-303624997/2000000000 : ℚ), (54680115233/1000000000000 : ℚ), 2⟩,
    ⟨(28114038729/62500000000 : ℚ), (-1836489343/10000000000 : ℚ), (34444107013/500000000000 : ℚ), 2⟩,
    ⟨(91239999121/200000000000 : ℚ), (-1051398711/5000000000 : ℚ), (80951122011/1000000000000 : ℚ), 2⟩,
    ⟨(461919776251/1000000000000 : ℚ), (-2323988993/10000000000 : ℚ), (9110438981/100000000000 : ℚ), 2⟩,
    ⟨(233464438493/500000000000 : ℚ), (-2505426547/10000000000 : ℚ), (2488258463/25000000000 : ℚ), 2⟩,
    ⟨(58897382179/125000000000 : ℚ), (-2651230629/10000000000 : ℚ), (106369083997/1000000000000 : ℚ), 2⟩,
    ⟨(118657346507/250000000000 : ℚ), (-1382263627/5000000000 : ℚ), (22345360701/200000000000 : ℚ), 2⟩,
    ⟨(29827914639/62500000000 : ℚ), (-2847629551/10000000000 : ℚ), (57840952923/500000000000 : ℚ), 2⟩,
    ⟨(479005596489/1000000000000 : ℚ), (-725542207/2500000000 : ℚ), (118289556001/1000000000000 : ℚ), 2⟩,
    ⟨(95977866611/200000000000 : ℚ), (-585837063/2000000000 : ℚ), (4783394111/40000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1466275321/5000000000 : ℚ), (119746369837/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (40300468973/125000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control385.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control385.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate385

-- Control386
namespace DiagonalRamsey.JointInheritedCertificate386
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(310910395223/1000000000000 : ℚ), (12585276375079/10000000000 : ℚ), (-392119360687483/1000000000000 : ℚ), 12⟩,
    ⟨(311820364643/1000000000000 : ℚ), (1373650254663/10000000000 : ℚ), (-5418813348601/125000000000 : ℚ), 8⟩,
    ⟨(313631539981/1000000000000 : ℚ), (480593689939/10000000000 : ℚ), (-7724458985101/500000000000 : ℚ), 7⟩,
    ⟨(79081619657/250000000000 : ℚ), (118153094779/5000000000 : ℚ), (-1552328365287/200000000000 : ℚ), 6⟩,
    ⟨(79969806713/250000000000 : ℚ), (136761687783/10000000000 : ℚ), (-4598035097487/1000000000000 : ℚ), 5⟩,
    ⟨(20265973109/62500000000 : ℚ), (86989947787/10000000000 : ℚ), (-1498246809099/500000000000 : ℚ), 5⟩,
    ⟨(82353340183/250000000000 : ℚ), (58778064027/10000000000 : ℚ), (-2075234257737/1000000000000 : ℚ), 4⟩,
    ⟨(335302927467/1000000000000 : ℚ), (8273658621/2000000000 : ℚ), (-299417830229/200000000000 : ℚ), 4⟩,
    ⟨(341867550203/1000000000000 : ℚ), (29943370873/10000000000 : ℚ), (-1110565496183/1000000000000 : ℚ), 4⟩,
    ⟨(349044008033/1000000000000 : ℚ), (5522034621/2500000000 : ℚ), (-839405759991/1000000000000 : ℚ), 4⟩,
    ⟨(89190796937/250000000000 : ℚ), (16485655111/10000000000 : ℚ), (-320915709249/500000000000 : ℚ), 3⟩,
    ⟨(22809421839/62500000000 : ℚ), (12369651673/10000000000 : ℚ), (-3947199921/8000000000 : ℚ), 3⟩,
    ⟨(373527842369/1000000000000 : ℚ), (4635320263/5000000000 : ℚ), (-379041626357/1000000000000 : ℚ), 3⟩,
    ⟨(382411864489/1000000000000 : ℚ), (6888634807/10000000000 : ℚ), (-72264729849/250000000000 : ℚ), 3⟩,
    ⟨(391517257793/1000000000000 : ℚ), (502517933/1000000000 : ℚ), (-108493043549/500000000000 : ℚ), 3⟩,
    ⟨(200378166183/500000000000 : ℚ), (886277067/2500000000 : ℚ), (-158381556179/1000000000000 : ℚ), 3⟩,
    ⟨(410040110871/1000000000000 : ℚ), (2354062349/10000000000 : ℚ), (-11011621593/100000000000 : ℚ), 3⟩,
    ⟨(83855837089/200000000000 : ℚ), (346191757/2500000000 : ℚ), (-17484427661/250000000000 : ℚ), 3⟩,
    ⟨(428384578749/1000000000000 : ℚ), (147095817/2500000000 : ℚ), (-7238971211/200000000000 : ℚ), 2⟩,
    ⟨(109317150217/250000000000 : ℚ), (-3554961/500000000 : ℚ), (-478642759/62500000000 : ℚ), 2⟩,
    ⟨(445845693813/1000000000000 : ℚ), (-620586763/10000000000 : ℚ), (663970559/40000000000 : ℚ), 2⟩,
    ⟨(45403325549/100000000000 : ℚ), (-540205137/5000000000 : ℚ), (37284646467/1000000000000 : ℚ), 2⟩,
    ⟨(115438108801/250000000000 : ℚ), (-1466074831/10000000000 : ℚ), (5494122591/100000000000 : ℚ), 2⟩,
    ⟨(93785778607/200000000000 : ℚ), (-1789490873/10000000000 : ℚ), (69989224873/1000000000000 : ℚ), 2⟩,
    ⟨(475493515771/1000000000000 : ℚ), (-41197071/200000000 : ℚ), (20688703801/250000000000 : ℚ), 2⟩,
    ⟨(240691541253/500000000000 : ℚ), (-571069707/2500000000 : ℚ), (467456951/5000000000 : ℚ), 2⟩,
    ⟨(486540873493/1000000000000 : ℚ), (-98730737/400000000 : ℚ), (6399706897/62500000000 : ℚ), 2⟩,
    ⟨(245458608193/500000000000 : ℚ), (-2616052067/10000000000 : ℚ), (109617659967/1000000000000 : ℚ), 2⟩,
    ⟨(494469964609/1000000000000 : ℚ), (-682710021/2500000000 : ℚ), (115273059591/1000000000000 : ℚ), 2⟩,
    ⟨(62145612907/125000000000 : ℚ), (-2815008939/10000000000 : ℚ), (59723121767/500000000000 : ℚ), 2⟩,
    ⟨(249488039297/500000000000 : ℚ), (-2870235137/10000000000 : ℚ), (24439376313/200000000000 : ℚ), 2⟩,
    ⟨(99977209603/200000000000 : ℚ), (-1448793987/5000000000 : ℚ), (123562965239/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-580199003/2000000000 : ℚ), (61866648943/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (38988164973/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control386.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control386.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate386

-- Control388
namespace DiagonalRamsey.JointInheritedCertificate388
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236904201993/500000000000 : ℚ), (320861967093/200000000 : ℚ), (-380711363499489/500000000000 : ℚ), 12⟩,
    ⟨(474896921971/1000000000000 : ℚ), (877969381687/5000000000 : ℚ), (-21049716906777/250000000000 : ℚ), 9⟩,
    ⟨(477063474917/1000000000000 : ℚ), (308426891773/5000000000 : ℚ), (-15010626567679/500000000000 : ℚ), 7⟩,
    ⟨(60035899717/125000000000 : ℚ), (7620021447/250000000 : ℚ), (-3019028035131/200000000000 : ℚ), 6⟩,
    ⟨(242268522107/500000000000 : ℚ), (88694561797/5000000000 : ℚ), (-4476561817689/500000000000 : ℚ), 5⟩,
    ⟨(489772086007/1000000000000 : ℚ), (113531681219/10000000000 : ℚ), (-1461122109249/250000000000 : ℚ), 5⟩,
    ⟨(1239854767/2500000000 : ℚ), (77239325777/10000000000 : ℚ), (-162280950947/40000000000 : ℚ), 4⟩,
    ⟨(251493543923/500000000000 : ℚ), (10956103321/2000000000 : ℚ), (-117441095343/40000000000 : ℚ), 4⟩,
    ⟨(510839780201/1000000000000 : ℚ), (40001473451/10000000000 : ℚ), (-1093665422033/500000000000 : ℚ), 4⟩,
    ⟨(103884871629/200000000000 : ℚ), (931685239/312500000 : ℚ), (-41571303069/25000000000 : ℚ), 4⟩,
    ⟨(264329073749/500000000000 : ℚ), (11265924121/5000000000 : ℚ), (-1281456624917/1000000000000 : ℚ), 3⟩,
    ⟨(538452221823/1000000000000 : ℚ), (53664801/31250000 : ℚ), (-248917390009/250000000000 : ℚ), 3⟩,
    ⟨(137178064707/250000000000 : ℚ), (6566760693/5000000000 : ℚ), (-776212836249/1000000000000 : ℚ), 3⟩,
    ⟨(447471559/800000000 : ℚ), (626750871/625000000 : ℚ), (-604237607347/1000000000000 : ℚ), 3⟩,
    ⟨(570231445939/1000000000000 : ℚ), (1520012791/2000000000 : ℚ), (-29197958087/62500000000 : ℚ), 3⟩,
    ⟨(581283354509/1000000000000 : ℚ), (2837337623/5000000000 : ℚ), (-356353301317/1000000000000 : ℚ), 3⟩,
    ⟨(592388738539/1000000000000 : ℚ), (82584973/200000000 : ℚ), (-16605795333/62500000000 : ℚ), 3⟩,
    ⟨(603440647109/1000000000000 : ℚ), (1438009691/5000000000 : ℚ), (-190782828071/1000000000000 : ℚ), 2⟩,
    ⟨(307166322149/500000000000 : ℚ), (925489221/5000000000 : ℚ), (-2006030791/15625000000 : ℚ), 2⟩,
    ⟨(31247991711/50000000000 : ℚ), (251671249/2500000000 : ℚ), (-3804084441/50000000000 : ℚ), 2⟩,
    ⟨(25408794849/40000000000 : ℚ), (76871769/2500000000 : ℚ), (-8008660587/250000000000 : ℚ), 2⟩,
    ⟨(12900278911/20000000000 : ℚ), (-68431439/2500000000 : ℚ), (129089027/25000000000 : ℚ), 2⟩,
    ⟨(654247734903/1000000000000 : ℚ), (-757771247/10000000000 : ℚ), (36604290567/1000000000000 : ℚ), 2⟩,
    ⟨(662832312847/1000000000000 : ℚ), (-23215163/200000000 : ℚ), (15784900601/250000000000 : ℚ), 2⟩,
    ⟨(335342502601/500000000000 : ℚ), (-186902257/1250000000 : ℚ), (42719009061/500000000000 : ℚ), 2⟩,
    ⟨(84716273281/125000000000 : ℚ), (-1770924589/10000000000 : ℚ), (104025091943/1000000000000 : ℚ), 2⟩,
    ⟨(683900007041/1000000000000 : ℚ), (-1995492549/10000000000 : ℚ), (119313250013/1000000000000 : ℚ), 2⟩,
    ⟨(344567524417/500000000000 : ℚ), (-2174819397/10000000000 : ℚ), (131623923387/1000000000000 : ℚ), 2⟩,
    ⟨(43336555957/62500000000 : ℚ), (-578352893/2500000000 : ℚ), (2824080643/20000000000 : ℚ), 2⟩,
    ⟨(696608618131/1000000000000 : ℚ), (-1207312351/5000000000 : ℚ), (5929528951/40000000000 : ℚ), 2⟩,
    ⟨(698775171077/1000000000000 : ℚ), (-620209369/2500000000 : ℚ), (152857809599/1000000000000 : ℚ), 2⟩,
    ⟨(349931844531/500000000000 : ℚ), (-2513572467/10000000000 : ℚ), (155147027981/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2517647109/10000000000 : ℚ), (31086445019/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (39299676349/200000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control388.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control388.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate388
