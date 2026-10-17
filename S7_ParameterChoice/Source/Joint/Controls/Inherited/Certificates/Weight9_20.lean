import S7_ParameterChoice.Source.Joint.Controls.ControlPrecision
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeData
import S7_ParameterChoice.Source.Joint.Controls.FastControlDomain
import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointInheritedCertificate184
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264463640861/1000000000000 : ℚ), (12674216050811/10000000000 : ℚ), (-336001328385461/1000000000000 : ℚ), 11⟩,
    ⟨(265356510743/1000000000000 : ℚ), (1380942993537/10000000000 : ℚ), (-9287445280041/250000000000 : ℚ), 8⟩,
    ⟨(267133651683/1000000000000 : ℚ), (48197727003/1000000000 : ℚ), (-165519394087/12500000000 : ℚ), 7⟩,
    ⟨(134888974421/500000000000 : ℚ), (236339953849/10000000000 : ℚ), (-66544520097/10000000000 : ℚ), 6⟩,
    ⟨(4269749003/15625000000 : ℚ), (5455681479/400000000 : ℚ), (-788710035143/200000000000 : ℚ), 5⟩,
    ⟨(277558041771/1000000000000 : ℚ), (86508149443/10000000000 : ℚ), (-2571116532767/1000000000000 : ℚ), 4⟩,
    ⟨(17663681937/62500000000 : ℚ), (58290748451/10000000000 : ℚ), (-1781569489009/1000000000000 : ℚ), 4⟩,
    ⟨(288397804921/1000000000000 : ℚ), (20458257803/5000000000 : ℚ), (-321498822713/250000000000 : ℚ), 4⟩,
    ⟨(18427441853/62500000000 : ℚ), (461586303/156250000 : ℚ), (-954581222381/1000000000000 : ℚ), 3⟩,
    ⟨(301880672273/1000000000000 : ℚ), (5434731201/2500000000 : ℚ), (-721982679091/1000000000000 : ℚ), 3⟩,
    ⟨(61890959663/200000000000 : ℚ), (16186535659/10000000000 : ℚ), (-276200145117/500000000000 : ℚ), 3⟩,
    ⟨(158744252399/500000000000 : ℚ), (3028960169/2500000000 : ℚ), (-212445308731/500000000000 : ℚ), 3⟩,
    ⟨(325904422737/1000000000000 : ℚ), (4528286047/5000000000 : ℚ), (-326542520487/1000000000000 : ℚ), 3⟩,
    ⟨(334621502243/1000000000000 : ℚ), (1677174437/2500000000 : ℚ), (-31131180467/125000000000 : ℚ), 3⟩,
    ⟨(343555793073/1000000000000 : ℚ), (4874082421/10000000000 : ℚ), (-11679681901/62500000000 : ℚ), 2⟩,
    ⟨(112838801/320000000 : ℚ), (1709025331/5000000000 : ℚ), (-34054446871/250000000000 : ℚ), 2⟩,
    ⟨(361730577061/1000000000000 : ℚ), (2246798243/10000000000 : ℚ), (-4720112761/50000000000 : ℚ), 2⟩,
    ⟨(46349504639/125000000000 : ℚ), (1293612217/10000000000 : ℚ), (-29752147593/500000000000 : ℚ), 2⟩,
    ⟨(379730327943/1000000000000 : ℚ), (63773753/1250000000 : ℚ), (-30115380381/1000000000000 : ℚ), 2⟩,
    ⟨(48555925931/125000000000 : ℚ), (-138983833/10000000000 : ℚ), (-518862279/100000000000 : ℚ), 2⟩,
    ⟨(99215831347/250000000000 : ℚ), (-5315393/78125000 : ℚ), (16063960419/1000000000000 : ℚ), 2⟩,
    ⟨(404897031871/1000000000000 : ℚ), (-1133906863/10000000000 : ℚ), (34241610169/1000000000000 : ℚ), 2⟩,
    ⟨(51558894739/125000000000 : ℚ), (-757378251/5000000000 : ℚ), (4980371891/100000000000 : ℚ), 2⟩,
    ⟨(209756380269/500000000000 : ℚ), (-917268273/5000000000 : ℚ), (31552263167/500000000000 : ℚ), 2⟩,
    ⟨(85190805053/200000000000 : ℚ), (-1051097297/5000000000 : ℚ), (74418140677/1000000000000 : ℚ), 2⟩,
    ⟨(431732919193/1000000000000 : ℚ), (-2324640689/10000000000 : ℚ), (5247302529/62500000000 : ℚ), 2⟩,
    ⟨(87358757683/200000000000 : ℚ), (-2507208101/10000000000 : ℚ), (2871394311/31250000000 : ℚ), 2⟩,
    ⟨(441087893993/1000000000000 : ℚ), (-1326995731/5000000000 : ℚ), (49163642189/500000000000 : ℚ), 2⟩,
    ⟨(444573881343/1000000000000 : ℚ), (-346011931/1250000000 : ℚ), (25845008649/250000000000 : ℚ), 2⟩,
    ⟨(223609089251/500000000000 : ℚ), (-2851816743/10000000000 : ℚ), (107113081631/1000000000000 : ℚ), 2⟩,
    ⟨(224497659721/500000000000 : ℚ), (-726693723/2500000000 : ℚ), (109575778119/1000000000000 : ℚ), 2⟩,
    ⟨(17995527573/40000000000 : ℚ), (-293400263/1000000000 : ℚ), (110799504483/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2937394447/10000000000 : ℚ), (6934507329/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (280086483427/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control184.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control184.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate184

namespace DiagonalRamsey.JointInheritedCertificate185
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(135648032583/500000000000 : ℚ), (798984773181/625000000 : ℚ), (-69530853385151/200000000000 : ℚ), 11⟩,
    ⟨(272204178599/1000000000000 : ℚ), (87065298431/625000000 : ℚ), (-19219205031183/500000000000 : ℚ), 8⟩,
    ⟨(274011659837/1000000000000 : ℚ), (486284636509/10000000000 : ℚ), (-13701043241169/1000000000000 : ℚ), 7⟩,
    ⟨(34587637731/125000000000 : ℚ), (238500715089/10000000000 : ℚ), (-6885517466869/1000000000000 : ℚ), 6⟩,
    ⟨(140123301917/500000000000 : ℚ), (137670337213/10000000000 : ℚ), (-816124721737/200000000000 : ℚ), 5⟩,
    ⟨(284614020673/1000000000000 : ℚ), (43670348017/5000000000 : ℚ), (-1330311228563/500000000000 : ℚ), 4⟩,
    ⟨(144880645877/500000000000 : ℚ), (58867867127/10000000000 : ℚ), (-921864206929/500000000000 : ℚ), 4⟩,
    ⟨(147819423021/500000000000 : ℚ), (8266860347/2000000000 : ℚ), (-83187996131/62500000000 : ℚ), 4⟩,
    ⟨(75547519869/250000000000 : ℚ), (14926856851/5000000000 : ℚ), (-494073083903/500000000000 : ℚ), 3⟩,
    ⟨(154675950049/500000000000 : ℚ), (21977915637/10000000000 : ℚ), (-747532072179/1000000000000 : ℚ), 3⟩,
    ⟨(317055335659/1000000000000 : ℚ), (16373015727/10000000000 : ℚ), (-286062213137/500000000000 : ℚ), 3⟩,
    ⟨(65045239573/200000000000 : ℚ), (2452727047/2000000000 : ℚ), (-440253075557/1000000000000 : ℚ), 3⟩,
    ⟨(66757159369/200000000000 : ℚ), (9175262933/10000000000 : ℚ), (-33855865503/100000000000 : ℚ), 3⟩,
    ⟨(171325849491/500000000000 : ℚ), (6805126033/10000000000 : ℚ), (-258446003987/1000000000000 : ℚ), 3⟩,
    ⟨(351738520791/1000000000000 : ℚ), (4953253677/10000000000 : ℚ), (-194186042221/1000000000000 : ℚ), 2⟩,
    ⟨(360958751213/1000000000000 : ℚ), (3483702523/10000000000 : ℚ), (-70922577811/500000000000 : ℚ), 2⟩,
    ⟨(185111797193/500000000000 : ℚ), (460353867/2000000000 : ℚ), (-12331752079/125000000000 : ℚ), 2⟩,
    ⟨(379443824807/1000000000000 : ℚ), (1340089211/10000000000 : ℚ), (-62621126297/1000000000000 : ℚ), 2⟩,
    ⟨(388530646617/1000000000000 : ℚ), (13746939/250000000 : ℚ), (-32288318543/1000000000000 : ℚ), 2⟩,
    ⟨(198698274377/500000000000 : ℚ), (-52371741/5000000000 : ℚ), (-82144783/12500000000 : ℚ), 2⟩,
    ⟨(202978073867/500000000000 : ℚ), (-650511169/10000000000 : ℚ), (7672611409/500000000000 : ℚ), 2⟩,
    ⟨(414127009939/1000000000000 : ℚ), (-553788079/5000000000 : ℚ), (6816590569/200000000000 : ℚ), 2⟩,
    ⟨(421830445501/1000000000000 : ℚ), (-186408439/1250000000 : ℚ), (12529438209/250000000000 : ℚ), 2⟩,
    ⟨(428992266123/1000000000000 : ℚ), (-90666643/500000000 : ℚ), (63816943787/1000000000000 : ℚ), 2⟩,
    ⟨(435543499557/1000000000000 : ℚ), (-416564503/2000000000 : ℚ), (18866224533/250000000000 : ℚ), 2⟩,
    ⟨(88284210769/200000000000 : ℚ), (-2306727611/10000000000 : ℚ), (85281963107/1000000000000 : ℚ), 2⟩,
    ⟨(223284162463/500000000000 : ℚ), (-1245222647/5000000000 : ℚ), (93438461823/1000000000000 : ℚ), 2⟩,
    ⟨(90187148353/200000000000 : ℚ), (-2638120153/10000000000 : ℚ), (100065139349/1000000000000 : ℚ), 2⟩,
    ⟨(454481243751/1000000000000 : ℚ), (-688223837/2500000000 : ℚ), (105260979669/1000000000000 : ℚ), 2⟩,
    ⟨(457170685761/1000000000000 : ℚ), (-1418548207/5000000000 : ℚ), (27274757291/250000000000 : ℚ), 2⟩,
    ⟨(458978167/1000000000 : ℚ), (-1446181727/5000000000 : ℚ), (111630655273/1000000000000 : ℚ), 2⟩,
    ⟨(459886280433/1000000000000 : ℚ), (-364967801/1250000000 : ℚ), (14111066337/125000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1461576489/5000000000 : ℚ), (5652269877/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (275505770049/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control185.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control185.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate185

namespace DiagonalRamsey.JointInheritedCertificate208
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66521239963/250000000000 : ℚ), (12565719413139/10000000000 : ℚ), (-67031138327361/200000000000 : ℚ), 11⟩,
    ⟨(53394005469/200000000000 : ℚ), (684687687619/5000000000 : ℚ), (-37055477598853/1000000000000 : ℚ), 8⟩,
    ⟨(33591454831/125000000000 : ℚ), (239029832067/5000000000 : ℚ), (-3301837501503/250000000000 : ℚ), 7⟩,
    ⟨(847977589/3125000000 : ℚ), (234482959261/10000000000 : ℚ), (-1327360771319/200000000000 : ℚ), 6⟩,
    ⟨(274808353351/1000000000000 : ℚ), (135356947899/10000000000 : ℚ), (-786541783527/200000000000 : ℚ), 5⟩,
    ⟨(279064934667/1000000000000 : ℚ), (2683531327/312500000 : ℚ), (-2563716437039/1000000000000 : ℚ), 5⟩,
    ⟨(35510197403/125000000000 : ℚ), (11575007359/2000000000 : ℚ), (-1776145152207/1000000000000 : ℚ), 4⟩,
    ⟨(289809973991/1000000000000 : ℚ), (20315619023/5000000000 : ℚ), (-1281808390203/1000000000000 : ℚ), 4⟩,
    ⟨(74048737849/250000000000 : ℚ), (3667292743/1250000000 : ℚ), (-475610228643/500000000000 : ℚ), 4⟩,
    ⟨(37896877577/125000000000 : ℚ), (10794847647/5000000000 : ℚ), (-359600793511/500000000000 : ℚ), 3⟩,
    ⟨(38835369971/125000000000 : ℚ), (3214799219/2000000000 : ℚ), (-550042832861/1000000000000 : ℚ), 3⟩,
    ⟨(63729292659/200000000000 : ℚ), (12028969227/10000000000 : ℚ), (-422853681773/1000000000000 : ℚ), 3⟩,
    ⟨(10218401197/31250000000 : ℚ), (2247025607/2500000000 : ℚ), (-324755573687/1000000000000 : ℚ), 3⟩,
    ⟨(335629743163/1000000000000 : ℚ), (6653711727/10000000000 : ℚ), (-247462813831/1000000000000 : ℚ), 3⟩,
    ⟨(68897192247/200000000000 : ℚ), (965835153/2000000000 : ℚ), (-185452694509/1000000000000 : ℚ), 3⟩,
    ⟨(353472202299/1000000000000 : ℚ), (1690409783/5000000000 : ℚ), (-67466691643/500000000000 : ℚ), 2⟩,
    ⟨(18125096197/50000000000 : ℚ), (2215513701/10000000000 : ℚ), (-11654431193/125000000000 : ℚ), 2⟩,
    ⟨(92872041251/250000000000 : ℚ), (1267008201/10000000000 : ℚ), (-467514531/8000000000 : ℚ), 2⟩,
    ⟨(95086095769/250000000000 : ℚ), (243661427/5000000000 : ℚ), (-14569784267/500000000000 : ℚ), 2⟩,
    ⟨(77797057587/200000000000 : ℚ), (-9926903/625000000 : ℚ), (-67054821/15625000000 : ℚ), 2⟩,
    ⟨(12416489467/31250000000 : ℚ), (-139550059/2000000000 : ℚ), (16891300007/1000000000000 : ℚ), 2⟩,
    ⟨(405291166471/1000000000000 : ℚ), (-574628429/5000000000 : ℚ), (17503501433/500000000000 : ℚ), 2⟩,
    ⟨(51599888203/125000000000 : ℚ), (-1528427393/10000000000 : ℚ), (10102842921/200000000000 : ℚ), 2⟩,
    ⟨(419779174843/1000000000000 : ℚ), (-369363163/2000000000 : ℚ), (31883308919/500000000000 : ℚ), 2⟩,
    ⟨(53270519031/125000000000 : ℚ), (-2113322289/10000000000 : ℚ), (75037917451/1000000000000 : ℚ), 2⟩,
    ⟨(53986568377/125000000000 : ℚ), (-2334820999/10000000000 : ℚ), (84540094497/1000000000000 : ℚ), 2⟩,
    ⟨(109227297893/250000000000 : ℚ), (-1258308947/5000000000 : ℚ), (92436917411/1000000000000 : ℚ), 2⟩,
    ⟨(55145721611/125000000000 : ℚ), (-2662786727/10000000000 : ℚ), (98854025717/1000000000000 : ℚ), 2⟩,
    ⟨(444621297759/1000000000000 : ℚ), (-555283261/2000000000 : ℚ), (25971620319/250000000000 : ℚ), 2⟩,
    ⟨(55905310949/125000000000 : ℚ), (-714947871/2500000000 : ℚ), (107604394851/1000000000000 : ℚ), 2⟩,
    ⟨(89800819779/200000000000 : ℚ), (-728630847/2500000000 : ℚ), (55028521953/500000000000 : ℚ), 2⟩,
    ⟨(112472291597/250000000000 : ℚ), (-2941639331/10000000000 : ℚ), (111275758971/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-736254309/2500000000 : ℚ), (5571387299/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (28957247483/100000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control208.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control208.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate208

namespace DiagonalRamsey.JointInheritedCertificate209
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6825204021/25000000000 : ℚ), (792555504511/625000000 : ℚ), (-173510435449651/500000000000 : ℚ), 11⟩,
    ⟨(273908035033/1000000000000 : ℚ), (172762697259/1250000000 : ℚ), (-19183846076509/500000000000 : ℚ), 8⟩,
    ⟨(137849558569/500000000000 : ℚ), (482591146563/10000000000 : ℚ), (-547013396039/40000000000 : ℚ), 7⟩,
    ⟨(278364158057/1000000000000 : ℚ), (236757556603/10000000000 : ℚ), (-26844548123/3906250000 : ℚ), 6⟩,
    ⟨(70469372997/250000000000 : ℚ), (34175927883/2500000000 : ℚ), (-1018101536741/250000000000 : ℚ), 5⟩,
    ⟨(71551320901/250000000000 : ℚ), (43375527883/5000000000 : ℚ), (-1327489978483/500000000000 : ℚ), 5⟩,
    ⟨(291305853907/1000000000000 : ℚ), (58484470447/10000000000 : ℚ), (-367912707709/200000000000 : ℚ), 4⟩,
    ⟨(18570630101/62500000000 : ℚ), (41073074977/10000000000 : ℚ), (-663884039497/500000000000 : ℚ), 4⟩,
    ⟨(60724375247/200000000000 : ℚ), (1186762919/400000000 : ℚ), (-985523819577/1000000000000 : ℚ), 4⟩,
    ⟨(38839839779/125000000000 : ℚ), (2184337671/1000000000 : ℚ), (-186335835001/250000000000 : ℚ), 3⟩,
    ⟨(15917613057/50000000000 : ℚ), (16272376971/10000000000 : ℚ), (-285126628233/500000000000 : ℚ), 3⟩,
    ⟨(40806123721/125000000000 : ℚ), (12186584227/10000000000 : ℚ), (-438623128027/1000000000000 : ℚ), 3⟩,
    ⟨(5233295753/15625000000 : ℚ), (9115026147/10000000000 : ℚ), (-1685590103/5000000000 : ℚ), 3⟩,
    ⟨(34371639071/100000000000 : ℚ), (6757138517/10000000000 : ℚ), (-51431676853/200000000000 : ℚ), 3⟩,
    ⟨(176360384257/500000000000 : ℚ), (4914370997/10000000000 : ℚ), (-48256349839/250000000000 : ℚ), 3⟩,
    ⟨(90464336131/250000000000 : ℚ), (3451716351/10000000000 : ℚ), (-70396166361/500000000000 : ℚ), 2⟩,
    ⟨(185519064259/500000000000 : ℚ), (45502011/200000000 : ℚ), (-1953890617/20000000000 : ℚ), 2⟩,
    ⟨(380174704527/1000000000000 : ℚ), (1317588623/10000000000 : ℚ), (-7717961403/125000000000 : ℚ), 2⟩,
    ⟨(389179082331/1000000000000 : ℚ), (106138777/2000000000 : ℚ), (-31483836153/1000000000000 : ℚ), 2⟩,
    ⟨(397964544849/1000000000000 : ℚ), (-24250507/2000000000 : ℚ), (-2916223839/500000000000 : ℚ), 2⟩,
    ⟨(406446483273/1000000000000 : ℚ), (-664839581/10000000000 : ℚ), (3205120939/200000000000 : ℚ), 2⟩,
    ⟨(414543211901/1000000000000 : ℚ), (-8750871/78125000 : ℚ), (1388419947/40000000000 : ℚ), 2⟩,
    ⟨(422176754809/1000000000000 : ℚ), (-751160041/5000000000 : ℚ), (50697930253/1000000000000 : ℚ), 2⟩,
    ⟨(214636798403/500000000000 : ℚ), (-1823156287/10000000000 : ℚ), (64354924949/1000000000000 : ℚ), 2⟩,
    ⟨(17430615657/40000000000 : ℚ), (-2091628293/10000000000 : ℚ), (18991415201/250000000000 : ℚ), 2⟩,
    ⟨(220794809567/500000000000 : ℚ), (-462939119/2000000000 : ℚ), (42875177587/500000000000 : ℚ), 2⟩,
    ⟨(446690189437/1000000000000 : ℚ), (-1248865683/5000000000 : ℚ), (93879241543/1000000000000 : ℚ), 2⟩,
    ⟨(451017981053/1000000000000 : ℚ), (-2644861949/10000000000 : ℚ), (100482999481/1000000000000 : ℚ), 2⟩,
    ⟨(56816414373/125000000000 : ℚ), (-2759216683/10000000000 : ℚ), (105660563437/1000000000000 : ℚ), 2⟩,
    ⟨(457196355903/1000000000000 : ℚ), (-1421555409/5000000000 : ℚ), (54742470321/500000000000 : ℚ), 2⟩,
    ⟨(57373429751/125000000000 : ℚ), (-2898177143/10000000000 : ℚ), (112007468921/1000000000000 : ℚ), 2⟩,
    ⟨(229943656101/500000000000 : ℚ), (-2925456893/10000000000 : ℚ), (113260800703/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-585771023/2000000000 : ℚ), (113417099739/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (284871023569/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control209.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control209.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate209

namespace DiagonalRamsey.JointInheritedCertificate210
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(139976740013/500000000000 : ℚ), (12794834435221/10000000000 : ℚ), (-359039639489643/1000000000000 : ℚ), 11⟩,
    ⟨(280868054477/1000000000000 : ℚ), (1394691769409/10000000000 : ℚ), (-39696828300483/1000000000000 : ℚ), 8⟩,
    ⟨(282688395529/1000000000000 : ℚ), (487073510051/10000000000 : ℚ), (-14149308437877/1000000000000 : ℚ), 7⟩,
    ⟨(142698486151/500000000000 : ℚ), (239006965559/10000000000 : ℚ), (-7110581970687/1000000000000 : ℚ), 6⟩,
    ⟨(7224192493/25000000000 : ℚ), (69017562091/5000000000 : ℚ), (-4213842030727/1000000000000 : ℚ), 5⟩,
    ⟨(146683094863/500000000000 : ℚ), (1752374543/200000000 : ℚ), (-2747355980403/1000000000000 : ℚ), 5⟩,
    ⟨(149275041229/500000000000 : ℚ), (59086369879/10000000000 : ℚ), (-1903735116013/1000000000000 : ℚ), 4⟩,
    ⟨(152234727097/500000000000 : ℚ), (20754577381/5000000000 : ℚ), (-687128175797/500000000000 : ℚ), 4⟩,
    ⟨(6221345963/20000000000 : ℚ), (14997612877/5000000000 : ℚ), (-510103243151/500000000000 : ℚ), 4⟩,
    ⟨(7957001837/25000000000 : ℚ), (22093298693/10000000000 : ℚ), (-192940137077/250000000000 : ℚ), 3⟩,
    ⟨(65207663443/200000000000 : ℚ), (16467587849/10000000000 : ℚ), (-590664328567/1000000000000 : ℚ), 3⟩,
    ⟨(83566828307/250000000000 : ℚ), (12341465911/10000000000 : ℚ), (-90907572181/200000000000 : ℚ), 3⟩,
    ⟨(85721952947/250000000000 : ℚ), (9239547863/10000000000 : ℚ), (-43697988937/125000000000 : ℚ), 3⟩,
    ⟨(175908396391/500000000000 : ℚ), (3429209907/5000000000 : ℚ), (-133462625987/500000000000 : ℚ), 3⟩,
    ⟨(360968265241/1000000000000 : ℚ), (4997622871/10000000000 : ℚ), (-100322196109/500000000000 : ℚ), 3⟩,
    ⟨(370254095483/1000000000000 : ℚ), (1760415789/5000000000 : ℚ), (-29335586087/200000000000 : ℚ), 2⟩,
    ⟨(379584855887/1000000000000 : ℚ), (466607437/2000000000 : ℚ), (-51082367253/500000000000 : ℚ), 2⟩,
    ⟨(388870686129/1000000000000 : ℚ), (1366626803/10000000000 : ℚ), (-32523431161/500000000000 : ℚ), 2⟩,
    ⟨(99505539647/250000000000 : ℚ), (572612427/10000000000 : ℚ), (-33817093417/1000000000000 : ℚ), 2⟩,
    ⟨(203475569791/500000000000 : ℚ), (-85051793/10000000000 : ℚ), (-1838643049/250000000000 : ℚ), 2⟩,
    ⟨(207785819071/500000000000 : ℚ), (-633242347/10000000000 : ℚ), (15184925583/1000000000000 : ℚ), 2⟩,
    ⟨(84760126831/200000000000 : ℚ), (-1092225433/10000000000 : ℚ), (1076372591/31250000000 : ℚ), 2⟩,
    ⟨(43155887789/100000000000 : ℚ), (-46169559/312500000 : ℚ), (795553871/15625000000 : ℚ), 2⟩,
    ⟨(21938582661/50000000000 : ℚ), (-180067047/1000000000 : ℚ), (64980069457/1000000000000 : ℚ), 2⟩,
    ⟨(55671187147/125000000000 : ℚ), (-207107451/1000000000 : ℚ), (15386520349/200000000000 : ℚ), 2⟩,
    ⟨(28205554307/62500000000 : ℚ), (-459136431/2000000000 : ℚ), (87001630601/1000000000000 : ℚ), 2⟩,
    ⟨(114118190411/250000000000 : ℚ), (-2479933307/10000000000 : ℚ), (47681980809/500000000000 : ℚ), 2⟩,
    ⟨(9217425033/20000000000 : ℚ), (-262800653/1000000000 : ℚ), (102155400429/1000000000000 : ℚ), 2⟩,
    ⟨(116110494767/250000000000 : ℚ), (-1371535709/5000000000 : ℚ), (53739410793/500000000000 : ℚ), 2⟩,
    ⟨(467150555841/1000000000000 : ℚ), (-2827473417/10000000000 : ℚ), (111410180743/1000000000000 : ℚ), 2⟩,
    ⟨(468970896893/1000000000000 : ℚ), (-2882866841/10000000000 : ℚ), (114002913507/1000000000000 : ℚ), 2⟩,
    ⟨(29367841959/62500000000 : ℚ), (-2910306757/10000000000 : ℚ), (23058203703/200000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2913724843/10000000000 : ℚ), (57725824481/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (70039551733/250000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control210.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control210.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate210

namespace DiagonalRamsey.JointInheritedCertificate211
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71729474691/250000000000 : ℚ), (1290731683437/1000000000 : ℚ), (-371199360046689/1000000000000 : ℚ), 11⟩,
    ⟨(7196177039/25000000000 : ℚ), (703559549557/5000000000 : ℚ), (-41041476666709/1000000000000 : ℚ), 8⟩,
    ⟨(57939299723/200000000000 : ℚ), (491497093237/10000000000 : ℚ), (-2925751917127/200000000000 : ℚ), 7⟩,
    ⟨(292448339031/1000000000000 : ℚ), (120613129597/5000000000 : ℚ), (-7351673263047/1000000000000 : ℚ), 6⟩,
    ⟨(7401902527/25000000000 : ℚ), (69674103427/5000000000 : ℚ), (-871370974749/200000000000 : ℚ), 5⟩,
    ⟨(37568105929/125000000000 : ℚ), (88474023249/10000000000 : ℚ), (-2840734375479/1000000000000 : ℚ), 5⟩,
    ⟨(61162308323/200000000000 : ℚ), (59679308191/10000000000 : ℚ), (-196857941589/100000000000 : ℚ), 4⟩,
    ⟨(62365092497/200000000000 : ℚ), (20969202727/5000000000 : ℚ), (-1421211355103/1000000000000 : ℚ), 4⟩,
    ⟨(159264346349/500000000000 : ℚ), (6063193019/2000000000 : ℚ), (-263804762389/250000000000 : ℚ), 4⟩,
    ⟨(162928338241/500000000000 : ℚ), (5584697903/2500000000 : ℚ), (-199603133359/250000000000 : ℚ), 3⟩,
    ⟨(166869420673/500000000000 : ℚ), (1665907919/1000000000 : ℚ), (-4889933831/8000000000 : ℚ), 3⟩,
    ⟨(68419855547/200000000000 : ℚ), (249863089/200000000 : ℚ), (-58821041803/125000000000 : ℚ), 3⟩,
    ⟨(87714367519/250000000000 : ℚ), (9361276371/10000000000 : ℚ), (-181063687753/500000000000 : ℚ), 3⟩,
    ⟨(359929072189/1000000000000 : ℚ), (3478608977/5000000000 : ℚ), (-276740435011/1000000000000 : ℚ), 3⟩,
    ⟨(184613359793/500000000000 : ℚ), (2539318089/5000000000 : ℚ), (-41657800297/200000000000 : ℚ), 3⟩,
    ⟨(378660870841/1000000000000 : ℚ), (1793952087/5000000000 : ℚ), (-152571380493/1000000000000 : ℚ), 2⟩,
    ⟨(2425879187/6250000000 : ℚ), (1194545151/5000000000 : ℚ), (-53314403387/500000000000 : ℚ), 2⟩,
    ⟨(15902992847/40000000000 : ℚ), (706956123/5000000000 : ℚ), (-13666571457/200000000000 : ℚ), 2⟩,
    ⟨(101718117143/250000000000 : ℚ), (153221717/2500000000 : ℚ), (-18062220819/500000000000 : ℚ), 2⟩,
    ⟨(83188814137/200000000000 : ℚ), (-25202047/5000000000 : ℚ), (-1768777977/200000000000 : ℚ), 2⟩,
    ⟨(212351131513/500000000000 : ℚ), (-150780319/2500000000 : ℚ), (14382485211/1000000000000 : ℚ), 2⟩,
    ⟨(86612539883/200000000000 : ℚ), (-1065750303/10000000000 : ℚ), (4277480457/125000000000 : ℚ), 2⟩,
    ⟨(440944864279/1000000000000 : ℚ), (-1453887103/10000000000 : ℚ), (5117877719/100000000000 : ℚ), 2⟩,
    ⟨(448272848063/1000000000000 : ℚ), (-889746411/5000000000 : ℚ), (13130717271/200000000000 : ℚ), 2⟩,
    ⟨(18199043131/40000000000 : ℚ), (-410357769/2000000000 : ℚ), (7794987323/100000000000 : ℚ), 2⟩,
    ⟨(230494999573/500000000000 : ℚ), (-2277903139/10000000000 : ℚ), (88304715913/1000000000000 : ℚ), 2⟩,
    ⟨(466256693329/1000000000000 : ℚ), (-492668343/2000000000 : ℚ), (96901593249/1000000000000 : ℚ), 2⟩,
    ⟨(1471016999/3125000000 : ℚ), (-1306167441/5000000000 : ℚ), (51940758741/500000000000 : ℚ), 2⟩,
    ⟨(47435320173/100000000000 : ℚ), (-2728092141/10000000000 : ℚ), (54675683819/500000000000 : ℚ), 2⟩,
    ⟨(238552521073/500000000000 : ℚ), (-2812988873/10000000000 : ℚ), (14173762063/125000000000 : ℚ), 2⟩,
    ⟨(478954459201/1000000000000 : ℚ), (-2868700737/10000000000 : ℚ), (116053273051/1000000000000 : ℚ), 2⟩,
    ⟨(479883641997/1000000000000 : ℚ), (-2896296519/10000000000 : ℚ), (117376265387/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2899733933/10000000000 : ℚ), (58770620633/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (55087202223/200000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control211.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control211.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate211

namespace DiagonalRamsey.JointInheritedCertificate212
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(150588048321/500000000000 : ℚ), (2631647364749/2000000000 : ℚ), (-397204424248209/1000000000000 : ℚ), 11⟩,
    ⟨(75533227781/250000000000 : ℚ), (143484749939/1000000000 : ℚ), (-43917554381669/1000000000000 : ℚ), 8⟩,
    ⟨(475058321/1562500000 : ℚ), (501371573111/10000000000 : ℚ), (-3130907649551/200000000000 : ℚ), 7⟩,
    ⟨(29967871/97656250 : ℚ), (61545887793/2500000000 : ℚ), (-7867700453071/1000000000000 : ℚ), 6⟩,
    ⟨(155303321049/500000000000 : ℚ), (142283884567/10000000000 : ℚ), (-4663135450137/1000000000000 : ℚ), 5⟩,
    ⟨(31520827833/100000000000 : ℚ), (45194176051/5000000000 : ℚ), (-152043542239/50000000000 : ℚ), 5⟩,
    ⟨(160315795731/500000000000 : ℚ), (1906506367/312500000 : ℚ), (-2107697502791/1000000000000 : ℚ), 4⟩,
    ⟨(13072974081/40000000000 : ℚ), (21450974741/5000000000 : ℚ), (-304415335699/200000000000 : ℚ), 4⟩,
    ⟨(333726920349/1000000000000 : ℚ), (7759305621/2500000000 : ℚ), (-70659391901/62500000000 : ℚ), 4⟩,
    ⟨(341272820929/1000000000000 : ℚ), (11445977089/5000000000 : ℚ), (-213967639941/250000000000 : ℚ), 3⟩,
    ⟨(69877876523/200000000000 : ℚ), (3418305949/2000000000 : ℚ), (-327858060333/500000000000 : ℚ), 3⟩,
    ⟨(357998438483/1000000000000 : ℚ), (12836561979/10000000000 : ℚ), (-505326853011/1000000000000 : ℚ), 3⟩,
    ⟨(183508539309/500000000000 : ℚ), (9637596361/10000000000 : ℚ), (-19471871551/50000000000 : ℚ), 3⟩,
    ⟨(188179224293/500000000000 : ℚ), (3591066867/5000000000 : ℚ), (-149112629137/500000000000 : ℚ), 3⟩,
    ⟨(385932585887/1000000000000 : ℚ), (5263630821/10000000000 : ℚ), (-112570924207/500000000000 : ℚ), 3⟩,
    ⟨(79129457269/200000000000 : ℚ), (187077999/500000000 : ℚ), (-165689669287/1000000000000 : ℚ), 2⟩,
    ⟨(81081798417/200000000000 : ℚ), (1258966419/5000000000 : ℚ), (-116701060909/1000000000000 : ℚ), 2⟩,
    ⟨(415123692543/1000000000000 : ℚ), (304595087/2000000000 : ℚ), (-607174099/8000000000 : ℚ), 2⟩,
    ⟨(106174457461/250000000000 : ℚ), (706101501/10000000000 : ℚ), (-41606637199/1000000000000 : ℚ), 2⟩,
    ⟨(434039199811/1000000000000 : ℚ), (30063137/10000000000 : ℚ), (-78674261/6250000000 : ℚ), 2⟩,
    ⟨(443057839947/1000000000000 : ℚ), (-3330833/62500000 : ℚ), (1512041677/125000000000 : ℚ), 2⟩,
    ⟨(90333379163/200000000000 : ℚ), (-501931097/5000000000 : ℚ), (33159716181/1000000000000 : ℚ), 2⟩,
    ⟨(459783457501/1000000000000 : ℚ), (-699350373/5000000000 : ℚ), (25575280637/500000000000 : ℚ), 2⟩,
    ⟨(365101061/781250000 : ℚ), (-172970959/1000000000 : ℚ), (66492675867/1000000000000 : ℚ), 2⟩,
    ⟨(94846385281/200000000000 : ℚ), (-2006346561/10000000000 : ℚ), (15902974559/200000000000 : ℚ), 2⟩,
    ⟨(60053085871/125000000000 : ℚ), (-2235926621/10000000000 : ℚ), (45236263403/500000000000 : ℚ), 2⟩,
    ⟨(4858480001/10000000000 : ℚ), (-151506459/625000000 : ℚ), (99563513829/1000000000000 : ℚ), 2⟩,
    ⟨(122612409083/250000000000 : ℚ), (-515044529/2000000000 : ℚ), (4277603897/40000000000 : ℚ), 2⟩,
    ⟨(49418527939/100000000000 : ℚ), (-2692583241/10000000000 : ℚ), (4508712863/40000000000 : ℚ), 2⟩,
    ⟨(49701895299/100000000000 : ℚ), (-173664219/625000000 : ℚ), (58491067279/500000000000 : ℚ), 2⟩,
    ⟨(249461683653/500000000000 : ℚ), (-567015777/2000000000 : ℚ), (119793233337/1000000000000 : ℚ), 2⟩,
    ⟨(499880181787/1000000000000 : ℚ), (-2863036907/10000000000 : ℚ), (1893585309/15625000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-716629813/2500000000 : ℚ), (6068177809/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (265820971777/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control212.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control212.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate212

namespace DiagonalRamsey.JointInheritedCertificate213
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(315639199479/1000000000000 : ℚ), (13417276905911/10000000000 : ℚ), (-424456765843459/1000000000000 : ℚ), 11⟩,
    ⟨(316622659567/1000000000000 : ℚ), (1463472654053/10000000000 : ℚ), (-46931518091491/1000000000000 : ℚ), 8⟩,
    ⟨(318580108483/1000000000000 : ℚ), (511564944253/10000000000 : ℚ), (-669178163949/40000000000 : ℚ), 7⟩,
    ⟨(12859707797/40000000000 : ℚ), (125650271921/5000000000 : ℚ), (-8408417133617/1000000000000 : ℚ), 6⟩,
    ⟨(162666184547/500000000000 : ℚ), (72656885841/5000000000 : ℚ), (-2492024332111/500000000000 : ℚ), 5⟩,
    ⟨(82515538207/250000000000 : ℚ), (23090940053/2500000000 : ℚ), (-325055338003/100000000000 : ℚ), 5⟩,
    ⟨(335636495723/1000000000000 : ℚ), (31189573577/5000000000 : ℚ), (-2253440476447/1000000000000 : ℚ), 4⟩,
    ⟨(85500428453/250000000000 : ℚ), (21947812969/5000000000 : ℚ), (-1627738565447/1000000000000 : ℚ), 4⟩,
    ⟨(87274126641/250000000000 : ℚ), (31780675523/10000000000 : ℚ), (-302365163029/250000000000 : ℚ), 4⟩,
    ⟨(178426273623/500000000000 : ℚ), (5865443749/2500000000 : ℚ), (-91605863087/100000000000 : ℚ), 3⟩,
    ⟨(365195140947/1000000000000 : ℚ), (438415879/250000000 : ℚ), (-175576688507/250000000000 : ℚ), 3⟩,
    ⟨(374043943929/1000000000000 : ℚ), (263792969/200000000 : ℚ), (-541745279063/1000000000000 : ℚ), 3⟩,
    ⟨(191656868691/500000000000 : ℚ), (9921334201/10000000000 : ℚ), (-209030241487/500000000000 : ℚ), 3⟩,
    ⟨(392915248127/1000000000000 : ℚ), (1482543901/2000000000 : ℚ), (-10023581827/31250000000 : ℚ), 3⟩,
    ⟨(25172250523/62500000000 : ℚ), (2726462977/5000000000 : ℚ), (-121414258309/500000000000 : ℚ), 2⟩,
    ⟨(103185311551/250000000000 : ℚ), (1949215997/5000000000 : ℚ), (-179474523903/1000000000000 : ℚ), 2⟩,
    ⟨(206433007/488281250 : ℚ), (2649126391/10000000000 : ℚ), (-127305961979/1000000000000 : ℚ), 2⟩,
    ⟨(432760036171/1000000000000 : ℚ), (1633695421/10000000000 : ℚ), (-83885383191/1000000000000 : ℚ), 2⟩,
    ⟨(110650199103/250000000000 : ℚ), (200103473/2500000000 : ℚ), (-23713077917/500000000000 : ℚ), 2⟩,
    ⟨(226101153579/500000000000 : ℚ), (55588557/5000000000 : ℚ), (-16598224043/1000000000000 : ℚ), 2⟩,
    ⟨(461472100611/1000000000000 : ℚ), (-231231249/5000000000 : ℚ), (9601551029/1000000000000 : ℚ), 2⟩,
    ⟨(470320903593/1000000000000 : ℚ), (-470992327/5000000000 : ℚ), (15968948331/500000000000 : ℚ), 2⟩,
    ⟨(239331748647/500000000000 : ℚ), (-67188039/500000000 : ℚ), (2549938247/50000000000 : ℚ), 2⟩,
    ⟨(60802442247/125000000000 : ℚ), (-26255649/156250000 : ℚ), (4202439443/62500000000 : ℚ), 2⟩,
    ⟨(61689291341/125000000000 : ℚ), (-61296553/312500000 : ℚ), (10126496907/125000000000 : ℚ), 2⟩,
    ⟨(31242471801/62500000000 : ℚ), (-2194654091/10000000000 : ℚ), (23148070641/250000000000 : ℚ), 2⟩,
    ⟨(3948858529/7812500000 : ℚ), (-2385661429/10000000000 : ℚ), (10219304441/100000000000 : ℚ), 2⟩,
    ⟨(255091837723/500000000000 : ℚ), (-2538977693/10000000000 : ℚ), (109978429981/1000000000000 : ℚ), 2⟩,
    ⟨(257011674807/500000000000 : ℚ), (-2657994339/10000000000 : ℚ), (116073163871/1000000000000 : ℚ), 2⟩,
    ⟨(516935936057/1000000000000 : ℚ), (-343152927/1250000000 : ℚ), (120569583211/1000000000000 : ℚ), 2⟩,
    ⟨(518893384973/1000000000000 : ℚ), (-1401219059/5000000000 : ℚ), (123532798391/1000000000000 : ℚ), 2⟩,
    ⟨(25993842253/50000000000 : ℚ), (-2830769971/10000000000 : ℚ), (125004310431/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2834298681/10000000000 : ℚ), (25037556327/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (64026319397/250000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control213.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control213.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate213

namespace DiagonalRamsey.JointInheritedCertificate237
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(281697333407/1000000000000 : ℚ), (3171238652809/2500000000 : ℚ), (-71632227002349/200000000000 : ℚ), 11⟩,
    ⟨(282603515789/1000000000000 : ℚ), (55318886747/400000000 : ℚ), (-9899712062679/250000000000 : ℚ), 8⟩,
    ⟨(3555089419/12500000000 : ℚ), (120775603941/2500000000 : ℚ), (-2822753293053/200000000000 : ℚ), 7⟩,
    ⟨(35886359573/125000000000 : ℚ), (118561803051/5000000000 : ℚ), (-886529712247/125000000000 : ℚ), 6⟩,
    ⟨(290628839261/1000000000000 : ℚ), (136984817571/10000000000 : ℚ), (-840514119279/200000000000 : ℚ), 5⟩,
    ⟨(58997393807/200000000000 : ℚ), (4348699451/500000000 : ℚ), (-684915282731/250000000000 : ℚ), 5⟩,
    ⟨(60024658947/200000000000 : ℚ), (58664285443/10000000000 : ℚ), (-37961894133/20000000000 : ℚ), 4⟩,
    ⟨(305988350737/1000000000000 : ℚ), (20609752627/5000000000 : ℚ), (-1369903510363/1000000000000 : ℚ), 4⟩,
    ⟨(9766426667/31250000000 : ℚ), (14894495499/5000000000 : ℚ), (-1016714016647/1000000000000 : ℚ), 4⟩,
    ⟨(319672244759/1000000000000 : ℚ), (685685073/312500000 : ℚ), (-768872449689/1000000000000 : ℚ), 3⟩,
    ⟨(327359299401/1000000000000 : ℚ), (16353544241/10000000000 : ℚ), (-117643699711/200000000000 : ℚ), 3⟩,
    ⟨(33551278673/100000000000 : ℚ), (12253557037/10000000000 : ℚ), (-226213574079/500000000000 : ℚ), 3⟩,
    ⟨(344054184207/1000000000000 : ℚ), (9170385627/10000000000 : ℚ), (-347734987111/1000000000000 : ℚ), 3⟩,
    ⟨(70580246701/200000000000 : ℚ), (680299973/1000000000 : ℚ), (-33160805173/125000000000 : ℚ), 3⟩,
    ⟨(180984366351/500000000000 : ℚ), (9672809/19531250 : ℚ), (-199178313041/1000000000000 : ℚ), 3⟩,
    ⟨(14846774273/40000000000 : ℚ), (3483512677/10000000000 : ℚ), (-72678427219/500000000000 : ℚ), 2⟩,
    ⟨(380414498833/1000000000000 : ℚ), (230178097/1000000000 : ℚ), (-25241891379/250000000000 : ℚ), 2⟩,
    ⟨(97403780739/250000000000 : ℚ), (1340141683/10000000000 : ℚ), (-63957114731/1000000000000 : ℚ), 2⟩,
    ⟨(199341311077/500000000000 : ℚ), (137483843/2500000000 : ℚ), (-16410755803/500000000000 : ℚ), 2⟩,
    ⟨(407529671451/1000000000000 : ℚ), (-13081481/1250000000 : ℚ), (-805271757/125000000000 : ℚ), 2⟩,
    ⟨(1625277613/3906250000 : ℚ), (-650330713/10000000000 : ℚ), (8011758517/500000000000 : ℚ), 2⟩,
    ⟨(424224556257/1000000000000 : ℚ), (-276811901/2500000000 : ℚ), (17608474531/500000000000 : ℚ), 2⟩,
    ⟨(431911610899/1000000000000 : ℚ), (-74536987/500000000 : ℚ), (51630343043/1000000000000 : ℚ), 2⟩,
    ⟨(219529101157/500000000000 : ℚ), (-1812569061/10000000000 : ℚ), (32821845291/500000000000 : ℚ), 2⟩,
    ⟨(222797752461/500000000000 : ℚ), (-2081802409/10000000000 : ℚ), (4846961701/62500000000 : ℚ), 2⟩,
    ⟨(451460560923/1000000000000 : ℚ), (-288180909/1250000000 : ℚ), (87581709937/1000000000000 : ℚ), 2⟩,
    ⟨(456596886623/1000000000000 : ℚ), (-796453/3200000 : ℚ), (23415828/244140625 : ℚ), 2⟩,
    ⟨(460955016397/1000000000000 : ℚ), (-2636364693/10000000000 : ℚ), (102675578447/1000000000000 : ℚ), 2⟩,
    ⟨(232246489537/500000000000 : ℚ), (-2750947849/10000000000 : ℚ), (107977485873/1000000000000 : ℚ), 2⟩,
    ⟨(233588351069/500000000000 : ℚ), (-2834998453/10000000000 : ℚ), (55946401077/500000000000 : ℚ), 2⟩,
    ⟨(46898033987/100000000000 : ℚ), (-722540553/2500000000 : ℚ), (11447488359/100000000000 : ℚ), 2⟩,
    ⟨(469886522251/1000000000000 : ℚ), (-2917488653/10000000000 : ℚ), (115757676137/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1460446309/5000000000 : ℚ), (115917643171/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (289520438547/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control237.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control237.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate237

namespace DiagonalRamsey.JointInheritedCertificate238
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(288758011491/1000000000000 : ℚ), (12803411768263/10000000000 : ℚ), (-370559557028749/1000000000000 : ℚ), 11⟩,
    ⟨(289678338981/1000000000000 : ℚ), (1396062412119/10000000000 : ℚ), (-40970022783339/1000000000000 : ℚ), 8⟩,
    ⟨(145755065353/500000000000 : ℚ), (24388198477/500000000 : ℚ), (-1825346208551/125000000000 : ℚ), 7⟩,
    ⟨(73558936377/250000000000 : ℚ), (119731901633/5000000000 : ℚ), (-7338204504533/1000000000000 : ℚ), 6⟩,
    ⟨(74457233557/250000000000 : ℚ), (17296329753/1250000000 : ℚ), (-4348534465391/1000000000000 : ℚ), 5⟩,
    ⟨(151127546247/500000000000 : ℚ), (87877652491/10000000000 : ℚ), (-2835016433139/1000000000000 : ℚ), 5⟩,
    ⟨(153735796991/500000000000 : ℚ), (474332691/80000000 : ℚ), (-196435575303/100000000000 : ℚ), 4⟩,
    ⟨(78357050233/250000000000 : ℚ), (41674344427/10000000000 : ℚ), (-283584793419/200000000000 : ℚ), 4⟩,
    ⟨(320067547961/1000000000000 : ℚ), (1506473403/500000000 : ℚ), (-1052557470481/1000000000000 : ℚ), 4⟩,
    ⟨(32732569453/100000000000 : ℚ), (11101532057/5000000000 : ℚ), (-79619112157/100000000000 : ℚ), 3⟩,
    ⟨(167566370359/500000000000 : ℚ), (16557721021/10000000000 : ℚ), (-609343339203/1000000000000 : ℚ), 3⟩,
    ⟨(343413500403/1000000000000 : ℚ), (12415720499/10000000000 : ℚ), (-29307244477/62500000000 : ℚ), 3⟩,
    ⟨(352088225343/1000000000000 : ℚ), (4650450773/5000000000 : ℚ), (-36066852031/100000000000 : ℚ), 3⟩,
    ⟨(180536686597/500000000000 : ℚ), (690927259/1000000000 : ℚ), (-137719248587/500000000000 : ℚ), 3⟩,
    ⟨(370282412071/1000000000000 : ℚ), (2519964659/5000000000 : ℚ), (-103558838777/500000000000 : ℚ), 3⟩,
    ⟨(75925330779/200000000000 : ℚ), (3556193633/10000000000 : ℚ), (-75755650159/500000000000 : ℚ), 2⟩,
    ⟨(389016108509/1000000000000 : ℚ), (2362772119/10000000000 : ℚ), (-26416326299/250000000000 : ℚ), 2⟩,
    ⟨(199180175167/500000000000 : ℚ), (86988681/625000000 : ℚ), (-33727240583/500000000000 : ℚ), 2⟩,
    ⟨(407569389211/1000000000000 : ℚ), (580228/9765625 : ℚ), (-4415241443/125000000000 : ℚ), 2⟩,
    ⟨(208277268531/500000000000 : ℚ), (-16607487/2500000000 : ℚ), (-1621895551/200000000000 : ℚ), 2⟩,
    ⟨(212614631001/500000000000 : ℚ), (-616941147/10000000000 : ℚ), (15055563041/1000000000000 : ℚ), 2⟩,
    ⟨(433510021687/1000000000000 : ℚ), (-1077757451/10000000000 : ℚ), (2177355103/62500000000 : ℚ), 2⟩,
    ⟨(3530536543/8000000000 : ℚ), (-292879237/2000000000 : ℚ), (51747030767/1000000000000 : ℚ), 2⟩,
    ⟨(448575214443/1000000000000 : ℚ), (-1788760781/10000000000 : ℚ), (8272203137/125000000000 : ℚ), 2⟩,
    ⟨(455214561473/1000000000000 : ℚ), (-1030014881/5000000000 : ℚ), (39217440703/500000000000 : ℚ), 2⟩,
    ⟨(230585584211/500000000000 : ℚ), (-71415591/312500000 : ℚ), (44377877877/500000000000 : ℚ), 2⟩,
    ⟨(46638766991/100000000000 : ℚ), (-1235024931/5000000000 : ℚ), (24330910809/250000000000 : ℚ), 2⟩,
    ⟨(29425864261/62500000000 : ℚ), (-130924719/500000000 : ℚ), (20855899137/200000000000 : ℚ), 2⟩,
    ⟨(7412609639/15625000000 : ℚ), (-683456979/2500000000 : ℚ), (109730145129/1000000000000 : ℚ), 2⟩,
    ⟨(477132631699/1000000000000 : ℚ), (-563683081/2000000000 : ℚ), (28438626861/250000000000 : ℚ), 2⟩,
    ⟨(478964423423/1000000000000 : ℚ), (-114957003/400000000 : ℚ), (116408122967/1000000000000 : ℚ), 2⟩,
    ⟨(479884750913/1000000000000 : ℚ), (-2901420931/10000000000 : ℚ), (58863169953/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2904845909/10000000000 : ℚ), (117890719133/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (35584123719/125000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control238.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control238.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate238

namespace DiagonalRamsey.JointInheritedCertificate239
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18937981599/62500000000 : ℚ), (3260945487391/2500000000 : ℚ), (-19806534823883/50000000000 : ℚ), 11⟩,
    ⟨(151977852841/500000000000 : ℚ), (355655937257/2500000000 : ℚ), (-43797924363283/1000000000000 : ℚ), 8⟩,
    ⟨(305842576121/1000000000000 : ℚ), (497221930347/10000000000 : ℚ), (-15611231097541/1000000000000 : ℚ), 7⟩,
    ⟨(61730029061/200000000000 : ℚ), (244211278157/10000000000 : ℚ), (-7845415564709/1000000000000 : ℚ), 6⟩,
    ⟨(39043921851/125000000000 : ℚ), (28236294663/2000000000 : ℚ), (-2324748196119/500000000000 : ℚ), 5⟩,
    ⟨(39613827471/125000000000 : ℚ), (17942012559/2000000000 : ℚ), (-606320746007/200000000000 : ℚ), 5⟩,
    ⟨(322283972163/1000000000000 : ℚ), (30281580919/5000000000 : ℚ), (-210094144711/100000000000 : ℚ), 4⟩,
    ⟨(41052460459/125000000000 : ℚ), (42595915759/10000000000 : ℚ), (-303378786513/200000000000 : ℚ), 4⟩,
    ⟨(335258664039/1000000000000 : ℚ), (30818928557/10000000000 : ℚ), (-1126418218257/1000000000000 : ℚ), 4⟩,
    ⟨(68547010029/200000000000 : ℚ), (22731489549/10000000000 : ℚ), (-426237896823/500000000000 : ℚ), 3⟩,
    ⟨(21923552519/62500000000 : ℚ), (3394101209/2000000000 : ℚ), (-81607497303/125000000000 : ℚ), 3⟩,
    ⟨(359306587681/1000000000000 : ℚ), (6371603607/5000000000 : ℚ), (-502877834391/1000000000000 : ℚ), 3⟩,
    ⟨(368242146147/1000000000000 : ℚ), (76513019/80000000 : ℚ), (-193652697413/500000000000 : ℚ), 3⟩,
    ⟨(377497461387/1000000000000 : ℚ), (7123266707/10000000000 : ℚ), (-148173284703/500000000000 : ℚ), 3⟩,
    ⟨(193491699829/500000000000 : ℚ), (1303924301/2500000000 : ℚ), (-111735198621/500000000000 : ℚ), 3⟩,
    ⟨(396608606187/1000000000000 : ℚ), (1850980849/5000000000 : ℚ), (-3283824309/20000000000 : ℚ), 2⟩,
    ⟨(16251215399/40000000000 : ℚ), (1242398023/5000000000 : ℚ), (-57674774737/500000000000 : ℚ), 2⟩,
    ⟨(83181118301/200000000000 : ℚ), (373731201/2500000000 : ℚ), (-74671858709/1000000000000 : ℚ), 2⟩,
    ⟨(17015661191/40000000000 : ℚ), (341054979/5000000000 : ℚ), (-1619681663/40000000000 : ℚ), 2⟩,
    ⟨(54330855627/125000000000 : ℚ), (1870019/2000000000 : ℚ), (-5785079687/500000000000 : ℚ), 2⟩,
    ⟨(443582403481/1000000000000 : ℚ), (-68871481/1250000000 : ℚ), (13028573229/1000000000000 : ℚ), 2⟩,
    ⟨(226056075429/500000000000 : ℚ), (-254925597/2500000000 : ℚ), (34016398881/1000000000000 : ℚ), 2⟩,
    ⟨(460153941017/1000000000000 : ℚ), (-353181231/2500000000 : ℚ), (12985138969/250000000000 : ℚ), 2⟩,
    ⟨(467630327123/1000000000000 : ℚ), (-348446129/2000000000 : ℚ), (6722408333/100000000000 : ℚ), 2⟩,
    ⟨(47446930749/100000000000 : ℚ), (-1008812671/5000000000 : ℚ), (80195228383/1000000000000 : ℚ), 2⟩,
    ⟨(480605018999/1000000000000 : ℚ), (-2246184597/10000000000 : ℚ), (91108942181/1000000000000 : ℚ), 2⟩,
    ⟨(242989185697/500000000000 : ℚ), (-2433531967/10000000000 : ℚ), (10016277787/100000000000 : ℚ), 2⟩,
    ⟨(245268808177/500000000000 : ℚ), (-1291995213/5000000000 : ℚ), (107508749237/1000000000000 : ℚ), 2⟩,
    ⟨(247119422929/500000000000 : ℚ), (-540168251/2000000000 : ℚ), (56631102847/500000000000 : ℚ), 2⟩,
    ⟨(248523207521/500000000000 : ℚ), (-1393256917/5000000000 : ℚ), (2937711147/25000000000 : ℚ), 2⟩,
    ⟨(12473332137/25000000000 : ℚ), (-568544473/2000000000 : ℚ), (12030755671/100000000000 : ℚ), 2⟩,
    ⟨(499881285579/1000000000000 : ℚ), (-2870560421/10000000000 : ℚ), (1521222593/12500000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2874027837/10000000000 : ℚ), (12187115763/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (137454418519/500000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control239.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control239.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate239

namespace DiagonalRamsey.JointInheritedCertificate240
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(158769134817/500000000000 : ℚ), (13300782299159/10000000000 : ℚ), (-423289085375087/1000000000000 : ℚ), 11⟩,
    ⟨(31851259069/100000000000 : ℚ), (725512415067/5000000000 : ℚ), (-46801483105223/1000000000000 : ℚ), 8⟩,
    ⟨(160225924779/500000000000 : ℚ), (25366822263/500000000 : ℚ), (-16682425315867/1000000000000 : ℚ), 7⟩,
    ⟨(64667474023/200000000000 : ℚ), (249289378857/10000000000 : ℚ), (-4192125670277/500000000000 : ℚ), 6⟩,
    ⟨(16357068161/50000000000 : ℚ), (72094433369/5000000000 : ℚ), (-496928557929/100000000000 : ℚ), 5⟩,
    ⟨(331827194341/1000000000000 : ℚ), (1432362959/156250000 : ℚ), (-3240544756661/1000000000000 : ℚ), 5⟩,
    ⟨(337349736363/1000000000000 : ℚ), (61924562559/10000000000 : ℚ), (-2246162347607/1000000000000 : ℚ), 4⟩,
    ⟨(68731160837/200000000000 : ℚ), (5447869099/1250000000 : ℚ), (-324434182947/200000000000 : ℚ), 4⟩,
    ⟨(350684666929/1000000000000 : ℚ), (1577882053/500000000 : ℚ), (-1205034932993/1000000000000 : ℚ), 4⟩,
    ⟨(89592158201/250000000000 : ℚ), (23297863851/10000000000 : ℚ), (-912433817233/1000000000000 : ℚ), 3⟩,
    ⟨(366633701017/1000000000000 : ℚ), (17413073977/10000000000 : ℚ), (-699266613307/1000000000000 : ℚ), 3⟩,
    ⟨(93850068611/250000000000 : ℚ), (6547204827/5000000000 : ℚ), (-134786657353/250000000000 : ℚ), 3⟩,
    ⟨(384583926191/1000000000000 : ℚ), (9615683/9765625 : ℚ), (-415805138009/1000000000000 : ℚ), 3⟩,
    ⟨(39409621267/100000000000 : ℚ), (919100209/1250000000 : ℚ), (-318773239383/1000000000000 : ℚ), 3⟩,
    ⟨(403845525363/1000000000000 : ℚ), (5404208261/10000000000 : ℚ), (-6026771233/25000000000 : ℚ), 3⟩,
    ⟨(20686898653/50000000000 : ℚ), (385825213/1000000000 : ℚ), (-35580650069/200000000000 : ℚ), 2⟩,
    ⟨(330998661/781250000 : ℚ), (2615563209/10000000000 : ℚ), (-25178539101/200000000000 : ℚ), 2⟩,
    ⟨(433570733777/1000000000000 : ℚ), (802669201/5000000000 : ℚ), (-82607987233/1000000000000 : ℚ), 2⟩,
    ⟨(44332004647/100000000000 : ℚ), (776209549/10000000000 : ℚ), (-46266910391/1000000000000 : ℚ), 2⟩,
    ⟨(452832332949/1000000000000 : ℚ), (45162429/5000000000 : ℚ), (-15542551383/1000000000000 : ℚ), 2⟩,
    ⟨(92403196939/200000000000 : ℚ), (-480581977/10000000000 : ℚ), (10565980969/1000000000000 : ℚ), 2⟩,
    ⟨(235391279061/500000000000 : ℚ), (-478929627/5000000000 : ℚ), (32821798769/1000000000000 : ℚ), 2⟩,
    ⟨(14970238323/31250000000 : ℚ), (-1357782071/10000000000 : ℚ), (25905843031/500000000000 : ℚ), 2⟩,
    ⟨(48673159221/100000000000 : ℚ), (-52901553/312500000 : ℚ), (67989666101/1000000000000 : ℚ), 2⟩,
    ⟨(246880227477/500000000000 : ℚ), (-1972711421/10000000000 : ℚ), (1634167797/20000000000 : ℚ), 2⟩,
    ⟨(500066522777/1000000000000 : ℚ), (-275604453/1250000000 : ℚ), (9324207061/100000000000 : ℚ), 2⟩,
    ⟨(252794532399/500000000000 : ℚ), (-299374773/1250000000 : ℚ), (51401719511/500000000000 : ℚ), 2⟩,
    ⟨(510274895919/1000000000000 : ℚ), (-2547641533/10000000000 : ℚ), (13819548107/125000000000 : ℚ), 2⟩,
    ⟨(20563155561/40000000000 : ℚ), (-2666139237/10000000000 : ℚ), (58312707607/500000000000 : ℚ), 2⟩,
    ⟨(258482204791/500000000000 : ℚ), (-2752990019/10000000000 : ℚ), (121102699933/1000000000000 : ℚ), 2⟩,
    ⟨(10378073369/20000000000 : ℚ), (-2809957589/10000000000 : ℚ), (7753326653/62500000000 : ℚ), 2⟩,
    ⟨(259938994753/500000000000 : ℚ), (-2838167371/10000000000 : ℚ), (31379603619/250000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2841680891/10000000000 : ℚ), (125701096067/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (132498139801/500000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control240.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control240.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate240

namespace DiagonalRamsey.JointInheritedCertificate241
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42472224133/125000000000 : ℚ), (10999004578151/2000000000 : ℚ), (-934928307687763/500000000000 : ℚ), 13⟩,
    ⟨(17001548839/50000000000 : ℚ), (75964608273/125000000 : ℚ), (-51877170215463/250000000000 : ℚ), 10⟩,
    ⟨(340536734271/1000000000000 : ℚ), (135504273573/625000000 : ℚ), (-37260420985707/500000000000 : ℚ), 9⟩,
    ⟨(170646923561/500000000000 : ℚ), (1093065225471/10000000000 : ℚ), (-4735166523983/125000000000 : ℚ), 8⟩,
    ⟨(342300491383/1000000000000 : ℚ), (325909364671/5000000000 : ℚ), (-570083516677/25000000000 : ℚ), 7⟩,
    ⟨(343554241959/1000000000000 : ℚ), (107299199479/2500000000 : ℚ), (-15170881511747/1000000000000 : ℚ), 7⟩,
    ⟨(172526039227/500000000000 : ℚ), (301667975421/10000000000 : ℚ), (-10781082773707/1000000000000 : ℚ), 6⟩,
    ⟨(346790392451/1000000000000 : ℚ), (27753713913/1250000000 : ℚ), (-8026883896539/1000000000000 : ℚ), 6⟩,
    ⟨(174382498099/500000000000 : ℚ), (169090350683/10000000000 : ℚ), (-6186205518123/1000000000000 : ℚ), 5⟩,
    ⟨(175485566351/500000000000 : ℚ), (13219212219/1000000000 : ℚ), (-305972184017/62500000000 : ℚ), 5⟩,
    ⟨(176701743593/500000000000 : ℚ), (105501674743/10000000000 : ℚ), (-1977883430149/500000000000 : ℚ), 5⟩,
    ⟨(44507024987/125000000000 : ℚ), (17121911327/2000000000 : ℚ), (-325029321959/100000000000 : ℚ), 5⟩,
    ⟨(71784576043/200000000000 : ℚ), (17603906371/2500000000 : ℚ), (-1353623169891/500000000000 : ℚ), 4⟩,
    ⟨(180998311029/500000000000 : ℚ), (58569457911/10000000000 : ℚ), (-2280332334003/1000000000000 : ℚ), 4⟩,
    ⟨(11414688141/31250000000 : ℚ), (49171043543/10000000000 : ℚ), (-969323610119/500000000000 : ℚ), 4⟩,
    ⟨(368735189673/1000000000000 : ℚ), (20801043267/5000000000 : ℚ), (-332184423013/200000000000 : ℚ), 4⟩,
    ⟨(186191890823/500000000000 : ℚ), (35426633117/10000000000 : ℚ), (-1432131080503/1000000000000 : ℚ), 4⟩,
    ⟨(376207006653/1000000000000 : ℚ), (30330287727/10000000000 : ℚ), (-620707368173/500000000000 : ℚ), 3⟩,
    ⟨(38019565421/100000000000 : ℚ), (2608180133/1000000000 : ℚ), (-540383555773/500000000000 : ℚ), 3⟩,
    ⟨(96085028829/250000000000 : ℚ), (5627024169/2500000000 : ℚ), (-47209058157/50000000000 : ℚ), 3⟩,
    ⟨(485788007/1250000000 : ℚ), (3895523499/2000000000 : ℚ), (-41353930161/50000000000 : ℚ), 3⟩,
    ⟨(196528094689/500000000000 : ℚ), (4222244287/2500000000 : ℚ), (-725920846287/1000000000000 : ℚ), 3⟩,
    ⟨(397606804549/1000000000000 : ℚ), (14663064313/10000000000 : ℚ), (-637938186729/1000000000000 : ℚ), 3⟩,
    ⟨(402271288283/1000000000000 : ℚ), (6368726777/5000000000 : ℚ), (-280468929267/500000000000 : ℚ), 3⟩,
    ⟨(407038403429/1000000000000 : ℚ), (11062383117/10000000000 : ℚ), (-493165770211/1000000000000 : ℚ), 3⟩,
    ⟨(411896665589/1000000000000 : ℚ), (1919563509/2000000000 : ℚ), (-86641084359/200000000000 : ℚ), 3⟩,
    ⟨(208417185393/500000000000 : ℚ), (8311273457/10000000000 : ℚ), (-94975749623/250000000000 : ℚ), 3⟩,
    ⟨(421839623653/1000000000000 : ℚ), (1794047569/2500000000 : ℚ), (-332311172961/1000000000000 : ℚ), 3⟩,
    ⟨(426900366099/1000000000000 : ℚ), (1542673841/2500000000 : ℚ), (-144823228517/500000000000 : ℚ), 3⟩,
    ⟨(27000275397/62500000000 : ℚ), (131916457/250000000 : ℚ), (-125628248109/500000000000 : ℚ), 3⟩,
    ⟨(109284862083/250000000000 : ℚ), (4478959411/10000000000 : ℚ), (-216594741887/1000000000000 : ℚ), 2⟩,
    ⟨(55286640159/125000000000 : ℚ), (941229821/2500000000 : ℚ), (-185200658043/1000000000000 : ℚ), 2⟩,
    ⟨(111863252381/250000000000 : ℚ), (3123849539/10000000000 : ℚ), (-156684123267/1000000000000 : ℚ), 2⟩,
    ⟨(90521336493/200000000000 : ℚ), (509339373/2000000000 : ℚ), (-65356520353/500000000000 : ℚ), 2⟩,
    ⟨(114435431111/250000000000 : ℚ), (2025758601/10000000000 : ℚ), (-107003423807/1000000000000 : ℚ), 2⟩,
    ⟨(462845764697/1000000000000 : ℚ), (1554454031/10000000000 : ℚ), (-21327851951/250000000000 : ℚ), 2⟩,
    ⟨(467906507143/1000000000000 : ℚ), (11271393/100000000 : ℚ), (-65426771269/1000000000000 : ℚ), 2⟩,
    ⟨(472911760011/1000000000000 : ℚ), (11546199/156250000 : ℚ), (-23583825001/500000000000 : ℚ), 2⟩,
    ⟨(477849465207/1000000000000 : ℚ), (77142299/2000000000 : ℚ), (-15188099361/500000000000 : ℚ), 2⟩,
    ⟨(60338465921/125000000000 : ℚ), (63770043/10000000000 : ℚ), (-1864376399/125000000000 : ℚ), 2⟩,
    ⟨(243737421257/500000000000 : ℚ), (-46004759/2000000000 : ℚ), (-66415177/100000000000 : ℚ), 2⟩,
    ⟨(492139326247/1000000000000 : ℚ), (-124604649/2500000000 : ℚ), (12481319521/1000000000000 : ℚ), 2⟩,
    ⟨(248344970709/500000000000 : ℚ), (-14876271/200000000 : ℚ), (24613418811/1000000000000 : ℚ), 2⟩,
    ⟨(125278931299/250000000000 : ℚ), (-193661447/2000000000 : ℚ), (17906490287/500000000000 : ℚ), 2⟩,
    ⟨(505406015481/1000000000000 : ℚ), (-1173738649/10000000000 : ℚ), (180277849/3906250000 : ℚ), 2⟩,
    ⟨(254775238293/500000000000 : ℚ), (-340430461/2500000000 : ℚ), (27845263467/500000000000 : ℚ), 2⟩,
    ⟨(513539124143/1000000000000 : ℚ), (-766837631/5000000000 : ℚ), (64486433731/1000000000000 : ℚ), 2⟩,
    ⟨(10347246983/20000000000 : ℚ), (-1690846663/10000000000 : ℚ), (36293807621/500000000000 : ℚ), 2⟩,
    ⟨(521010941123/1000000000000 : ℚ), (-1834334363/10000000000 : ℚ), (80037118449/1000000000000 : ℚ), 2⟩,
    ⟨(104895222057/200000000000 : ℚ), (-491276343/2500000000 : ℚ), (43436469217/500000000000 : ℚ), 2⟩,
    ⟨(527749508739/1000000000000 : ℚ), (-521002731/2500000000 : ℚ), (46564296443/500000000000 : ℚ), 2⟩,
    ⟨(265411625291/500000000000 : ℚ), (-2191799791/10000000000 : ℚ), (6177101099/62500000000 : ℚ), 2⟩,
    ⟨(5336899309/10000000000 : ℚ), (-57228243/250000000 : ℚ), (104013995337/1000000000000 : ℚ), 2⟩,
    ⟨(53634264361/100000000000 : ℚ), (-2376577253/10000000000 : ℚ), (54346263239/500000000000 : ℚ), 2⟩,
    ⟨(107754999619/200000000000 : ℚ), (-1227323081/5000000000 : ℚ), (112889149413/1000000000000 : ℚ), 2⟩,
    ⟨(270490567299/500000000000 : ℚ), (-630943673/2500000000 : ℚ), (116621218327/1000000000000 : ℚ), 2⟩,
    ⟨(108591147669/200000000000 : ℚ), (-1292170877/5000000000 : ℚ), (2997593549/25000000000 : ℚ), 2⟩,
    ⟨(272347026171/500000000000 : ℚ), (-164792013/625000000 : ℚ), (6137479457/50000000000 : ℚ), 2⟩,
    ⟨(273095944419/500000000000 : ℚ), (-670260333/2500000000 : ℚ), (125169663591/1000000000000 : ℚ), 2⟩,
    ⟨(273722819707/500000000000 : ℚ), (-2717678573/10000000000 : ℚ), (127173051951/1000000000000 : ℚ), 2⟩,
    ⟨(274226141837/500000000000 : ℚ), (-1373385321/5000000000 : ℚ), (32191786607/250000000000 : ℚ), 2⟩,
    ⟨(274604698263/500000000000 : ℚ), (-2768464017/10000000000 : ℚ), (129957744747/1000000000000 : ℚ), 2⟩,
    ⟨(17178598563/31250000000 : ℚ), (-2782866891/10000000000 : ℚ), (65374564021/500000000000 : ℚ), 2⟩,
    ⟨(549968337733/1000000000000 : ℚ), (-2790050609/10000000000 : ℚ), (131144118823/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-558189549/2000000000 : ℚ), (131193459861/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (4997013207/20000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control241.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control241.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate241

namespace DiagonalRamsey.JointInheritedCertificate242
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(70455319053/125000000000 : ℚ), (20244332037409/10000000000 : ℚ), (-142846368146277/125000000000 : ℚ), 11⟩,
    ⟨(564779992263/1000000000000 : ℚ), (1109386317549/5000000000 : ℚ), (-126396331437101/1000000000000 : ℚ), 8⟩,
    ⟨(567043917773/1000000000000 : ℚ), (390522847787/5000000000 : ℚ), (-45087146818533/1000000000000 : ℚ), 7⟩,
    ⟨(114082505223/200000000000 : ℚ), (386918146041/10000000000 : ℚ), (-11343315135967/500000000000 : ℚ), 6⟩,
    ⟨(143713343937/250000000000 : ℚ), (225852992837/10000000000 : ℚ), (-1683677627917/125000000000 : ℚ), 5⟩,
    ⟨(580323698863/1000000000000 : ℚ), (3626082971/250000000 : ℚ), (-8804864223317/1000000000000 : ℚ), 5⟩,
    ⟨(293385406629/500000000000 : ℚ), (24765554809/2500000000 : ℚ), (-1224654901313/200000000000 : ℚ), 4⟩,
    ⟨(9283322339/15625000000 : ℚ), (112915869/16000000 : ℚ), (-277629368487/62500000000 : ℚ), 4⟩,
    ⟨(301169124931/500000000000 : ℚ), (25900765179/5000000000 : ℚ), (-1659877553913/500000000000 : ℚ), 4⟩,
    ⟨(152827162287/250000000000 : ℚ), (19423658417/5000000000 : ℚ), (-2534079797801/1000000000000 : ℚ), 3⟩,
    ⟨(620957437703/1000000000000 : ℚ), (29578238823/10000000000 : ℚ), (-49081680793/25000000000 : ℚ), 3⟩,
    ⟨(631191692421/1000000000000 : ℚ), (22751390561/10000000000 : ℚ), (-307211283103/200000000000 : ℚ), 3⟩,
    ⟨(320956425917/500000000000 : ℚ), (17603271481/10000000000 : ℚ), (-1208495170369/1000000000000 : ℚ), 3⟩,
    ⟨(163254416329/250000000000 : ℚ), (13644507927/10000000000 : ℚ), (-952282774697/1000000000000 : ℚ), 3⟩,
    ⟨(664399187441/1000000000000 : ℚ), (10550159261/10000000000 : ℚ), (-374265599493/500000000000 : ℚ), 2⟩,
    ⟨(168986951983/250000000000 : ℚ), (4048976351/5000000000 : ℚ), (-584246461001/1000000000000 : ℚ), 2⟩,
    ⟨(343776153629/500000000000 : ℚ), (6131939647/10000000000 : ℚ), (-450254490601/1000000000000 : ℚ), 2⟩,
    ⟨(174775231937/250000000000 : ℚ), (567536453/1250000000 : ℚ), (-169965740149/500000000000 : ℚ), 2⟩,
    ⟨(355241224937/500000000000 : ℚ), (810322017/2500000000 : ℚ), (-248400961679/1000000000000 : ℚ), 2⟩,
    ⟨(144317452671/200000000000 : ℚ), (2174221069/10000000000 : ℚ), (-86005721117/500000000000 : ℚ), 2⟩,
    ⟨(45769276423/62500000000 : ℚ), (646672309/5000000000 : ℚ), (-53994023599/500000000000 : ℚ), 2⟩,
    ⟨(371271338743/500000000000 : ℚ), (56376159/1000000000 : ℚ), (-27097558901/500000000000 : ℚ), 2⟩,
    ⟨(376095733021/500000000000 : ℚ), (-8285053/2000000000 : ℚ), (-8971341249/1000000000000 : ℚ), 2⟩,
    ⟨(761161865327/1000000000000 : ℚ), (-27155967/500000000 : ℚ), (14493313489/500000000000 : ℚ), 2⟩,
    ⟨(769367485493/1000000000000 : ℚ), (-11970783/125000000 : ℚ), (30353730043/500000000000 : ℚ), 2⟩,
    ⟨(194182325483/250000000000 : ℚ), (-1297870803/10000000000 : ℚ), (17401093627/200000000000 : ℚ), 2⟩,
    ⟨(783176416327/1000000000000 : ℚ), (-1573787973/10000000000 : ℚ), (54262329667/500000000000 : ℚ), 2⟩,
    ⟨(394323369721/500000000000 : ℚ), (-896620443/5000000000 : ℚ), (31442782809/250000000000 : ℚ), 2⟩,
    ⟨(31723503563/40000000000 : ℚ), (-392449299/2000000000 : ℚ), (69568468721/500000000000 : ℚ), 2⟩,
    ⟨(99557024677/125000000000 : ℚ), (-2085310493/10000000000 : ℚ), (148917597263/1000000000000 : ℚ), 2⟩,
    ⟨(798720122927/1000000000000 : ℚ), (-2165642347/10000000000 : ℚ), (19415591947/125000000000 : ℚ), 2⟩,
    ⟨(399928781383/500000000000 : ℚ), (-68915753/312500000 : ℚ), (19811856317/125000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1381399/6250000 : ℚ), (39722389937/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (108227522949/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control242.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control242.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate242

namespace DiagonalRamsey.JointInheritedCertificate243
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117019156409/500000000000 : ℚ), (11955324344081/10000000000 : ℚ), (-17530384243291/62500000000 : ℚ), 11⟩,
    ⟨(58709245527/250000000000 : ℚ), (651178097919/5000000000 : ℚ), (-6201865626919/200000000000 : ℚ), 8⟩,
    ⟨(47285325813/200000000000 : ℚ), (227201599213/5000000000 : ℚ), (-690690098261/62500000000 : ℚ), 7⟩,
    ⟨(238791944521/1000000000000 : ℚ), (111361247953/5000000000 : ℚ), (-111042961697/20000000000 : ℚ), 6⟩,
    ⟨(120955074597/500000000000 : ℚ), (64230842989/5000000000 : ℚ), (-1644510374039/500000000000 : ℚ), 5⟩,
    ⟨(24575121307/100000000000 : ℚ), (81420057581/10000000000 : ℚ), (-1071601167671/500000000000 : ℚ), 5⟩,
    ⟨(125139072301/500000000000 : ℚ), (27405929099/5000000000 : ℚ), (-1483946183861/1000000000000 : ℚ), 4⟩,
    ⟨(255447346967/1000000000000 : ℚ), (19214263153/5000000000 : ℚ), (-33439784697/31250000000 : ℚ), 4⟩,
    ⟨(261209037919/1000000000000 : ℚ), (27701539253/10000000000 : ℚ), (-198304802571/250000000000 : ℚ), 4⟩,
    ⟨(10700309169/40000000000 : ℚ), (20342214329/10000000000 : ℚ), (-299418836409/500000000000 : ℚ), 3⟩,
    ⟨(68570690261/250000000000 : ℚ), (15103773199/10000000000 : ℚ), (-91409131889/200000000000 : ℚ), 3⟩,
    ⟨(70367221529/250000000000 : ℚ), (1407703467/1250000000 : ℚ), (-35036188173/100000000000 : ℚ), 3⟩,
    ⟨(288996898129/1000000000000 : ℚ), (8372464223/10000000000 : ℚ), (-134005165493/500000000000 : ℚ), 3⟩,
    ⟨(296794298211/1000000000000 : ℚ), (1230700941/2000000000 : ℚ), (-203058880739/1000000000000 : ℚ), 3⟩,
    ⟨(152392996569/500000000000 : ℚ), (4418053491/10000000000 : ℚ), (-150887880011/1000000000000 : ℚ), 3⟩,
    ⟨(156447509259/500000000000 : ℚ), (3039246913/10000000000 : ℚ), (-108326385889/1000000000000 : ℚ), 2⟩,
    ⟨(80260820001/250000000000 : ℚ), (482187819/2500000000 : ℚ), (-73142931873/1000000000000 : ℚ), 2⟩,
    ⟨(41144038173/125000000000 : ℚ), (40950747/400000000 : ℚ), (-4373373387/100000000000 : ℚ), 2⟩,
    ⟨(337144000311/1000000000000 : ℚ), (55770353/2000000000 : ℚ), (-18925423629/1000000000000 : ℚ), 2⟩,
    ⟨(172470700197/500000000000 : ℚ), (-67879607/2000000000 : ℚ), (6729349/3125000000 : ℚ), 2⟩,
    ⟨(176234706203/500000000000 : ℚ), (-213962343/2500000000 : ℚ), (20157905979/1000000000000 : ℚ), 2⟩,
    ⟨(359655537479/1000000000000 : ℚ), (-644613493/5000000000 : ℚ), (35585710517/1000000000000 : ℚ), 2⟩,
    ⟨(183215284649/500000000000 : ℚ), (-826880217/5000000000 : ℚ), (48817643523/1000000000000 : ℚ), 2⟩,
    ⟨(372729260603/1000000000000 : ℚ), (-39206849/200000000 : ℚ), (60146793827/1000000000000 : ℚ), 2⟩,
    ⟨(75698190311/200000000000 : ℚ), (-554338677/2500000000 : ℚ), (69799434723/1000000000000 : ℚ), 2⟩,
    ⟨(1198937981/3125000000 : ℚ), (-2431263803/10000000000 : ℚ), (77950350071/1000000000000 : ℚ), 2⟩,
    ⟨(388187085453/1000000000000 : ℚ), (-325881963/1250000000 : ℚ), (1323971719/15625000000 : ℚ), 2⟩,
    ⟨(24501759333/62500000000 : ℚ), (-2748554583/10000000000 : ℚ), (90253954209/1000000000000 : ℚ), 2⟩,
    ⟨(395146354001/1000000000000 : ℚ), (-1429328651/5000000000 : ℚ), (23646837499/250000000000 : ℚ), 2⟩,
    ⟨(397511669457/1000000000000 : ℚ), (-2939504993/10000000000 : ℚ), (2444788361/25000000000 : ℚ), 2⟩,
    ⟨(199550658207/500000000000 : ℚ), (-2992606437/10000000000 : ℚ), (49953293297/500000000000 : ℚ), 2⟩,
    ⟨(49987498213/125000000000 : ℚ), (-188682701/625000000 : ℚ), (25239485507/250000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3022201971/10000000000 : ℚ), (25272268953/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (161238195269/500000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control243.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control243.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate243

namespace DiagonalRamsey.JointInheritedCertificate244
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(247395769023/1000000000000 : ℚ), (6075970513009/5000000000 : ℚ), (-301359751405807/1000000000000 : ℚ), 11⟩,
    ⟨(248226404701/1000000000000 : ℚ), (132407920413/1000000000 : ℚ), (-16658769753279/500000000000 : ℚ), 8⟩,
    ⟨(249879676581/1000000000000 : ℚ), (231067967351/5000000000 : ℚ), (-11874030729151/1000000000000 : ℚ), 7⟩,
    ⟨(252339662751/1000000000000 : ℚ), (14162643771/625000000 : ℚ), (-5965954977579/1000000000000 : ℚ), 6⟩,
    ⟨(1277913361/5000000000 : ℚ), (65378799193/5000000000 : ℚ), (-706890546313/200000000000 : ℚ), 5⟩,
    ⟨(129788736487/500000000000 : ℚ), (5182246199/625000000 : ℚ), (-575854179209/250000000000 : ℚ), 5⟩,
    ⟨(264285592957/1000000000000 : ℚ), (446794681/80000000 : ℚ), (-1595161631797/1000000000000 : ℚ), 4⟩,
    ⟨(269661690381/1000000000000 : ℚ), (39180087779/10000000000 : ℚ), (-575280075939/500000000000 : ℚ), 4⟩,
    ⟨(34456748811/125000000000 : ℚ), (883238841/312500000 : ℚ), (-85318389277/100000000000 : ℚ), 4⟩,
    ⟨(282204784153/1000000000000 : ℚ), (2596626527/1250000000 : ℚ), (-128885275421/200000000000 : ℚ), 3⟩,
    ⟨(289250983651/1000000000000 : ℚ), (7720200903/5000000000 : ℚ), (-492180407041/1000000000000 : ℚ), 3⟩,
    ⟨(29672473023/100000000000 : ℚ), (180139109/156250000 : ℚ), (-377663100661/1000000000000 : ℚ), 3⟩,
    ⟨(38069255953/125000000000 : ℚ), (8587584173/10000000000 : ℚ), (-7232393011/25000000000 : ℚ), 3⟩,
    ⟨(78165883807/250000000000 : ℚ), (1265749433/2000000000 : ℚ), (-54907335451/250000000000 : ℚ), 3⟩,
    ⟨(320975094241/1000000000000 : ℚ), (912480089/2000000000 : ℚ), (-16369948977/100000000000 : ℚ), 3⟩,
    ⟨(329408679809/1000000000000 : ℚ), (394925461/1250000000 : ℚ), (-59049050837/500000000000 : ℚ), 2⟩,
    ⟨(33788307189/100000000000 : ℚ), (1014904381/5000000000 : ℚ), (-80426411727/1000000000000 : ℚ), 2⟩,
    ⟨(346316657457/1000000000000 : ℚ), (69352931/625000000 : ℚ), (-48959968657/1000000000000 : ℚ), 2⟩,
    ⟨(354628216471/1000000000000 : ℚ), (44075627/1250000000 : ℚ), (-22436705317/1000000000000 : ℚ), 2⟩,
    ⟨(181368852037/500000000000 : ℚ), (-137683123/5000000000 : ℚ), (81040567/1000000000000 : ℚ), 2⟩,
    ⟨(370567021469/1000000000000 : ℚ), (-799631679/10000000000 : ℚ), (3859733273/200000000000 : ℚ), 2⟩,
    ⟨(23627548003/62500000000 : ℚ), (-619649357/5000000000 : ℚ), (35752238469/1000000000000 : ℚ), 2⟩,
    ⟨(192543483773/500000000000 : ℚ), (-1608894877/10000000000 : ℚ), (4985235883/100000000000 : ℚ), 2⟩,
    ⟨(391637761211/1000000000000 : ℚ), (-959773271/5000000000 : ℚ), (1934853251/31250000000 : ℚ), 2⟩,
    ⟨(198815030659/500000000000 : ℚ), (-1089909691/5000000000 : ℚ), (1443709863/20000000000 : ℚ), 2⟩,
    ⟨(201503079371/500000000000 : ℚ), (-2396325109/10000000000 : ℚ), (40425966807/500000000000 : ℚ), 2⟩,
    ⟨(16308571149/40000000000 : ℚ), (-2574163869/10000000000 : ℚ), (22015100371/250000000000 : ℚ), 2⟩,
    ⟨(411709079499/1000000000000 : ℚ), (-169828063/625000000 : ℚ), (93922538893/1000000000000 : ℚ), 2⟩,
    ⟨(414952088947/1000000000000 : ℚ), (-707136501/2500000000 : ℚ), (9852267079/100000000000 : ℚ), 2⟩,
    ⟨(208706037559/500000000000 : ℚ), (-363780921/1250000000 : ℚ), (20384577687/200000000000 : ℚ), 2⟩,
    ⟨(209532673499/500000000000 : ℚ), (-59277969/200000000 : ℚ), (20833354143/200000000000 : ℚ), 2⟩,
    ⟨(104973995669/250000000000 : ℚ), (-373810539/1250000000 : ℚ), (4211279781/40000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2993796437/10000000000 : ℚ), (13177635821/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (313207331399/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control244.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control244.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate244

namespace DiagonalRamsey.JointInheritedCertificate265
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63949584969/250000000000 : ℚ), (12146691005383/10000000000 : ℚ), (-38930438422907/125000000000 : ℚ), 11⟩,
    ⟨(4009947859/15625000000 : ℚ), (1323917024489/10000000000 : ℚ), (-34431797601647/1000000000000 : ℚ), 8⟩,
    ⟨(258305235667/1000000000000 : ℚ), (462277168763/10000000000 : ℚ), (-766920745887/62500000000 : ℚ), 7⟩,
    ⟨(260787988681/1000000000000 : ℚ), (226780950321/10000000000 : ℚ), (-616496610021/100000000000 : ℚ), 6⟩,
    ⟨(1056244047/4000000000 : ℚ), (32731627389/2500000000 : ℚ), (-3652115140603/1000000000000 : ℚ), 5⟩,
    ⟨(268092783873/1000000000000 : ℚ), (83064788529/10000000000 : ℚ), (-37186044639/15625000000 : ℚ), 5⟩,
    ⟨(272844476879/1000000000000 : ℚ), (218660243/39062500 : ℚ), (-1647979052041/1000000000000 : ℚ), 4⟩,
    ⟨(278270329367/1000000000000 : ℚ), (39288194619/10000000000 : ℚ), (-1188533661571/1000000000000 : ℚ), 4⟩,
    ⟨(284318087413/1000000000000 : ℚ), (2835448423/1000000000 : ℚ), (-220311647089/250000000000 : ℚ), 4⟩,
    ⟨(1454647539/5000000000 : ℚ), (10424488793/5000000000 : ℚ), (-665550387113/1000000000000 : ℚ), 3⟩,
    ⟨(59608183787/200000000000 : ℚ), (60561423/39062500 : ℚ), (-508263460221/1000000000000 : ℚ), 3⟩,
    ⟨(152791917021/500000000000 : ℚ), (2316316777/2000000000 : ℚ), (-77994841343/200000000000 : ℚ), 3⟩,
    ⟨(156742805363/500000000000 : ℚ), (8631378707/10000000000 : ℚ), (-298716050209/1000000000000 : ℚ), 3⟩,
    ⟨(80417537639/250000000000 : ℚ), (3182587159/5000000000 : ℚ), (-14174390037/62500000000 : ℚ), 3⟩,
    ⟨(16502931597/50000000000 : ℚ), (287047641/625000000 : ℚ), (-169065449537/1000000000000 : ℚ), 3⟩,
    ⟨(338570269217/1000000000000 : ℚ), (3184807449/10000000000 : ℚ), (-3050467543/25000000000 : ℚ), 3⟩,
    ⟨(86780772667/250000000000 : ℚ), (3281903/16000000 : ℚ), (-83169977631/1000000000000 : ℚ), 2⟩,
    ⟨(71126945589/200000000000 : ℚ), (1127788161/10000000000 : ℚ), (-5073605053/100000000000 : ℚ), 2⟩,
    ⟨(364023209329/1000000000000 : ℚ), (46019917/1250000000 : ℚ), (-23411493669/1000000000000 : ℚ), 2⟩,
    ⟨(372207749159/1000000000000 : ℚ), (-130929963/5000000000 : ℚ), (-226112023/1000000000000 : ℚ), 2⟩,
    ⟨(190054762921/500000000000 : ℚ), (-157546341/2000000000 : ℚ), (19550253693/1000000000000 : ℚ), 2⟩,
    ⟨(7753048819/20000000000 : ℚ), (-1228646263/10000000000 : ℚ), (9118185459/250000000000 : ℚ), 2⟩,
    ⟨(78952770417/200000000000 : ℚ), (-99950069/625000000 : ℚ), (50966782167/1000000000000 : ℚ), 2⟩,
    ⟨(50171909059/125000000000 : ℚ), (-1910581209/10000000000 : ℚ), (63360257279/1000000000000 : ℚ), 2⟩,
    ⟨(203711515259/500000000000 : ℚ), (-271425107/1250000000 : ℚ), (18476676679/250000000000 : ℚ), 2⟩,
    ⟨(206424441503/500000000000 : ℚ), (-298538951/1250000000 : ℚ), (10350288879/125000000000 : ℚ), 2⟩,
    ⟨(104400144003/250000000000 : ℚ), (-641611459/2500000000 : ℚ), (22549617713/250000000000 : ℚ), 2⟩,
    ⟨(84326469627/200000000000 : ℚ), (-2709742501/10000000000 : ℚ), (24052800923/250000000000 : ℚ), 2⟩,
    ⟨(106226342801/250000000000 : ℚ), (-1410593491/5000000000 : ℚ), (20185637323/200000000000 : ℚ), 2⟩,
    ⟨(213694062109/500000000000 : ℚ), (-145149337/500000000 : ℚ), (104414009287/1000000000000 : ℚ), 2⟩,
    ⟨(429056696909/1000000000000 : ℚ), (-2956697767/10000000000 : ℚ), (21342804399/200000000000 : ℚ), 2⟩,
    ⟨(429895020009/1000000000000 : ℚ), (-149165597/500000000 : ℚ), (107857034773/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1493313763/5000000000 : ℚ), (53999793777/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (9946991337/31250000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control265.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control265.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate265

namespace DiagonalRamsey.JointInheritedCertificate266
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(262656681699/1000000000000 : ℚ), (1225173920343/1000000000 : ℚ), (-161276742528797/500000000000 : ℚ), 11⟩,
    ⟨(131755061813/500000000000 : ℚ), (1335524784933/10000000000 : ℚ), (-89150980053/2500000000 : ℚ), 8⟩,
    ⟨(132604394183/500000000000 : ℚ), (29150644801/625000000 : ℚ), (-635441085953/50000000000 : ℚ), 7⟩,
    ⟨(267736316851/1000000000000 : ℚ), (114427769063/5000000000 : ℚ), (-159631780523/25000000000 : ℚ), 6⟩,
    ⟨(271068367599/1000000000000 : ℚ), (132154799783/10000000000 : ℚ), (-3782805222853/1000000000000 : ℚ), 5⟩,
    ⟨(13758642557/50000000000 : ℚ), (83865560473/10000000000 : ℚ), (-616310677329/250000000000 : ℚ), 5⟩,
    ⟨(140005119527/500000000000 : ℚ), (2261311401/400000000 : ℚ), (-853619263969/500000000000 : ℚ), 4⟩,
    ⟨(285533944651/1000000000000 : ℚ), (620173367/156250000 : ℚ), (-615720886117/500000000000 : ℚ), 4⟩,
    ⟨(145845385813/500000000000 : ℚ), (3582006463/1250000000 : ℚ), (-228309012559/250000000000 : ℚ), 4⟩,
    ⟨(298421426369/1000000000000 : ℚ), (10540138663/5000000000 : ℚ), (-344946582743/500000000000 : ℚ), 3⟩,
    ⟨(305661088997/1000000000000 : ℚ), (1960574551/1250000000 : ℚ), (-65880949637/125000000000 : ℚ), 3⟩,
    ⟨(313340037601/1000000000000 : ℚ), (11725288137/10000000000 : ℚ), (-80918989997/200000000000 : ℚ), 3⟩,
    ⟨(80346079927/250000000000 : ℚ), (4373553351/5000000000 : ℚ), (-310141362681/1000000000000 : ℚ), 3⟩,
    ⟨(329716464483/1000000000000 : ℚ), (807436301/1250000000 : ℚ), (-117856487263/500000000000 : ℚ), 3⟩,
    ⟨(169128114409/500000000000 : ℚ), (4670471099/10000000000 : ℚ), (-87997434359/500000000000 : ℚ), 3⟩,
    ⟨(346921370113/1000000000000 : ℚ), (3249498199/10000000000 : ℚ), (-63668898383/500000000000 : ℚ), 3⟩,
    ⟨(177814219161/500000000000 : ℚ), (1052794599/5000000000 : ℚ), (-87172618671/1000000000000 : ℚ), 2⟩,
    ⟨(182146789809/500000000000 : ℚ), (293499741/2500000000 : ℚ), (-53651798667/1000000000000 : ℚ), 2⟩,
    ⟨(372833343953/1000000000000 : ℚ), (407820581/10000000000 : ℚ), (-12711304827/500000000000 : ℚ), 2⟩,
    ⟨(47645686091/125000000000 : ℚ), (-227456569/10000000000 : ℚ), (-1479488617/1000000000000 : ℚ), 2⟩,
    ⟨(77841954167/200000000000 : ℚ), (-378779937/5000000000 : ℚ), (295852249/15625000000 : ℚ), 2⟩,
    ⟨(198444359719/500000000000 : ℚ), (-600942199/5000000000 : ℚ), (36395205989/1000000000000 : ℚ), 2⟩,
    ⟨(202064191033/500000000000 : ℚ), (-1575187257/10000000000 : ℚ), (10268774021/200000000000 : ℚ), 2⟩,
    ⟨(41085903681/100000000000 : ℚ), (-11804867/62500000 : ℚ), (8015107441/125000000000 : ℚ), 2⟩,
    ⟨(83403172757/200000000000 : ℚ), (-2151371853/10000000000 : ℚ), (74989467019/1000000000000 : ℚ), 2⟩,
    ⟨(422539569381/1000000000000 : ℚ), (-94787849/400000000 : ℚ), (84153532511/1000000000000 : ℚ), 2⟩,
    ⟨(85475391459/200000000000 : ℚ), (-1274472829/5000000000 : ℚ), (91770459583/1000000000000 : ℚ), 2⟩,
    ⟨(107870360209/250000000000 : ℚ), (-2693107169/10000000000 : ℚ), (979609381/10000000000 : ℚ), 2⟩,
    ⟨(3396980403/7812500000 : ℚ), (-175325197/625000000 : ℚ), (102816228973/1000000000000 : ℚ), 2⟩,
    ⟨(437341020069/1000000000000 : ℚ), (-1443734407/5000000000 : ℚ), (106403598623/1000000000000 : ℚ), 2⟩,
    ⟨(43903968481/100000000000 : ℚ), (-2941479911/10000000000 : ℚ), (21754059709/200000000000 : ℚ), 2⟩,
    ⟨(27493320421/62500000000 : ℚ), (-371030127/1250000000 : ℚ), (109946357463/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-371446853/1250000000 : ℚ), (110093027169/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (78375734423/250000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control266.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control266.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate266

namespace DiagonalRamsey.JointInheritedCertificate267
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69128734333/250000000000 : ℚ), (3116772571621/2500000000 : ℚ), (-86381975491183/250000000000 : ℚ), 11⟩,
    ⟨(138698967807/500000000000 : ℚ), (679660434181/5000000000 : ℚ), (-38201006390467/1000000000000 : ℚ), 8⟩,
    ⟨(139577714211/500000000000 : ℚ), (474883245237/10000000000 : ℚ), (-6807372686323/500000000000 : ℚ), 7⟩,
    ⟨(281770490139/1000000000000 : ℚ), (116554168901/5000000000 : ℚ), (-6840837928347/1000000000000 : ℚ), 6⟩,
    ⟨(285217936291/1000000000000 : ℚ), (8417039279/625000000 : ℚ), (-4053058823987/1000000000000 : ℚ), 5⟩,
    ⟨(36183070761/125000000000 : ℚ), (42753458953/5000000000 : ℚ), (-1320855603177/500000000000 : ℚ), 5⟩,
    ⟨(294469482163/1000000000000 : ℚ), (14417953301/2500000000 : ℚ), (-228723428091/125000000000 : ℚ), 4⟩,
    ⟨(150092242219/500000000000 : ℚ), (20258346919/5000000000 : ℚ), (-1320182145501/1000000000000 : ℚ), 4⟩,
    ⟨(306554534317/1000000000000 : ℚ), (29273852139/10000000000 : ℚ), (-979402879601/1000000000000 : ℚ), 4⟩,
    ⟨(156759142369/500000000000 : ℚ), (5388490981/2500000000 : ℚ), (-370126583359/500000000000 : ℚ), 3⟩,
    ⟨(321008670977/1000000000000 : ℚ), (1003427629/625000000 : ℚ), (-70739900917/125000000000 : ℚ), 3⟩,
    ⟨(8223838913/25000000000 : ℚ), (600963857/500000000 : ℚ), (-339737447/781250000 : ℚ), 3⟩,
    ⟨(337276427777/1000000000000 : ℚ), (8983684631/10000000000 : ℚ), (-333809845023/1000000000000 : ℚ), 3⟩,
    ⟨(345897130947/1000000000000 : ℚ), (3326058893/5000000000 : ℚ), (-50842825529/200000000000 : ℚ), 3⟩,
    ⟨(177366321973/500000000000 : ℚ), (4829001707/10000000000 : ℚ), (-190382157129/1000000000000 : ℚ), 3⟩,
    ⟨(181848937977/500000000000 : ℚ), (422661809/1250000000 : ℚ), (-69201747053/500000000000 : ℚ), 3⟩,
    ⟨(186353243443/500000000000 : ℚ), (443249351/2000000000 : ℚ), (-95524629129/1000000000000 : ℚ), 2⟩,
    ⟨(190835859447/500000000000 : ℚ), (1267831741/10000000000 : ℚ), (-7470619817/125000000000 : ℚ), 2⟩,
    ⟨(390507231893/1000000000000 : ℚ), (488194443/10000000000 : ℚ), (-29673853019/1000000000000 : ℚ), 2⟩,
    ⟨(399127935063/1000000000000 : ℚ), (-39472227/2500000000 : ℚ), (-4172517951/1000000000000 : ℚ), 2⟩,
    ⟨(5093135079/12500000000 : ℚ), (-87086233/1250000000 : ℚ), (219394821/12500000000 : ℚ), 2⟩,
    ⟨(415395691863/1000000000000 : ℚ), (-11480237/100000000 : ℚ), (36116833023/1000000000000 : ℚ), 2⟩,
    ⟨(211443039051/500000000000 : ℚ), (-381743791/2500000000 : ℚ), (5199766621/100000000000 : ℚ), 2⟩,
    ⟨(429849828523/1000000000000 : ℚ), (-115319489/625000000 : ℚ), (839171/12800000 : ℚ), 2⟩,
    ⟨(218109939201/500000000000 : ℚ), (-2111349733/10000000000 : ℚ), (7708809559/100000000000 : ℚ), 2⟩,
    ⟨(441934880677/1000000000000 : ℚ), (-1166289419/5000000000 : ℚ), (43400510069/500000000000 : ℚ), 2⟩,
    ⟨(27933737297/62500000000 : ℚ), (-1257059691/5000000000 : ℚ), (11858613751/125000000000 : ℚ), 2⟩,
    ⟨(112796606637/250000000000 : ℚ), (-665014323/2500000000 : ℚ), (50711096043/500000000000 : ℚ), 2⟩,
    ⟨(454633872701/1000000000000 : ℚ), (-1386745597/5000000000 : ℚ), (106559603711/1000000000000 : ℚ), 2⟩,
    ⟨(228624467209/500000000000 : ℚ), (-1428356729/5000000000 : ℚ), (55176999899/500000000000 : ℚ), 2⟩,
    ⟨(18360257089/40000000000 : ℚ), (-116453623/400000000 : ℚ), (112856604187/1000000000000 : ℚ), 2⟩,
    ⟨(459889425507/1000000000000 : ℚ), (-2938403291/10000000000 : ℚ), (28524998297/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-367721813/1250000000 : ℚ), (57127525173/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (75954235143/250000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control267.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control267.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate267

namespace DiagonalRamsey.JointInheritedCertificate268
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(381138141/1250000000 : ℚ), (808189162987/625000000 : ℚ), (-49394860700661/125000000000 : ℚ), 11⟩,
    ⟨(305849355883/1000000000000 : ℚ), (352646985393/2500000000 : ℚ), (-43689571380613/1000000000000 : ℚ), 8⟩,
    ⟨(153859000239/500000000000 : ℚ), (3945114709/80000000 : ℚ), (-1946493891831/125000000000 : ℚ), 7⟩,
    ⟨(77624612629/250000000000 : ℚ), (60568195437/2500000000 : ℚ), (-7825161792051/1000000000000 : ℚ), 6⟩,
    ⟨(157081964371/500000000000 : ℚ), (70049590023/5000000000 : ℚ), (-927413693743/200000000000 : ℚ), 5⟩,
    ⟨(318679134597/1000000000000 : ℚ), (89045011191/10000000000 : ℚ), (-604626826047/200000000000 : ℚ), 5⟩,
    ⟨(162000292091/500000000000 : ℚ), (60127431799/10000000000 : ℚ), (-2094746416733/1000000000000 : ℚ), 4⟩,
    ⟨(330077029027/1000000000000 : ℚ), (21148379509/5000000000 : ℚ), (-1512125153513/1000000000000 : ℚ), 4⟩,
    ⟨(336849949647/1000000000000 : ℚ), (7651477269/2500000000 : ℚ), (-1122603061641/1000000000000 : ℚ), 4⟩,
    ⟨(344254119113/1000000000000 : ℚ), (4515039387/2000000000 : ℚ), (-33973238059/40000000000 : ℚ), 3⟩,
    ⟨(352218231227/1000000000000 : ℚ), (16852869557/10000000000 : ℚ), (-650205968099/1000000000000 : ℚ), 3⟩,
    ⟨(72133117447/200000000000 : ℚ), (790791593/625000000 : ℚ), (-50059592869/100000000000 : ℚ), 3⟩,
    ⟨(369514834481/1000000000000 : ℚ), (379721673/400000000 : ℚ), (-77062852709/200000000000 : ℚ), 3⟩,
    ⟨(94670187469/250000000000 : ℚ), (3533227787/5000000000 : ℚ), (-294588830967/1000000000000 : ℚ), 3⟩,
    ⟨(77615012129/200000000000 : ℚ), (323097857/625000000 : ℚ), (-221904485533/1000000000000 : ℚ), 3⟩,
    ⟨(397607294439/1000000000000 : ℚ), (1831983097/5000000000 : ℚ), (-20348282107/125000000000 : ℚ), 3⟩,
    ⟨(407185650637/1000000000000 : ℚ), (1226551777/5000000000 : ℚ), (-57041012791/500000000000 : ℚ), 2⟩,
    ⟨(416717884431/1000000000000 : ℚ), (73409559/500000000 : ℚ), (-73523373417/1000000000000 : ℚ), 2⟩,
    ⟨(133160061/312500000 : ℚ), (659332279/10000000000 : ℚ), (-39447795879/1000000000000 : ℚ), 2⟩,
    ⟨(87055622119/200000000000 : ℚ), (-10233267/10000000000 : ℚ), (-2123578709/200000000000 : ℚ), 2⟩,
    ⟨(444127357841/1000000000000 : ℚ), (-113589969/2000000000 : ℚ), (13899320267/1000000000000 : ℚ), 2⟩,
    ⟨(452574713849/1000000000000 : ℚ), (-1034538981/10000000000 : ℚ), (34814809787/1000000000000 : ℚ), 2⟩,
    ⟨(460538825963/1000000000000 : ℚ), (-712896287/5000000000 : ℚ), (52674900329/1000000000000 : ℚ), 2⟩,
    ⟨(46794299543/100000000000 : ℚ), (-876917037/5000000000 : ℚ), (67901974001/1000000000000 : ℚ), 2⟩,
    ⟨(9494318321/20000000000 : ℚ), (-405603713/2000000000 : ℚ), (2525743711/31250000000 : ℚ), 2⟩,
    ⟨(96158472179/200000000000 : ℚ), (-281947911/1250000000 : ℚ), (91694969743/1000000000000 : ℚ), 2⟩,
    ⟨(486113810479/1000000000000 : ℚ), (-2442122589/10000000000 : ℚ), (100712770067/1000000000000 : ℚ), 2⟩,
    ⟨(98125803267/200000000000 : ℚ), (-2591937121/10000000000 : ℚ), (21605800893/200000000000 : ℚ), 2⟩,
    ⟨(494294494561/1000000000000 : ℚ), (-541658241/2000000000 : ℚ), (113758859373/1000000000000 : ℚ), 2⟩,
    ⟨(248537472299/500000000000 : ℚ), (-1396800789/5000000000 : ℚ), (117987506929/1000000000000 : ℚ), 2⟩,
    ⟨(498943589193/1000000000000 : ℚ), (-2849573447/10000000000 : ℚ), (30193735293/250000000000 : ℚ), 2⟩,
    ⟨(499882432277/1000000000000 : ℚ), (-2877294591/10000000000 : ℚ), (61079684569/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2880747459/10000000000 : ℚ), (61165996107/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (142026718671/500000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control268.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control268.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate268

namespace DiagonalRamsey.JointInheritedCertificate269
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(319507801999/1000000000000 : ℚ), (6592848484333/5000000000 : ℚ), (-422215038008649/1000000000000 : ℚ), 11⟩,
    ⟨(160236322467/500000000000 : ℚ), (1438732779017/10000000000 : ℚ), (-4668180243377/100000000000 : ℚ), 8⟩,
    ⟨(322393038839/1000000000000 : ℚ), (503163473967/10000000000 : ℚ), (-16639089964537/1000000000000 : ℚ), 7⟩,
    ⟨(32525048927/100000000000 : ℚ), (123653077643/5000000000 : ℚ), (-8361945252891/1000000000000 : ℚ), 6⟩,
    ⟨(329017477419/1000000000000 : ℚ), (143080584513/10000000000 : ℚ), (-495562909403/100000000000 : ℚ), 5⟩,
    ⟨(33365772513/100000000000 : ℚ), (45494812321/5000000000 : ℚ), (-3231263035963/1000000000000 : ℚ), 5⟩,
    ⟨(339126544281/1000000000000 : ℚ), (7684707273/1250000000 : ℚ), (-2239394208887/1000000000000 : ℚ), 4⟩,
    ⟨(172685633577/500000000000 : ℚ), (8655190143/2000000000 : ℚ), (-202122317347/125000000000 : ℚ), 4⟩,
    ⟨(176165876827/500000000000 : ℚ), (31338958781/10000000000 : ℚ), (-600447860017/500000000000 : ℚ), 4⟩,
    ⟨(359940970491/1000000000000 : ℚ), (11568700229/5000000000 : ℚ), (-909034405553/1000000000000 : ℚ), 3⟩,
    ⟨(92031409187/250000000000 : ℚ), (3458463803/2000000000 : ℚ), (-43525524527/62500000000 : ℚ), 3⟩,
    ⟨(376806929613/1000000000000 : ℚ), (2600301911/2000000000 : ℚ), (-536698145539/1000000000000 : ℚ), 3⟩,
    ⟨(385901243491/1000000000000 : ℚ), (4886787437/5000000000 : ℚ), (-413676286043/1000000000000 : ℚ), 3⟩,
    ⟨(395320995169/1000000000000 : ℚ), (7294609533/10000000000 : ℚ), (-19806275411/62500000000 : ℚ), 3⟩,
    ⟨(404975467287/1000000000000 : ℚ), (2678506003/5000000000 : ℚ), (-119703966421/500000000000 : ℚ), 3⟩,
    ⟨(207385841001/500000000000 : ℚ), (3819433761/10000000000 : ℚ), (-88207999663/500000000000 : ℚ), 3⟩,
    ⟨(424615296411/1000000000000 : ℚ), (2583234697/10000000000 : ℚ), (-124555026041/1000000000000 : ℚ), 2⟩,
    ⟨(217205755563/500000000000 : ℚ), (197264297/1250000000 : ℚ), (-81399515427/1000000000000 : ℚ), 2⟩,
    ⟨(88813196649/200000000000 : ℚ), (23532997/312500000 : ℚ), (-22585633323/500000000000 : ℚ), 2⟩,
    ⟨(226742867461/500000000000 : ℚ), (70456153/10000000000 : ℚ), (-7273104831/500000000000 : ℚ), 2⟩,
    ⟨(462580048801/1000000000000 : ℚ), (-9955461/200000000 : ℚ), (11474523197/1000000000000 : ℚ), 2⟩,
    ⟨(235630670833/500000000000 : ℚ), (-486425479/5000000000 : ℚ), (33652599201/1000000000000 : ℚ), 2⟩,
    ⟨(239723003961/500000000000 : ℚ), (-1370958133/10000000000 : ℚ), (52573764283/1000000000000 : ℚ), 2⟩,
    ⟨(487055224759/1000000000000 : ℚ), (-106532739/625000000 : ℚ), (4293205631/62500000000 : ℚ), 2⟩,
    ⟨(494015711259/1000000000000 : ℚ), (-991572449/5000000000 : ℚ), (82357276287/1000000000000 : ℚ), 2⟩,
    ⟨(125065108533/250000000000 : ℚ), (-276781261/1250000000 : ℚ), (93845524057/1000000000000 : ℚ), 2⟩,
    ⟨(505729253283/1000000000000 : ℚ), (-96143403/400000000 : ℚ), (103368450449/1000000000000 : ℚ), 2⟩,
    ⟨(255184750497/500000000000 : ℚ), (-127778461/500000000 : ℚ), (111089701837/1000000000000 : ℚ), 2⟩,
    ⟨(514136489143/1000000000000 : ℚ), (-2673558561/10000000000 : ℚ), (58566797563/500000000000 : ℚ), 2⟩,
    ⟨(20679757583/40000000000 : ℚ), (-690009691/2500000000 : ℚ), (60796076659/500000000000 : ℚ), 2⟩,
    ⟨(12972858337/25000000000 : ℚ), (-1408382123/5000000000 : ℚ), (124530255541/1000000000000 : ℚ), 2⟩,
    ⟨(103975835283/200000000000 : ℚ), (-2844854449/10000000000 : ℚ), (25197849883/200000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-284835309/1000000000 : ℚ), (126171157609/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (273948239039/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control269.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control269.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate269

namespace DiagonalRamsey.JointInheritedCertificate270
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8548986789/25000000000 : ℚ), (13601416931473/10000000000 : ℚ), (-466102213607653/1000000000000 : ℚ), 11⟩,
    ⟨(68592127973/200000000000 : ℚ), (1484679885717/10000000000 : ℚ), (-5153567948211/100000000000 : ℚ), 8⟩,
    ⟨(344953334677/1000000000000 : ℚ), (259765421503/5000000000 : ℚ), (-18370341391193/1000000000000 : ℚ), 7⟩,
    ⟨(43489795657/125000000000 : ℚ), (63881654821/2500000000 : ℚ), (-923292978967/100000000000 : ℚ), 6⟩,
    ⟨(70365435347/200000000000 : ℚ), (73975644079/5000000000 : ℚ), (-2736324224917/500000000000 : ℚ), 5⟩,
    ⟨(2853137001/8000000000 : ℚ), (94167672611/10000000000 : ℚ), (-3569163387327/1000000000000 : ℚ), 5⟩,
    ⟨(362316839839/1000000000000 : ℚ), (796064797/125000000 : ℚ), (-2474334331043/1000000000000 : ℚ), 4⟩,
    ⟨(184398335137/500000000000 : ℚ), (11219380281/2500000000 : ℚ), (-893690791411/500000000000 : ℚ), 4⟩,
    ⟨(376019212119/1000000000000 : ℚ), (32538425531/10000000000 : ℚ), (-265645859171/200000000000 : ℚ), 4⟩,
    ⟨(95978727087/250000000000 : ℚ), (24057661221/10000000000 : ℚ), (-1006230503189/1000000000000 : ℚ), 3⟩,
    ⟨(392407719091/1000000000000 : ℚ), (4502967801/2500000000 : ℚ), (-385860976271/500000000000 : ℚ), 3⟩,
    ⟨(401415853937/1000000000000 : ℚ), (542913227/400000000 : ℚ), (-595647023223/1000000000000 : ℚ), 3⟩,
    ⟨(51356569953/125000000000 : ℚ), (5116530817/5000000000 : ℚ), (-92017993199/200000000000 : ℚ), 3⟩,
    ⟨(210313477759/500000000000 : ℚ), (7668277167/10000000000 : ℚ), (-35352102713/100000000000 : ℚ), 3⟩,
    ⟨(430644908841/1000000000000 : ℚ), (2831962359/5000000000 : ℚ), (-268251719129/1000000000000 : ℚ), 3⟩,
    ⟨(110202485307/250000000000 : ℚ), (814771107/2000000000 : ℚ), (-9949978703/50000000000 : ℚ), 2⟩,
    ⟨(22551207893/50000000000 : ℚ), (2796025687/10000000000 : ℚ), (-142042075891/1000000000000 : ℚ), 2⟩,
    ⟨(461189190247/1000000000000 : ℚ), (439416337/2500000000 : ℚ), (-47349356713/500000000000 : ℚ), 2⟩,
    ⟨(471207143571/1000000000000 : ℚ), (452965179/5000000000 : ℚ), (-3437710963/62500000000 : ℚ), 2⟩,
    ⟨(60122692433/125000000000 : ℚ), (20184213/1000000000 : ℚ), (-21491144149/1000000000000 : ℚ), 2⟩,
    ⟨(490418245151/1000000000000 : ℚ), (-47967279/1250000000 : ℚ), (6943991919/1000000000000 : ℚ), 2⟩,
    ⟨(499426379997/1000000000000 : ℚ), (-872842671/10000000000 : ℚ), (31146237057/1000000000000 : ℚ), 2⟩,
    ⟨(25395959537/50000000000 : ℚ), (-1282286751/10000000000 : ℚ), (3235348973/62500000000 : ℚ), 2⟩,
    ⟨(51581488697/100000000000 : ℚ), (-162499973/1000000000 : ℚ), (69305715693/1000000000000 : ℚ), 2⟩,
    ⟨(104607485763/200000000000 : ℚ), (-477743543/2500000000 : ℚ), (10519813101/125000000000 : ℚ), 2⟩,
    ⟨(529517259249/1000000000000 : ℚ), (-429590509/2000000000 : ℚ), (96629201049/1000000000000 : ℚ), 2⟩,
    ⟨(535191973963/1000000000000 : ℚ), (-2341928753/10000000000 : ℚ), (106955047367/1000000000000 : ℚ), 2⟩,
    ⟨(540006922353/1000000000000 : ℚ), (-1248758551/5000000000 : ℚ), (115319151959/1000000000000 : ℚ), 2⟩,
    ⟨(543915733833/1000000000000 : ℚ), (-104728977/400000000 : ℚ), (121860864703/1000000000000 : ℚ), 2⟩,
    ⟨(546880764411/1000000000000 : ℚ), (-676662457/2500000000 : ℚ), (126683505773/1000000000000 : ℚ), 2⟩,
    ⟨(548873459223/1000000000000 : ℚ), (-2764628797/10000000000 : ℚ), (129860021871/1000000000000 : ℚ), 2⟩,
    ⟨(68734328441/125000000000 : ℚ), (-1396666483/5000000000 : ℚ), (131436952047/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2796907759/10000000000 : ℚ), (131633543239/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (258489053717/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control270.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control270.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate270

namespace DiagonalRamsey.JointInheritedCertificate271
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117785640091/500000000000 : ℚ), (1185014224177/1000000000 : ℚ), (-55965825357633/200000000000 : ℚ), 11⟩,
    ⟨(236362572263/1000000000000 : ℚ), (80696938161/625000000 : ℚ), (-6187176069759/200000000000 : ℚ), 8⟩,
    ⟨(4758750717/20000000000 : ℚ), (450611975749/10000000000 : ℚ), (-11024277537121/1000000000000 : ℚ), 7⟩,
    ⟨(240281003183/1000000000000 : ℚ), (27615874671/1250000000 : ℚ), (-5538243696729/1000000000000 : ℚ), 6⟩,
    ⟨(243370405389/1000000000000 : ℚ), (63730773041/5000000000 : ℚ), (-1640203257959/500000000000 : ℚ), 5⟩,
    ⟨(123587994919/500000000000 : ℚ), (16161315141/2000000000 : ℚ), (-1068632369343/500000000000 : ℚ), 5⟩,
    ⟨(251661106669/1000000000000 : ℚ), (54410317077/10000000000 : ℚ), (-369886915779/250000000000 : ℚ), 4⟩,
    ⟨(128391280879/500000000000 : ℚ), (7630570129/2000000000 : ℚ), (-1066640776167/1000000000000 : ℚ), 4⟩,
    ⟨(26249103269/100000000000 : ℚ), (53720753/19531250 : ℚ), (-12350532907/15625000000 : ℚ), 4⟩,
    ⟨(67182885943/250000000000 : ℚ), (2524712379/1250000000 : ℚ), (-298254398877/500000000000 : ℚ), 3⟩,
    ⟨(68860998867/250000000000 : ℚ), (14994614139/10000000000 : ℚ), (-56881520849/125000000000 : ℚ), 3⟩,
    ⟨(141281871601/500000000000 : ℚ), (2794302517/2500000000 : ℚ), (-348623951249/1000000000000 : ℚ), 3⟩,
    ⟨(72505554977/250000000000 : ℚ), (830579641/1000000000 : ℚ), (-4163646347/15625000000 : ℚ), 3⟩,
    ⟨(297747596381/1000000000000 : ℚ), (6099857921/10000000000 : ℚ), (-201684407473/1000000000000 : ℚ), 3⟩,
    ⟨(15283273651/50000000000 : ℚ), (4374155759/10000000000 : ℚ), (-74824020553/500000000000 : ℚ), 3⟩,
    ⟨(156849798173/500000000000 : ℚ), (15013939/50000000 : ℚ), (-21440094777/200000000000 : ℚ), 3⟩,
    ⟨(321772593359/1000000000000 : ℚ), (949034053/5000000000 : ℚ), (-14423026457/200000000000 : ℚ), 2⟩,
    ⟨(164903358343/500000000000 : ℚ), (199528547/2000000000 : ℚ), (-42791617771/1000000000000 : ℚ), 2⟩,
    ⟨(13508983733/40000000000 : ℚ), (64093303/2500000000 : ℚ), (-18058920581/1000000000000 : ℚ), 2⟩,
    ⟨(345449969797/1000000000000 : ℚ), (-287137/8000000 : ℚ), (2952702863/1000000000000 : ℚ), 2⟩,
    ⟨(44113555813/125000000000 : ℚ), (-436476891/5000000000 : ℚ), (4179458247/200000000000 : ℚ), 2⟩,
    ⟨(360028194237/1000000000000 : ℚ), (-326084177/2500000000 : ℚ), (7254325049/200000000000 : ℚ), 2⟩,
    ⟨(183370322967/500000000000 : ℚ), (-1667217317/10000000000 : ℚ), (618199651/12500000000 : ℚ), 2⟩,
    ⟨(74596231403/200000000000 : ℚ), (-493106851/2500000000 : ℚ), (30371508061/500000000000 : ℚ), 2⟩,
    ⟨(94672406987/250000000000 : ℚ), (-44566059/200000000 : ℚ), (70358739707/1000000000000 : ℚ), 2⟩,
    ⟨(95952770759/250000000000 : ℚ), (-610318981/2500000000 : ℚ), (78477713661/1000000000000 : ℚ), 2⟩,
    ⟨(97074049967/250000000000 : ℚ), (-32703823/125000000 : ℚ), (85234428013/1000000000000 : ℚ), 2⟩,
    ⟨(98025446079/250000000000 : ℚ), (-1378598301/5000000000 : ℚ), (1814635191/20000000000 : ℚ), 2⟩,
    ⟨(395191186523/1000000000000 : ℚ), (-2866829627/10000000000 : ℚ), (19009463939/200000000000 : ℚ), 2⟩,
    ⟨(79506930771/200000000000 : ℚ), (-589466903/2000000000 : ℚ), (9823819147/100000000000 : ℚ), 2⟩,
    ⟨(199554808721/500000000000 : ℚ), (-1500105911/5000000000 : ℚ), (100344398973/1000000000000 : ℚ), 2⟩,
    ⟨(99975227381/250000000000 : ℚ), (-378302229/1250000000 : ℚ), (101391341291/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1514841401/5000000000 : ℚ), (25380480981/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (166250277239/500000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control271.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control271.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate271

namespace DiagonalRamsey.JointInheritedCertificate272
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62257082941/250000000000 : ℚ), (12048312053363/10000000000 : ℚ), (-300750418843803/1000000000000 : ℚ), 11⟩,
    ⟨(7807847217/31250000000 : ℚ), (1313047640489/10000000000 : ℚ), (-2078087088451/62500000000 : ℚ), 8⟩,
    ⟨(251488745489/1000000000000 : ℚ), (91681591987/2000000000 : ℚ), (-2962294352389/250000000000 : ℚ), 7⟩,
    ⟨(50785092817/200000000000 : ℚ), (22483961609/1000000000 : ℚ), (-148825670659/25000000000 : ℚ), 6⟩,
    ⟨(1285688999/5000000000 : ℚ), (129777722839/10000000000 : ℚ), (-1763214981991/500000000000 : ℚ), 5⟩,
    ⟨(261094816083/1000000000000 : ℚ), (20579085831/2500000000 : ℚ), (-2297875636483/1000000000000 : ℚ), 5⟩,
    ⟨(132879202353/500000000000 : ℚ), (554579873/100000000 : ℚ), (-1591047377399/1000000000000 : ℚ), 4⟩,
    ⟨(6777091319/25000000000 : ℚ), (9728066623/2500000000 : ℚ), (-35854424831/31250000000 : ℚ), 4⟩,
    ⟨(55403855039/200000000000 : ℚ), (14036700481/5000000000 : ℚ), (-850565460157/1000000000000 : ℚ), 4⟩,
    ⟨(70877027181/250000000000 : ℚ), (2063364239/1000000000 : ℚ), (-642231215339/1000000000000 : ℚ), 3⟩,
    ⟨(290487662331/1000000000000 : ℚ), (613422177/400000000 : ℚ), (-4902967629/10000000000 : ℚ), 3⟩,
    ⟨(297890719101/1000000000000 : ℚ), (11448160237/10000000000 : ℚ), (-9400432339/25000000000 : ℚ), 3⟩,
    ⟨(305645983549/1000000000000 : ℚ), (2131023233/2500000000 : ℚ), (-287837470791/1000000000000 : ℚ), 3⟩,
    ⟨(313678768239/1000000000000 : ℚ), (6277879327/10000000000 : ℚ), (-218323314569/1000000000000 : ℚ), 3⟩,
    ⟨(40238964133/125000000000 : ℚ), (4520959621/10000000000 : ℚ), (-32504034841/200000000000 : ℚ), 3⟩,
    ⟨(66053106053/200000000000 : ℚ), (3125137663/10000000000 : ℚ), (-23405316659/200000000000 : ℚ), 3⟩,
    ⟨(169329884007/500000000000 : ℚ), (1000550347/5000000000 : ℚ), (-9931033679/125000000000 : ℚ), 2⟩,
    ⟨(69402717043/200000000000 : ℚ), (4239511/39062500 : ℚ), (-1922554759/40000000000 : ℚ), 2⟩,
    ⟨(8881163251/25000000000 : ℚ), (331768987/10000000000 : ℚ), (-2701680699/125000000000 : ℚ), 2⟩,
    ⟨(36327931473/100000000000 : ℚ), (-293373643/10000000000 : ℚ), (839192981/1000000000000 : ℚ), 2⟩,
    ⟨(185517289589/500000000000 : ℚ), (-815326483/10000000000 : ℚ), (624950989/31250000000 : ℚ), 2⟩,
    ⟨(94609408987/250000000000 : ℚ), (-1253087847/10000000000 : ℚ), (36399642087/1000000000000 : ℚ), 2⟩,
    ⟨(77083437911/200000000000 : ℚ), (-1583111/9765625 : ℚ), (12613237697/250000000000 : ℚ), 2⟩,
    ⟨(97976505771/250000000000 : ℚ), (-1930447531/10000000000 : ℚ), (62474307763/1000000000000 : ℚ), 2⟩,
    ⟨(397841645519/1000000000000 : ℚ), (-2189635201/10000000000 : ℚ), (72707905893/1000000000000 : ℚ), 2⟩,
    ⟨(201583446787/500000000000 : ℚ), (-3006559/12500000 : ℚ), (5083912009/62500000000 : ℚ), 2⟩,
    ⟨(101957620549/250000000000 : ℚ), (-322794799/1250000000 : ℚ), (88524025519/1000000000000 : ℚ), 2⟩,
    ⟨(5147343731/12500000000 : ℚ), (-272486279/1000000000 : ℚ), (94363759223/1000000000000 : ℚ), 2⟩,
    ⟨(207499917097/500000000000 : ℚ), (-44307987/156250000 : ℚ), (9894604923/100000000000 : ℚ), 2⟩,
    ⟨(41743655279/100000000000 : ℚ), (-1458542533/5000000000 : ℚ), (102332932799/1000000000000 : ℚ), 2⟩,
    ⟨(83814837467/200000000000 : ℚ), (-2970522019/10000000000 : ℚ), (104567948623/1000000000000 : ℚ), 2⟩,
    ⟨(83979393303/200000000000 : ℚ), (-2997002051/10000000000 : ℚ), (105678746121/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-750075251/2500000000 : ℚ), (105817285147/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (323054190959/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control272.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control272.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate272

namespace DiagonalRamsey.JointInheritedCertificate302
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51504921447/200000000000 : ℚ), (2408572245181/2000000000 : ℚ), (-971417129963/3125000000 : ℚ), 11⟩,
    ⟨(51670924579/200000000000 : ℚ), (1312863852519/10000000000 : ℚ), (-34365766768429/1000000000000 : ℚ), 8⟩,
    ⟨(32500832589/125000000000 : ℚ), (57317740143/1250000000 : ℚ), (-12246619152649/1000000000000 : ℚ), 7⟩,
    ⟨(262464810657/1000000000000 : ℚ), (225014945727/10000000000 : ℚ), (-6152400581683/1000000000000 : ℚ), 6⟩,
    ⟨(265705399403/1000000000000 : ℚ), (129944942081/10000000000 : ℚ), (-3644300390713/1000000000000 : ℚ), 5⟩,
    ⟨(269697218309/1000000000000 : ℚ), (20616081429/2500000000 : ℚ), (-59362411027/25000000000 : ℚ), 5⟩,
    ⟨(274401823977/1000000000000 : ℚ), (55585281263/10000000000 : ℚ), (-205493983037/125000000000 : ℚ), 4⟩,
    ⟨(139886954241/500000000000 : ℚ), (39020275569/10000000000 : ℚ), (-592687833323/500000000000 : ℚ), 4⟩,
    ⟨(285761735713/1000000000000 : ℚ), (28164338931/10000000000 : ℚ), (-878671800187/1000000000000 : ℚ), 4⟩,
    ⟨(146153819811/500000000000 : ℚ), (5177459251/2500000000 : ℚ), (-331693871177/500000000000 : ℚ), 3⟩,
    ⟨(11973943183/40000000000 : ℚ), (96244991/62500000 : ℚ), (-506404903563/1000000000000 : ℚ), 3⟩,
    ⟨(19176046717/62500000000 : ℚ), (460049117/400000000 : ℚ), (-19417426057/50000000000 : ℚ), 3⟩,
    ⟨(314640220773/1000000000000 : ℚ), (1713664057/2000000000 : ℚ), (-297274651113/1000000000000 : ℚ), 3⟩,
    ⟨(161371827577/500000000000 : ℚ), (3157385871/5000000000 : ℚ), (-225498987713/1000000000000 : ℚ), 3⟩,
    ⟨(331049010111/1000000000000 : ℚ), (910361873/2000000000 : ℚ), (-5246865269/31250000000 : ℚ), 3⟩,
    ⟨(42434537567/125000000000 : ℚ), (1575522497/5000000000 : ℚ), (-120960138199/1000000000000 : ℚ), 3⟩,
    ⟨(43493045877/125000000000 : ℚ), (1011497739/5000000000 : ℚ), (-82204640409/1000000000000 : ℚ), 2⟩,
    ⟨(178185828721/500000000000 : ℚ), (551988643/5000000000 : ℚ), (-1994117237/40000000000 : ℚ), 2⟩,
    ⟨(364677012399/1000000000000 : ℚ), (347849047/10000000000 : ℚ), (-22601618583/1000000000000 : ℚ), 2⟩,
    ⟨(18639022339/50000000000 : ℚ), (-279338763/10000000000 : ℚ), (518094427/1000000000000 : ℚ), 2⟩,
    ⟨(380603920081/1000000000000 : ℚ), (-401448143/5000000000 : ℚ), (2529426541/125000000000 : ℚ), 2⟩,
    ⟨(388072087977/1000000000000 : ℚ), (-620952137/5000000000 : ℚ), (18552412181/500000000000 : ℚ), 2⟩,
    ⟨(395113027931/1000000000000 : ℚ), (-1610880359/10000000000 : ℚ), (25775660517/500000000000 : ℚ), 2⟩,
    ⟨(627592081/1562500000 : ℚ), (-960475281/5000000000 : ℚ), (63902487737/1000000000000 : ℚ), 2⟩,
    ⟨(407646759071/1000000000000 : ℚ), (-545171279/2500000000 : ℚ), (74411661073/1000000000000 : ℚ), 2⟩,
    ⟨(51627355447/125000000000 : ℚ), (-1198351159/5000000000 : ℚ), (20818719963/250000000000 : ℚ), 2⟩,
    ⟨(104430862311/250000000000 : ℚ), (-6435273/25000000 : ℚ), (90643442007/1000000000000 : ℚ), 2⟩,
    ⟨(8434305363/20000000000 : ℚ), (-543365071/2000000000 : ℚ), (96633287543/1000000000000 : ℚ), 2⟩,
    ⟨(207497977/488281250 : ℚ), (-282782143/1000000000 : ℚ), (101332032851/1000000000000 : ℚ), 2⟩,
    ⟨(427414006841/1000000000000 : ℚ), (-2909293899/10000000000 : ℚ), (5240211/50000000 : ℚ), 2⟩,
    ⟨(429066044657/1000000000000 : ℚ), (-2962790921/10000000000 : ℚ), (107095162967/1000000000000 : ℚ), 2⟩,
    ⟨(214948030159/500000000000 : ℚ), (-23353901/78125000 : ℚ), (108233647133/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2992601751/10000000000 : ℚ), (21675126831/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (41014716989/125000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control302.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control302.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate302

namespace DiagonalRamsey.JointInheritedCertificate303
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264405464341/1000000000000 : ℚ), (2429062687039/2000000000 : ℚ), (-321868646246793/1000000000000 : ℚ), 12⟩,
    ⟨(66312622619/250000000000 : ℚ), (1324184816593/10000000000 : ℚ), (-1423353273351/40000000000 : ℚ), 8⟩,
    ⟨(133466202341/500000000000 : ℚ), (28910811389/625000000 : ℚ), (-12680922014169/1000000000000 : ℚ), 7⟩,
    ⟨(134717504603/500000000000 : ℚ), (113519154029/5000000000 : ℚ), (-6370776181577/1000000000000 : ℚ), 6⟩,
    ⟨(136367101299/500000000000 : ℚ), (2049107927/156250000 : ℚ), (-754765019489/200000000000 : ℚ), 5⟩,
    ⟨(276798211823/1000000000000 : ℚ), (41622660889/5000000000 : ℚ), (-1229526756479/500000000000 : ℚ), 5⟩,
    ⟨(281587898249/1000000000000 : ℚ), (56127305429/10000000000 : ℚ), (-34053094183/20000000000 : ℚ), 4⟩,
    ⟨(287057134579/1000000000000 : ℚ), (39413196903/10000000000 : ℚ), (-1227866343861/1000000000000 : ℚ), 4⟩,
    ⟨(293153249077/1000000000000 : ℚ), (28458412369/10000000000 : ℚ), (-18206733979/20000000000 : ℚ), 4⟩,
    ⟨(74954383207/250000000000 : ℚ), (20935360953/10000000000 : ℚ), (-85933867903/125000000000 : ℚ), 3⟩,
    ⟨(61397161027/200000000000 : ℚ), (7787761943/5000000000 : ℚ), (-524976672487/1000000000000 : ℚ), 3⟩,
    ⟨(314589031619/1000000000000 : ℚ), (5820644123/5000000000 : ℚ), (-402792247407/1000000000000 : ℚ), 3⟩,
    ⟨(322553989051/1000000000000 : ℚ), (8681081989/10000000000 : ℚ), (-77137522163/250000000000 : ℚ), 3⟩,
    ⟨(165401985269/500000000000 : ℚ), (320331957/500000000 : ℚ), (-234293129067/1000000000000 : ℚ), 3⟩,
    ⟨(42407440531/125000000000 : ℚ), (4627470693/10000000000 : ℚ), (-17471750361/100000000000 : ℚ), 3⟩,
    ⟨(347839218577/1000000000000 : ℚ), (3214003039/10000000000 : ℚ), (-126181397791/1000000000000 : ℚ), 3⟩,
    ⟨(178230213189/500000000000 : ℚ), (103795613/500000000 : ℚ), (-3444830019/40000000000 : ℚ), 2⟩,
    ⟨(182520060353/500000000000 : ℚ), (1148904851/10000000000 : ℚ), (-3293220639/62500000000 : ℚ), 2⟩,
    ⟨(23343479651/62500000000 : ℚ), (193194099/5000000000 : ℚ), (-24543441557/1000000000000 : ℚ), 2⟩,
    ⟨(381745655903/1000000000000 : ℚ), (-122963347/5000000000 : ℚ), (-672612033/1000000000000 : ℚ), 2⟩,
    ⟨(48713826667/125000000000 : ℚ), (-773609013/10000000000 : ℚ), (3935352397/200000000000 : ℚ), 2⟩,
    ⟨(19865691991/50000000000 : ℚ), (-30398489/250000000 : ℚ), (18539790893/500000000000 : ℚ), 2⟩,
    ⟨(404482112127/1000000000000 : ℚ), (-1587591937/10000000000 : ℚ), (51976651841/1000000000000 : ℚ), 2⟩,
    ⟨(205573197939/500000000000 : ℚ), (-949907319/5000000000 : ℚ), (8088487217/125000000000 : ℚ), 2⟩,
    ⟨(3337940083/8000000000 : ℚ), (-1080637251/5000000000 : ℚ), (75536330801/1000000000000 : ℚ), 2⟩,
    ⟨(84542349341/200000000000 : ℚ), (-594666533/2500000000 : ℚ), (84665587231/1000000000000 : ℚ), 2⟩,
    ⟨(106875358283/250000000000 : ℚ), (-159822293/625000000 : ℚ), (23063229741/250000000000 : ℚ), 2⟩,
    ⟨(431565442357/1000000000000 : ℚ), (-2700712787/10000000000 : ℚ), (19683779839/200000000000 : ℚ), 2⟩,
    ⟨(434864635749/1000000000000 : ℚ), (-351542663/1250000000 : ℚ), (6453418621/62500000000 : ℚ), 2⟩,
    ⟨(437367240273/1000000000000 : ℚ), (-1447132933/5000000000 : ℚ), (21365502121/200000000000 : ℚ), 2⟩,
    ⟨(439049154479/1000000000000 : ℚ), (-368506747/1250000000 : ℚ), (2183690713/20000000000 : ℚ), 2⟩,
    ⟨(219947090307/500000000000 : ℚ), (-297470489/1000000000 : ℚ), (27588941517/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-1489012493/5000000000 : ℚ), (110501832749/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (40405146547/125000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control303.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control303.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate303

namespace DiagonalRamsey.JointInheritedCertificate304
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(278310774153/1000000000000 : ℚ), (3088962248161/2500000000 : ℚ), (-344656477283437/1000000000000 : ℚ), 12⟩,
    ⟨(279185130201/1000000000000 : ℚ), (1347449001193/10000000000 : ℚ), (-38103728712391/1000000000000 : ℚ), 8⟩,
    ⟨(280925421771/1000000000000 : ℚ), (470856661111/10000000000 : ℚ), (-13579397351199/1000000000000 : ℚ), 7⟩,
    ⟨(141757444451/500000000000 : ℚ), (231196208187/10000000000 : ℚ), (-170563748383/25000000000 : ℚ), 6⟩,
    ⟨(71732148403/250000000000 : ℚ), (133604605799/10000000000 : ℚ), (-4041789555113/1000000000000 : ℚ), 5⟩,
    ⟨(291133660057/1000000000000 : ℚ), (42425057597/5000000000 : ℚ), (-2633993647941/1000000000000 : ℚ), 5⟩,
    ⟨(296089591149/1000000000000 : ℚ), (7155120677/1250000000 : ℚ), (-1824112387729/1000000000000 : ℚ), 4⟩,
    ⟨(301748658563/1000000000000 : ℚ), (20110198239/5000000000 : ℚ), (-65789469473/50000000000 : ℚ), 4⟩,
    ⟨(61611272477/200000000000 : ℚ), (29062420571/10000000000 : ℚ), (-243967229389/250000000000 : ℚ), 4⟩,
    ⟨(314951955981/1000000000000 : ℚ), (21398438423/10000000000 : ℚ), (-368662086813/500000000000 : ℚ), 3⟩,
    ⟨(322369031013/1000000000000 : ℚ), (1992179489/1250000000 : ℚ), (-563434370989/1000000000000 : ℚ), 3⟩,
    ⟨(66047231399/200000000000 : ℚ), (11928614187/10000000000 : ℚ), (-27044802661/62500000000 : ℚ), 3⟩,
    ⟨(169238784601/500000000000 : ℚ), (1114031223/1250000000 : ℚ), (-82981889829/250000000000 : ℚ), 3⟩,
    ⟨(347013898331/1000000000000 : ℚ), (3297406323/5000000000 : ℚ), (-252545119937/1000000000000 : ℚ), 3⟩,
    ⟨(177881467433/500000000000 : ℚ), (478228799/1000000000 : ℚ), (-188889035303/1000000000000 : ℚ), 3⟩,
    ⟨(364640420801/1000000000000 : ℚ), (3342666657/10000000000 : ℚ), (-137058415151/1000000000000 : ℚ), 3⟩,
    ⟨(186780430547/500000000000 : ℚ), (218389729/1000000000 : ℚ), (-18861262987/200000000000 : ℚ), 2⟩,
    ⟨(382438347029/1000000000000 : ℚ), (310108267/2500000000 : ℚ), (-29328351017/500000000000 : ℚ), 2⟩,
    ⟨(391187383563/1000000000000 : ℚ), (18590163/400000000 : ℚ), (-1433107851/50000000000 : ℚ), 2⟩,
    ⟨(99930928173/250000000000 : ℚ), (-178126407/10000000000 : ℚ), (-1623076467/500000000000 : ℚ), 2⟩,
    ⟨(4079651249/10000000000 : ℚ), (-714310143/10000000000 : ℚ), (18402240517/1000000000000 : ℚ), 2⟩,
    ⟨(207916125441/500000000000 : ℚ), (-1163489349/10000000000 : ℚ), (7380050539/200000000000 : ℚ), 2⟩,
    ⟨(211624662957/500000000000 : ℚ), (-1540658527/10000000000 : ℚ), (10544300967/200000000000 : ℚ), 2⟩,
    ⟨(430144919509/1000000000000 : ℚ), (-1857318281/10000000000 : ℚ), (16557888061/250000000000 : ℚ), 2⟩,
    ⟨(436452623331/1000000000000 : ℚ), (-2122334417/10000000000 : ℚ), (77713518161/1000000000000 : ℚ), 2⟩,
    ⟨(88422338149/200000000000 : ℚ), (-2342558783/10000000000 : ℚ), (87386847669/1000000000000 : ℚ), 2⟩,
    ⟨(447067621837/1000000000000 : ℚ), (-630820631/2500000000 : ℚ), (95421195237/1000000000000 : ℚ), 2⟩,
    ⟨(451272688283/1000000000000 : ℚ), (-667142319/2500000000 : ℚ), (50973397553/500000000000 : ℚ), 2⟩,
    ⟨(14208949781/31250000000 : ℚ), (-2781500697/10000000000 : ℚ), (26765558597/250000000000 : ℚ), 2⟩,
    ⟨(114318965031/250000000000 : ℚ), (-286435649/1000000000 : ℚ), (110840251441/1000000000000 : ℚ), 2⟩,
    ⟨(459016151693/1000000000000 : ℚ), (-72968603/250000000 : ℚ), (56665992097/500000000000 : ℚ), 2⟩,
    ⟨(459890507741/1000000000000 : ℚ), (-2945688517/10000000000 : ℚ), (57284975817/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2949045007/10000000000 : ℚ), (4588973273/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (62679607411/200000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control304.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control304.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate304

namespace DiagonalRamsey.JointInheritedCertificate305
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(356667077/1250000000 : ℚ), (1246373543473/1000000000 : ℚ), (-71286483503739/200000000000 : ℚ), 12⟩,
    ⟨(286222344619/1000000000000 : ℚ), (1359370346681/10000000000 : ℚ), (-39405913617187/1000000000000 : ℚ), 8⟩,
    ⟨(57598230431/200000000000 : ℚ), (237550700021/5000000000 : ℚ), (-14043689121113/1000000000000 : ℚ), 7⟩,
    ⟨(36327881203/125000000000 : ℚ), (233326721627/10000000000 : ℚ), (-7056002982821/1000000000000 : ℚ), 6⟩,
    ⟨(147046345207/500000000000 : ℚ), (16858237499/1250000000 : ℚ), (-2090128867151/500000000000 : ℚ), 5⟩,
    ⟨(74591664997/250000000000 : ℚ), (42836137463/5000000000 : ℚ), (-681097944149/250000000000 : ℚ), 5⟩,
    ⟨(151701898841/500000000000 : ℚ), (14452855883/2500000000 : ℚ), (-377374927681/200000000000 : ℚ), 4⟩,
    ⟨(309155593107/1000000000000 : ℚ), (40633784567/10000000000 : ℚ), (-680612206187/500000000000 : ℚ), 4⟩,
    ⟨(315566653329/1000000000000 : ℚ), (29371656409/10000000000 : ℚ), (-504867872683/500000000000 : ℚ), 4⟩,
    ⟨(161287618167/500000000000 : ℚ), (21635426229/10000000000 : ℚ), (-763091541217/1000000000000 : ℚ), 3⟩,
    ⟨(165056922817/500000000000 : ℚ), (16122553091/10000000000 : ℚ), (-145829023559/250000000000 : ℚ), 3⟩,
    ⟨(338109880303/1000000000000 : ℚ), (3018870443/2500000000 : ℚ), (-28012023813/62500000000 : ℚ), 3⟩,
    ⟨(69297266831/200000000000 : ℚ), (9030312219/10000000000 : ℚ), (-344023430817/1000000000000 : ℚ), 3⟩,
    ⟨(4439531717/12500000000 : ℚ), (3345408641/5000000000 : ℚ), (-261996188181/1000000000000 : ℚ), 3⟩,
    ⟨(364054933339/1000000000000 : ℚ), (1215293939/2500000000 : ℚ), (-49058876911/250000000000 : ℚ), 3⟩,
    ⟨(373077883457/1000000000000 : ℚ), (852032659/2500000000 : ℚ), (-142706583609/1000000000000 : ℚ), 3⟩,
    ⟨(95536122943/250000000000 : ℚ), (447749099/2000000000 : ℚ), (-49283963199/500000000000 : ℚ), 2⟩,
    ⟨(39116744189/100000000000 : ℚ), (257366263/2000000000 : ℚ), (-30887624409/500000000000 : ℚ), 2⟩,
    ⟨(400059837869/1000000000000 : ℚ), (504392973/10000000000 : ℚ), (-1926931081/62500000000 : ℚ), 2⟩,
    ⟨(204368020537/500000000000 : ℚ), (-3597847/250000000 : ℚ), (-4620752601/1000000000000 : ℚ), 2⟩,
    ⟨(208556247463/500000000000 : ℚ), (-10694751/156250000 : ℚ), (707786077/40000000000 : ℚ), 2⟩,
    ⟨(85021705919/200000000000 : ℚ), (-227432161/2000000000 : ℚ), (18377234787/500000000000 : ℚ), 2⟩,
    ⟨(86529427779/200000000000 : ℚ), (-1517163263/10000000000 : ℚ), (6631166371/125000000000 : ℚ), 2⟩,
    ⟨(4396557219/10000000000 : ℚ), (-183610147/1000000000 : ℚ), (33479043231/500000000000 : ℚ), 2⟩,
    ⟨(223033391061/500000000000 : ℚ), (-2102943431/10000000000 : ℚ), (39387150547/500000000000 : ℚ), 2⟩,
    ⟨(451818577547/1000000000000 : ℚ), (-1162310909/5000000000 : ℚ), (70980509/800000000 : ℚ), 2⟩,
    ⟨(228427857621/500000000000 : ℚ), (-1253245767/5000000000 : ℚ), (96988198001/1000000000000 : ℚ), 2⟩,
    ⟨(92225936963/200000000000 : ℚ), (-2652666141/10000000000 : ℚ), (51848625833/500000000000 : ℚ), 2⟩,
    ⟨(92919865121/200000000000 : ℚ), (-2766265797/10000000000 : ℚ), (54477625079/500000000000 : ℚ), 2⟩,
    ⟨(233615611537/500000000000 : ℚ), (-178099943/625000000 : ℚ), (22567564667/200000000000 : ℚ), 2⟩,
    ⟨(46900003061/100000000000 : ℚ), (-363036759/1250000000 : ℚ), (115398165827/1000000000000 : ℚ), 2⟩,
    ⟨(469888713629/1000000000000 : ℚ), (-2931388911/10000000000 : ℚ), (116670115921/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-586952811/2000000000 : ℚ), (29207182223/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (308432677109/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control305.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control305.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate305

namespace DiagonalRamsey.JointInheritedCertificate306
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146224047219/500000000000 : ℚ), (6289150891631/5000000000 : ℚ), (-184335340448601/500000000000 : ℚ), 12⟩,
    ⟨(146675331939/500000000000 : ℚ), (1372031258467/10000000000 : ℚ), (-5094914337561/125000000000 : ℚ), 8⟩,
    ⟨(295147110523/1000000000000 : ℚ), (7493914091/156250000 : ℚ), (-18157886699/1250000000 : ℚ), 7⟩,
    ⟨(297820133607/1000000000000 : ℚ), (1840552339/78125000 : ℚ), (-1824681134201/250000000000 : ℚ), 6⟩,
    ⟨(301343990459/1000000000000 : ℚ), (136206817917/10000000000 : ℚ), (-4324267086163/1000000000000 : ℚ), 5⟩,
    ⟨(305684744409/1000000000000 : ℚ), (21636708253/2500000000 : ℚ), (-2818445436623/1000000000000 : ℚ), 5⟩,
    ⟨(2486404733/8000000000 : ℚ), (11683730103/2000000000 : ℚ), (-976104539709/500000000000 : ℚ), 4⟩,
    ⟨(316642263701/1000000000000 : ℚ), (41074164567/10000000000 : ℚ), (-352138287253/250000000000 : ℚ), 4⟩,
    ⟨(161576751071/500000000000 : ℚ), (29701378707/10000000000 : ℚ), (-1045044095569/1000000000000 : ℚ), 4⟩,
    ⟨(165135800081/500000000000 : ℚ), (4377673373/2000000000 : ℚ), (-394992312029/500000000000 : ℚ), 3⟩,
    ⟨(168964003293/500000000000 : ℚ), (16320348797/10000000000 : ℚ), (-604094845133/1000000000000 : ℚ), 3⟩,
    ⟨(69209797207/200000000000 : ℚ), (12232595637/10000000000 : ℚ), (-11609863577/25000000000 : ℚ), 3⟩,
    ⟨(354556329037/1000000000000 : ℚ), (286149159/312500000 : ℚ), (-178358006287/500000000000 : ℚ), 3⟩,
    ⟨(363368105229/1000000000000 : ℚ), (1358758147/2000000000 : ℚ), (-271943077251/1000000000000 : ℚ), 3⟩,
    ⟨(372399452389/1000000000000 : ℚ), (4945909829/10000000000 : ℚ), (-203998272947/1000000000000 : ℚ), 3⟩,
    ⟨(190781696853/500000000000 : ℚ), (3478548877/10000000000 : ℚ), (-7435379827/50000000000 : ℚ), 3⟩,
    ⟨(390771675417/1000000000000 : ℚ), (459566423/2000000000 : ℚ), (-51565636773/500000000000 : ℚ), 2⟩,
    ⟨(79987123347/200000000000 : ℚ), (668444503/5000000000 : ℚ), (-16288512691/250000000000 : ℚ), 2⟩,
    ⟨(81793392779/200000000000 : ℚ), (273610081/5000000000 : ℚ), (-33226033897/1000000000000 : ℚ), 2⟩,
    ⟨(417778740087/1000000000000 : ℚ), (-106898249/10000000000 : ℚ), (-6193998601/1000000000000 : ℚ), 2⟩,
    ⟨(426286083089/1000000000000 : ℚ), (-652130787/10000000000 : ℚ), (840560887/50000000000 : ℚ), 2⟩,
    ⟨(217203531269/500000000000 : ℚ), (-1108604597/10000000000 : ℚ), (36451594203/1000000000000 : ℚ), 2⟩,
    ⟨(221031734481/500000000000 : ℚ), (-149165359/1000000000 : ℚ), (53235480449/1000000000000 : ℚ), 2⟩,
    ⟨(224590783491/500000000000 : ℚ), (-1813045187/10000000000 : ℚ), (105555603/1562500000 : ℚ), 2⟩,
    ⟨(455692805423/1000000000000 : ℚ), (-2081855913/10000000000 : ℚ), (39858184577/500000000000 : ℚ), 2⟩,
    ⟨(461534477499/1000000000000 : ℚ), (-230510429/1000000000 : ℚ), (17990814041/200000000000 : ℚ), 2⟩,
    ⟨(93330064943/200000000000 : ℚ), (-2488212983/10000000000 : ℚ), (12306442283/125000000000 : ℚ), 2⟩,
    ⟨(94198215733/200000000000 : ℚ), (-2635348633/10000000000 : ℚ), (1646082831/15625000000 : ℚ), 2⟩,
    ⟨(474514935517/1000000000000 : ℚ), (-1374836179/5000000000 : ℚ), (110753859931/1000000000000 : ℚ), 2⟩,
    ⟨(477187958601/1000000000000 : ℚ), (-708380871/2500000000 : ℚ), (7171492147/62500000000 : ℚ), 2⟩,
    ⟨(95796881049/200000000000 : ℚ), (-722137999/2500000000 : ℚ), (117374695881/1000000000000 : ℚ), 2⟩,
    ⟨(239943487343/500000000000 : ℚ), (-364476269/1250000000 : ℚ), (7417596703/62500000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-58384111/200000000 : ℚ), (29711126781/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (75853554873/250000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control306.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control306.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate306

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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate347
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(294367917569/1000000000000 : ℚ), (3116097315129/2500000000 : ℚ), (-183858496040811/500000000000 : ℚ), 12⟩,
    ⟨(295261248107/1000000000000 : ℚ), (27197300611/200000000 : ℚ), (-10163220017033/250000000000 : ℚ), 8⟩,
    ⟨(297039305923/1000000000000 : ℚ), (14858740169/312500000 : ℚ), (-14487653475491/1000000000000 : ℚ), 7⟩,
    ⟨(299684967347/1000000000000 : ℚ), (233626694137/10000000000 : ℚ), (-1819685209997/250000000000 : ℚ), 6⟩,
    ⟨(151586376607/500000000000 : ℚ), (67554218597/5000000000 : ℚ), (-862393258797/200000000000 : ℚ), 5⟩,
    ⟨(307469074239/1000000000000 : ℚ), (42935267137/5000000000 : ℚ), (-175627082123/62500000000 : ℚ), 5⟩,
    ⟨(312532554501/1000000000000 : ℚ), (57974523233/10000000000 : ℚ), (-1946034021609/1000000000000 : ℚ), 4⟩,
    ⟨(318314429919/1000000000000 : ℚ), (40768457437/10000000000 : ℚ), (-350945786277/250000000000 : ℚ), 4⟩,
    ⟨(20297438617/62500000000 : ℚ), (7370773471/2500000000 : ℚ), (-1041215615093/1000000000000 : ℚ), 4⟩,
    ⟨(331804253453/1000000000000 : ℚ), (21727752507/10000000000 : ℚ), (-157363951491/200000000000 : ℚ), 3⟩,
    ⟨(339382287193/1000000000000 : ℚ), (4049778079/2500000000 : ℚ), (-300708714611/500000000000 : ℚ), 3⟩,
    ⟨(173710069243/500000000000 : ℚ), (758688949/625000000 : ℚ), (-462087919723/1000000000000 : ℚ), 3⟩,
    ⟨(88960099607/250000000000 : ℚ), (72664929/80000000 : ℚ), (-354700129831/1000000000000 : ℚ), 3⟩,
    ⟨(182280987657/500000000000 : ℚ), (6734784963/10000000000 : ℚ), (-67540328777/250000000000 : ℚ), 3⟩,
    ⟨(37350087559/100000000000 : ℚ), (2448948211/5000000000 : ℚ), (-101204741601/500000000000 : ℚ), 3⟩,
    ⟨(382571012761/1000000000000 : ℚ), (3438933139/10000000000 : ℚ), (-36820273511/250000000000 : ℚ), 3⟩,
    ⟨(195842518223/500000000000 : ℚ), (1132369771/5000000000 : ℚ), (-101843577597/1000000000000 : ℚ), 3⟩,
    ⟨(400755173617/1000000000000 : ℚ), (327235281/2500000000 : ℚ), (-63986706891/1000000000000 : ℚ), 2⟩,
    ⟨(409694073893/1000000000000 : ℚ), (130846333/2500000000 : ℚ), (-32164127909/1000000000000 : ℚ), 2⟩,
    ⟨(418415650779/1000000000000 : ℚ), (-15925737/1250000000 : ℚ), (-65314071/12500000000 : ℚ), 2⟩,
    ⟨(426835910721/1000000000000 : ℚ), (-334960397/5000000000 : ℚ), (8848836761/500000000000 : ℚ), 2⟩,
    ⟨(434873762013/1000000000000 : ℚ), (-1124158511/10000000000 : ℚ), (18632483843/500000000000 : ℚ), 2⟩,
    ⟨(221225897877/500000000000 : ℚ), (-1505358959/10000000000 : ℚ), (26992091367/500000000000 : ℚ), 2⟩,
    ⟨(89899406267/200000000000 : ℚ), (-73008789/400000000 : ℚ), (545978841/8000000000 : ℚ), 2⟩,
    ⟨(455941619287/1000000000000 : ℚ), (-16742119/80000000 : ℚ), (40179223159/500000000000 : ℚ), 2⟩,
    ⟨(92344698941/200000000000 : ℚ), (-2314973129/10000000000 : ℚ), (11319165299/125000000000 : ℚ), 2⟩,
    ⟨(58348371871/125000000000 : ℚ), (-249723673/1000000000 : ℚ), (24753636367/250000000000 : ℚ), 2⟩,
    ⟨(471083295993/1000000000000 : ℚ), (-2643699011/10000000000 : ℚ), (105882419533/1000000000000 : ℚ), 2⟩,
    ⟨(23728554093/50000000000 : ℚ), (-344687917/1250000000 : ℚ), (4450530787/40000000000 : ℚ), 2⟩,
    ⟨(119304185821/250000000000 : ℚ), (-355121973/1250000000 : ℚ), (115235619977/1000000000000 : ℚ), 2⟩,
    ⟨(4789948011/10000000000 : ℚ), (-2895756893/10000000000 : ℚ), (117854721061/1000000000000 : ℚ), 2⟩,
    ⟨(239944065819/500000000000 : ℚ), (-1461446419/5000000000 : ℚ), (29788932219/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-292627303/1000000000 : ℚ), (14914744899/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (312882473587/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control347.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control347.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate347

namespace DiagonalRamsey.JointInheritedCertificate348
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38607662933/125000000000 : ℚ), (508079954999/400000000 : ℚ), (-393161885434711/1000000000000 : ℚ), 12⟩,
    ⟨(2478249071/8000000000 : ℚ), (346531505263/2500000000 : ℚ), (-21733410871963/500000000000 : ℚ), 8⟩,
    ⟨(77902984057/250000000000 : ℚ), (242417014377/5000000000 : ℚ), (-15491137058269/1000000000000 : ℚ), 7⟩,
    ⟨(157168039447/500000000000 : ℚ), (2979057989/125000000 : ℚ), (-972930949187/125000000000 : ℚ), 6⟩,
    ⟨(79481831723/250000000000 : ℚ), (68945939369/5000000000 : ℚ), (-4611440688841/1000000000000 : ℚ), 5⟩,
    ⟨(16117554727/50000000000 : ℚ), (10960829111/1250000000 : ℚ), (-3005646690157/1000000000000 : ℚ), 5⟩,
    ⟨(40945597317/125000000000 : ℚ), (59236041299/10000000000 : ℚ), (-2081940243643/1000000000000 : ℚ), 4⟩,
    ⟨(166759084127/500000000000 : ℚ), (8336756579/2000000000 : ℚ), (-751128794671/500000000000 : ℚ), 4⟩,
    ⟨(340153929297/1000000000000 : ℚ), (241350021/80000000 : ℚ), (-1114703178501/1000000000000 : ℚ), 4⟩,
    ⟨(173704077829/500000000000 : ℚ), (11126998691/5000000000 : ℚ), (-210704155229/250000000000 : ℚ), 3⟩,
    ⟨(88802746293/250000000000 : ℚ), (166108159/100000000 : ℚ), (-322354106377/500000000000 : ℚ), 3⟩,
    ⟨(90871818081/250000000000 : ℚ), (12466183427/10000000000 : ℚ), (-495870456419/1000000000000 : ℚ), 3⟩,
    ⟨(372157311947/1000000000000 : ℚ), (4673268657/5000000000 : ℚ), (-381193505477/1000000000000 : ℚ), 3⟩,
    ⟨(381137606817/1000000000000 : ℚ), (6949335401/10000000000 : ℚ), (-290954343401/1000000000000 : ℚ), 3⟩,
    ⟨(97585417947/250000000000 : ℚ), (5074469303/10000000000 : ℚ), (-109335134737/500000000000 : ℚ), 3⟩,
    ⟨(399680866681/1000000000000 : ℚ), (3585676057/10000000000 : ℚ), (-39972064661/250000000000 : ℚ), 3⟩,
    ⟨(51133156243/125000000000 : ℚ), (477570563/2000000000 : ℚ), (-111471303567/1000000000000 : ℚ), 3⟩,
    ⟨(418404444837/1000000000000 : ℚ), (1413212107/10000000000 : ℚ), (-71161527713/1000000000000 : ℚ), 2⟩,
    ⟨(427608509807/1000000000000 : ℚ), (153138919/2500000000 : ℚ), (-3730384817/100000000000 : ℚ), 2⟩,
    ⟨(218294402339/500000000000 : ℚ), (-50381739/10000000000 : ℚ), (-8666123249/1000000000000 : ℚ), 2⟩,
    ⟨(4452588443/10000000000 : ℚ), (-301344843/5000000000 : ℚ), (15680891437/1000000000000 : ℚ), 2⟩,
    ⟨(453535131453/1000000000000 : ℚ), (-1064832289/10000000000 : ℚ), (18222741893/500000000000 : ℚ), 2⟩,
    ⟨(230668980483/500000000000 : ℚ), (-290482519/2000000000 : ℚ), (13543013451/250000000000 : ℚ), 2⟩,
    ⟨(468592187327/1000000000000 : ℚ), (-1777413913/10000000000 : ℚ), (8660198093/125000000000 : ℚ), 2⟩,
    ⟨(47522794837/100000000000 : ℚ), (-204908619/1000000000 : ℚ), (82100814507/1000000000000 : ℚ), 2⟩,
    ⟨(60147667261/125000000000 : ℚ), (-2274587001/10000000000 : ℚ), (18576713049/200000000000 : ℚ), 2⟩,
    ⟨(97279004417/200000000000 : ℚ), (-2459449883/10000000000 : ℚ), (50913264193/500000000000 : ℚ), 2⟩,
    ⟨(122704697433/250000000000 : ℚ), (-52158579/200000000 : ℚ), (5454052377/50000000000 : ℚ), 2⟩,
    ⟨(49441003773/100000000000 : ℚ), (-340406639/1250000000 : ℚ), (28690486859/250000000000 : ℚ), 2⟩,
    ⟨(497134180397/1000000000000 : ℚ), (-1403906349/5000000000 : ℚ), (118954120351/1000000000000 : ℚ), 2⟩,
    ⟨(1995859931/4000000000 : ℚ), (-1431647049/5000000000 : ℚ), (47545841/390625000 : ℚ), 2⟩,
    ⟨(499884813161/1000000000000 : ℚ), (-180673311/625000000 : ℚ), (123089714559/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2894195699/10000000000 : ℚ), (123260830979/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (151275597937/500000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control348.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control348.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate348

namespace DiagonalRamsey.JointInheritedCertificate349
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(238850069249/1000000000000 : ℚ), (5823859676941/5000000000 : ℚ), (-34856977496249/125000000000 : ℚ), 12⟩,
    ⟨(239625582579/1000000000000 : ℚ), (1269620041999/10000000000 : ℚ), (-30826750581543/1000000000000 : ℚ), 8⟩,
    ⟨(120584570311/500000000000 : ℚ), (88668812531/2000000000 : ℚ), (-10984280243183/1000000000000 : ℚ), 7⟩,
    ⟨(24346587807/100000000000 : ℚ), (54373749121/2500000000 : ℚ), (-2758645792511/500000000000 : ℚ), 6⟩,
    ⟨(123246838043/500000000000 : ℚ), (125556352033/10000000000 : ℚ), (-816822817099/250000000000 : ℚ), 5⟩,
    ⟨(6255584383/25000000000 : ℚ), (79642440873/10000000000 : ℚ), (-2128117159391/1000000000000 : ℚ), 5⟩,
    ⟨(25461905673/100000000000 : ℚ), (53651600237/10000000000 : ℚ), (-1472684339663/1000000000000 : ℚ), 4⟩,
    ⟨(20771071/80000000 : ℚ), (37634361823/10000000000 : ℚ), (-1061214593169/1000000000000 : ℚ), 4⟩,
    ⟨(265233028731/1000000000000 : ℚ), (2713724567/1000000000 : ℚ), (-157194813061/200000000000 : ℚ), 4⟩,
    ⟨(27134910097/100000000000 : ℚ), (19928640539/10000000000 : ℚ), (-592733430877/1000000000000 : ℚ), 3⟩,
    ⟨(138963851549/500000000000 : ℚ), (7396241283/5000000000 : ℚ), (-18071355861/40000000000 : ℚ), 3⟩,
    ⟨(14245273979/50000000000 : ℚ), (1102176793/1000000000 : ℚ), (-172872956013/500000000000 : ℚ), 3⟩,
    ⟨(58443046123/200000000000 : ℚ), (2045936407/2500000000 : ℚ), (-263905957137/1000000000000 : ℚ), 3⟩,
    ⟨(299786559303/1000000000000 : ℚ), (375139251/625000000 : ℚ), (-199371771957/1000000000000 : ℚ), 3⟩,
    ⟨(307546549611/1000000000000 : ℚ), (2147379003/5000000000 : ℚ), (-36887469153/250000000000 : ℚ), 3⟩,
    ⟨(31542046859/100000000000 : ℚ), (1468632969/5000000000 : ℚ), (-10528686727/100000000000 : ℚ), 3⟩,
    ⟨(64666497219/200000000000 : ℚ), (368659511/2000000000 : ℚ), (-70363195587/1000000000000 : ℚ), 3⟩,
    ⟨(165603202537/500000000000 : ℚ), (951340883/10000000000 : ℚ), (-2573952581/62500000000 : ℚ), 2⟩,
    ⟨(169483197691/500000000000 : ℚ), (216841467/10000000000 : ℚ), (-8289622907/500000000000 : ℚ), 2⟩,
    ⟨(346537724071/1000000000000 : ℚ), (-7859421/200000000 : ℚ), (4316332319/1000000000000 : ℚ), 2⟩,
    ⟨(70769495021/200000000000 : ℚ), (-90251781/1000000000 : ℚ), (22156053283/1000000000000 : ℚ), 2⟩,
    ⟨(360825251587/1000000000000 : ℚ), (-665100447/5000000000 : ℚ), (37435715661/1000000000000 : ℚ), 2⟩,
    ⟨(73480770743/200000000000 : ℚ), (-52812949/312500000 : ℚ), (2021397689/40000000000 : ℚ), 2⟩,
    ⟨(186759962977/500000000000 : ℚ), (-249084621/1250000000 : ℚ), (61745997611/1000000000000 : ℚ), 2⟩,
    ⟨(189557283593/500000000000 : ℚ), (-1123220111/5000000000 : ℚ), (35647295039/500000000000 : ℚ), 2⟩,
    ⟨(96033474489/250000000000 : ℚ), (-2457672303/10000000000 : ℚ), (79355108167/1000000000000 : ℚ), 2⟩,
    ⟨(77705915873/200000000000 : ℚ), (-526256821/2000000000 : ℚ), (43030957411/500000000000 : ℚ), 2⟩,
    ⟨(392259278599/1000000000000 : ℚ), (-2771042343/10000000000 : ℚ), (714982757/7812500000 : ℚ), 2⟩,
    ⟨(79057415323/200000000000 : ℚ), (-287980013/1000000000 : ℚ), (23950070137/250000000000 : ℚ), 2⟩,
    ⟨(397583814063/1000000000000 : ℚ), (-2959665937/10000000000 : ℚ), (49483201017/500000000000 : ℚ), 2⟩,
    ⟨(199563686053/500000000000 : ℚ), (-3012125251/10000000000 : ℚ), (25264033959/250000000000 : ℚ), 2⟩,
    ⟨(99975721359/250000000000 : ℚ), (-1519062323/5000000000 : ℚ), (10209484949/100000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-30413639/100000000 : ℚ), (102224403937/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (1102070427/3125000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control349.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control349.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate349

namespace DiagonalRamsey.JointInheritedCertificate350
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31548528017/125000000000 : ℚ), (11833991136037/10000000000 : ℚ), (-29936366040721/100000000000 : ℚ), 12⟩,
    ⟨(126597417133/500000000000 : ℚ), (1290201562319/10000000000 : ℚ), (-8273583200279/250000000000 : ℚ), 8⟩,
    ⟨(63700071607/250000000000 : ℚ), (450671476501/10000000000 : ℚ), (-1474081290441/125000000000 : ℚ), 7⟩,
    ⟨(257189119241/1000000000000 : ℚ), (6911629947/312500000 : ℚ), (-59236444769/10000000000 : ℚ), 6⟩,
    ⟨(130169163469/500000000000 : ℚ), (127732876817/10000000000 : ℚ), (-877054213/250000000 : ℚ), 5⟩,
    ⟨(264217580929/1000000000000 : ℚ), (5066307739/625000000 : ℚ), (-91412650743/40000000000 : ℚ), 5⟩,
    ⟨(268789521877/1000000000000 : ℚ), (27317838841/5000000000 : ℚ), (-316348258493/200000000000 : ℚ), 4⟩,
    ⟨(274010119491/1000000000000 : ℚ), (19173719103/5000000000 : ℚ), (-1140079978131/1000000000000 : ℚ), 4⟩,
    ⟨(279829096563/1000000000000 : ℚ), (27670699373/10000000000 : ℚ), (-844675306803/1000000000000 : ℚ), 4⟩,
    ⟨(286190413161/1000000000000 : ℚ), (406751287/200000000 : ℚ), (-637309457143/1000000000000 : ℚ), 3⟩,
    ⟨(29303280633/100000000000 : ℚ), (3022412683/2000000000 : ℚ), (-121522072979/250000000000 : ℚ), 3⟩,
    ⟨(75072595021/250000000000 : ℚ), (11275523701/10000000000 : ℚ), (-46544188327/125000000000 : ℚ), 3⟩,
    ⟨(153946620009/500000000000 : ℚ), (838797973/1000000000 : ℚ), (-142301468659/500000000000 : ℚ), 3⟩,
    ⟨(315768166437/1000000000000 : ℚ), (24674337/40000000 : ℚ), (-215436585889/1000000000000 : ℚ), 3⟩,
    ⟨(161919659747/500000000000 : ℚ), (4431758821/10000000000 : ℚ), (-159922179687/1000000000000 : ℚ), 3⟩,
    ⟨(332028969573/1000000000000 : ℚ), (3051277297/10000000000 : ℚ), (-22934665063/200000000000 : ℚ), 3⟩,
    ⟨(170129122933/500000000000 : ℚ), (1939155723/10000000000 : ℚ), (-77306069707/1000000000000 : ℚ), 3⟩,
    ⟨(69689579189/200000000000 : ℚ), (516386091/5000000000 : ℚ), (-9221238761/200000000000 : ℚ), 2⟩,
    ⟨(178259524501/500000000000 : ℚ), (17921937/625000000 : ℚ), (-3963748471/200000000000 : ℚ), 2⟩,
    ⟨(364393975421/1000000000000 : ℚ), (-16614803/500000000 : ℚ), (497797947/200000000000 : ℚ), 2⟩,
    ⟨(92999208839/250000000000 : ℚ), (-849261611/10000000000 : ℚ), (21518941361/1000000000000 : ℚ), 2⟩,
    ⟨(379254409109/1000000000000 : ℚ), (-641455911/5000000000 : ℚ), (37804764773/1000000000000 : ℚ), 2⟩,
    ⟨(193048401139/500000000000 : ℚ), (-823762281/5000000000 : ℚ), (51755373063/1000000000000 : ℚ), 2⟩,
    ⟨(392458118877/1000000000000 : ℚ), (-3816487/19531250 : ℚ), (15921463419/250000000000 : ℚ), 2⟩,
    ⟨(99569273987/250000000000 : ℚ), (-138180583/625000000 : ℚ), (73839777197/1000000000000 : ℚ), 2⟩,
    ⟨(201748846781/500000000000 : ℚ), (-606143831/2500000000 : ℚ), (5150345801/62500000000 : ℚ), 2⟩,
    ⟨(40806963451/100000000000 : ℚ), (-260011939/1000000000 : ℚ), (89528433959/1000000000000 : ℚ), 2⟩,
    ⟨(411948888501/1000000000000 : ℚ), (-2741373537/10000000000 : ℚ), (95319766837/1000000000000 : ℚ), 2⟩,
    ⟨(415098096199/1000000000000 : ℚ), (-1425628267/5000000000 : ℚ), (12482947311/125000000000 : ℚ), 2⟩,
    ⟨(104371732253/250000000000 : ℚ), (-146596301/500000000 : ℚ), (25805436013/250000000000 : ℚ), 2⟩,
    ⟨(209546190587/500000000000 : ℚ), (-2984902483/10000000000 : ℚ), (13179710207/125000000000 : ℚ), 2⟩,
    ⟨(419898991303/1000000000000 : ℚ), (-3011154963/10000000000 : ℚ), (53269480133/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3014425597/10000000000 : ℚ), (2666907759/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (42867029799/125000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control350.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control350.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate350

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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control385.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control385.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate385

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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control386.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control386.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate386

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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate389
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254177304839/1000000000000 : ℚ), (5865017547397/5000000000 : ℚ), (-149412843088753/500000000000 : ℚ), 12⟩,
    ⟨(254975305247/1000000000000 : ℚ), (639566815813/5000000000 : ℚ), (-825850668813/25000000000 : ℚ), 8⟩,
    ⟨(64140905221/250000000000 : ℚ), (223465211277/5000000000 : ℚ), (-11770557585033/1000000000000 : ℚ), 7⟩,
    ⟨(258926955401/1000000000000 : ℚ), (219402858641/10000000000 : ℚ), (-2956040088833/500000000000 : ℚ), 6⟩,
    ⟨(131021274297/500000000000 : ℚ), (63374546969/5000000000 : ℚ), (-1750493017101/500000000000 : ℚ), 5⟩,
    ⟨(265880395599/1000000000000 : ℚ), (80458836451/10000000000 : ℚ), (-570070129731/250000000000 : ℚ), 5⟩,
    ⟨(270403535851/1000000000000 : ℚ), (54242692373/10000000000 : ℚ), (-394492568949/250000000000 : ℚ), 4⟩,
    ⟨(275568409037/1000000000000 : ℚ), (7615709731/2000000000 : ℚ), (-71069095077/62500000000 : ℚ), 4⟩,
    ⟨(281325274603/1000000000000 : ℚ), (5495959299/2000000000 : ℚ), (-168447409213/200000000000 : ℚ), 4⟩,
    ⟨(287618690789/1000000000000 : ℚ), (20197840041/10000000000 : ℚ), (-635251715743/1000000000000 : ℚ), 4⟩,
    ⟨(58877609711/200000000000 : ℚ), (15007100183/10000000000 : ℚ), (-484312758877/1000000000000 : ℚ), 3⟩,
    ⟨(150784077643/500000000000 : ℚ), (2238971061/2000000000 : ℚ), (-370795385689/1000000000000 : ℚ), 3⟩,
    ⟨(30908986263/100000000000 : ℚ), (8324716783/10000000000 : ℚ), (-56643600523/200000000000 : ℚ), 3⟩,
    ⟨(316880732431/1000000000000 : ℚ), (1529517653/2500000000 : ℚ), (-5354843067/25000000000 : ℚ), 3⟩,
    ⟨(324865734357/1000000000000 : ℚ), (4390775901/10000000000 : ℚ), (-79399435099/500000000000 : ℚ), 3⟩,
    ⟨(41620996059/125000000000 : ℚ), (754388757/2500000000 : ℚ), (-113652803339/1000000000000 : ℚ), 3⟩,
    ⟨(341109405833/1000000000000 : ℚ), (955531383/5000000000 : ℚ), (-76375468969/1000000000000 : ℚ), 3⟩,
    ⟨(87302909987/250000000000 : ℚ), (126139339/1250000000 : ℚ), (-45255311233/1000000000000 : ℚ), 3⟩,
    ⟨(357196641873/1000000000000 : ℚ), (16664957/625000000 : ℚ), (-19039197163/1000000000000 : ℚ), 2⟩,
    ⟨(14599500467/40000000000 : ℚ), (-174768721/5000000000 : ℚ), (320433437/100000000000 : ℚ), 2⟩,
    ⟨(186254609509/500000000000 : ℚ), (-13502429/156250000 : ℚ), (22176377813/1000000000000 : ℚ), 2⟩,
    ⟨(379689325749/1000000000000 : ℚ), (-1295870691/10000000000 : ℚ), (1920500837/50000000000 : ℚ), 2⟩,
    ⟨(77291736703/200000000000 : ℚ), (-829440271/5000000000 : ℚ), (1634805733/31250000000 : ℚ), 2⟩,
    ⟨(392752099701/1000000000000 : ℚ), (-982033519/5000000000 : ℚ), (32101255353/500000000000 : ℚ), 2⟩,
    ⟨(99627241317/250000000000 : ℚ), (-2219812847/10000000000 : ℚ), (7431959767/100000000000 : ℚ), 2⟩,
    ⟨(403673838453/1000000000000 : ℚ), (-2432591131/10000000000 : ℚ), (16570663027/200000000000 : ℚ), 2⟩,
    ⟨(81639395741/200000000000 : ℚ), (-1303698141/5000000000 : ℚ), (89948890881/1000000000000 : ℚ), 2⟩,
    ⟨(41203482571/100000000000 : ℚ), (-687015169/2500000000 : ℚ), (95717546777/1000000000000 : ℚ), 2⟩,
    ⟨(51893802363/125000000000 : ℚ), (-2857488129/10000000000 : ℚ), (50121639371/500000000000 : ℚ), 2⟩,
    ⟨(417513753421/1000000000000 : ℚ), (-2937825121/10000000000 : ℚ), (103587921469/1000000000000 : ℚ), 2⟩,
    ⟨(419102069057/1000000000000 : ℚ), (-2990584179/10000000000 : ℚ), (26448715443/250000000000 : ℚ), 2⟩,
    ⟨(83980013893/200000000000 : ℚ), (-1508364607/5000000000 : ℚ), (21378329441/200000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-754996619/2500000000 : ℚ), (26757108981/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (2757340233/7812500000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control389.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control389.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate389

namespace DiagonalRamsey.JointInheritedCertificate427
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(269901040281/1000000000000 : ℚ), (11815517984987/10000000000 : ℚ), (-319600654433421/1000000000000 : ℚ), 12⟩,
    ⟨(270719619663/1000000000000 : ℚ), (1288999467331/10000000000 : ℚ), (-1104070662749/31250000000 : ℚ), 9⟩,
    ⟨(13617444753/50000000000 : ℚ), (18025752103/400000000 : ℚ), (-2517700849809/200000000000 : ℚ), 7⟩,
    ⟨(274773175659/1000000000000 : ℚ), (55343910479/2500000000 : ℚ), (-158068937073/25000000000 : ℚ), 6⟩,
    ⟨(277969114313/1000000000000 : ℚ), (127981151779/10000000000 : ℚ), (-3744078909387/1000000000000 : ℚ), 5⟩,
    ⟨(140952966193/500000000000 : ℚ), (81301536833/10000000000 : ℚ), (-2438560177143/1000000000000 : ℚ), 5⟩,
    ⟨(143272858083/500000000000 : ℚ), (6856569821/1250000000 : ℚ), (-1687488866211/1000000000000 : ℚ), 5⟩,
    ⟨(291843782001/1000000000000 : ℚ), (7707348269/2000000000 : ℚ), (-1216051276853/1000000000000 : ℚ), 4⟩,
    ⟨(297749106621/1000000000000 : ℚ), (27833128363/10000000000 : ℚ), (-225192935503/250000000000 : ℚ), 4⟩,
    ⟨(304204818519/1000000000000 : ℚ), (20475527181/10000000000 : ℚ), (-679496686837/1000000000000 : ℚ), 4⟩,
    ⟨(311148745663/1000000000000 : ℚ), (951781843/625000000 : ℚ), (-129543878201/250000000000 : ℚ), 3⟩,
    ⟨(159257007119/500000000000 : ℚ), (454937659/400000000 : ℚ), (-99221980747/250000000000 : ℚ), 3⟩,
    ⟨(326229692681/1000000000000 : ℚ), (211754441/250000000 : ℚ), (-151676605081/500000000000 : ℚ), 3⟩,
    ⟨(334221474791/1000000000000 : ℚ), (3118800579/5000000000 : ℚ), (-229669833879/1000000000000 : ℚ), 3⟩,
    ⟨(342412395337/1000000000000 : ℚ), (89796727/200000000 : ℚ), (-10660657071/62500000000 : ℚ), 3⟩,
    ⟨(350723571277/1000000000000 : ℚ), (775090599/2500000000 : ℚ), (-61219049049/500000000000 : ℚ), 3⟩,
    ⟨(89768740361/250000000000 : ℚ), (1980917903/10000000000 : ℚ), (-82725439843/1000000000000 : ℚ), 3⟩,
    ⟨(45923267173/125000000000 : ℚ), (534313713/5000000000 : ℚ), (-24800121109/500000000000 : ℚ), 3⟩,
    ⟨(37557705793/100000000000 : ℚ), (15894407/500000000 : ℚ), (-271505207/12500000000 : ℚ), 3⟩,
    ⟨(9589221001/25000000000 : ℚ), (-304888713/10000000000 : ℚ), (1912141441/1000000000000 : ℚ), 2⟩,
    ⟨(391284518483/1000000000000 : ℚ), (-412385353/5000000000 : ℚ), (22049168339/1000000000000 : ℚ), 2⟩,
    ⟨(398649787057/1000000000000 : ℚ), (-25213499/200000000 : ℚ), (9815671991/250000000000 : ℚ), 2⟩,
    ⟨(405593714201/1000000000000 : ℚ), (-1627008199/10000000000 : ℚ), (53991458797/1000000000000 : ℚ), 2⟩,
    ⟨(4120494261/10000000000 : ℚ), (-386964163/2000000000 : ℚ), (2662957533/40000000000 : ℚ), 2⟩,
    ⟨(417954750719/1000000000000 : ℚ), (-87705233/400000000 : ℚ), (9659008621/125000000000 : ℚ), 2⟩,
    ⟨(211626408277/500000000000 : ℚ), (-2407019901/10000000000 : ℚ), (43144346101/500000000000 : ℚ), 2⟩,
    ⟨(85578520067/200000000000 : ℚ), (-161441803/625000000 : ℚ), (3751218201/40000000000 : ℚ), 2⟩,
    ⟨(53978677301/125000000000 : ℚ), (-1362339039/5000000000 : ℚ), (99867460367/1000000000000 : ℚ), 2⟩,
    ⟨(435025357061/1000000000000 : ℚ), (-566960801/2000000000 : ℚ), (20928101719/200000000000 : ℚ), 2⟩,
    ⟨(437449637661/1000000000000 : ℚ), (-364454071/1250000000 : ℚ), (27041626943/250000000000 : ℚ), 2⟩,
    ⟨(439078913057/1000000000000 : ℚ), (-2968704391/10000000000 : ℚ), (5524622141/50000000000 : ℚ), 2⟩,
    ⟨(439897492439/1000000000000 : ℚ), (-46796897/156250000 : ℚ), (27912041011/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-374784683/1250000000 : ℚ), (55896146863/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (88207423723/250000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control427.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control427.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate427

namespace DiagonalRamsey.JointInheritedCertificate428
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(138469671469/500000000000 : ℚ), (11916449058333/10000000000 : ℚ), (-41341331475383/125000000000 : ℚ), 12⟩,
    ⟨(69443043777/250000000000 : ℚ), (1300153785261/10000000000 : ℚ), (-36560966953093/1000000000000 : ℚ), 9⟩,
    ⟨(139714909409/500000000000 : ℚ), (454616527521/10000000000 : ℚ), (-6513636293529/500000000000 : ℚ), 7⟩,
    ⟨(140948155027/500000000000 : ℚ), (223370452917/10000000000 : ℚ), (-6543346568023/1000000000000 : ℚ), 6⟩,
    ⟨(71286973789/250000000000 : ℚ), (12916276299/1000000000 : ℚ), (-242180674993/62500000000 : ℚ), 5⟩,
    ⟨(4518019681/15625000000 : ℚ), (41036146473/5000000000 : ℚ), (-630984016601/250000000000 : ℚ), 5⟩,
    ⟨(146936914743/500000000000 : ℚ), (55387801271/10000000000 : ℚ), (-1746741757737/1000000000000 : ℚ), 5⟩,
    ⟨(74816035799/250000000000 : ℚ), (38924996879/10000000000 : ℚ), (-78682754011/62500000000 : ℚ), 4⟩,
    ⟨(61054457809/200000000000 : ℚ), (14061950289/5000000000 : ℚ), (-186541457569/200000000000 : ℚ), 4⟩,
    ⟨(38980050663/125000000000 : ℚ), (10349331417/5000000000 : ℚ), (-7037732223/10000000000 : ℚ), 4⟩,
    ⟨(19931577339/62500000000 : ℚ), (962692069/625000000 : ℚ), (-67110653299/125000000000 : ℚ), 3⟩,
    ⟨(40799843401/125000000000 : ℚ), (11512177957/10000000000 : ℚ), (-102857241839/250000000000 : ℚ), 3⟩,
    ⟨(167124384031/500000000000 : ℚ), (4290962733/5000000000 : ℚ), (-31469567827/100000000000 : ℚ), 3⟩,
    ⟨(342379699993/1000000000000 : ℚ), (253147049/400000000 : ℚ), (-47701639199/200000000000 : ℚ), 3⟩,
    ⟨(175356618841/500000000000 : ℚ), (456486497/1000000000 : ℚ), (-35483058213/200000000000 : ℚ), 3⟩,
    ⟨(179584562303/500000000000 : ℚ), (3162803633/10000000000 : ℚ), (-63836635977/500000000000 : ℚ), 3⟩,
    ⟨(7353318519/20000000000 : ℚ), (508350691/2500000000 : ℚ), (-1732913139/20000000000 : ℚ), 3⟩,
    ⟨(376121812873/1000000000000 : ℚ), (556592961/5000000000 : ℚ), (-10487133029/200000000000 : ℚ), 3⟩,
    ⟨(192227675281/500000000000 : ℚ), (178052699/5000000000 : ℚ), (-11826877867/500000000000 : ℚ), 3⟩,
    ⟨(392586282493/1000000000000 : ℚ), (-10870501/400000000 : ℚ), (733677627/1000000000000 : ℚ), 2⟩,
    ⟨(400436303347/1000000000000 : ℚ), (-795741287/10000000000 : ℚ), (21505311721/1000000000000 : ℚ), 2⟩,
    ⟨(407929813131/1000000000000 : ℚ), (-308736457/2500000000 : ℚ), (2453366153/62500000000 : ℚ), 2⟩,
    ⟨(414994645251/1000000000000 : ℚ), (-1603937339/10000000000 : ℚ), (54434116013/1000000000000 : ℚ), 2⟩,
    ⟨(42156276151/100000000000 : ℚ), (-956943811/5000000000 : ℚ), (33698534339/500000000000 : ℚ), 2⟩,
    ⟨(427570907359/1000000000000 : ℚ), (-434682123/2000000000 : ℚ), (78414486723/1000000000000 : ℚ), 2⟩,
    ⟨(432961221069/1000000000000 : ℚ), (-298645481/1250000000 : ℚ), (876969353/10000000000 : ℚ), 2⟩,
    ⟨(109420447743/250000000000 : ℚ), (-2566287967/10000000000 : ℚ), (19081423623/200000000000 : ℚ), 2⟩,
    ⟨(441687155399/1000000000000 : ℚ), (-677182557/2500000000 : ℚ), (50834926833/500000000000 : ℚ), 2⟩,
    ⟨(444938740501/1000000000000 : ℚ), (-70487079/250000000 : ℚ), (53289780209/500000000000 : ℚ), 2⟩,
    ⟨(447405231737/1000000000000 : ℚ), (-580151957/2000000000 : ℚ), (110205848629/1000000000000 : ℚ), 2⟩,
    ⟨(56132859431/125000000000 : ℚ), (-2954120029/10000000000 : ℚ), (112597622751/1000000000000 : ℚ), 2⟩,
    ⟨(449895707617/1000000000000 : ℚ), (-1490279113/5000000000 : ℚ), (56892981647/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-745962947/2500000000 : ℚ), (113934156389/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (8692019693/25000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control428.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control428.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate428

namespace DiagonalRamsey.JointInheritedCertificate429
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(142003246679/500000000000 : ℚ), (3004295484419/2500000000 : ℚ), (-171015912832423/500000000000 : ℚ), 12⟩,
    ⟨(284853439489/1000000000000 : ℚ), (262257105373/2000000000 : ℚ), (-37810559990707/1000000000000 : ℚ), 9⟩,
    ⟨(143269587599/500000000000 : ℚ), (458580721347/10000000000 : ℚ), (-6736372765829/500000000000 : ℚ), 7⟩,
    ⟨(289047465927/1000000000000 : ℚ), (225360599557/10000000000 : ℚ), (-3383642223599/500000000000 : ℚ), 6⟩,
    ⟨(146177077733/500000000000 : ℚ), (130341297629/10000000000 : ℚ), (-4007671195691/1000000000000 : ℚ), 5⟩,
    ⟨(296427398587/1000000000000 : ℚ), (41420386491/5000000000 : ℚ), (-2610582514141/1000000000000 : ℚ), 5⟩,
    ⟨(75306991933/250000000000 : ℚ), (55921225333/10000000000 : ℚ), (-451716141303/250000000000 : ℚ), 5⟩,
    ⟨(76677407699/250000000000 : ℚ), (19655859131/5000000000 : ℚ), (-1302416198487/1000000000000 : ℚ), 4⟩,
    ⟨(19551224773/62500000000 : ℚ), (28413326761/10000000000 : ℚ), (-241273881483/250000000000 : ℚ), 4⟩,
    ⟨(319499022137/1000000000000 : ℚ), (4184116581/2000000000 : ℚ), (-728386400583/1000000000000 : ℚ), 4⟩,
    ⟨(20417723849/62500000000 : ℚ), (7788257603/5000000000 : ℚ), (-138961970379/250000000000 : ℚ), 3⟩,
    ⟨(334304083473/1000000000000 : ℚ), (11649863141/10000000000 : ℚ), (-213080455487/500000000000 : ℚ), 3⟩,
    ⟨(68457427641/200000000000 : ℚ), (217316903/250000000 : ℚ), (-4077275787/12500000000 : ℚ), 3⟩,
    ⟨(350555864599/1000000000000 : ℚ), (1283759431/2000000000 : ℚ), (-247454295089/1000000000000 : ℚ), 3⟩,
    ⟨(3590306303/10000000000 : ℚ), (4638974717/10000000000 : ℚ), (-18433958123/100000000000 : ℚ), 3⟩,
    ⟨(367629818681/1000000000000 : ℚ), (3224355737/10000000000 : ℚ), (-132965720947/1000000000000 : ℚ), 3⟩,
    ⟨(376270614857/1000000000000 : ℚ), (2085024247/10000000000 : ℚ), (-45302751551/500000000000 : ℚ), 3⟩,
    ⟨(192434901619/500000000000 : ℚ), (1156903857/10000000000 : ℚ), (-55296645191/1000000000000 : ℚ), 3⟩,
    ⟨(393344568939/1000000000000 : ℚ), (393502683/10000000000 : ℚ), (-2560139797/100000000000 : ℚ), 3⟩,
    ⟨(401613295333/1000000000000 : ℚ), (-14964843/625000000 : ℚ), (-112519743/250000000000 : ℚ), 2⟩,
    ⟨(81919270013/200000000000 : ℚ), (-299803/3906250 : ℚ), (20963372657/1000000000000 : ℚ), 2⟩,
    ⟨(208608425977/500000000000 : ℚ), (-1209984501/10000000000 : ℚ), (7850540953/200000000000 : ℚ), 2⟩,
    ⟨(2122007057/5000000000 : ℚ), (-1581619513/10000000000 : ℚ), (27444516091/500000000000 : ℚ), 2⟩,
    ⟨(43108083717/100000000000 : ℚ), (-1893693949/10000000000 : ℚ), (545888703/8000000000 : ℚ), 2⟩,
    ⟨(437190802741/1000000000000 : ℚ), (-430983539/2000000000 : ℚ), (79575649821/1000000000000 : ℚ), 2⟩,
    ⟨(88534493161/200000000000 : ℚ), (-2372024193/10000000000 : ℚ), (89126152063/1000000000000 : ℚ), 2⟩,
    ⟨(447473034951/1000000000000 : ℚ), (-637553499/2500000000 : ℚ), (48528236233/500000000000 : ℚ), 2⟩,
    ⟨(56443284759/125000000000 : ℚ), (-673370317/2500000000 : ℚ), (2587405973/25000000000 : ℚ), 2⟩,
    ⟨(454852967611/1000000000000 : ℚ), (-1402427357/5000000000 : ℚ), (10854356203/100000000000 : ℚ), 2⟩,
    ⟨(22868062917/50000000000 : ℚ), (-2886574491/10000000000 : ℚ), (112270810849/1000000000000 : ℚ), 2⟩,
    ⟨(459046994049/1000000000000 : ℚ), (-2940219861/10000000000 : ℚ), (114728849753/1000000000000 : ℚ), 2⟩,
    ⟨(22994697009/50000000000 : ℚ), (-1483398791/5000000000 : ℚ), (28987503941/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-742527111/2500000000 : ℚ), (23220459571/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (171253838847/500000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control429.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control429.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate429

namespace DiagonalRamsey.JointInheritedCertificate430
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(145584576423/500000000000 : ℚ), (12125091514177/10000000000 : ℚ), (-88450106066507/250000000000 : ℚ), 12⟩,
    ⟨(146014876657/500000000000 : ℚ), (330803005389/2500000000 : ℚ), (-977798677457/25000000000 : ℚ), 9⟩,
    ⟨(293742666197/1000000000000 : ℚ), (462829142627/10000000000 : ℚ), (-557470522749/40000000000 : ℚ), 7⟩,
    ⟨(37036424401/125000000000 : ℚ), (11374717201/500000000 : ℚ), (-7000607239589/1000000000000 : ℚ), 6⟩,
    ⟨(74912848673/250000000000 : ℚ), (1052844691/80000000 : ℚ), (-1036517027099/250000000000 : ℚ), 5⟩,
    ⟨(151895153009/500000000000 : ℚ), (10458219571/1250000000 : ℚ), (-1350469507853/500000000000 : ℚ), 5⟩,
    ⟨(38583533651/125000000000 : ℚ), (56494359919/10000000000 : ℚ), (-934801037447/500000000000 : ℚ), 5⟩,
    ⟨(314238306809/1000000000000 : ℚ), (39727644377/10000000000 : ℚ), (-1347836987473/1000000000000 : ℚ), 4⟩,
    ⟨(64089355263/200000000000 : ℚ), (28724966263/10000000000 : ℚ), (-199791026673/200000000000 : ℚ), 4⟩,
    ⟨(32723388677/100000000000 : ℚ), (21159842987/10000000000 : ℚ), (-150830307251/200000000000 : ℚ), 4⟩,
    ⟨(33453427459/100000000000 : ℚ), (7881888351/5000000000 : ℚ), (-115146230173/200000000000 : ℚ), 3⟩,
    ⟨(342277633049/1000000000000 : ℚ), (11798751543/10000000000 : ℚ), (-706625669/1600000000 : ℚ), 3⟩,
    ⟨(175194694687/500000000000 : ℚ), (8812641491/10000000000 : ℚ), (-338285140909/1000000000000 : ℚ), 3⟩,
    ⟨(89697855729/250000000000 : ℚ), (6516593501/10000000000 : ℚ), (-256914931673/1000000000000 : ℚ), 3⟩,
    ⟨(183701408749/500000000000 : ℚ), (1179887611/2500000000 : ℚ), (-191697847773/1000000000000 : ℚ), 3⟩,
    ⟨(75228128137/200000000000 : ℚ), (1645705979/5000000000 : ℚ), (-138627841421/1000000000000 : ℚ), 3⟩,
    ⟨(384920742461/1000000000000 : ℚ), (1070688647/5000000000 : ℚ), (-47441596189/500000000000 : ℚ), 3⟩,
    ⟨(24603660353/62500000000 : ℚ), (150590989/1250000000 : ℚ), (-29216688553/500000000000 : ℚ), 3⟩,
    ⟨(40226996023/100000000000 : ℚ), (434496569/10000000000 : ℚ), (-27790410479/1000000000000 : ℚ), 3⟩,
    ⟨(102667998443/250000000000 : ℚ), (-20393289/1000000000 : ℚ), (-230875689/125000000000 : ℚ), 2⟩,
    ⟨(418783750097/1000000000000 : ℚ), (-73641297/1000000000 : ℚ), (79029117/3906250000 : ℚ), 2⟩,
    ⟨(106631777139/250000000000 : ℚ), (-1182467787/10000000000 : ℚ), (4885082769/125000000000 : ℚ), 2⟩,
    ⟨(54228437047/125000000000 : ℚ), (-778489049/5000000000 : ℚ), (13797191819/250000000000 : ℚ), 2⟩,
    ⟨(440614606831/1000000000000 : ℚ), (-18713671/100000000 : ℚ), (68932820287/1000000000000 : ℚ), 2⟩,
    ⟨(446823076337/1000000000000 : ℚ), (-2134447401/10000000000 : ℚ), (806050627/10000000000 : ℚ), 2⟩,
    ⟨(226196556969/500000000000 : ℚ), (-2353033743/10000000000 : ℚ), (22608040813/250000000000 : ℚ), 2⟩,
    ⟨(57158884641/125000000000 : ℚ), (-633097717/2500000000 : ℚ), (4929473367/50000000000 : ℚ), 2⟩,
    ⟨(230704994227/500000000000 : ℚ), (-2676563233/10000000000 : ℚ), (21042329259/200000000000 : ℚ), 2⟩,
    ⟨(232384993969/500000000000 : ℚ), (-2788618349/10000000000 : ℚ), (110400686139/1000000000000 : ℚ), 2⟩,
    ⟨(467318716949/1000000000000 : ℚ), (-1435412747/5000000000 : ℚ), (114231854019/1000000000000 : ℚ), 2⟩,
    ⟨(58628953729/125000000000 : ℚ), (-2924784701/10000000000 : ℚ), (58379037831/500000000000 : ℚ), 2⟩,
    ⟨(4698922303/10000000000 : ℚ), (-2951516077/10000000000 : ℚ), (3687906569/31250000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1477422997/5000000000 : ℚ), (7385593647/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (337274065223/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control430.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control430.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate430

namespace DiagonalRamsey.JointInheritedCertificate431
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74589914439/250000000000 : ℚ), (6116327158167/5000000000 : ℚ), (-2857401386307/7812500000 : ℚ), 12⟩,
    ⟨(149616889279/500000000000 : ℚ), (66754971243/500000000 : ℚ), (-10108251993793/250000000000 : ℚ), 9⟩,
    ⟨(3009736019/10000000000 : ℚ), (467063072587/10000000000 : ℚ), (-7203880052951/500000000000 : ℚ), 7⟩,
    ⟨(151781186167/500000000000 : ℚ), (229620370439/10000000000 : ℚ), (-3618706393567/500000000000 : ℚ), 6⟩,
    ⟨(38371894823/125000000000 : ℚ), (33216235023/2500000000 : ℚ), (-4286509527381/1000000000000 : ℚ), 5⟩,
    ⟨(155589546827/500000000000 : ℚ), (84487209727/10000000000 : ℚ), (-1396306387757/500000000000 : ℚ), 5⟩,
    ⟨(316133691349/1000000000000 : ℚ), (57064768131/10000000000 : ℚ), (-1933239389499/1000000000000 : ℚ), 5⟩,
    ⟨(321791236187/1000000000000 : ℚ), (2508834077/625000000 : ℚ), (-696948252937/500000000000 : ℚ), 4⟩,
    ⟨(164048621459/500000000000 : ℚ), (29034712627/10000000000 : ℚ), (-32289994871/31250000000 : ℚ), 4⟩,
    ⟨(53598557/160000000 : ℚ), (10698720317/5000000000 : ℚ), (-780260865127/1000000000000 : ℚ), 4⟩,
    ⟨(342406060713/1000000000000 : ℚ), (3987385547/2500000000 : ℚ), (-297935710309/500000000000 : ℚ), 3⟩,
    ⟨(350271070039/1000000000000 : ℚ), (11946267897/10000000000 : ℚ), (-457313553789/1000000000000 : ℚ), 3⟩,
    ⟨(35851026489/100000000000 : ℚ), (8931329811/10000000000 : ℚ), (-350531669743/1000000000000 : ℚ), 3⟩,
    ⟨(183522148657/500000000000 : ℚ), (6613187537/10000000000 : ℚ), (-33310168889/125000000000 : ℚ), 3⟩,
    ⟨(75158195983/200000000000 : ℚ), (2399492069/5000000000 : ℚ), (-24891565091/125000000000 : ℚ), 3⟩,
    ⟨(96166519339/250000000000 : ℚ), (3357375913/10000000000 : ℚ), (-144343233731/1000000000000 : ℚ), 3⟩,
    ⟨(393584117599/1000000000000 : ℚ), (87867203/400000000 : ℚ), (-99195805529/1000000000000 : ℚ), 3⟩,
    ⟨(402459215041/1000000000000 : ℚ), (1251537851/10000000000 : ℚ), (-12318082431/200000000000 : ℚ), 3⟩,
    ⟨(411205897641/1000000000000 : ℚ), (23725399/500000000 : ℚ), (-29988044123/1000000000000 : ℚ), 3⟩,
    ⟨(209869965033/500000000000 : ℚ), (-169382703/10000000000 : ℚ), (-324321123/100000000000 : ℚ), 2⟩,
    ⟨(106994781229/250000000000 : ℚ), (-141251909/2000000000 : ℚ), (97538603/5000000000 : ℚ), 2⟩,
    ⟨(435844134243/1000000000000 : ℚ), (-1155857749/10000000000 : ℚ), (38922755567/1000000000000 : ℚ), 2⟩,
    ⟨(221629606853/500000000000 : ℚ), (-766611499/5000000000 : ℚ), (6938420539/125000000000 : ℚ), 2⟩,
    ⟨(450152952037/1000000000000 : ℚ), (-231238537/1250000000 : ℚ), (8706518533/125000000000 : ℚ), 2⟩,
    ⟨(28528684923/62500000000 : ℚ), (-2114828893/10000000000 : ℚ), (81660000653/1000000000000 : ℚ), 2⟩,
    ⟨(231058251803/500000000000 : ℚ), (-2918601/12500000 : ℚ), (91765977383/1000000000000 : ℚ), 2⟩,
    ⟨(233535550651/500000000000 : ℚ), (-50307859/200000000 : ℚ), (25038003723/250000000000 : ℚ), 2⟩,
    ⟨(117818759093/250000000000 : ℚ), (-665115027/2500000000 : ℚ), (417804401/3906250000 : ℚ), 2⟩,
    ⟨(237343911311/500000000000 : ℚ), (-346648577/1250000000 : ℚ), (14036206517/125000000000 : ℚ), 2⟩,
    ⟨(95455318611/200000000000 : ℚ), (-28558769/100000000 : ℚ), (29056354093/250000000000 : ℚ), 2⟩,
    ⟨(239508208199/500000000000 : ℚ), (-2910145779/10000000000 : ℚ), (118820249013/1000000000000 : ℚ), 2⟩,
    ⟨(1199726343/2500000000 : ℚ), (-2937028723/10000000000 : ℚ), (60054579631/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1470188717/5000000000 : ℚ), (30067469759/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (332016893969/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control431.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control431.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate431

namespace DiagonalRamsey.JointInheritedCertificate432
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62592127133/200000000000 : ℚ), (12461551335921/10000000000 : ℚ), (-39081088468543/100000000000 : ℚ), 12⟩,
    ⟨(313860738567/1000000000000 : ℚ), (680199221549/5000000000 : ℚ), (-21602309114191/500000000000 : ℚ), 9⟩,
    ⟨(19728267243/62500000000 : ℚ), (476075418681/10000000000 : ℚ), (-3849009050513/250000000000 : ℚ), 7⟩,
    ⟨(9947437317/31250000000 : ℚ), (234147029949/10000000000 : ℚ), (-1933596071953/250000000000 : ℚ), 6⟩,
    ⟨(321832221011/1000000000000 : ℚ), (3388681043/250000000 : ℚ), (-4581322926953/1000000000000 : ℚ), 5⟩,
    ⟨(326161112563/1000000000000 : ℚ), (86237567813/10000000000 : ℚ), (-1492560309111/500000000000 : ℚ), 5⟩,
    ⟨(41407872401/125000000000 : ℚ), (5828079943/1000000000 : ℚ), (-413386804551/200000000000 : ℚ), 5⟩,
    ⟨(168544343591/500000000000 : ℚ), (4102379/1000000 : ℚ), (-1490719622107/1000000000000 : ℚ), 4⟩,
    ⟨(85895532933/250000000000 : ℚ), (29695820899/10000000000 : ℚ), (-1105489975773/1000000000000 : ℚ), 4⟩,
    ⟨(175340388719/500000000000 : ℚ), (547622231/250000000 : ℚ), (-167048407627/200000000000 : ℚ), 4⟩,
    ⟨(17915813023/50000000000 : ℚ), (3269312211/2000000000 : ℚ), (-638336735583/1000000000000 : ℚ), 3⟩,
    ⟨(366415046923/1000000000000 : ℚ), (12261760061/10000000000 : ℚ), (-19616525303/40000000000 : ℚ), 3⟩,
    ⟨(187449570543/500000000000 : ℚ), (4592671801/5000000000 : ℚ), (-11764111467/31250000000 : ℚ), 3⟩,
    ⟨(76737367297/200000000000 : ℚ), (852506787/1250000000 : ℚ), (-286786796621/1000000000000 : ℚ), 3⟩,
    ⟨(39269350281/100000000000 : ℚ), (310575419/625000000 : ℚ), (-26871791687/125000000000 : ℚ), 3⟩,
    ⟨(401832400939/1000000000000 : ℚ), (139952503/400000000 : ℚ), (-156587068689/1000000000000 : ℚ), 3⟩,
    ⟨(25688469893/62500000000 : ℚ), (1157656601/5000000000 : ℚ), (-27126479529/250000000000 : ℚ), 3⟩,
    ⟨(420154416417/1000000000000 : ℚ), (1351988257/10000000000 : ℚ), (-68485588363/1000000000000 : ℚ), 3⟩,
    ⟨(429161082741/1000000000000 : ℚ), (56038843/1000000000 : ℚ), (-34879932997/1000000000000 : ℚ), 2⟩,
    ⟨(21897438907/50000000000 : ℚ), (-95218679/10000000000 : ℚ), (-6463215141/1000000000000 : ℚ), 2⟩,
    ⟨(27902054519/62500000000 : ℚ), (-641538719/10000000000 : ℚ), (17689183191/1000000000000 : ℚ), 2⟩,
    ⟨(454531658767/1000000000000 : ℚ), (-137344491/1250000000 : ℚ), (38282182001/1000000000000 : ℚ), 2⟩,
    ⟨(462167141789/1000000000000 : ℚ), (-92641683/625000000 : ℚ), (11171541503/200000000000 : ℚ), 2⟩,
    ⟨(234632893747/500000000000 : ℚ), (-1803901051/10000000000 : ℚ), (35417452641/500000000000 : ℚ), 2⟩,
    ⟨(118939808011/250000000000 : ℚ), (-414558429/2000000000 : ℚ), (83539128657/1000000000000 : ℚ), 2⟩,
    ⟨(240792470009/500000000000 : ℚ), (-1148004707/5000000000 : ℚ), (23555784949/250000000000 : ℚ), 2⟩,
    ⟨(60835850833/125000000000 : ℚ), (-619754669/2500000000 : ℚ), (103082806007/1000000000000 : ℚ), 2⟩,
    ⟨(61376962277/125000000000 : ℚ), (-328252757/1250000000 : ℚ), (22053764589/200000000000 : ℚ), 2⟩,
    ⟨(494529925083/1000000000000 : ℚ), (-1370104407/5000000000 : ℚ), (28973876447/250000000000 : ℚ), 2⟩,
    ⟨(497195643339/1000000000000 : ℚ), (-2823939661/10000000000 : ℚ), (120047353191/1000000000000 : ℚ), 2⟩,
    ⟨(498987180659/1000000000000 : ℚ), (-359859983/1250000000 : ℚ), (122783861847/1000000000000 : ℚ), 2⟩,
    ⟨(499887283561/1000000000000 : ℚ), (-2906091479/10000000000 : ℚ), (124142909289/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-58189619/200000000 : ℚ), (31078090939/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (321357451273/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control432.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control432.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate432

namespace DiagonalRamsey.JointInheritedCertificate433
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(476234288693/1000000000000 : ℚ), (63597528199421/10000000000 : ℚ), (-606057771936911/200000000000 : ℚ), 14⟩,
    ⟨(29781486481/62500000000 : ℚ), (1406951447503/2000000000 : ℚ), (-168147639923179/500000000000 : ℚ), 11⟩,
    ⟨(238521062233/500000000000 : ℚ), (251353897319/1000000000 : ℚ), (-24155173172281/200000000000 : ℚ), 9⟩,
    ⟨(119462003523/250000000000 : ℚ), (1269651890991/10000000000 : ℚ), (-12279632105313/200000000000 : ℚ), 8⟩,
    ⟨(119729877779/250000000000 : ℚ), (151754214827/2000000000 : ℚ), (-36962994806231/1000000000000 : ℚ), 7⟩,
    ⟨(480254034207/1000000000000 : ℚ), (500815339523/10000000000 : ℚ), (-24594065836253/1000000000000 : ℚ), 7⟩,
    ⟨(240924184191/500000000000 : ℚ), (352906915889/10000000000 : ℚ), (-17480218652313/1000000000000 : ℚ), 6⟩,
    ⟨(483698672751/1000000000000 : ℚ), (260441791507/10000000000 : ℚ), (-813566162767/62500000000 : ℚ), 6⟩,
    ⟨(60725061221/125000000000 : ℚ), (19890058771/1000000000 : ℚ), (-5017193795627/500000000000 : ℚ), 6⟩,
    ⟨(488148755973/1000000000000 : ℚ), (155949121123/10000000000 : ℚ), (-198578286427/25000000000 : ℚ), 5⟩,
    ⟨(98147562837/200000000000 : ℚ), (124834714401/10000000000 : ℚ), (-6420524240611/1000000000000 : ℚ), 5⟩,
    ⟨(246780713569/500000000000 : ℚ), (101609418503/10000000000 : ℚ), (-211107564393/40000000000 : ℚ), 5⟩,
    ⟨(198645117/400000000 : ℚ), (41920287757/5000000000 : ℚ), (-4398125557097/1000000000000 : ℚ), 5⟩,
    ⟨(99976911853/200000000000 : ℚ), (17490840809/2500000000 : ℚ), (-926702544953/250000000000 : ℚ), 4⟩,
    ⟨(25168442273/50000000000 : ℚ), (29467222797/5000000000 : ℚ), (-126146411309/40000000000 : ℚ), 4⟩,
    ⟨(253528628567/500000000000 : ℚ), (25018364887/5000000000 : ℚ), (-676051911459/250000000000 : ℚ), 4⟩,
    ⟨(510940908581/1000000000000 : ℚ), (42764339309/10000000000 : ℚ), (-583525299789/250000000000 : ℚ), 4⟩,
    ⟨(16094076367/31250000000 : ℚ), (18376121347/5000000000 : ℚ), (-2025742023227/1000000000000 : ℚ), 4⟩,
    ⟨(129814014689/250000000000 : ℚ), (7932943737/2500000000 : ℚ), (-883077627149/500000000000 : ℚ), 4⟩,
    ⟨(13091688139/25000000000 : ℚ), (34377141/12500000 : ℚ), (-386401326167/250000000000 : ℚ), 4⟩,
    ⟨(16507319267/31250000000 : ℚ), (11954493251/5000000000 : ℚ), (-678335917593/500000000000 : ℚ), 3⟩,
    ⟨(66618141269/125000000000 : ℚ), (20835527731/10000000000 : ℚ), (-596809625637/500000000000 : ℚ), 3⟩,
    ⟨(268894458689/500000000000 : ℚ), (18189120963/10000000000 : ℚ), (-210391561187/200000000000 : ℚ), 3⟩,
    ⟨(135688477279/250000000000 : ℚ), (15896924463/10000000000 : ℚ), (-92813253903/100000000000 : ℚ), 3⟩,
    ⟨(109565628853/200000000000 : ℚ), (217200107/156250000 : ℚ), (-819299205791/1000000000000 : ℚ), 3⟩,
    ⟨(138249849637/250000000000 : ℚ), (12153940567/10000000000 : ℚ), (-90395057821/125000000000 : ℚ), 3⟩,
    ⟨(558255213961/1000000000000 : ℚ), (10618279799/10000000000 : ℚ), (-318922238907/500000000000 : ℚ), 3⟩,
    ⟨(112716585757/200000000000 : ℚ), (9262669969/10000000000 : ℚ), (-280906930569/500000000000 : ℚ), 3⟩,
    ⟨(568969708087/1000000000000 : ℚ), (4030707259/5000000000 : ℚ), (-30862284649/62500000000 : ℚ), 3⟩,
    ⟨(114880514929/200000000000 : ℚ), (1748294223/2500000000 : ℚ), (-432732834617/1000000000000 : ℚ), 3⟩,
    ⟨(289934220103/500000000000 : ℚ), (6040131159/10000000000 : ℚ), (-47216784471/125000000000 : ℚ), 3⟩,
    ⟨(585354137023/1000000000000 : ℚ), (1296824751/2500000000 : ℚ), (-328051680177/1000000000000 : ℚ), 3⟩,
    ⟨(590846449571/1000000000000 : ℚ), (4422027883/10000000000 : ℚ), (-17690613161/62500000000 : ℚ), 3⟩,
    ⟨(596332146387/1000000000000 : ℚ), (933394259/2500000000 : ℚ), (-242187319689/1000000000000 : ℚ), 3⟩,
    ⟨(601798011949/1000000000000 : ℚ), (31127867/100000000 : ℚ), (-205000695133/1000000000000 : ℚ), 3⟩,
    ⟨(303615439253/500000000000 : ℚ), (2551811973/10000000000 : ℚ), (-171091324811/1000000000000 : ℚ), 2⟩,
    ⟨(612617657809/1000000000000 : ℚ), (1021953667/5000000000 : ℚ), (-35028752619/250000000000 : ℚ), 2⟩,
    ⟨(77243171579/125000000000 : ℚ), (1583251133/10000000000 : ℚ), (-55886707287/500000000000 : ℚ), 2⟩,
    ⟨(311600594023/500000000000 : ℚ), (582400913/5000000000 : ℚ), (-10725880449/125000000000 : ℚ), 2⟩,
    ⟨(628372442329/1000000000000 : ℚ), (156835921/2000000000 : ℚ), (-15497365669/250000000000 : ℚ), 2⟩,
    ⟨(316723338739/500000000000 : ℚ), (437568431/10000000000 : ℚ), (-8024499737/200000000000 : ℚ), 2⟩,
    ⟨(19950364663/31250000000 : ℚ), (60817301/5000000000 : ℚ), (-2504030923/125000000000 : ℚ), 2⟩,
    ⟨(321627728221/500000000000 : ℚ), (-166541251/10000000000 : ℚ), (-391433167/250000000000 : ℚ), 2⟩,
    ⟨(647966370049/1000000000000 : ℚ), (-429521181/10000000000 : ℚ), (15411899479/1000000000000 : ℚ), 2⟩,
    ⟨(326266530517/500000000000 : ℚ), (-334778957/5000000000 : ℚ), (31019747091/1000000000000 : ℚ), 2⟩,
    ⟨(656944527837/1000000000000 : ℚ), (-444317697/5000000000 : ℚ), (45363155913/1000000000000 : ℚ), 2⟩,
    ⟨(13223802857/20000000000 : ℚ), (-1088503137/10000000000 : ℚ), (29267709863/500000000000 : ℚ), 2⟩,
    ⟨(665259678013/1000000000000 : ℚ), (-635352727/5000000000 : ℚ), (3530961561/50000000000 : ℚ), 2⟩,
    ⟨(33457166473/50000000000 : ℚ), (-1436606361/10000000000 : ℚ), (81687921003/1000000000000 : ℚ), 2⟩,
    ⟨(336415870567/500000000000 : ℚ), (-1587410879/10000000000 : ℚ), (45903260127/500000000000 : ℚ), 2⟩,
    ⟨(676316027329/1000000000000 : ℚ), (-862091643/5000000000 : ℚ), (101032674029/1000000000000 : ℚ), 2⟩,
    ⟨(679587794093/1000000000000 : ℚ), (-1847862779/10000000000 : ℚ), (27354356713/250000000000 : ℚ), 2⟩,
    ⟨(136527831891/200000000000 : ℚ), (-244909619/1250000000 : ℚ), (58502951129/500000000000 : ℚ), 2⟩,
    ⟨(85682846551/125000000000 : ℚ), (-2059153377/10000000000 : ℚ), (24767577511/200000000000 : ℚ), 2⟩,
    ⟨(688051830621/1000000000000 : ℚ), (-1074064791/5000000000 : ℚ), (32487085203/250000000000 : ℚ), 2⟩,
    ⟨(27616003873/40000000000 : ℚ), (-1113380809/5000000000 : ℚ), (135367827113/1000000000000 : ℚ), 2⟩,
    ⟨(692501913843/1000000000000 : ℚ), (-1147765707/5000000000 : ℚ), (140122895401/1000000000000 : ℚ), 2⟩,
    ⟨(173588054553/250000000000 : ℚ), (-470970611/2000000000 : ℚ), (14423640121/100000000000 : ℚ), 2⟩,
    ⟨(695946552387/1000000000000 : ℚ), (-1202539057/5000000000 : ℚ), (73863891171/500000000000 : ℚ), 2⟩,
    ⟨(348640537739/500000000000 : ℚ), (-2446500127/10000000000 : ℚ), (150613290767/1000000000000 : ℚ), 2⟩,
    ⟨(698352572501/1000000000000 : ℚ), (-2479358307/10000000000 : ℚ), (152906186693/1000000000000 : ℚ), 2⟩,
    ⟨(699158462127/1000000000000 : ℚ), (-1251920271/5000000000 : ℚ), (77308447527/500000000000 : ℚ), 2⟩,
    ⟨(699696802897/1000000000000 : ℚ), (-1260042871/5000000000 : ℚ), (155753128829/1000000000000 : ℚ), 2⟩,
    ⟨(6999662979/10000000000 : ℚ), (-79005799/312500000 : ℚ), (244249969/1562500000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-1264598491/5000000000 : ℚ), (1221802949/7812500000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (50956392569/250000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control433.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control433.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate433

namespace DiagonalRamsey.JointInheritedCertificate434
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(115308968779/200000000000 : ℚ), (19234977053041/10000000000 : ℚ), (-222105145403549/200000000000 : ℚ), 12⟩,
    ⟨(288810096557/500000000000 : ℚ), (2109424434191/10000000000 : ℚ), (-15352730002021/125000000000 : ℚ), 9⟩,
    ⟨(72470066919/125000000000 : ℚ), (743172857151/10000000000 : ℚ), (-5475779729543/125000000000 : ℚ), 7⟩,
    ⟨(582945257943/1000000000000 : ℚ), (46062215453/1250000000 : ℚ), (-11018767237407/500000000000 : ℚ), 6⟩,
    ⟨(587143690267/1000000000000 : ℚ), (107651141957/5000000000 : ℚ), (-13080233187121/1000000000000 : ℚ), 5⟩,
    ⟨(592315399127/1000000000000 : ℚ), (69195289439/5000000000 : ℚ), (-8547145421943/1000000000000 : ℚ), 5⟩,
    ⟨(299205289069/500000000000 : ℚ), (18918663493/2000000000 : ℚ), (-742634979263/125000000000 : ℚ), 5⟩,
    ⟨(302685263697/500000000000 : ℚ), (33716251181/5000000000 : ℚ), (-2153589199499/500000000000 : ℚ), 4⟩,
    ⟨(30656410939/50000000000 : ℚ), (49519706663/10000000000 : ℚ), (-3216406267717/1000000000000 : ℚ), 4⟩,
    ⟨(621608941487/1000000000000 : ℚ), (37144712349/10000000000 : ℚ), (-2452788444793/1000000000000 : ℚ), 4⟩,
    ⟨(630731021519/1000000000000 : ℚ), (28280383231/10000000000 : ℚ), (-1897988565353/1000000000000 : ℚ), 3⟩,
    ⟨(640406608259/1000000000000 : ℚ), (217443533/100000000 : ℚ), (-74138002109/50000000000 : ℚ), 3⟩,
    ⟨(650542520517/1000000000000 : ℚ), (2101257759/1250000000 : ℚ), (-1164393619269/1000000000000 : ℚ), 3⟩,
    ⟨(330520571959/500000000000 : ℚ), (104092969/80000000 : ℚ), (-915388765607/1000000000000 : ℚ), 3⟩,
    ⟨(335900685489/500000000000 : ℚ), (10039530567/10000000000 : ℚ), (-5739127037/8000000000 : ℚ), 3⟩,
    ⟨(68271957483/100000000000 : ℚ), (7681954401/10000000000 : ℚ), (-111554389563/200000000000 : ℚ), 3⟩,
    ⟨(693690607201/1000000000000 : ℚ), (2895081353/5000000000 : ℚ), (-13362969359/31250000000 : ℚ), 3⟩,
    ⟨(176152202763/250000000000 : ℚ), (425741691/1000000000 : ℚ), (-160240260621/500000000000 : ℚ), 2⟩,
    ⟨(715369038113/1000000000000 : ℚ), (3005644047/10000000000 : ℚ), (-231626164743/1000000000000 : ℚ), 2⟩,
    ⟨(725867661513/1000000000000 : ℚ), (395357321/2000000000 : ℚ), (-157499527203/1000000000000 : ℚ), 2⟩,
    ⟨(736003573771/1000000000000 : ℚ), (1127047597/10000000000 : ℚ), (-95399742063/1000000000000 : ℚ), 2⟩,
    ⟨(745679160511/1000000000000 : ℚ), (26436151/625000000 : ℚ), (-21623508321/500000000000 : ℚ), 2⟩,
    ⟨(754801240543/1000000000000 : ℚ), (-80615619/5000000000 : ℚ), (2886859/5000000000 : ℚ), 2⟩,
    ⟨(3053127853/4000000000 : ℚ), (-322830929/5000000000 : ℚ), (37343980481/1000000000000 : ℚ), 2⟩,
    ⟨(192759913659/250000000000 : ℚ), (-52301369/500000000 : ℚ), (68055992857/1000000000000 : ℚ), 2⟩,
    ⟨(777999603893/1000000000000 : ℚ), (-343665189/2500000000 : ℚ), (46753858461/500000000000 : ℚ), 2⟩,
    ⟨(98011847863/125000000000 : ℚ), (-1641233461/10000000000 : ℚ), (7145459287/62500000000 : ℚ), 2⟩,
    ⟨(789266491763/1000000000000 : ℚ), (-926642221/5000000000 : ℚ), (131008454007/1000000000000 : ℚ), 2⟩,
    ⟨(99183115511/125000000000 : ℚ), (-1008305043/5000000000 : ℚ), (14393321889/100000000000 : ℚ), 2⟩,
    ⟨(398324823339/500000000000 : ℚ), (-2135550613/10000000000 : ℚ), (7669478099/50000000000 : ℚ), 2⟩,
    ⟨(798789988917/1000000000000 : ℚ), (-553299261/2500000000 : ℚ), (31916707903/200000000000 : ℚ), 2⟩,
    ⟨(99983167267/125000000000 : ℚ), (-14072093/62500000 : ℚ), (81323992431/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-2256304569/10000000000 : ℚ), (3260590557/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (135410369009/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control434.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control434.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate434

namespace DiagonalRamsey.JointInheritedCertificate435
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127989429471/500000000000 : ℚ), (1162071905353/1000000000 : ℚ), (-298127516277869/1000000000000 : ℚ), 12⟩,
    ⟨(256768189603/1000000000000 : ℚ), (633735968423/5000000000 : ℚ), (-823897470857/25000000000 : ℚ), 9⟩,
    ⟨(129169624619/500000000000 : ℚ), (221488448927/5000000000 : ℚ), (-5871016756493/500000000000 : ℚ), 7⟩,
    ⟨(130338453843/500000000000 : ℚ), (2175261249/100000000 : ℚ), (-5897223373281/1000000000000 : ℚ), 6⟩,
    ⟨(263758652017/1000000000000 : ℚ), (125701086827/10000000000 : ℚ), (-1745877537447/500000000000 : ℚ), 5⟩,
    ⟨(66888700837/250000000000 : ℚ), (19953595177/2500000000 : ℚ), (-2273899464957/1000000000000 : ℚ), 5⟩,
    ⟨(272028802667/1000000000000 : ℚ), (10763978143/2000000000 : ℚ), (-393307793993/250000000000 : ℚ), 5⟩,
    ⟨(55427512583/200000000000 : ℚ), (18893849309/5000000000 : ℚ), (-1133400175111/1000000000000 : ℚ), 4⟩,
    ⟨(141415941969/500000000000 : ℚ), (13636081657/5000000000 : ℚ), (-104903357231/125000000000 : ℚ), 4⟩,
    ⟨(36132115789/125000000000 : ℚ), (2004503251/1000000000 : ℚ), (-158183466137/250000000000 : ℚ), 4⟩,
    ⟨(73938184869/250000000000 : ℚ), (14891689301/10000000000 : ℚ), (-96431761837/200000000000 : ℚ), 3⟩,
    ⟨(18928427443/62500000000 : ℚ), (11105698189/10000000000 : ℚ), (-184460183611/500000000000 : ℚ), 3⟩,
    ⟨(310294828047/1000000000000 : ℚ), (8254454303/10000000000 : ℚ), (-281563647361/1000000000000 : ℚ), 3⟩,
    ⟨(39750131899/125000000000 : ℚ), (3030855217/5000000000 : ℚ), (-212718820357/1000000000000 : ℚ), 3⟩,
    ⟨(325899305343/1000000000000 : ℚ), (4344852639/10000000000 : ℚ), (-157473441159/1000000000000 : ℚ), 3⟩,
    ⟨(166956757017/500000000000 : ℚ), (2979613539/10000000000 : ℚ), (-899635467/8000000000 : ℚ), 3⟩,
    ⟨(341966500053/1000000000000 : ℚ), (46983259/250000000 : ℚ), (-37643463159/500000000000 : ℚ), 3⟩,
    ⟨(43747588593/125000000000 : ℚ), (245571973/2500000000 : ℚ), (-11065739089/250000000000 : ℚ), 3⟩,
    ⟨(71575791779/200000000000 : ℚ), (121871049/5000000000 : ℚ), (-9065949847/500000000000 : ℚ), 3⟩,
    ⟨(9139629651/25000000000 : ℚ), (-369249277/10000000000 : ℚ), (504492971/125000000000 : ℚ), 2⟩,
    ⟨(373025174999/1000000000000 : ℚ), (-881260061/10000000000 : ℚ), (5735107159/250000000000 : ℚ), 2⟩,
    ⟨(380127274611/1000000000000 : ℚ), (-163853217/1250000000 : ℚ), (7822752527/200000000000 : ℚ), 2⟩,
    ⟨(193411543887/500000000000 : ℚ), (-418013809/2500000000 : ℚ), (52963856333/1000000000000 : ℚ), 2⟩,
    ⟨(98262032537/250000000000 : ℚ), (-493941213/2500000000 : ℚ), (16201274257/250000000000 : ℚ), 2⟩,
    ⟨(398742451171/1000000000000 : ℚ), (-2230287831/10000000000 : ℚ), (936007001/12500000000 : ℚ), 2⟩,
    ⟨(403851211419/1000000000000 : ℚ), (-2442059787/10000000000 : ℚ), (83378275307/1000000000000 : ℚ), 2⟩,
    ⟨(408325210739/1000000000000 : ℚ), (-2616046377/10000000000 : ℚ), (45221643781/500000000000 : ℚ), 2⟩,
    ⟨(41212136207/100000000000 : ℚ), (-1378028961/5000000000 : ℚ), (96186676063/1000000000000 : ℚ), 2⟩,
    ⟨(415203106401/1000000000000 : ℚ), (-2864981417/10000000000 : ℚ), (50346162347/500000000000 : ℚ), 2⟩,
    ⟨(26096297803/62500000000 : ℚ), (-2944950769/10000000000 : ℚ), (52010990399/500000000000 : ℚ), 2⟩,
    ⟨(104777956121/250000000000 : ℚ), (-1498734767/5000000000 : ℚ), (106218966223/1000000000000 : ℚ), 2⟩,
    ⟨(83980231029/200000000000 : ℚ), (-18896849/62500000 : ℚ), (53655392543/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3026738327/10000000000 : ℚ), (13430869189/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (363017860227/1000000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
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
theorem certOK : JointInheritedControls.control435.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control435.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate435

namespace DiagonalRamsey.JointInheritedCertificate477
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(286031714717/1000000000000 : ℚ), (2380849307273/2000000000 : ℚ), (-170610218804379/500000000000 : ℚ), 12⟩,
    ⟨(286868914731/1000000000000 : ℚ), (1299226278537/10000000000 : ℚ), (-7543968159631/200000000000 : ℚ), 9⟩,
    ⟨(57707050413/200000000000 : ℚ), (454487340787/10000000000 : ℚ), (-13439680937599/1000000000000 : ℚ), 7⟩,
    ⟨(14550733949/50000000000 : ℚ), (111707471203/5000000000 : ℚ), (-6750105731331/1000000000000 : ℚ), 6⟩,
    ⟨(147141658619/500000000000 : ℚ), (32313371343/2500000000 : ℚ), (-1998515970073/500000000000 : ℚ), 6⟩,
    ⟨(74577422017/250000000000 : ℚ), (20542794467/2500000000 : ℚ), (-2603256281979/1000000000000 : ℚ), 5⟩,
    ⟨(75763753829/250000000000 : ℚ), (27740823283/5000000000 : ℚ), (-900723663097/500000000000 : ℚ), 5⟩,
    ⟨(308473598887/1000000000000 : ℚ), (19504633987/5000000000 : ℚ), (-1298200952269/1000000000000 : ℚ), 4⟩,
    ⟨(15725662743/50000000000 : ℚ), (28197487873/10000000000 : ℚ), (-961688583007/1000000000000 : ℚ), 4⟩,
    ⟨(64223163609/200000000000 : ℚ), (10380945019/5000000000 : ℚ), (-725551843433/1000000000000 : ℚ), 4⟩,
    ⟨(328217702151/1000000000000 : ℚ), (15456854739/10000000000 : ℚ), (-553436224397/1000000000000 : ℚ), 3⟩,
    ⟨(6715010243/20000000000 : ℚ), (2311527349/2000000000 : ℚ), (-21203658699/50000000000 : ℚ), 3⟩,
    ⟨(85910425741/250000000000 : ℚ), (1724042297/2000000000 : ℚ), (-162175150701/500000000000 : ℚ), 3⟩,
    ⟨(351815278113/1000000000000 : ℚ), (6360880979/10000000000 : ℚ), (-122915199747/500000000000 : ℚ), 3⟩,
    ⟨(360192521599/1000000000000 : ℚ), (28699891/62500000 : ℚ), (-91444257079/500000000000 : ℚ), 3⟩,
    ⟨(368692755989/1000000000000 : ℚ), (3185716147/10000000000 : ℚ), (-131661262951/1000000000000 : ℚ), 3⟩,
    ⟨(377234119377/1000000000000 : ℚ), (205287841/1000000000 : ℚ), (-11178436001/125000000000 : ℚ), 3⟩,
    ⟨(385734353767/1000000000000 : ℚ), (1129883833/10000000000 : ℚ), (-10845822777/200000000000 : ℚ), 3⟩,
    ⟨(394111597253/1000000000000 : ℚ), (185291919/5000000000 : ℚ), (-24631340849/1000000000000 : ℚ), 3⟩,
    ⟨(201142586201/500000000000 : ℚ), (-259036423/10000000000 : ℚ), (108358523/250000000000 : ℚ), 3⟩,
    ⟨(25636022701/62500000000 : ℚ), (-784381287/10000000000 : ℚ), (5442449821/250000000000 : ℚ), 2⟩,
    ⟨(83541834643/200000000000 : ℚ), (-76539779/625000000 : ℚ), (19995227639/500000000000 : ℚ), 2⟩,
    ⟨(424811057321/1000000000000 : ℚ), (-797212123/5000000000 : ℚ), (27782883799/500000000000 : ℚ), 2⟩,
    ⟨(215706810253/500000000000 : ℚ), (-380993701/2000000000 : ℚ), (34429463623/500000000000 : ℚ), 2⟩,
    ⟨(437453276479/1000000000000 : ℚ), (-270615871/1250000000 : ℚ), (40075657233/500000000000 : ℚ), 2⟩,
    ⟨(8857437201/20000000000 : ℚ), (-1190496727/5000000000 : ℚ), (1400954139/15625000000 : ℚ), 2⟩,
    ⟨(223808593649/500000000000 : ℚ), (-511667639/2000000000 : ℚ), (97556827323/1000000000000 : ℚ), 2⟩,
    ⟨(28227722383/62500000000 : ℚ), (-1350466051/5000000000 : ℚ), (103968050717/1000000000000 : ℚ), 2⟩,
    ⟨(454912196387/1000000000000 : ℚ), (-56235723/200000000 : ℚ), (108992704221/1000000000000 : ℚ), 2⟩,
    ⟨(457391623301/1000000000000 : ℚ), (-2893127251/10000000000 : ℚ), (112703046511/1000000000000 : ℚ), 2⟩,
    ⟨(91811592127/200000000000 : ℚ), (-368315653/1250000000 : ℚ), (14393732523/125000000000 : ℚ), 2⟩,
    ⟨(459895160649/1000000000000 : ℚ), (-2972980739/10000000000 : ℚ), (116365427361/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-595255279/2000000000 : ℚ), (29129252569/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (70464619603/200000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control477.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control477.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate477

namespace DiagonalRamsey.JointInheritedCertificate478
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146608857381/500000000000 : ℚ), (3002340796123/2500000000 : ℚ), (-352875660895519/1000000000000 : ℚ), 12⟩,
    ⟨(294068456789/1000000000000 : ℚ), (1310844107243/10000000000 : ℚ), (-39008637857841/1000000000000 : ℚ), 9⟩,
    ⟨(73940436933/250000000000 : ℚ), (458625805907/10000000000 : ℚ), (-13899170845791/1000000000000 : ℚ), 7⟩,
    ⟨(149140640137/500000000000 : ℚ), (225493451057/10000000000 : ℚ), (-6981122035311/1000000000000 : ℚ), 6⟩,
    ⟨(301602789939/1000000000000 : ℚ), (65242514229/5000000000 : ℚ), (-129188633337/31250000000 : ℚ), 6⟩,
    ⟨(305694288773/1000000000000 : ℚ), (829747713/100000000 : ℚ), (-538536534331/200000000000 : ℚ), 5⟩,
    ⟨(310516373407/1000000000000 : ℚ), (56039893587/10000000000 : ℚ), (-931760290733/500000000000 : ℚ), 5⟩,
    ⟨(19751412783/62500000000 : ℚ), (9853589753/2500000000 : ℚ), (-671562083547/500000000000 : ℚ), 4⟩,
    ⟨(322159954121/1000000000000 : ℚ), (7125243763/2500000000 : ℚ), (-995161905479/1000000000000 : ℚ), 4⟩,
    ⟨(65773863231/200000000000 : ℚ), (209948553/100000000 : ℚ), (-75100863703/100000000000 : ℚ), 4⟩,
    ⟨(67217215161/200000000000 : ℚ), (15639152521/10000000000 : ℚ), (-5730678291/10000000000 : ℚ), 3⟩,
    ⟨(343740731731/1000000000000 : ℚ), (11702541429/10000000000 : ℚ), (-109836030933/250000000000 : ℚ), 3⟩,
    ⟨(87939891353/250000000000 : ℚ), (4368465213/5000000000 : ℚ), (-168138421819/500000000000 : ℚ), 3⟩,
    ⟨(45008168887/125000000000 : ℚ), (1291199097/2000000000 : ℚ), (-31892514731/125000000000 : ℚ), 3⟩,
    ⟨(184289049763/500000000000 : ℚ), (4670315177/10000000000 : ℚ), (-47529080163/250000000000 : ℚ), 3⟩,
    ⟨(188607914141/500000000000 : ℚ), (3250874419/10000000000 : ℚ), (-137209506479/1000000000000 : ℚ), 3⟩,
    ⟨(192947675657/500000000000 : ℚ), (2107607907/10000000000 : ℚ), (-93604911613/1000000000000 : ℚ), 3⟩,
    ⟨(39453308007/100000000000 : ℚ), (73519027/625000000 : ℚ), (-57276869333/1000000000000 : ℚ), 3⟩,
    ⟨(806091657/2000000000 : ℚ), (801469/19531250 : ℚ), (-26740819037/1000000000000 : ℚ), 3⟩,
    ⟨(51418951773/125000000000 : ℚ), (-224612803/10000000000 : ℚ), (-891906587/1000000000000 : ℚ), 3⟩,
    ⟨(83874089573/200000000000 : ℚ), (-754261399/10000000000 : ℚ), (2110274521/100000000000 : ℚ), 2⟩,
    ⟨(427025103791/1000000000000 : ℚ), (-1197985713/10000000000 : ℚ), (9969394989/250000000000 : ℚ), 2⟩,
    ⟨(217120931721/500000000000 : ℚ), (-785284629/5000000000 : ℚ), (11183967843/200000000000 : ℚ), 2⟩,
    ⟨(17638049019/40000000000 : ℚ), (-1883362793/10000000000 : ℚ), (69605909281/1000000000000 : ℚ), 2⟩,
    ⟨(447088575069/1000000000000 : ℚ), (-2145124369/10000000000 : ℚ), (81227537221/1000000000000 : ℚ), 2⟩,
    ⟨(45259480619/100000000000 : ℚ), (-236262723/1000000000 : ℚ), (1820220333/20000000000 : ℚ), 2⟩,
    ⟨(457416890823/1000000000000 : ℚ), (-2541104331/10000000000 : ℚ), (49565701453/500000000000 : ℚ), 2⟩,
    ⟨(461508389657/1000000000000 : ℚ), (-671143933/2500000000 : ℚ), (21144627961/200000000000 : ℚ), 2⟩,
    ⟨(232414949661/500000000000 : ℚ), (-2796090333/10000000000 : ℚ), (3465251053/31250000000 : ℚ), 2⟩,
    ⟨(58418678983/125000000000 : ℚ), (-2877903509/10000000000 : ℚ), (114701212429/1000000000000 : ℚ), 2⟩,
    ⟨(58630340351/125000000000 : ℚ), (-22903167/78125000 : ℚ), (23443099717/200000000000 : ℚ), 2⟩,
    ⟨(93978692967/200000000000 : ℚ), (-184888103/625000000 : ℚ), (11846448249/100000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2369219/8000000 : ℚ), (59310113811/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (69403356161/200000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control478.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control478.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate478

namespace DiagonalRamsey.JointInheritedCertificate479
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(479024284923/1000000000000 : ℚ), (7853107354871/5000000000 : ℚ), (-376799015373567/500000000000 : ℚ), 12⟩,
    ⟨(60010962769/125000000000 : ℚ), (107473077009/625000000 : ℚ), (-83329991764889/1000000000000 : ℚ), 9⟩,
    ⟨(482204295319/1000000000000 : ℚ), (302157977021/5000000000 : ℚ), (-29708833922539/1000000000000 : ℚ), 7⟩,
    ⟨(121338420119/250000000000 : ℚ), (29873379039/1000000000 : ℚ), (-7468009878029/500000000000 : ℚ), 6⟩,
    ⟨(489505527321/1000000000000 : ℚ), (173931627157/10000000000 : ℚ), (-1771415728797/200000000000 : ℚ), 6⟩,
    ⟨(247309925651/500000000000 : ℚ), (13920220279/1250000000 : ℚ), (-5780362913791/1000000000000 : ℚ), 5⟩,
    ⟨(12516184967/25000000000 : ℚ), (75787596711/10000000000 : ℚ), (-501406181097/125000000000 : ℚ), 5⟩,
    ⟨(507530120881/1000000000000 : ℚ), (6720469047/1250000000 : ℚ), (-362720239693/125000000000 : ℚ), 4⟩,
    ⟨(515201733527/1000000000000 : ℚ), (7852830311/2000000000 : ℚ), (-540188664771/250000000000 : ℚ), 4⟩,
    ⟨(104717670959/200000000000 : ℚ), (14632142777/5000000000 : ℚ), (-25651058579/15625000000 : ℚ), 4⟩,
    ⟨(532609216937/1000000000000 : ℚ), (22112717949/10000000000 : ℚ), (-1264200819319/1000000000000 : ℚ), 3⟩,
    ⟨(542177444119/1000000000000 : ℚ), (8423479209/5000000000 : ℚ), (-98136727483/100000000000 : ℚ), 3⟩,
    ⟨(552200889083/1000000000000 : ℚ), (2575221411/2000000000 : ℚ), (-382094991939/500000000000 : ℚ), 3⟩,
    ⟨(22503320823/40000000000 : ℚ), (1964336661/2000000000 : ℚ), (-297006800781/500000000000 : ℚ), 3⟩,
    ⟨(573223852993/1000000000000 : ℚ), (74325839/100000000 : ℚ), (-229195169273/500000000000 : ℚ), 3⟩,
    ⟨(73002613663/125000000000 : ℚ), (2768603819/5000000000 : ℚ), (-17437980737/50000000000 : ℚ), 3⟩,
    ⟨(594870207953/1000000000000 : ℚ), (2007645753/5000000000 : ℚ), (-259080360903/1000000000000 : ℚ), 3⟩,
    ⟨(75708408033/125000000000 : ℚ), (347588647/1250000000 : ℚ), (-92496941743/500000000000 : ℚ), 3⟩,
    ⟨(308154048341/500000000000 : ℚ), (55331863/312500000 : ℚ), (-30823632829/250000000000 : ℚ), 2⟩,
    ⟨(313345114087/500000000000 : ℚ), (938426403/10000000000 : ℚ), (-14317074679/200000000000 : ℚ), 2⟩,
    ⟨(318356836569/500000000000 : ℚ), (249095749/10000000000 : ℚ), (-28048593849/1000000000000 : ℚ), 2⟩,
    ⟨(4039261877/6250000000 : ℚ), (-162012517/5000000000 : ℚ), (10888751/1250000000 : ℚ), 2⟩,
    ⟨(327651381231/500000000000 : ℚ), (-160282227/2000000000 : ℚ), (19887364181/500000000000 : ℚ), 2⟩,
    ⟨(66368938373/100000000000 : ℚ), (-119891241/1000000000 : ℚ), (32993452627/500000000000 : ℚ), 2⟩,
    ⟨(83920124547/125000000000 : ℚ), (-1528863003/10000000000 : ℚ), (88010025023/1000000000000 : ℚ), 2⟩,
    ⟨(678243718577/1000000000000 : ℚ), (-225110603/1250000000 : ℚ), (53182449629/500000000000 : ℚ), 2⟩,
    ⟨(136854253191/200000000000 : ℚ), (-1011237767/5000000000 : ℚ), (121460193539/1000000000000 : ℚ), 2⟩,
    ⟨(43086599371/62500000000 : ℚ), (-2199442149/10000000000 : ℚ), (133614350717/1000000000000 : ℚ), 2⟩,
    ⟨(693537436781/1000000000000 : ℚ), (-2336221839/10000000000 : ℚ), (71535967187/500000000000 : ℚ), 2⟩,
    ⟨(348343410969/500000000000 : ℚ), (-1218059163/5000000000 : ℚ), (150015775551/1000000000000 : ℚ), 2⟩,
    ⟨(139760683021/200000000000 : ℚ), (-2501473207/10000000000 : ℚ), (30915171149/200000000000 : ℚ), 2⟩,
    ⟨(349933416167/500000000000 : ℚ), (-2533785121/10000000000 : ℚ), (39208884579/250000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-158612947/625000000 : ℚ), (78558526843/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (4224041351/20000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control479.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control479.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate479

namespace DiagonalRamsey.JointInheritedCertificate480
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57916950727/100000000000 : ℚ), (1524085362007/200000000 : ℚ), (-883075558280673/200000000000 : ℚ), 14⟩,
    ⟨(579435467207/1000000000000 : ℚ), (8434517766139/10000000000 : ℚ), (-245014423576347/500000000000 : ℚ), 11⟩,
    ⟨(579966746359/1000000000000 : ℚ), (3016638025993/10000000000 : ℚ), (-176001111694661/1000000000000 : ℚ), 9⟩,
    ⟨(58076206483/100000000000 : ℚ), (1525665912881/10000000000 : ℚ), (-89483489315449/1000000000000 : ℚ), 8⟩,
    ⟨(290909753313/500000000000 : ℚ), (45653976667/500000000 : ℚ), (-10775956267193/200000000000 : ℚ), 7⟩,
    ⟨(291568262139/500000000000 : ℚ), (75453281441/1250000000 : ℚ), (-35857513692993/1000000000000 : ℚ), 7⟩,
    ⟨(23388397799/40000000000 : ℚ), (426090394441/10000000000 : ℚ), (-1019693093059/40000000000 : ℚ), 6⟩,
    ⟨(586535978209/1000000000000 : ℚ), (315031528919/10000000000 : ℚ), (-2373678209347/125000000000 : ℚ), 6⟩,
    ⟨(294305112453/500000000000 : ℚ), (30132607241/1250000000 : ℚ), (-7321871578053/500000000000 : ℚ), 6⟩,
    ⟨(73865961003/125000000000 : ℚ), (189392690223/10000000000 : ℚ), (-5798477482971/500000000000 : ℚ), 5⟩,
    ⟨(593482784591/1000000000000 : ℚ), (151930950761/10000000000 : ℚ), (-2344691776753/250000000000 : ℚ), 5⟩,
    ⟨(149067339789/250000000000 : ℚ), (30985361251/2500000000 : ℚ), (-308558878671/40000000000 : ℚ), 5⟩,
    ⟨(599280698617/1000000000000 : ℚ), (102506471531/10000000000 : ℚ), (-6432819571843/1000000000000 : ℚ), 5⟩,
    ⟨(75313693549/125000000000 : ℚ), (85748790347/10000000000 : ℚ), (-1085199024861/200000000000 : ℚ), 4⟩,
    ⟨(605948129901/1000000000000 : ℚ), (36208229331/5000000000 : ℚ), (-4620524228351/1000000000000 : ℚ), 4⟩,
    ⟨(609588159299/1000000000000 : ℚ), (30824387709/5000000000 : ℚ), (-793236774521/200000000000 : ℚ), 4⟩,
    ⟨(153355216859/250000000000 : ℚ), (52838374767/10000000000 : ℚ), (-3427492408829/1000000000000 : ℚ), 4⟩,
    ⟨(77179627623/125000000000 : ℚ), (45546848741/10000000000 : ℚ), (-2978806491037/1000000000000 : ℚ), 4⟩,
    ⟨(24865077787/40000000000 : ℚ), (986285263/250000000 : ℚ), (-2601220276539/1000000000000 : ℚ), 4⟩,
    ⟨(312990272309/500000000000 : ℚ), (34310204969/10000000000 : ℚ), (-1140273846917/500000000000 : ℚ), 4⟩,
    ⟨(2462841143/3906250000 : ℚ), (14969586779/5000000000 : ℚ), (-100298803019/50000000000 : ℚ), 3⟩,
    ⟨(317568225699/500000000000 : ℚ), (26196277167/10000000000 : ℚ), (-1769147387597/1000000000000 : ℚ), 3⟩,
    ⟨(127983340171/200000000000 : ℚ), (5742629989/2500000000 : ℚ), (-781759434903/500000000000 : ℚ), 3⟩,
    ⟨(322408282469/500000000000 : ℚ), (806967003/400000000 : ℚ), (-691954822143/500000000000 : ℚ), 3⟩,
    ⟨(129964847889/200000000000 : ℚ), (4434297019/2500000000 : ℚ), (-613087149227/500000000000 : ℚ), 3⟩,
    ⟨(654927660451/1000000000000 : ℚ), (780154407/500000000 : ℚ), (-54348208889/50000000000 : ℚ), 3⟩,
    ⟨(330057266683/500000000000 : ℚ), (109807683/80000000 : ℚ), (-120443813921/125000000000 : ℚ), 3⟩,
    ⟨(665372362561/1000000000000 : ℚ), (301704399/250000000 : ℚ), (-426845855911/500000000000 : ℚ), 3⟩,
    ⟨(670688481463/1000000000000 : ℚ), (1324833877/1250000000 : ℚ), (-377766338939/500000000000 : ℚ), 3⟩,
    ⟨(676050083077/1000000000000 : ℚ), (4645813889/5000000000 : ℚ), (-16688189299/25000000000 : ℚ), 3⟩,
    ⟨(340722125417/500000000000 : ℚ), (2031363549/2500000000 : ℚ), (-588380022729/1000000000000 : ℚ), 3⟩,
    ⟨(686857989713/1000000000000 : ℚ), (3540993641/5000000000 : ℚ), (-258498199547/500000000000 : ℚ), 3⟩,
    ⟨(692278257541/1000000000000 : ℚ), (6145865913/10000000000 : ℚ), (-90489798033/200000000000 : ℚ), 3⟩,
    ⟨(34884599821/50000000000 : ℚ), (5304033179/10000000000 : ℚ), (-393946763719/1000000000000 : ℚ), 3⟩,
    ⟨(703086164177/1000000000000 : ℚ), (4545338621/10000000000 : ℚ), (-34081197097/100000000000 : ℚ), 3⟩,
    ⟨(708447765791/1000000000000 : ℚ), (193010907/500000000 : ℚ), (-36557662669/125000000000 : ℚ), 2⟩,
    ⟨(713763884693/1000000000000 : ℚ), (810108691/2500000000 : ℚ), (-248390604923/1000000000000 : ℚ), 2⟩,
    ⟨(22469428559/31250000000 : ℚ), (1339433721/5000000000 : ℚ), (-20816243243/100000000000 : ℚ), 2⟩,
    ⟨(724208586803/1000000000000 : ℚ), (2169337993/10000000000 : ℚ), (-171395814773/1000000000000 : ℚ), 2⟩,
    ⟨(729312007809/1000000000000 : ℚ), (1706468591/10000000000 : ℚ), (-68878919207/500000000000 : ℚ), 2⟩,
    ⟨(183579920579/250000000000 : ℚ), (1285563791/10000000000 : ℚ), (-26739165617/250000000000 : ℚ), 2⟩,
    ⟨(739219546399/1000000000000 : ℚ), (18050249/200000000 : ℚ), (-78735709013/1000000000000 : ℚ), 2⟩,
    ⟨(46499987241/62500000000 : ℚ), (553705811/10000000000 : ℚ), (-52868804811/1000000000000 : ℚ), 2⟩,
    ⟨(374324457323/500000000000 : ℚ), (29496103/1250000000 : ℚ), (-583122091/20000000000 : ℚ), 2⟩,
    ⟨(188288925659/250000000000 : ℚ), (-6687207/1250000000 : ℚ), (-1855164127/250000000000 : ℚ), 2⟩,
    ⟨(757509302579/1000000000000 : ℚ), (-63433137/2000000000 : ℚ), (6247250183/500000000000 : ℚ), 2⟩,
    ⟨(76169922627/100000000000 : ℚ), (-557221589/10000000000 : ℚ), (15364398851/500000000000 : ℚ), 2⟩,
    ⟨(382857689909/500000000000 : ℚ), (-96950139/1250000000 : ℚ), (47406230987/1000000000000 : ℚ), 2⟩,
    ⟨(153909617591/200000000000 : ℚ), (-487009683/5000000000 : ℚ), (62637144599/1000000000000 : ℚ), 2⟩,
    ⟨(773188117353/1000000000000 : ℚ), (-576998207/5000000000 : ℚ), (76519757563/1000000000000 : ℚ), 2⟩,
    ⟨(388313349431/500000000000 : ℚ), (-1316879163/10000000000 : ℚ), (22285367407/250000000000 : ℚ), 2⟩,
    ⟨(779855548637/1000000000000 : ℚ), (-73193007/500000000 : ℚ), (20115996483/200000000000 : ℚ), 2⟩,
    ⟨(391433444049/500000000000 : ℚ), (-1595993613/10000000000 : ℚ), (13863032839/125000000000 : ℚ), 2⟩,
    ⟨(785653462663/1000000000000 : ℚ), (-342841889/2000000000 : ℚ), (7510960699/62500000000 : ℚ), 2⟩,
    ⟨(78820855923/100000000000 : ℚ), (-1819324993/10000000000 : ℚ), (128447174189/1000000000000 : ℚ), 2⟩,
    ⟨(197631505587/250000000000 : ℚ), (-1912055331/10000000000 : ℚ), (135766956713/1000000000000 : ℚ), 2⟩,
    ⟨(158520053809/200000000000 : ℚ), (-398604401/2000000000 : ℚ), (71087973817/500000000000 : ℚ), 2⟩,
    ⟨(794426302279/1000000000000 : ℚ), (-412552101/2000000000 : ℚ), (147709768693/1000000000000 : ℚ), 2⟩,
    ⟨(24874991343/31250000000 : ℚ), (-2121726603/10000000000 : ℚ), (38099704007/250000000000 : ℚ), 2⟩,
    ⟨(199329185157/250000000000 : ℚ), (-2170301681/10000000000 : ℚ), (39067145477/250000000000 : ℚ), 2⟩,
    ⟨(99796772803/125000000000 : ℚ), (-552199283/2500000000 : ℚ), (159339920029/1000000000000 : ℚ), 2⟩,
    ⟨(159833900179/200000000000 : ℚ), (-447491587/2000000000 : ℚ), (161629262647/1000000000000 : ℚ), 2⟩,
    ⟨(799700780047/1000000000000 : ℚ), (-2256465437/10000000000 : ℚ), (20393598581/125000000000 : ℚ), 2⟩,
    ⟨(799966739983/1000000000000 : ℚ), (-566484853/2500000000 : ℚ), (81953274529/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-2267122267/10000000000 : ℚ), (41000293883/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (141224056261/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control480.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control480.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate480

namespace DiagonalRamsey.JointInheritedCertificate545
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(584850915749/1000000000000 : ℚ), (232724373587/31250000 : ℚ), (-4357261115427519/1000000000000 : ℚ), 14⟩,
    ⟨(585110033211/1000000000000 : ℚ), (8243452915147/10000000000 : ℚ), (-483574425035133/1000000000000 : ℚ), 11⟩,
    ⟨(585627643899/1000000000000 : ℚ), (1474337110327/5000000000 : ℚ), (-173679665135231/1000000000000 : ℚ), 9⟩,
    ⟨(293201250421/500000000000 : ℚ), (298304062507/2000000000 : ℚ), (-22075178829253/250000000000 : ℚ), 8⟩,
    ⟨(587432737343/1000000000000 : ℚ), (892795049803/10000000000 : ℚ), (-53165591519187/1000000000000 : ℚ), 8⟩,
    ⟨(588715871471/1000000000000 : ℚ), (590322167581/10000000000 : ℚ), (-1415220596657/40000000000 : ℚ), 7⟩,
    ⟨(147562203011/250000000000 : ℚ), (416775950001/10000000000 : ℚ), (-25151742895809/1000000000000 : ℚ), 7⟩,
    ⟨(23681114643/40000000000 : ℚ), (154100897779/5000000000 : ℚ), (-9367211531867/500000000000 : ℚ), 6⟩,
    ⟨(118809749533/200000000000 : ℚ), (235877677509/10000000000 : ℚ), (-1805741336041/125000000000 : ℚ), 6⟩,
    ⟨(119261317667/200000000000 : ℚ), (11584566677/625000000 : ℚ), (-5719618851559/500000000000 : ℚ), 6⟩,
    ⟨(149698987187/250000000000 : ℚ), (29743045491/2000000000 : ℚ), (-9250239919577/1000000000000 : ℚ), 5⟩,
    ⟨(601510831817/1000000000000 : ℚ), (379178289/31250000 : ℚ), (-7607351970773/1000000000000 : ℚ), 5⟩,
    ⟨(604444697151/1000000000000 : ℚ), (50183378333/5000000000 : ℚ), (-6343058185191/1000000000000 : ℚ), 5⟩,
    ⟨(607590476811/1000000000000 : ℚ), (41984725899/5000000000 : ℚ), (-2674741334047/500000000000 : ℚ), 5⟩,
    ⟨(610940592339/1000000000000 : ℚ), (70921396921/10000000000 : ℚ), (-4554611642239/1000000000000 : ℚ), 4⟩,
    ⟨(614486973013/1000000000000 : ℚ), (60381247277/10000000000 : ℚ), (-1954441636299/500000000000 : ℚ), 4⟩,
    ⟨(618221075291/1000000000000 : ℚ), (6469408903/1250000000 : ℚ), (-337728306471/100000000000 : ℚ), 4⟩,
    ⟨(311066951697/500000000000 : ℚ), (44614882657/10000000000 : ℚ), (-2934505330857/1000000000000 : ℚ), 4⟩,
    ⟨(2446156371/3906250000 : ℚ), (38644510589/10000000000 : ℚ), (-512378639581/200000000000 : ℚ), 4⟩,
    ⟨(315228811917/500000000000 : ℚ), (16803846839/5000000000 : ℚ), (-1122723715061/500000000000 : ℚ), 4⟩,
    ⟨(1587121159/2500000000 : ℚ), (29324467551/10000000000 : ℚ), (-987248881581/500000000000 : ℚ), 4⟩,
    ⟨(127875594471/200000000000 : ℚ), (25655943593/10000000000 : ℚ), (-1740796299783/1000000000000 : ℚ), 3⟩,
    ⟨(322017619059/500000000000 : ℚ), (22493580239/10000000000 : ℚ), (-76894320693/50000000000 : ℚ), 3⟩,
    ⟨(5190472329/8000000000 : ℚ), (617236993/312500000 : ℚ), (-340163868611/250000000000 : ℚ), 3⟩,
    ⟨(653687880869/1000000000000 : ℚ), (8680718839/5000000000 : ℚ), (-150626581133/125000000000 : ℚ), 3⟩,
    ⟨(164665000949/250000000000 : ℚ), (15267905753/10000000000 : ℚ), (-1067653353427/1000000000000 : ℚ), 3⟩,
    ⟨(663713431627/1000000000000 : ℚ), (1342607243/1000000000 : ℚ), (-945884704481/1000000000000 : ℚ), 3⟩,
    ⟨(167208997553/250000000000 : ℚ), (2949780959/2500000000 : ℚ), (-33499782709/40000000000 : ℚ), 3⟩,
    ⟨(337007669429/500000000000 : ℚ), (10356665237/10000000000 : ℚ), (-740652184781/1000000000000 : ℚ), 3⟩,
    ⟨(679239000061/1000000000000 : ℚ), (36293727/40000000 : ℚ), (-163457992277/250000000000 : ℚ), 3⟩,
    ⟨(171123597391/250000000000 : ℚ), (7928290771/10000000000 : ℚ), (-287877248249/500000000000 : ℚ), 3⟩,
    ⟨(43110552917/62500000000 : ℚ), (1725865783/2500000000 : ℚ), (-63167549467/125000000000 : ℚ), 3⟩,
    ⟨(695049664757/1000000000000 : ℚ), (598390991/1000000000 : ℚ), (-88334802943/200000000000 : ℚ), 3⟩,
    ⟨(140064824373/200000000000 : ℚ), (5156845881/10000000000 : ℚ), (-11999205171/31250000000 : ℚ), 3⟩,
    ⟨(88197438921/125000000000 : ℚ), (551418829/1250000000 : ℚ), (-165786519849/500000000000 : ℚ), 3⟩,
    ⟨(710803172571/1000000000000 : ℚ), (3738055597/10000000000 : ℚ), (-283893612733/1000000000000 : ℚ), 3⟩,
    ⟨(715982521217/1000000000000 : ℚ), (1564445303/5000000000 : ℚ), (-240438570851/1000000000000 : ℚ), 3⟩,
    ⟨(360552539901/500000000000 : ℚ), (257687737/1000000000 : ℚ), (-100388008123/500000000000 : ℚ), 3⟩,
    ⟨(726158507633/1000000000000 : ℚ), (1037980143/5000000000 : ℚ), (-164529784593/1000000000000 : ℚ), 2⟩,
    ⟨(4569566441/6250000000 : ℚ), (1620867087/10000000000 : ℚ), (-16421391673/125000000000 : ℚ), 2⟩,
    ⟨(736009470303/1000000000000 : ℚ), (120699349/1000000000 : ℚ), (-50505926861/500000000000 : ℚ), 2⟩,
    ⟨(740783273311/1000000000000 : ℚ), (415153647/5000000000 : ℚ), (-73198539559/1000000000000 : ℚ), 2⟩,
    ⟨(745440539073/1000000000000 : ℚ), (19490731/400000000 : ℚ), (-47707794963/1000000000000 : ℚ), 2⟩,
    ⟨(749970047829/1000000000000 : ℚ), (34952207/2000000000 : ℚ), (-24342214493/1000000000000 : ℚ), 2⟩,
    ⟨(150872177519/200000000000 : ℚ), (-109961531/10000000000 : ℚ), (-731748717/250000000000 : ℚ), 2⟩,
    ⟨(758602480453/1000000000000 : ℚ), (-369325969/10000000000 : ℚ), (8346463399/500000000000 : ℚ), 2⟩,
    ⟨(152536921607/200000000000 : ℚ), (-302739363/5000000000 : ℚ), (17327650771/500000000000 : ℚ), 2⟩,
    ⟨(383298718069/500000000000 : ℚ), (-820320527/10000000000 : ℚ), (12770658093/250000000000 : ℚ), 2⟩,
    ⟨(48145721151/62500000000 : ℚ), (-1015535679/10000000000 : ℚ), (66083935211/1000000000000 : ℚ), 2⟩,
    ⟨(77387791909/100000000000 : ℚ), (-596308551/5000000000 : ℚ), (9969530437/125000000000 : ℚ), 2⟩,
    ⟨(388614017309/500000000000 : ℚ), (-338221941/2500000000 : ℚ), (92185897721/1000000000000 : ℚ), 2⟩,
    ⟨(390186907139/500000000000 : ℚ), (-299503813/2000000000 : ℚ), (103449651943/1000000000000 : ℚ), 2⟩,
    ⟨(195826919903/250000000000 : ℚ), (-1627546627/10000000000 : ℚ), (56807812373/500000000000 : ℚ), 2⟩,
    ⟨(786022562681/1000000000000 : ℚ), (-174388387/1000000000 : ℚ), (490976471/4000000000 : ℚ), 2⟩,
    ⟨(394255961547/500000000000 : ℚ), (-369466737/2000000000 : ℚ), (8180520009/62500000000 : ℚ), 2⟩,
    ⟨(197692440941/250000000000 : ℚ), (-969299231/5000000000 : ℚ), (27618982929/200000000000 : ℚ), 2⟩,
    ⟨(396395322677/500000000000 : ℚ), (-2018288687/10000000000 : ℚ), (72202298871/500000000000 : ℚ), 2⟩,
    ⟨(158913939877/200000000000 : ℚ), (-1043465141/5000000000 : ℚ), (149852524351/1000000000000 : ℚ), 2⟩,
    ⟨(398051319979/500000000000 : ℚ), (-1072485421/5000000000 : ℚ), (9654292943/62500000000 : ℚ), 2⟩,
    ⟨(398692887043/500000000000 : ℚ), (-2192784873/10000000000 : ℚ), (158278234907/1000000000000 : ℚ), 2⟩,
    ⟨(798416010587/1000000000000 : ℚ), (-2230678131/10000000000 : ℚ), (161301737603/1000000000000 : ℚ), 2⟩,
    ⟨(79919086753/100000000000 : ℚ), (-1129445569/5000000000 : ℚ), (81777700347/500000000000 : ℚ), 2⟩,
    ⟨(799708478217/1000000000000 : ℚ), (-455520387/2000000000 : ℚ), (41262808579/250000000000 : ℚ), 2⟩,
    ⟨(799967595679/1000000000000 : ℚ), (-2286928103/10000000000 : ℚ), (82898588313/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-2288092507/10000000000 : ℚ), (3317806541/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (6128106443/40000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control545.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control545.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate545

namespace DiagonalRamsey.JointInheritedCertificate575
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146987410757/250000000000 : ℚ), (18375909216719/10000000000 : ℚ), (-1081812022636753/1000000000000 : ℚ), 12⟩,
    ⟨(588970108117/1000000000000 : ℚ), (2016220163179/10000000000 : ℚ), (-1869334138033/15625000000 : ℚ), 9⟩,
    ⟨(591001210659/1000000000000 : ℚ), (35540894009/500000000 : ℚ), (-4266409318453/100000000000 : ℚ), 7⟩,
    ⟨(297011695013/500000000000 : ℚ), (176357976021/5000000000 : ℚ), (-21458031719369/1000000000000 : ℚ), 6⟩,
    ⟨(598007540979/1000000000000 : ℚ), (206232889277/10000000000 : ℚ), (-2546446693989/200000000000 : ℚ), 6⟩,
    ⟨(301457646983/500000000000 : ℚ), (66325438303/5000000000 : ℚ), (-8316296851043/1000000000000 : ℚ), 5⟩,
    ⟨(304349692321/500000000000 : ℚ), (5670163899/625000000 : ℚ), (-5777578564387/1000000000000 : ℚ), 5⟩,
    ⟨(307652054527/500000000000 : ℚ), (64701850853/10000000000 : ℚ), (-4185903899413/1000000000000 : ℚ), 4⟩,
    ⟨(622665860093/1000000000000 : ℚ), (47527188003/10000000000 : ℚ), (-780832547933/250000000000 : ℚ), 4⟩,
    ⟨(315356870037/500000000000 : ℚ), (35652029477/10000000000 : ℚ), (-1189733661633/500000000000 : ℚ), 4⟩,
    ⟨(79921280439/125000000000 : ℚ), (6784557131/2500000000 : ℚ), (-114939977279/62500000000 : ℚ), 4⟩,
    ⟨(162138000887/250000000000 : ℚ), (10427521897/5000000000 : ℚ), (-1434591800049/1000000000000 : ℚ), 3⟩,
    ⟨(658170594813/1000000000000 : ℚ), (8053716301/5000000000 : ℚ), (-1124519191197/1000000000000 : ℚ), 3⟩,
    ⟨(334066692507/500000000000 : ℚ), (3112389821/2500000000 : ℚ), (-882032060049/1000000000000 : ℚ), 3⟩,
    ⟨(678344427037/1000000000000 : ℚ), (2396280287/2500000000 : ℚ), (-689249440883/1000000000000 : ℚ), 3⟩,
    ⟨(137741076593/200000000000 : ℚ), (7311214553/10000000000 : ℚ), (-266934117333/500000000000 : ℚ), 3⟩,
    ⟨(87389558891/125000000000 : ℚ), (5485298783/10000000000 : ℚ), (-101799964259/250000000000 : ℚ), 3⟩,
    ⟨(141895485411/200000000000 : ℚ), (801001891/2000000000 : ℚ), (-30296855003/100000000000 : ℚ), 3⟩,
    ⟨(719688469079/1000000000000 : ℚ), (2795417601/10000000000 : ℚ), (-216551585741/1000000000000 : ℚ), 3⟩,
    ⟨(9120640741/12500000000 : ℚ), (14406069/80000000 : ℚ), (-28897022673/200000000000 : ℚ), 3⟩,
    ⟨(147853970109/200000000000 : ℚ), (978929257/10000000000 : ℚ), (-84134751951/1000000000000 : ℚ), 2⟩,
    ⟨(748451610581/1000000000000 : ℚ), (297746401/10000000000 : ℚ), (-33471224381/1000000000000 : ℚ), 2⟩,
    ⟨(757108114019/1000000000000 : ℚ), (-267644739/10000000000 : ℚ), (113567041/12500000000 : ℚ), 2⟩,
    ⟨(382577997/500000000 : ℚ), (-368298123/5000000000 : ℚ), (44775383107/1000000000000 : ℚ), 2⟩,
    ⟨(772517745039/1000000000000 : ℚ), (-1124261929/10000000000 : ℚ), (18644573499/250000000000 : ℚ), 2⟩,
    ⟨(779122469451/1000000000000 : ℚ), (-360635231/2500000000 : ℚ), (24817393397/250000000000 : ℚ), 2⟩,
    ⟨(784906560127/1000000000000 : ℚ), (-42519181/250000000 : ℚ), (119462371211/1000000000000 : ℚ), 2⟩,
    ⟨(394907156557/500000000000 : ℚ), (-953108699/5000000000 : ℚ), (27127642741/200000000000 : ℚ), 2⟩,
    ⟨(793798464067/1000000000000 : ℚ), (-1032242731/5000000000 : ℚ), (14816973589/100000000000 : ℚ), 2⟩,
    ⟨(398410321717/500000000000 : ℚ), (-43595183/200000000 : ℚ), (157337461499/1000000000000 : ℚ), 2⟩,
    ⟨(99856468247/125000000000 : ℚ), (-451003989/2000000000 : ℚ), (81671005351/500000000000 : ℚ), 2⟩,
    ⟨(159974442213/200000000000 : ℚ), (-1146091203/5000000000 : ℚ), (83156316417/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1148402993/5000000000 : ℚ), (10417655607/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (79672537571/500000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control575.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control575.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate575

namespace DiagonalRamsey.JointInheritedCertificate598
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(98068019059/200000000000 : ℚ), (7505289341087/5000000000 : ℚ), (-737148207589851/1000000000000 : ℚ), 12⟩,
    ⟨(767732901/1562500000 : ℚ), (1644408081097/10000000000 : ℚ), (-40751523919983/500000000000 : ℚ), 9⟩,
    ⟨(493357262481/1000000000000 : ℚ), (578374041491/10000000000 : ℚ), (-14525857625719/500000000000 : ℚ), 7⟩,
    ⟨(248172686349/500000000000 : ℚ), (286162186847/10000000000 : ℚ), (-14601195046971/1000000000000 : ℚ), 7⟩,
    ⟨(100056922031/200000000000 : ℚ), (166755758583/10000000000 : ℚ), (-540930119759/62500000000 : ℚ), 6⟩,
    ⟨(126284259461/250000000000 : ℚ), (53425283731/5000000000 : ℚ), (-1411325394621/250000000000 : ℚ), 5⟩,
    ⟨(63856990529/125000000000 : ℚ), (14552875689/2000000000 : ℚ), (-3914803500219/1000000000000 : ℚ), 5⟩,
    ⟨(517386193317/1000000000000 : ℚ), (51642923983/10000000000 : ℚ), (-565909952263/200000000000 : ℚ), 4⟩,
    ⟨(524664955039/1000000000000 : ℚ), (3772396569/1000000000 : ℚ), (-4110836181/1953125000 : ℚ), 4⟩,
    ⟨(266311055471/500000000000 : ℚ), (28114755983/10000000000 : ℚ), (-159703740011/100000000000 : ℚ), 4⟩,
    ⟨(541181029267/1000000000000 : ℚ), (4247073713/2000000000 : ℚ), (-613934976483/500000000000 : ℚ), 4⟩,
    ⟨(550259282949/1000000000000 : ℚ), (404117183/250000000 : ℚ), (-47564230439/50000000000 : ℚ), 4⟩,
    ⟨(111953888689/200000000000 : ℚ), (6168495249/5000000000 : ℚ), (-738936193239/1000000000000 : ℚ), 3⟩,
    ⟨(569619922709/1000000000000 : ℚ), (9389755199/10000000000 : ℚ), (-572575574013/1000000000000 : ℚ), 3⟩,
    ⟨(289857927621/500000000000 : ℚ), (1416466653/2000000000 : ℚ), (-440025223337/1000000000000 : ℚ), 3⟩,
    ⟨(589960011693/1000000000000 : ℚ), (210006557/400000000 : ℚ), (-66581911303/200000000000 : ℚ), 3⟩,
    ⟨(600253735237/1000000000000 : ℚ), (3777835041/10000000000 : ℚ), (-245317158953/1000000000000 : ℚ), 3⟩,
    ⟨(610497891689/1000000000000 : ℚ), (2582627889/10000000000 : ℚ), (-86491008801/500000000000 : ℚ), 3⟩,
    ⟨(620593824221/1000000000000 : ℚ), (1604135229/10000000000 : ℚ), (-112765849883/1000000000000 : ℚ), 3⟩,
    ⟨(126088860697/200000000000 : ℚ), (398762119/5000000000 : ℚ), (-31160704961/500000000000 : ℚ), 3⟩,
    ⟨(639954463981/1000000000000 : ℚ), (129055657/10000000000 : ℚ), (-19868005729/1000000000000 : ℚ), 3⟩,
    ⟨(20282272427/31250000000 : ℚ), (-213480887/5000000000 : ℚ), (1596147713/100000000000 : ℚ), 3⟩,
    ⟨(164397908997/250000000000 : ℚ), (-178056279/2000000000 : ℚ), (23113431251/500000000000 : ℚ), 3⟩,
    ⟨(166387197973/250000000000 : ℚ), (-1595257/12500000 : ℚ), (71755817611/1000000000000 : ℚ), 2⟩,
    ⟨(672827553613/1000000000000 : ℚ), (-1596649537/10000000000 : ℚ), (46598894833/500000000000 : ℚ), 2⟩,
    ⟨(339678911349/500000000000 : ℚ), (-1860912051/10000000000 : ℚ), (5553163121/50000000000 : ℚ), 2⟩,
    ⟨(342538354543/500000000000 : ℚ), (-207624057/1000000000 : ℚ), (31438166811/250000000000 : ℚ), 2⟩,
    ⟨(27597165471/40000000000 : ℚ), (-140515523/625000000 : ℚ), (17197234297/125000000000 : ℚ), 2⟩,
    ⟨(693868374233/1000000000000 : ℚ), (-2381223897/10000000000 : ℚ), (36694561493/250000000000 : ℚ), 2⟩,
    ⟨(696856484449/1000000000000 : ℚ), (-2478359263/10000000000 : ℚ), (30706519301/200000000000 : ℚ), 2⟩,
    ⟨(69886469029/100000000000 : ℚ), (-2541916203/10000000000 : ℚ), (157967962127/1000000000000 : ℚ), 2⟩,
    ⟨(139974730327/200000000000 : ℚ), (-2573341799/10000000000 : ℚ), (160165768631/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2577253629/10000000000 : ℚ), (160439572011/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (120927929313/500000000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control598.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control598.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate598

namespace DiagonalRamsey.JointInheritedCertificate617
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(61671264163/125000000000 : ℚ), (7415510762993/5000000000 : ℚ), (-9160109702919/12500000000 : ℚ), 12⟩,
    ⟨(494364493077/1000000000000 : ℚ), (32499857551/200000000 : ℚ), (-40510541953223/500000000000 : ℚ), 9⟩,
    ⟨(248171838101/500000000000 : ℚ), (285832759259/5000000000 : ℚ), (-28878349881309/1000000000000 : ℚ), 8⟩,
    ⟨(31205537629/62500000000 : ℚ), (282906972089/10000000000 : ℚ), (-907053337071/62500000000 : ℚ), 7⟩,
    ⟨(62896363677/125000000000 : ℚ), (41223764123/2500000000 : ℚ), (-1720306339369/200000000000 : ℚ), 6⟩,
    ⟨(507953209517/1000000000000 : ℚ), (26419778549/2500000000 : ℚ), (-2804833431953/500000000000 : ℚ), 5⟩,
    ⟨(256794723101/500000000000 : ℚ), (35989099613/5000000000 : ℚ), (-777872280677/200000000000 : ℚ), 5⟩,
    ⟨(65003167429/125000000000 : ℚ), (25545337951/5000000000 : ℚ), (-1405253424621/500000000000 : ℚ), 5⟩,
    ⟨(131799727009/250000000000 : ℚ), (37322445863/10000000000 : ℚ), (-522496691569/250000000000 : ℚ), 4⟩,
    ⟨(267520533313/500000000000 : ℚ), (27814798733/10000000000 : ℚ), (-63411343173/40000000000 : ℚ), 4⟩,
    ⟨(543476290929/1000000000000 : ℚ), (10503143249/5000000000 : ℚ), (-1218311838209/1000000000000 : ℚ), 4⟩,
    ⟨(138105836281/250000000000 : ℚ), (15986488089/10000000000 : ℚ), (-943380715497/1000000000000 : ℚ), 4⟩,
    ⟨(140449016047/250000000000 : ℚ), (12196193227/10000000000 : ℚ), (-73231161921/100000000000 : ℚ), 3⟩,
    ⟨(17859505741/31250000000 : ℚ), (1855401673/2000000000 : ℚ), (-566962479963/1000000000000 : ℚ), 3⟩,
    ⟨(290727104599/500000000000 : ℚ), (1747748213/2500000000 : ℚ), (-108806750277/250000000000 : ℚ), 3⟩,
    ⟨(295775158231/500000000000 : ℚ), (1293852717/2500000000 : ℚ), (-328778365929/1000000000000 : ℚ), 3⟩,
    ⟨(75211909309/125000000000 : ℚ), (1858054573/5000000000 : ℚ), (-60434839273/250000000000 : ℚ), 3⟩,
    ⟨(76473922717/125000000000 : ℚ), (1265627273/5000000000 : ℚ), (-84934215273/500000000000 : ℚ), 3⟩,
    ⟨(310870703611/500000000000 : ℚ), (390268349/2500000000 : ℚ), (-110045115513/1000000000000 : ℚ), 3⟩,
    ⟨(315724763373/500000000000 : ℚ), (761192881/10000000000 : ℚ), (-7491916293/125000000000 : ℚ), 3⟩,
    ⟨(64082224581/100000000000 : ℚ), (49106077/5000000000 : ℚ), (-222103077/12500000000 : ℚ), 3⟩,
    ⟨(162442325001/250000000000 : ℚ), (-226654041/5000000000 : ℚ), (17815765049/1000000000000 : ℚ), 3⟩,
    ⟨(164551131077/250000000000 : ℚ), (-91293149/1000000000 : ℚ), (47870774069/1000000000000 : ℚ), 3⟩,
    ⟨(333023341449/500000000000 : ℚ), (-1295816207/10000000000 : ℚ), (3660998593/50000000000 : ℚ), 3⟩,
    ⟨(336610125751/500000000000 : ℚ), (-1613766669/10000000000 : ℚ), (11813660289/125000000000 : ℚ), 3⟩,
    ⟨(679656144731/1000000000000 : ℚ), (-1875996131/10000000000 : ℚ), (112246388119/1000000000000 : ℚ), 2⟩,
    ⟨(685292381417/1000000000000 : ℚ), (-522421393/2500000000 : ℚ), (126829479607/1000000000000 : ℚ), 2⟩,
    ⟨(345037340759/500000000000 : ℚ), (-2260396719/10000000000 : ℚ), (17321079201/125000000000 : ℚ), 2⟩,
    ⟨(69395698887/100000000000 : ℚ), (-2392378393/10000000000 : ℚ), (147701790053/1000000000000 : ℚ), 2⟩,
    ⟨(174225478683/250000000000 : ℚ), (-2488792929/10000000000 : ℚ), (77203332397/500000000000 : ℚ), 2⟩,
    ⟨(698881097857/1000000000000 : ℚ), (-2551880747/10000000000 : ℚ), (158809487893/1000000000000 : ℚ), 2⟩,
    ⟨(69987547763/100000000000 : ℚ), (-64576879/250000000 : ℚ), (80495577321/500000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2586958249/10000000000 : ℚ), (161262946661/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (7805813153/31250000000 : ℚ)
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
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control617.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control617.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate617

namespace DiagonalRamsey.JointInheritedCertificate907
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40869376351/500000000000 : ℚ), (33609938291/1000000000 : ℚ), (-276608141907/100000000000 : ℚ), 12⟩,
    ⟨(2077883077/25000000000 : ℚ), (15708197849/5000000000 : ℚ), (-267840094741/1000000000000 : ℚ), 9⟩,
    ⟨(85658893473/1000000000000 : ℚ), (1893399913/2500000000 : ℚ), (-16899514939/250000000000 : ℚ), 7⟩,
    ⟨(88982228347/1000000000000 : ℚ), (1183560607/10000000000 : ℚ), (-12010014151/1000000000000 : ℚ), 7⟩,
    ⟨(46289690047/500000000000 : ℚ), (-1377538651/10000000000 : ℚ), (11180158349/1000000000000 : ℚ), 6⟩,
    ⟨(11987839371/125000000000 : ℚ), (-262887361/1000000000 : ℚ), (179342533/7812500000 : ℚ), 6⟩,
    ⟨(98446285361/1000000000000 : ℚ), (-3280702357/10000000000 : ℚ), (29286086863/1000000000000 : ℚ), 6⟩,
    ⟨(49911427869/500000000000 : ℚ), (-111544111/312500000 : ℚ), (6429556307/200000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1802048957/5000000000 : ℚ), (32494337179/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (175386731609/200000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i <;> decide +kernel
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control907.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control907.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate907
