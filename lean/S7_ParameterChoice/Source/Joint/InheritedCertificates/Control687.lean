import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate687
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (11468227859039/72924933407750 : ℚ), (4894376290799/10000000000 : ℚ), (-77119139871461/1000000000000 : ℚ)⟩,
  ⟨(11468227859039/72924933407750 : ℚ), (344094560551/2171297054300 : ℚ), (259440143167/5000000000 : ℚ), (-8309772717227/1000000000000 : ℚ)⟩,
  ⟨(344094560551/2171297054300 : ℚ), (758886197213/4729418757800 : ℚ), (85736378823/5000000000 : ℚ), (-2804259748411/1000000000000 : ℚ)⟩,
  ⟨(758886197213/4729418757800 : ℚ), (156404296631/958730943075 : ℚ), (7688438249/1000000000 : ℚ), (-257297470797/200000000000 : ℚ)⟩,
  ⟨(156404296631/958730943075 : ℚ), (158850522349/954636758550 : ℚ), (38535144767/10000000000 : ℚ), (-660870167461/1000000000000 : ℚ)⟩,
  ⟨(158850522349/954636758550 : ℚ), (36733397249/215924069340 : ℚ), (4860602399/2500000000 : ℚ), (-343169122763/1000000000000 : ℚ)⟩,
  ⟨(36733397249/215924069340 : ℚ), (116033912603/666239600200 : ℚ), (8646206129/10000000000 : ℚ), (-79751068259/500000000000 : ℚ)⟩,
  ⟨(116033912603/666239600200 : ℚ), (78130247827/438035261400 : ℚ), (1983810127/10000000000 : ℚ), (-8693644783/200000000000 : ℚ)⟩,
  ⟨(78130247827/438035261400 : ℚ), (18356110701/100543898800 : ℚ), (-2396542487/10000000000 : ℚ), (4332752989/125000000000 : ℚ)⟩,
  ⟨(18356110701/100543898800 : ℚ), (19999515341/107173306200 : ℚ), (-5412859451/10000000000 : ℚ), (17946071203/200000000000 : ℚ)⟩,
  ⟨(19999515341/107173306200 : ℚ), (2454737304/12897104375 : ℚ), (-302253023/400000000 : ℚ), (129729386697/1000000000000 : ℚ)⟩,
  ⟨(2454737304/12897104375 : ℚ), (21553418927/111332586600 : ℚ), (-91039781/100000000 : ℚ), (31837246869/200000000000 : ℚ)⟩,
  ⟨(21553418927/111332586600 : ℚ), (15199572339/77441643200 : ℚ), (-5108651983/5000000000 : ℚ), (22592456659/125000000000 : ℚ)⟩,
  ⟨(15199572339/77441643200 : ℚ), (389592341/1965063964 : ℚ), (-5495860199/5000000000 : ℚ), (195939225611/1000000000000 : ℚ)⟩,
  ⟨(389592341/1965063964 : ℚ), (794054663/3980557450 : ℚ), (-11482986389/10000000000 : ℚ), (25709879267/125000000000 : ℚ)⟩,
  ⟨(794054663/3980557450 : ℚ), (196961021/985060200 : ℚ), (-2930454959/2500000000 : ℚ), (105221681057/500000000000 : ℚ)⟩,
  ⟨(196961021/985060200 : ℚ), (1/5 : ℚ), (-5875685821/5000000000 : ℚ), (211034245177/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1624314179/7500000000 : ℚ), (-3/10 : ℚ), (276006812337/1000000000000 : ℚ)⟩,
  ⟨(1624314179/7500000000 : ℚ), (819545041/3750000000 : ℚ), (-196961021/656706800 : ℚ), (339833439481285009/1231325250000000000 : ℚ)⟩,
  ⟨(819545041/3750000000 : ℚ), (3517013611/15000000000 : ℚ), (-2382163989/7961114900 : ℚ), (439194926961504369/1592222980000000000 : ℚ)⟩,
  ⟨(3517013611/15000000000 : ℚ), (2004139801/7500000000 : ℚ), (-1168777023/3930127928 : ℚ), (135298153683703702551/491265991000000000000 : ℚ)⟩,
  ⟨(2004139801/7500000000 : ℚ), (2391348017/7500000000 : ℚ), (-45598717017/154883286400 : ℚ), (21266269175205076903/77441643200000000000 : ℚ)⟩,
  ⟨(2391348017/7500000000 : ℚ), (58960219/150000000 : ℚ), (-21553418927/74221724400 : ℚ), (30430558222089256907/111332586600000000000 : ℚ)⟩,
  ⟨(58960219/150000000 : ℚ), (297746977/600000000 : ℚ), (-3682105956/12897104375 : ℚ), (5600575951558032831/20635367000000000000 : ℚ)⟩,
  ⟨(297746977/600000000 : ℚ), (9587140549/15000000000 : ℚ), (-19999515341/71448870800 : ℚ), (287905153692354730139/1071733062000000000000 : ℚ)⟩,
  ⟨(9587140549/15000000000 : ℚ), (12603457513/15000000000 : ℚ), (-55068332103/201087797600 : ℚ), (266201011568091227669/1005438988000000000000 : ℚ)⟩,
  ⟨(12603457513/15000000000 : ℚ), (16983810127/15000000000 : ℚ), (-78130247827/292023507600 : ℚ), (1136543146017214780219/4380352614000000000000 : ℚ)⟩,
  ⟨(16983810127/15000000000 : ℚ), (23646206129/15000000000 : ℚ), (-348101737809/1332479200400 : ℚ), (1681095418716927542751/6662396002000000000000 : ℚ)⟩,
  ⟨(23646206129/15000000000 : ℚ), (8610602399/3750000000 : ℚ), (-36733397249/143949379560 : ℚ), (374429985224562683957/1542314781000000000000 : ℚ)⟩,
  ⟨(8610602399/3750000000 : ℚ), (53535144767/15000000000 : ℚ), (-158850522349/636424505700 : ℚ), (878070466157454664907/3818547034200000000000 : ℚ)⟩,
  ⟨(53535144767/15000000000 : ℚ), (9188438249/1500000000 : ℚ), (-156404296631/639153962050 : ℚ), (1629727898656974637721/7669847544600000000000 : ℚ)⟩,
  ⟨(9188438249/1500000000 : ℚ), (31078792941/2500000000 : ℚ), (-2276658591639/9458837515600 : ℚ), (222160384375234705051/1182354689450000000000 : ℚ)⟩,
  ⟨(31078792941/2500000000 : ℚ), (32/1 : ℚ), (-1032283681653/4342594108600 : ℚ), (3275452284764861165773/21712970543000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (226892645511/500000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(7855454903/50000000000 : ℚ), (4894376290799/10000000000 : ℚ), (-77119139871461/1000000000000 : ℚ), 11⟩,
    ⟨(19741405713/125000000000 : ℚ), (259440143167/5000000000 : ℚ), (-8309772717227/1000000000000 : ℚ), 8⟩,
    ⟨(79771973159/500000000000 : ℚ), (85736378823/5000000000 : ℚ), (-2804259748411/1000000000000 : ℚ), 7⟩,
    ⟨(161885224723/1000000000000 : ℚ), (7688438249/1000000000 : ℚ), (-257297470797/200000000000 : ℚ), 6⟩,
    ⟨(82432553451/500000000000 : ℚ), (38535144767/10000000000 : ℚ), (-660870167461/1000000000000 : ℚ), 5⟩,
    ⟨(33673815531/200000000000 : ℚ), (4860602399/2500000000 : ℚ), (-343169122763/1000000000000 : ℚ), 5⟩,
    ⟨(3445249627/20000000000 : ℚ), (8646206129/10000000000 : ℚ), (-79751068259/500000000000 : ℚ), 4⟩,
    ⟨(176395696667/1000000000000 : ℚ), (1983810127/10000000000 : ℚ), (-8693644783/200000000000 : ℚ), 4⟩,
    ⟨(180609886459/1000000000000 : ℚ), (-2396542487/10000000000 : ℚ), (4332752989/125000000000 : ℚ), 4⟩,
    ⟨(11546443861/62500000000 : ℚ), (-5412859451/10000000000 : ℚ), (17946071203/200000000000 : ℚ), 4⟩,
    ⟨(188636505471/1000000000000 : ℚ), (-302253023/400000000 : ℚ), (129729386697/1000000000000 : ℚ), 4⟩,
    ⟨(3002194941/15625000000 : ℚ), (-91039781/100000000 : ℚ), (31837246869/200000000000 : ℚ), 4⟩,
    ⟨(195120358403/1000000000000 : ℚ), (-5108651983/5000000000 : ℚ), (22592456659/125000000000 : ℚ), 3⟩,
    ⟨(24682704601/125000000000 : ℚ), (-5495860199/5000000000 : ℚ), (195939225611/1000000000000 : ℚ), 3⟩,
    ⟨(99537168711/500000000000 : ℚ), (-11482986389/10000000000 : ℚ), (25709879267/125000000000 : ℚ), 3⟩,
    ⟨(99948242533/500000000000 : ℚ), (-2930454959/2500000000 : ℚ), (105221681057/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-5875685821/5000000000 : ℚ), (211034245177/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control687.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control687.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate687
