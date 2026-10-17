import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate334
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (75965602475549/905586071819600 : ℚ), (10128734103511/10000000000 : ℚ), (-66469311307/781250000 : ℚ)⟩,
  ⟨(75965602475549/905586071819600 : ℚ), (6078282574811/72066056493000 : ℚ), (214574677063/2000000000 : ℚ), (-9115115997411/1000000000000 : ℚ)⟩,
  ⟨(6078282574811/72066056493000 : ℚ), (41897747248/492379398005 : ℚ), (70442564077/2000000000 : ℚ), (-15184167113/5000000000 : ℚ)⟩,
  ⟨(41897747248/492379398005 : ℚ), (46070052887/535066246300 : ℚ), (155261061183/10000000000 : ℚ), (-34023088317/25000000000 : ℚ)⟩,
  ⟨(46070052887/535066246300 : ℚ), (351177122047/4021184631600 : ℚ), (37500562119/5000000000 : ℚ), (-1071796383/1600000000 : ℚ)⟩,
  ⟨(351177122047/4021184631600 : ℚ), (50813037151/572633908600 : ℚ), (17394638961/5000000000 : ℚ), (-19918476083/62500000000 : ℚ)⟩,
  ⟨(50813037151/572633908600 : ℚ), (6124507479/67854621500 : ℚ), (5941960789/5000000000 : ℚ), (-28860867181/250000000000 : ℚ)⟩,
  ⟨(6124507479/67854621500 : ℚ), (482100217/5249124920 : ℚ), (-2365548937/10000000000 : ℚ), (2634237667/200000000000 : ℚ)⟩,
  ⟨(482100217/5249124920 : ℚ), (30653079749/328091132450 : ℚ), (-11813973793/10000000000 : ℚ), (19989845479/200000000000 : ℚ)⟩,
  ⟨(30653079749/328091132450 : ℚ), (22319199809/235057607250 : ℚ), (-9187898221/5000000000 : ℚ), (161255386893/1000000000000 : ℚ)⟩,
  ⟨(22319199809/235057607250 : ℚ), (4118808971/42745879750 : ℚ), (-23076948587/10000000000 : ℚ), (205893786511/1000000000000 : ℚ)⟩,
  ⟨(4118808971/42745879750 : ℚ), (2415979289/24757551840 : ℚ), (-26496618967/10000000000 : ℚ), (238844258279/1000000000000 : ℚ)⟩,
  ⟨(2415979289/24757551840 : ℚ), (8533229301/86548773700 : ℚ), (-28972374151/10000000000 : ℚ), (263004051169/1000000000000 : ℚ)⟩,
  ⟨(8533229301/86548773700 : ℚ), (5474826951/55109865500 : ℚ), (-245626797/80000000 : ℚ), (280070509771/1000000000000 : ℚ)⟩,
  ⟨(5474826951/55109865500 : ℚ), (5360162377/53706235400 : ℚ), (-6361109387/2000000000 : ℚ), (291020163673/1000000000000 : ℚ)⟩,
  ⟨(5360162377/53706235400 : ℚ), (664967921/6650977900 : ℚ), (-32342609289/10000000000 : ℚ), (5927606521/20000000000 : ℚ)⟩,
  ⟨(664967921/6650977900 : ℚ), (1/10 : ℚ), (-8102279767/2500000000 : ℚ), (297045293971/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1897720233/10000000000 : ℚ), (-2/5 : ℚ), (372954103291/1000000000000 : ℚ)⟩,
  ⟨(1897720233/10000000000 : ℚ), (7657390711/40000000000 : ℚ), (-664967921/1662744475 : ℚ), (24804109166911824781/66509779000000000000 : ℚ)⟩,
  ⟨(7657390711/40000000000 : ℚ), (1638890613/8000000000 : ℚ), (-5360162377/13426558850 : ℚ), (200219573182792001747/537062354000000000000 : ℚ)⟩,
  ⟨(1638890613/8000000000 : ℚ), (74373203/320000000 : ℚ), (-5474826951/13777466375 : ℚ), (20524403326703671463/55109865500000000000 : ℚ)⟩,
  ⟨(74373203/320000000 : ℚ), (11027625849/40000000000 : ℚ), (-8533229301/21637193425 : ℚ), (160864020541620908051/432743868500000000000 : ℚ)⟩,
  ⟨(11027625849/40000000000 : ℚ), (13503381033/40000000000 : ℚ), (-2415979289/6189387960 : ℚ), (152926466612483903951/412625864000000000000 : ℚ)⟩,
  ⟨(13503381033/40000000000 : ℚ), (16923051413/40000000000 : ℚ), (-8237617942/21372939875 : ℚ), (315427852742544813091/854917595000000000000 : ℚ)⟩,
  ⟨(16923051413/40000000000 : ℚ), (10812101779/20000000000 : ℚ), (-44638399618/117528803625 : ℚ), (1723355947827813276329/4701152145000000000000 : ℚ)⟩,
  ⟨(10812101779/20000000000 : ℚ), (28186026207/40000000000 : ℚ), (-61306159498/164045566225 : ℚ), (2383826122331712233441/6561822649000000000000 : ℚ)⟩,
  ⟨(28186026207/40000000000 : ℚ), (37634451063/40000000000 : ℚ), (-482100217/1312281230 : ℚ), (18834949153300798753/52491249200000000000 : ℚ)⟩,
  ⟨(37634451063/40000000000 : ℚ), (25941960789/20000000000 : ℚ), (-6124507479/16963655375 : ℚ), (119714868497584701101/339273107500000000000 : ℚ)⟩,
  ⟨(25941960789/20000000000 : ℚ), (37394638961/20000000000 : ℚ), (-50813037151/143158477150 : ℚ), (987655593752412399007/2863169543000000000000 : ℚ)⟩,
  ⟨(37394638961/20000000000 : ℚ), (57500562119/20000000000 : ℚ), (-351177122047/1005296157900 : ℚ), (6724472097522456991343/20105923158000000000000 : ℚ)⟩,
  ⟨(57500562119/20000000000 : ℚ), (195261061183/40000000000 : ℚ), (-46070052887/133766561575 : ℚ), (1713844954148322994481/5350662463000000000000 : ℚ)⟩,
  ⟨(195261061183/40000000000 : ℚ), (78442564077/8000000000 : ℚ), (-167590988992/492379398005 : ℚ), (29601829826068688627/98475879601000000000 : ℚ)⟩,
  ⟨(78442564077/8000000000 : ℚ), (222574677063/8000000000 : ℚ), (-6078282574811/18016514123250 : ℚ), (13030284122293375926949/48044037662000000000000 : ℚ)⟩,
  ⟨(222574677063/8000000000 : ℚ), (32/1 : ℚ), (-75965602475549/226396517954900 : ℚ), (1994876291703532806572379/9055860718196000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (326906802263/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(41914188791/500000000000 : ℚ), (10128734103511/10000000000 : ℚ), (-66469311307/781250000 : ℚ), 11⟩,
    ⟨(42069180417/500000000000 : ℚ), (214574677063/2000000000 : ℚ), (-9115115997411/1000000000000 : ℚ), 8⟩,
    ⟨(16949282971/200000000000 : ℚ), (70442564077/2000000000 : ℚ), (-15184167113/5000000000 : ℚ), 6⟩,
    ⟨(85629172471/1000000000000 : ℚ), (155261061183/10000000000 : ℚ), (-34023088317/25000000000 : ℚ), 6⟩,
    ⟨(86752709801/1000000000000 : ℚ), (37500562119/5000000000 : ℚ), (-1071796383/1600000000 : ℚ), 5⟩,
    ⟨(5504615621/62500000000 : ℚ), (17394638961/5000000000 : ℚ), (-19918476083/62500000000 : ℚ), 4⟩,
    ⟨(44770911101/500000000000 : ℚ), (5941960789/5000000000 : ℚ), (-28860867181/250000000000 : ℚ), 4⟩,
    ⟨(45550106623/500000000000 : ℚ), (-2365548937/10000000000 : ℚ), (2634237667/200000000000 : ℚ), 4⟩,
    ⟨(724133867/7812500000 : ℚ), (-11813973793/10000000000 : ℚ), (19989845479/200000000000 : ℚ), 4⟩,
    ⟨(94247526021/1000000000000 : ℚ), (-9187898221/5000000000 : ℚ), (161255386893/1000000000000 : ℚ), 3⟩,
    ⟨(47857749143/500000000000 : ℚ), (-23076948587/10000000000 : ℚ), (205893786511/1000000000000 : ℚ), 3⟩,
    ⟨(97036638421/1000000000000 : ℚ), (-26496618967/10000000000 : ℚ), (238844258279/1000000000000 : ℚ), 3⟩,
    ⟨(98160175751/1000000000000 : ℚ), (-28972374151/10000000000 : ℚ), (263004051169/1000000000000 : ℚ), 3⟩,
    ⟨(99042933367/1000000000000 : ℚ), (-245626797/80000000 : ℚ), (280070509771/1000000000000 : ℚ), 3⟩,
    ⟨(24912746847/250000000000 : ℚ), (-6361109387/2000000000 : ℚ), (291020163673/1000000000000 : ℚ), 3⟩,
    ⟨(1249512133/12500000000 : ℚ), (-32342609289/10000000000 : ℚ), (5927606521/20000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-8102279767/2500000000 : ℚ), (297045293971/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control334.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control334.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate334
