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

namespace DiagonalRamsey.JointInheritedCertificate376
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7338104737/31250000000 : ℚ), (1002096179297/625000000 : ℚ), (-188571297901947/500000000000 : ℚ), 12⟩,
    ⟨(235373643651/1000000000000 : ℚ), (1753014786797/10000000000 : ℚ), (-41662571333687/1000000000000 : ℚ), 9⟩,
    ⟨(4729537793/20000000000 : ℚ), (614550070603/10000000000 : ℚ), (-14823963241631/1000000000000 : ℚ), 7⟩,
    ⟨(119059232359/500000000000 : ℚ), (302696303193/10000000000 : ℚ), (-232168443667/31250000000 : ℚ), 6⟩,
    ⟨(24028255959/100000000000 : ℚ), (87685882133/5000000000 : ℚ), (-4386060399049/1000000000000 : ℚ), 6⟩,
    ⟨(242948332849/1000000000000 : ℚ), (55776319021/5000000000 : ℚ), (-711303947679/250000000000 : ℚ), 5⟩,
    ⟨(123045055821/500000000000 : ℚ), (75270520433/10000000000 : ℚ), (-1958673712967/1000000000000 : ℚ), 5⟩,
    ⟨(124838819461/500000000000 : ℚ), (10560589973/2000000000 : ℚ), (-701057973451/500000000000 : ℚ), 4⟩,
    ⟨(253676364839/1000000000000 : ℚ), (38000979259/10000000000 : ℚ), (-514912457427/500000000000 : ℚ), 4⟩,
    ⟨(129023889739/500000000000 : ℚ), (27779343613/10000000000 : ℚ), (-76845187829/100000000000 : ℚ), 4⟩,
    ⟨(10509991349/40000000000 : ℚ), (5113531187/2500000000 : ℚ), (-577813600589/1000000000000 : ℚ), 4⟩,
    ⟨(267737094709/1000000000000 : ℚ), (15044461047/10000000000 : ℚ), (-108600652589/250000000000 : ℚ), 3⟩,
    ⟨(272961681899/1000000000000 : ℚ), (5474323213/5000000000 : ℚ), (-161863641871/500000000000 : ℚ), 3⟩,
    ⟨(55674645933/200000000000 : ℚ), (7781689387/10000000000 : ℚ), (-236464148407/1000000000000 : ℚ), 3⟩,
    ⟨(141959810921/500000000000 : ℚ), (5288530787/10000000000 : ℚ), (-166398720063/1000000000000 : ℚ), 3⟩,
    ⟨(72386860911/250000000000 : ℚ), (3295192597/10000000000 : ℚ), (-109264164973/1000000000000 : ℚ), 3⟩,
    ⟨(73800624017/250000000000 : ℚ), (840020803/5000000000 : ℚ), (-62056727211/1000000000000 : ℚ), 3⟩,
    ⟨(300830317869/1000000000000 : ℚ), (356238801/10000000000 : ℚ), (-22616649621/1000000000000 : ℚ), 3⟩,
    ⟨(306376710047/1000000000000 : ℚ), (-184833161/2500000000 : ℚ), (5318457731/500000000000 : ℚ), 3⟩,
    ⟨(311788257813/1000000000000 : ℚ), (-1653252283/10000000000 : ℚ), (3887847137/100000000000 : ℚ), 3⟩,
    ⟨(317012845003/1000000000000 : ℚ), (-2420341921/10000000000 : ℚ), (15747851571/250000000000 : ℚ), 3⟩,
    ⟨(322000155987/1000000000000 : ℚ), (-3066915447/10000000000 : ℚ), (83646708483/1000000000000 : ℚ), 2⟩,
    ⟨(163351080117/500000000000 : ℚ), (-90325799/250000000 : ℚ), (50678928873/500000000000 : ℚ), 2⟩,
    ⟨(331073574873/1000000000000 : ℚ), (-2037042523/5000000000 : ℚ), (58259912307/500000000000 : ℚ), 2⟩,
    ⟨(33507230079/100000000000 : ℚ), (-892388193/2000000000 : ℚ), (6471862591/50000000000 : ℚ), 2⟩,
    ⟨(338659828069/1000000000000 : ℚ), (-4785764497/10000000000 : ℚ), (140345126759/1000000000000 : ℚ), 2⟩,
    ⟨(341801606863/1000000000000 : ℚ), (-5052624497/10000000000 : ℚ), (74712068219/500000000000 : ℚ), 2⟩,
    ⟨(172233690061/500000000000 : ℚ), (-1053588231/2000000000 : ℚ), (78406088617/500000000000 : ℚ), 2⟩,
    ⟨(173315737497/500000000000 : ℚ), (-271790857/500000000 : ℚ), (81306507299/500000000000 : ℚ), 2⟩,
    ⟨(174136525031/500000000000 : ℚ), (-5559281513/10000000000 : ℚ), (166902767741/1000000000000 : ℚ), 2⟩,
    ⟨(17468814803/50000000000 : ℚ), (-352529139/625000000 : ℚ), (42433669451/250000000000 : ℚ), 2⟩,
    ⟨(10935330879/31250000000 : ℚ), (-1420182149/2500000000 : ℚ), (171142463911/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-710718263/1250000000 : ℚ), (85659029631/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (157641646217/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control376.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control376.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate376

namespace DiagonalRamsey.JointInheritedCertificate420
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236212277139/1000000000000 : ℚ), (79485149139/50000000 : ℚ), (-188069219241619/500000000000 : ℚ), 12⟩,
    ⟨(236759865931/1000000000000 : ℚ), (1738343139533/10000000000 : ℚ), (-4155018038003/100000000000 : ℚ), 9⟩,
    ⟨(14865610621/62500000000 : ℚ), (609521067557/10000000000 : ℚ), (-739145827643/50000000000 : ℚ), 7⟩,
    ⟨(239471492781/1000000000000 : ℚ), (37534605773/1250000000 : ℚ), (-7408003458861/1000000000000 : ℚ), 6⟩,
    ⟨(24160941639/100000000000 : ℚ), (17400004591/1000000000 : ℚ), (-218638440727/50000000000 : ℚ), 6⟩,
    ⟨(244242951389/1000000000000 : ℚ), (110695104373/10000000000 : ℚ), (-567205457761/200000000000 : ℚ), 5⟩,
    ⟨(247346735397/1000000000000 : ℚ), (14939609821/2000000000 : ℚ), (-1951851058491/1000000000000 : ℚ), 5⟩,
    ⟨(125445438639/500000000000 : ℚ), (52402004959/10000000000 : ℚ), (-698392096113/500000000000 : ℚ), 4⟩,
    ⟨(127420622503/500000000000 : ℚ), (9427377491/2500000000 : ℚ), (-512748300389/500000000000 : ℚ), 4⟩,
    ⟨(259159794383/1000000000000 : ℚ), (13780471473/5000000000 : ℚ), (-764834598951/1000000000000 : ℚ), 4⟩,
    ⟨(32975616927/125000000000 : ℚ), (20286256483/10000000000 : ℚ), (-17960055151/31250000000 : ℚ), 4⟩,
    ⟨(268731932857/1000000000000 : ℚ), (7456290049/5000000000 : ℚ), (-107928257167/250000000000 : ℚ), 3⟩,
    ⟨(273893337029/1000000000000 : ℚ), (338845151/312500000 : ℚ), (-321355116417/1000000000000 : ℚ), 3⟩,
    ⟨(69809860197/250000000000 : ℚ), (1923926233/2500000000 : ℚ), (-11717454321/50000000000 : ℚ), 3⟩,
    ⟨(284718758231/1000000000000 : ℚ), (2608740601/5000000000 : ℚ), (-20562081257/125000000000 : ℚ), 3⟩,
    ⟨(290278520537/1000000000000 : ℚ), (202232299/625000000 : ℚ), (-107541934931/1000000000000 : ℚ), 3⟩,
    ⟨(59173036831/200000000000 : ℚ), (203709923/1250000000 : ℚ), (-483909983/8000000000 : ℚ), 3⟩,
    ⟨(301424946461/1000000000000 : ℚ), (2446529/78125000 : ℚ), (-10591313837/500000000000 : ℚ), 3⟩,
    ⟨(61380852781/200000000000 : ℚ), (-776529497/10000000000 : ℚ), (5976760997/500000000000 : ℚ), 3⟩,
    ⟨(312250367663/1000000000000 : ℚ), (-1685639727/10000000000 : ℚ), (40091522843/1000000000000 : ℚ), 3⟩,
    ⟨(63482354367/200000000000 : ℚ), (-2448767517/10000000000 : ℚ), (64112829861/1000000000000 : ℚ), 3⟩,
    ⟨(322338769277/1000000000000 : ℚ), (-3092058317/10000000000 : ℚ), (42343512713/500000000000 : ℚ), 3⟩,
    ⟨(32698391031/100000000000 : ℚ), (-3635445903/10000000000 : ℚ), (6395409729/62500000000 : ℚ), 2⟩,
    ⟨(165651229843/500000000000 : ℚ), (-2047114723/5000000000 : ℚ), (23485124073/200000000000 : ℚ), 2⟩,
    ⟨(67050565483/200000000000 : ℚ), (-2240101613/5000000000 : ℚ), (26057655509/200000000000 : ℚ), 2⟩,
    ⟨(67759393859/200000000000 : ℚ), (-4802476573/10000000000 : ℚ), (28229812439/200000000000 : ℚ), 2⟩,
    ⟨(341900753303/1000000000000 : ℚ), (-1013615063/2000000000 : ℚ), (37547076187/250000000000 : ℚ), 2⟩,
    ⟨(344534288303/1000000000000 : ℚ), (-26411931/50000000 : ℚ), (78771808627/500000000000 : ℚ), 2⟩,
    ⟨(346672211911/1000000000000 : ℚ), (-2724743043/5000000000 : ℚ), (81659268929/500000000000 : ℚ), 2⟩,
    ⟨(348293934757/1000000000000 : ℚ), (-1114476911/2000000000 : ℚ), (83794504009/500000000000 : ℚ), 2⟩,
    ⟨(349383838761/1000000000000 : ℚ), (-5653199543/10000000000 : ℚ), (85204068163/500000000000 : ℚ), 2⟩,
    ⟨(349931427553/1000000000000 : ℚ), (-711659911/1250000000 : ℚ), (17180955361/100000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-5698274073/10000000000 : ℚ), (171984353983/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (10137624821/31250000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control420.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control420.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate420

namespace DiagonalRamsey.JointInheritedCertificate421
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5164389327/20000000000 : ℚ), (649533614507/400000000 : ℚ), (-419996584875291/1000000000000 : ℚ), 12⟩,
    ⟨(258805519517/1000000000000 : ℚ), (284172859/1600000 : ℚ), (-46396883720293/1000000000000 : ℚ), 9⟩,
    ⟨(259971981837/1000000000000 : ℚ), (622974093639/10000000000 : ℚ), (-16508717591327/1000000000000 : ℚ), 7⟩,
    ⟨(130853809821/500000000000 : ℚ), (153520708783/5000000000 : ℚ), (-2068495193963/250000000000 : ℚ), 6⟩,
    ⟨(263995717791/1000000000000 : ℚ), (178014477761/10000000000 : ℚ), (-976985585027/200000000000 : ℚ), 6⟩,
    ⟨(266814240647/1000000000000 : ℚ), (113319835089/10000000000 : ℚ), (-99034503867/31250000000 : ℚ), 5⟩,
    ⟨(135068022147/500000000000 : ℚ), (76525942123/10000000000 : ℚ), (-2181949769943/1000000000000 : ℚ), 5⟩,
    ⟨(273929137949/1000000000000 : ℚ), (26866191387/5000000000 : ℚ), (-390573714209/250000000000 : ℚ), 4⟩,
    ⟨(69539248011/250000000000 : ℚ), (19354880993/5000000000 : ℚ), (-1147863728621/1000000000000 : ℚ), 4⟩,
    ⟨(56555778007/200000000000 : ℚ), (7083001533/2500000000 : ℚ), (-171394481057/200000000000 : ℚ), 4⟩,
    ⟨(71937580129/250000000000 : ℚ), (2089262251/1000000000 : ℚ), (-322435324499/500000000000 : ℚ), 4⟩,
    ⟨(58604681179/200000000000 : ℚ), (3849345601/2500000000 : ℚ), (-242689262893/500000000000 : ℚ), 3⟩,
    ⟨(298547363477/1000000000000 : ℚ), (11236215479/10000000000 : ℚ), (-362356108139/1000000000000 : ℚ), 3⟩,
    ⟨(304268994531/1000000000000 : ℚ), (400932539/500000000 : ℚ), (-66354645301/250000000000 : ℚ), 3⟩,
    ⟨(155066598311/500000000000 : ℚ), (685737211/1250000000 : ℚ), (-18764311953/100000000000 : ℚ), 3⟩,
    ⟨(158041747139/500000000000 : ℚ), (692270321/2000000000 : ℚ), (-62137808281/500000000000 : ℚ), 3⟩,
    ⟨(322062582879/1000000000000 : ℚ), (910738689/5000000000 : ℚ), (-8996045031/125000000000 : ℚ), 3⟩,
    ⟨(65602576107/200000000000 : ℚ), (95605017/2000000000 : ℚ), (-14156688491/500000000000 : ℚ), 3⟩,
    ⟨(166938541313/500000000000 : ℚ), (-633190317/10000000000 : ℚ), (4226365849/500000000000 : ℚ), 3⟩,
    ⟨(339598713679/1000000000000 : ℚ), (-1559570933/10000000000 : ℚ), (39640911657/1000000000000 : ℚ), 3⟩,
    ⟨(345122671261/1000000000000 : ℚ), (-584145153/2500000000 : ℚ), (33118962477/500000000000 : ℚ), 3⟩,
    ⟨(350395756641/1000000000000 : ℚ), (-1495519823/5000000000 : ℚ), (88993956913/1000000000000 : ℚ), 3⟩,
    ⟨(177683593561/500000000000 : ℚ), (-354340947/1000000000 : ℚ), (10848369179/100000000000 : ℚ), 2⟩,
    ⟨(359989085113/1000000000000 : ℚ), (-801880939/2000000000 : ℚ), (31287424011/250000000000 : ℚ), 2⟩,
    ⟨(45527117401/125000000000 : ℚ), (-275071751/625000000 : ℚ), (34833439629/250000000000 : ℚ), 2⟩,
    ⟨(184005016431/500000000000 : ℚ), (-2364004307/5000000000 : ℚ), (151299875519/1000000000000 : ℚ), 2⟩,
    ⟨(37133183651/100000000000 : ℚ), (-999443461/2000000000 : ℚ), (161251321337/1000000000000 : ℚ), 2⟩,
    ⟨(187075179683/500000000000 : ℚ), (-130358031/250000000 : ℚ), (84671722103/500000000000 : ℚ), 2⟩,
    ⟨(75287691503/200000000000 : ℚ), (-269176043/500000000 : ℚ), (87846647677/500000000000 : ℚ), 2⟩,
    ⟨(9454352383/25000000000 : ℚ), (-2753959173/5000000000 : ℚ), (721547371/4000000000 : ℚ), 2⟩,
    ⟨(9483513941/25000000000 : ℚ), (-5589697567/10000000000 : ℚ), (91742138351/500000000000 : ℚ), 2⟩,
    ⟨(379926610807/1000000000000 : ℚ), (-43986321/78125000 : ℚ), (185023746923/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1408825591/2500000000 : ℚ), (185215752867/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (306176527373/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control421.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control421.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate421

namespace DiagonalRamsey.JointInheritedCertificate422
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144054202057/500000000000 : ℚ), (8365058304979/5000000000 : ℚ), (-482781483617367/1000000000000 : ℚ), 12⟩,
    ⟨(72185778867/250000000000 : ℚ), (1830455472927/10000000000 : ℚ), (-2666783236027/50000000000 : ℚ), 9⟩,
    ⟨(290006425559/1000000000000 : ℚ), (642359415789/10000000000 : ℚ), (-18979837159379/1000000000000 : ℚ), 7⟩,
    ⟨(14594308401/50000000000 : ℚ), (158394799937/5000000000 : ℚ), (-1189281182181/125000000000 : ℚ), 6⟩,
    ⟨(294364239903/1000000000000 : ℚ), (9189998327/500000000 : ℚ), (-2809356639553/500000000000 : ℚ), 6⟩,
    ⟨(297416776021/1000000000000 : ℚ), (117102769967/10000000000 : ℚ), (-3646550718043/1000000000000 : ℚ), 5⟩,
    ⟨(9406699337/31250000000 : ℚ), (79160514267/10000000000 : ℚ), (-1256003778319/500000000000 : ℚ), 5⟩,
    ⟨(30512240131/100000000000 : ℚ), (55649843199/10000000000 : ℚ), (-1799924768007/1000000000000 : ℚ), 4⟩,
    ⟨(61940256219/200000000000 : ℚ), (40151273019/10000000000 : ℚ), (-82735526179/62500000000 : ℚ), 4⟩,
    ⟨(157353460513/500000000000 : ℚ), (2944298871/1000000000 : ℚ), (-61852683939/62500000000 : ℚ), 4⟩,
    ⟨(80022778513/250000000000 : ℚ), (21765991617/10000000000 : ℚ), (-9326339321/12500000000 : ℚ), 4⟩,
    ⟨(325802007453/1000000000000 : ℚ), (16095284807/10000000000 : ℚ), (-14076644053/25000000000 : ℚ), 3⟩,
    ⟨(331784602201/1000000000000 : ℚ), (1180178201/1000000000 : ℚ), (-84392806519/200000000000 : ℚ), 3⟩,
    ⟨(337981282641/1000000000000 : ℚ), (4241366703/5000000000 : ℚ), (-155431148691/500000000000 : ℚ), 3⟩,
    ⟨(6886647427/20000000000 : ℚ), (1467780771/2500000000 : ℚ), (-221800101409/1000000000000 : ℚ), 3⟩,
    ⟨(2806213631/8000000000 : ℚ), (756932329/2000000000 : ℚ), (-5972384769/40000000000 : ℚ), 3⟩,
    ⟨(44656527221/125000000000 : ℚ), (2095778017/10000000000 : ℚ), (-44769700637/500000000000 : ℚ), 3⟩,
    ⟨(90924137573/250000000000 : ℚ), (356644833/5000000000 : ℚ), (-19858996883/500000000000 : ℚ), 3⟩,
    ⟨(185023819501/500000000000 : ℚ), (-3352833/78125000 : ℚ), (1092652283/500000000000 : ℚ), 3⟩,
    ⟨(376244319441/1000000000000 : ℚ), (-1380620991/10000000000 : ℚ), (37681235531/1000000000000 : ℚ), 3⟩,
    ⟨(38222691419/100000000000 : ℚ), (-217780473/1000000000 : ℚ), (2716318693/40000000000 : ℚ), 3⟩,
    ⟨(38793780759/100000000000 : ℚ), (-2848506971/10000000000 : ℚ), (18746347159/200000000000 : ℚ), 3⟩,
    ⟨(393322000617/1000000000000 : ℚ), (-3413950323/10000000000 : ℚ), (115816985093/1000000000000 : ℚ), 2⟩,
    ⟨(398327640547/1000000000000 : ℚ), (-3890449161/10000000000 : ℚ), (33669042369/250000000000 : ℚ), 2⟩,
    ⟨(402906520333/1000000000000 : ℚ), (-4290600751/10000000000 : ℚ), (75352857021/500000000000 : ℚ), 2⟩,
    ⟨(203507271429/500000000000 : ℚ), (-4624150137/10000000000 : ℚ), (41053093533/250000000000 : ℚ), 2⟩,
    ⟨(410612145621/1000000000000 : ℚ), (-97972499/200000000 : ℚ), (175432803391/1000000000000 : ℚ), 2⟩,
    ⟨(20683234087/50000000000 : ℚ), (-2559902421/5000000000 : ℚ), (184548215233/1000000000000 : ℚ), 2⟩,
    ⟨(416142753623/1000000000000 : ℚ), (-330754347/625000000 : ℚ), (191695412207/1000000000000 : ℚ), 2⟩,
    ⟨(104505624021/250000000000 : ℚ), (-2709327857/5000000000 : ℚ), (6155470233/31250000000 : ℚ), 2⟩,
    ⟨(209642903087/500000000000 : ℚ), (-1375460751/2500000000 : ℚ), (200457702249/1000000000000 : ℚ), 2⟩,
    ⟨(52490064691/125000000000 : ℚ), (-2165267/3906250 : ℚ), (101094082713/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2774111111/5000000000 : ℚ), (202403970481/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (140966386539/500000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control422.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control422.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate422

namespace DiagonalRamsey.JointInheritedCertificate467
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(100781319119/500000000000 : ℚ), (3814016179817/2500000000 : ℚ), (-308028143080671/1000000000000 : ℚ), 12⟩,
    ⟨(20203635539/100000000000 : ℚ), (333580150483/2000000000 : ℚ), (-34023054861431/1000000000000 : ℚ), 9⟩,
    ⟨(202979227539/1000000000000 : ℚ), (292306796889/5000000000 : ℚ), (-12102439411521/1000000000000 : ℚ), 7⟩,
    ⟨(204382174311/1000000000000 : ℚ), (71966097717/2500000000 : ℚ), (-9473157769/1562500000 : ℚ), 6⟩,
    ⟨(2577896057/12500000000 : ℚ), (166699875513/10000000000 : ℚ), (-715416685281/200000000000 : ℚ), 6⟩,
    ⟨(208509946493/1000000000000 : ℚ), (13245359591/1250000000 : ℚ), (-36226397937/15625000000 : ℚ), 5⟩,
    ⟨(105597509601/500000000000 : ℚ), (17857085887/2500000000 : ℚ), (-1594282368267/1000000000000 : ℚ), 5⟩,
    ⟨(836957203/3906250000 : ℚ), (50038849223/10000000000 : ℚ), (-56978727287/50000000000 : ℚ), 4⟩,
    ⟨(108839246649/500000000000 : ℚ), (17971710417/5000000000 : ℚ), (-417675766939/500000000000 : ℚ), 4⟩,
    ⟨(44282891057/200000000000 : ℚ), (5241260829/2000000000 : ℚ), (-310853294671/500000000000 : ℚ), 4⟩,
    ⟨(9017318023/40000000000 : ℚ), (9612597399/5000000000 : ℚ), (-465821152909/1000000000000 : ℚ), 4⟩,
    ⟨(229695278859/1000000000000 : ℚ), (14066787009/10000000000 : ℚ), (-10890524061/31250000000 : ℚ), 4⟩,
    ⟨(234160391587/1000000000000 : ℚ), (2031713297/2000000000 : ℚ), (-257898815781/1000000000000 : ℚ), 3⟩,
    ⟨(238785287283/1000000000000 : ℚ), (3567119557/5000000000 : ℚ), (-186413876733/1000000000000 : ℚ), 3⟩,
    ⟨(243525425673/1000000000000 : ℚ), (950230483/2000000000 : ℚ), (-64483963159/500000000000 : ℚ), 3⟩,
    ⟨(31041894579/125000000000 : ℚ), (2843810297/10000000000 : ℚ), (-8207780451/100000000000 : ℚ), 3⟩,
    ⟨(126584079911/500000000000 : ℚ), (162066039/1250000000 : ℚ), (-21646047133/500000000000 : ℚ), 3⟩,
    ⟨(257977890781/1000000000000 : ℚ), (6683183/2500000000 : ℚ), (-10848837313/1000000000000 : ℚ), 3⟩,
    ⟨(262718029171/1000000000000 : ℚ), (-1025575649/10000000000 : ℚ), (4135246203/250000000000 : ℚ), 3⟩,
    ⟨(267342924867/1000000000000 : ℚ), (-76186359/400000000 : ℚ), (9958601819/250000000000 : ℚ), 3⟩,
    ⟨(54361607519/200000000000 : ℚ), (-528718197/2000000000 : ℚ), (14937654007/250000000000 : ℚ), 3⟩,
    ⟨(276070365879/1000000000000 : ℚ), (-816837543/2500000000 : ℚ), (4802204201/62500000000 : ℚ), 3⟩,
    ⟨(280088861169/1000000000000 : ℚ), (-758992913/2000000000 : ℚ), (91505354209/1000000000000 : ℚ), 3⟩,
    ⟨(70956205789/250000000000 : ℚ), (-530128107/1250000000 : ℚ), (104081100049/1000000000000 : ℚ), 3⟩,
    ⟨(143621136243/500000000000 : ℚ), (-288548019/625000000 : ℚ), (14351127331/125000000000 : ℚ), 3⟩,
    ⟨(72577074313/250000000000 : ℚ), (-4930865389/10000000000 : ℚ), (61939422121/500000000000 : ℚ), 2⟩,
    ⟨(292993369961/1000000000000 : ℚ), (-5189996799/10000000000 : ℚ), (65718059037/500000000000 : ℚ), 2⟩,
    ⟨(147635815947/500000000000 : ℚ), (-1079855941/2000000000 : ℚ), (137591632283/1000000000000 : ℚ), 2⟩,
    ⟨(297121142143/1000000000000 : ℚ), (-1390645863/2500000000 : ℚ), (35607135641/250000000000 : ℚ), 2⟩,
    ⟨(59704817783/200000000000 : ℚ), (-177586317/312500000 : ℚ), (73003849801/500000000000 : ℚ), 2⟩,
    ⟨(37433370133/125000000000 : ℚ), (-5761822969/10000000000 : ℚ), (7418578617/50000000000 : ℚ), 2⟩,
    ⟨(37492584777/125000000000 : ℚ), (-5801043023/10000000000 : ℚ), (74773505517/500000000000 : ℚ), 2⟩,
    ⟨(3/10 : ℚ), (-5805931153/10000000000 : ℚ), (18711705053/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (91125737843/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control467.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control467.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate467

namespace DiagonalRamsey.JointInheritedCertificate468
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118825154699/500000000000 : ℚ), (3940327683491/2500000000 : ℚ), (-375186057131817/1000000000000 : ℚ), 12⟩,
    ⟨(47638195569/200000000000 : ℚ), (861879757391/5000000000 : ℚ), (-20721764841671/500000000000 : ℚ), 9⟩,
    ⟨(47853421561/200000000000 : ℚ), (302261968821/5000000000 : ℚ), (-14743927689003/1000000000000 : ℚ), 7⟩,
    ⟨(240868335559/1000000000000 : ℚ), (148936901503/5000000000 : ℚ), (-3693830320619/500000000000 : ℚ), 6⟩,
    ⟨(30372405051/125000000000 : ℚ), (86319195609/5000000000 : ℚ), (-2180052310317/500000000000 : ℚ), 6⟩,
    ⟨(49115898637/200000000000 : ℚ), (21968886203/2000000000 : ℚ), (-2827256048601/1000000000000 : ℚ), 5⟩,
    ⟨(49728810407/200000000000 : ℚ), (14826121171/2000000000 : ℚ), (-972662754659/500000000000 : ℚ), 5⟩,
    ⟨(252143403579/1000000000000 : ℚ), (52004947553/10000000000 : ℚ), (-278334963571/200000000000 : ℚ), 4⟩,
    ⟨(5120876943/20000000000 : ℚ), (935529339/250000000 : ℚ), (-127667667589/125000000000 : ℚ), 4⟩,
    ⟨(16269238709/62500000000 : ℚ), (5469030493/2000000000 : ℚ), (-761356347431/1000000000000 : ℚ), 4⟩,
    ⟨(264894255777/1000000000000 : ℚ), (4024124613/2000000000 : ℚ), (-571744685727/1000000000000 : ℚ), 4⟩,
    ⟨(269758986561/1000000000000 : ℚ), (7391328269/5000000000 : ℚ), (-429120434823/1000000000000 : ℚ), 3⟩,
    ⟨(274855161677/1000000000000 : ℚ), (5369595281/5000000000 : ℚ), (-79766664631/250000000000 : ℚ), 3⟩,
    ⟨(140066851087/500000000000 : ℚ), (7611305563/10000000000 : ℚ), (-116153823699/500000000000 : ℚ), 3⟩,
    ⟨(285543772821/1000000000000 : ℚ), (5147889301/10000000000 : ℚ), (-81330219863/500000000000 : ℚ), 3⟩,
    ⟨(291033271681/1000000000000 : ℚ), (1588798611/5000000000 : ℚ), (-105879526193/1000000000000 : ℚ), 3⟩,
    ⟨(148274665939/500000000000 : ℚ), (1580591751/10000000000 : ℚ), (-14743963581/250000000000 : ℚ), 3⟩,
    ⟨(151019415369/500000000000 : ℚ), (135640441/5000000000 : ℚ), (-3959990831/200000000000 : ℚ), 3⟩,
    ⟨(61489780277/200000000000 : ℚ), (-162514467/2000000000 : ℚ), (6610871699/500000000000 : ℚ), 3⟩,
    ⟨(312727441883/1000000000000 : ℚ), (-171691773/1000000000 : ℚ), (4125854563/100000000000 : ℚ), 3⟩,
    ⟨(317823616999/1000000000000 : ℚ), (-2476120409/10000000000 : ℚ), (6519010107/100000000000 : ℚ), 3⟩,
    ⟨(161344173891/500000000000 : ℚ), (-3116158803/10000000000 : ℚ), (5355292739/62500000000 : ℚ), 3⟩,
    ⟨(40909348027/125000000000 : ℚ), (-914210619/2500000000 : ℚ), (51626891081/500000000000 : ℚ), 3⟩,
    ⟨(33153875641/100000000000 : ℚ), (-2056688533/5000000000 : ℚ), (23658176949/200000000000 : ℚ), 3⟩,
    ⟨(335439199981/1000000000000 : ℚ), (-2248742791/5000000000 : ℚ), (32774878103/250000000000 : ℚ), 2⟩,
    ⟨(13557542061/40000000000 : ℚ), (-481822247/1000000000 : ℚ), (35478446357/250000000000 : ℚ), 2⟩,
    ⟨(171001555187/500000000000 : ℚ), (-1270642747/2500000000 : ℚ), (150913707999/1000000000000 : ℚ), 2⟩,
    ⟨(344603363151/1000000000000 : ℚ), (-2647942399/5000000000 : ℚ), (158236631487/1000000000000 : ℚ), 2⟩,
    ⟨(346714268001/1000000000000 : ℚ), (-85347113/156250000 : ℚ), (163985885733/1000000000000 : ℚ), 2⟩,
    ⟨(69663099151/200000000000 : ℚ), (-1116910521/2000000000 : ℚ), (168237248691/1000000000000 : ℚ), 2⟩,
    ⟨(69878325143/200000000000 : ℚ), (-2832500497/5000000000 : ℚ), (34208741377/200000000000 : ℚ), 2⟩,
    ⟨(349932294161/1000000000000 : ℚ), (-5704899651/10000000000 : ℚ), (21554851199/125000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-2854935951/5000000000 : ℚ), (172612821533/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (333566791883/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control468.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control468.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate468

namespace DiagonalRamsey.JointInheritedCertificate469
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129901107543/500000000000 : ℚ), (16106233796813/10000000000 : ℚ), (-83824073744519/200000000000 : ℚ), 12⟩,
    ⟨(130190325739/500000000000 : ℚ), (352380002419/2000000000 : ℚ), (-23149342756717/500000000000 : ℚ), 9⟩,
    ⟨(130765976801/500000000000 : ℚ), (618123465681/10000000000 : ℚ), (-8236382168671/500000000000 : ℚ), 7⟩,
    ⟨(263245033791/1000000000000 : ℚ), (304714105469/10000000000 : ℚ), (-8255181416999/1000000000000 : ℚ), 6⟩,
    ⟨(53100678829/200000000000 : ℚ), (176699398389/10000000000 : ℚ), (-609149179713/125000000000 : ℚ), 6⟩,
    ⟨(13414264271/50000000000 : ℚ), (112500946397/10000000000 : ℚ), (-63219045463/20000000000 : ℚ), 5⟩,
    ⟨(135781958241/500000000000 : ℚ), (18995436477/2500000000 : ℚ), (-2175865559833/1000000000000 : ℚ), 5⟩,
    ⟨(137653856161/500000000000 : ℚ), (1333829679/250000000 : ℚ), (-1557515601983/1000000000000 : ℚ), 4⟩,
    ⟨(139740309069/500000000000 : ℚ), (38435662459/10000000000 : ℚ), (-1143964809831/1000000000000 : ℚ), 4⟩,
    ⟨(35505305821/125000000000 : ℚ), (7031972023/2500000000 : ℚ), (-170739873767/200000000000 : ℚ), 4⟩,
    ⟨(288949264709/1000000000000 : ℚ), (129604843/62500000 : ℚ), (-642062208549/1000000000000 : ℚ), 4⟩,
    ⟨(14707690861/50000000000 : ℚ), (7637906199/5000000000 : ℚ), (-241463899561/500000000000 : ℚ), 3⟩,
    ⟨(37450747677/125000000000 : ℚ), (348112487/312500000 : ℚ), (-5627962757/15625000000 : ℚ), 3⟩,
    ⟨(12210129999/40000000000 : ℚ), (1985150869/2500000000 : ℚ), (-263484177561/1000000000000 : ℚ), 3⟩,
    ⟨(311041236613/1000000000000 : ℚ), (1355485423/2500000000 : ℚ), (-185902702869/1000000000000 : ℚ), 3⟩,
    ⟨(19807137491/62500000000 : ℚ), (106508799/312500000 : ℚ), (-4908022117/40000000000 : ℚ), 3⟩,
    ⟨(20175973741/62500000000 : ℚ), (1776954123/10000000000 : ℚ), (-17634127239/250000000000 : ℚ), 3⟩,
    ⟨(328688543099/1000000000000 : ℚ), (1719961/39062500 : ℚ), (-13503553523/500000000000 : ℚ), 3⟩,
    ⟨(334476529737/1000000000000 : ℚ), (-665412851/10000000000 : ℚ), (9647892017/1000000000000 : ℚ), 3⟩,
    ⟨(42515474787/125000000000 : ℚ), (-1587314583/10000000000 : ℚ), (8147441477/200000000000 : ℚ), 3⟩,
    ⟨(86393990623/250000000000 : ℚ), (-11803203/50000000 : ℚ), (2689840949/40000000000 : ℚ), 3⟩,
    ⟨(350780515003/1000000000000 : ℚ), (-602410247/2000000000 : ℚ), (22480850567/250000000000 : ℚ), 3⟩,
    ⟨(44460916643/125000000000 : ℚ), (-3561889333/10000000000 : ℚ), (27335804891/250000000000 : ℚ), 3⟩,
    ⟨(180124580787/500000000000 : ℚ), (-503222561/1250000000 : ℚ), (62973726681/500000000000 : ℚ), 3⟩,
    ⟨(364422067391/1000000000000 : ℚ), (-176631191/400000000 : ℚ), (70038727491/500000000000 : ℚ), 2⟩,
    ⟨(36816586323/100000000000 : ℚ), (-94824089/200000000 : ℚ), (4749902709/31250000000 : ℚ), 2⟩,
    ⟨(92861123573/250000000000 : ℚ), (-5009245151/10000000000 : ℚ), (161908761151/1000000000000 : ℚ), 2⟩,
    ⟨(374226385567/1000000000000 : ℚ), (-2612708933/5000000000 : ℚ), (169968217307/1000000000000 : ℚ), 2⟩,
    ⟨(376484745921/1000000000000 : ℚ), (-269694951/500000000 : ℚ), (176292137349/1000000000000 : ℚ), 2⟩,
    ⟨(37819782611/100000000000 : ℚ), (-2758886341/5000000000 : ℚ), (90483177539/500000000000 : ℚ), 2⟩,
    ⟨(75869825647/200000000000 : ℚ), (-55992097/100000000 : ℚ), (1472407677/8000000000 : ℚ), 2⟩,
    ⟨(189963782313/500000000000 : ℚ), (-1409898049/2500000000 : ℚ), (18558403233/100000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-5644624441/10000000000 : ℚ), (92887619711/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (157496191013/500000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control469.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control469.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate469

namespace DiagonalRamsey.JointInheritedCertificate470
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137339231277/500000000000 : ℚ), (16332782091411/10000000000 : ℚ), (-449342610177107/1000000000000 : ℚ), 12⟩,
    ⟨(137640778173/500000000000 : ℚ), (223368238889/1250000000 : ℚ), (-6204794559159/125000000000 : ℚ), 9⟩,
    ⟨(4320030247/15625000000 : ℚ), (25082010673/400000000 : ℚ), (-3532368383683/200000000000 : ℚ), 7⟩,
    ⟨(69567010157/250000000000 : ℚ), (309201301823/10000000000 : ℚ), (-8851764008731/1000000000000 : ℚ), 6⟩,
    ⟨(140311334821/500000000000 : ℚ), (44840277957/2500000000 : ℚ), (-522596819433/100000000000 : ℚ), 6⟩,
    ⟨(283523146483/1000000000000 : ℚ), (22848037673/2000000000 : ℚ), (-339033030977/100000000000 : ℚ), 5⟩,
    ⟨(35867692247/125000000000 : ℚ), (38596018853/5000000000 : ℚ), (-233429135281/100000000000 : ℚ), 5⟩,
    ⟨(290844923141/1000000000000 : ℚ), (10846641767/2000000000 : ℚ), (-13058164321/7812500000 : ℚ), 4⟩,
    ⟨(59039142049/200000000000 : ℚ), (4887065361/1250000000 : ℚ), (-614088307561/500000000000 : ℚ), 4⟩,
    ⟨(299951998831/1000000000000 : ℚ), (7159147219/2500000000 : ℚ), (-183418808217/200000000000 : ℚ), 4⟩,
    ⟨(152533991619/500000000000 : ℚ), (845445119/400000000 : ℚ), (-690319457987/1000000000000 : ℚ), 4⟩,
    ⟨(15524719687/50000000000 : ℚ), (3898613543/2500000000 : ℚ), (-519842655771/1000000000000 : ℚ), 3⟩,
    ⟨(316178971039/1000000000000 : ℚ), (11397404779/10000000000 : ℚ), (-15535789061/40000000000 : ℚ), 3⟩,
    ⟨(161033484773/500000000000 : ℚ), (4075894387/5000000000 : ℚ), (-17803986149/62500000000 : ℚ), 3⟩,
    ⟨(164050842309/500000000000 : ℚ), (5596933053/10000000000 : ℚ), (-25230199759/125000000000 : ℚ), 3⟩,
    ⟨(334224998649/1000000000000 : ℚ), (1777442279/5000000000 : ℚ), (-134240038267/1000000000000 : ℚ), 3⟩,
    ⟨(340377940779/1000000000000 : ℚ), (380222703/2000000000 : ℚ), (-78475456449/1000000000000 : ℚ), 3⟩,
    ⟨(346501254811/1000000000000 : ℚ), (68327261/1250000000 : ℚ), (-7992371643/250000000000 : ℚ), 3⟩,
    ⟨(352535969883/1000000000000 : ℚ), (-286683429/5000000000 : ℚ), (1791677301/250000000000 : ℚ), 3⟩,
    ⟨(35842396839/100000000000 : ℚ), (-753349151/5000000000 : ℚ), (20168972937/500000000000 : ℚ), 3⟩,
    ⟨(364108545689/1000000000000 : ℚ), (-457840249/2000000000 : ℚ), (68602203921/1000000000000 : ℚ), 3⟩,
    ⟨(369534956191/1000000000000 : ℚ), (-1473992633/5000000000 : ℚ), (46382157717/500000000000 : ℚ), 3⟩,
    ⟨(187325470299/500000000000 : ℚ), (-218984049/625000000 : ℚ), (113441267369/1000000000000 : ℚ), 3⟩,
    ⟨(379407229183/1000000000000 : ℚ), (-993095609/2500000000 : ℚ), (2622171571/20000000000 : ℚ), 2⟩,
    ⟨(11992438009/31250000000 : ℚ), (-2183086247/5000000000 : ℚ), (146133798307/1000000000000 : ℚ), 2⟩,
    ⟨(387661401453/1000000000000 : ℚ), (-586825723/1250000000 : ℚ), (19850133901/125000000000 : ℚ), 2⟩,
    ⟨(78215958589/200000000000 : ℚ), (-4965009951/10000000000 : ℚ), (169329380689/1000000000000 : ℚ), 2⟩,
    ⟨(393980269787/1000000000000 : ℚ), (-5183008241/10000000000 : ℚ), (177886225891/1000000000000 : ℚ), 2⟩,
    ⟨(396334898801/1000000000000 : ℚ), (-5352859743/10000000000 : ℚ), (184597916247/1000000000000 : ℚ), 2⟩,
    ⟨(398121003621/1000000000000 : ℚ), (-5477710469/10000000000 : ℚ), (189557286311/1000000000000 : ℚ), 2⟩,
    ⟨(199660691541/500000000000 : ℚ), (-44478203/80000000 : ℚ), (96414686759/500000000000 : ℚ), 2⟩,
    ⟨(199962238437/500000000000 : ℚ), (-2800232449/5000000000 : ℚ), (9722770919/50000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-7006919/12500000 : ℚ), (38931642263/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (302667427121/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control470.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control470.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate470

namespace DiagonalRamsey.JointInheritedCertificate471
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289778752647/1000000000000 : ℚ), (8291455302687/5000000000 : ℚ), (-60161754259253/125000000000 : ℚ), 12⟩,
    ⟨(290405425663/1000000000000 : ℚ), (907301956763/5000000000 : ℚ), (-26584771480059/500000000000 : ℚ), 9⟩,
    ⟨(72913184123/250000000000 : ℚ), (63691176423/1000000000 : ℚ), (-189194247059/10000000000 : ℚ), 7⟩,
    ⟨(293508672849/1000000000000 : ℚ), (39270139659/1250000000 : ℚ), (-592685338217/62500000000 : ℚ), 6⟩,
    ⟨(295955361051/1000000000000 : ℚ), (22788170497/1250000000 : ℚ), (-349963844711/62500000000 : ℚ), 6⟩,
    ⟨(59793847631/200000000000 : ℚ), (116165829629/10000000000 : ℚ), (-3633335479689/1000000000000 : ℚ), 5⟩,
    ⟨(2420170231/8000000000 : ℚ), (78533515949/10000000000 : ℚ), (-2502293985859/1000000000000 : ℚ), 5⟩,
    ⟨(153288637559/500000000000 : ℚ), (55209858471/10000000000 : ℚ), (-1792415581981/1000000000000 : ℚ), 4⟩,
    ⟨(311098165423/1000000000000 : ℚ), (2489437361/625000000 : ℚ), (-658870211551/500000000000 : ℚ), 4⟩,
    ⟨(63208082229/200000000000 : ℚ), (228147259/78125000 : ℚ), (-492330963627/500000000000 : ℚ), 4⟩,
    ⟨(321356415757/1000000000000 : ℚ), (4316286067/2000000000 : ℚ), (-29675886821/40000000000 : ℚ), 4⟩,
    ⟨(163497491613/500000000000 : ℚ), (996900497/625000000 : ℚ), (-34965211523/62500000000 : ℚ), 3⟩,
    ⟨(332901811067/1000000000000 : ℚ), (11685949183/10000000000 : ℚ), (-1308758433/3125000000 : ℚ), 3⟩,
    ⟨(339020013299/1000000000000 : ℚ), (8388619229/10000000000 : ℚ), (-61614379297/200000000000 : ℚ), 3⟩,
    ⟨(1348791673/3906250000 : ℚ), (579356267/1000000000 : ℚ), (-219314640713/1000000000000 : ℚ), 3⟩,
    ⟨(351653386201/1000000000000 : ℚ), (1859967997/5000000000 : ℚ), (-73539743661/500000000000 : ℚ), 3⟩,
    ⟨(71609378117/200000000000 : ℚ), (1020578679/5000000000 : ℚ), (-8752634729/100000000000 : ℚ), 3⟩,
    ⟨(364409608497/1000000000000 : ℚ), (666733769/10000000000 : ℚ), (-18945888511/500000000000 : ℚ), 3⟩,
    ⟨(370680263487/1000000000000 : ℚ), (-23460277/500000000 : ℚ), (3849200909/1000000000000 : ℚ), 3⟩,
    ⟨(188399232859/500000000000 : ℚ), (-14153517/100000000 : ℚ), (9800797753/250000000000 : ℚ), 3⟩,
    ⟨(382705293559/1000000000000 : ℚ), (-1104084211/5000000000 : ℚ), (69305340123/1000000000000 : ℚ), 3⟩,
    ⟨(388343861029/1000000000000 : ℚ), (-143763019/500000000 : ℚ), (95019653849/1000000000000 : ℚ), 3⟩,
    ⟨(9841496641/25000000000 : ℚ), (-3437709523/10000000000 : ℚ), (11700891091/100000000000 : ℚ), 3⟩,
    ⟨(199301055681/500000000000 : ℚ), (-3911723977/10000000000 : ℚ), (13578430401/100000000000 : ℚ), 2⟩,
    ⟨(403123001667/1000000000000 : ℚ), (-4309819853/10000000000 : ℚ), (9483830503/62500000000 : ℚ), 2⟩,
    ⟨(407178997911/1000000000000 : ℚ), (-580209951/1250000000 : ℚ), (165185860083/1000000000000 : ℚ), 2⟩,
    ⟨(410731038631/1000000000000 : ℚ), (-2457391143/5000000000 : ℚ), (35270814509/200000000000 : ℚ), 2⟩,
    ⟨(206872457867/500000000000 : ℚ), (-256743489/500000000 : ℚ), (185426658659/1000000000000 : ℚ), 2⟩,
    ⟨(416191603937/1000000000000 : ℚ), (-5306292707/10000000000 : ℚ), (96270019267/500000000000 : ℚ), 2⟩,
    ⟨(418047540293/1000000000000 : ℚ), (-2716132871/5000000000 : ℚ), (12362160487/62500000000 : ℚ), 2⟩,
    ⟨(209647425561/500000000000 : ℚ), (-220602111/400000000 : ℚ), (50315151769/250000000000 : ℚ), 2⟩,
    ⟨(209960762069/500000000000 : ℚ), (-5556095677/10000000000 : ℚ), (202982798951/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2780604897/5000000000 : ℚ), (50799392943/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (290324874223/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control471.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control471.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate471

namespace DiagonalRamsey.JointInheritedCertificate505
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(202844292641/1000000000000 : ℚ), (15124091862647/10000000000 : ℚ), (-76823845490759/250000000000 : ℚ), 12⟩,
    ⟨(50827960499/250000000000 : ℚ), (1653729267857/10000000000 : ℚ), (-33940849221871/1000000000000 : ℚ), 9⟩,
    ⟨(4084848759/20000000000 : ℚ), (72470241511/1250000000 : ℚ), (-12072281666841/1000000000000 : ℚ), 7⟩,
    ⟨(41125423671/200000000000 : ℚ), (142766711971/5000000000 : ℚ), (-6047007725821/1000000000000 : ℚ), 7⟩,
    ⟨(103726273991/500000000000 : ℚ), (82690089529/5000000000 : ℚ), (-1783589409683/500000000000 : ℚ), 6⟩,
    ⟨(104850573473/500000000000 : ℚ), (21027800319/2000000000 : ℚ), (-288947747689/125000000000 : ℚ), 5⟩,
    ⟨(212351260009/1000000000000 : ℚ), (70879062631/10000000000 : ℚ), (-1589105366827/1000000000000 : ℚ), 5⟩,
    ⟨(107688682567/500000000000 : ℚ), (49654614791/10000000000 : ℚ), (-567745196663/500000000000 : ℚ), 5⟩,
    ⟨(8750012771/40000000000 : ℚ), (3566441207/1000000000 : ℚ), (-332802087/400000000 : ℚ), 4⟩,
    ⟨(347558811/1562500000 : ℚ), (25997456811/10000000000 : ℚ), (-24755413161/40000000000 : ℚ), 4⟩,
    ⟨(113201906761/500000000000 : ℚ), (953241381/500000000 : ℚ), (-18535600991/40000000000 : ℚ), 4⟩,
    ⟨(115305323147/500000000000 : ℚ), (13940923207/10000000000 : ℚ), (-86591575203/250000000000 : ℚ), 4⟩,
    ⟨(235017623257/1000000000000 : ℚ), (502894441/500000000 : ℚ), (-128003716351/500000000000 : ℚ), 3⟩,
    ⟨(239582302813/1000000000000 : ℚ), (705236127/1000000000 : ℚ), (-92358911229/500000000000 : ℚ), 3⟩,
    ⟨(244260724603/1000000000000 : ℚ), (4683591149/10000000000 : ℚ), (-31858794009/250000000000 : ℚ), 3⟩,
    ⟨(249007832867/1000000000000 : ℚ), (2787350591/10000000000 : ℚ), (-8068424627/100000000000 : ℚ), 3⟩,
    ⟨(253777910359/1000000000000 : ℚ), (1248818741/10000000000 : ℚ), (-21009524887/500000000000 : ℚ), 3⟩,
    ⟨(258525018623/1000000000000 : ℚ), (-436851/312500000 : ℚ), (-9681409313/1000000000000 : ℚ), 3⟩,
    ⟨(263203440413/1000000000000 : ℚ), (-1060620561/10000000000 : ℚ), (17615036853/1000000000000 : ℚ), 3⟩,
    ⟨(267768119969/1000000000000 : ℚ), (-1935065811/10000000000 : ℚ), (4082544383/100000000000 : ℚ), 3⟩,
    ⟨(68043774233/250000000000 : ℚ), (-2670170299/10000000000 : ℚ), (1213353179/20000000000 : ℚ), 3⟩,
    ⟨(34547741213/125000000000 : ℚ), (-3290752267/10000000000 : ℚ), (77686378679/1000000000000 : ℚ), 3⟩,
    ⟨(280348104187/1000000000000 : ℚ), (-238482541/625000000 : ℚ), (92297902027/1000000000000 : ℚ), 3⟩,
    ⟨(284035423951/1000000000000 : ℚ), (-4259576523/10000000000 : ℚ), (20964388543/200000000000 : ℚ), 3⟩,
    ⟨(71852094523/250000000000 : ℚ), (-2316744417/5000000000 : ℚ), (28876158569/250000000000 : ℚ), 3⟩,
    ⟨(290434483217/1000000000000 : ℚ), (-4946075467/10000000000 : ℚ), (15566927481/125000000000 : ℚ), 3⟩,
    ⟨(7327114907/25000000000 : ℚ), (-5203976289/10000000000 : ℚ), (132059612907/1000000000000 : ℚ), 3⟩,
    ⟨(73833298811/250000000000 : ℚ), (-5412276729/10000000000 : ℚ), (138187824207/1000000000000 : ℚ), 3⟩,
    ⟨(297158624871/1000000000000 : ℚ), (-5574821621/10000000000 : ℚ), (14300306411/100000000000 : ℚ), 3⟩,
    ⟨(74635826319/250000000000 : ℚ), (-2847223277/5000000000 : ℚ), (73283034397/500000000000 : ℚ), 2⟩,
    ⟨(29947390123/100000000000 : ℚ), (-5773145387/10000000000 : ℚ), (14891922123/100000000000 : ℚ), 2⟩,
    ⟨(59988290117/200000000000 : ℚ), (-2906093287/5000000000 : ℚ), (75044657153/500000000000 : ℚ), 2⟩,
    ⟨(3/10 : ℚ), (-1163410489/2000000000 : ℚ), (37558819047/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (374236431551/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control505.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control505.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate505

namespace DiagonalRamsey.JointInheritedCertificate506
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276314618033/1000000000000 : ℚ), (16185561410099/10000000000 : ℚ), (-223965746908363/500000000000 : ℚ), 12⟩,
    ⟨(276909838037/1000000000000 : ℚ), (1771091397993/10000000000 : ℚ), (-12370174989047/250000000000 : ℚ), 9⟩,
    ⟨(278094545751/1000000000000 : ℚ), (24864025061/400000000 : ℚ), (-17604465813561/1000000000000 : ℚ), 7⟩,
    ⟨(279857331793/1000000000000 : ℚ), (153285565367/5000000000 : ℚ), (-8822021265937/1000000000000 : ℚ), 7⟩,
    ⟨(282181219569/1000000000000 : ℚ), (35572996317/2000000000 : ℚ), (-2603801601327/500000000000 : ℚ), 6⟩,
    ⟨(285043828769/1000000000000 : ℚ), (14162729857/1250000000 : ℚ), (-675546291317/200000000000 : ℚ), 5⟩,
    ⟨(144208795451/500000000000 : ℚ), (76563733859/10000000000 : ℚ), (-581254069211/250000000000 : ℚ), 5⟩,
    ⟨(146135007397/500000000000 : ℚ), (5379201651/1000000000 : ℚ), (-832131639907/500000000000 : ℚ), 5⟩,
    ⟨(148281999749/500000000000 : ℚ), (38775135227/10000000000 : ℚ), (-611201141367/500000000000 : ℚ), 4⟩,
    ⟨(301258191593/1000000000000 : ℚ), (14197714953/5000000000 : ℚ), (-456157661059/500000000000 : ℚ), 4⟩,
    ⟨(306307383443/1000000000000 : ℚ), (20950637747/10000000000 : ℚ), (-686274642479/1000000000000 : ℚ), 4⟩,
    ⟨(311662948571/1000000000000 : ℚ), (15448735607/10000000000 : ℚ), (-258178869687/500000000000 : ℚ), 4⟩,
    ⟨(317273309957/1000000000000 : ℚ), (11280813533/10000000000 : ℚ), (-96337409471/250000000000 : ℚ), 3⟩,
    ⟨(323084436753/1000000000000 : ℚ), (2014248723/2500000000 : ℚ), (-7054324687/25000000000 : ℚ), 3⟩,
    ⟨(41130045579/125000000000 : ℚ), (1379691651/2500000000 : ℚ), (-779071991/3906250000 : ℚ), 3⟩,
    ⟨(335083734753/1000000000000 : ℚ), (3489621197/10000000000 : ℚ), (-66042669123/500000000000 : ℚ), 3⟩,
    ⟨(170578173079/500000000000 : ℚ), (923008989/5000000000 : ℚ), (-7652883269/100000000000 : ℚ), 3⟩,
    ⟨(347199716279/1000000000000 : ℚ), (3122779/62500000 : ℚ), (-3020213483/100000000000 : ℚ), 3⟩,
    ⟨(176577822079/500000000000 : ℚ), (-613775401/10000000000 : ℚ), (8778170671/1000000000000 : ℚ), 3⟩,
    ⟨(179483385477/500000000000 : ℚ), (-1541747939/10000000000 : ℚ), (41812979189/1000000000000 : ℚ), 3⟩,
    ⟨(18228856617/50000000000 : ℚ), (-463968431/2000000000 : ℚ), (17489352041/250000000000 : ℚ), 3⟩,
    ⟨(92483174367/250000000000 : ℚ), (-371872363/1250000000 : ℚ), (94014175903/1000000000000 : ℚ), 3⟩,
    ⟨(187490944659/500000000000 : ℚ), (-3527711657/10000000000 : ℚ), (28649672529/250000000000 : ℚ), 3⟩,
    ⟨(379676081413/1000000000000 : ℚ), (-99845913/250000000 : ℚ), (132185273477/1000000000000 : ℚ), 3⟩,
    ⟨(383970066117/1000000000000 : ℚ), (-4385546339/10000000000 : ℚ), (147140555277/1000000000000 : ℚ), 3⟩,
    ⟨(387822490009/1000000000000 : ℚ), (-4712269099/10000000000 : ℚ), (79873980403/500000000000 : ℚ), 3⟩,
    ⟨(391196252143/1000000000000 : ℚ), (-4981283637/10000000000 : ℚ), (85112951899/500000000000 : ℚ), 2⟩,
    ⟨(394058861343/1000000000000 : ℚ), (-1039635049/2000000000 : ℚ), (178741428337/1000000000000 : ℚ), 2⟩,
    ⟨(198191374559/500000000000 : ℚ), (-536717373/1000000000 : ℚ), (7416819273/40000000000 : ℚ), 2⟩,
    ⟨(9953638379/25000000000 : ℚ), (-2745701507/5000000000 : ℚ), (38071123409/200000000000 : ℚ), 2⟩,
    ⟨(199665121437/500000000000 : ℚ), (-5573062173/10000000000 : ℚ), (38722332581/200000000000 : ℚ), 2⟩,
    ⟨(399925462879/1000000000000 : ℚ), (-5613551353/10000000000 : ℚ), (97614860781/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-561859673/1000000000 : ℚ), (97715758921/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (38917921769/125000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control506.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control506.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate506

namespace DiagonalRamsey.JointInheritedCertificate507
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291493978967/1000000000000 : ℚ), (16434749349563/10000000000 : ℚ), (-59975400248441/125000000000 : ℚ), 12⟩,
    ⟨(292112397677/1000000000000 : ℚ), (1798646917537/10000000000 : ℚ), (-53003033417413/1000000000000 : ℚ), 9⟩,
    ⟨(293343279387/1000000000000 : ℚ), (315713338341/5000000000 : ℚ), (-18858864935797/1000000000000 : ℚ), 7⟩,
    ⟨(295174770033/1000000000000 : ℚ), (311513939377/10000000000 : ℚ), (-9451601018959/1000000000000 : ℚ), 7⟩,
    ⟨(232491587/781250000 : ℚ), (180799783701/10000000000 : ℚ), (-2790038862721/500000000000 : ℚ), 6⟩,
    ⟨(9392606587/31250000000 : ℚ), (115221823057/10000000000 : ℚ), (-3620083319837/1000000000000 : ℚ), 5⟩,
    ⟨(304068665331/1000000000000 : ℚ), (15580340951/2000000000 : ℚ), (-2492552917441/1000000000000 : ℚ), 5⟩,
    ⟨(154035618743/500000000000 : ℚ), (27383238573/5000000000 : ℚ), (-223110687421/125000000000 : ℚ), 5⟩,
    ⟨(312532580289/1000000000000 : ℚ), (19754136879/5000000000 : ℚ), (-1311696569811/1000000000000 : ℚ), 4⟩,
    ⟨(31740972857/100000000000 : ℚ), (3620115697/1250000000 : ℚ), (-979669146727/1000000000000 : ℚ), 4⟩,
    ⟨(161327856363/500000000000 : ℚ), (5348892067/2500000000 : ℚ), (-7376789003/10000000000 : ℚ), 4⟩,
    ⟨(328220011061/1000000000000 : ℚ), (15804591473/10000000000 : ℚ), (-277907868773/500000000000 : ℚ), 4⟩,
    ⟨(334049036341/1000000000000 : ℚ), (11569452583/10000000000 : ℚ), (-25977423859/62500000000 : ℚ), 3⟩,
    ⟨(68017330373/200000000000 : ℚ), (8294055599/10000000000 : ℚ), (-61056264453/200000000000 : ℚ), 3⟩,
    ⟨(10821084753/31250000000 : ℚ), (5715721589/10000000000 : ℚ), (-27103897483/125000000000 : ℚ), 3⟩,
    ⟨(352553622631/1000000000000 : ℚ), (3655064053/10000000000 : ℚ), (-144853320067/1000000000000 : ℚ), 3⟩,
    ⟨(358862914129/1000000000000 : ℚ), (496624583/2500000000 : ℚ), (-85519034931/1000000000000 : ℚ), 3⟩,
    ⟨(45642728083/125000000000 : ℚ), (155056699/2500000000 : ℚ), (-4509113387/125000000000 : ℚ), 3⟩,
    ⟨(11604058903/31250000000 : ℚ), (-12728213/250000000 : ℚ), (137607579/25000000000 : ℚ), 3⟩,
    ⟨(18868375021/50000000000 : ℚ), (-1449904443/10000000000 : ℚ), (20357525681/500000000000 : ℚ), 3⟩,
    ⟨(3831965257/10000000000 : ℚ), (-2238306563/10000000000 : ℚ), (14138290441/200000000000 : ℚ), 3⟩,
    ⟨(77752164807/200000000000 : ℚ), (-2901749137/10000000000 : ℚ), (24073818001/250000000000 : ℚ), 3⟩,
    ⟨(394006808191/1000000000000 : ℚ), (-432646489/1250000000 : ℚ), (23637523027/200000000000 : ℚ), 3⟩,
    ⟨(49860494559/125000000000 : ℚ), (-786535113/2000000000 : ℚ), (68439202957/500000000000 : ℚ), 3⟩,
    ⟨(16133811971/40000000000 : ℚ), (-4328694099/10000000000 : ℚ), (76381061247/500000000000 : ℚ), 3⟩,
    ⟨(407347871429/1000000000000 : ℚ), (-582355829/1250000000 : ℚ), (166143998157/1000000000000 : ℚ), 2⟩,
    ⟨(410853125977/1000000000000 : ℚ), (-2465281517/5000000000 : ℚ), (88629739997/500000000000 : ℚ), 2⟩,
    ⟨(413827305401/1000000000000 : ℚ), (-1287386743/2500000000 : ℚ), (186288817131/1000000000000 : ℚ), 2⟩,
    ⟨(416241766727/1000000000000 : ℚ), (-5320119587/10000000000 : ℚ), (193368044747/1000000000000 : ℚ), 2⟩,
    ⟨(418073257373/1000000000000 : ℚ), (-136136833/250000000 : ℚ), (198597218337/1000000000000 : ℚ), 2⟩,
    ⟨(419304139083/1000000000000 : ℚ), (-2763928041/5000000000 : ℚ), (202046476407/1000000000000 : ℚ), 2⟩,
    ⟨(209961278897/500000000000 : ℚ), (-1113739879/2000000000 : ℚ), (101880157241/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-5573788683/10000000000 : ℚ), (101987022447/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (298771561567/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control507.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control507.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate507

namespace DiagonalRamsey.JointInheritedCertificate532
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300916415393/1000000000000 : ℚ), (512761382047/312500000 : ℚ), (-98899513076763/200000000000 : ℚ), 12⟩,
    ⟨(301537613553/1000000000000 : ℚ), (1796155309263/10000000000 : ℚ), (-1365628488967/25000000000 : ℚ), 9⟩,
    ⟨(302774027397/1000000000000 : ℚ), (157685665107/2500000000 : ℚ), (-9717601812661/500000000000 : ℚ), 8⟩,
    ⟨(152306874791/500000000000 : ℚ), (311281417127/10000000000 : ℚ), (-9739837114473/1000000000000 : ℚ), 7⟩,
    ⟨(153519531289/500000000000 : ℚ), (180727560311/10000000000 : ℚ), (-1149954484241/200000000000 : ℚ), 6⟩,
    ⟨(62005321859/200000000000 : ℚ), (14401905329/1250000000 : ℚ), (-372979352421/100000000000 : ℚ), 5⟩,
    ⟨(156773809013/500000000000 : ℚ), (15584579933/2000000000 : ℚ), (-2567785350111/1000000000000 : ℚ), 5⟩,
    ⟨(317568179531/1000000000000 : ℚ), (13699616067/2500000000 : ℚ), (-183850942957/100000000000 : ℚ), 5⟩,
    ⟨(64409914721/200000000000 : ℚ), (39542994209/10000000000 : ℚ), (-2161444829/1600000000 : ℚ), 4⟩,
    ⟨(163474320987/500000000000 : ℚ), (28994530189/10000000000 : ℚ), (-201758129491/200000000000 : ℚ), 4⟩,
    ⟨(33221820393/100000000000 : ℚ), (10713162971/5000000000 : ℚ), (-379740825611/500000000000 : ℚ), 4⟩,
    ⟨(42225938839/125000000000 : ℚ), (7915938463/5000000000 : ℚ), (-143037300069/250000000000 : ℚ), 4⟩,
    ⟨(343662734241/1000000000000 : ℚ), (5796611767/5000000000 : ℚ), (-427786803857/1000000000000 : ℚ), 3⟩,
    ⟨(43715935689/125000000000 : ℚ), (1039321173/1250000000 : ℚ), (-78540833997/250000000000 : ℚ), 3⟩,
    ⟨(71188671531/200000000000 : ℚ), (1433344081/2500000000 : ℚ), (-111561588453/500000000000 : ℚ), 3⟩,
    ⟨(45281311053/125000000000 : ℚ), (114697123/312500000 : ℚ), (-149063594777/1000000000000 : ℚ), 3⟩,
    ⟨(184294068351/500000000000 : ℚ), (199977779/1000000000 : ℚ), (-44018638977/500000000000 : ℚ), 3⟩,
    ⟨(23430954217/62500000000 : ℚ), (315978783/5000000000 : ℚ), (-18601500513/500000000000 : ℚ), 3⟩,
    ⟨(76222227923/200000000000 : ℚ), (-249288217/5000000000 : ℚ), (1380446087/250000000000 : ℚ), 3⟩,
    ⟨(193587945443/500000000000 : ℚ), (-1440213243/10000000000 : ℚ), (41687031009/1000000000000 : ℚ), 3⟩,
    ⟨(196515557207/500000000000 : ℚ), (-69662869/312500000 : ℚ), (7246099427/100000000000 : ℚ), 3⟩,
    ⟨(99655105299/250000000000 : ℚ), (-2893037601/10000000000 : ℚ), (49366628327/500000000000 : ℚ), 3⟩,
    ⟨(403889983153/1000000000000 : ℚ), (-86316937/250000000 : ℚ), (1514831523/12500000000 : ℚ), 3⟩,
    ⟨(204394525761/500000000000 : ℚ), (-3924274039/10000000000 : ℚ), (140347587963/1000000000000 : ℚ), 3⟩,
    ⟨(103317611399/250000000000 : ℚ), (-1080074383/2500000000 : ℚ), (156624157619/1000000000000 : ℚ), 3⟩,
    ⟨(417291007101/1000000000000 : ℚ), (-4650397601/10000000000 : ℚ), (170331827749/1000000000000 : ℚ), 3⟩,
    ⟨(420812015831/1000000000000 : ℚ), (-4922029139/10000000000 : ℚ), (36342827121/200000000000 : ℚ), 3⟩,
    ⟨(423799562549/1000000000000 : ℚ), (-1285228943/2500000000 : ℚ), (190957591887/1000000000000 : ℚ), 3⟩,
    ⟨(85244975109/200000000000 : ℚ), (-1062278811/2000000000 : ℚ), (99101500717/500000000000 : ℚ), 3⟩,
    ⟨(42806459773/100000000000 : ℚ), (-2718333937/5000000000 : ℚ), (203553954739/1000000000000 : ℚ), 2⟩,
    ⟨(429301011573/1000000000000 : ℚ), (-5518993169/10000000000 : ℚ), (103541541723/500000000000 : ℚ), 2⟩,
    ⟨(214961104867/500000000000 : ℚ), (-2779903263/5000000000 : ℚ), (52209117699/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1391223003/2500000000 : ℚ), (52263781723/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (300893025619/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control532.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control532.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate532

namespace DiagonalRamsey.JointInheritedCertificate533
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6378705881/31250000000 : ℚ), (14981322301201/10000000000 : ℚ), (-306297079238423/1000000000000 : ℚ), 12⟩,
    ⟨(204580005163/1000000000000 : ℚ), (409590243809/2500000000 : ℚ), (-6765824390459/200000000000 : ℚ), 9⟩,
    ⟨(12843649713/62500000000 : ℚ), (574481437281/10000000000 : ℚ), (-3007871046437/250000000000 : ℚ), 8⟩,
    ⟨(103432457163/500000000000 : ℚ), (70746295313/2500000000 : ℚ), (-6025757132479/1000000000000 : ℚ), 7⟩,
    ⟨(104333200797/500000000000 : ℚ), (163930236099/10000000000 : ℚ), (-710795598923/200000000000 : ℚ), 6⟩,
    ⟨(3295086061/15625000000 : ℚ), (104228900381/10000000000 : ℚ), (-460492463291/200000000000 : ℚ), 5⟩,
    ⟨(213500862049/1000000000000 : ℚ), (70268838951/10000000000 : ℚ), (-1582339834199/1000000000000 : ℚ), 5⟩,
    ⟨(10824363837/50000000000 : ℚ), (49225265009/10000000000 : ℚ), (-1130209107807/1000000000000 : ℚ), 5⟩,
    ⟨(219815991169/1000000000000 : ℚ), (17675415037/5000000000 : ℚ), (-413861704451/500000000000 : ℚ), 4⟩,
    ⟨(111727473999/500000000000 : ℚ), (25761392997/10000000000 : ℚ), (-615312041483/1000000000000 : ℚ), 4⟩,
    ⟨(227369102083/1000000000000 : ℚ), (18882566419/10000000000 : ℚ), (-14385637861/31250000000 : ℚ), 4⟩,
    ⟨(231520757981/1000000000000 : ℚ), (6898563807/5000000000 : ℚ), (-343717492883/1000000000000 : ℚ), 4⟩,
    ⟨(9434797319/40000000000 : ℚ), (4971148779/5000000000 : ℚ), (-253674650933/1000000000000 : ℚ), 3⟩,
    ⟨(240374742133/1000000000000 : ℚ), (6957912361/10000000000 : ℚ), (-2853760357/15625000000 : ℚ), 3⟩,
    ⟨(244991801681/1000000000000 : ℚ), (71957893/156250000 : ℚ), (-12556934547/100000000000 : ℚ), 3⟩,
    ⟨(24967664681/100000000000 : ℚ), (2721640021/10000000000 : ℚ), (-78996377629/1000000000000 : ℚ), 3⟩,
    ⟨(127192079951/500000000000 : ℚ), (1193047279/10000000000 : ℚ), (-8096667841/200000000000 : ℚ), 3⟩,
    ⟨(259069005031/1000000000000 : ℚ), (-30892811/5000000000 : ℚ), (-8277374187/1000000000000 : ℚ), 3⟩,
    ⟨(131843032289/500000000000 : ℚ), (-1101967169/10000000000 : ℚ), (18904085927/1000000000000 : ℚ), 3⟩,
    ⟨(268190873737/1000000000000 : ℚ), (-1971121253/10000000000 : ℚ), (21006731179/500000000000 : ℚ), 3⟩,
    ⟨(272540048731/1000000000000 : ℚ), (-2701858053/10000000000 : ℚ), (61766612119/1000000000000 : ℚ), 3⟩,
    ⟨(69172926157/250000000000 : ℚ), (-1659407489/5000000000 : ℚ), (1967669201/25000000000 : ℚ), 3⟩,
    ⟨(140302929357/500000000000 : ℚ), (-3840765853/10000000000 : ℚ), (93249140073/1000000000000 : ℚ), 3⟩,
    ⟨(284244815543/1000000000000 : ℚ), (-2141054761/5000000000 : ℚ), (2114252419/20000000000 : ℚ), 3⟩,
    ⟨(71893382493/250000000000 : ℚ), (-2326968357/5000000000 : ℚ), (29085678783/250000000000 : ℚ), 3⟩,
    ⟨(290559944663/1000000000000 : ℚ), (-4964804833/10000000000 : ℚ), (7833023521/62500000000 : ℚ), 3⟩,
    ⟨(36646912351/125000000000 : ℚ), (-81582917/156250000 : ℚ), (132814531637/1000000000000 : ℚ), 3⟩,
    ⟨(147697202559/500000000000 : ℚ), (-5428491049/10000000000 : ℚ), (27782296807/200000000000 : ℚ), 3⟩,
    ⟨(59439178477/200000000000 : ℚ), (-5590174419/10000000000 : ℚ), (143701999509/1000000000000 : ℚ), 3⟩,
    ⟨(37320301413/125000000000 : ℚ), (-1141834197/2000000000 : ℚ), (73623312167/500000000000 : ℚ), 3⟩,
    ⟨(299480801549/1000000000000 : ℚ), (-1157491841/2000000000 : ℚ), (18698450141/125000000000 : ℚ), 3⟩,
    ⟨(7498555463/25000000000 : ℚ), (-2913148771/5000000000 : ℚ), (15075162953/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5831138171/10000000000 : ℚ), (75448417201/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (384031817163/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control533.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control533.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate533

namespace DiagonalRamsey.JointInheritedCertificate534
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120302844127/500000000000 : ℚ), (15479101476963/10000000000 : ℚ), (-373027390893367/1000000000000 : ℚ), 12⟩,
    ⟨(3014151679/12500000000 : ℚ), (846699648027/5000000000 : ℚ), (-2575123642391/62500000000 : ℚ), 9⟩,
    ⟨(242179956487/1000000000000 : ℚ), (297051475349/5000000000 : ℚ), (-2931150703851/200000000000 : ℚ), 8⟩,
    ⟨(243739063657/1000000000000 : ℚ), (18303255339/625000000 : ℚ), (-293670160643/40000000000 : ℚ), 7⟩,
    ⟨(122897220387/500000000000 : ℚ), (84893152673/5000000000 : ℚ), (-4331604328387/1000000000000 : ℚ), 6⟩,
    ⟨(248326293433/1000000000000 : ℚ), (108058254383/10000000000 : ℚ), (-350947558381/125000000000 : ℚ), 5⟩,
    ⟨(251310238509/1000000000000 : ℚ), (72936142887/10000000000 : ℚ), (-1930740248297/1000000000000 : ℚ), 5⟩,
    ⟨(254717538981/1000000000000 : ℚ), (25583537633/5000000000 : ℚ), (-690149513261/500000000000 : ℚ), 5⟩,
    ⟨(258515380681/1000000000000 : ℚ), (36811287863/10000000000 : ℚ), (-506063499933/500000000000 : ℚ), 4⟩,
    ⟨(131333594159/500000000000 : ℚ), (13443861511/5000000000 : ℚ), (-753674594407/1000000000000 : ℚ), 4⟩,
    ⟨(133566488857/500000000000 : ℚ), (19768839851/10000000000 : ℚ), (-565196148667/1000000000000 : ℚ), 4⟩,
    ⟨(135934870439/500000000000 : ℚ), (3626566261/2500000000 : ℚ), (-423439787481/1000000000000 : ℚ), 4⟩,
    ⟨(27683186019/100000000000 : ℚ), (5258982367/5000000000 : ℚ), (-314070949171/1000000000000 : ℚ), 3⟩,
    ⟨(17623221733/62500000000 : ℚ), (7431339613/10000000000 : ℚ), (-227866625369/1000000000000 : ℚ), 3⟩,
    ⟨(71809826373/250000000000 : ℚ), (1249847673/2500000000 : ℚ), (-39669667091/250000000000 : ℚ), 3⟩,
    ⟨(58516880419/200000000000 : ℚ), (610704369/2000000000 : ℚ), (-51142578761/500000000000 : ℚ), 3⟩,
    ⟨(59591072267/200000000000 : ℚ), (14757727/100000000 : ℚ), (-445706761/8000000000 : ℚ), 3⟩,
    ⟨(151650228969/500000000000 : ℚ), (36371491/2000000000 : ℚ), (-1682520919/100000000000 : ℚ), 3⟩,
    ⟨(154284107851/500000000000 : ℚ), (-177907437/2000000000 : ℚ), (996542587/62500000000 : ℚ), 3⟩,
    ⟨(7842697581/25000000000 : ℚ), (-445924607/2500000000 : ℚ), (1093994741/25000000000 : ℚ), 3⟩,
    ⟨(39833752819/125000000000 : ℚ), (-633627407/2500000000 : ℚ), (8436940937/125000000000 : ℚ), 3⟩,
    ⟨(64681357143/200000000000 : ℚ), (-3167594461/10000000000 : ℚ), (5488566783/62500000000 : ℚ), 3⟩,
    ⟨(40984071889/125000000000 : ℚ), (-92562449/250000000 : ℚ), (10523360601/100000000000 : ℚ), 3⟩,
    ⟨(332024382749/1000000000000 : ℚ), (-2077113037/5000000000 : ℚ), (7508556639/62500000000 : ℚ), 3⟩,
    ⟨(335822224449/1000000000000 : ℚ), (-4534349313/10000000000 : ℚ), (16603647007/125000000000 : ℚ), 3⟩,
    ⟨(8480738123/25000000000 : ℚ), (-4851804489/10000000000 : ℚ), (17942939411/125000000000 : ℚ), 3⟩,
    ⟨(342213469997/1000000000000 : ℚ), (-5113483493/10000000000 : ℚ), (76229561203/500000000000 : ℚ), 3⟩,
    ⟨(10773291333/31250000000 : ℚ), (-5324668929/10000000000 : ℚ), (79856353199/500000000000 : ℚ), 3⟩,
    ⟨(346800699773/1000000000000 : ℚ), (-5489357277/10000000000 : ℚ), (165407085159/1000000000000 : ℚ), 3⟩,
    ⟨(174179903471/500000000000 : ℚ), (-701312181/1250000000 : ℚ), (1356941097/8000000000 : ℚ), 3⟩,
    ⟨(34940762911/100000000000 : ℚ), (-284508187/500000000 : ℚ), (172397052339/1000000000000 : ℚ), 3⟩,
    ⟨(43741759397/125000000000 : ℚ), (-2864838049/5000000000 : ℚ), (21722335353/125000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5734600283/10000000000 : ℚ), (173951013063/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (352050359399/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control534.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control534.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate534

namespace DiagonalRamsey.JointInheritedCertificate535
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16431503631/62500000000 : ℚ), (15801928293711/10000000000 : ℚ), (-416086308562617/1000000000000 : ℚ), 12⟩,
    ⟨(131733783633/500000000000 : ℚ), (1729093925877/10000000000 : ℚ), (-22979910960729/500000000000 : ℚ), 9⟩,
    ⟨(264589158707/1000000000000 : ℚ), (30341426279/500000000 : ℚ), (-16349524141003/1000000000000 : ℚ), 8⟩,
    ⟨(133129015439/500000000000 : ℚ), (299251379561/10000000000 : ℚ), (-2047839515643/250000000000 : ℚ), 7⟩,
    ⟨(67114527907/250000000000 : ℚ), (173584323351/10000000000 : ℚ), (-4833833564737/1000000000000 : ℚ), 6⟩,
    ⟨(135584106489/500000000000 : ℚ), (110541741627/10000000000 : ℚ), (-125359571381/40000000000 : ℚ), 5⟩,
    ⟨(274362235169/1000000000000 : ℚ), (74665844293/10000000000 : ℚ), (-539011829771/250000000000 : ℚ), 5⟩,
    ⟨(139004709011/500000000000 : ℚ), (6553262067/1250000000 : ℚ), (-1542195739147/1000000000000 : ℚ), 5⟩,
    ⟨(282074637173/1000000000000 : ℚ), (37757950911/10000000000 : ℚ), (-565833890617/500000000000 : ℚ), 4⟩,
    ⟨(143259371169/500000000000 : ℚ), (13808750067/5000000000 : ℚ), (-105442366779/125000000000 : ℚ), 4⟩,
    ⟨(58259786871/200000000000 : ℚ), (5085683837/2500000000 : ℚ), (-126694967661/200000000000 : ℚ), 4⟩,
    ⟨(296369177363/1000000000000 : ℚ), (14965084731/10000000000 : ℚ), (-475538546687/1000000000000 : ℚ), 4⟩,
    ⟨(301680642149/1000000000000 : ℚ), (1089003037/1000000000 : ℚ), (-353739529987/1000000000000 : ℚ), 3⟩,
    ⟨(76795544101/250000000000 : ℚ), (7736911151/10000000000 : ℚ), (-257788634061/1000000000000 : ℚ), 3⟩,
    ⟨(156410398673/500000000000 : ℚ), (1313331743/2500000000 : ℚ), (-36165261121/200000000000 : ℚ), 3⟩,
    ⟨(79635550493/250000000000 : ℚ), (408368509/1250000000 : ℚ), (-118141385809/1000000000000 : ℚ), 3⟩,
    ⟨(324291290029/1000000000000 : ℚ), (103572669/625000000 : ℚ), (-66415922499/1000000000000 : ℚ), 3⟩,
    ⟨(66002538931/200000000000 : ℚ), (84439473/2500000000 : ℚ), (-23262905547/1000000000000 : ℚ), 3⟩,
    ⟨(83912828899/250000000000 : ℚ), (-377004469/5000000000 : ℚ), (1633262369/125000000000 : ℚ), 3⟩,
    ⟨(341152849851/1000000000000 : ℚ), (-1664503523/10000000000 : ℚ), (43871234101/1000000000000 : ℚ), 3⟩,
    ⟨(173232157319/500000000000 : ℚ), (-607108779/2500000000 : ℚ), (35065691823/500000000000 : ℚ), 3⟩,
    ⟨(70306911529/200000000000 : ℚ), (-3072067531/10000000000 : ℚ), (5786932893/62500000000 : ℚ), 3⟩,
    ⟨(356314749663/1000000000000 : ℚ), (-3615446719/10000000000 : ℚ), (11182021667/100000000000 : ℚ), 3⟩,
    ⟨(90189713707/250000000000 : ℚ), (-509246663/1250000000 : ℚ), (32064636973/250000000000 : ℚ), 3⟩,
    ⟨(182412036989/500000000000 : ℚ), (-2229764997/5000000000 : ℚ), (28449039079/200000000000 : ℚ), 3⟩,
    ⟨(368471256831/1000000000000 : ℚ), (-4781300743/10000000000 : ℚ), (19255274183/125000000000 : ℚ), 3⟩,
    ⟨(371665279023/1000000000000 : ℚ), (-5046372471/10000000000 : ℚ), (163851263559/1000000000000 : ℚ), 3⟩,
    ⟨(93593845093/250000000000 : ℚ), (-526018041/1000000000 : ℚ), (85913257263/500000000000 : ℚ), 3⟩,
    ⟨(376575461123/1000000000000 : ℚ), (-5426838631/10000000000 : ℚ), (178084011729/1000000000000 : ℚ), 3⟩,
    ⟨(189122166647/500000000000 : ℚ), (-1109876827/2000000000 : ℚ), (91354477611/500000000000 : ℚ), 3⟩,
    ⟨(189682962367/500000000000 : ℚ), (-562995393/1000000000 : ℚ), (92880483617/500000000000 : ℚ), 3⟩,
    ⟨(75985886781/200000000000 : ℚ), (-354369263/625000000 : ℚ), (187277820489/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-5674887177/10000000000 : ℚ), (37493400751/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (66574352389/200000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control535.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control535.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate535

namespace DiagonalRamsey.JointInheritedCertificate536
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27799853229/100000000000 : ℚ), (8018928556433/5000000000 : ℚ), (-223267625567651/500000000000 : ℚ), 12⟩,
    ⟨(278585648673/1000000000000 : ℚ), (27424748077/156250000 : ℚ), (-49324687737959/1000000000000 : ℚ), 9⟩,
    ⟨(69938556797/250000000000 : ℚ), (154033109653/2500000000 : ℚ), (-3509535279631/200000000000 : ℚ), 8⟩,
    ⟨(35186626723/125000000000 : ℚ), (303931911367/10000000000 : ℚ), (-1099071812367/125000000000 : ℚ), 7⟩,
    ⟨(283785262997/1000000000000 : ℚ), (17636371613/1000000000 : ℚ), (-5189415236131/1000000000000 : ℚ), 6⟩,
    ⟨(286608899213/1000000000000 : ℚ), (28090084599/2500000000 : ℚ), (-26291016487/7812500000 : ℚ), 5⟩,
    ⟨(36242091159/125000000000 : ℚ), (4745838929/625000000 : ℚ), (-2315825145313/1000000000000 : ℚ), 5⟩,
    ⟨(293736704351/1000000000000 : ℚ), (6668692033/1250000000 : ℚ), (-1657145041611/1000000000000 : ℚ), 5⟩,
    ⟨(297972228613/1000000000000 : ℚ), (38452940951/10000000000 : ℚ), (-1216678387887/1000000000000 : ℚ), 4⟩,
    ⟨(75650627911/250000000000 : ℚ), (14076900777/5000000000 : ℚ), (-907578388077/1000000000000 : ℚ), 4⟩,
    ⟨(307582961287/1000000000000 : ℚ), (5191230681/2500000000 : ℚ), (-682265768847/1000000000000 : ℚ), 4⟩,
    ⟨(31286561309/100000000000 : ℚ), (15302974333/10000000000 : ℚ), (-256452388689/500000000000 : ℚ), 4⟩,
    ⟨(318399592227/1000000000000 : ℚ), (5582158923/5000000000 : ℚ), (-19116688869/50000000000 : ℚ), 3⟩,
    ⟨(64826320691/200000000000 : ℚ), (7962403169/10000000000 : ℚ), (-69877393551/250000000000 : ℚ), 3⟩,
    ⟨(330006444373/1000000000000 : ℚ), (5440885461/10000000000 : ℚ), (-197069404931/1000000000000 : ℚ), 3⟩,
    ⟨(335967537049/1000000000000 : ℚ), (3424708593/10000000000 : ℚ), (-12995598593/100000000000 : ℚ), 3⟩,
    ⟨(42744684113/125000000000 : ℚ), (358265021/2000000000 : ℚ), (-14921414769/200000000000 : ℚ), 3⟩,
    ⟨(347918565581/1000000000000 : ℚ), (453115277/10000000000 : ℚ), (-7114847203/250000000000 : ℚ), 3⟩,
    ⟨(176896703249/500000000000 : ℚ), (-653706631/10000000000 : ℚ), (10365126861/1000000000000 : ℚ), 3⟩,
    ⟨(359525417727/1000000000000 : ℚ), (-1576293481/10000000000 : ℚ), (21631748013/500000000000 : ℚ), 3⟩,
    ⟨(1426013269/3906250000 : ℚ), (-1174978649/5000000000 : ℚ), (35644004077/500000000000 : ℚ), 3⟩,
    ⟨(370342048667/1000000000000 : ℚ), (-150071459/500000000 : ℚ), (11904911719/125000000000 : ℚ), 3⟩,
    ⟨(37532249831/100000000000 : ℚ), (-710224171/2000000000 : ℚ), (57865600629/500000000000 : ℚ), 3⟩,
    ⟨(379952781341/1000000000000 : ℚ), (-4014721281/10000000000 : ℚ), (66618436233/500000000000 : ℚ), 3⟩,
    ⟨(384188305603/1000000000000 : ℚ), (-4404341399/10000000000 : ℚ), (148122028463/1000000000000 : ℚ), 3⟩,
    ⟨(193994140341/500000000000 : ℚ), (-2364672993/5000000000 : ℚ), (160669384937/1000000000000 : ℚ), 3⟩,
    ⟨(391316110741/1000000000000 : ℚ), (-4996964781/10000000000 : ℚ), (34219358633/200000000000 : ℚ), 3⟩,
    ⟨(394139746957/1000000000000 : ℚ), (-5212744903/10000000000 : ℚ), (44892712069/250000000000 : ℚ), 3⟩,
    ⟨(39643199617/100000000000 : ℚ), (-538088671/1000000000 : ℚ), (93108570239/500000000000 : ℚ), 3⟩,
    ⟨(199085391383/500000000000 : ℚ), (-5504491907/10000000000 : ℚ), (47781986079/250000000000 : ℚ), 3⟩,
    ⟨(399339361281/1000000000000 : ℚ), (-5585743603/10000000000 : ℚ), (194367882991/1000000000000 : ℚ), 3⟩,
    ⟨(12497702427/31250000000 : ℚ), (-1406507899/2500000000 : ℚ), (195977922097/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-5631051943/10000000000 : ℚ), (196178717517/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (20004372781/62500000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control536.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control536.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate536

namespace DiagonalRamsey.JointInheritedCertificate537
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(293256131513/1000000000000 : ℚ), (8142796511239/5000000000 : ℚ), (-478308665847447/1000000000000 : ℚ), 12⟩,
    ⟨(29386607009/100000000000 : ℚ), (1782580223187/10000000000 : ℚ), (-1651128273579/31250000000 : ℚ), 9⟩,
    ⟨(295080073203/1000000000000 : ℚ), (625902717073/10000000000 : ℚ), (-3759629838659/200000000000 : ℚ), 8⟩,
    ⟨(148443224669/500000000000 : ℚ), (308847406001/10000000000 : ℚ), (-235503845479/25000000000 : ℚ), 7⟩,
    ⟨(149633901053/500000000000 : ℚ), (89641441231/5000000000 : ℚ), (-5560681952823/1000000000000 : ℚ), 6⟩,
    ⟨(302201197777/1000000000000 : ℚ), (114270564673/10000000000 : ℚ), (-1803397746059/500000000000 : ℚ), 5⟩,
    ⟨(305658386147/1000000000000 : ℚ), (3090599333/400000000 : ℚ), (-99311450023/40000000000 : ℚ), 5⟩,
    ⟨(309606072603/1000000000000 : ℚ), (54319654899/10000000000 : ℚ), (-177733677601/100000000000 : ℚ), 5⟩,
    ⟨(62801247753/200000000000 : ℚ), (39183089953/10000000000 : ℚ), (-1305639307841/1000000000000 : ℚ), 4⟩,
    ⟨(31881650863/100000000000 : ℚ), (28717228433/10000000000 : ℚ), (-487333572231/500000000000 : ℚ), 4⟩,
    ⟨(323990556667/1000000000000 : ℚ), (2651053731/1250000000 : ℚ), (-73345491069/100000000000 : ℚ), 4⟩,
    ⟨(329478553967/1000000000000 : ℚ), (1957233609/1250000000 : ℚ), (-276092694901/500000000000 : ℚ), 4⟩,
    ⟨(67045529623/200000000000 : ℚ), (11452331479/10000000000 : ℚ), (-412474816783/1000000000000 : ℚ), 3⟩,
    ⟨(341182472191/1000000000000 : ℚ), (1024885663/1250000000 : ℚ), (-18905816233/62500000000 : ℚ), 3⟩,
    ⟨(69457135597/200000000000 : ℚ), (2818822303/5000000000 : ℚ), (-214352144581/1000000000000 : ℚ), 3⟩,
    ⟨(11046202759/31250000000 : ℚ), (718018301/2000000000 : ℚ), (-35658369671/250000000000 : ℚ), 3⟩,
    ⟨(359701262953/1000000000000 : ℚ), (965923411/5000000000 : ℚ), (-4175987949/50000000000 : ℚ), 3⟩,
    ⟨(45736759157/125000000000 : ℚ), (573814361/10000000000 : ℚ), (-34263613191/1000000000000 : ℚ), 3⟩,
    ⟨(7439945581/20000000000 : ℚ), (-548886519/10000000000 : ℚ), (3574222723/500000000000 : ℚ), 3⟩,
    ⟨(188976051563/500000000000 : ℚ), (-296846983/2000000000 : ℚ), (2110735511/50000000000 : ℚ), 3⟩,
    ⟨(191850598637/500000000000 : ℚ), (-567043919/2500000000 : ℚ), (36032126293/500000000000 : ℚ), 3⟩,
    ⟨(194594597287/500000000000 : ℚ), (-182995663/625000000 : ℚ), (24389147291/250000000000 : ℚ), 3⟩,
    ⟨(394363242611/1000000000000 : ℚ), (-1742147841/5000000000 : ℚ), (11935114177/100000000000 : ℚ), 3⟩,
    ⟨(99793378119/250000000000 : ℚ), (-1976631443/5000000000 : ℚ), (8622284907/62500000000 : ℚ), 3⟩,
    ⟨(201786839319/500000000000 : ℚ), (-86943663/200000000 : ℚ), (1537663349/10000000000 : ℚ), 3⟩,
    ⟨(203760682547/500000000000 : ℚ), (-1168902873/2500000000 : ℚ), (167084935263/1000000000000 : ℚ), 3⟩,
    ⟨(51372319183/125000000000 : ℚ), (-2472964003/5000000000 : ℚ), (35629439351/200000000000 : ℚ), 3⟩,
    ⟨(82782389827/200000000000 : ℚ), (-645474709/1250000000 : ℚ), (187132881433/1000000000000 : ℚ), 3⟩,
    ⟨(416293301903/1000000000000 : ℚ), (-333344487/625000000 : ℚ), (24272204573/125000000000 : ℚ), 3⟩,
    ⟨(209049839019/500000000000 : ℚ), (-5458240307/10000000000 : ℚ), (24922651989/125000000000 : ℚ), 2⟩,
    ⟨(419313681151/1000000000000 : ℚ), (-69252687/125000000 : ℚ), (202813534693/1000000000000 : ℚ), 2⟩,
    ⟨(26245226233/62500000000 : ℚ), (-5580856793/10000000000 : ℚ), (204518939951/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-698240127/1250000000 : ℚ), (102365808997/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (307272638297/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control537.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control537.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate537

namespace DiagonalRamsey.JointInheritedCertificate561
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(302727889473/1000000000000 : ℚ), (2031280610257/1250000000 : ℚ), (-61583240555689/125000000000 : ℚ), 12⟩,
    ⟨(303340370147/1000000000000 : ℚ), (444773992821/2500000000 : ℚ), (-5442074779189/100000000000 : ℚ), 9⟩,
    ⟨(76139858243/250000000000 : ℚ), (124972733593/2000000000 : ℚ), (-3872199323607/200000000000 : ℚ), 8⟩,
    ⟨(306373337707/1000000000000 : ℚ), (61687097671/2000000000 : ℚ), (-9701503560759/1000000000000 : ℚ), 7⟩,
    ⟨(9648894233/31250000000 : ℚ), (22387938563/1250000000 : ℚ), (-5726208826187/1000000000000 : ℚ), 6⟩,
    ⟨(311710236909/1000000000000 : ℚ), (114193367793/10000000000 : ℚ), (-3713714438253/1000000000000 : ℚ), 5⟩,
    ⟨(7879545853/25000000000 : ℚ), (77236537193/10000000000 : ℚ), (-2556019569709/1000000000000 : ℚ), 5⟩,
    ⟨(319145973711/1000000000000 : ℚ), (54315123683/10000000000 : ℚ), (-1829458958331/1000000000000 : ℚ), 5⟩,
    ⟨(6471289577/20000000000 : ℚ), (4898753133/1250000000 : ℚ), (-83979794751/62500000000 : ℚ), 4⟩,
    ⟨(328394796917/1000000000000 : ℚ), (1149165393/400000000 : ℚ), (-1002853140531/1000000000000 : ℚ), 4⟩,
    ⟨(333590409309/1000000000000 : ℚ), (10610943279/5000000000 : ℚ), (-754492386069/1000000000000 : ℚ), 4⟩,
    ⟨(169550639719/500000000000 : ℚ), (3134224149/2000000000 : ℚ), (-567881477089/1000000000000 : ℚ), 4⟩,
    ⟨(86218583653/250000000000 : ℚ), (1433069029/1250000000 : ℚ), (-424083964307/1000000000000 : ℚ), 4⟩,
    ⟨(70170795431/200000000000 : ℚ), (8209971403/10000000000 : ℚ), (-310913619687/1000000000000 : ℚ), 3⟩,
    ⟨(356982619839/1000000000000 : ℚ), (5647182577/10000000000 : ℚ), (-220244576831/1000000000000 : ℚ), 3⟩,
    ⟨(181600620243/500000000000 : ℚ), (719684187/2000000000 : ℚ), (-73247179829/500000000000 : ℚ), 3⟩,
    ⟨(184724975189/500000000000 : ℚ), (1939178449/10000000000 : ℚ), (-8572975257/100000000000 : ℚ), 3⟩,
    ⟨(15026742841/40000000000 : ℚ), (580381033/10000000000 : ℚ), (-35119517399/1000000000000 : ℚ), 3⟩,
    ⟨(381797213709/1000000000000 : ℚ), (-271429357/5000000000 : ℚ), (3705855691/500000000000 : ℚ), 3⟩,
    ⟨(96944214063/250000000000 : ℚ), (-739271429/5000000000 : ℚ), (21704326767/500000000000 : ℚ), 3⟩,
    ⟨(196774955713/500000000000 : ℚ), (-452529471/2000000000 : ℚ), (3701785303/50000000000 : ℚ), 3⟩,
    ⟨(79812156311/200000000000 : ℚ), (-2922428097/10000000000 : ℚ), (50089786687/500000000000 : ℚ), 3⟩,
    ⟨(404256393947/1000000000000 : ℚ), (-869678711/2500000000 : ℚ), (122520785987/1000000000000 : ℚ), 3⟩,
    ⟨(204543356007/500000000000 : ℚ), (-1973765527/5000000000 : ℚ), (70792239343/500000000000 : ℚ), 3⟩,
    ⟨(413505217153/1000000000000 : ℚ), (-4341255671/10000000000 : ℚ), (39444265943/250000000000 : ℚ), 3⟩,
    ⟨(52183669593/125000000000 : ℚ), (-1167366929/2500000000 : ℚ), (42853280771/250000000000 : ℚ), 3⟩,
    ⟨(84188190791/200000000000 : ℚ), (-2469783577/5000000000 : ℚ), (182735387491/1000000000000 : ℚ), 3⟩,
    ⟨(423886575407/1000000000000 : ℚ), (-2578617431/5000000000 : ℚ), (191929723437/1000000000000 : ℚ), 3⟩,
    ⟨(426277853157/1000000000000 : ℚ), (-532677441/1000000000 : ℚ), (39827284983/200000000000 : ℚ), 3⟩,
    ⟨(107022939473/250000000000 : ℚ), (-5451364803/10000000000 : ℚ), (6389333949/31250000000 : ℚ), 3⟩,
    ⟨(429310820717/1000000000000 : ℚ), (-55332441/100000000 : ℚ), (51992211897/250000000000 : ℚ), 3⟩,
    ⟨(429923301391/1000000000000 : ℚ), (-1114767461/2000000000 : ℚ), (209712799091/1000000000000 : ℚ), 3⟩,
    ⟨(43/100 : ℚ), (-1115779081/2000000000 : ℚ), (6560321187/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (61871116829/200000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control561.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control561.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate561

namespace DiagonalRamsey.JointInheritedCertificate562
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(102720528723/500000000000 : ℚ), (1855019405689/1250000000 : ℚ), (-152683380803211/500000000000 : ℚ), 12⟩,
    ⟨(51474027551/250000000000 : ℚ), (405792760241/2500000000 : ℚ), (-16862471399019/500000000000 : ℚ), 9⟩,
    ⟨(206801833313/1000000000000 : ℚ), (569265389809/10000000000 : ℚ), (-2398680112273/200000000000 : ℚ), 8⟩,
    ⟨(41629900833/200000000000 : ℚ), (280470009237/10000000000 : ℚ), (-600588899489/100000000000 : ℚ), 7⟩,
    ⟨(13120383997/62500000000 : ℚ), (81250229657/5000000000 : ℚ), (-221350766173/62500000000 : ℚ), 6⟩,
    ⟨(106057321331/500000000000 : ℚ), (25833110109/2500000000 : ℚ), (-2293901204331/1000000000000 : ℚ), 5⟩,
    ⟨(214693923857/1000000000000 : ℚ), (69668510649/10000000000 : ℚ), (-315194867289/200000000000 : ℚ), 5⟩,
    ⟨(217639147647/1000000000000 : ℚ), (48803466731/10000000000 : ℚ), (-1125228911483/1000000000000 : ℚ), 5⟩,
    ⟨(220921949919/1000000000000 : ℚ), (7008647759/2000000000 : ℚ), (-102959630261/125000000000 : ℚ), 4⟩,
    ⟨(56127678873/250000000000 : ℚ), (25530230599/10000000000 : ℚ), (-15298215287/25000000000 : ℚ), 4⟩,
    ⟨(228370882591/1000000000000 : ℚ), (9352209027/5000000000 : ℚ), (-457447875343/1000000000000 : ℚ), 4⟩,
    ⟨(232465275697/1000000000000 : ℚ), (13656857087/10000000000 : ℚ), (-68240306317/200000000000 : ℚ), 4⟩,
    ⟨(236754463567/1000000000000 : ℚ), (4914891409/5000000000 : ℚ), (-125728204081/500000000000 : ℚ), 4⟩,
    ⟨(7537410593/31250000000 : ℚ), (343309553/500000000 : ℚ), (-90331981781/500000000000 : ℚ), 3⟩,
    ⟨(245750516531/1000000000000 : ℚ), (2264735541/5000000000 : ℚ), (-123792993079/1000000000000 : ℚ), 3⟩,
    ⟨(125185372359/500000000000 : ℚ), (3322701/12500000 : ℚ), (-3095572873/40000000000 : ℚ), 3⟩,
    ⟨(127506664107/500000000000 : ℚ), (569664449/5000000000 : ℚ), (-19510770833/500000000000 : ℚ), 3⟩,
    ⟨(259633556401/1000000000000 : ℚ), (-107684133/10000000000 : ℚ), (-1388343857/200000000000 : ℚ), 3⟩,
    ⟨(66046733489/250000000000 : ℚ), (-570762431/5000000000 : ℚ), (100646073/5000000000 : ℚ), 3⟩,
    ⟨(53725921873/200000000000 : ℚ), (-401097129/2000000000 : ℚ), (43141167891/1000000000000 : ℚ), 3⟩,
    ⟨(54583759447/200000000000 : ℚ), (-2731935471/10000000000 : ℚ), (62808175991/1000000000000 : ℚ), 3⟩,
    ⟨(277013190341/1000000000000 : ℚ), (-3345333983/10000000000 : ℚ), (79672138319/1000000000000 : ℚ), 3⟩,
    ⟨(438864621/1562500000 : ℚ), (-772864463/2000000000 : ℚ), (94147278181/1000000000000 : ℚ), 3⟩,
    ⟨(284462123013/1000000000000 : ℚ), (-430319903/1000000000 : ℚ), (26637937117/250000000000 : ℚ), 3⟩,
    ⟨(57548985057/200000000000 : ℚ), (-4672978173/10000000000 : ℚ), (29282622417/250000000000 : ℚ), 3⟩,
    ⟨(72672537269/250000000000 : ℚ), (-2491078961/5000000000 : ℚ), (31518004587/250000000000 : ℚ), 3⟩,
    ⟨(29326943027/100000000000 : ℚ), (-209491401/400000000 : ℚ), (133520916961/1000000000000 : ℚ), 3⟩,
    ⟨(14772896449/50000000000 : ℚ), (-5443372391/10000000000 : ℚ), (6979360723/50000000000 : ℚ), 3⟩,
    ⟨(297234568767/1000000000000 : ℚ), (-1120841763/2000000000 : ℚ), (144353458929/1000000000000 : ℚ), 3⟩,
    ⟨(298582239619/1000000000000 : ℚ), (-5722587553/10000000000 : ℚ), (29576005383/200000000000 : ℚ), 3⟩,
    ⟨(37435995341/125000000000 : ℚ), (-5800472003/10000000000 : ℚ), (18776129429/125000000000 : ℚ), 3⟩,
    ⟨(149971507743/500000000000 : ℚ), (-5839110859/10000000000 : ℚ), (18920887571/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-1168785333/2000000000 : ℚ), (7575578051/50000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (98465180559/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control562.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control562.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate562

namespace DiagonalRamsey.JointInheritedCertificate563
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(121063006807/500000000000 : ℚ), (15332415796051/10000000000 : ℚ), (-185907757415741/500000000000 : ℚ), 12⟩,
    ⟨(242645143309/1000000000000 : ℚ), (1677601170441/10000000000 : ℚ), (-20533230379639/500000000000 : ℚ), 9⟩,
    ⟨(243678403197/1000000000000 : ℚ), (147167868389/2500000000 : ℚ), (-7303174594361/500000000000 : ℚ), 8⟩,
    ⟨(245215842419/1000000000000 : ℚ), (290229620337/10000000000 : ℚ), (-3658040357137/500000000000 : ℚ), 7⟩,
    ⟨(61810663649/250000000000 : ℚ), (33658731069/2000000000 : ℚ), (-431570372929/100000000000 : ℚ), 6⟩,
    ⟨(124869660209/500000000000 : ℚ), (107121324079/10000000000 : ℚ), (-2796634322441/1000000000000 : ℚ), 5⟩,
    ⟨(252681795629/1000000000000 : ℚ), (4519259243/625000000 : ℚ), (-480662928247/250000000000 : ℚ), 5⟩,
    ⟨(32005217823/125000000000 : ℚ), (50725565249/10000000000 : ℚ), (-343502965409/250000000000 : ℚ), 5⟩,
    ⟨(259786803157/1000000000000 : ℚ), (36489227683/10000000000 : ℚ), (-1007052505223/1000000000000 : ℚ), 4⟩,
    ⟨(8246278449/31250000000 : ℚ), (26645699781/10000000000 : ℚ), (-374729681743/500000000000 : ℚ), 4⟩,
    ⟨(10731385429/40000000000 : ℚ), (9791197873/5000000000 : ℚ), (-561615595319/1000000000000 : ℚ), 4⟩,
    ⟨(272955568947/1000000000000 : ℚ), (14359568463/10000000000 : ℚ), (-210172286997/500000000000 : ℚ), 4⟩,
    ⟨(277848726393/1000000000000 : ℚ), (162506461/156250000 : ℚ), (-311357991741/1000000000000 : ℚ), 4⟩,
    ⟨(141458492141/500000000000 : ℚ), (45847691/62500000 : ℚ), (-112731224681/500000000000 : ℚ), 3⟩,
    ⟨(7202788313/25000000000 : ℚ), (984074043/2000000000 : ℚ), (-156529380049/1000000000000 : ℚ), 3⟩,
    ⟨(4584099137/15625000000 : ℚ), (746868677/2500000000 : ℚ), (-3135942277/31250000000 : ℚ), 3⟩,
    ⟨(149339330111/500000000000 : ℚ), (1419967733/10000000000 : ℚ), (-13490307473/250000000000 : ℚ), 3⟩,
    ⟨(30394947247/100000000000 : ℚ), (134249531/10000000000 : ℚ), (-15231078271/1000000000000 : ℚ), 3⟩,
    ⟨(77286005177/250000000000 : ℚ), (-930507037/10000000000 : ℚ), (17401098769/1000000000000 : ℚ), 3⟩,
    ⟨(314212278597/1000000000000 : ℚ), (-1819239609/10000000000 : ℚ), (45095416781/1000000000000 : ℚ), 3⟩,
    ⟨(319105436043/1000000000000 : ℚ), (-2565576773/10000000000 : ℚ), (68724844563/1000000000000 : ℚ), 3⟩,
    ⟨(64755273853/200000000000 : ℚ), (-1597477067/5000000000 : ℚ), (22238188397/250000000000 : ℚ), 3⟩,
    ⟨(328180094623/1000000000000 : ℚ), (-3726776151/10000000000 : ℚ), (13285874061/125000000000 : ℚ), 3⟩,
    ⟨(332274201833/1000000000000 : ℚ), (-521992803/1250000000 : ℚ), (121118310671/1000000000000 : ℚ), 3⟩,
    ⟨(168009631203/500000000000 : ℚ), (-569242761/1250000000 : ℚ), (133748134019/1000000000000 : ℚ), 3⟩,
    ⟨(339379209361/1000000000000 : ℚ), (-76088267/156250000 : ℚ), (14440895307/100000000000 : ℚ), 3⟩,
    ⟨(85580421143/250000000000 : ℚ), (-1282476609/2500000000 : ℚ), (153279484731/1000000000000 : ℚ), 3⟩,
    ⟨(68963670079/200000000000 : ℚ), (-166873709/312500000 : ℚ), (160496053817/1000000000000 : ℚ), 3⟩,
    ⟨(86711290643/250000000000 : ℚ), (-5503772951/10000000000 : ℚ), (166161173479/1000000000000 : ℚ), 3⟩,
    ⟨(174191300897/500000000000 : ℚ), (-5624275959/10000000000 : ℚ), (170349984999/1000000000000 : ℚ), 3⟩,
    ⟨(174707930841/500000000000 : ℚ), (-2851763031/5000000000 : ℚ), (17311500323/100000000000 : ℚ), 3⟩,
    ⟨(349934991377/1000000000000 : ℚ), (-574283287/1000000000 : ℚ), (43622366071/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5747731479/10000000000 : ℚ), (43665224913/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (45171393903/125000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control563.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control563.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate563

namespace DiagonalRamsey.JointInheritedCertificate564
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(132281808689/500000000000 : ℚ), (15656451690763/10000000000 : ℚ), (-414845167021767/1000000000000 : ℚ), 12⟩,
    ⟨(265119140133/1000000000000 : ℚ), (1713432470863/10000000000 : ℚ), (-9164208210907/200000000000 : ℚ), 9⟩,
    ⟨(53244967131/200000000000 : ℚ), (300723953967/5000000000 : ℚ), (-16298937095553/1000000000000 : ℚ), 8⟩,
    ⟨(66967513873/250000000000 : ℚ), (148328048477/5000000000 : ℚ), (-4082537782619/500000000000 : ℚ), 7⟩,
    ⟨(135019477639/500000000000 : ℚ), (34421815141/2000000000 : ℚ), (-4817560164951/1000000000000 : ℚ), 6⟩,
    ⟨(136355323661/500000000000 : ℚ), (109617225899/10000000000 : ℚ), (-156139521559/50000000000 : ℚ), 5⟩,
    ⟨(275859401769/1000000000000 : ℚ), (37023679471/5000000000 : ℚ), (-536943905547/250000000000 : ℚ), 5⟩,
    ⟨(34931861799/125000000000 : ℚ), (25996119637/5000000000 : ℚ), (-307153913489/200000000000 : ℚ), 5⟩,
    ⟨(35432812329/125000000000 : ℚ), (936056769/250000000 : ℚ), (-1126484348031/1000000000000 : ℚ), 4⟩,
    ⟨(28784361907/100000000000 : ℚ), (27380935783/10000000000 : ℚ), (-839236438143/1000000000000 : ℚ), 4⟩,
    ⟨(3656950789/12500000000 : ℚ), (20161053931/10000000000 : ℚ), (-314911706839/500000000000 : ℚ), 4⟩,
    ⟨(297554447371/1000000000000 : ℚ), (7411303039/5000000000 : ℚ), (-236192696437/500000000000 : ℚ), 4⟩,
    ⟨(302790634649/1000000000000 : ℚ), (5388129439/5000000000 : ℚ), (-21936200693/62500000000 : ℚ), 4⟩,
    ⟨(308214197609/1000000000000 : ℚ), (7644621647/10000000000 : ℚ), (-102138411/400000000 : ℚ), 3⟩,
    ⟨(502036647/1600000000 : ℚ), (2588712489/5000000000 : ℚ), (-35729265261/200000000000 : ℚ), 3⟩,
    ⟨(319413221561/1000000000000 : ℚ), (3203764593/10000000000 : ℚ), (-4647301579/40000000000 : ℚ), 3⟩,
    ⟨(32508082983/100000000000 : ℚ), (1604003733/10000000000 : ℚ), (-32323061789/500000000000 : ℚ), 3⟩,
    ⟨(41340143377/125000000000 : ℚ), (292608877/10000000000 : ℚ), (-108283443/5000000000 : ℚ), 3⟩,
    ⟨(168139926891/500000000000 : ℚ), (-792681321/10000000000 : ℚ), (7264740261/500000000000 : ℚ), 3⟩,
    ⟨(170851708371/500000000000 : ℚ), (-1697886813/10000000000 : ℚ), (45209126303/1000000000000 : ℚ), 3⟩,
    ⟨(17346980201/50000000000 : ℚ), (-2457465063/10000000000 : ℚ), (35679328547/500000000000 : ℚ), 3⟩,
    ⟨(351937988271/1000000000000 : ℚ), (-3097494219/10000000000 : ℚ), (93720631971/1000000000000 : ℚ), 3⟩,
    ⟨(356650432321/1000000000000 : ℚ), (-1818940811/5000000000 : ℚ), (56432025939/500000000000 : ℚ), 3⟩,
    ⟨(361031552759/1000000000000 : ℚ), (-2046961587/5000000000 : ℚ), (25845437837/200000000000 : ℚ), 3⟩,
    ⟨(365039156999/1000000000000 : ℚ), (-4477421569/10000000000 : ℚ), (11451883/80000000 : ℚ), 3⟩,
    ⟨(184317324811/500000000000 : ℚ), (-4797499029/10000000000 : ℚ), (30977904389/200000000000 : ℚ), 3⟩,
    ⟨(371783404069/1000000000000 : ℚ), (-1265298633/2500000000 : ℚ), (32930276423/200000000000 : ℚ), 3⟩,
    ⟨(374455096113/1000000000000 : ℚ), (-5273906039/10000000000 : ℚ), (172587842601/1000000000000 : ℚ), 3⟩,
    ⟨(376623995899/1000000000000 : ℚ), (-1087943773/2000000000 : ℚ), (178814662829/1000000000000 : ℚ), 3⟩,
    ⟨(47283651967/125000000000 : ℚ), (-1390412079/2500000000 : ℚ), (183416804381/1000000000000 : ℚ), 3⟩,
    ⟨(189687455629/500000000000 : ℚ), (-1410453951/2500000000 : ℚ), (186453712819/1000000000000 : ℚ), 3⟩,
    ⟨(379930434013/1000000000000 : ℚ), (-1136314283/2000000000 : ℚ), (93981521813/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-2843262833/5000000000 : ℚ), (23518910991/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (170932010153/500000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control564.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control564.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate564

namespace DiagonalRamsey.JointInheritedCertificate565
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(55946475577/200000000000 : ℚ), (7944818019137/5000000000 : ℚ), (-111288510507129/250000000000 : ℚ), 12⟩,
    ⟨(280311150359/1000000000000 : ℚ), (108701238479/625000000 : ℚ), (-983406826243/20000000000 : ℚ), 9⟩,
    ⟨(70365780353/250000000000 : ℚ), (305322267071/5000000000 : ℚ), (-17491483921227/1000000000000 : ℚ), 8⟩,
    ⟨(283177196933/1000000000000 : ℚ), (75320780539/2500000000 : ℚ), (-175268615577/20000000000 : ℚ), 7⟩,
    ⟨(142718434719/500000000000 : ℚ), (174857058073/10000000000 : ℚ), (-2585705010641/500000000000 : ℚ), 6⟩,
    ⟨(72055094261/250000000000 : ℚ), (27853890177/2500000000 : ℚ), (-1676445634553/500000000000 : ℚ), 5⟩,
    ⟨(291500913053/1000000000000 : ℚ), (37650525677/5000000000 : ℚ), (-230672249127/100000000000 : ℚ), 5⟩,
    ⟨(295246884109/1000000000000 : ℚ), (52905758143/10000000000 : ℚ), (-103130907273/62500000000 : ℚ), 5⟩,
    ⟨(4678472101/15625000000 : ℚ), (19064978491/5000000000 : ℚ), (-121100886387/100000000000 : ℚ), 4⟩,
    ⟨(151993346701/500000000000 : ℚ), (27911737693/10000000000 : ℚ), (-902886950429/1000000000000 : ℚ), 4⟩,
    ⟨(154448181249/500000000000 : ℚ), (411580549/200000000 : ℚ), (-678296354639/1000000000000 : ℚ), 4⟩,
    ⟨(157051969477/500000000000 : ℚ), (3031444291/2000000000 : ℚ), (-509487113119/1000000000000 : ℚ), 4⟩,
    ⟨(319559270961/1000000000000 : ℚ), (5523986319/5000000000 : ℚ), (-189675164827/500000000000 : ℚ), 4⟩,
    ⟨(32520982069/100000000000 : ℚ), (98350881/125000000 : ℚ), (-276876577153/1000000000000 : ℚ), 3⟩,
    ⟨(331001170259/1000000000000 : ℚ), (5363347201/10000000000 : ℚ), (-24340678503/125000000000 : ℚ), 3⟩,
    ⟨(67375509161/200000000000 : ℚ), (3360204187/10000000000 : ℚ), (-31963690531/250000000000 : ℚ), 3⟩,
    ⟨(17139117731/50000000000 : ℚ), (1737091651/10000000000 : ℚ), (-72712847171/1000000000000 : ℚ), 3⟩,
    ⟨(174329365083/500000000000 : ℚ), (40708573/1000000000 : ℚ), (-26743812009/1000000000000 : ℚ), 3⟩,
    ⟨(70890015947/200000000000 : ℚ), (-27724241/400000000 : ℚ), (5962554081/500000000000 : ℚ), 3⟩,
    ⟨(45012578683/125000000000 : ℚ), (-805140849/5000000000 : ℚ), (8937422327/200000000000 : ℚ), 3⟩,
    ⟨(365555961471/1000000000000 : ℚ), (-2379494741/10000000000 : ℚ), (72591694817/1000000000000 : ℚ), 3⟩,
    ⟨(185381768963/500000000000 : ℚ), (-605457083/2000000000 : ℚ), (48218713589/500000000000 : ℚ), 3⟩,
    ⟨(187836603511/500000000000 : ℚ), (-357392287/1000000000 : ℚ), (58418308933/500000000000 : ℚ), 3⟩,
    ⟨(380237685961/1000000000000 : ℚ), (-4034988277/10000000000 : ℚ), (16782655441/125000000000 : ℚ), 3⟩,
    ⟨(76882603263/200000000000 : ℚ), (-4422510183/10000000000 : ℚ), (29815225919/200000000000 : ℚ), 3⟩,
    ⟨(388158987371/1000000000000 : ℚ), (-4745789777/10000000000 : ℚ), (161563291803/1000000000000 : ℚ), 3⟩,
    ⟨(19571976169/50000000000 : ℚ), (-2506003707/5000000000 : ℚ), (3438800543/20000000000 : ℚ), 3⟩,
    ⟨(394223030987/1000000000000 : ℚ), (-2613335911/5000000000 : ℚ), (45093122101/250000000000 : ℚ), 3⟩,
    ⟨(99120675873/250000000000 : ℚ), (-5393953743/10000000000 : ℚ), (186985913629/1000000000000 : ℚ), 3⟩,
    ⟨(398196779013/1000000000000 : ℚ), (-2758466273/5000000000 : ℚ), (19187230339/100000000000 : ℚ), 3⟩,
    ⟨(199674375033/500000000000 : ℚ), (-1119555057/2000000000 : ℚ), (39019215601/200000000000 : ℚ), 3⟩,
    ⟨(19996376127/50000000000 : ℚ), (-2818930679/5000000000 : ℚ), (98349034339/500000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-705357073/1250000000 : ℚ), (24612232451/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (65769410193/200000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control565.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control565.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate565

namespace DiagonalRamsey.JointInheritedCertificate566
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36873737573/125000000000 : ℚ), (1612112564567/1000000000 : ℚ), (-47626360042069/100000000000 : ℚ), 12⟩,
    ⟨(14779574781/50000000000 : ℚ), (1764815643623/10000000000 : ℚ), (-13151996569633/250000000000 : ℚ), 9⟩,
    ⟨(59357778401/200000000000 : ℚ), (123953980213/2000000000 : ℚ), (-9357695500803/500000000000 : ℚ), 8⟩,
    ⟨(59714111631/200000000000 : ℚ), (955850071/31250000 : ℚ), (-9377449876847/1000000000000 : ℚ), 7⟩,
    ⟨(75229833913/250000000000 : ℚ), (44395138563/2500000000 : ℚ), (-2767234090593/500000000000 : ℚ), 6⟩,
    ⟨(60762520897/200000000000 : ℚ), (28299079163/2500000000 : ℚ), (-717787337399/200000000000 : ℚ), 5⟩,
    ⟨(76805625223/250000000000 : ℚ), (38270571081/5000000000 : ℚ), (-2469741050729/1000000000000 : ℚ), 5⟩,
    ⟨(311116185709/1000000000000 : ℚ), (53808176177/10000000000 : ℚ), (-70692816271/40000000000 : ℚ), 5⟩,
    ⟨(315456160621/1000000000000 : ℚ), (38808220037/10000000000 : ℚ), (-1297656241869/1000000000000 : ℚ), 4⟩,
    ⟨(320200629297/1000000000000 : ℚ), (1777143753/625000000 : ℚ), (-968119093791/1000000000000 : ℚ), 4⟩,
    ⟨(325303899911/1000000000000 : ℚ), (20989631367/10000000000 : ℚ), (-363980565403/500000000000 : ℚ), 4⟩,
    ⟨(330716825177/1000000000000 : ℚ), (1548512909/1000000000 : ℚ), (-5474922877/10000000000 : ℚ), 4⟩,
    ⟨(67277455133/200000000000 : ℚ), (11313497487/10000000000 : ℚ), (-204203522443/500000000000 : ℚ), 4⟩,
    ⟨(171130320919/500000000000 : ℚ), (1010718497/1250000000 : ℚ), (-37365681807/125000000000 : ℚ), 3⟩,
    ⟨(348280359969/1000000000000 : ℚ), (5543842107/10000000000 : ℚ), (-105596413877/500000000000 : ℚ), 3⟩,
    ⟨(4429855711/12500000000 : ℚ), (3511505769/10000000000 : ℚ), (-69906631727/500000000000 : ℚ), 3⟩,
    ⟨(360526108261/1000000000000 : ℚ), (1865289189/10000000000 : ℚ), (-40492639283/500000000000 : ℚ), 3⟩,
    ⟨(366634205173/1000000000000 : ℚ), (64610913/1250000000 : ℚ), (-31972738437/1000000000000 : ℚ), 3⟩,
    ⟨(372653923303/1000000000000 : ℚ), (-598016993/10000000000 : ℚ), (576858451/62500000000 : ℚ), 3⟩,
    ⟨(94631822369/250000000000 : ℚ), (-190874421/1250000000 : ℚ), (44114504793/1000000000000 : ℚ), 3⟩,
    ⟨(76839547993/200000000000 : ℚ), (-2305694061/10000000000 : ℚ), (73806248929/1000000000000 : ℚ), 3⟩,
    ⟨(38961066523/100000000000 : ℚ), (-23133697/78125000 : ℚ), (19832238213/200000000000 : ℚ), 3⟩,
    ⟨(98678483961/250000000000 : ℚ), (-439235281/1250000000 : ℚ), (120836253493/1000000000000 : ℚ), 3⟩,
    ⟨(399458404521/1000000000000 : ℚ), (-3979866543/10000000000 : ℚ), (27867632533/200000000000 : ℚ), 3⟩,
    ⟨(403798379433/1000000000000 : ℚ), (-4371319777/10000000000 : ℚ), (77529458559/500000000000 : ℚ), 3⟩,
    ⟨(407692064249/1000000000000 : ℚ), (-469772161/1000000000 : ℚ), (168301801249/1000000000000 : ℚ), 3⟩,
    ⟨(411101960657/1000000000000 : ℚ), (-310399589/625000000 : ℚ), (44825178399/250000000000 : ℚ), 3⟩,
    ⟨(41399522949/100000000000 : ℚ), (-5182954457/10000000000 : ℚ), (188234667553/1000000000000 : ℚ), 3⟩,
    ⟨(416344006987/1000000000000 : ℚ), (-1337915171/2500000000 : ℚ), (3050604963/15625000000 : ℚ), 3⟩,
    ⟨(418125673137/1000000000000 : ℚ), (-684456923/1250000000 : ℚ), (50103039767/250000000000 : ℚ), 3⟩,
    ⟨(419323069521/1000000000000 : ℚ), (-173660973/312500000 : ℚ), (101912285197/500000000000 : ℚ), 3⟩,
    ⟨(209962332279/500000000000 : ℚ), (-1399389143/2500000000 : ℚ), (51380019283/250000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-5602591387/10000000000 : ℚ), (102865760199/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (315868177707/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control566.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control566.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate566

namespace DiagonalRamsey.JointInheritedCertificate585
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(20681389121/100000000000 : ℚ), (14700619017779/10000000000 : ℚ), (-12180273074411/40000000000 : ℚ), 12⟩,
    ⟨(103631168691/500000000000 : ℚ), (1608162810693/10000000000 : ℚ), (-8407145386119/250000000000 : ℚ), 9⟩,
    ⟨(6504840967/31250000000 : ℚ), (564115103323/10000000000 : ℚ), (-11958129665713/1000000000000 : ℚ), 8⟩,
    ⟨(8379320637/40000000000 : ℚ), (277988659301/10000000000 : ℚ), (-299372753673/50000000000 : ℚ), 7⟩,
    ⟨(211233861947/1000000000000 : ℚ), (80545682831/5000000000 : ℚ), (-882528487453/250000000000 : ℚ), 6⟩,
    ⟨(13336911713/62500000000 : ℚ), (6403126081/625000000 : ℚ), (-1142960561537/500000000000 : ℚ), 6⟩,
    ⟨(10796621093/50000000000 : ℚ), (69078400833/10000000000 : ℚ), (-392506413539/250000000000 : ℚ), 5⟩,
    ⟨(4376697721/20000000000 : ℚ), (12097373773/2500000000 : ℚ), (-11205629833/10000000000 : ℚ), 5⟩,
    ⟨(11103501383/50000000000 : ℚ), (8685469769/2500000000 : ℚ), (-819876865817/1000000000000 : ℚ), 4⟩,
    ⟨(56401672627/250000000000 : ℚ), (25304184387/10000000000 : ℚ), (-304372031181/500000000000 : ℚ), 4⟩,
    ⟨(229410814597/1000000000000 : ℚ), (4632644131/2500000000 : ℚ), (-454720164139/1000000000000 : ℚ), 4⟩,
    ⟨(116722882067/500000000000 : ℚ), (13520288489/10000000000 : ℚ), (-338825191013/1000000000000 : ℚ), 4⟩,
    ⟨(59418170087/250000000000 : ℚ), (9720506977/10000000000 : ℚ), (-31169839433/125000000000 : ℚ), 4⟩,
    ⟨(9682034229/40000000000 : ℚ), (105896051/156250000 : ℚ), (-8939656219/50000000000 : ℚ), 3⟩,
    ⟨(246538126043/1000000000000 : ℚ), (111405699/250000000 : ℚ), (-122111020603/1000000000000 : ℚ), 3⟩,
    ⟨(62772819109/250000000000 : ℚ), (3246303/12500000 : ℚ), (-15173513817/200000000000 : ℚ), 3⟩,
    ⟨(255666457577/1000000000000 : ℚ), (1087784651/10000000000 : ℚ), (-18818901817/500000000000 : ℚ), 3⟩,
    ⟨(26021960797/100000000000 : ℚ), (-151561143/10000000000 : ℚ), (-2839150857/500000000000 : ℚ), 3⟩,
    ⟨(264706878289/1000000000000 : ℚ), (-1179186569/10000000000 : ℚ), (21286810543/1000000000000 : ℚ), 3⟩,
    ⟨(134542526833/500000000000 : ℚ), (-1019028841/5000000000 : ℚ), (22102578051/500000000000 : ℚ), 3⟩,
    ⟨(273311969879/1000000000000 : ℚ), (-1380153147/5000000000 : ℚ), (63789122701/1000000000000 : ℚ), 3⟩,
    ⟨(34668364927/125000000000 : ℚ), (-3370217423/10000000000 : ℚ), (80579411573/1000000000000 : ℚ), 3⟩,
    ⟨(56230208701/200000000000 : ℚ), (-1943150997/5000000000 : ℚ), (9498936539/100000000000 : ℚ), 3⟩,
    ⟨(284687706353/1000000000000 : ℚ), (-432276027/1000000000 : ℚ), (53668240579/500000000000 : ℚ), 3⟩,
    ⟨(287922847963/1000000000000 : ℚ), (-938106243/2000000000 : ℚ), (117865203089/1000000000000 : ℚ), 3⟩,
    ⟨(290825312153/1000000000000 : ℚ), (-1249513767/2500000000 : ℚ), (12676366471/100000000000 : ℚ), 3⟩,
    ⟨(146683573303/500000000000 : ℚ), (-5251833557/10000000000 : ℚ), (134176147711/1000000000000 : ℚ), 3⟩,
    ⟨(147761936033/500000000000 : ℚ), (-68210557/125000000 : ℚ), (35053110517/250000000000 : ℚ), 3⟩,
    ⟨(297274718089/1000000000000 : ℚ), (-5616849817/10000000000 : ℚ), (144954905733/1000000000000 : ℚ), 3⟩,
    ⟨(29860282307/100000000000 : ℚ), (-5734622149/10000000000 : ℚ), (74231883371/500000000000 : ℚ), 3⟩,
    ⟨(37436924579/125000000000 : ℚ), (-5812110249/10000000000 : ℚ), (150781031747/1000000000000 : ℚ), 3⟩,
    ⟨(74985960701/250000000000 : ℚ), (-5850553277/10000000000 : ℚ), (151933243521/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2927672357/5000000000 : ℚ), (76038486589/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (201861457639/500000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control585.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control585.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate585

namespace DiagonalRamsey.JointInheritedCertificate586
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60924654977/250000000000 : ℚ), (15186325512191/10000000000 : ℚ), (-185326434870781/500000000000 : ℚ), 12⟩,
    ⟨(122105090819/500000000000 : ℚ), (166186991307/1000000000 : ℚ), (-10234102613797/250000000000 : ℚ), 9⟩,
    ⟨(122614189239/500000000000 : ℚ), (145816149329/2500000000 : ℚ), (-14558911704277/1000000000000 : ℚ), 8⟩,
    ⟨(61685851159/250000000000 : ℚ), (287620112377/10000000000 : ℚ), (-3645705181753/500000000000 : ℚ), 7⟩,
    ⟨(124370334791/500000000000 : ℚ), (5212786659/312500000 : ℚ), (-4300409976613/1000000000000 : ℚ), 6⟩,
    ⟨(125600469281/500000000000 : ℚ), (849521111/80000000 : ℚ), (-174130942467/62500000000 : ℚ), 6⟩,
    ⟨(254100517843/1000000000000 : ℚ), (2867380233/400000000 : ℚ), (-957427814973/500000000000 : ℚ), 5⟩,
    ⟨(257411482889/1000000000000 : ℚ), (25143767701/5000000000 : ℚ), (-341986465943/250000000000 : ℚ), 5⟩,
    ⟨(261101947299/1000000000000 : ℚ), (18085032289/5000000000 : ℚ), (-1002152021597/1000000000000 : ℚ), 4⟩,
    ⟨(265136369881/1000000000000 : ℚ), (330077057/125000000 : ℚ), (-745385523951/1000000000000 : ℚ), 4⟩,
    ⟨(134737948471/500000000000 : ℚ), (4849535331/2500000000 : ℚ), (-34884567803/62500000000 : ℚ), 4⟩,
    ⟨(137039368231/500000000000 : ℚ), (55526707/39062500 : ℚ), (-417350239291/1000000000000 : ℚ), 4⟩,
    ⟨(278900560583/1000000000000 : ℚ), (642790867/625000000 : ℚ), (-154366512569/500000000000 : ℚ), 4⟩,
    ⟨(113557973/400000000 : ℚ), (1810394037/2500000000 : ℚ), (-55784105471/250000000000 : ℚ), 3⟩,
    ⟨(72253438421/250000000000 : ℚ), (968578873/2000000000 : ℚ), (-154450620219/1000000000000 : ℚ), 3⟩,
    ⟨(294207727087/1000000000000 : ℚ), (730720649/2500000000 : ℚ), (-9847971283/100000000000 : ℚ), 3⟩,
    ⟨(149713415953/500000000000 : ℚ), (682772013/5000000000 : ℚ), (-26134485717/500000000000 : ℚ), 3⟩,
    ⟨(304620805309/1000000000000 : ℚ), (43980831/5000000000 : ℚ), (-13693063719/1000000000000 : ℚ), 3⟩,
    ⟨(77434906623/250000000000 : ℚ), (-970207893/10000000000 : ℚ), (940219267/50000000000 : ℚ), 3⟩,
    ⟨(31473399841/100000000000 : ℚ), (-46338863/250000000 : ℚ), (23190151297/500000000000 : ℚ), 3⟩,
    ⟨(31955582253/100000000000 : ℚ), (-1297726723/5000000000 : ℚ), (3495266743/50000000000 : ℚ), 3⟩,
    ⟨(324158662051/1000000000000 : ℚ), (-100661041/312500000 : ℚ), (5627571561/62500000000 : ℚ), 3⟩,
    ⟨(328498189111/1000000000000 : ℚ), (-937479723/2500000000 : ℚ), (53647155003/500000000000 : ℚ), 3⟩,
    ⟨(166266305847/500000000000 : ℚ), (-4196544163/10000000000 : ℚ), (122054620409/1000000000000 : ℚ), 3⟩,
    ⟨(336223076103/1000000000000 : ℚ), (-2286218743/5000000000 : ℚ), (67311383837/500000000000 : ℚ), 3⟩,
    ⟨(339534041149/1000000000000 : ℚ), (-4886410433/10000000000 : ℚ), (29046134091/200000000000 : ℚ), 3⟩,
    ⟨(34243362043/100000000000 : ℚ), (-5145257541/10000000000 : ℚ), (77028297029/500000000000 : ℚ), 3⟩,
    ⟨(344893889411/1000000000000 : ℚ), (-5354185653/10000000000 : ℚ), (161236503651/1000000000000 : ℚ), 3⟩,
    ⟨(346891154357/1000000000000 : ℚ), (-5517132767/10000000000 : ℚ), (166872626819/1000000000000 : ℚ), 3⟩,
    ⟨(69681236103/200000000000 : ℚ), (-2818501821/5000000000 : ℚ), (171039882347/1000000000000 : ℚ), 3⟩,
    ⟨(69884875471/200000000000 : ℚ), (-5715840829/10000000000 : ℚ), (43447655179/250000000000 : ℚ), 3⟩,
    ⟨(87483984771/250000000000 : ℚ), (-2877471849/5000000000 : ℚ), (175157969043/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5759816933/10000000000 : ℚ), (175328516669/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (370733466927/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control586.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control586.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate586

namespace DiagonalRamsey.JointInheritedCertificate587
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(70361011253/250000000000 : ℚ), (3931696721007/2500000000 : ℚ), (-443274360296019/1000000000000 : ℚ), 12⟩,
    ⟨(282014580309/1000000000000 : ℚ), (1721633734469/10000000000 : ℚ), (-24480295688739/500000000000 : ℚ), 9⟩,
    ⟨(141575078167/500000000000 : ℚ), (604575081001/10000000000 : ℚ), (-8707666984241/500000000000 : ℚ), 8⟩,
    ⟨(284839836871/1000000000000 : ℚ), (59667882253/2000000000 : ℚ), (-8724095485857/1000000000000 : ℚ), 7⟩,
    ⟨(71766837343/250000000000 : ℚ), (10823337147/625000000 : ℚ), (-2573616134339/500000000000 : ℚ), 6⟩,
    ⟨(144905620837/500000000000 : ℚ), (110353426233/10000000000 : ℚ), (-1668197211723/500000000000 : ℚ), 6⟩,
    ⟨(58609017719/200000000000 : ℚ), (18646397131/2500000000 : ℚ), (-1147326019829/500000000000 : ℚ), 5⟩,
    ⟨(14836887321/50000000000 : ℚ), (26200172443/5000000000 : ℚ), (-328162074239/200000000000 : ℚ), 5⟩,
    ⟨(75213413209/250000000000 : ℚ), (37759634991/10000000000 : ℚ), (-1203596288777/1000000000000 : ℚ), 4⟩,
    ⟨(61070633883/200000000000 : ℚ), (13816159309/5000000000 : ℚ), (-179359253659/200000000000 : ℚ), 4⟩,
    ⟨(38774120419/125000000000 : ℚ), (2036300467/1000000000 : ℚ), (-67317779131/100000000000 : ℚ), 4⟩,
    ⟨(157663212393/500000000000 : ℚ), (1873340821/1250000000 : ℚ), (-252553859583/500000000000 : ℚ), 4⟩,
    ⟨(80176028919/250000000000 : ℚ), (340968507/312500000 : ℚ), (-187774516113/500000000000 : ℚ), 4⟩,
    ⟨(326274245921/1000000000000 : ℚ), (7756293967/10000000000 : ℚ), (-17096149413/62500000000 : ℚ), 3⟩,
    ⟨(8299579303/25000000000 : ℚ), (5270883903/10000000000 : ℚ), (-191765924227/1000000000000 : ℚ), 3⟩,
    ⟨(168887957097/500000000000 : ℚ), (656557661/2000000000 : ℚ), (-125210335129/1000000000000 : ℚ), 3⟩,
    ⟨(343596684869/1000000000000 : ℚ), (417893371/2500000000 : ℚ), (-70334400307/1000000000000 : ℚ), 3⟩,
    ⟨(349389426943/1000000000000 : ℚ), (17554857/500000000 : ℚ), (-24592547991/1000000000000 : ℚ), 3⟩,
    ⟨(177549176571/500000000000 : ℚ), (-185344159/2500000000 : ℚ), (694028069/50000000000 : ℚ), 3⟩,
    ⟨(180334241693/500000000000 : ℚ), (-1652243671/10000000000 : ℚ), (11618174951/250000000000 : ℚ), 3⟩,
    ⟨(366046174277/1000000000000 : ℚ), (-2416262689/10000000000 : ℚ), (3711467469/50000000000 : ℚ), 3⟩,
    ⟨(371179635711/1000000000000 : ℚ), (-382469403/1250000000 : ℚ), (97946073713/1000000000000 : ℚ), 3⟩,
    ⟨(376019429647/1000000000000 : ℚ), (-3602826113/10000000000 : ℚ), (59116451843/500000000000 : ℚ), 3⟩,
    ⟨(190259473113/500000000000 : ℚ), (-81218633/200000000 : ℚ), (67780033309/500000000000 : ℚ), 3⟩,
    ⟨(384634852643/1000000000000 : ℚ), (-1111501117/2500000000 : ℚ), (150291027273/1000000000000 : ℚ), 3⟩,
    ⟨(97081877617/250000000000 : ℚ), (-953454287/2000000000 : ℚ), (162706729649/1000000000000 : ℚ), 3⟩,
    ⟨(97890339347/250000000000 : ℚ), (-157245469/312500000 : ℚ), (86511809697/500000000000 : ℚ), 3⟩,
    ⟨(394305249691/1000000000000 : ℚ), (-13113047/25000000 : ℚ), (36281434037/200000000000 : ℚ), 3⟩,
    ⟨(24783297637/62500000000 : ℚ), (-5411498713/10000000000 : ℚ), (93991041499/500000000000 : ℚ), 3⟩,
    ⟨(398222442729/1000000000000 : ℚ), (-691718477/1250000000 : ℚ), (192839942769/1000000000000 : ℚ), 3⟩,
    ⟨(199679009377/500000000000 : ℚ), (-5614114259/10000000000 : ℚ), (306320101/1562500000 : ℚ), 3⟩,
    ⟨(7998571081/20000000000 : ℚ), (-1130793039/2000000000 : ℚ), (197637478873/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-565893117/1000000000 : ℚ), (197836100157/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (84428302063/250000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control587.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control587.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate587

namespace DiagonalRamsey.JointInheritedCertificate588
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18548353671/62500000000 : ℚ), (15955347002249/10000000000 : ℚ), (-94840446303007/200000000000 : ℚ), 12⟩,
    ⟨(148683334833/500000000000 : ℚ), (1746906372073/10000000000 : ℚ), (-52378053063687/1000000000000 : ℚ), 9⟩,
    ⟨(149273490253/500000000000 : ℚ), (306792863019/5000000000 : ℚ), (-372639556713/20000000000 : ℚ), 8⟩,
    ⟨(150151612109/500000000000 : ℚ), (302870993713/10000000000 : ℚ), (-9334411034479/1000000000000 : ℚ), 7⟩,
    ⟨(60523697443/200000000000 : ℚ), (35172632299/2000000000 : ℚ), (-1377012960947/250000000000 : ℚ), 6⟩,
    ⟨(38183809031/125000000000 : ℚ), (112112359181/10000000000 : ℚ), (-1785471460921/500000000000 : ℚ), 6⟩,
    ⟨(308831713143/1000000000000 : ℚ), (37905334809/5000000000 : ℚ), (-2456600366551/1000000000000 : ℚ), 5⟩,
    ⟨(19541864957/62500000000 : ℚ), (53291994659/10000000000 : ℚ), (-1757233874223/1000000000000 : ℚ), 5⟩,
    ⟨(158473943751/500000000000 : ℚ), (4803741613/1250000000 : ℚ), (-644810219209/500000000000 : ℚ), 4⟩,
    ⟨(321624657771/1000000000000 : ℚ), (28148851961/10000000000 : ℚ), (-192306194391/200000000000 : ℚ), 4⟩,
    ⟨(40831888783/125000000000 : ℚ), (20768962387/10000000000 : ℚ), (-5644038233/7812500000 : ℚ), 4⟩,
    ⟨(331990798973/1000000000000 : ℚ), (15311001559/10000000000 : ℚ), (-542776280787/1000000000000 : ℚ), 4⟩,
    ⟨(337580338301/1000000000000 : ℚ), (11173642647/10000000000 : ℚ), (-20216123193/50000000000 : ℚ), 4⟩,
    ⟨(171684948963/500000000000 : ℚ), (7971673569/10000000000 : ℚ), (-147673032973/500000000000 : ℚ), 3⟩,
    ⟨(174651860613/500000000000 : ℚ), (1362381281/2500000000 : ℚ), (-52006485211/250000000000 : ℚ), 3⟩,
    ⟨(355324662239/1000000000000 : ℚ), (3432582173/10000000000 : ℚ), (-267556747/1953125000 : ℚ), 3⟩,
    ⟨(36137473601/100000000000 : ℚ), (359707037/2000000000 : ℚ), (-15689973967/200000000000 : ℚ), 3⟩,
    ⟨(183697838511/500000000000 : ℚ), (114969527/2500000000 : ℚ), (-2968358119/100000000000 : ℚ), 3⟩,
    ⟨(186664750161/500000000000 : ℚ), (-40446049/625000000 : ℚ), (1130701259/100000000000 : ℚ), 3⟩,
    ⟨(94779764987/250000000000 : ℚ), (-784834657/5000000000 : ℚ), (23004144917/500000000000 : ℚ), 3⟩,
    ⟨(15388343971/40000000000 : ℚ), (-585765939/2500000000 : ℚ), (18885123871/250000000000 : ℚ), 3⟩,
    ⟨(78008857597/200000000000 : ℚ), (-187131/625000 : ℚ), (100756526973/1000000000000 : ℚ), 3⟩,
    ⟨(197537370239/500000000000 : ℚ), (-1771613447/5000000000 : ℚ), (61155390521/500000000000 : ℚ), 3⟩,
    ⟨(199875755373/500000000000 : ℚ), (-80123873/200000000 : ℚ), (140708041477/1000000000000 : ℚ), 3⟩,
    ⟨(404029558937/1000000000000 : ℚ), (-219757573/500000000 : ℚ), (156338793241/1000000000000 : ℚ), 3⟩,
    ⟨(203933842553/500000000000 : ℚ), (-943900731/2000000000 : ℚ), (169505127187/1000000000000 : ℚ), 3⟩,
    ⟨(205614463/500000000 : ℚ), (-311657009/625000000 : ℚ), (9021999629/50000000000 : ℚ), 3⟩,
    ⟨(207040455517/500000000000 : ℚ), (-1300437457/2500000000 : ℚ), (94660822869/500000000000 : ℚ), 3⟩,
    ⟨(416396174031/1000000000000 : ℚ), (-2684718447/5000000000 : ℚ), (7851381671/40000000000 : ℚ), 3⟩,
    ⟨(418152417743/1000000000000 : ℚ), (-1373172403/2500000000 : ℚ), (1258921953/6250000000 : ℚ), 3⟩,
    ⟨(419332728583/1000000000000 : ℚ), (-2786850577/5000000000 : ℚ), (51204949139/250000000000 : ℚ), 3⟩,
    ⟨(419925739513/1000000000000 : ℚ), (-701733447/1250000000 : ℚ), (2581316191/12500000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-5618872659/10000000000 : ℚ), (25839436277/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (324518773381/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control588.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control588.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate588

namespace DiagonalRamsey.JointInheritedCertificate606
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(122630081813/500000000000 : ℚ), (15027315504313/10000000000 : ℚ), (-369110390986487/1000000000000 : ℚ), 12⟩,
    ⟨(245764210627/1000000000000 : ℚ), (1644706364077/10000000000 : ℚ), (-636939729297/15625000000 : ℚ), 9⟩,
    ⟨(246767450381/1000000000000 : ℚ), (36084023673/625000000 : ℚ), (-14496265698161/1000000000000 : ℚ), 8⟩,
    ⟨(12413011057/50000000000 : ℚ), (1779690057/62500000 : ℚ), (-3629486440721/500000000000 : ℚ), 7⟩,
    ⟨(250228146707/1000000000000 : ℚ), (165168634019/10000000000 : ℚ), (-428041151923/100000000000 : ℚ), 6⟩,
    ⟨(252652274881/1000000000000 : ℚ), (105155572199/10000000000 : ℚ), (-2772401425669/1000000000000 : ℚ), 6⟩,
    ⟨(51101851997/200000000000 : ℚ), (70987737801/10000000000 : ℚ), (-476199209753/250000000000 : ℚ), 5⟩,
    ⟨(258771587689/1000000000000 : ℚ), (12448830267/2500000000 : ℚ), (-1328297481/976562500 : ℚ), 5⟩,
    ⟨(262407839993/1000000000000 : ℚ), (17904667501/5000000000 : ℚ), (-995922134409/1000000000000 : ℚ), 4⟩,
    ⟨(133191498901/500000000000 : ℚ), (26133870147/10000000000 : ℚ), (-185061073801/250000000000 : ℚ), 4⟩,
    ⟨(67664694543/250000000000 : ℚ), (959375079/500000000 : ℚ), (-110762759149/200000000000 : ℚ), 4⟩,
    ⟨(275194003/1000000000 : ℚ), (2809693423/2000000000 : ℚ), (-16544879209/40000000000 : ℚ), 4⟩,
    ⟨(34993124449/125000000000 : ℚ), (1268859209/1250000000 : ℚ), (-305483813669/1000000000000 : ℚ), 4⟩,
    ⟨(284866001293/1000000000000 : ℚ), (7132310901/10000000000 : ℚ), (-220272040863/1000000000000 : ℚ), 4⟩,
    ⟨(9059675879/31250000000 : ℚ), (2376211947/5000000000 : ℚ), (-151901875737/1000000000000 : ℚ), 3⟩,
    ⟨(73756825803/250000000000 : ℚ), (1423533227/5000000000 : ℚ), (-48097222953/500000000000 : ℚ), 3⟩,
    ⟨(150084870269/500000000000 : ℚ), (1301325901/10000000000 : ℚ), (-50206879109/1000000000000 : ℚ), 3⟩,
    ⟨(305287415623/1000000000000 : ℚ), (33043729/10000000000 : ℚ), (-738890373/62500000000 : ℚ), 3⟩,
    ⟨(310331042457/1000000000000 : ℚ), (-1017583847/10000000000 : ℚ), (10254890969/500000000000 : ℚ), 3⟩,
    ⟨(157626024079/500000000000 : ℚ), (-23684463/125000000 : ℚ), (9588344639/200000000000 : ℚ), 3⟩,
    ⟨(320003040751/1000000000000 : ℚ), (-1315782903/5000000000 : ℚ), (7134097211/100000000000 : ℚ), 3⟩,
    ⟨(324538265579/1000000000000 : ℚ), (-3253047229/10000000000 : ℚ), (91366763599/1000000000000 : ℚ), 3⟩,
    ⟨(328814045949/1000000000000 : ℚ), (-1889153623/5000000000 : ℚ), (108523840641/1000000000000 : ℚ), 3⟩,
    ⟨(332789203757/1000000000000 : ℚ), (-1055504791/2500000000 : ℚ), (123200590269/1000000000000 : ℚ), 3⟩,
    ⟨(168212728031/500000000000 : ℚ), (-2297749337/5000000000 : ℚ), (67848307841/500000000000 : ℚ), 3⟩,
    ⟨(169843891883/500000000000 : ℚ), (-4907485543/10000000000 : ℚ), (73121490559/500000000000 : ℚ), 3⟩,
    ⟨(342544768869/1000000000000 : ℚ), (-2582359177/5000000000 : ℚ), (155017274449/1000000000000 : ℚ), 3⟩,
    ⟨(86242224261/250000000000 : ℚ), (-2686180169/5000000000 : ℚ), (162154921513/1000000000000 : ℚ), 3⟩,
    ⟨(34693682261/100000000000 : ℚ), (-345894737/625000000 : ℚ), (20969715403/125000000000 : ℚ), 3⟩,
    ⟨(34842959337/100000000000 : ℚ), (-5653464033/10000000000 : ℚ), (85950134459/500000000000 : ℚ), 3⟩,
    ⟨(87358208281/250000000000 : ℚ), (-2865914657/5000000000 : ℚ), (43658666733/250000000000 : ℚ), 3⟩,
    ⟨(2799495041/8000000000 : ℚ), (-1154139829/2000000000 : ℚ), (43998471161/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2887771693/5000000000 : ℚ), (44040854449/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (380171309909/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control606.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control606.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate606

namespace DiagonalRamsey.JointInheritedCertificate607
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(283208991627/1000000000000 : ℚ), (15563106124627/10000000000 : ℚ), (-441398191585107/1000000000000 : ℚ), 12⟩,
    ⟨(56754206669/200000000000 : ℚ), (851978164709/5000000000 : ℚ), (-24375616292277/500000000000 : ℚ), 9⟩,
    ⟨(28488970401/100000000000 : ℚ), (59847350721/1000000000 : ℚ), (-4334831327657/250000000000 : ℚ), 8⟩,
    ⟨(57310846043/200000000000 : ℚ), (295379889607/10000000000 : ℚ), (-1085604146813/125000000000 : ℚ), 7⟩,
    ⟨(14437429083/50000000000 : ℚ), (17148062999/1000000000 : ℚ), (-1024619988913/200000000000 : ℚ), 6⟩,
    ⟨(145725812771/500000000000 : ℚ), (27321396343/2500000000 : ℚ), (-3319929619531/1000000000000 : ℚ), 6⟩,
    ⟨(294637330071/1000000000000 : ℚ), (73866368489/10000000000 : ℚ), (-2282606471193/1000000000000 : ℚ), 5⟩,
    ⟨(298275015171/1000000000000 : ℚ), (25946196887/5000000000 : ℚ), (-1631547124603/1000000000000 : ℚ), 5⟩,
    ⟨(151164823973/500000000000 : ℚ), (18693793007/5000000000 : ℚ), (-47848096543/40000000000 : ℚ), 4⟩,
    ⟨(153381090033/500000000000 : ℚ), (6837934187/2500000000 : ℚ), (-890723161571/1000000000000 : ℚ), 4⟩,
    ⟨(155764961911/500000000000 : ℚ), (2518278167/1250000000 : ℚ), (-167019088289/250000000000 : ℚ), 4⟩,
    ⟨(316586963237/1000000000000 : ℚ), (2963155091/2000000000 : ℚ), (-500745433149/1000000000000 : ℚ), 4⟩,
    ⟨(321884596257/1000000000000 : ℚ), (673361389/625000000 : ℚ), (-371765105139/1000000000000 : ℚ), 4⟩,
    ⟨(327371803779/1000000000000 : ℚ), (7644461701/10000000000 : ℚ), (-67554503779/250000000000 : ℚ), 4⟩,
    ⟨(83248935249/250000000000 : ℚ), (5178499931/10000000000 : ℚ), (-94412390977/500000000000 : ℚ), 3⟩,
    ⟨(169351123159/500000000000 : ℚ), (1602778917/5000000000 : ℚ), (-7661555131/62500000000 : ℚ), 3⟩,
    ⟨(172218181489/500000000000 : ℚ), (160632479/1000000000 : ℚ), (-67975569107/1000000000000 : ℚ), 3⟩,
    ⟨(3501428683/10000000000 : ℚ), (14772257/500000000 : ℚ), (-449230947/20000000000 : ℚ), 3⟩,
    ⟨(88941701379/250000000000 : ℚ), (-98657089/1250000000 : ℚ), (15815113301/1000000000000 : ℚ), 3⟩,
    ⟨(361254013039/1000000000000 : ℚ), (-846885753/5000000000 : ℚ), (48236770089/1000000000000 : ℚ), 3⟩,
    ⟨(183275823029/500000000000 : ℚ), (-1226280541/5000000000 : ℚ), (75844898453/1000000000000 : ℚ), 3⟩,
    ⟨(185804342737/500000000000 : ℚ), (-1545863303/5000000000 : ℚ), (1242900777/12500000000 : ℚ), 3⟩,
    ⟨(37637642923/100000000000 : ℚ), (-1815603667/5000000000 : ℚ), (59803008911/500000000000 : ℚ), 3⟩,
    ⟨(7616179227/20000000000 : ℚ), (-408633371/1000000000 : ℚ), (68417623469/500000000000 : ℚ), 3⟩,
    ⟨(96215898531/250000000000 : ℚ), (-2234470847/5000000000 : ℚ), (9467615997/62500000000 : ℚ), 3⟩,
    ⟨(48562659903/125000000000 : ℚ), (-2394091629/5000000000 : ℚ), (81912860057/500000000000 : ℚ), 3⟩,
    ⟨(195843491877/500000000000 : ℚ), (-631390313/1250000000 : ℚ), (43520608841/250000000000 : ℚ), 3⟩,
    ⟨(98597506909/250000000000 : ℚ), (-1315794397/2500000000 : ℚ), (1425131239/7812500000 : ℚ), 3⟩,
    ⟨(396584379081/1000000000000 : ℚ), (-2714224651/5000000000 : ℚ), (23619121861/125000000000 : ℚ), 3⟩,
    ⟨(79649781057/200000000000 : ℚ), (-5549964223/10000000000 : ℚ), (193782135341/1000000000000 : ℚ), 3⟩,
    ⟨(399367575951/1000000000000 : ℚ), (-5629851457/10000000000 : ℚ), (196968090993/1000000000000 : ℚ), 3⟩,
    ⟨(99982404417/250000000000 : ℚ), (-5669465823/10000000000 : ℚ), (99275635991/500000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-5674402367/10000000000 : ℚ), (198748716359/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (17331526019/50000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control607.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control607.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate607

namespace DiagonalRamsey.JointInheritedCertificate625
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(173253766769/1000000000000 : ℚ), (694709193307/2000000000 : ℚ), (-12093033215897/200000000000 : ℚ), 10⟩,
    ⟨(174724865113/1000000000000 : ℚ), (73299198219/2000000000 : ℚ), (-6550124164169/1000000000000 : ℚ), 7⟩,
    ⟨(44402632079/250000000000 : ℚ), (120962019877/10000000000 : ℚ), (-2236212709033/1000000000000 : ℚ), 6⟩,
    ⟨(4544996549/25000000000 : ℚ), (2184267103/400000000 : ℚ), (-1046804980463/1000000000000 : ℚ), 5⟩,
    ⟨(93565936151/500000000000 : ℚ), (27958514267/10000000000 : ℚ), (-556385654591/1000000000000 : ℚ), 4⟩,
    ⟨(7736066127/40000000000 : ℚ), (3708466179/2500000000 : ℚ), (-153593528463/500000000000 : ℚ), 4⟩,
    ⟨(3130754069/15625000000 : ℚ), (3748067363/5000000000 : ℚ), (-81488806737/500000000000 : ℚ), 4⟩,
    ⟨(207763971217/1000000000000 : ℚ), (3018727151/10000000000 : ℚ), (-2869816927/40000000000 : ℚ), 3⟩,
    ⟨(215304572557/1000000000000 : ℚ), (26612729/2500000000 : ℚ), (-2042876743/200000000000 : ℚ), 3⟩,
    ⟨(111350141679/500000000000 : ℚ), (-1878952853/10000000000 : ℚ), (16613387033/500000000000 : ℚ), 3⟩,
    ⟨(229666890599/1000000000000 : ℚ), (-327691657/1000000000 : ℚ), (32412763543/500000000000 : ℚ), 3⟩,
    ⟨(14746041967/62500000000 : ℚ), (-106948259/250000000 : ℚ), (44059428669/500000000000 : ℚ), 3⟩,
    ⟨(48253736363/200000000000 : ℚ), (-4992756669/10000000000 : ℚ), (26292511011/250000000000 : ℚ), 3⟩,
    ⟨(245458015459/1000000000000 : ℚ), (-5486925629/10000000000 : ℚ), (29298617383/250000000000 : ℚ), 3⟩,
    ⟨(124171839331/500000000000 : ℚ), (-5798937803/10000000000 : ℚ), (124897566281/1000000000000 : ℚ), 3⟩,
    ⟨(49962955401/200000000000 : ℚ), (-185942979/312500000 : ℚ), (128664517481/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2984433567/5000000000 : ℚ), (25826327883/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (457455840771/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control625.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control625.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate625

namespace DiagonalRamsey.JointInheritedCertificate626
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(209606110983/1000000000000 : ℚ), (225007624633/156250000 : ℚ), (-302297109979119/1000000000000 : ℚ), 12⟩,
    ⟨(52510279989/250000000000 : ℚ), (787906613967/5000000000 : ℚ), (-16690702931573/500000000000 : ℚ), 9⟩,
    ⟨(13181684283/62500000000 : ℚ), (110595883591/2000000000 : ℚ), (-11867967284907/1000000000000 : ℚ), 8⟩,
    ⟨(212195258297/1000000000000 : ℚ), (3407543773/125000000 : ℚ), (-297028204687/50000000000 : ℚ), 7⟩,
    ⟨(42778728427/200000000000 : ℚ), (79010233693/5000000000 : ℚ), (-3501044496457/1000000000000 : ℚ), 6⟩,
    ⟨(215985743677/1000000000000 : ℚ), (100518311073/10000000000 : ℚ), (-1132944229363/500000000000 : ℚ), 6⟩,
    ⟨(218451414841/1000000000000 : ℚ), (2711224857/400000000 : ℚ), (-1555206893139/1000000000000 : ℚ), 5⟩,
    ⟨(55316727467/250000000000 : ℚ), (5934355741/1250000000 : ℚ), (-1109032462597/1000000000000 : ℚ), 5⟩,
    ⟨(112202557/500000000 : ℚ), (8518249261/2500000000 : ℚ), (-405280632833/500000000000 : ℚ), 5⟩,
    ⟨(28479475577/125000000000 : ℚ), (6200064689/2500000000 : ℚ), (-600998960783/1000000000000 : ℚ), 4⟩,
    ⟨(23152594229/100000000000 : ℚ), (1133838847/625000000 : ℚ), (-448135918677/1000000000000 : ℚ), 4⟩,
    ⟨(235439988979/1000000000000 : ℚ), (13213387887/10000000000 : ℚ), (-333129280841/1000000000000 : ℚ), 4⟩,
    ⟨(119770125137/500000000000 : ℚ), (9474059829/10000000000 : ℚ), (-30545362059/125000000000 : ℚ), 4⟩,
    ⟨(243787238417/1000000000000 : ℚ), (6576315453/10000000000 : ℚ), (-17436310299/100000000000 : ℚ), 4⟩,
    ⟨(248140052591/1000000000000 : ℚ), (4289982381/10000000000 : ℚ), (-118148188163/1000000000000 : ℚ), 3⟩,
    ⟨(50511354563/200000000000 : ℚ), (1228953171/5000000000 : ℚ), (-7229754977/100000000000 : ℚ), 3⟩,
    ⟨(12849743183/50000000000 : ℚ), (970103109/10000000000 : ℚ), (-4300378643/125000000000 : ℚ), 3⟩,
    ⟨(52282316777/200000000000 : ℚ), (-252032191/10000000000 : ℚ), (-1366530827/500000000000 : ℚ), 3⟩,
    ⟨(132882199029/500000000000 : ℚ), (-1265689977/10000000000 : ℚ), (23979743617/1000000000000 : ℚ), 3⟩,
    ⟨(270011386201/1000000000000 : ℚ), (-2113115337/10000000000 : ℚ), (11669217249/250000000000 : ℚ), 3⟩,
    ⟨(34263955937/125000000000 : ℚ), (-282591377/1000000000 : ℚ), (66066209851/1000000000000 : ℚ), 3⟩,
    ⟨(139012847093/500000000000 : ℚ), (-3427981067/10000000000 : ℚ), (20671286443/250000000000 : ℚ), 3⟩,
    ⟨(14085791593/50000000000 : ℚ), (-3937536681/10000000000 : ℚ), (24236133881/250000000000 : ℚ), 3⟩,
    ⟨(71286630619/250000000000 : ℚ), (-4368559947/10000000000 : ℚ), (109159994303/1000000000000 : ℚ), 3⟩,
    ⟨(18017795413/62500000000 : ℚ), (-2365910243/5000000000 : ℚ), (23914904113/200000000000 : ℚ), 3⟩,
    ⟨(145550110817/500000000000 : ℚ), (-5035627497/10000000000 : ℚ), (128375120761/1000000000000 : ℚ), 3⟩,
    ⟨(293565892799/1000000000000 : ℚ), (-5286380677/10000000000 : ℚ), (530098387/3906250000 : ℚ), 3⟩,
    ⟨(295657994341/1000000000000 : ℚ), (-1097795681/2000000000 : ℚ), (141673802799/1000000000000 : ℚ), 3⟩,
    ⟨(297356378179/1000000000000 : ℚ), (-705890123/1250000000 : ℚ), (7318138331/50000000000 : ℚ), 3⟩,
    ⟨(298644687947/1000000000000 : ℚ), (-360220927/625000000 : ℚ), (14983187361/100000000000 : ℚ), 3⟩,
    ⟨(299510516519/1000000000000 : ℚ), (-730016907/1250000000 : ℚ), (15212281143/100000000000 : ℚ), 3⟩,
    ⟨(74986381373/250000000000 : ℚ), (-1469534943/2500000000 : ℚ), (153261912139/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5882876643/10000000000 : ℚ), (153404005367/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (423605439619/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control626.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control626.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate626

namespace DiagonalRamsey.JointInheritedCertificate627
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(246877677543/1000000000000 : ℚ), (14868645791347/10000000000 : ℚ), (-367609798008813/1000000000000 : ℚ), 12⟩,
    ⟨(123686970233/500000000000 : ℚ), (101723845783/625000000 : ℚ), (-10149132541029/250000000000 : ℚ), 9⟩,
    ⟨(248361687029/1000000000000 : ℚ), (17857461267/312500000 : ℚ), (-2887059424639/200000000000 : ℚ), 8⟩,
    ⟨(249831404693/1000000000000 : ℚ), (56377732119/2000000000 : ℚ), (-7227392855457/1000000000000 : ℚ), 7⟩,
    ⟨(31471117409/125000000000 : ℚ), (40883328447/2500000000 : ℚ), (-66577087093/15625000000 : ℚ), 6⟩,
    ⟨(254155631251/1000000000000 : ℚ), (52062418851/5000000000 : ℚ), (-68976455421/25000000000 : ℚ), 6⟩,
    ⟨(6424212387/25000000000 : ℚ), (35147001217/5000000000 : ℚ), (-236873895507/125000000000 : ℚ), 5⟩,
    ⟨(260180442539/1000000000000 : ℚ), (49305635453/10000000000 : ℚ), (-135259988887/100000000000 : ℚ), 5⟩,
    ⟨(263760539623/1000000000000 : ℚ), (17725397411/5000000000 : ℚ), (-989844685253/1000000000000 : ℚ), 5⟩,
    ⟨(133837154219/500000000000 : ℚ), (25863524611/10000000000 : ℚ), (-735227801531/1000000000000 : ℚ), 4⟩,
    ⟨(271884057253/1000000000000 : ℚ), (9489316499/5000000000 : ℚ), (-549579429381/1000000000000 : ℚ), 4⟩,
    ⟨(69087310971/250000000000 : ℚ), (3470933141/2500000000 : ℚ), (-102496023999/250000000000 : ℚ), 4⟩,
    ⟨(8782089567/31250000000 : ℚ), (2003724409/2000000000 : ℚ), (-151157034943/500000000000 : ℚ), 4⟩,
    ⟨(285871875973/1000000000000 : ℚ), (3512244219/5000000000 : ℚ), (-54369703519/250000000000 : ℚ), 4⟩,
    ⟨(145418806639/500000000000 : ℚ), (4663326037/10000000000 : ℚ), (-3735446627/25000000000 : ℚ), 3⟩,
    ⟨(147938127647/500000000000 : ℚ), (2772564769/10000000000 : ℚ), (-46984451693/500000000000 : ℚ), 3⟩,
    ⟨(37617409643/125000000000 : ℚ), (1238373581/10000000000 : ℚ), (-9640114449/200000000000 : ℚ), 3⟩,
    ⟨(7649447979/25000000000 : ℚ), (-4129869/2000000000 : ℚ), (-10004099233/1000000000000 : ℚ), 3⟩,
    ⟨(62188731293/200000000000 : ℚ), (-1063769513/10000000000 : ℚ), (22164978691/1000000000000 : ℚ), 3⟩,
    ⟨(157894333147/500000000000 : ℚ), (-1934798483/10000000000 : ℚ), (24727453819/500000000000 : ℚ), 3⟩,
    ⟨(320466288553/1000000000000 : ℚ), (-2666541739/10000000000 : ℚ), (72729932797/1000000000000 : ℚ), 3⟩,
    ⟨(64986295037/200000000000 : ℚ), (-1641912733/5000000000 : ℚ), (9264694177/100000000000 : ℚ), 3⟩,
    ⟨(41142653/125000000 : ℚ), (-3805597303/10000000000 : ℚ), (1714201661/15625000000 : ℚ), 3⟩,
    ⟨(66610998563/200000000000 : ℚ), (-4246410349/10000000000 : ℚ), (12430286041/100000000000 : ℚ), 3⟩,
    ⟨(336635089899/1000000000000 : ℚ), (-4617488017/10000000000 : ℚ), (136727359487/1000000000000 : ℚ), 3⟩,
    ⟨(169923518479/500000000000 : ℚ), (-4927498603/10000000000 : ℚ), (147212646161/1000000000000 : ℚ), 3⟩,
    ⟨(342659901187/1000000000000 : ℚ), (-2591562509/5000000000 : ℚ), (77967828747/500000000000 : ℚ), 3⟩,
    ⟨(69009318633/200000000000 : ℚ), (-1347371779/2500000000 : ℚ), (6521252063/40000000000 : ℚ), 3⟩,
    ⟨(69396825549/200000000000 : ℚ), (-5550455687/10000000000 : ℚ), (84300485027/500000000000 : ℚ), 3⟩,
    ⟨(348453845409/1000000000000 : ℚ), (-1417221187/2500000000 : ℚ), (172718935657/1000000000000 : ℚ), 3⟩,
    ⟨(87360397993/250000000000 : ℚ), (-2873390183/5000000000 : ℚ), (43859268623/250000000000 : ℚ), 3⟩,
    ⟨(69987570979/200000000000 : ℚ), (-1157083653/2000000000 : ℚ), (88394100377/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-115804673/200000000 : ℚ), (44239181073/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (194825547417/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control627.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control627.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate627

namespace DiagonalRamsey.JointInheritedCertificate638
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(248554026759/1000000000000 : ℚ), (919394468917/625000000 : ℚ), (-183076340251539/500000000000 : ℚ), 13⟩,
    ⟨(249042222467/1000000000000 : ℚ), (1610495031943/10000000000 : ℚ), (-40433752580867/1000000000000 : ℚ), 9⟩,
    ⟨(62503478073/250000000000 : ℚ), (565547713243/10000000000 : ℚ), (-7188036409919/500000000000 : ℚ), 8⟩,
    ⟨(251459738329/1000000000000 : ℚ), (34879366773/1250000000 : ℚ), (-71967060303/10000000000 : ℚ), 7⟩,
    ⟨(253365776483/1000000000000 : ℚ), (80951658381/5000000000 : ℚ), (-424199904647/100000000000 : ℚ), 6⟩,
    ⟨(63928417641/250000000000 : ℚ), (51549028109/5000000000 : ℚ), (-686520458011/250000000000 : ℚ), 6⟩,
    ⟨(25848080907/100000000000 : ℚ), (69603427557/10000000000 : ℚ), (-377090239209/200000000000 : ℚ), 5⟩,
    ⟨(8176266967/31250000000 : ℚ), (48818608531/10000000000 : ℚ), (-672612926347/500000000000 : ℚ), 5⟩,
    ⟨(265162442221/1000000000000 : ℚ), (17547286697/5000000000 : ℚ), (-196785644391/200000000000 : ℚ), 5⟩,
    ⟨(269012589087/1000000000000 : ℚ), (3199406871/1250000000 : ℚ), (-182585854261/250000000000 : ℚ), 4⟩,
    ⟨(273153904521/1000000000000 : ℚ), (1877165923/1000000000 : ℚ), (-21818259303/40000000000 : ℚ), 4⟩,
    ⟨(277546505393/1000000000000 : ℚ), (13720752999/10000000000 : ℚ), (-203221202251/500000000000 : ℚ), 4⟩,
    ⟨(141074044277/500000000000 : ℚ), (2472003581/2500000000 : ℚ), (-299229071969/1000000000000 : ℚ), 4⟩,
    ⟨(71728584561/250000000000 : ℚ), (216194363/312500000 : ℚ), (-214761580527/1000000000000 : ℚ), 4⟩,
    ⟨(291799352873/1000000000000 : ℚ), (2287853591/5000000000 : ℚ), (-147003064073/1000000000000 : ℚ), 4⟩,
    ⟨(296756087079/1000000000000 : ℚ), (2699479567/10000000000 : ℚ), (-9180725637/100000000000 : ℚ), 3⟩,
    ⟨(150868402401/500000000000 : ℚ), (73549057/625000000 : ℚ), (-23126981799/500000000000 : ℚ), 3⟩,
    ⟨(4792086547/15625000000 : ℚ), (-14604731/2000000000 : ℚ), (-4121157899/500000000000 : ℚ), 3⟩,
    ⟨(311578553637/1000000000000 : ℚ), (-1108674649/10000000000 : ℚ), (23766472189/1000000000000 : ℚ), 3⟩,
    ⟨(316344803327/1000000000000 : ℚ), (-1973591967/10000000000 : ℚ), (50916514453/1000000000000 : ℚ), 3⟩,
    ⟨(40118298311/125000000000 : ℚ), (-1350148707/5000000000 : ℚ), (74069014583/1000000000000 : ℚ), 3⟩,
    ⟨(2033368671/6250000000 : ℚ), (-82835173/250000000 : ℚ), (23469648947/250000000000 : ℚ), 3⟩,
    ⟨(164740151397/500000000000 : ℚ), (-1915855189/5000000000 : ℚ), (27711631111/250000000000 : ℚ), 3⟩,
    ⟨(333330449659/1000000000000 : ℚ), (-533705143/1250000000 : ℚ), (15669816701/125000000000 : ℚ), 3⟩,
    ⟨(336852348937/1000000000000 : ℚ), (-4638330759/10000000000 : ℚ), (137712173193/1000000000000 : ℚ), 3⟩,
    ⟨(34001208281/100000000000 : ℚ), (-4946376401/10000000000 : ℚ), (148136898813/1000000000000 : ℚ), 3⟩,
    ⟨(342779221317/1000000000000 : ℚ), (-1300101401/2500000000 : ℚ), (78404512231/500000000000 : ℚ), 3⟩,
    ⟨(172563557699/500000000000 : ℚ), (-2702747549/5000000000 : ℚ), (40965740833/250000000000 : ℚ), 3⟩,
    ⟨(21689572097/62500000000 : ℚ), (-5565482369/10000000000 : ℚ), (42349928949/250000000000 : ℚ), 3⟩,
    ⟨(348478979589/1000000000000 : ℚ), (-5683196301/10000000000 : ℚ), (173493252407/1000000000000 : ℚ), 3⟩,
    ⟨(349450669413/1000000000000 : ℚ), (-5760624891/10000000000 : ℚ), (176195227141/1000000000000 : ℚ), 3⟩,
    ⟨(349938865121/1000000000000 : ℚ), (-1159806431/2000000000 : ℚ), (88769153869/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1450954711/2500000000 : ℚ), (88852913611/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (39917288299/100000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control638.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control638.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate638

namespace DiagonalRamsey.JointInheritedCertificate654
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(175766997143/1000000000000 : ℚ), (13286181571/39062500 : ℚ), (-7506601466757/125000000000 : ℚ), 11⟩,
    ⟨(88594960509/500000000000 : ℚ), (35915549329/1000000000 : ℚ), (-6502833561701/1000000000000 : ℚ), 8⟩,
    ⟨(179981086601/1000000000000 : ℚ), (118617502763/10000000000 : ℚ), (-2218165744863/1000000000000 : ℚ), 6⟩,
    ⟨(184033230963/1000000000000 : ℚ), (26777737411/5000000000 : ℚ), (-1036863995819/1000000000000 : ℚ), 5⟩,
    ⟨(189190632471/1000000000000 : ℚ), (27398621913/10000000000 : ℚ), (-549834931591/1000000000000 : ℚ), 5⟩,
    ⟨(48813773769/250000000000 : ℚ), (3625276043/2500000000 : ℚ), (-18900534833/62500000000 : ℚ), 4⟩,
    ⟨(2524919561/12500000000 : ℚ), (1820583113/2500000000 : ℚ), (-7963631269/50000000000 : ℚ), 4⟩,
    ⟨(20914708627/100000000000 : ℚ), (359146141/1250000000 : ℚ), (-68763121317/1000000000000 : ℚ), 4⟩,
    ⟨(54110188357/250000000000 : ℚ), (1470529/5000000000 : ℚ), (-775643439/100000000000 : ℚ), 3⟩,
    ⟨(223594274817/1000000000000 : ℚ), (-1955070189/10000000000 : ℚ), (275667739/7812500000 : ℚ), 3⟩,
    ⟨(115166372311/500000000000 : ℚ), (-1667233263/5000000000 : ℚ), (13314566223/200000000000 : ℚ), 3⟩,
    ⟨(236397207227/1000000000000 : ℚ), (-4322619651/10000000000 : ℚ), (44811453763/500000000000 : ℚ), 3⟩,
    ⟨(120777304367/500000000000 : ℚ), (-314283539/625000000 : ℚ), (13311010813/125000000000 : ℚ), 3⟩,
    ⟨(245606753097/1000000000000 : ℚ), (-2758357049/5000000000 : ℚ), (2959434943/25000000000 : ℚ), 3⟩,
    ⟨(6209947967/25000000000 : ℚ), (-45508043/78125000 : ℚ), (31498093571/250000000000 : ℚ), 3⟩,
    ⟨(49964168511/200000000000 : ℚ), (-746812859/1250000000 : ℚ), (129715837643/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2996489/5000000 : ℚ), (26035510047/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (29900338073/62500000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control654.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control654.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate654

namespace DiagonalRamsey.JointInheritedCertificate655
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62573098829/250000000000 : ℚ), (727616565141/500000000 : ℚ), (-22796344275267/62500000000 : ℚ), 13⟩,
    ⟨(250772225349/1000000000000 : ℚ), (796724566869/5000000000 : ℚ), (-20138044263899/500000000000 : ℚ), 9⟩,
    ⟨(251727264389/1000000000000 : ℚ), (559672169431/10000000000 : ℚ), (-1789836928129/125000000000 : ℚ), 8⟩,
    ⟨(31643539361/125000000000 : ℚ), (276189789949/10000000000 : ℚ), (-7166966498169/1000000000000 : ℚ), 7⟩,
    ⟨(255021691353/1000000000000 : ℚ), (160279047513/10000000000 : ℚ), (-211182101249/50000000000 : ℚ), 6⟩,
    ⟨(51465870429/200000000000 : ℚ), (51037775501/5000000000 : ℚ), (-2733496196513/1000000000000 : ℚ), 6⟩,
    ⟨(260049073229/1000000000000 : ℚ), (68916287401/10000000000 : ℚ), (-1876194986209/1000000000000 : ℚ), 5⟩,
    ⟨(263154662203/1000000000000 : ℚ), (24167240781/5000000000 : ℚ), (-1338068848139/1000000000000 : ℚ), 5⟩,
    ⟨(266616210549/1000000000000 : ℚ), (17370443939/5000000000 : ℚ), (-489092284909/500000000000 : ℚ), 5⟩,
    ⟨(270400381663/1000000000000 : ℚ), (25329259647/10000000000 : ℚ), (-725601182053/1000000000000 : ℚ), 4⟩,
    ⟨(27447073191/100000000000 : ℚ), (4641690851/2500000000 : ℚ), (-541453673323/1000000000000 : ℚ), 4⟩,
    ⟨(278788061591/1000000000000 : ℚ), (13559698623/10000000000 : ℚ), (-100751152967/250000000000 : ℚ), 4⟩,
    ⟨(14165539623/50000000000 : ℚ), (9759209517/10000000000 : ℚ), (-296235730523/1000000000000 : ℚ), 4⟩,
    ⟨(287995368149/1000000000000 : ℚ), (6813653587/10000000000 : ℚ), (-53031652873/250000000000 : ℚ), 4⟩,
    ⟨(292796673631/1000000000000 : ℚ), (4489707713/10000000000 : ℚ), (-144663220893/1000000000000 : ℚ), 4⟩,
    ⟨(297668469711/1000000000000 : ℚ), (82123231/312500000 : ℚ), (-89714819291/1000000000000 : ℚ), 4⟩,
    ⟨(37820479791/125000000000 : ℚ), (558342707/5000000000 : ℚ), (-22186002063/500000000000 : ℚ), 3⟩,
    ⟨(38429454301/125000000000 : ℚ), (-61979987/5000000000 : ℚ), (-654153947/100000000000 : ℚ), 3⟩,
    ⟨(31223693989/100000000000 : ℚ), (-1152185649/10000000000 : ℚ), (6327469831/250000000000 : ℚ), 3⟩,
    ⟨(158460757789/500000000000 : ℚ), (-2011028891/10000000000 : ℚ), (52322382721/1000000000000 : ℚ), 3⟩,
    ⟨(20090265403/62500000000 : ℚ), (-2732728659/10000000000 : ℚ), (7535424581/100000000000 : ℚ), 3⟩,
    ⟨(325761576129/1000000000000 : ℚ), (-668338263/2000000000 : ℚ), (1188223939/12500000000 : ℚ), 3⟩,
    ⟨(2638655411/8000000000 : ℚ), (-3856549589/10000000000 : ℚ), (6995813801/62500000000 : ℚ), 3⟩,
    ⟨(33361609749/100000000000 : ℚ), (-4291617601/10000000000 : ℚ), (126364050549/1000000000000 : ℚ), 3⟩,
    ⟨(84269411459/250000000000 : ℚ), (-4657935461/10000000000 : ℚ), (34661898423/250000000000 : ℚ), 3⟩,
    ⟨(34018323481/100000000000 : ℚ), (-2482014803/5000000000 : ℚ), (149012355047/1000000000000 : ℚ), 3⟩,
    ⟨(171451477947/500000000000 : ℚ), (-5216472527/10000000000 : ℚ), (39408513943/250000000000 : ℚ), 3⟩,
    ⟨(172605308343/500000000000 : ℚ), (-1355074527/2500000000 : ℚ), (164646638421/1000000000000 : ℚ), 3⟩,
    ⟨(347083993151/1000000000000 : ℚ), (-5579310761/10000000000 : ℚ), (42537682903/250000000000 : ℚ), 3⟩,
    ⟨(6970100873/20000000000 : ℚ), (-2848157209/5000000000 : ℚ), (43555004707/250000000000 : ℚ), 3⟩,
    ⟨(34946008269/100000000000 : ℚ), (-288663957/500000000 : ℚ), (17690594297/100000000000 : ℚ), 3⟩,
    ⟨(349939912723/1000000000000 : ℚ), (-5811457327/10000000000 : ℚ), (178241032857/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2908107757/5000000000 : ℚ), (178407555093/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (204368412017/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control655.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control655.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate655

namespace DiagonalRamsey.JointInheritedCertificate683
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252027103761/1000000000000 : ℚ), (359514955429/250000000 : ℚ), (-181461575258061/500000000000 : ℚ), 13⟩,
    ⟨(252498585733/1000000000000 : ℚ), (1574878605991/10000000000 : ℚ), (-40073173210297/1000000000000 : ℚ), 10⟩,
    ⟨(126718504523/500000000000 : ℚ), (553250240087/10000000000 : ℚ), (-17806277367/1250000000 : ℚ), 8⟩,
    ⟨(63708334043/250000000000 : ℚ), (273067738941/10000000000 : ℚ), (-3564454146921/500000000000 : ℚ), 7⟩,
    ⟨(128337059859/500000000000 : ℚ), (79244363139/5000000000 : ℚ), (-2100124622759/500000000000 : ℚ), 6⟩,
    ⟨(25894163193/100000000000 : ℚ), (78861769/7812500 : ℚ), (-543507317271/200000000000 : ℚ), 6⟩,
    ⟨(65403508857/250000000000 : ℚ), (68151369569/10000000000 : ℚ), (-932260254419/500000000000 : ℚ), 5⟩,
    ⟨(52933118701/200000000000 : ℚ), (5974092089/1250000000 : ℚ), (-1329093085651/1000000000000 : ℚ), 5⟩,
    ⟨(268066917987/1000000000000 : ℚ), (34343013083/10000000000 : ℚ), (-971022665141/1000000000000 : ℚ), 5⟩,
    ⟨(135892626131/500000000000 : ℚ), (6257111873/2500000000 : ℚ), (-719721315129/1000000000000 : ℚ), 5⟩,
    ⟨(275784786737/1000000000000 : ℚ), (18333833339/10000000000 : ℚ), (-4292138489/8000000000 : ℚ), 4⟩,
    ⟨(280027003709/1000000000000 : ℚ), (2675132263/2000000000 : ℚ), (-199393080549/500000000000 : ℚ), 4⟩,
    ⟨(28447104831/100000000000 : ℚ), (961127181/1000000000 : ℚ), (-292579077881/1000000000000 : ℚ), 4⟩,
    ⟨(7226853049/25000000000 : ℚ), (418309069/625000000 : ℚ), (-104460098737/500000000000 : ℚ), 4⟩,
    ⟨(18361993409/62500000000 : ℚ), (219496251/500000000 : ℚ), (-141825036609/1000000000000 : ℚ), 4⟩,
    ⟨(298578931333/1000000000000 : ℚ), (1272254693/5000000000 : ℚ), (-87183005789/1000000000000 : ℚ), 4⟩,
    ⟨(303389130547/1000000000000 : ℚ), (1046210957/10000000000 : ℚ), (-42098759593/1000000000000 : ℚ), 3⟩,
    ⟨(38522020917/125000000000 : ℚ), (-1472243/80000000 : ℚ), (-561132091/125000000000 : ℚ), 3⟩,
    ⟨(3911174249/12500000000 : ℚ), (-1203812467/10000000000 : ℚ), (543443733/20000000000 : ℚ), 3⟩,
    ⟨(317497013571/1000000000000 : ℚ), (-256967681/1250000000 : ℚ), (54019811453/1000000000000 : ℚ), 3⟩,
    ⟨(321941058171/1000000000000 : ℚ), (-346467443/1250000000 : ℚ), (1922704223/25000000000 : ℚ), 3⟩,
    ⟨(326183275143/1000000000000 : ℚ), (-421997181/1250000000 : ℚ), (24121690091/250000000000 : ℚ), 3⟩,
    ⟨(165091404809/500000000000 : ℚ), (-2429319/6250000 : ℚ), (14156622343/125000000000 : ℚ), 3⟩,
    ⟨(333901143893/1000000000000 : ℚ), (-172748693/400000000 : ℚ), (127589592267/1000000000000 : ℚ), 3⟩,
    ⟨(2698419747/8000000000 : ℚ), (-4682334287/10000000000 : ℚ), (4368495397/31250000000 : ℚ), 3⟩,
    ⟨(85088506613/250000000000 : ℚ), (-623275873/1250000000 : ℚ), (75043706747/500000000000 : ℚ), 3⟩,
    ⟨(6860528599/20000000000 : ℚ), (-40912851/78125000 : ℚ), (31730232481/200000000000 : ℚ), 3⟩,
    ⟨(172646971081/500000000000 : ℚ), (-5439232901/10000000000 : ℚ), (5175511889/31250000000 : ℚ), 3⟩,
    ⟨(86783681427/250000000000 : ℚ), (-5597137377/10000000000 : ℚ), (17108317513/100000000000 : ℚ), 3⟩,
    ⟨(174265526417/500000000000 : ℚ), (-2856666823/5000000000 : ℚ), (175124828607/1000000000000 : ℚ), 3⟩,
    ⟨(349469476147/1000000000000 : ℚ), (-2894885593/5000000000 : ℚ), (11112030663/62500000000 : ℚ), 3⟩,
    ⟨(349940958119/1000000000000 : ℚ), (-5827689061/10000000000 : ℚ), (179118497213/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2916207431/5000000000 : ℚ), (22410485787/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (104594529787/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control683.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control683.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate683

namespace DiagonalRamsey.JointInheritedCertificate698
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(178408754879/1000000000000 : ℚ), (3324974683689/10000000000 : ℚ), (-59575056313329/1000000000000 : ℚ), 11⟩,
    ⟨(179781040627/1000000000000 : ℚ), (2811022883/80000000 : ℚ), (-3224136452483/500000000000 : ℚ), 8⟩,
    ⟨(182472875953/1000000000000 : ℚ), (116120996283/10000000000 : ℚ), (-1098750758683/500000000000 : ℚ), 6⟩,
    ⟨(186380815133/1000000000000 : ℚ), (52430571031/10000000000 : ℚ), (-64099385021/62500000000 : ℚ), 5⟩,
    ⟨(191354678257/1000000000000 : ℚ), (13398483757/5000000000 : ℚ), (-135620533581/250000000000 : ℚ), 5⟩,
    ⟨(39440664511/200000000000 : ℚ), (1414248827/1000000000 : ℚ), (-37137293123/125000000000 : ℚ), 4⟩,
    ⟨(101850993953/500000000000 : ℚ), (7051594141/10000000000 : ℚ), (-77596266393/500000000000 : ℚ), 4⟩,
    ⟨(52650233561/250000000000 : ℚ), (1358039167/5000000000 : ℚ), (-16376138983/250000000000 : ℚ), 4⟩,
    ⟨(54408759733/250000000000 : ℚ), (-21729653/2000000000 : ℚ), (-2544205153/500000000000 : ℚ), 4⟩,
    ⟨(224533985271/1000000000000 : ℚ), (-1018487179/5000000000 : ℚ), (37508087087/1000000000000 : ℚ), 3⟩,
    ⟨(231032650621/1000000000000 : ℚ), (-849060403/2500000000 : ℚ), (68451051693/1000000000000 : ℚ), 3⟩,
    ⟨(236881294919/1000000000000 : ℚ), (-1092614073/2500000000 : ℚ), (5702127409/62500000000 : ℚ), 3⟩,
    ⟨(241855158043/1000000000000 : ℚ), (-5066722627/10000000000 : ℚ), (53948069789/500000000000 : ℚ), 3⟩,
    ⟨(30720387153/125000000000 : ℚ), (-2774206839/5000000000 : ℚ), (59819274201/500000000000 : ℚ), 3⟩,
    ⟨(248454932549/1000000000000 : ℚ), (-2926364307/5000000000 : ℚ), (127157984007/1000000000000 : ℚ), 3⟩,
    ⟨(124913609149/500000000000 : ℚ), (-6000293367/10000000000 : ℚ), (130834372721/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-376158381/625000000 : ℚ), (16411279157/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (124877277307/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control698.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control698.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate698

namespace DiagonalRamsey.JointInheritedCertificate699
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(253829362463/1000000000000 : ℚ), (14208943039339/10000000000 : ℚ), (-18057154117533/50000000000 : ℚ), 13⟩,
    ⟨(7946630353/31250000000 : ℚ), (1556318196799/10000000000 : ℚ), (-4984315644857/125000000000 : ℚ), 10⟩,
    ⟨(12760666593/50000000000 : ℚ), (54683298749/1000000000 : ℚ), (-14172893800489/1000000000000 : ℚ), 8⟩,
    ⟨(2052671783/8000000000 : ℚ), (33743607233/1250000000 : ℚ), (-709164599341/100000000000 : ℚ), 7⟩,
    ⟨(258390894319/1000000000000 : ℚ), (15670094581/1000000000 : ℚ), (-83546885747/20000000000 : ℚ), 7⟩,
    ⟨(5212333891/20000000000 : ℚ), (24953197573/2500000000 : ℚ), (-540381843253/200000000000 : ℚ), 6⟩,
    ⟨(32904992237/125000000000 : ℚ), (16847116513/2500000000 : ℚ), (-231636144201/125000000000 : ℚ), 6⟩,
    ⟨(266235361089/1000000000000 : ℚ), (47252872247/10000000000 : ℚ), (-165038109843/125000000000 : ℚ), 5⟩,
    ⟨(269574116567/1000000000000 : ℚ), (4243365003/1250000000 : ℚ), (-192802300909/200000000000 : ℚ), 5⟩,
    ⟨(17076503143/62500000000 : ℚ), (24729339323/10000000000 : ℚ), (-713966680831/1000000000000 : ℚ), 5⟩,
    ⟨(277150011397/1000000000000 : ℚ), (9051271373/5000000000 : ℚ), (-16615246247/31250000000 : ℚ), 4⟩,
    ⟨(14065709537/50000000000 : ℚ), (6596603979/5000000000 : ℚ), (-197330576451/500000000000 : ℚ), 4⟩,
    ⟨(71419121249/250000000000 : ℚ), (2366217273/2500000000 : ℚ), (-72251427981/250000000000 : ℚ), 4⟩,
    ⟨(58038976577/200000000000 : ℚ), (3286863899/5000000000 : ℚ), (-205789292227/1000000000000 : ℚ), 4⟩,
    ⟨(147412934883/500000000000 : ℚ), (536449253/1250000000 : ℚ), (-34764080937/250000000000 : ℚ), 4⟩,
    ⟨(18720302919/62500000000 : ℚ), (615622861/2500000000 : ℚ), (-21178982093/250000000000 : ℚ), 4⟩,
    ⟨(152123279991/500000000000 : ℚ), (488560239/5000000000 : ℚ), (-39886508217/1000000000000 : ℚ), 4⟩,
    ⟨(308945536919/1000000000000 : ℚ), (-242745549/10000000000 : ℚ), (-77956027/31250000000 : ℚ), 3⟩,
    ⟨(313576523801/1000000000000 : ℚ), (-250821929/2000000000 : ℚ), (28978845627/1000000000000 : ℚ), 3⟩,
    ⟨(31809492169/100000000000 : ℚ), (-2099146949/10000000000 : ℚ), (13915870593/250000000000 : ℚ), 3⟩,
    ⟨(64491443189/200000000000 : ℚ), (-2809463127/10000000000 : ℚ), (4900614977/62500000000 : ℚ), 3⟩,
    ⟨(326621395289/1000000000000 : ℚ), (-3408993389/10000000000 : ℚ), (19572909489/200000000000 : ℚ), 3⟩,
    ⟨(165273678199/500000000000 : ℚ), (-3916015691/10000000000 : ℚ), (57261410317/500000000000 : ℚ), 3⟩,
    ⟨(334197290119/1000000000000 : ℚ), (-271535873/625000000 : ℚ), (128765754979/1000000000000 : ℚ), 3⟩,
    ⟨(337536045597/1000000000000 : ℚ), (-941100091/2000000000 : ℚ), (14088730367/100000000000 : ℚ), 3⟩,
    ⟨(34053146879/100000000000 : ℚ), (-625895039/1250000000 : ℚ), (151114100323/1000000000000 : ℚ), 3⟩,
    ⟨(42894339017/125000000000 : ℚ), (-525600027/1000000000 : ℚ), (79810112979/500000000000 : ℚ), 3⟩,
    ⟨(345380512367/1000000000000 : ℚ), (-2728478091/5000000000 : ℚ), (83269160807/500000000000 : ℚ), 3⟩,
    ⟨(347187433811/1000000000000 : ℚ), (-1403439183/2500000000 : ℚ), (8598399553/50000000000 : ℚ), 3⟩,
    ⟨(174279037413/500000000000 : ℚ), (-2864574347/5000000000 : ℚ), (175982129067/1000000000000 : ℚ), 3⟩,
    ⟨(34947923539/100000000000 : ℚ), (-5805061053/10000000000 : ℚ), (89315801059/500000000000 : ℚ), 3⟩,
    ⟨(349942044223/1000000000000 : ℚ), (-5842719601/10000000000 : ℚ), (43932754/244140625 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2923706569/5000000000 : ℚ), (180112820577/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (53507812251/125000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control699.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control699.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate699

namespace DiagonalRamsey.JointInheritedCertificate713
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(179770977809/1000000000000 : ℚ), (3284428775767/10000000000 : ℚ), (-741140846573/12500000000 : ℚ), 11⟩,
    ⟨(181117151997/1000000000000 : ℚ), (173612913823/5000000000 : ℚ), (-1604000236087/250000000000 : ℚ), 8⟩,
    ⟨(36751553531/200000000000 : ℚ), (11478051403/1000000000 : ℚ), (-546342976841/250000000000 : ℚ), 6⟩,
    ⟨(187591347403/1000000000000 : ℚ), (12955714557/2500000000 : ℚ), (-1019036332161/1000000000000 : ℚ), 5⟩,
    ⟨(192470568921/1000000000000 : ℚ), (13235032001/5000000000 : ℚ), (-8410181681/15625000000 : ℚ), 5⟩,
    ⟨(3096998851/15625000000 : ℚ), (13946679741/10000000000 : ℚ), (-294072990489/1000000000000 : ℚ), 4⟩,
    ⟨(204582936597/1000000000000 : ℚ), (6925111089/10000000000 : ℚ), (-30577594551/200000000000 : ℚ), 4⟩,
    ⟨(105675305629/500000000000 : ℚ), (2629694861/10000000000 : ℚ), (-15919220759/250000000000 : ℚ), 4⟩,
    ⟨(218250872503/1000000000000 : ℚ), (-85089671/5000000000 : ℚ), (-1799904243/500000000000 : ℚ), 4⟩,
    ⟨(225018547163/1000000000000 : ℚ), (-2082263307/10000000000 : ℚ), (38743816963/1000000000000 : ℚ), 3⟩,
    ⟨(231393557297/1000000000000 : ℚ), (-1715255513/5000000000 : ℚ), (6949330031/100000000000 : ℚ), 3⟩,
    ⟨(237130914839/1000000000000 : ℚ), (-1099274313/2500000000 : ℚ), (46063792449/500000000000 : ℚ), 3⟩,
    ⟨(242010136357/1000000000000 : ℚ), (-1272021321/2500000000 : ℚ), (108677439319/1000000000000 : ℚ), 3⟩,
    ⟨(49168743221/200000000000 : ℚ), (-222649247/400000000 : ℚ), (120339093043/1000000000000 : ℚ), 3⟩,
    ⟨(248484331763/1000000000000 : ℚ), (-1173672181/2000000000 : ℚ), (127806205267/1000000000000 : ℚ), 3⟩,
    ⟨(249830505951/1000000000000 : ℚ), (-375930217/625000000 : ℚ), (3286421747/25000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6032996227/10000000000 : ℚ), (2061086487/15625000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (127531412243/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control713.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control713.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate713

namespace DiagonalRamsey.JointInheritedCertificate714
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43484575101/200000000000 : ℚ), (3378983986283/10000000000 : ℚ), (-73766057269969/1000000000000 : ℚ), 11⟩,
    ⟨(219005742389/1000000000000 : ℚ), (357534402253/10000000000 : ℚ), (-1996168128879/250000000000 : ℚ), 8⟩,
    ⟨(222110647471/1000000000000 : ℚ), (59178169737/5000000000 : ℚ), (-136077744423/50000000000 : ℚ), 6⟩,
    ⟨(226618270989/1000000000000 : ℚ), (53552214201/10000000000 : ℚ), (-1270760452073/1000000000000 : ℚ), 5⟩,
    ⟨(232355387501/1000000000000 : ℚ), (27448434327/10000000000 : ℚ), (-134583946751/200000000000 : ℚ), 5⟩,
    ⟨(119550761417/500000000000 : ℚ), (727677637/500000000 : ℚ), (-92374569799/250000000000 : ℚ), 4⟩,
    ⟨(246597426793/1000000000000 : ℚ), (7326344919/10000000000 : ℚ), (-97129958639/500000000000 : ℚ), 4⟩,
    ⟨(254555035991/1000000000000 : ℚ), (181817083/625000000 : ℚ), (-83718184227/1000000000000 : ℚ), 4⟩,
    ⟨(26266854397/100000000000 : ℚ), (33940157/10000000000 : ℚ), (-47209893/5000000000 : ℚ), 4⟩,
    ⟨(16914134573/62500000000 : ℚ), (-1925751393/10000000000 : ℚ), (42770474143/1000000000000 : ℚ), 3⟩,
    ⟨(278122057127/1000000000000 : ℚ), (-330447457/1000000000 : ℚ), (40288404847/500000000000 : ℚ), 3⟩,
    ⟨(14243409623/50000000000 : ℚ), (-4290616571/10000000000 : ℚ), (108325086977/1000000000000 : ℚ), 3⟩,
    ⟨(72651327243/250000000000 : ℚ), (-998811191/2000000000 : ℚ), (128560549147/1000000000000 : ℚ), 3⟩,
    ⟨(29511293249/100000000000 : ℚ), (-219197123/400000000 : ℚ), (142787801909/1000000000000 : ℚ), 3⟩,
    ⟨(74554459393/250000000000 : ℚ), (-5786521317/10000000000 : ℚ), (15188281909/100000000000 : ℚ), 3⟩,
    ⟨(37475088057/125000000000 : ℚ), (-5935084537/10000000000 : ℚ), (3126498637/20000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-595344377/1000000000 : ℚ), (78437762873/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (118519932437/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control714.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control714.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate714

namespace DiagonalRamsey.JointInheritedCertificate715
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10225285201/40000000000 : ℚ), (3505717883719/2500000000 : ℚ), (-358932945286459/1000000000000 : ℚ), 13⟩,
    ⟨(256086263271/1000000000000 : ℚ), (1536159547017/10000000000 : ℚ), (-39628085823843/1000000000000 : ℚ), 10⟩,
    ⟨(256990156211/1000000000000 : ℚ), (539842919049/10000000000 : ℚ), (-7041778422083/500000000000 : ℚ), 8⟩,
    ⟨(258335103863/1000000000000 : ℚ), (33317454559/1250000000 : ℚ), (-7045600559401/1000000000000 : ℚ), 7⟩,
    ⟨(65027038411/250000000000 : ℚ), (77369513539/5000000000 : ℚ), (-4149123528853/1000000000000 : ℚ), 7⟩,
    ⟨(262292230117/1000000000000 : ℚ), (19713430799/2000000000 : ℚ), (-2682721126191/1000000000000 : ℚ), 6⟩,
    ⟨(264866299431/1000000000000 : ℚ), (66543958999/10000000000 : ℚ), (-1839106394461/1000000000000 : ℚ), 6⟩,
    ⟨(267805571891/1000000000000 : ℚ), (23326269303/5000000000 : ℚ), (-654799182283/500000000000 : ℚ), 5⟩,
    ⟨(271081740697/1000000000000 : ℚ), (33504436781/10000000000 : ℚ), (-59719059041/62500000000 : ℚ), 5⟩,
    ⟨(274663254553/1000000000000 : ℚ), (4878733727/2000000000 : ℚ), (-707012936189/1000000000000 : ℚ), 5⟩,
    ⟨(139257810761/500000000000 : ℚ), (4460450743/2500000000 : ℚ), (-525874790689/1000000000000 : ℚ), 4⟩,
    ⟨(70650435301/250000000000 : ℚ), (3246651087/2500000000 : ℚ), (-389713887113/1000000000000 : ℚ), 4⟩,
    ⟨(286882262033/1000000000000 : ℚ), (2324589041/2500000000 : ℚ), (-142366977091/500000000000 : ℚ), 4⟩,
    ⟨(291315960253/1000000000000 : ℚ), (804692441/1250000000 : ℚ), (-25257120009/125000000000 : ℚ), 4⟩,
    ⟨(295860136927/1000000000000 : ℚ), (2089384913/5000000000 : ℚ), (-135763344597/1000000000000 : ℚ), 4⟩,
    ⟨(6009420583/20000000000 : ℚ), (236796147/1000000000 : ℚ), (-81786824073/1000000000000 : ℚ), 4⟩,
    ⟨(76276057877/250000000000 : ℚ), (897119153/10000000000 : ℚ), (-3726299703/100000000000 : ℚ), 4⟩,
    ⟨(309715123731/1000000000000 : ℚ), (-19441627/625000000 : ℚ), (-1633203/12500000000 : ℚ), 4⟩,
    ⟨(62851860081/200000000000 : ℚ), (-656470031/5000000000 : ℚ), (7780083329/250000000000 : ℚ), 3⟩,
    ⟨(159346499313/500000000000 : ℚ), (-430040093/2000000000 : ℚ), (57613103031/1000000000000 : ℚ), 3⟩,
    ⟨(64594703891/200000000000 : ℚ), (-2854100881/10000000000 : ℚ), (2506040521/31250000000 : ℚ), 3⟩,
    ⟨(327059639137/1000000000000 : ℚ), (-3448313717/10000000000 : ℚ), (99503862619/1000000000000 : ℚ), 3⟩,
    ⟨(165456003053/500000000000 : ℚ), (-987729593/2500000000 : ℚ), (11603720427/100000000000 : ℚ), 3⟩,
    ⟨(334493519961/1000000000000 : ℚ), (-875161419/2000000000 : ℚ), (16271530767/125000000000 : ℚ), 3⟩,
    ⟨(337769688767/1000000000000 : ℚ), (-946739017/2000000000 : ℚ), (28440249149/200000000000 : ℚ), 3⟩,
    ⟨(85177240307/250000000000 : ℚ), (-314553531/625000000 : ℚ), (38087375149/250000000000 : ℚ), 3⟩,
    ⟨(171641515271/500000000000 : ℚ), (-5279666969/10000000000 : ℚ), (160790032129/1000000000000 : ℚ), 3⟩,
    ⟨(69093421403/200000000000 : ℚ), (-2739503437/5000000000 : ℚ), (167654640737/1000000000000 : ℚ), 3⟩,
    ⟨(86810039199/250000000000 : ℚ), (-2817281001/5000000000 : ℚ), (173042269161/1000000000000 : ℚ), 3⟩,
    ⟨(348585104447/1000000000000 : ℚ), (-2874523373/5000000000 : ℚ), (88512652523/500000000000 : ℚ), 3⟩,
    ⟨(349488997387/1000000000000 : ℚ), (-2912183407/5000000000 : ℚ), (2245678061/12500000000 : ℚ), 3⟩,
    ⟨(349943130633/1000000000000 : ℚ), (-1465433231/2500000000 : ℚ), (36192199323/200000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2933195039/5000000000 : ℚ), (36224796747/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (437825649811/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control715.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control715.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate715

namespace DiagonalRamsey.JointInheritedCertificate740
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(91295306143/500000000000 : ℚ), (639659002717/2000000000 : ℚ), (-29314286441981/500000000000 : ℚ), 11⟩,
    ⟨(36776547749/200000000000 : ℚ), (13534769883/400000000 : ℚ), (-3170445456297/500000000000 : ℚ), 8⟩,
    ⟨(186417335969/1000000000000 : ℚ), (22381188241/2000000000 : ℚ), (-2157311605091/1000000000000 : ℚ), 7⟩,
    ⟨(190097000807/1000000000000 : ℚ), (50512414153/10000000000 : ℚ), (-501996173919/500000000000 : ℚ), 6⟩,
    ⟨(194780325803/1000000000000 : ℚ), (12880756301/5000000000 : ℚ), (-264311162699/500000000000 : ℚ), 5⟩,
    ⟨(50071833351/250000000000 : ℚ), (6760212903/5000000000 : ℚ), (-143621521401/500000000000 : ℚ), 5⟩,
    ⟨(206406392397/1000000000000 : ℚ), (6648824983/10000000000 : ℚ), (-73861622189/500000000000 : ℚ), 4⟩,
    ⟨(8516094031/40000000000 : ℚ), (2440495691/10000000000 : ℚ), (-29802866661/500000000000 : ℚ), 4⟩,
    ⟨(109762786251/500000000000 : ℚ), (-152624853/5000000000 : ℚ), (-299400561/1000000000000 : ℚ), 4⟩,
    ⟨(176579321/781250000 : ℚ), (-2181899117/10000000000 : ℚ), (41474684311/1000000000000 : ℚ), 4⟩,
    ⟨(14508786867/62500000000 : ℚ), (-1753045633/5000000000 : ℚ), (71792167773/1000000000000 : ℚ), 4⟩,
    ⟨(237647597473/1000000000000 : ℚ), (-4456026171/10000000000 : ℚ), (47048471723/500000000000 : ℚ), 3⟩,
    ⟨(24233092247/100000000000 : ℚ), (-205419913/400000000 : ℚ), (55199800181/500000000000 : ℚ), 3⟩,
    ⟨(61502646827/250000000000 : ℚ), (-700739087/1250000000 : ℚ), (4875369607/40000000000 : ℚ), 3⟩,
    ⟨(248545184531/1000000000000 : ℚ), (-2951639539/5000000000 : ℚ), (6461851619/50000000000 : ℚ), 3⟩,
    ⟨(249837310991/1000000000000 : ℚ), (-188985327/312500000 : ℚ), (13283160009/100000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6065364357/10000000000 : ℚ), (133277302253/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (531489840613/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control740.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control740.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate740

namespace DiagonalRamsey.JointInheritedCertificate741
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(220806655009/1000000000000 : ℚ), (658563607121/2000000000 : ℚ), (-72987441095667/1000000000000 : ℚ), 11⟩,
    ⟨(222324660437/1000000000000 : ℚ), (174341053333/5000000000 : ℚ), (-7896569198077/1000000000000 : ℚ), 8⟩,
    ⟨(225302335197/1000000000000 : ℚ), (115488655203/10000000000 : ℚ), (-2688742271751/1000000000000 : ℚ), 7⟩,
    ⟨(57406312229/250000000000 : ℚ), (6531126333/1250000000 : ℚ), (-1253243033127/1000000000000 : ℚ), 6⟩,
    ⟨(47025454889/200000000000 : ℚ), (26746909329/10000000000 : ℚ), (-165440982493/250000000000 : ℚ), 5⟩,
    ⟨(241596972029/1000000000000 : ℚ), (2826779153/2000000000 : ℚ), (-361630325639/1000000000000 : ℚ), 5⟩,
    ⟨(124392857409/500000000000 : ℚ), (5644913/8000000 : ℚ), (-23543345691/125000000000 : ℚ), 4⟩,
    ⟨(256417243457/1000000000000 : ℚ), (2725424409/10000000000 : ℚ), (-79087887557/1000000000000 : ℚ), 4⟩,
    ⟨(264198282581/1000000000000 : ℚ), (-96089297/10000000000 : ℚ), (-5715064241/1000000000000 : ℚ), 4⟩,
    ⟨(271829811221/1000000000000 : ℚ), (-2020807963/10000000000 : ℚ), (45830439669/1000000000000 : ℚ), 4⟩,
    ⟨(279018554009/1000000000000 : ℚ), (-675175087/2000000000 : ℚ), (41565673773/500000000000 : ℚ), 4⟩,
    ⟨(285488251593/1000000000000 : ℚ), (-4345697559/10000000000 : ℚ), (11049443153/100000000000 : ℚ), 3⟩,
    ⟨(290990277123/1000000000000 : ℚ), (-5037881989/10000000000 : ℚ), (130441133051/1000000000000 : ℚ), 3⟩,
    ⟨(147656595421/500000000000 : ℚ), (-2758107897/5000000000 : ℚ), (72230866519/500000000000 : ℚ), 3⟩,
    ⟨(149145432801/500000000000 : ℚ), (-5818172143/10000000000 : ℚ), (76711674181/500000000000 : ℚ), 3⟩,
    ⟨(29980887103/100000000000 : ℚ), (-2982263361/5000000000 : ℚ), (19725002349/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2991307439/5000000000 : ℚ), (79171245249/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (247294607737/500000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control741.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control741.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate741

namespace DiagonalRamsey.JointInheritedCertificate762
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(184108786977/1000000000000 : ℚ), (3156196772037/10000000000 : ℚ), (-5833101333891/100000000000 : ℚ), 11⟩,
    ⟨(185371812539/1000000000000 : ℚ), (83512652781/2500000000 : ℚ), (-6307110824101/1000000000000 : ℚ), 8⟩,
    ⟨(187849326299/1000000000000 : ℚ), (55254776297/5000000000 : ℚ), (-2144656523129/1000000000000 : ℚ), 7⟩,
    ⟨(23930764849/125000000000 : ℚ), (49879105237/10000000000 : ℚ), (-997185644519/1000000000000 : ℚ), 6⟩,
    ⟨(1960239673/10000000000 : ℚ), (25421301107/10000000000 : ℚ), (-524252910189/1000000000000 : ℚ), 5⟩,
    ⟨(25175868459/125000000000 : ℚ), (2663472851/2000000000 : ℚ), (-142069022763/500000000000 : ℚ), 5⟩,
    ⟨(207388194991/1000000000000 : ℚ), (651843491/1000000000 : ℚ), (-36343614541/250000000000 : ℚ), 4⟩,
    ⟨(106868926639/500000000000 : ℚ), (588049727/2500000000 : ℚ), (-57757151961/1000000000000 : ℚ), 4⟩,
    ⟨(55052977181/250000000000 : ℚ), (-367439229/10000000000 : ℚ), (47745577/40000000000 : ℚ), 4⟩,
    ⟨(226561567011/1000000000000 : ℚ), (-2227022077/10000000000 : ℚ), (42702617803/1000000000000 : ℚ), 4⟩,
    ⟨(232542814331/1000000000000 : ℚ), (-14158539/40000000 : ℚ), (72817235767/1000000000000 : ℚ), 4⟩,
    ⟨(237925794703/1000000000000 : ℚ), (-2240776403/5000000000 : ℚ), (94966023367/1000000000000 : ℚ), 4⟩,
    ⟨(242503643211/1000000000000 : ℚ), (-5155476011/10000000000 : ℚ), (111150844303/1000000000000 : ℚ), 4⟩,
    ⟨(30762554463/125000000000 : ℚ), (-5622162847/10000000000 : ℚ), (24510126459/200000000000 : ℚ), 3⟩,
    ⟨(31072243683/125000000000 : ℚ), (-2958615181/5000000000 : ℚ), (64924200611/500000000000 : ℚ), 3⟩,
    ⟨(9993639001/40000000000 : ℚ), (-6060385019/10000000000 : ℚ), (16676987723/125000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6078084223/10000000000 : ℚ), (133858241069/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (542212908183/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control762.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control762.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate762

namespace DiagonalRamsey.JointInheritedCertificate763
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(222521644017/1000000000000 : ℚ), (162239370487/500000000 : ℚ), (-72473292608221/1000000000000 : ℚ), 11⟩,
    ⟨(224006775943/1000000000000 : ℚ), (42963945107/1250000000 : ℚ), (-7838643926503/1000000000000 : ℚ), 8⟩,
    ⟨(7091248969/31250000000 : ℚ), (3558202931/312500000 : ℚ), (-333417439553/125000000000 : ℚ), 7⟩,
    ⟨(14446829057/62500000000 : ℚ), (12875467889/2500000000 : ℚ), (-1241933204801/1000000000000 : ℚ), 6⟩,
    ⟨(23653214011/100000000000 : ℚ), (13170105027/5000000000 : ℚ), (-163660122947/250000000000 : ℚ), 5⟩,
    ⟨(242861731727/1000000000000 : ℚ), (6943978639/5000000000 : ℚ), (-356658774647/1000000000000 : ℚ), 5⟩,
    ⟨(49978959421/200000000000 : ℚ), (6896131113/10000000000 : ℚ), (-184643375241/1000000000000 : ℚ), 4⟩,
    ⟨(257361059487/1000000000000 : ℚ), (2615538877/10000000000 : ℚ), (-76206654047/1000000000000 : ℚ), 4⟩,
    ⟨(66243398649/250000000000 : ℚ), (-174749329/10000000000 : ℚ), (-851086059/250000000000 : ℚ), 4⟩,
    ⟨(136219928489/500000000000 : ℚ), (-1039514013/5000000000 : ℚ), (4772656601/100000000000 : ℚ), 4⟩,
    ⟨(69868230589/250000000000 : ℚ), (-342024621/1000000000 : ℚ), (1694362081/20000000000 : ℚ), 4⟩,
    ⟨(71450628493/250000000000 : ℚ), (-2190255519/5000000000 : ℚ), (111848680329/1000000000000 : ℚ), 4⟩,
    ⟨(29118538917/100000000000 : ℚ), (-316631737/625000000 : ℚ), (16452889767/125000000000 : ℚ), 3⟩,
    ⟨(11816587483/40000000000 : ℚ), (-5540032949/10000000000 : ℚ), (145521567377/1000000000000 : ℚ), 3⟩,
    ⟨(14916393907/50000000000 : ℚ), (-116785591/200000000 : ℚ), (154404846279/1000000000000 : ℚ), 3⟩,
    ⟨(149906505033/500000000000 : ℚ), (-1496086019/2500000000 : ℚ), (992145239/6250000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-750284241/1250000000 : ℚ), (39820241513/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (252471503963/500000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control763.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control763.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate763

namespace DiagonalRamsey.JointInheritedCertificate764
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71328563123/250000000000 : ℚ), (13728891762959/10000000000 : ℚ), (-49020114585329/125000000000 : ℚ), 13⟩,
    ⟨(142884957741/500000000000 : ℚ), (1504919784387/10000000000 : ℚ), (-43291040350759/1000000000000 : ℚ), 10⟩,
    ⟨(14333842659/50000000000 : ℚ), (529310035519/10000000000 : ℚ), (-3845336586599/250000000000 : ℚ), 9⟩,
    ⟨(144013165639/500000000000 : ℚ), (130785667449/5000000000 : ℚ), (-961476202719/125000000000 : ℚ), 8⟩,
    ⟨(144902676783/500000000000 : ℚ), (75991625877/5000000000 : ℚ), (-4527244856861/1000000000000 : ℚ), 7⟩,
    ⟨(58399357417/200000000000 : ℚ), (96883881377/10000000000 : ℚ), (-1462596382187/500000000000 : ℚ), 6⟩,
    ⟨(147289763567/500000000000 : ℚ), (32723298551/5000000000 : ℚ), (-1001808708883/500000000000 : ℚ), 6⟩,
    ⟨(148764350257/500000000000 : ℚ), (4590187369/1000000000 : ℚ), (-89078471661/62500000000 : ℚ), 6⟩,
    ⟨(300815905073/1000000000000 : ℚ), (32971042347/10000000000 : ℚ), (-1038572108537/1000000000000 : ℚ), 5⟩,
    ⟨(152204741617/500000000000 : ℚ), (187519933/78125000 : ℚ), (-383644159159/500000000000 : ℚ), 5⟩,
    ⟨(493239723/1600000000 : ℚ), (17547243841/10000000000 : ℚ), (-113922697279/200000000000 : ℚ), 5⟩,
    ⟨(312374710623/1000000000000 : ℚ), (127596277/100000000 : ℚ), (-210548543677/500000000000 : ℚ), 5⟩,
    ⟨(158334825179/500000000000 : ℚ), (9120029107/10000000000 : ℚ), (-306663139663/1000000000000 : ℚ), 4⟩,
    ⟨(321118283461/1000000000000 : ℚ), (6295179683/10000000000 : ℚ), (-216609029883/1000000000000 : ℚ), 4⟩,
    ⟨(81419441791/250000000000 : ℚ), (126990581/312500000 : ℚ), (-72232157037/500000000000 : ℚ), 4⟩,
    ⟨(165152095573/500000000000 : ℚ), (227412229/1000000000 : ℚ), (-85783227607/1000000000000 : ℚ), 4⟩,
    ⟨(66990600083/200000000000 : ℚ), (820201599/10000000000 : ℚ), (-59892839/1600000000 : ℚ), 4⟩,
    ⟨(339579424397/1000000000000 : ℚ), (-74839037/2000000000 : ℚ), (2841572193/1000000000000 : ℚ), 4⟩,
    ⟨(3441389081/10000000000 : ℚ), (-272922683/2000000000 : ℚ), (36693775671/1000000000000 : ℚ), 4⟩,
    ⟨(348587541203/1000000000000 : ℚ), (-2192202733/10000000000 : ℚ), (13070786663/200000000000 : ℚ), 4⟩,
    ⟨(352882480937/1000000000000 : ℚ), (-721960019/2500000000 : ℚ), (44874559879/500000000000 : ℚ), 4⟩,
    ⟨(178491182343/500000000000 : ℚ), (-1737468801/5000000000 : ℚ), (3455774787/31250000000 : ℚ), 4⟩,
    ⟨(360847708327/1000000000000 : ℚ), (-794278747/2000000000 : ℚ), (12840172171/100000000000 : ℚ), 4⟩,
    ⟨(45555160811/125000000000 : ℚ), (-1097743383/2500000000 : ℚ), (17952054477/125000000000 : ℚ), 3⟩,
    ⟨(367728491047/1000000000000 : ℚ), (-4744301339/10000000000 : ℚ), (78275245417/500000000000 : ℚ), 3⟩,
    ⟨(185338832213/500000000000 : ℚ), (-503958493/1000000000 : ℚ), (167451978331/1000000000000 : ℚ), 3⟩,
    ⟨(14930416179/40000000000 : ℚ), (-5283150159/10000000000 : ℚ), (176511564753/1000000000000 : ℚ), 3⟩,
    ⟨(75090367599/200000000000 : ℚ), (-5479839137/10000000000 : ℚ), (18387457743/100000000000 : ℚ), 3⟩,
    ⟨(377230860283/1000000000000 : ℚ), (-2816653929/5000000000 : ℚ), (189650160621/1000000000000 : ℚ), 3⟩,
    ⟨(378580338381/1000000000000 : ℚ), (-5746247691/10000000000 : ℚ), (38783637493/200000000000 : ℚ), 3⟩,
    ⟨(189743638039/500000000000 : ℚ), (-727568411/1250000000 : ℚ), (9836719191/50000000000 : ℚ), 3⟩,
    ⟨(379942939069/1000000000000 : ℚ), (-585740601/1000000000 : ℚ), (99066982011/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-46895999/80000000 : ℚ), (39661703557/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (11118229481/25000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control764.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control764.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate764

namespace DiagonalRamsey.JointInheritedCertificate788
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(473309775739/1000000000000 : ℚ), (3250671362987/2000000000 : ℚ), (-770018757309919/1000000000000 : ℚ), 13⟩,
    ⟨(2961996601/6250000000 : ℚ), (892308671819/5000000000 : ℚ), (-17007355554783/200000000000 : ℚ), 10⟩,
    ⟨(475132945447/1000000000000 : ℚ), (629331234563/10000000000 : ℚ), (-30238453946139/1000000000000 : ℚ), 9⟩,
    ⟨(95387711407/200000000000 : ℚ), (312054629691/10000000000 : ℚ), (-23658212541/1562500000 : ℚ), 8⟩,
    ⟨(479318901897/1000000000000 : ℚ), (45516911787/2500000000 : ℚ), (-8928755285031/1000000000000 : ℚ), 7⟩,
    ⟨(482251056011/1000000000000 : ℚ), (116640170437/10000000000 : ℚ), (-723045122807/125000000000 : ℚ), 6⟩,
    ⟨(48570678113/100000000000 : ℚ), (39633177979/5000000000 : ℚ), (-994062631887/250000000000 : ℚ), 6⟩,
    ⟨(489652796731/1000000000000 : ℚ), (7000515217/1250000000 : ℚ), (-2842223869971/1000000000000 : ℚ), 6⟩,
    ⟨(494051100527/1000000000000 : ℚ), (2537376119/625000000 : ℚ), (-4071765793/1953125000 : ℚ), 5⟩,
    ⟨(498859334449/1000000000000 : ℚ), (3738043351/1250000000 : ℚ), (-62161320851/40000000000 : ℚ), 5⟩,
    ⟨(984435923/1953125000 : ℚ), (1110197699/500000000 : ℚ), (-584012807241/500000000000 : ℚ), 5⟩,
    ⟨(254758433543/500000000000 : ℚ), (824653443/500000000 : ℚ), (-439350473919/500000000000 : ℚ), 5⟩,
    ⟨(103052705587/200000000000 : ℚ), (12154149481/10000000000 : ℚ), (-1641105419/2500000000 : ℚ), 4⟩,
    ⟨(521215831637/1000000000000 : ℚ), (439534621/500000000 : ℚ), (-482180359049/1000000000000 : ℚ), 4⟩,
    ⟨(105463290851/200000000000 : ℚ), (6138917941/10000000000 : ℚ), (-343190412573/1000000000000 : ℚ), 4⟩,
    ⟨(533506643457/1000000000000 : ℚ), (803603739/2000000000 : ℚ), (-46144045531/200000000000 : ℚ), 4⟩,
    ⟨(269863392169/500000000000 : ℚ), (575217831/2500000000 : ℚ), (-69296758491/500000000000 : ℚ), 4⟩,
    ⟨(27295848677/50000000000 : ℚ), (224033591/2500000000 : ℚ), (-12470964741/200000000000 : ℚ), 4⟩,
    ⟨(552017596157/1000000000000 : ℚ), (-32881881/1250000000 : ℚ), (254189021/200000000000 : ℚ), 4⟩,
    ⟨(27898494993/50000000000 : ℚ), (-1226422961/10000000000 : ℚ), (13682498299/250000000000 : ℚ), 4⟩,
    ⟨(563716560709/1000000000000 : ℚ), (-1015723893/5000000000 : ℚ), (24968499781/250000000000 : ℚ), 4⟩,
    ⟨(569202235219/1000000000000 : ℚ), (-2706689277/10000000000 : ℚ), (27623984559/200000000000 : ℚ), 4⟩,
    ⟨(114874818669/200000000000 : ℚ), (-1637050429/5000000000 : ℚ), (170561201027/1000000000000 : ℚ), 3⟩,
    ⟨(579182327267/1000000000000 : ℚ), (-29302071/78125000 : ℚ), (24755821659/125000000000 : ℚ), 3⟩,
    ⟨(72947578883/125000000000 : ℚ), (-4149569543/10000000000 : ℚ), (110618466433/500000000000 : ℚ), 3⟩,
    ⟨(117505329333/200000000000 : ℚ), (-2240532419/5000000000 : ℚ), (240646990177/1000000000000 : ℚ), 3⟩,
    ⟨(590982371783/1000000000000 : ℚ), (-2376549359/5000000000 : ℚ), (256676244097/1000000000000 : ℚ), 3⟩,
    ⟨(593914525897/1000000000000 : ℚ), (-4971789191/10000000000 : ℚ), (134816133803/500000000000 : ℚ), 3⟩,
    ⟨(596294870759/1000000000000 : ℚ), (-1285444809/2500000000 : ℚ), (8742135187/31250000000 : ℚ), 3⟩,
    ⟨(598100482347/1000000000000 : ℚ), (-1316625459/2500000000 : ℚ), (287196677427/1000000000000 : ℚ), 3⟩,
    ⟨(299656985817/500000000000 : ℚ), (-5348374623/10000000000 : ℚ), (9128076403/31250000000 : ℚ), 3⟩,
    ⟨(74990456507/125000000000 : ℚ), (-673617107/1250000000 : ℚ), (294530630777/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-2696994901/5000000000 : ℚ), (294833788231/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (283176271983/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control788.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control788.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate788

namespace DiagonalRamsey.JointInheritedCertificate789
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(14020108523/62500000000 : ℚ), (319704507439/1000000000 : ℚ), (-7197630717467/100000000000 : ℚ), 11⟩,
    ⟨(225772363501/1000000000000 : ℚ), (338774841613/10000000000 : ℚ), (-7782647492981/1000000000000 : ℚ), 8⟩,
    ⟨(11430893549/50000000000 : ℚ), (56124881521/5000000000 : ℚ), (-661661890379/250000000000 : ℚ), 7⟩,
    ⟨(58187226887/250000000000 : ℚ), (50762500487/10000000000 : ℚ), (-6154997217/5000000000 : ℚ), 6⟩,
    ⟨(238006719787/1000000000000 : ℚ), (5187781501/2000000000 : ℚ), (-323878118443/500000000000 : ℚ), 5⟩,
    ⟨(244189252921/1000000000000 : ℚ), (213221579/156250000 : ℚ), (-351857954279/1000000000000 : ℚ), 5⟩,
    ⟨(62764728917/250000000000 : ℚ), (6739548419/10000000000 : ℚ), (-181072142609/1000000000000 : ℚ), 4⟩,
    ⟨(258351710743/1000000000000 : ℚ), (2508604737/10000000000 : ℚ), (-73434139749/1000000000000 : ℚ), 4⟩,
    ⟨(265787380119/1000000000000 : ℚ), (-1003129/40000000 : ℚ), (-1187413783/1000000000000 : ℚ), 4⟩,
    ⟨(136540087597/500000000000 : ℚ), (-266855929/1250000000 : ℚ), (2476933233/50000000000 : ℚ), 4⟩,
    ⟨(279949837941/1000000000000 : ℚ), (-3462375457/10000000000 : ℚ), (43113636663/500000000000 : ℚ), 4⟩,
    ⟨(11445294843/40000000000 : ℚ), (-4413193919/10000000000 : ℚ), (56564782273/500000000000 : ℚ), 4⟩,
    ⟨(145695091657/500000000000 : ℚ), (-50922787/100000000 : ℚ), (132734449189/1000000000000 : ℚ), 4⟩,
    ⟨(147760609941/500000000000 : ℚ), (-2780922401/5000000000 : ℚ), (146512418547/1000000000000 : ℚ), 4⟩,
    ⟨(298366727361/1000000000000 : ℚ), (-1464602857/2500000000 : ℚ), (4853697177/31250000000 : ℚ), 4⟩,
    ⟨(149908677247/500000000000 : ℚ), (-6002199827/10000000000 : ℚ), (159618849043/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-376248317/625000000 : ℚ), (32030376797/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (515333149669/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control789.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control789.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate789

namespace DiagonalRamsey.JointInheritedCertificate812
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(14320379129/25000000000 : ℚ), (886593272139/500000000 : ℚ), (-40660611188527/40000000000 : ℚ), 13⟩,
    ⟨(71678403229/125000000000 : ℚ), (1949090597063/10000000000 : ℚ), (-56138077934029/500000000000 : ℚ), 10⟩,
    ⟨(71830681587/125000000000 : ℚ), (688477602703/10000000000 : ℚ), (-1996880544901/50000000000 : ℚ), 9⟩,
    ⟨(288229056781/500000000000 : ℚ), (342094034789/10000000000 : ℚ), (-20008347713227/1000000000000 : ℚ), 8⟩,
    ⟨(289423875757/500000000000 : ℚ), (200083155753/10000000000 : ℚ), (-11807842657473/1000000000000 : ℚ), 7⟩,
    ⟨(290895676517/500000000000 : ℚ), (12854384117/1000000000 : ℚ), (-1914414614157/250000000000 : ℚ), 7⟩,
    ⟨(585260569629/1000000000000 : ℚ), (21910180849/2500000000 : ℚ), (-5271627029029/1000000000000 : ℚ), 6⟩,
    ⟨(589221990847/1000000000000 : ℚ), (31078456969/5000000000 : ℚ), (-235973729431/62500000000 : ℚ), 6⟩,
    ⟨(148409366509/250000000000 : ℚ), (22631609327/5000000000 : ℚ), (-555347127961/200000000000 : ℚ), 5⟩,
    ⟨(598464471757/1000000000000 : ℚ), (16763258313/5000000000 : ℚ), (-1038684158657/500000000000 : ℚ), 5⟩,
    ⟨(120731304261/200000000000 : ℚ), (12534327583/5000000000 : ℚ), (-1569137425839/1000000000000 : ℚ), 5⟩,
    ⟨(121832722481/200000000000 : ℚ), (18792509877/10000000000 : ℚ), (-297160699361/250000000000 : ℚ), 5⟩,
    ⟨(15373317719/25000000000 : ℚ), (14022712249/10000000000 : ℚ), (-896777920581/1000000000000 : ℚ), 5⟩,
    ⟨(620908250817/1000000000000 : ℚ), (10325318207/10000000000 : ℚ), (-334179520851/500000000000 : ℚ), 4⟩,
    ⟨(627032690841/1000000000000 : ℚ), (3705691529/5000000000 : ℚ), (-486575257897/1000000000000 : ℚ), 4⟩,
    ⟨(5065976377/8000000000 : ℚ), (5082632601/10000000000 : ℚ), (-67971764033/200000000000 : ℚ), 4⟩,
    ⟨(319745736011/500000000000 : ℚ), (3199474907/10000000000 : ℚ), (-13752545391/62500000000 : ℚ), 4⟩,
    ⟨(322852914153/500000000000 : ℚ), (332289057/2000000000 : ℚ), (-60611069251/500000000000 : ℚ), 4⟩,
    ⟨(65183026833/100000000000 : ℚ), (394858141/10000000000 : ℚ), (-7812211477/200000000000 : ℚ), 4⟩,
    ⟨(657805810387/1000000000000 : ℚ), (-327606847/5000000000 : ℚ), (463928919/15625000000 : ℚ), 4⟩,
    ⟨(331787453371/500000000000 : ℚ), (-1530279819/10000000000 : ℚ), (17500071473/200000000000 : ℚ), 4⟩,
    ⟨(334540998921/500000000000 : ℚ), (-2262068039/10000000000 : ℚ), (34064321981/250000000000 : ℚ), 4⟩,
    ⟨(67427404739/100000000000 : ℚ), (-1437524453/5000000000 : ℚ), (8871345611/50000000000 : ℚ), 4⟩,
    ⟨(67910105311/100000000000 : ℚ), (-338822047/1000000000 : ℚ), (212150565057/1000000000000 : ℚ), 4⟩,
    ⟨(6835165283/10000000000 : ℚ), (-3816390917/10000000000 : ℚ), (24132084409/100000000000 : ℚ), 4⟩,
    ⟨(343738974759/500000000000 : ℚ), (-4171114231/10000000000 : ℚ), (53127233397/200000000000 : ℚ), 3⟩,
    ⟨(690947166113/1000000000000 : ℚ), (-4461381783/10000000000 : ℚ), (35705156277/125000000000 : ℚ), 3⟩,
    ⟨(693890767633/1000000000000 : ℚ), (-2347069409/5000000000 : ℚ), (150878748959/500000000000 : ℚ), 3⟩,
    ⟨(139256081117/200000000000 : ℚ), (-974934469/2000000000 : ℚ), (314305978509/1000000000000 : ℚ), 3⟩,
    ⟨(698093066451/1000000000000 : ℚ), (-312931359/625000000 : ℚ), (64704955437/200000000000 : ℚ), 3⟩,
    ⟨(139862258663/200000000000 : ℚ), (-5093592891/10000000000 : ℚ), (164790944589/500000000000 : ℚ), 3⟩,
    ⟨(349961676993/500000000000 : ℚ), (-1284127347/2500000000 : ℚ), (332584399471/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-2570927033/5000000000 : ℚ), (66591701289/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (54109027287/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control812.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control812.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate812

namespace DiagonalRamsey.JointInheritedCertificate835
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7298402191/12500000000 : ℚ), (16670973341303/10000000000 : ℚ), (-243516095215107/250000000000 : ℚ), 14⟩,
    ⟨(73053878189/125000000000 : ℚ), (458260102207/2500000000 : ℚ), (-21513219113599/200000000000 : ℚ), 11⟩,
    ⟨(585543343941/1000000000000 : ℚ), (323849759999/5000000000 : ℚ), (-19123412301087/500000000000 : ℚ), 9⟩,
    ⟨(293599209167/500000000000 : ℚ), (321910109081/10000000000 : ℚ), (-19149410552059/1000000000000 : ℚ), 8⟩,
    ⟨(589380309419/1000000000000 : ℚ), (188292665773/10000000000 : ℚ), (-5645619342411/500000000000 : ℚ), 7⟩,
    ⟨(592068004393/1000000000000 : ℚ), (120950317193/10000000000 : ℚ), (-1828587659383/250000000000 : ℚ), 7⟩,
    ⟨(595235619283/1000000000000 : ℚ), (82425759061/10000000000 : ℚ), (-1005599260391/200000000000 : ℚ), 6⟩,
    ⟨(598852648227/1000000000000 : ℚ), (14602249401/2500000000 : ℚ), (-3594491148537/1000000000000 : ℚ), 6⟩,
    ⟨(602884257259/1000000000000 : ℚ), (5309627731/1250000000 : ℚ), (-1318723180591/500000000000 : ℚ), 6⟩,
    ⟨(607291619779/1000000000000 : ℚ), (31400409953/10000000000 : ℚ), (-393477184637/200000000000 : ℚ), 5⟩,
    ⟨(306016145239/500000000000 : ℚ), (4682425211/2000000000 : ℚ), (-1480489191679/1000000000000 : ℚ), 5⟩,
    ⟨(123412122821/200000000000 : ℚ), (17479734177/10000000000 : ℚ), (-1115999791967/1000000000000 : ℚ), 5⟩,
    ⟨(311164082577/500000000000 : ℚ), (12967527953/10000000000 : ℚ), (-209110238599/250000000000 : ℚ), 5⟩,
    ⟨(627784214231/1000000000000 : ℚ), (4733464633/5000000000 : ℚ), (-617677538837/1000000000000 : ℚ), 5⟩,
    ⟨(316688108299/500000000000 : ℚ), (3352896893/5000000000 : ℚ), (-17743913827/40000000000 : ℚ), 5⟩,
    ⟨(319525159109/500000000000 : ℚ), (2248653443/5000000000 : ℚ), (-75778657151/250000000000 : ℚ), 4⟩,
    ⟨(644751874389/1000000000000 : ℚ), (2709891853/10000000000 : ℚ), (-9419887957/50000000000 : ℚ), 4⟩,
    ⟨(81303247001/125000000000 : ℚ), (249762551/2000000000 : ℚ), (-46896418079/500000000000 : ℚ), 4⟩,
    ⟨(82002247297/125000000000 : ℚ), (2227829/500000000 : ℚ), (-3784429171/250000000000 : ℚ), 4⟩,
    ⟨(165368506863/250000000000 : ℚ), (-477356877/5000000000 : ℚ), (25340913983/500000000000 : ℚ), 4⟩,
    ⟨(666741578501/1000000000000 : ℚ), (-894092707/5000000000 : ℚ), (21205652053/200000000000 : ℚ), 4⟩,
    ⟨(41985618883/62500000000 : ℚ), (-1242908843/5000000000 : ℚ), (15271407047/100000000000 : ℚ), 4⟩,
    ⟨(676510572827/1000000000000 : ℚ), (-307071879/1000000000 : ℚ), (192142055289/1000000000000 : ℚ), 4⟩,
    ⟨(170229483837/250000000000 : ℚ), (-3560826961/10000000000 : ℚ), (225404643287/1000000000000 : ℚ), 4⟩,
    ⟨(684949544379/1000000000000 : ℚ), (-1985059733/5000000000 : ℚ), (253355443221/1000000000000 : ℚ), 4⟩,
    ⟨(688566573323/1000000000000 : ℚ), (-430949553/1000000000 : ℚ), (276661623219/1000000000000 : ℚ), 4⟩,
    ⟨(345867094107/500000000000 : ℚ), (-4587429907/10000000000 : ℚ), (147921412557/500000000000 : ℚ), 4⟩,
    ⟨(694421883187/1000000000000 : ℚ), (-2405230969/5000000000 : ℚ), (155650217131/500000000000 : ℚ), 4⟩,
    ⟨(696603774273/1000000000000 : ℚ), (-996712739/2000000000 : ℚ), (161669879361/500000000000 : ℚ), 4⟩,
    ⟨(139651769733/200000000000 : ℚ), (-5110416491/10000000000 : ℚ), (332186818537/1000000000000 : ℚ), 4⟩,
    ⟨(139874233419/200000000000 : ℚ), (-5193615143/10000000000 : ℚ), (169000425109/500000000000 : ℚ), 4⟩,
    ⟨(349965008663/500000000000 : ℚ), (-2617406289/5000000000 : ℚ), (340883229323/1000000000000 : ℚ), 4⟩,
    ⟨(7/10 : ℚ), (-2619971819/5000000000 : ℚ), (85310596387/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (236588539459/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control835.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control835.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate835

namespace DiagonalRamsey.JointInheritedCertificate849
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155967827367/1000000000000 : ℚ), (2730317087137/10000000000 : ℚ), (-42712664624999/1000000000000 : ℚ), 12⟩,
    ⟨(78405925641/500000000000 : ℚ), (11578747229/400000000 : ℚ), (-575661194353/125000000000 : ℚ), 9⟩,
    ⟨(79233731873/500000000000 : ℚ), (95722964873/10000000000 : ℚ), (-97270538853/62500000000 : ℚ), 8⟩,
    ⟨(160871040501/1000000000000 : ℚ), (21499010173/5000000000 : ℚ), (-357923905799/500000000000 : ℚ), 7⟩,
    ⟨(512281917/3125000000 : ℚ), (216374289/100000000 : ℚ), (-369473644341/1000000000000 : ℚ), 6⟩,
    ⟨(83763710131/500000000000 : ℚ), (11013519903/10000000000 : ℚ), (-9682158667/50000000000 : ℚ), 6⟩,
    ⟨(21440552791/125000000000 : ℚ), (1002765299/2000000000 : ℚ), (-18410511541/200000000000 : ℚ), 5⟩,
    ⟨(2746369017/15625000000 : ℚ), (1316958911/10000000000 : ℚ), (-2726697/97656250 : ℚ), 5⟩,
    ⟨(45023485237/250000000000 : ℚ), (-277423779/2500000000 : ℚ), (3805462133/250000000000 : ℚ), 5⟩,
    ⟨(46084283927/250000000000 : ℚ), (-1389020889/5000000000 : ℚ), (22801533421/500000000000 : ℚ), 5⟩,
    ⟨(188334137773/1000000000000 : ℚ), (-3961956537/10000000000 : ℚ), (67653761287/1000000000000 : ℚ), 4⟩,
    ⟨(47982836149/250000000000 : ℚ), (-2407929149/5000000000 : ℚ), (83884292843/1000000000000 : ℚ), 4⟩,
    ⟨(38998103507/200000000000 : ℚ), (-542968229/1000000000 : ℚ), (11969642649/125000000000 : ℚ), 4⟩,
    ⟨(19739409429/100000000000 : ℚ), (-234259311/400000000 : ℚ), (52064886651/500000000000 : ℚ), 4⟩,
    ⟨(99524853377/500000000000 : ℚ), (-6127188383/10000000000 : ℚ), (27373877877/250000000000 : ℚ), 4⟩,
    ⟨(199893730669/1000000000000 : ℚ), (-3129394699/5000000000 : ℚ), (11212055079/100000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-784384111/1250000000 : ℚ), (112446134023/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (5264788667/8000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control849.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control849.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate849

namespace DiagonalRamsey.JointInheritedCertificate857
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(157597552457/1000000000000 : ℚ), (1337146727033/5000000000 : ℚ), (-21133720558727/500000000000 : ℚ), 12⟩,
    ⟨(79205168619/500000000000 : ℚ), (283624624509/10000000000 : ℚ), (-1138812211923/250000000000 : ℚ), 9⟩,
    ⟨(2500072999/15625000000 : ℚ), (93792537041/10000000000 : ℚ), (-1537922533887/1000000000000 : ℚ), 8⟩,
    ⟨(40579821791/250000000000 : ℚ), (21051541211/5000000000 : ℚ), (-44136375549/62500000000 : ℚ), 7⟩,
    ⟨(33053046711/200000000000 : ℚ), (21146967539/10000000000 : ℚ), (-36343095859/100000000000 : ℚ), 6⟩,
    ⟨(84364650021/500000000000 : ℚ), (2143185219/2000000000 : ℚ), (-94730253863/500000000000 : ℚ), 6⟩,
    ⟨(86289182247/500000000000 : ℚ), (2410188669/5000000000 : ℚ), (-88963866931/1000000000000 : ℚ), 5⟩,
    ⟨(176664509521/1000000000000 : ℚ), (592435603/5000000000 : ℚ), (-798129271/31250000000 : ℚ), 5⟩,
    ⟨(180830706861/1000000000000 : ℚ), (-601597039/5000000000 : ℚ), (17113396751/1000000000000 : ℚ), 5⟩,
    ⟨(11557303243/62500000000 : ℚ), (-2846056859/10000000000 : ℚ), (47139397267/1000000000000 : ℚ), 5⟩,
    ⟨(188765916339/1000000000000 : ℚ), (-1003140247/2500000000 : ℚ), (68925190249/1000000000000 : ℚ), 5⟩,
    ⟨(192229982827/1000000000000 : ℚ), (-4854353367/10000000000 : ℚ), (84956488317/1000000000000 : ℚ), 5⟩,
    ⟨(97587964609/500000000000 : ℚ), (-34123561/62500000 : ℚ), (9668145483/100000000000 : ℚ), 4⟩,
    ⟨(98745272223/500000000000 : ℚ), (-5880907657/10000000000 : ℚ), (13118621593/125000000000 : ℚ), 4⟩,
    ⟨(24885609893/125000000000 : ℚ), (-6148115187/10000000000 : ℚ), (22049428567/200000000000 : ℚ), 4⟩,
    ⟨(7995906557/40000000000 : ℚ), (-6278045411/10000000000 : ℚ), (22567822031/200000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-196691363/312500000 : ℚ), (5658029597/50000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (167378669469/250000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control857.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control857.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate857

namespace DiagonalRamsey.JointInheritedCertificate864
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5958782671/50000000000 : ℚ), (628220693653/10000000000 : ℚ), (-7545412687009/1000000000000 : ℚ), 10⟩,
    ⟨(60749628029/500000000000 : ℚ), (29339949493/5000000000 : ℚ), (-183318869569/250000000000 : ℚ), 7⟩,
    ⟨(125792713897/1000000000000 : ℚ), (2854281137/2000000000 : ℚ), (-187207936067/1000000000000 : ℚ), 6⟩,
    ⟨(131402386899/1000000000000 : ℚ), (485614991/2000000000 : ℚ), (-444571209/12500000000 : ℚ), 5⟩,
    ⟨(34368563301/250000000000 : ℚ), (-1147000841/5000000000 : ℚ), (13865075877/500000000000 : ℚ), 5⟩,
    ⟨(143083926207/1000000000000 : ℚ), (-2294899219/5000000000 : ℚ), (59882157079/1000000000000 : ℚ), 5⟩,
    ⟨(29475476809/200000000000 : ℚ), (-5780490011/10000000000 : ℚ), (38581274543/500000000000 : ℚ), 5⟩,
    ⟨(149700986683/1000000000000 : ℚ), (-630619519/1000000000 : ℚ), (42485021309/500000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6369269757/10000000000 : ℚ), (85915215739/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (180157422839/250000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control864.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control864.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate864

namespace DiagonalRamsey.JointInheritedCertificate865
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19914366827/125000000000 : ℚ), (2616703051093/10000000000 : ℚ), (-41801848726177/1000000000000 : ℚ), 12⟩,
    ⟨(80047400011/500000000000 : ℚ), (69402620971/2500000000 : ℚ), (-5628706601/1250000000 : ℚ), 9⟩,
    ⟨(80812280521/500000000000 : ℚ), (2295091319/250000000 : ℚ), (-94920232853/62500000000 : ℚ), 8⟩,
    ⟨(163845429821/1000000000000 : ℚ), (41180320117/10000000000 : ℚ), (-696123109783/1000000000000 : ℚ), 7⟩,
    ⟨(83336029807/500000000000 : ℚ), (20641166967/10000000000 : ℚ), (-357159731183/1000000000000 : ℚ), 6⟩,
    ⟨(84997912313/500000000000 : ℚ), (2602301233/2500000000 : ℚ), (-185132698383/1000000000000 : ℚ), 6⟩,
    ⟨(173688994429/1000000000000 : ℚ), (1155320753/2500000000 : ℚ), (-17155620063/200000000000 : ℚ), 5⟩,
    ⟨(177609642581/1000000000000 : ℚ), (104925107/1000000000 : ℚ), (-23092077843/1000000000000 : ℚ), 5⟩,
    ⟨(181607100771/1000000000000 : ℚ), (-649434457/5000000000 : ℚ), (3810291349/200000000000 : ℚ), 5⟩,
    ⟨(185527748923/1000000000000 : ℚ), (-291533919/1000000000 : ℚ), (48707953803/1000000000000 : ℚ), 5⟩,
    ⟨(189220918727/1000000000000 : ℚ), (-40638053/100000000 : ℚ), (35109233181/500000000000 : ℚ), 5⟩,
    ⟨(96272341869/500000000000 : ℚ), (-4893047609/10000000000 : ℚ), (86042870259/1000000000000 : ℚ), 5⟩,
    ⟨(48842828383/250000000000 : ℚ), (-5489747199/10000000000 : ℚ), (48807165299/500000000000 : ℚ), 5⟩,
    ⟨(19759218231/100000000000 : ℚ), (-5905011993/10000000000 : ℚ), (105772754477/1000000000000 : ℚ), 5⟩,
    ⟨(19912194333/100000000000 : ℚ), (-6168590137/10000000000 : ℚ), (13875099927/125000000000 : ℚ), 5⟩,
    ⟨(6246931523/31250000000 : ℚ), (-1259357287/2000000000 : ℚ), (28389610543/250000000000 : ℚ), 5⟩,
    ⟨(1/5 : ℚ), (-6312651577/10000000000 : ℚ), (113875667077/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (340485460047/500000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control865.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control865.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate865

namespace DiagonalRamsey.JointInheritedCertificate872
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60254885113/500000000000 : ℚ), (38323051483/625000000 : ℚ), (-7443927397899/1000000000000 : ℚ), 11⟩,
    ⟨(24546560879/200000000000 : ℚ), (57247165777/10000000000 : ℚ), (-180388091021/250000000000 : ℚ), 8⟩,
    ⟨(63420217967/500000000000 : ℚ), (6920327467/5000000000 : ℚ), (-91362216341/500000000000 : ℚ), 6⟩,
    ⟨(132207315177/1000000000000 : ℚ), (1122069497/5000000000 : ℚ), (-33139372747/1000000000000 : ℚ), 6⟩,
    ⟨(8626023963/62500000000 : ℚ), (-2387239481/10000000000 : ℚ), (29260938613/1000000000000 : ℚ), 5⟩,
    ⟨(2867665253/20000000000 : ℚ), (-928424523/2000000000 : ℚ), (30468610713/500000000000 : ℚ), 5⟩,
    ⟨(147490894189/1000000000000 : ℚ), (-1453254409/2500000000 : ℚ), (15591007457/200000000000 : ℚ), 5⟩,
    ⟨(149713928359/1000000000000 : ℚ), (-3165233041/5000000000 : ℚ), (85643239449/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-799071973/1250000000 : ℚ), (43286997183/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (91551496217/125000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control872.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control872.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate872

namespace DiagonalRamsey.JointInheritedCertificate873
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(548446169/781250000 : ℚ), (4430224504589/10000000000 : ℚ), (-7787272292061/25000000000 : ℚ), 12⟩,
    ⟨(351944690759/500000000000 : ℚ), (119035066631/2500000000 : ℚ), (-16886368001973/500000000000 : ℚ), 9⟩,
    ⟨(176893442617/250000000000 : ℚ), (161119662213/10000000000 : ℚ), (-11559658811629/1000000000000 : ℚ), 8⟩,
    ⟨(89115334271/125000000000 : ℚ), (1874025629/250000000 : ℚ), (-2722618394121/500000000000 : ℚ), 7⟩,
    ⟨(2878922149/4000000000 : ℚ), (1246648607/312500000 : ℚ), (-91722113303/31250000000 : ℚ), 6⟩,
    ⟨(90966967169/125000000000 : ℚ), (22412297413/10000000000 : ℚ), (-835430692233/500000000000 : ℚ), 6⟩,
    ⟨(184157659781/250000000000 : ℚ), (12563633269/10000000000 : ℚ), (-237550019697/250000000000 : ℚ), 5⟩,
    ⟨(746073416479/1000000000000 : ℚ), (818530649/1250000000 : ℚ), (-12612093503/25000000000 : ℚ), 5⟩,
    ⟨(755701188779/1000000000000 : ℚ), (2663776477/10000000000 : ℚ), (-106466413463/500000000000 : ℚ), 5⟩,
    ⟨(382571983067/500000000000 : ℚ), (224973/40000000 : ℚ), (-14720576563/1000000000000 : ℚ), 5⟩,
    ⟨(387019433953/500000000000 : ℚ), (-347885389/2000000000 : ℚ), (12343510461/100000000000 : ℚ), 4⟩,
    ⟨(97755508501/125000000000 : ℚ), (-23935849/80000000 : ℚ), (220870063529/1000000000000 : ℚ), 4⟩,
    ⟨(78885193109/100000000000 : ℚ), (-3862865027/10000000000 : ℚ), (57852957593/200000000000 : ℚ), 4⟩,
    ⟨(79420083479/100000000000 : ℚ), (-2225357357/5000000000 : ℚ), (335791290661/1000000000000 : ℚ), 4⟩,
    ⟨(39894261187/50000000000 : ℚ), (-4815079771/10000000000 : ℚ), (36479538679/100000000000 : ℚ), 4⟩,
    ⟨(399881754469/500000000000 : ℚ), (-997933487/2000000000 : ℚ), (94685440789/250000000000 : ℚ), 4⟩,
    ⟨(4/5 : ℚ), (-5011150551/10000000000 : ℚ), (380460158149/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (34413249359/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control873.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control873.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate873

namespace DiagonalRamsey.JointInheritedCertificate878
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12193095397/100000000000 : ℚ), (298874277789/5000000000 : ℚ), (-1467820898379/200000000000 : ℚ), 11⟩,
    ⟨(62023428193/500000000000 : ℚ), (6972198857/1250000000 : ℚ), (-44342215579/62500000000 : ℚ), 8⟩,
    ⟨(7997283391/62500000000 : ℚ), (2679853003/2000000000 : ℚ), (-178126537899/1000000000000 : ℚ), 6⟩,
    ⟨(133064774567/1000000000000 : ℚ), (128531829/625000000 : ℚ), (-6133108633/200000000000 : ℚ), 6⟩,
    ⟨(27718778807/200000000000 : ℚ), (-496296363/2000000000 : ℚ), (7702677781/250000000000 : ℚ), 5⟩,
    ⟨(28740426869/200000000000 : ℚ), (-586773287/1250000000 : ℚ), (61996130743/1000000000000 : ℚ), 5⟩,
    ⟨(18451476527/125000000000 : ℚ), (-5844643241/10000000000 : ℚ), (78742777279/1000000000000 : ℚ), 5⟩,
    ⟨(18715964329/125000000000 : ℚ), (-6353555733/10000000000 : ℚ), (86307644399/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-1282933459/2000000000 : ℚ), (681433467/7812500000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (186056374413/250000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control878.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control878.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate878

namespace DiagonalRamsey.JointInheritedCertificate885
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30864686179/250000000000 : ℚ), (291074992853/5000000000 : ℚ), (-1808470975083/250000000000 : ℚ), 11⟩,
    ⟨(31364869781/250000000000 : ℚ), (6786578487/1250000000 : ℚ), (-139475676753/200000000000 : ℚ), 8⟩,
    ⟨(129156354263/1000000000000 : ℚ), (12955212507/10000000000 : ℚ), (-21692457823/125000000000 : ℚ), 7⟩,
    ⟨(26797310881/200000000000 : ℚ), (1869477681/10000000000 : ℚ), (-28212728609/1000000000000 : ℚ), 6⟩,
    ⟨(34803681341/250000000000 : ℚ), (-2573908053/10000000000 : ℚ), (16166813903/500000000000 : ℚ), 6⟩,
    ⟨(72022462753/500000000000 : ℚ), (-2371927183/5000000000 : ℚ), (63023574093/1000000000000 : ℚ), 5⟩,
    ⟨(29548360129/200000000000 : ℚ), (-1468389631/2500000000 : ℚ), (79495442881/1000000000000 : ℚ), 5⟩,
    ⟨(149742535053/1000000000000 : ℚ), (-6373787891/10000000000 : ℚ), (21733731379/250000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-3216941601/5000000000 : ℚ), (43917789829/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (378035244053/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control885.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control885.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate885

namespace DiagonalRamsey.JointInheritedCertificate890
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(125056013621/1000000000000 : ℚ), (112986000551/2000000000 : ℚ), (-1421484346711/200000000000 : ℚ), 11⟩,
    ⟨(63468171307/500000000000 : ℚ), (26316947133/5000000000 : ℚ), (-170731885163/250000000000 : ℚ), 8⟩,
    ⟨(26082147511/200000000000 : ℚ), (622628981/500000000 : ℚ), (-168108553637/1000000000000 : ℚ), 7⟩,
    ⟨(527149427/3906250000 : ℚ), (206871589/1250000000 : ℚ), (-25329456097/1000000000000 : ℚ), 6⟩,
    ⟨(139863789759/1000000000000 : ℚ), (-83798423/312500000 : ℚ), (3411961173/100000000000 : ℚ), 6⟩,
    ⟨(28880661103/200000000000 : ℚ), (-600376893/1250000000 : ℚ), (32116702941/500000000000 : ℚ), 5⟩,
    ⟨(147877700457/1000000000000 : ℚ), (-2954585351/5000000000 : ℚ), (80389877339/1000000000000 : ℚ), 5⟩,
    ⟨(2995160589/20000000000 : ℚ), (-6399549541/10000000000 : ℚ), (87686641529/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6458492183/10000000000 : ℚ), (88570066307/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (191991092757/250000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control890.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control890.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate890

namespace DiagonalRamsey.JointInheritedCertificate896
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(360968556139/500000000000 : ℚ), (1906839498813/5000000000 : ℚ), (-275654335481841/1000000000000 : ℚ), 13⟩,
    ⟨(723433448711/1000000000000 : ℚ), (102481778133/2500000000 : ℚ), (-7457713194679/250000000000 : ℚ), 10⟩,
    ⟨(363184309103/500000000000 : ℚ), (138512550083/10000000000 : ℚ), (-10168963675569/1000000000000 : ℚ), 8⟩,
    ⟨(146125964769/200000000000 : ℚ), (64175146739/10000000000 : ℚ), (-4756908415123/1000000000000 : ℚ), 7⟩,
    ⟨(736053309887/1000000000000 : ℚ), (16930884951/5000000000 : ℚ), (-2535211112287/1000000000000 : ℚ), 7⟩,
    ⟨(742430654803/1000000000000 : ℚ), (18717409143/10000000000 : ℚ), (-1416276612917/1000000000000 : ℚ), 6⟩,
    ⟨(374758390403/500000000000 : ℚ), (2032545249/2000000000 : ℚ), (-97302970331/125000000000 : ℚ), 6⟩,
    ⟨(378519686023/500000000000 : ℚ), (4922215947/10000000000 : ℚ), (-191915076587/500000000000 : ℚ), 6⟩,
    ⟨(764709339561/1000000000000 : ℚ), (1526706489/10000000000 : ℚ), (-1961930299/15625000000 : ℚ), 5⟩,
    ⟨(386115965401/500000000000 : ℚ), (-761419827/10000000000 : ℚ), (12555894907/250000000000 : ℚ), 5⟩,
    ⟨(194829514201/250000000000 : ℚ), (-2344063591/10000000000 : ℚ), (172975188103/1000000000000 : ℚ), 5⟩,
    ⟨(19642385043/25000000000 : ℚ), (-431672303/1250000000 : ℚ), (259766743677/1000000000000 : ℚ), 5⟩,
    ⟨(395559443881/500000000000 : ℚ), (-4228559971/10000000000 : ℚ), (80219158057/250000000000 : ℚ), 5⟩,
    ⟨(397690046701/500000000000 : ℚ), (-4754317167/10000000000 : ℚ), (362579990861/1000000000000 : ℚ), 5⟩,
    ⟨(798315262897/1000000000000 : ℚ), (-5081493711/10000000000 : ℚ), (48581292429/125000000000 : ℚ), 5⟩,
    ⟨(799811599329/1000000000000 : ℚ), (-2619338287/5000000000 : ℚ), (200605085351/500000000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-1314509547/2500000000 : ℚ), (50344864661/125000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (198708935621/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control896.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control896.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate896

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
theorem certOK : JointInheritedControls.control901.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control901.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate901

namespace DiagonalRamsey.JointInheritedCertificate908
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21741862921/250000000000 : ℚ), (125456417977/2500000000 : ℚ), (-2192137356279/500000000000 : ℚ), 12⟩,
    ⟨(87949871979/1000000000000 : ℚ), (1452564373/312500000 : ℚ), (-207968224763/500000000000 : ℚ), 9⟩,
    ⟨(5610321749/62500000000 : ℚ), (10579742787/10000000000 : ℚ), (-48972566271/500000000000 : ℚ), 8⟩,
    ⟨(92136920383/1000000000000 : ℚ), (429392129/5000000000 : ℚ), (-9758223219/1000000000000 : ℚ), 7⟩,
    ⟨(94704108329/1000000000000 : ℚ), (-123153519/400000000 : ℚ), (26962580887/1000000000000 : ℚ), 7⟩,
    ⟨(12134485091/125000000000 : ℚ), (-2510817343/5000000000 : ℚ), (45573540451/1000000000000 : ℚ), 6⟩,
    ⟨(49445578367/500000000000 : ℚ), (-5900791/9765625 : ℚ), (55571249971/1000000000000 : ℚ), 6⟩,
    ⟨(24968394257/250000000000 : ℚ), (-6497474211/10000000000 : ℚ), (6009334093/100000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-409518837/625000000 : ℚ), (15160316339/250000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (84468234433/100000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control908.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control908.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate908

namespace DiagonalRamsey.JointInheritedCertificate913
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22677003967/500000000000 : ℚ), (15331914153/312500000 : ℚ), (-2232846415511/1000000000000 : ℚ), 13⟩,
    ⟨(45704232371/1000000000000 : ℚ), (2865138557/625000000 : ℚ), (-106345879577/500000000000 : ℚ), 10⟩,
    ⟨(46351362749/1000000000000 : ℚ), (10603154811/10000000000 : ℚ), (-6356594399/125000000000 : ℚ), 9⟩,
    ⟨(23598439667/500000000000 : ℚ), (1001647437/10000000000 : ℚ), (-6021805869/1000000000000 : ℚ), 8⟩,
    ⟨(48112059891/1000000000000 : ℚ), (-727310533/2500000000 : ℚ), (12592563477/1000000000000 : ℚ), 8⟩,
    ⟨(12239394119/250000000000 : ℚ), (-969024019/2000000000 : ℚ), (10990879623/500000000000 : ℚ), 8⟩,
    ⟨(24802353427/500000000000 : ℚ), (-5863198507/10000000000 : ℚ), (26997470833/1000000000000 : ℚ), 7⟩,
    ⟨(49954931291/1000000000000 : ℚ), (-6316968899/10000000000 : ℚ), (7314043243/250000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-6371627811/10000000000 : ℚ), (29529344071/1000000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (949999/1000000 : ℚ)
  x := (909767993009/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control913.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control913.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate913
