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

namespace DiagonalRamsey.JointInheritedCertificate542
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1472488931/12500000000 : ℚ), (1550873990467/2500000000 : ℚ), (-9161156072069/125000000000 : ℚ), 11⟩,
    ⟨(118416352191/1000000000000 : ℚ), (2628701251/40000000 : ℚ), (-7890945640691/1000000000000 : ℚ), 8⟩,
    ⟨(23925421503/200000000000 : ℚ), (216796011677/10000000000 : ℚ), (-2658183226637/1000000000000 : ℚ), 6⟩,
    ⟨(121384851803/1000000000000 : ℚ), (96878431773/10000000000 : ℚ), (-607694673869/500000000000 : ℚ), 5⟩,
    ⟨(15452754491/125000000000 : ℚ), (4824207663/1000000000 : ℚ), (-620447158079/1000000000000 : ℚ), 5⟩,
    ⟨(63126343079/500000000000 : ℚ), (75030699/31250000 : ℚ), (-318092195817/1000000000000 : ℚ), 4⟩,
    ⟨(129175708081/1000000000000 : ℚ), (2572651373/2500000000 : ℚ), (-7153878811/50000000000 : ℚ), 4⟩,
    ⟨(132278771603/1000000000000 : ℚ), (361905497/2000000000 : ℚ), (-32312458451/1000000000000 : ℚ), 4⟩,
    ⟨(67721313867/500000000000 : ℚ), (-3778965891/10000000000 : ℚ), (21219065039/500000000000 : ℚ), 4⟩,
    ⟨(138545691257/1000000000000 : ℚ), (-3818459511/5000000000 : ℚ), (95258702849/1000000000000 : ℚ), 3⟩,
    ⟨(7073435659/50000000000 : ℚ), (-10385545511/10000000000 : ℚ), (133724969753/1000000000000 : ℚ), 3⟩,
    ⟨(14409936341/100000000000 : ℚ), (-1237488509/1000000000 : ℚ), (81060644121/500000000000 : ℚ), 3⟩,
    ⟨(29267309507/200000000000 : ℚ), (-863051017/625000000 : ℚ), (11433797831/62500000000 : ℚ), 3⟩,
    ⟨(148094291823/1000000000000 : ℚ), (-14807763169/10000000000 : ℚ), (98822672801/500000000000 : ℚ), 3⟩,
    ⟨(74652523573/500000000000 : ℚ), (-15442119367/10000000000 : ℚ), (207077795939/1000000000000 : ℚ), 3⟩,
    ⟨(74961142429/500000000000 : ℚ), (-15750697967/10000000000 : ℚ), (211694504753/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-7894443837/5000000000 : ℚ), (53066800467/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (399285623251/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control542.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control542.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate542

namespace DiagonalRamsey.JointInheritedCertificate571
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118366277477/1000000000000 : ℚ), (6153264642201/10000000000 : ℚ), (-73041092103431/1000000000000 : ℚ), 11⟩,
    ⟨(118972643611/1000000000000 : ℚ), (40746781383/625000000 : ℚ), (-3931268797487/500000000000 : ℚ), 8⟩,
    ⟨(120162073571/1000000000000 : ℚ), (215069415101/10000000000 : ℚ), (-2647375759561/1000000000000 : ℚ), 6⟩,
    ⟨(30472214557/250000000000 : ℚ), (48037084099/5000000000 : ℚ), (-120945692949/100000000000 : ℚ), 5⟩,
    ⟨(124086638217/1000000000000 : ℚ), (47796522257/10000000000 : ℚ), (-24661961303/40000000000 : ℚ), 5⟩,
    ⟨(63335477043/500000000000 : ℚ), (2373475957/1000000000 : ℚ), (-157626032693/500000000000 : ℚ), 4⟩,
    ⟨(5181699681/40000000000 : ℚ), (10107543291/10000000000 : ℚ), (-70436306521/500000000000 : ℚ), 4⟩,
    ⟨(66295450221/500000000000 : ℚ), (840416549/5000000000 : ℚ), (-30529595771/1000000000000 : ℚ), 4⟩,
    ⟨(13569903071/100000000000 : ℚ), (-3873246509/10000000000 : ℚ), (21959800983/500000000000 : ℚ), 4⟩,
    ⟨(138747439127/1000000000000 : ℚ), (-770827421/1000000000 : ℚ), (96514710469/1000000000000 : ℚ), 3⟩,
    ⟨(70809488533/500000000000 : ℚ), (-1305137591/1250000000 : ℚ), (134808261517/1000000000000 : ℚ), 3⟩,
    ⟨(28840658587/200000000000 : ℚ), (-3104844521/2500000000 : ℚ), (163071971343/1000000000000 : ℚ), 3⟩,
    ⟨(36600268231/250000000000 : ℚ), (-13845603387/10000000000 : ℚ), (183791649273/1000000000000 : ℚ), 3⟩,
    ⟨(74063928791/500000000000 : ℚ), (-14839360341/10000000000 : ℚ), (49606183777/250000000000 : ℚ), 3⟩,
    ⟨(149317287541/1000000000000 : ℚ), (-3094103433/2000000000 : ℚ), (207811066397/1000000000000 : ℚ), 3⟩,
    ⟨(37480913419/250000000000 : ℚ), (-15777571259/10000000000 : ℚ), (212405176649/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-1581557387/1000000000 : ℚ), (212975070669/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (81726648141/200000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control571.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control571.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate571

namespace DiagonalRamsey.JointInheritedCertificate595
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11895101383/100000000000 : ℚ), (3051833744623/5000000000 : ℚ), (-72805506582309/1000000000000 : ℚ), 11⟩,
    ⟨(7471635721/62500000000 : ℚ), (25871734177/400000000 : ℚ), (-1958883900571/250000000000 : ℚ), 8⟩,
    ⟨(30178403843/250000000000 : ℚ), (213369490521/10000000000 : ℚ), (-1318540901777/500000000000 : ℚ), 6⟩,
    ⟨(979267849/8000000000 : ℚ), (47642092651/5000000000 : ℚ), (-300948200741/250000000000 : ℚ), 6⟩,
    ⟨(24913127211/200000000000 : ℚ), (23680077317/5000000000 : ℚ), (-306409494271/500000000000 : ℚ), 5⟩,
    ⟨(127102181907/1000000000000 : ℚ), (23466311/10000000 : ℚ), (-312529967401/1000000000000 : ℚ), 4⟩,
    ⟨(16240080081/125000000000 : ℚ), (1985925619/2000000000 : ℚ), (-138757534621/1000000000000 : ℚ), 4⟩,
    ⟨(132912700489/1000000000000 : ℚ), (97273639/625000000 : ℚ), (-14409778567/500000000000 : ℚ), 4⟩,
    ⟨(135963378247/1000000000000 : ℚ), (-396387683/1000000000 : ℚ), (22669543653/500000000000 : ℚ), 4⟩,
    ⟨(138955438087/1000000000000 : ℚ), (-7776372513/10000000000 : ℚ), (48857900427/500000000000 : ℚ), 4⟩,
    ⟨(141773896829/1000000000000 : ℚ), (-5246832367/5000000000 : ℚ), (135841293869/1000000000000 : ℚ), 3⟩,
    ⟨(144310442681/1000000000000 : ℚ), (-12461058877/10000000000 : ℚ), (8198772533/50000000000 : ℚ), 3⟩,
    ⟨(146467597611/1000000000000 : ℚ), (-1734962133/1250000000 : ℚ), (184597297229/1000000000000 : ℚ), 3⟩,
    ⟨(37040615841/250000000000 : ℚ), (-14868340137/10000000000 : ℚ), (199160108653/1000000000000 : ℚ), 3⟩,
    ⟨(11666399/78125000 : ℚ), (-15496342499/10000000000 : ℚ), (208501018891/1000000000000 : ℚ), 3⟩,
    ⟨(74962532453/500000000000 : ℚ), (-7900946441/5000000000 : ℚ), (213072846123/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15839710919/10000000000 : ℚ), (213639974903/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (418000047951/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control595.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control595.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate595

namespace DiagonalRamsey.JointInheritedCertificate612
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(59752319877/500000000000 : ℚ), (3021173241209/5000000000 : ℚ), (-72404871622723/1000000000000 : ℚ), 11⟩,
    ⟨(120089185367/1000000000000 : ℚ), (64034174277/1000000000 : ℚ), (-7790166712487/1000000000000 : ℚ), 8⟩,
    ⟨(121235812833/1000000000000 : ℚ), (211207049279/10000000000 : ℚ), (-2620154335939/1000000000000 : ℚ), 7⟩,
    ⟨(122900457901/1000000000000 : ℚ), (5891321509/625000000 : ℚ), (-298681545021/250000000000 : ℚ), 6⟩,
    ⟨(31254787299/250000000000 : ℚ), (46784826089/10000000000 : ℚ), (-121402809307/200000000000 : ℚ), 5⟩,
    ⟨(63755233299/500000000000 : ℚ), (11553097353/5000000000 : ℚ), (-308402606357/1000000000000 : ℚ), 5⟩,
    ⟨(130278670177/1000000000000 : ℚ), (605431857/625000000 : ℚ), (-27123922219/200000000000 : ℚ), 4⟩,
    ⟨(66608689711/500000000000 : ℚ), (1383648433/10000000000 : ℚ), (-13161795489/500000000000 : ℚ), 4⟩,
    ⟨(27242732277/200000000000 : ℚ), (-4092050391/10000000000 : ℚ), (9477886387/200000000000 : ℚ), 4⟩,
    ⟨(13915237063/100000000000 : ℚ), (-7874791023/10000000000 : ℚ), (12430312359/125000000000 : ℚ), 4⟩,
    ⟨(141920574209/1000000000000 : ℚ), (-1057158039/1000000000 : ℚ), (68663474329/500000000000 : ℚ), 3⟩,
    ⟨(144411891611/1000000000000 : ℚ), (-3131161179/2500000000 : ℚ), (82640283243/500000000000 : ℚ), 3⟩,
    ⟨(73265291453/500000000000 : ℚ), (-6966661419/5000000000 : ℚ), (185769281763/1000000000000 : ℚ), 3⟩,
    ⟨(74097613987/500000000000 : ℚ), (-7457635257/5000000000 : ℚ), (200238198173/1000000000000 : ℚ), 3⟩,
    ⟨(1866773193/12500000000 : ℚ), (-15539150703/10000000000 : ℚ), (209519197847/1000000000000 : ℚ), 3⟩,
    ⟨(149926401053/1000000000000 : ℚ), (-7921369081/5000000000 : ℚ), (107030928633/500000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15880315347/10000000000 : ℚ), (214625376663/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (85482261749/200000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control612.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control612.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate612

namespace DiagonalRamsey.JointInheritedCertificate613
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(160078763937/1000000000000 : ℚ), (1236722178119/2000000000 : ℚ), (-19849939469763/200000000000 : ℚ), 11⟩,
    ⟨(80421993999/500000000000 : ℚ), (327892773677/5000000000 : ℚ), (-2670732682621/250000000000 : ℚ), 8⟩,
    ⟨(162345028989/1000000000000 : ℚ), (21659472773/1000000000 : ℚ), (-1798305657523/500000000000 : ℚ), 7⟩,
    ⟨(32904840549/200000000000 : ℚ), (9688986931/1000000000 : ℚ), (-328608983281/200000000000 : ℚ), 6⟩,
    ⟨(167297764841/1000000000000 : ℚ), (48290435797/10000000000 : ℚ), (-837803533979/1000000000000 : ℚ), 5⟩,
    ⟨(170559128843/1000000000000 : ℚ), (24055326847/10000000000 : ℚ), (-428894649051/1000000000000 : ℚ), 5⟩,
    ⟨(174182962359/1000000000000 : ℚ), (5163629509/5000000000 : ℚ), (-96254801641/500000000000 : ℚ), 4⟩,
    ⟨(178030003501/1000000000000 : ℚ), (1840419537/10000000000 : ℚ), (-43182023157/1000000000000 : ℚ), 4⟩,
    ⟨(90976206317/500000000000 : ℚ), (-3749130343/10000000000 : ℚ), (57353681777/1000000000000 : ℚ), 4⟩,
    ⟨(11612465861/62500000000 : ℚ), (-1520850173/2000000000 : ℚ), (128201368513/1000000000000 : ℚ), 4⟩,
    ⟨(47355821823/250000000000 : ℚ), (-10347640051/10000000000 : ℚ), (89824985537/500000000000 : ℚ), 3⟩,
    ⟨(96342325647/500000000000 : ℚ), (-1541349621/1250000000 : ℚ), (217528681487/1000000000000 : ℚ), 3⟩,
    ⟨(195458213391/1000000000000 : ℚ), (-6879381169/5000000000 : ℚ), (49047342849/200000000000 : ℚ), 3⟩,
    ⟨(197637387147/1000000000000 : ℚ), (-14752754261/10000000000 : ℚ), (132385797933/500000000000 : ℚ), 3⟩,
    ⟨(199138428137/1000000000000 : ℚ), (-7691815029/5000000000 : ℚ), (27728690589/100000000000 : ℚ), 3⟩,
    ⟨(99951826099/500000000000 : ℚ), (-15690427461/10000000000 : ℚ), (141704049579/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-7864196461/5000000000 : ℚ), (142083612683/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (92587141893/250000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control613.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control613.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate613

namespace DiagonalRamsey.JointInheritedCertificate634
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30031834309/250000000000 : ℚ), (2997104465927/5000000000 : ℚ), (-36098721390451/500000000000 : ℚ), 11⟩,
    ⟨(120699946769/1000000000000 : ℚ), (635351427861/10000000000 : ℚ), (-3883157949557/500000000000 : ℚ), 8⟩,
    ⟨(12182316077/100000000000 : ℚ), (209568376409/10000000000 : ℚ), (-2611012218023/1000000000000 : ℚ), 7⟩,
    ⟨(30863453689/250000000000 : ℚ), (93503875783/10000000000 : ℚ), (-1189664345907/1000000000000 : ℚ), 6⟩,
    ⟨(125529243609/1000000000000 : ℚ), (23184716593/5000000000 : ℚ), (-603661483261/1000000000000 : ℚ), 5⟩,
    ⟨(63984844881/500000000000 : ℚ), (5713197027/2500000000 : ℚ), (-305945501221/1000000000000 : ℚ), 5⟩,
    ⟨(65340684119/500000000000 : ℚ), (1904128521/2000000000 : ℚ), (-13370608973/100000000000 : ℚ), 4⟩,
    ⟨(133560070753/1000000000000 : ℚ), (634370013/5000000000 : ℚ), (-1238826049/50000000000 : ℚ), 4⟩,
    ⟨(8530948149/62500000000 : ℚ), (-2087251189/5000000000 : ℚ), (48670571697/1000000000000 : ℚ), 4⟩,
    ⟨(1393738729/10000000000 : ℚ), (-3967813763/5000000000 : ℚ), (25130348157/250000000000 : ℚ), 4⟩,
    ⟨(1136684411/8000000000 : ℚ), (-10617504083/10000000000 : ℚ), (138248492913/1000000000000 : ℚ), 4⟩,
    ⟨(18065749691/125000000000 : ℚ), (-24531457/19531250 : ℚ), (33215927019/200000000000 : ℚ), 3⟩,
    ⟨(146601426381/1000000000000 : ℚ), (-1396147763/1000000000 : ℚ), (186475114653/1000000000000 : ℚ), 3⟩,
    ⟨(148232080367/1000000000000 : ℚ), (-14938492113/10000000000 : ℚ), (200876631383/1000000000000 : ℚ), 3⟩,
    ⟨(4667352949/31250000000 : ℚ), (-3889831253/2500000000 : ℚ), (6566058383/31250000000 : ℚ), 3⟩,
    ⟨(149927903901/1000000000000 : ℚ), (-1586145853/1000000000 : ℚ), (107317499349/500000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-3974714297/2500000000 : ℚ), (21519584367/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (218407981097/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control634.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control634.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate634

namespace DiagonalRamsey.JointInheritedCertificate646
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60359764421/500000000000 : ℚ), (593403798039/1000000000 : ℚ), (-35910151957609/500000000000 : ℚ), 11⟩,
    ⟨(121280787041/1000000000000 : ℚ), (629030342149/10000000000 : ℚ), (-48272380901/6250000000 : ℚ), 8⟩,
    ⟨(122381734601/1000000000000 : ℚ), (207454891487/10000000000 : ℚ), (-2595050688169/1000000000000 : ℚ), 7⟩,
    ⟨(30995015681/250000000000 : ℚ), (46253657703/5000000000 : ℚ), (-236221067103/200000000000 : ℚ), 6⟩,
    ⟨(126014348557/1000000000000 : ℚ), (11452834387/2500000000 : ℚ), (-299088407649/500000000000 : ℚ), 5⟩,
    ⟨(128406415637/1000000000000 : ℚ), (22505231223/10000000000 : ℚ), (-302044836863/1000000000000 : ℚ), 5⟩,
    ⟨(131064338167/1000000000000 : ℚ), (9287812017/10000000000 : ℚ), (-130742252413/1000000000000 : ℚ), 4⟩,
    ⟨(5355438947/40000000000 : ℚ), (13803093/125000000 : ℚ), (-11211398557/500000000000 : ℚ), 4⟩,
    ⟨(136762888291/1000000000000 : ℚ), (-2147754021/5000000000 : ℚ), (10119767667/200000000000 : ℚ), 4⟩,
    ⟨(139584523799/1000000000000 : ℚ), (-200689713/250000000 : ℚ), (25534772591/250000000000 : ℚ), 4⟩,
    ⟨(142242446329/1000000000000 : ℚ), (-10689437959/10000000000 : ℚ), (139633685801/1000000000000 : ℚ), 4⟩,
    ⟨(144634513409/1000000000000 : ℚ), (-3154506713/2500000000 : ℚ), (16728981753/100000000000 : ℚ), 4⟩,
    ⟨(73334399621/500000000000 : ℚ), (-2801929117/2000000000 : ℚ), (37511133057/200000000000 : ℚ), 3⟩,
    ⟨(74133563683/500000000000 : ℚ), (-599203811/400000000 : ℚ), (100932706627/500000000000 : ℚ), 3⟩,
    ⟨(5974722997/40000000000 : ℚ), (-3899220503/2500000000 : ℚ), (211043931309/1000000000000 : ℚ), 3⟩,
    ⟨(37482333281/250000000000 : ℚ), (-3179417487/2000000000 : ℚ), (215536424009/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-318684989/200000000 : ℚ), (54023430709/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (223132589267/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control646.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control646.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate646

namespace DiagonalRamsey.JointInheritedCertificate689
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(24393732633/200000000000 : ℚ), (2908022307/5000000 : ℚ), (-35555478297617/500000000000 : ℚ), 11⟩,
    ⟨(4900239101/40000000000 : ℚ), (308326859737/5000000000 : ℚ), (-3821573452957/500000000000 : ℚ), 8⟩,
    ⟨(24711991511/200000000000 : ℚ), (203326816801/10000000000 : ℚ), (-2564973393671/1000000000000 : ℚ), 7⟩,
    ⟨(25018019879/200000000000 : ℚ), (90567159073/10000000000 : ℚ), (-1164955903011/1000000000000 : ℚ), 6⟩,
    ⟨(2540752011/20000000000 : ℚ), (44729201843/10000000000 : ℚ), (-587816930049/1000000000000 : ℚ), 5⟩,
    ⟨(25865523929/200000000000 : ℚ), (85291437/39062500 : ℚ), (-147336511383/500000000000 : ℚ), 5⟩,
    ⟨(131872152529/1000000000000 : ℚ), (4420581931/5000000000 : ℚ), (-31285613053/250000000000 : ℚ), 5⟩,
    ⟨(134573414231/1000000000000 : ℚ), (395440581/5000000000 : ℚ), (-1123830691/62500000000 : ℚ), 4⟩,
    ⟨(68663798389/500000000000 : ℚ), (-4524110071/10000000000 : ℚ), (54229001847/1000000000000 : ℚ), 4⟩,
    ⟨(1750360731/12500000000 : ℚ), (-4099790083/5000000000 : ℚ), (26293521327/250000000000 : ℚ), 4⟩,
    ⟨(35643347841/250000000000 : ℚ), (-1082237631/1000000000 : ℚ), (71110442137/500000000000 : ℚ), 4⟩,
    ⟨(72431705229/500000000000 : ℚ), (-12723614887/10000000000 : ℚ), (42384588213/250000000000 : ℚ), 4⟩,
    ⟨(73405455807/500000000000 : ℚ), (-7048088363/5000000000 : ℚ), (189552290893/1000000000000 : ℚ), 4⟩,
    ⟨(148341053453/1000000000000 : ℚ), (-15053784641/10000000000 : ℚ), (50920770951/250000000000 : ℚ), 4⟩,
    ⟨(37348758371/250000000000 : ℚ), (-1566264909/1000000000 : ℚ), (212746796801/1000000000000 : ℚ), 4⟩,
    ⟨(37483086961/250000000000 : ℚ), (-797953853/500000000 : ℚ), (217183207219/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3199155069/2000000000 : ℚ), (54433389319/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (232609794337/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control689.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control689.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate689

namespace DiagonalRamsey.JointInheritedCertificate720
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(207019963101/1000000000000 : ℚ), (5945158972961/10000000000 : ℚ), (-123349255082601/1000000000000 : ℚ), 12⟩,
    ⟨(103921909657/500000000000 : ℚ), (631285974519/10000000000 : ℚ), (-6630355798149/500000000000 : ℚ), 8⟩,
    ⟨(13091241963/62500000000 : ℚ), (208616297479/10000000000 : ℚ), (-2226387704417/500000000000 : ℚ), 7⟩,
    ⟨(13237875963/62500000000 : ℚ), (93218254423/10000000000 : ℚ), (-1012520423033/500000000000 : ℚ), 6⟩,
    ⟨(42958418063/200000000000 : ℚ), (46273686407/10000000000 : ℚ), (-12810437343/12500000000 : ℚ), 5⟩,
    ⟨(43660668589/200000000000 : ℚ), (22817345939/10000000000 : ℚ), (-517403725309/1000000000000 : ℚ), 5⟩,
    ⟨(222204837829/1000000000000 : ℚ), (148564067/156250000 : ℚ), (-44903889391/200000000000 : ℚ), 5⟩,
    ⟨(113173321353/500000000000 : ℚ), (254108161/2000000000 : ℚ), (-311779647/7812500000 : ℚ), 4⟩,
    ⟨(115284795169/500000000000 : ℚ), (-4158098977/10000000000 : ℚ), (84039417791/1000000000000 : ℚ), 4⟩,
    ⟨(46942279043/200000000000 : ℚ), (-3951354711/5000000000 : ℚ), (171113739549/1000000000000 : ℚ), 4⟩,
    ⟨(238612890099/1000000000000 : ℚ), (-2641766153/2500000000 : ℚ), (234147489689/1000000000000 : ℚ), 4⟩,
    ⟨(242124142729/1000000000000 : ℚ), (-12492728003/10000000000 : ℚ), (56084722009/200000000000 : ℚ), 4⟩,
    ⟨(61277554409/250000000000 : ℚ), (-277584317/200000000 : ℚ), (314195928709/1000000000000 : ℚ), 4⟩,
    ⟨(49491272327/200000000000 : ℚ), (-74222277/50000000 : ℚ), (337966276397/1000000000000 : ℚ), 4⟩,
    ⟨(24907241373/100000000000 : ℚ), (-15457229139/10000000000 : ℚ), (176589371167/500000000000 : ℚ), 4⟩,
    ⟨(249896269943/1000000000000 : ℚ), (-15755290503/10000000000 : ℚ), (72122968759/200000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-15792178701/10000000000 : ℚ), (72307371463/200000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (363427039907/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control720.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control720.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate720

namespace DiagonalRamsey.JointInheritedCertificate735
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(61957572411/500000000000 : ℚ), (5618157508003/10000000000 : ℚ), (-69773199439979/1000000000000 : ℚ), 12⟩,
    ⟨(31103787087/250000000000 : ℚ), (595788952497/10000000000 : ℚ), (-3746059897143/500000000000 : ℚ), 9⟩,
    ⟨(62697970273/500000000000 : ℚ), (196322113921/10000000000 : ℚ), (-2508949974591/1000000000000 : ℚ), 7⟩,
    ⟨(3170495753/25000000000 : ℚ), (43626713163/5000000000 : ℚ), (-1135187406259/1000000000000 : ℚ), 6⟩,
    ⟨(64316048897/500000000000 : ℚ), (21435078973/5000000000 : ℚ), (-142234655663/250000000000 : ℚ), 6⟩,
    ⟨(130763099137/1000000000000 : ℚ), (4135404451/2000000000 : ℚ), (-70347920847/250000000000 : ℚ), 5⟩,
    ⟨(66565470481/500000000000 : ℚ), (4033663497/5000000000 : ℚ), (-23031607443/200000000000 : ℚ), 5⟩,
    ⟨(135644628437/1000000000000 : ℚ), (246367947/10000000000 : ℚ), (-10132337163/1000000000000 : ℚ), 5⟩,
    ⟨(3455189049/25000000000 : ℚ), (-24611771/50000000 : ℚ), (15149568391/250000000000 : ℚ), 4⟩,
    ⟨(70360624717/500000000000 : ℚ), (-1699996719/2000000000 : ℚ), (55235135903/500000000000 : ℚ), 4⟩,
    ⟨(143089091259/1000000000000 : ℚ), (-11055245837/10000000000 : ℚ), (73359237049/500000000000 : ℚ), 4⟩,
    ⟨(72610046301/500000000000 : ℚ), (-12909188017/10000000000 : ℚ), (173437735431/1000000000000 : ℚ), 4⟩,
    ⟨(36758090069/250000000000 : ℚ), (-14248799337/10000000000 : ℚ), (193010159529/1000000000000 : ℚ), 4⟩,
    ⟨(148456249851/1000000000000 : ℚ), (-15184203527/10000000000 : ℚ), (206829141711/1000000000000 : ℚ), 4⟩,
    ⟨(149437042049/1000000000000 : ℚ), (-7889684247/5000000000 : ℚ), (215693624363/1000000000000 : ℚ), 4⟩,
    ⟨(5997481823/40000000000 : ℚ), (-16069263309/10000000000 : ℚ), (44006587633/200000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16105159499/10000000000 : ℚ), (44114253589/200000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (246921557717/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control735.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control735.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate735

namespace DiagonalRamsey.JointInheritedCertificate736
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(104041373067/500000000000 : ℚ), (5872225075303/10000000000 : ℚ), (-30613335431357/250000000000 : ℚ), 12⟩,
    ⟨(41777246111/200000000000 : ℚ), (623570691977/10000000000 : ℚ), (-13160097271999/1000000000000 : ℚ), 9⟩,
    ⟨(10523116097/50000000000 : ℚ), (103008717209/5000000000 : ℚ), (-1103953994087/250000000000 : ℚ), 7⟩,
    ⟨(106375225991/500000000000 : ℚ), (91985876569/10000000000 : ℚ), (-501414227461/250000000000 : ℚ), 6⟩,
    ⟨(215662689127/1000000000000 : ℚ), (45581614629/10000000000 : ℚ), (-1012723897839/1000000000000 : ℚ), 6⟩,
    ⟨(109543558867/500000000000 : ℚ), (11193270769/5000000000 : ℚ), (-127253310011/250000000000 : ℚ), 5⟩,
    ⟨(55723034733/250000000000 : ℚ), (1844089973/2000000000 : ℚ), (-21830435131/100000000000 : ℚ), 5⟩,
    ⟨(226931527891/1000000000000 : ℚ), (53420479/500000000 : ℚ), (-35087272769/1000000000000 : ℚ), 4⟩,
    ⟨(115525026579/500000000000 : ℚ), (-4305817133/10000000000 : ℚ), (87905734269/1000000000000 : ℚ), 4⟩,
    ⟨(58772360529/250000000000 : ℚ), (-80141877/100000000 : ℚ), (87148789581/500000000000 : ℚ), 4⟩,
    ⟨(119447231657/500000000000 : ℚ), (-1065366791/1000000000 : ℚ), (236830439941/1000000000000 : ℚ), 4⟩,
    ⟨(242318891921/1000000000000 : ℚ), (-12562015129/10000000000 : ℚ), (141368081481/500000000000 : ℚ), 4⟩,
    ⟨(122615564533/500000000000 : ℚ), (-13936507877/10000000000 : ℚ), (316238128039/1000000000000 : ℚ), 4⟩,
    ⟨(61879814777/250000000000 : ℚ), (-1489370363/1000000000 : ℚ), (67963847007/200000000000 : ℚ), 4⟩,
    ⟨(249095350493/1000000000000 : ℚ), (-3100306491/2000000000 : ℚ), (44363945487/125000000000 : ℚ), 4⟩,
    ⟨(124949417457/500000000000 : ℚ), (-15797240917/10000000000 : ℚ), (90572335869/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-15833840487/10000000000 : ℚ), (363204147473/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (185590952173/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control736.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control736.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate736

namespace DiagonalRamsey.JointInheritedCertificate746
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(209194400227/1000000000000 : ℚ), (5801111382759/10000000000 : ℚ), (-15201049076603/125000000000 : ℚ), 12⟩,
    ⟨(104988288039/500000000000 : ℚ), (308030050321/5000000000 : ℚ), (-3266299883907/250000000000 : ℚ), 9⟩,
    ⟨(211510869199/1000000000000 : ℚ), (203493998727/10000000000 : ℚ), (-4380953709287/1000000000000 : ℚ), 7⟩,
    ⟨(213738317567/1000000000000 : ℚ), (90793291033/10000000000 : ℚ), (-993686758451/500000000000 : ℚ), 6⟩,
    ⟨(216573321591/1000000000000 : ℚ), (11228663281/2500000000 : ℚ), (-1001303872499/1000000000000 : ℚ), 6⟩,
    ⟨(43981386731/200000000000 : ℚ), (10986702973/5000000000 : ℚ), (-125276820831/250000000000 : ℚ), 5⟩,
    ⟨(111805522459/500000000000 : ℚ), (2236547349/2500000000 : ℚ), (-53113961079/250000000000 : ℚ), 5⟩,
    ⟨(11377165423/50000000000 : ℚ), (43849823/500000000 : ℚ), (-6112063679/200000000000 : ℚ), 5⟩,
    ⟨(144720381/625000000 : ℚ), (-177783151/400000000 : ℚ), (22881543281/250000000000 : ℚ), 4⟩,
    ⟨(117742436571/500000000000 : ℚ), (-8117910903/10000000000 : ℚ), (177267744623/1000000000000 : ℚ), 4⟩,
    ⟨(47837796881/200000000000 : ℚ), (-2146669989/2000000000 : ℚ), (119660917651/500000000000 : ℚ), 4⟩,
    ⟨(242522596469/1000000000000 : ℚ), (-12624961313/10000000000 : ℚ), (71218096739/250000000000 : ℚ), 4⟩,
    ⟨(61339400123/250000000000 : ℚ), (-13987857697/10000000000 : ℚ), (795285841/2500000000 : ℚ), 4⟩,
    ⟨(247585048861/1000000000000 : ℚ), (-119498191/80000000 : ℚ), (341512968637/1000000000000 : ℚ), 4⟩,
    ⟨(124559670991/500000000000 : ℚ), (-15540318333/10000000000 : ℚ), (356489224203/1000000000000 : ℚ), 4⟩,
    ⟨(249901517833/1000000000000 : ℚ), (-15833749659/10000000000 : ℚ), (181905291777/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-3174013973/2000000000 : ℚ), (364718409743/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (378962706031/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control746.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control746.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate746

namespace DiagonalRamsey.JointInheritedCertificate770
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(167621467417/1000000000000 : ℚ), (5591411666089/10000000000 : ℚ), (-93916554986407/1000000000000 : ℚ), 12⟩,
    ⟨(168242110329/1000000000000 : ℚ), (148344553849/2500000000 : ℚ), (-2520388592581/250000000000 : ℚ), 9⟩,
    ⟨(84729772597/500000000000 : ℚ), (195664235879/10000000000 : ℚ), (-337401888243/100000000000 : ℚ), 7⟩,
    ⟨(171226986671/1000000000000 : ℚ), (8700221113/1000000000 : ℚ), (-1525110454241/1000000000000 : ℚ), 6⟩,
    ⟨(86738256489/500000000000 : ℚ), (106882077/25000000 : ℚ), (-763257098317/1000000000000 : ℚ), 6⟩,
    ⟨(176121676079/1000000000000 : ℚ), (20613459427/10000000000 : ℚ), (-47078138617/125000000000 : ℚ), 5⟩,
    ⟨(1119130149/6250000000 : ℚ), (4015146747/5000000000 : ℚ), (-15334178709/100000000000 : ℚ), 5⟩,
    ⟨(182181006461/1000000000000 : ℚ), (56569051/2500000000 : ℚ), (-12482118277/1000000000000 : ℚ), 5⟩,
    ⟨(185362317073/1000000000000 : ℚ), (-2464423911/5000000000 : ℚ), (321099691/3906250000 : ℚ), 5⟩,
    ⟨(188482499693/1000000000000 : ℚ), (-4247113183/5000000000 : ℚ), (148817654501/1000000000000 : ℚ), 4⟩,
    ⟨(95710823727/500000000000 : ℚ), (-11038248491/10000000000 : ℚ), (2464082889/12500000000 : ℚ), 4⟩,
    ⟨(38813362111/200000000000 : ℚ), (-6441108059/5000000000 : ℚ), (232660391859/1000000000000 : ℚ), 4⟩,
    ⟨(98158168431/500000000000 : ℚ), (-14213491387/10000000000 : ℚ), (258642277789/1000000000000 : ℚ), 4⟩,
    ⟨(9904188917/50000000000 : ℚ), (-15142490999/10000000000 : ℚ), (27696081467/100000000000 : ℚ), 4⟩,
    ⟨(49825303301/250000000000 : ℚ), (-1966668077/1250000000 : ℚ), (288700261307/1000000000000 : ℚ), 4⟩,
    ⟨(49980464029/250000000000 : ℚ), (-4005269819/2500000000 : ℚ), (147221866237/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16056705463/10000000000 : ℚ), (147578058471/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (5594969839/12500000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control770.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control770.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate770

namespace DiagonalRamsey.JointInheritedCertificate771
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13143514183/62500000000 : ℚ), (228854936409/400000000 : ℚ), (-60280170818411/500000000000 : ℚ), 12⟩,
    ⟨(211057282583/1000000000000 : ℚ), (607595786447/10000000000 : ℚ), (-2589544589687/200000000000 : ℚ), 9⟩,
    ⟨(212550146951/1000000000000 : ℚ), (200630334931/10000000000 : ℚ), (-4337953092243/1000000000000 : ℚ), 7⟩,
    ⟨(53679362523/250000000000 : ℚ), (89429317807/10000000000 : ℚ), (-392985706419/200000000000 : ℚ), 6⟩,
    ⟨(217475903761/1000000000000 : ℚ), (5518198249/1250000000 : ℚ), (-987356670063/1000000000000 : ℚ), 6⟩,
    ⟨(220719502131/1000000000000 : ℚ), (2686628817/1250000000 : ℚ), (-30718690247/62500000000 : ℚ), 5⟩,
    ⟨(44864719107/200000000000 : ℚ), (8624538489/10000000000 : ℚ), (-5134418277/25000000000 : ℚ), 5⟩,
    ⟨(114074840343/500000000000 : ℚ), (26017871/400000000 : ℚ), (-25095623481/1000000000000 : ℚ), 5⟩,
    ⟨(58012680819/250000000000 : ℚ), (-576310377/1250000000 : ℚ), (47945998309/500000000000 : ℚ), 4⟩,
    ⟨(117938404213/500000000000 : ℚ), (-4121681971/5000000000 : ℚ), (180852092301/1000000000000 : ℚ), 4⟩,
    ⟨(23948090183/100000000000 : ℚ), (-10831012221/10000000000 : ℚ), (121167929499/500000000000 : ℚ), 4⟩,
    ⟨(1213622501/5000000000 : ℚ), (-1587908357/1250000000 : ℚ), (57493362063/200000000000 : ℚ), 4⟩,
    ⟨(245482953869/1000000000000 : ℚ), (-14052748797/10000000000 : ℚ), (320403787773/1000000000000 : ℚ), 4⟩,
    ⟨(24765025701/100000000000 : ℚ), (-2998633101/2000000000 : ℚ), (343589638587/1000000000000 : ℚ), 4⟩,
    ⟨(124571560689/500000000000 : ℚ), (-1559067521/1000000000 : ℚ), (179215557651/500000000000 : ℚ), 4⟩,
    ⟨(249904177033/1000000000000 : ℚ), (-15881472117/10000000000 : ℚ), (91421782471/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7958734559/5000000000 : ℚ), (366586882333/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (96698738767/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control771.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control771.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate771

namespace DiagonalRamsey.JointInheritedCertificate792
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42133864207/250000000000 : ℚ), (5510003965309/10000000000 : ℚ), (-9304725314329/100000000000 : ℚ), 12⟩,
    ⟨(6765543203/40000000000 : ℚ), (584725889571/10000000000 : ℚ), (-1248005879929/125000000000 : ℚ), 9⟩,
    ⟨(2129020611/12500000000 : ℚ), (96365616597/5000000000 : ℚ), (-417285140309/125000000000 : ℚ), 7⟩,
    ⟨(43009799643/250000000000 : ℚ), (8560175757/1000000000 : ℚ), (-1506422689873/1000000000000 : ℚ), 7⟩,
    ⟨(174225224681/1000000000000 : ℚ), (20980487191/5000000000 : ℚ), (-375809680821/500000000000 : ℚ), 6⟩,
    ⟨(176795719449/1000000000000 : ℚ), (314334167/156250000 : ℚ), (-184294312549/500000000000 : ℚ), 5⟩,
    ⟨(179651900203/1000000000000 : ℚ), (3848584751/5000000000 : ℚ), (-147405900037/1000000000000 : ℚ), 5⟩,
    ⟨(182684005519/1000000000000 : ℚ), (-4486621/5000000000 : ℚ), (-157769759/20000000000 : ℚ), 5⟩,
    ⟨(18577551329/100000000000 : ℚ), (-1020300367/2000000000 : ℚ), (17176056567/200000000000 : ℚ), 5⟩,
    ⟨(94403809303/500000000000 : ℚ), (-2156248587/2500000000 : ℚ), (151844721411/1000000000000 : ℚ), 4⟩,
    ⟨(598949373/3125000000 : ℚ), (-11140143423/10000000000 : ℚ), (99838605007/500000000000 : ℚ), 4⟩,
    ⟨(12139643383/62500000000 : ℚ), (-2592786787/2000000000 : ℚ), (46971947287/200000000000 : ℚ), 4⟩,
    ⟨(196420320237/1000000000000 : ℚ), (-14281183221/10000000000 : ℚ), (260585870229/1000000000000 : ℚ), 4⟩,
    ⟨(19813786993/100000000000 : ℚ), (-7600374033/5000000000 : ℚ), (139362838627/500000000000 : ℚ), 4⟩,
    ⟨(39864187747/200000000000 : ℚ), (-15785787213/10000000000 : ℚ), (9073492801/31250000000 : ℚ), 4⟩,
    ⟨(199924061981/1000000000000 : ℚ), (-2008843833/1250000000 : ℚ), (148020119323/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16106036689/10000000000 : ℚ), (296745825087/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (456343183361/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control792.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control792.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate792

namespace DiagonalRamsey.JointInheritedCertificate801
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6780004243/40000000000 : ℚ), (5431278873801/10000000000 : ℚ), (-92236107386213/1000000000000 : ℚ), 12⟩,
    ⟨(5315148081/31250000000 : ℚ), (576374134473/10000000000 : ℚ), (-494652561609/50000000000 : ℚ), 9⟩,
    ⟨(42807884131/250000000000 : ℚ), (4747705759/250000000 : ℚ), (-3304923870653/1000000000000 : ℚ), 8⟩,
    ⟨(10806026817/62500000000 : ℚ), (84258789469/10000000000 : ℚ), (-1488977927307/1000000000000 : ℚ), 7⟩,
    ⟨(175015435347/1000000000000 : ℚ), (41204989691/10000000000 : ℚ), (-185189319119/250000000000 : ℚ), 6⟩,
    ⟨(22188390391/125000000000 : ℚ), (392925059/200000000 : ℚ), (-361092111097/1000000000000 : ℚ), 6⟩,
    ⟨(721102953/4000000000 : ℚ), (295308717/400000000 : ℚ), (-141875466129/1000000000000 : ℚ), 5⟩,
    ⟨(183214884387/1000000000000 : ℚ), (-229446803/10000000000 : ℚ), (-180855189/50000000000 : ℚ), 5⟩,
    ⟨(931058059/5000000000 : ℚ), (-5261936103/10000000000 : ℚ), (44645533123/500000000000 : ℚ), 5⟩,
    ⟨(189150757937/1000000000000 : ℚ), (-4372638261/5000000000 : ℚ), (77320196139/500000000000 : ℚ), 5⟩,
    ⟨(191919373059/1000000000000 : ℚ), (-1404093691/1250000000 : ℚ), (101010737289/500000000000 : ℚ), 4⟩,
    ⟨(4860276521/25000000000 : ℚ), (-13037191959/10000000000 : ℚ), (4737400073/20000000000 : ℚ), 4⟩,
    ⟨(39306013423/200000000000 : ℚ), (-3585245629/2500000000 : ℚ), (262352073873/1000000000000 : ℚ), 4⟩,
    ⟨(198194959663/1000000000000 : ℚ), (-15251487237/10000000000 : ℚ), (280320794867/1000000000000 : ℚ), 4⟩,
    ⟨(39868351519/200000000000 : ℚ), (-3957734753/2500000000 : ℚ), (58367624519/200000000000 : ℚ), 4⟩,
    ⟨(199926390111/1000000000000 : ℚ), (-16113238271/10000000000 : ℚ), (297473736953/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16148197211/10000000000 : ℚ), (149086393501/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (465109965367/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control801.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control801.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate801

namespace DiagonalRamsey.JointInheritedCertificate815
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127706553889/1000000000000 : ℚ), (1291260513877/10000000000 : ℚ), (-4144123763111/250000000000 : ℚ), 10⟩,
    ⟨(25877415941/200000000000 : ℚ), (119578227047/10000000000 : ℚ), (-1576690506007/1000000000000 : ℚ), 7⟩,
    ⟨(132492286517/1000000000000 : ℚ), (13712105851/5000000000 : ℚ), (-374547543703/1000000000000 : ℚ), 6⟩,
    ⟨(68274717367/500000000000 : ℚ), (79843587/312500000 : ℚ), (-8199479969/200000000000 : ℚ), 5⟩,
    ⟨(140940860321/1000000000000 : ℚ), (-7482957977/10000000000 : ℚ), (24497762477/250000000000 : ℚ), 5⟩,
    ⟨(72499004269/500000000000 : ℚ), (-12417008539/10000000000 : ℚ), (168451801821/1000000000000 : ℚ), 5⟩,
    ⟨(148103215349/1000000000000 : ℚ), (-14999119241/10000000000 : ℚ), (25784291489/125000000000 : ℚ), 4⟩,
    ⟨(74891870583/500000000000 : ℚ), (-8073172357/5000000000 : ℚ), (223359546057/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16284351629/10000000000 : ℚ), (56357038481/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (542018524627/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control815.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control815.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate815

namespace DiagonalRamsey.JointInheritedCertificate853
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8714924203/100000000000 : ℚ), (594621083219/5000000000 : ℚ), (-10409958899507/1000000000000 : ℚ), 11⟩,
    ⟨(44058979297/500000000000 : ℚ), (54701638439/5000000000 : ℚ), (-979762666359/1000000000000 : ℚ), 8⟩,
    ⟨(1404811147/15625000000 : ℚ), (4844529317/2000000000 : ℚ), (-223948361119/1000000000000 : ℚ), 7⟩,
    ⟨(23061650519/250000000000 : ℚ), (1132582059/10000000000 : ℚ), (-1417953623/100000000000 : ℚ), 6⟩,
    ⟨(94777980449/1000000000000 : ℚ), (-2059671463/2500000000 : ℚ), (73302022891/1000000000000 : ℚ), 5⟩,
    ⟨(48558334559/500000000000 : ℚ), (-12873343121/10000000000 : ℚ), (58863484311/500000000000 : ℚ), 5⟩,
    ⟨(98906623931/1000000000000 : ℚ), (-3828365679/2500000000 : ℚ), (14163312917/100000000000 : ℚ), 5⟩,
    ⟨(6242208781/62500000000 : ℚ), (-16402642677/10000000000 : ℚ), (152457552529/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16533928741/10000000000 : ℚ), (153769592959/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (657496359023/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control853.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control853.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate853

namespace DiagonalRamsey.JointInheritedCertificate860
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21934834579/250000000000 : ℚ), (1165368234843/10000000000 : ℚ), (-5133820007867/500000000000 : ℚ), 11⟩,
    ⟨(88663572209/1000000000000 : ℚ), (107014022613/10000000000 : ℚ), (-963489946831/1000000000000 : ℚ), 8⟩,
    ⟨(90371333763/1000000000000 : ℚ), (4692666659/2000000000 : ℚ), (-108906864949/500000000000 : ℚ), 7⟩,
    ⟨(46301315881/500000000000 : ℚ), (158367771/2000000000 : ℚ), (-5447174423/500000000000 : ℚ), 6⟩,
    ⟨(95017771313/1000000000000 : ℚ), (-4209660657/5000000000 : ℚ), (75374018787/1000000000000 : ℚ), 6⟩,
    ⟨(379879177/3906250000 : ℚ), (-12979624883/10000000000 : ℚ), (119173169921/1000000000000 : ℚ), 5⟩,
    ⟨(19791366173/200000000000 : ℚ), (-3076639039/2000000000 : ℚ), (71371839823/500000000000 : ℚ), 5⟩,
    ⟨(49940532379/500000000000 : ℚ), (-16457043033/10000000000 : ℚ), (15341878639/100000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16586535537/10000000000 : ℚ), (154712939593/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (668202358011/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control860.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control860.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate860

namespace DiagonalRamsey.JointInheritedCertificate868
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(88379437371/1000000000000 : ℚ), (1143399761957/10000000000 : ℚ), (-40580571609/4000000000 : ℚ), 11⟩,
    ⟨(89255419281/1000000000000 : ℚ), (104840103181/10000000000 : ℚ), (-949462557567/1000000000000 : ℚ), 8⟩,
    ⟨(18174804559/200000000000 : ℚ), (22784263263/10000000000 : ℚ), (-106260366959/500000000000 : ℚ), 7⟩,
    ⟨(46494415101/500000000000 : ℚ), (247195511/5000000000 : ℚ), (-8067876499/1000000000000 : ℚ), 6⟩,
    ⟨(23819470311/250000000000 : ℚ), (-857141701/1000000000 : ℚ), (38569796947/500000000000 : ℚ), 6⟩,
    ⟨(97392688651/1000000000000 : ℚ), (-6532120699/5000000000 : ℚ), (120383504671/1000000000000 : ℚ), 5⟩,
    ⟨(49505646083/500000000000 : ℚ), (-3858635229/2500000000 : ℚ), (71825863003/500000000000 : ℚ), 5⟩,
    ⟨(3995490963/40000000000 : ℚ), (-16494382601/10000000000 : ℚ), (301154039/1953125000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-8311116961/5000000000 : ℚ), (155468658907/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (339460345119/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control868.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control868.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate868

namespace DiagonalRamsey.JointInheritedCertificate875
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17804193541/200000000000 : ℚ), (1117462559397/10000000000 : ℚ), (-9984524537333/1000000000000 : ℚ), 11⟩,
    ⟨(89848589739/1000000000000 : ℚ), (25557983649/2500000000 : ℚ), (-931187836433/1000000000000 : ℚ), 8⟩,
    ⟨(45688917927/500000000000 : ℚ), (10976485739/5000000000 : ℚ), (-102843495891/500000000000 : ℚ), 7⟩,
    ⟨(2917996631/31250000000 : ℚ), (24311277/2000000000 : ℚ), (-4441529701/1000000000000 : ℚ), 6⟩,
    ⟨(95538572789/1000000000000 : ℚ), (-8768215113/10000000000 : ℚ), (4962916333/62500000000 : ℚ), 6⟩,
    ⟨(97536629127/1000000000000 : ℚ), (-3294765987/2500000000 : ℚ), (24390585281/200000000000 : ℚ), 6⟩,
    ⟨(99065875243/1000000000000 : ℚ), (-15508967689/10000000000 : ℚ), (579392913/4000000000 : ℚ), 6⟩,
    ⟨(99893497277/1000000000000 : ℚ), (-517244549/312500000 : ℚ), (9701356731/62500000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16677687921/10000000000 : ℚ), (156479659469/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (689670181327/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control875.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control875.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate875

namespace DiagonalRamsey.JointInheritedCertificate881
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(89711778607/1000000000000 : ℚ), (1092583047813/10000000000 : ℚ), (-2458876098053/250000000000 : ℚ), 12⟩,
    ⟨(45243662947/500000000000 : ℚ), (49873243423/5000000000 : ℚ), (-457121009099/500000000000 : ℚ), 9⟩,
    ⟨(11490043803/125000000000 : ℚ), (10584779509/5000000000 : ℚ), (-99681018903/500000000000 : ℚ), 7⟩,
    ⟨(23448171801/250000000000 : ℚ), (-44789061/2000000000 : ℚ), (-275123211/250000000000 : ℚ), 7⟩,
    ⟨(9581928993/100000000000 : ℚ), (-1118237801/1250000000 : ℚ), (20369191651/250000000000 : ℚ), 6⟩,
    ⟨(97691626709/1000000000000 : ℚ), (-663928887/500000000 : ℚ), (123365616569/1000000000000 : ℚ), 6⟩,
    ⟨(99124651239/1000000000000 : ℚ), (-973116353/625000000 : ℚ), (145906425443/1000000000000 : ℚ), 6⟩,
    ⟨(99900198527/1000000000000 : ℚ), (-1037277237/625000000 : ℚ), (78060672837/500000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1672038853/1000000000 : ℚ), (78680126563/500000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (700437003851/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control881.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control881.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate881

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
theorem certOK : JointInheritedControls.control905.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control905.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate905

namespace DiagonalRamsey.JointInheritedCertificate910
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23549755811/500000000000 : ℚ), (1019276827543/10000000000 : ℚ), (-4810808269427/1000000000000 : ℚ), 14⟩,
    ⟨(47318156401/1000000000000 : ℚ), (46593830229/5000000000 : ℚ), (-44519656413/100000000000 : ℚ), 10⟩,
    ⟨(23861079637/500000000000 : ℚ), (9747434543/5000000000 : ℚ), (-2386856903/25000000000 : ℚ), 9⟩,
    ⟨(9650002893/200000000000 : ℚ), (-5573581/78125000 : ℚ), (278769207/200000000000 : ℚ), 8⟩,
    ⟨(24410680403/500000000000 : ℚ), (-9008481587/10000000000 : ℚ), (41624673727/1000000000000 : ℚ), 8⟩,
    ⟨(49349215997/1000000000000 : ℚ), (-13150264523/10000000000 : ℚ), (61946144699/1000000000000 : ℚ), 8⟩,
    ⟨(49753218869/1000000000000 : ℚ), (-7674082937/5000000000 : ℚ), (36417531239/500000000000 : ℚ), 8⟩,
    ⟨(49971863649/1000000000000 : ℚ), (-408376981/250000000 : ℚ), (2429870563/31250000000 : ℚ), 8⟩,
    ⟨(1/20 : ℚ), (-4113588509/2500000000 : ℚ), (78352063829/1000000000000 : ℚ), 8⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (937499/1000000 : ℚ)
  x := (21088998803/25000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control910.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control910.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate910
