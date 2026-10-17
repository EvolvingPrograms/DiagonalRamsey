import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate18
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (15922270648561/202398743115160 : ℚ), (11317411560727/10000000000 : ℚ), (-89203169601701/1000000000000 : ℚ)⟩,
  ⟨(15922270648561/202398743115160 : ℚ), (6370194727027/80357161215700 : ℚ), (1197474404969/10000000000 : ℚ), (-599488522431/62500000000 : ℚ)⟩,
  ⟨(6370194727027/80357161215700 : ℚ), (1756662572367/21885757846600 : ℚ), (98475698203/2500000000 : ℚ), (-3221621631869/1000000000000 : ℚ)⟩,
  ⟨(1756662572367/21885757846600 : ℚ), (144930943107/1776095762540 : ℚ), (87522607173/5000000000 : ℚ), (-732479529751/500000000000 : ℚ)⟩,
  ⟨(144930943107/1776095762540 : ℚ), (36857702473/442845692940 : ℚ), (86240426219/10000000000 : ℚ), (-740304343967/1000000000000 : ℚ)⟩,
  ⟨(36857702473/442845692940 : ℚ), (19421611287/228254240200 : ℚ), (1678234277/400000000 : ℚ), (-371727319237/1000000000000 : ℚ)⟩,
  ⟨(19421611287/228254240200 : ℚ), (13546788391/155523240240 : ℚ), (16847890503/10000000000 : ℚ), (-3952239877/25000000000 : ℚ)⟩,
  ⟨(13546788391/155523240240 : ℚ), (30543024523/342401342400 : ℚ), (1295566479/10000000000 : ℚ), (-2262171117/100000000000 : ℚ)⟩,
  ⟨(30543024523/342401342400 : ℚ), (21631528271/236927596800 : ℚ), (-8976473793/10000000000 : ℚ), (69007362399/1000000000000 : ℚ)⟩,
  ⟨(21631528271/236927596800 : ℚ), (1007387177/10795328000 : ℚ), (-16084301697/10000000000 : ℚ), (33475486803/250000000000 : ℚ)⟩,
  ⟨(1007387177/10795328000 : ℚ), (2187009579/22978793200 : ℚ), (-21158105857/10000000000 : ℚ), (181249144531/1000000000000 : ℚ)⟩,
  ⟨(2187009579/22978793200 : ℚ), (5132714429/53022117280 : ℚ), (-24834712769/10000000000 : ℚ), (43248259559/200000000000 : ℚ)⟩,
  ⟨(5132714429/53022117280 : ℚ), (3623935347/36926560000 : ℚ), (-27485818633/10000000000 : ℚ), (12095243497/50000000000 : ℚ)⟩,
  ⟨(3623935347/36926560000 : ℚ), (120992997/1220533750 : ℚ), (-29332146633/10000000000 : ℚ), (10400981867/40000000000 : ℚ)⟩,
  ⟨(120992997/1220533750 : ℚ), (5681674409/56963658400 : ℚ), (-30503859033/10000000000 : ℚ), (271639874387/1000000000000 : ℚ)⟩,
  ⟨(5681674409/56963658400 : ℚ), (88076698/880994725 : ℚ), (-31073495617/10000000000 : ℚ), (69330387199/250000000000 : ℚ)⟩,
  ⟨(88076698/880994725 : ℚ), (1/10 : ℚ), (-6228795039/2000000000 : ℚ), (13901308119/50000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1771204961/8000000000 : ℚ), (-2/5 : ℚ), (36658641043/100000000000 : ℚ)⟩,
  ⟨(1771204961/8000000000 : ℚ), (8926504383/40000000000 : ℚ), (-352306792/880994725 : ℚ), (645881049383645669/1761989450000000000 : ℚ)⟩,
  ⟨(8926504383/40000000000 : ℚ), (9496140967/40000000000 : ℚ), (-5681674409/14240914600 : ℚ), (208689991240460187511/569636584000000000000 : ℚ)⟩,
  ⟨(9496140967/40000000000 : ℚ), (10667853367/40000000000 : ℚ), (-241985994/610266875 : ℚ), (8928845801765497423/24410675000000000000 : ℚ)⟩,
  ⟨(10667853367/40000000000 : ℚ), (12514181367/40000000000 : ℚ), (-3623935347/9231640000 : ℚ), (134677731135956143349/369265600000000000000 : ℚ)⟩,
  ⟨(12514181367/40000000000 : ℚ), (15165287231/40000000000 : ℚ), (-5132714429/13255529320 : ℚ), (7699792124605684403/21208846912000000000 : ℚ)⟩,
  ⟨(15165287231/40000000000 : ℚ), (18841894143/40000000000 : ℚ), (-2187009579/5744698300 : ℚ), (82856269075792595689/229787932000000000000 : ℚ)⟩,
  ⟨(18841894143/40000000000 : ℚ), (23915698303/40000000000 : ℚ), (-1007387177/2698832000 : ℚ), (38547522199365115991/107953280000000000000 : ℚ)⟩,
  ⟨(23915698303/40000000000 : ℚ), (31023526207/40000000000 : ℚ), (-21631528271/59231899200 : ℚ), (834583769559847425329/2369275968000000000000 : ℚ)⟩,
  ⟨(31023526207/40000000000 : ℚ), (41295566479/40000000000 : ℚ), (-30543024523/85600335600 : ℚ), (1183834456939343018437/3424013424000000000000 : ℚ)⟩,
  ⟨(41295566479/40000000000 : ℚ), (56847890503/40000000000 : ℚ), (-13546788391/38880810060 : ℚ), (524240282368167930481/1555232402400000000000 : ℚ)⟩,
  ⟨(56847890503/40000000000 : ℚ), (3278234277/1600000000 : ℚ), (-19421611287/57063560050 : ℚ), (743231427750094325201/2282542402000000000000 : ℚ)⟩,
  ⟨(3278234277/1600000000 : ℚ), (126240426219/40000000000 : ℚ), (-36857702473/110711423235 : ℚ), (1145438473115856753881/3690380774500000000000 : ℚ)⟩,
  ⟨(126240426219/40000000000 : ℚ), (107522607173/20000000000 : ℚ), (-144930943107/444023940635 : ℚ), (6434537433814858733089/22201197031750000000000 : ℚ)⟩,
  ⟨(107522607173/20000000000 : ℚ), (108475698203/10000000000 : ℚ), (-1756662572367/5471439461650 : ℚ), (1142889741876414473861/4377151569320000000000 : ℚ)⟩,
  ⟨(108475698203/10000000000 : ℚ), (1237474404969/40000000000 : ℚ), (-6370194727027/20089290303925 : ℚ), (175241594332453778698491/803571612157000000000000 : ℚ)⟩,
  ⟨(1237474404969/40000000000 : ℚ), (32/1 : ℚ), (-15922270648561/50599685778790 : ℚ), (1448433221317943974574877/10119937155758000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (73735825209/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(78592152799/1000000000000 : ℚ), (11317411560727/10000000000 : ℚ), (-89203169601701/1000000000000 : ℚ), 10⟩,
    ⟨(39501252909/500000000000 : ℚ), (1197474404969/10000000000 : ℚ), (-599488522431/62500000000 : ℚ), 7⟩,
    ⟨(39903721111/500000000000 : ℚ), (98475698203/2500000000 : ℚ), (-3221621631869/1000000000000 : ℚ), 5⟩,
    ⟨(80976028753/1000000000000 : ℚ), (87522607173/5000000000 : ℚ), (-732479529751/500000000000 : ℚ), 4⟩,
    ⟨(82463357289/1000000000000 : ℚ), (86240426219/10000000000 : ℚ), (-740304343967/1000000000000 : ℚ), 4⟩,
    ⟨(84212270627/1000000000000 : ℚ), (1678234277/400000000 : ℚ), (-371727319237/1000000000000 : ℚ), 3⟩,
    ⟨(2692361219/31250000000 : ℚ), (16847890503/10000000000 : ℚ), (-3952239877/25000000000 : ℚ), 3⟩,
    ⟨(1764370859/20000000000 : ℚ), (1295566479/10000000000 : ℚ), (-2262171117/100000000000 : ℚ), 3⟩,
    ⟨(2822560723/31250000000 : ℚ), (-8976473793/10000000000 : ℚ), (69007362399/1000000000000 : ℚ), 2⟩,
    ⟨(46192463539/500000000000 : ℚ), (-16084301697/10000000000 : ℚ), (33475486803/250000000000 : ℚ), 2⟩,
    ⟨(4716410773/50000000000 : ℚ), (-21158105857/10000000000 : ℚ), (181249144531/1000000000000 : ℚ), 2⟩,
    ⟨(96077128797/1000000000000 : ℚ), (-24834712769/10000000000 : ℚ), (43248259559/200000000000 : ℚ), 2⟩,
    ⟨(97564457333/1000000000000 : ℚ), (-27485818633/10000000000 : ℚ), (12095243497/50000000000 : ℚ), 2⟩,
    ⟨(19746608773/200000000000 : ℚ), (-29332146633/10000000000 : ℚ), (10400981867/40000000000 : ℚ), 2⟩,
    ⟨(24884495067/250000000000 : ℚ), (-30503859033/10000000000 : ℚ), (271639874387/1000000000000 : ℚ), 2⟩,
    ⟨(12493541661/125000000000 : ℚ), (-31073495617/10000000000 : ℚ), (69330387199/250000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-6228795039/2000000000 : ℚ), (13901308119/50000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control18.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control18.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate18
