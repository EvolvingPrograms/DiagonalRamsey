import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate901
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (3868452586669/5314126792600 : ℚ), (907992782549/2500000000 : ℚ), (-4134217985459/15625000000 : ℚ)⟩,
  ⟨(3868452586669/5314126792600 : ℚ), (18874216801213/25854991876800 : ℚ), (39035378671/1000000000 : ℚ), (-28614343282567/1000000000000 : ℚ)⟩,
  ⟨(18874216801213/25854991876800 : ℚ), (5195248644621/7084245544000 : ℚ), (65901933971/5000000000 : ℚ), (-4870063240677/500000000000 : ℚ)⟩,
  ⟨(5195248644621/7084245544000 : ℚ), (21327140553/28903911544 : ℚ), (30480706251/5000000000 : ℚ), (-4544877836733/1000000000000 : ℚ)⟩,
  ⟨(21327140553/28903911544 : ℚ), (537076841279/722497897600 : ℚ), (16028750479/5000000000 : ℚ), (-2412163781433/1000000000000 : ℚ)⟩,
  ⟨(537076841279/722497897600 : ℚ), (76547351423/102112981000 : ℚ), (8803771503/5000000000 : ℚ), (-10704080791/8000000000 : ℚ)⟩,
  ⟨(76547351423/102112981000 : ℚ), (378906267599/500906601200 : ℚ), (4719252263/5000000000 : ℚ), (-725631287491/1000000000000 : ℚ)⟩,
  ⟨(378906267599/500906601200 : ℚ), (124042714427/162461422850 : ℚ), (2214719257/5000000000 : ℚ), (-86681254973/250000000000 : ℚ)⟩,
  ⟨(124042714427/162461422850 : ℚ), (168952385067/219247178900 : ℚ), (1180210057/10000000000 : ℚ), (-49319795519/500000000000 : ℚ)⟩,
  ⟨(168952385067/219247178900 : ℚ), (4722971109/6075243364 : ℚ), (-253065433/2500000000 : ℚ), (70312794029/1000000000000 : ℚ)⟩,
  ⟨(4722971109/6075243364 : ℚ), (83570972863/106637799200 : ℚ), (-2531072573/10000000000 : ℚ), (94193535877/500000000000 : ℚ)⟩,
  ⟨(83570972863/106637799200 : ℚ), (58911882181/74648318400 : ℚ), (-719490113/2000000000 : ℚ), (271958044617/1000000000000 : ℚ)⟩,
  ⟨(58911882181/74648318400 : ℚ), (2012555031/2535637195 : ℚ), (-4343933749/10000000000 : ℚ), (165434963399/500000000000 : ℚ)⟩,
  ⟨(2012555031/2535637195 : ℚ), (12594051939/15800580550 : ℚ), (-1212765297/2500000000 : ℚ), (185560513709/500000000000 : ℚ)⟩,
  ⟨(12594051939/15800580550 : ℚ), (1517890541/1899433225 : ℚ), (-5167072799/10000000000 : ℚ), (12384660353/31250000000 : ℚ)⟩,
  ⟨(1517890541/1899433225 : ℚ), (1497771249/1872418400 : ℚ), (-5319027457/10000000000 : ℚ), (51056531953/125000000000 : ℚ)⟩,
  ⟨(1497771249/1872418400 : ℚ), (4/5 : ℚ), (-5337751641/10000000000 : ℚ), (409950026873/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2662248359/8000000000 : ℚ), (-16/25 : ℚ), (622929895593/1000000000000 : ℚ)⟩,
  ⟨(2662248359/8000000000 : ℚ), (2680972543/8000000000 : ℚ), (-1497771249/2340523000 : ℚ), (11663418783782627023/18724184000000000000 : ℚ)⟩,
  ⟨(2680972543/8000000000 : ℚ), (2832927201/8000000000 : ℚ), (-6071562164/9497166125 : ℚ), (11827700715284602837/18994332250000000000 : ℚ)⟩,
  ⟨(2832927201/8000000000 : ℚ), (787234703/2000000000 : ℚ), (-25188103878/39501451375 : ℚ), (98297175826229631667/158005805500000000000 : ℚ)⟩,
  ⟨(787234703/2000000000 : ℚ), (3656066251/8000000000 : ℚ), (-8050220124/12678185975 : ℚ), (157476954580787192971/253563719500000000000 : ℚ)⟩,
  ⟨(3656066251/8000000000 : ℚ), (880509887/1600000000 : ℚ), (-58911882181/93310398000 : ℚ), (462374580670860338263/746483184000000000000 : ℚ)⟩,
  ⟨(880509887/1600000000 : ℚ), (5468927427/8000000000 : ℚ), (-83570972863/133297249000 : ℚ), (657935412887323851469/1066377992000000000000 : ℚ)⟩,
  ⟨(5468927427/8000000000 : ℚ), (1746934567/2000000000 : ℚ), (-4722971109/7594054205 : ℚ), (931863982757687748689/1518810841000000000000 : ℚ)⟩,
  ⟨(1746934567/2000000000 : ℚ), (9180210057/8000000000 : ℚ), (-168952385067/274058973625 : ℚ), (1334753863916897791837/2192471789000000000000 : ℚ)⟩,
  ⟨(9180210057/8000000000 : ℚ), (6214719257/4000000000 : ℚ), (-248085428854/406153557125 : ℚ), (244621722846642127039/406153557125000000000 : ℚ)⟩,
  ⟨(6214719257/4000000000 : ℚ), (8719252263/4000000000 : ℚ), (-378906267599/626133251500 : ℚ), (1486411821519979898591/2504533006000000000000 : ℚ)⟩,
  ⟨(8719252263/4000000000 : ℚ), (12803771503/4000000000 : ℚ), (-76547351423/127641226250 : ℚ), (148476898879389458447/255282452500000000000 : ℚ)⟩,
  ⟨(12803771503/4000000000 : ℚ), (20028750479/4000000000 : ℚ), (-537076841279/903122372000 : ℚ), (2043061738265536146337/3612489488000000000000 : ℚ)⟩,
  ⟨(20028750479/4000000000 : ℚ), (34480706251/4000000000 : ℚ), (-21327140553/36129889430 : ℚ), (245472292892809897107/451623617875000000000 : ℚ)⟩,
  ⟨(34480706251/4000000000 : ℚ), (69901933971/4000000000 : ℚ), (-5195248644621/8855306930000 : ℚ), (18150689601582018387111/35421227720000000000000 : ℚ)⟩,
  ⟨(69901933971/4000000000 : ℚ), (32/1 : ℚ), (-18874216801213/32318739846000 : ℚ), (20063267106889591793629/43091653128000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (206114869019/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
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
theorem certOK : JointInheritedControls.control901.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control901.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate901
