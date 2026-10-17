import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate633
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (27927866957337/119025158219525 : ℚ), (5326268591671/10000000000 : ℚ), (-62612999002537/500000000000 : ℚ)⟩,
  ⟨(27927866957337/119025158219525 : ℚ), (8937791376053/37792876230100 : ℚ), (56526226289/1000000000 : ℚ), (-6757265087863/500000000000 : ℚ)⟩,
  ⟨(8937791376053/37792876230100 : ℚ), (68431541499/285688464200 : ℚ), (187333500589/10000000000 : ℚ), (-4576738799673/1000000000000 : ℚ)⟩,
  ⟨(68431541499/285688464200 : ℚ), (126870097086/520761297125 : ℚ), (84485653477/10000000000 : ℚ), (-2113203305709/1000000000000 : ℚ)⟩,
  ⟨(126870097086/520761297125 : ℚ), (5149140990/20711495099 : ℚ), (42824749707/10000000000 : ℚ), (-1098242529021/1000000000000 : ℚ)⟩,
  ⟨(5149140990/20711495099 : ℚ), (11887533407/46745047812 : ℚ), (1382078413/625000000 : ℚ), (-583328430021/1000000000000 : ℚ)⟩,
  ⟨(11887533407/46745047812 : ℚ), (187294284691/719022600000 : ℚ), (2085398531/2000000000 : ℚ), (-143070047423/500000000000 : ℚ)⟩,
  ⟨(187294284691/719022600000 : ℚ), (15712739087/58868735675 : ℚ), (647353331/2000000000 : ℚ), (-19769162031/200000000000 : ℚ)⟩,
  ⟨(15712739087/58868735675 : ℚ), (22061759581/80712154725 : ℚ), (-1472732199/10000000000 : ℚ), (26856102541/1000000000000 : ℚ)⟩,
  ⟨(22061759581/80712154725 : ℚ), (6381500083/22830315630 : ℚ), (-1175304597/2500000000 : ℚ), (23020628173/200000000000 : ℚ)⟩,
  ⟨(6381500083/22830315630 : ℚ), (9356510171/32805328180 : ℚ), (-6984249951/10000000000 : ℚ), (35783628339/200000000000 : ℚ)⟩,
  ⟨(9356510171/32805328180 : ℚ), (17042040811/58724564100 : ℚ), (-215612909/250000000 : ℚ), (4514013851/20000000000 : ℚ)⟩,
  ⟨(17042040811/58724564100 : ℚ), (23947949661/81373513100 : ℚ), (-4899503821/5000000000 : ℚ), (64946193543/250000000000 : ℚ)⟩,
  ⟨(23947949661/81373513100 : ℚ), (15302761603/51465960700 : ℚ), (-10612742773/10000000000 : ℚ), (283732723833/1000000000000 : ℚ)⟩,
  ⟨(15302761603/51465960700 : ℚ), (3736219341/12486961600 : ℚ), (-556370119/500000000 : ℚ), (74758871359/250000000000 : ℚ)⟩,
  ⟨(3736219341/12486961600 : ℚ), (926131559/3087920500 : ℚ), (-2844285403/2500000000 : ℚ), (153253962059/500000000000 : ℚ)⟩,
  ⟨(926131559/3087920500 : ℚ), (3/10 : ℚ), (-11408020817/10000000000 : ℚ), (307434055677/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3591979183/15000000000 : ℚ), (-9/20 : ℚ), (415193431167/1000000000000 : ℚ)⟩,
  ⟨(3591979183/15000000000 : ℚ), (905714597/3750000000 : ℚ), (-2778394677/6175841000 : ℚ), (6409982254939416541/15439602500000000000 : ℚ)⟩,
  ⟨(905714597/3750000000 : ℚ), (193629881/750000000 : ℚ), (-11208658023/24973923200 : ℚ), (12952330091130370249/31217404000000000000 : ℚ)⟩,
  ⟨(193629881/750000000 : ℚ), (4387257227/15000000000 : ℚ), (-45908284809/102931921400 : ℚ), (208166917555421063/502597272460937500 : ℚ)⟩,
  ⟨(4387257227/15000000000 : ℚ), (2600496179/7500000000 : ℚ), (-71843848983/162747026200 : ℚ), (33594910041928752717/81373513100000000000 : ℚ)⟩,
  ⟨(2600496179/7500000000 : ℚ), (159387091/375000000 : ℚ), (-17042040811/39149709400 : ℚ), (24119300025341150659/58724564100000000000 : ℚ)⟩,
  ⟨(159387091/375000000 : ℚ), (2671916683/5000000000 : ℚ), (-28069530513/65610656360 : ℚ), (13369413041826441303/32805328180000000000 : ℚ)⟩,
  ⟨(2671916683/5000000000 : ℚ), (858231801/1250000000 : ℚ), (-6381500083/15220210420 : ℚ), (61333390714199923997/152202104200000000000 : ℚ)⟩,
  ⟨(858231801/1250000000 : ℚ), (4509089267/5000000000 : ℚ), (-22061759581/53808103150 : ℚ), (426815292065948170591/1076162063000000000000 : ℚ)⟩,
  ⟨(4509089267/5000000000 : ℚ), (3647353331/3000000000 : ℚ), (-47138217261/117737471350 : ℚ), (182688222027645988951/470949885400000000000 : ℚ)⟩,
  ⟨(3647353331/3000000000 : ℚ), (5085398531/3000000000 : ℚ), (-187294284691/479348400000 : ℚ), (540983690311472149721/1438045200000000000000 : ℚ)⟩,
  ⟨(5085398531/3000000000 : ℚ), (2319578413/937500000 : ℚ), (-11887533407/31163365208 : ℚ), (4212697512019781945387/11686261953000000000000 : ℚ)⟩,
  ⟨(2319578413/937500000 : ℚ), (19274916569/5000000000 : ℚ), (-7723711485/20711495099 : ℚ), (7028534137948612224921/20711495099000000000000 : ℚ)⟩,
  ⟨(19274916569/5000000000 : ℚ), (99485653477/15000000000 : ℚ), (-190305145629/520761297125 : ℚ), (6468038278370303560623/20830451885000000000000 : ℚ)⟩,
  ⟨(99485653477/15000000000 : ℚ), (202333500589/15000000000 : ℚ), (-205294624497/571376928400 : ℚ), (154155710992557224169/571376928400000000000 : ℚ)⟩,
  ⟨(202333500589/15000000000 : ℚ), (32/1 : ℚ), (-26813374128159/75585752460200 : ℚ), (19683346678899380616911/94482190575250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (41528730399/125000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(23440647607/100000000000 : ℚ), (5326268591671/10000000000 : ℚ), (-62612999002537/500000000000 : ℚ), 11⟩,
    ⟨(7364493607/31250000000 : ℚ), (56526226289/1000000000 : ℚ), (-6757265087863/500000000000 : ℚ), 8⟩,
    ⟨(47626023211/200000000000 : ℚ), (187333500589/10000000000 : ℚ), (-4576738799673/1000000000000 : ℚ), 6⟩,
    ⟨(60427664661/250000000000 : ℚ), (84485653477/10000000000 : ℚ), (-2113203305709/1000000000000 : ℚ), 5⟩,
    ⟨(246267824947/1000000000000 : ℚ), (42824749707/10000000000 : ℚ), (-1098242529021/1000000000000 : ℚ), 5⟩,
    ⟨(251626485619/1000000000000 : ℚ), (1382078413/625000000 : ℚ), (-583328430021/1000000000000 : ℚ), 4⟩,
    ⟨(4024698599/15625000000 : ℚ), (2085398531/2000000000 : ℚ), (-143070047423/500000000000 : ℚ), 4⟩,
    ⟨(13195084079/50000000000 : ℚ), (647353331/2000000000 : ℚ), (-19769162031/200000000000 : ℚ), 4⟩,
    ⟨(67586621993/250000000000 : ℚ), (-1472732199/10000000000 : ℚ), (26856102541/1000000000000 : ℚ), 4⟩,
    ⟨(17291716201/62500000000 : ℚ), (-1175304597/2500000000 : ℚ), (23020628173/200000000000 : ℚ), 3⟩,
    ⟨(282621683933/1000000000000 : ℚ), (-6984249951/10000000000 : ℚ), (35783628339/200000000000 : ℚ), 3⟩,
    ⟨(57596068921/200000000000 : ℚ), (-215612909/250000000 : ℚ), (4514013851/20000000000 : ℚ), 3⟩,
    ⟨(73134377727/250000000000 : ℚ), (-4899503821/5000000000 : ℚ), (64946193543/250000000000 : ℚ), 3⟩,
    ⟨(296118053497/1000000000000 : ℚ), (-10612742773/10000000000 : ℚ), (283732723833/1000000000000 : ℚ), 3⟩,
    ⟨(18661523383/62500000000 : ℚ), (-556370119/500000000 : ℚ), (74758871359/250000000000 : ℚ), 3⟩,
    ⟨(149920846741/500000000000 : ℚ), (-2844285403/2500000000 : ℚ), (153253962059/500000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-11408020817/10000000000 : ℚ), (307434055677/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control633.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control633.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate633
