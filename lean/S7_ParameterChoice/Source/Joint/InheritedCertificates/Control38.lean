import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate38
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (38673819543293/973394258560200 : ℚ), (435419942829/400000000 : ℚ), (-8665674749929/200000000000 : ℚ)⟩,
  ⟨(38673819543293/973394258560200 : ℚ), (1547299870189/38660777150950 : ℚ), (1151555985123/10000000000 : ℚ), (-290909637897/62500000000 : ℚ)⟩,
  ⟨(1547299870189/38660777150950 : ℚ), (853457022157/21073099326300 : ℚ), (47292555263/1250000000 : ℚ), (-779977232987/500000000000 : ℚ)⟩,
  ⟨(853457022157/21073099326300 : ℚ), (35214853873/855915977830 : ℚ), (167609448841/10000000000 : ℚ), (-706497443817/1000000000000 : ℚ)⟩,
  ⟨(35214853873/855915977830 : ℚ), (89594108351/2136917400250 : ℚ), (41008925529/5000000000 : ℚ), (-354348905087/1000000000000 : ℚ)⟩,
  ⟨(89594108351/2136917400250 : ℚ), (6928762897/161805876080 : ℚ), (39279503053/10000000000 : ℚ), (-35032137677/200000000000 : ℚ)⟩,
  ⟨(6928762897/161805876080 : ℚ), (6596313361/150626779780 : ℚ), (15008621641/10000000000 : ℚ), (-7122924493/100000000000 : ℚ)⟩,
  ⟨(6596313361/150626779780 : ℚ), (11167094411/249252561075 : ℚ), (-54056337/10000000000 : ℚ), (-131652783/25000000000 : ℚ)⟩,
  ⟨(11167094411/249252561075 : ℚ), (395988657/8643742990 : ℚ), (-501207939/500000000 : ℚ), (9850566581/250000000000 : ℚ)⟩,
  ⟨(395988657/8643742990 : ℚ), (23148892517/494813840600 : ℚ), (-4234788293/2500000000 : ℚ), (17770339721/250000000000 : ℚ)⟩,
  ⟨(23148892517/494813840600 : ℚ), (17136341043/359421852800 : ℚ), (-10943645789/5000000000 : ℚ), (94230251401/1000000000000 : ℚ)⟩,
  ⟨(17136341043/359421852800 : ℚ), (12588315601/259760426900 : ℚ), (-12740755053/5000000000 : ℚ), (27841648111/250000000000 : ℚ)⟩,
  ⟨(12588315601/259760426900 : ℚ), (4450486227/90633494000 : ℚ), (-44926583/16000000 : ℚ), (24790981609/200000000000 : ℚ)⟩,
  ⟨(4450486227/90633494000 : ℚ), (5712523771/115214085200 : ℚ), (-5978356851/2000000000 : ℚ), (132855880499/1000000000000 : ℚ)⟩,
  ⟨(5712523771/115214085200 : ℚ), (2796422161/56067652400 : ℚ), (-31043925107/10000000000 : ℚ), (13856840427/100000000000 : ℚ)⟩,
  ⟨(2796422161/56067652400 : ℚ), (43362674/867469375 : ℚ), (-31604601631/10000000000 : ℚ), (141364826431/1000000000000 : ℚ)⟩,
  ⟨(43362674/867469375 : ℚ), (1/20 : ℚ), (-31673999181/10000000000 : ℚ), (141711727823/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8326000819/40000000000 : ℚ), (-1/5 : ℚ), (91670865959/500000000000 : ℚ)⟩,
  ⟨(8326000819/40000000000 : ℚ), (8395398369/40000000000 : ℚ), (-173450696/867469375 : ℚ), (6361373995543636849/34698775000000000000 : ℚ)⟩,
  ⟨(8395398369/40000000000 : ℚ), (8956074893/40000000000 : ℚ), (-2796422161/14016913100 : ℚ), (102737017548691261253/560676524000000000000 : ℚ)⟩,
  ⟨(8956074893/40000000000 : ℚ), (2021643149/8000000000 : ℚ), (-5712523771/28803521300 : ℚ), (210812110077037019543/1152140852000000000000 : ℚ)⟩,
  ⟨(2021643149/8000000000 : ℚ), (19073417/64000000 : ℚ), (-4450486227/22658373500 : ℚ), (6615936057335015167/36253397600000000000 : ℚ)⟩,
  ⟨(19073417/64000000 : ℚ), (7259244947/20000000000 : ℚ), (-12588315601/64940106725 : ℚ), (47204966879211857973/259760426900000000000 : ℚ)⟩,
  ⟨(7259244947/20000000000 : ℚ), (9056354211/20000000000 : ℚ), (-17136341043/89855463200 : ℚ), (324534832107691260937/1797109264000000000000 : ℚ)⟩,
  ⟨(9056354211/20000000000 : ℚ), (5765211707/10000000000 : ℚ), (-23148892517/123703460150 : ℚ), (44277673320848104249/247406920300000000000 : ℚ)⟩,
  ⟨(5765211707/10000000000 : ℚ), (1498792061/2000000000 : ℚ), (-791977314/4321871495 : ℚ), (38189809351087305569/216093574750000000000 : ℚ)⟩,
  ⟨(1498792061/2000000000 : ℚ), (39945943663/40000000000 : ℚ), (-44668377644/249252561075 : ℚ), (432954206887047678803/2492525610750000000000 : ℚ)⟩,
  ⟨(39945943663/40000000000 : ℚ), (55008621641/40000000000 : ℚ), (-6596313361/37656694945 : ℚ), (255563788001054130247/1506267797800000000000 : ℚ)⟩,
  ⟨(55008621641/40000000000 : ℚ), (79279503053/40000000000 : ℚ), (-6928762897/40451469020 : ℚ), (265888592857116571233/1618058760800000000000 : ℚ)⟩,
  ⟨(79279503053/40000000000 : ℚ), (61008925529/20000000000 : ℚ), (-179188216702/1068458700125 : ℚ), (6719874316094343169281/42738348005000000000000 : ℚ)⟩,
  ⟨(61008925529/20000000000 : ℚ), (207609448841/40000000000 : ℚ), (-70429707746/427957988915 : ℚ), (12639118989996537854219/85591597783000000000000 : ℚ)⟩,
  ⟨(207609448841/40000000000 : ℚ), (52292555263/5000000000 : ℚ), (-853457022157/5268274831575 : ℚ), (14152416953084473482583/105365496631500000000000 : ℚ)⟩,
  ⟨(52292555263/5000000000 : ℚ), (1191555985123/40000000000 : ℚ), (-3094599740378/19330388575475 : ℚ), (44207592015827785669903/386607771509500000000000 : ℚ)⟩,
  ⟨(1191555985123/40000000000 : ℚ), (32/1 : ℚ), (-38673819543293/243348564640050 : ℚ), (154971547634993726057227/1946788517120400000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (243801060407/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(19847227503/500000000000 : ℚ), (435419942829/400000000 : ℚ), (-8665674749929/200000000000 : ℚ), 10⟩,
    ⟨(39891995257/1000000000000 : ℚ), (1151555985123/10000000000 : ℚ), (-290909637897/62500000000 : ℚ), 7⟩,
    ⟨(20139742199/500000000000 : ℚ), (47292555263/1250000000 : ℚ), (-779977232987/500000000000 : ℚ), 5⟩,
    ⟨(20421015719/500000000000 : ℚ), (167609448841/10000000000 : ℚ), (-706497443817/1000000000000 : ℚ), 5⟩,
    ⟨(41558018011/1000000000000 : ℚ), (41008925529/5000000000 : ℚ), (-354348905087/1000000000000 : ℚ), 4⟩,
    ⟨(42399929153/1000000000000 : ℚ), (39279503053/10000000000 : ℚ), (-35032137677/200000000000 : ℚ), 4⟩,
    ⟨(10833852673/250000000000 : ℚ), (15008621641/10000000000 : ℚ), (-7122924493/100000000000 : ℚ), 3⟩,
    ⟨(44328512597/1000000000000 : ℚ), (-54056337/10000000000 : ℚ), (-131652783/25000000000 : ℚ), 3⟩,
    ⟨(45341070519/1000000000000 : ℚ), (-501207939/500000000 : ℚ), (9850566581/250000000000 : ℚ), 3⟩,
    ⟨(5791771553/125000000000 : ℚ), (-4234788293/2500000000 : ℚ), (17770339721/250000000000 : ℚ), 3⟩,
    ⟨(47269653963/1000000000000 : ℚ), (-10943645789/5000000000 : ℚ), (94230251401/1000000000000 : ℚ), 2⟩,
    ⟨(9622313021/200000000000 : ℚ), (-12740755053/5000000000 : ℚ), (27841648111/250000000000 : ℚ), 2⟩,
    ⟨(48827551677/1000000000000 : ℚ), (-44926583/16000000 : ℚ), (24790981609/200000000000 : ℚ), 2⟩,
    ⟨(24695049359/500000000000 : ℚ), (-5978356851/2000000000 : ℚ), (132855880499/1000000000000 : ℚ), 2⟩,
    ⟨(49777587859/1000000000000 : ℚ), (-31043925107/10000000000 : ℚ), (13856840427/100000000000 : ℚ), 2⟩,
    ⟨(4997512811/100000000000 : ℚ), (-31604601631/10000000000 : ℚ), (141364826431/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31673999181/10000000000 : ℚ), (141711727823/1000000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control38.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control38.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate38
