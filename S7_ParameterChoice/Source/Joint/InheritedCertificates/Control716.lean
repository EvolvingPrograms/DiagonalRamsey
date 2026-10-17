import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate716
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (63486280327901/339424512213900 : ℚ), (3796269144007/10000000000 : ℚ), (-8897219814497/125000000000 : ℚ)⟩,
  ⟨(63486280327901/339424512213900 : ℚ), (1269891385292/6725116771125 : ℚ), (100506005467/2500000000 : ℚ), (-307659127523/40000000000 : ℚ)⟩,
  ⟨(1269891385292/6725116771125 : ℚ), (1400294604839/7302555546100 : ℚ), (133019351023/10000000000 : ℚ), (-2611912646907/1000000000000 : ℚ)⟩,
  ⟨(1400294604839/7302555546100 : ℚ), (28856848463/147457906650 : ℚ), (29996897781/5000000000 : ℚ), (-302904510517/250000000000 : ℚ)⟩,
  ⟨(28856848463/147457906650 : ℚ), (293023172107/1461459706500 : ℚ), (3812776779/1250000000 : ℚ), (-79310134101/125000000000 : ℚ)⟩,
  ⟨(293023172107/1461459706500 : ℚ), (169341423611/822109261300 : ℚ), (15887617167/10000000000 : ℚ), (-341457900701/1000000000000 : ℚ)⟩,
  ⟨(169341423611/822109261300 : ℚ), (21385139509/100903766120 : ℚ), (3833262277/5000000000 : ℚ), (-17211647709/100000000000 : ℚ)⟩,
  ⟨(21385139509/100903766120 : ℚ), (17985521634/82454373925 : ℚ), (327667031/1250000000 : ℚ), (-13038155909/200000000000 : ℚ)⟩,
  ⟨(17985521634/82454373925 : ℚ), (50655865249/225821312500 : ℚ), (-676838709/10000000000 : ℚ), (6751306991/1000000000000 : ℚ)⟩,
  ⟨(50655865249/225821312500 : ℚ), (36749374171/159591564800 : ℚ), (-1467525917/5000000000 : ℚ), (717589653/12500000000 : ℚ)⟩,
  ⟨(36749374171/159591564800 : ℚ), (1001000381/4245904800 : ℚ), (-2265483741/5000000000 : ℚ), (94156546411/1000000000000 : ℚ)⟩,
  ⟨(1001000381/4245904800 : ℚ), (1974807991/8209105540 : ℚ), (-2838680889/5000000000 : ℚ), (60591778349/500000000000 : ℚ)⟩,
  ⟨(1974807991/8209105540 : ℚ), (13908529129/56884131100 : ℚ), (-1624568083/2500000000 : ℚ), (1101028411/7812500000 : ℚ)⟩,
  ⟨(13908529129/56884131100 : ℚ), (1780640417/7196384460 : ℚ), (-7067113643/10000000000 : ℚ), (154840165737/1000000000000 : ℚ)⟩,
  ⟨(1780640417/7196384460 : ℚ), (4352121807/17461661300 : ℚ), (-3713466433/5000000000 : ℚ), (81871683911/500000000000 : ℚ)⟩,
  ⟨(4352121807/17461661300 : ℚ), (539616073/2159123200 : ℚ), (-7601549479/10000000000 : ℚ), (168095489629/1000000000000 : ℚ)⟩,
  ⟨(539616073/2159123200 : ℚ), (1/4 : ℚ), (-7623140711/10000000000 : ℚ), (84317552851/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2376859289/10000000000 : ℚ), (-1/4 : ℚ), (228056587927/1000000000000 : ℚ)⟩,
  ⟨(2376859289/10000000000 : ℚ), (2398450521/10000000000 : ℚ), (-539616073/2159123200 : ℚ), (4923631166160156961/21591232000000000000 : ℚ)⟩,
  ⟨(2398450521/10000000000 : ℚ), (1286533567/5000000000 : ℚ), (-4352121807/17461661300 : ℚ), (4973826734380902253/21827076625000000000 : ℚ)⟩,
  ⟨(1286533567/5000000000 : ℚ), (2932886357/10000000000 : ℚ), (-1780640417/7196384460 : ℚ), (10228318506673627087/44977402875000000000 : ℚ)⟩,
  ⟨(2932886357/10000000000 : ℚ), (875431917/2500000000 : ℚ), (-13908529129/56884131100 : ℚ), (6443580910083677713/28442065550000000000 : ℚ)⟩,
  ⟨(875431917/2500000000 : ℚ), (2161319111/5000000000 : ℚ), (-1974807991/8209105540 : ℚ), (491608153443409337/2183272750000000000 : ℚ)⟩,
  ⟨(2161319111/5000000000 : ℚ), (2734516259/5000000000 : ℚ), (-1001000381/4245904800 : ℚ), (100769159125513469/451692000000000000 : ℚ)⟩,
  ⟨(2734516259/5000000000 : ℚ), (3532474083/5000000000 : ℚ), (-36749374171/159591564800 : ℚ), (175624714068150715953/797957824000000000000 : ℚ)⟩,
  ⟨(3532474083/5000000000 : ℚ), (9323161291/10000000000 : ℚ), (-50655865249/225821312500 : ℚ), (243759346054784666667/1129106562500000000000 : ℚ)⟩,
  ⟨(9323161291/10000000000 : ℚ), (1577667031/1250000000 : ℚ), (-17985521634/82454373925 : ℚ), (692994668030942702363/3298174957000000000000 : ℚ)⟩,
  ⟨(1577667031/1250000000 : ℚ), (8833262277/5000000000 : ℚ), (-21385139509/100903766120 : ℚ), (102064542364793511039/504518830600000000000 : ℚ)⟩,
  ⟨(8833262277/5000000000 : ℚ), (25887617167/10000000000 : ℚ), (-169341423611/822109261300 : ℚ), (394172229963216027081/2055273153250000000000 : ℚ)⟩,
  ⟨(25887617167/10000000000 : ℚ), (5062776779/1250000000 : ℚ), (-293023172107/1461459706500 : ℚ), (81106314598752272447/456706158281250000000 : ℚ)⟩,
  ⟨(5062776779/1250000000 : ℚ), (34996897781/5000000000 : ℚ), (-28856848463/147457906650 : ℚ), (58293437613911687921/368644766625000000000 : ℚ)⟩,
  ⟨(34996897781/5000000000 : ℚ), (143019351023/10000000000 : ℚ), (-1400294604839/7302555546100 : ℚ), (16157379269639960663/123772127900000000000 : ℚ)⟩,
  ⟨(143019351023/10000000000 : ℚ), (32/1 : ℚ), (-1269891385292/6725116771125 : ℚ), (23859465319530907088449/269004670845000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (239887754717/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(186817649747/1000000000000 : ℚ), (3796269144007/10000000000 : ℚ), (-8897219814497/125000000000 : ℚ), 11⟩,
    ⟨(188028750891/1000000000000 : ℚ), (100506005467/2500000000 : ℚ), (-307659127523/40000000000 : ℚ), 8⟩,
    ⟨(190404411239/1000000000000 : ℚ), (133019351023/10000000000 : ℚ), (-2611912646907/1000000000000 : ℚ), 6⟩,
    ⟨(193853335499/1000000000000 : ℚ), (29996897781/5000000000 : ℚ), (-302904510517/250000000000 : ℚ), 6⟩,
    ⟨(49560745861/250000000000 : ℚ), (3812776779/1250000000 : ℚ), (-79310134101/125000000000 : ℚ), 5⟩,
    ⟨(101702331683/500000000000 : ℚ), (15887617167/10000000000 : ℚ), (-341457900701/1000000000000 : ℚ), 5⟩,
    ⟨(522850037/2500000000 : ℚ), (3833262277/5000000000 : ℚ), (-17211647709/100000000000 : ℚ), 4⟩,
    ⟨(107614315703/500000000000 : ℚ), (327667031/1250000000 : ℚ), (-13038155909/200000000000 : ℚ), 4⟩,
    ⟨(27679566383/125000000000 : ℚ), (-676838709/10000000000 : ℚ), (6751306991/1000000000000 : ℚ), 4⟩,
    ⟨(227525147671/1000000000000 : ℚ), (-1467525917/5000000000 : ℚ), (717589653/12500000000 : ℚ), 4⟩,
    ⟨(46652099821/200000000000 : ℚ), (-2265483741/5000000000 : ℚ), (94156546411/1000000000000 : ℚ), 3⟩,
    ⟨(119211089513/500000000000 : ℚ), (-2838680889/5000000000 : ℚ), (60591778349/500000000000 : ℚ), 3⟩,
    ⟨(242811826971/1000000000000 : ℚ), (-1624568083/2500000000 : ℚ), (1101028411/7812500000 : ℚ), 3⟩,
    ⟨(246260751231/1000000000000 : ℚ), (-7067113643/10000000000 : ℚ), (154840165737/1000000000000 : ℚ), 3⟩,
    ⟨(12431820579/50000000000 : ℚ), (-3713466433/5000000000 : ℚ), (81871683911/500000000000 : ℚ), 3⟩,
    ⟨(249847512723/1000000000000 : ℚ), (-7601549479/10000000000 : ℚ), (168095489629/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7623140711/10000000000 : ℚ), (84317552851/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control716.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control716.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate716
