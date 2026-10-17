import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate634
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (16107781720447/133971437599825 : ℚ), (2997104465927/5000000000 : ℚ), (-36098721390451/500000000000 : ℚ)⟩,
  ⟨(16107781720447/133971437599825 : ℚ), (5155303681091/42578305145200 : ℚ), (635351427861/10000000000 : ℚ), (-3883157949557/500000000000 : ℚ)⟩,
  ⟨(5155303681091/42578305145200 : ℚ), (355336968029/2901612515650 : ℚ), (209568376409/10000000000 : ℚ), (-2611012218023/1000000000000 : ℚ)⟩,
  ⟨(355336968029/2901612515650 : ℚ), (293001431323/2356722129850 : ℚ), (93503875783/10000000000 : ℚ), (-1189664345907/1000000000000 : ℚ)⟩,
  ⟨(293001431323/2356722129850 : ℚ), (7442899551/58791612695 : ℚ), (23184716593/5000000000 : ℚ), (-603661483261/1000000000000 : ℚ)⟩,
  ⟨(7442899551/58791612695 : ℚ), (172239411491/1333214550300 : ℚ), (5713197027/2500000000 : ℚ), (-305945501221/1000000000000 : ℚ)⟩,
  ⟨(172239411491/1333214550300 : ℚ), (726197125/5501268386 : ℚ), (1904128521/2000000000 : ℚ), (-13370608973/100000000000 : ℚ)⟩,
  ⟨(726197125/5501268386 : ℚ), (73447092677/544324240400 : ℚ), (634370013/5000000000 : ℚ), (-1238826049/50000000000 : ℚ)⟩,
  ⟨(73447092677/544324240400 : ℚ), (51850820931/376112514800 : ℚ), (-2087251189/5000000000 : ℚ), (48670571697/1000000000000 : ℚ)⟩,
  ⟨(51850820931/376112514800 : ℚ), (243400647/1730242940 : ℚ), (-3967813763/5000000000 : ℚ), (25130348157/250000000000 : ℚ)⟩,
  ⟨(243400647/1730242940 : ℚ), (4638523697/32376698350 : ℚ), (-10617504083/10000000000 : ℚ), (138248492913/1000000000000 : ℚ)⟩,
  ⟨(4638523697/32376698350 : ℚ), (3399246593/23356194100 : ℚ), (-24531457/19531250 : ℚ), (33215927019/200000000000 : ℚ)⟩,
  ⟨(3399246593/23356194100 : ℚ), (1440151673/9770144830 : ℚ), (-1396147763/1000000000 : ℚ), (186475114653/1000000000000 : ℚ)⟩,
  ⟨(1440151673/9770144830 : ℚ), (9237236873/62083289900 : ℚ), (-14938492113/10000000000 : ℚ), (200876631383/1000000000000 : ℚ)⟩,
  ⟨(9237236873/62083289900 : ℚ), (2260565221/15106675900 : ℚ), (-3889831253/2500000000 : ℚ), (6566058383/31250000000 : ℚ)⟩,
  ⟨(2260565221/15106675900 : ℚ), (140211243/934966450 : ℚ), (-1586145853/1000000000 : ℚ), (107317499349/500000000000 : ℚ)⟩,
  ⟨(140211243/934966450 : ℚ), (3/20 : ℚ), (-3974714297/2500000000 : ℚ), (21519584367/100000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1025285703/5000000000 : ℚ), (-3/10 : ℚ), (5534259717/20000000000 : ℚ)⟩,
  ⟨(1025285703/5000000000 : ℚ), (413854147/2000000000 : ℚ), (-140211243/467483225 : ℚ), (2587035271499984031/9349664500000000000 : ℚ)⟩,
  ⟨(413854147/2000000000 : ℚ), (1110168747/5000000000 : ℚ), (-2260565221/7553337950 : ℚ), (10444914133506073663/37766689750000000000 : ℚ)⟩,
  ⟨(1110168747/5000000000 : ℚ), (5061507887/20000000000 : ℚ), (-9237236873/31041644950 : ℚ), (42866292172409746667/155208224750000000000 : ℚ)⟩,
  ⟨(5061507887/20000000000 : ℚ), (603852237/2000000000 : ℚ), (-1440151673/4885072415 : ℚ), (269152768671100769499/977014483000000000000 : ℚ)⟩,
  ⟨(603852237/2000000000 : ℚ), (14531043/39062500 : ℚ), (-3399246593/11678097050 : ℚ), (64079916319529006883/233561941000000000000 : ℚ)⟩,
  ⟨(14531043/39062500 : ℚ), (9382495917/20000000000 : ℚ), (-4638523697/16188349175 : ℚ), (176562454343746766169/647533967000000000000 : ℚ)⟩,
  ⟨(9382495917/20000000000 : ℚ), (6032186237/10000000000 : ℚ), (-243400647/865121470 : ℚ), (11689350912390602853/43256073500000000000 : ℚ)⟩,
  ⟨(6032186237/10000000000 : ℚ), (7912748811/10000000000 : ℚ), (-51850820931/188056257400 : ℚ), (45619143387246002829/170960234000000000000 : ℚ)⟩,
  ⟨(7912748811/10000000000 : ℚ), (10634370013/10000000000 : ℚ), (-73447092677/272162120200 : ℚ), (713631255095354876841/2721621202000000000000 : ℚ)⟩,
  ⟨(10634370013/10000000000 : ℚ), (5904128521/4000000000 : ℚ), (-726197125/2750634193 : ℚ), (8801421839643892417/34382927412500000000 : ℚ)⟩,
  ⟨(5904128521/4000000000 : ℚ), (10713197027/5000000000 : ℚ), (-172239411491/666607275150 : ℚ), (660405813240761437973/2666429100600000000000 : ℚ)⟩,
  ⟨(10713197027/5000000000 : ℚ), (33184716593/10000000000 : ℚ), (-14885799102/58791612695 : ℚ), (2781574064650090470041/11758322539000000000000 : ℚ)⟩,
  ⟨(33184716593/10000000000 : ℚ), (113503875783/20000000000 : ℚ), (-293001431323/1178361064925 : ℚ), (10439430308402951301339/47134442597000000000000 : ℚ)⟩,
  ⟨(113503875783/20000000000 : ℚ), (229568376409/20000000000 : ℚ), (-355336968029/1450806257825 : ℚ), (11625347050416475664523/58032250313000000000000 : ℚ)⟩,
  ⟨(229568376409/20000000000 : ℚ), (32/1 : ℚ), (-5155303681091/21289152572600 : ℚ), (71769946395114333062823/425783051452000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (218407981097/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
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
theorem certOK : JointInheritedControls.control634.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control634.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate634
