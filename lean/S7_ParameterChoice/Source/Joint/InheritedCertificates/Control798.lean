import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate798
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (61503220025033/316989717048300 : ℚ), (3545948165409/10000000000 : ℚ), (-34471166737643/500000000000 : ℚ)⟩,
  ⟨(61503220025033/316989717048300 : ℚ), (492079810993/2515591079750 : ℚ), (188025497463/5000000000 : ℚ), (-7439113450253/1000000000000 : ℚ)⟩,
  ⟨(492079810993/2515591079750 : ℚ), (113033378381/570260063675 : ℚ), (124491886951/10000000000 : ℚ), (-2518315340323/1000000000000 : ℚ)⟩,
  ⟨(113033378381/570260063675 : ℚ), (558910197099/2770744824400 : ℚ), (5606067931/1000000000 : ℚ), (-1161914799751/1000000000000 : ℚ)⟩,
  ⟨(558910197099/2770744824400 : ℚ), (141817141393/688464081650 : ℚ), (14176615533/5000000000 : ℚ), (-150751150663/250000000000 : ℚ)⟩,
  ⟨(141817141393/688464081650 : ℚ), (20473700612/97093267325 : ℚ), (14583949433/10000000000 : ℚ), (-159685159933/500000000000 : ℚ)⟩,
  ⟨(20473700612/97093267325 : ℚ), (25827435863/119483971225 : ℚ), (6816488047/10000000000 : ℚ), (-15558071497/100000000000 : ℚ)⟩,
  ⟨(25827435863/119483971225 : ℚ), (13883759087/62634682600 : ℚ), (1018564599/5000000000 : ℚ), (-26135485759/500000000000 : ℚ)⟩,
  ⟨(13883759087/62634682600 : ℚ), (24405463389/107433942400 : ℚ), (-273651233/2500000000 : ℚ), (17147823917/1000000000000 : ℚ)⟩,
  ⟨(24405463389/107433942400 : ℚ), (17682124691/76065258800 : ℚ), (-162164189/500000000 : ℚ), (13191750139/200000000000 : ℚ)⟩,
  ⟨(17682124691/76065258800 : ℚ), (25980151407/109465334500 : ℚ), (-1191147239/2500000000 : ℚ), (101323000077/1000000000000 : ℚ)⟩,
  ⟨(25980151407/109465334500 : ℚ), (9484373697/39254873000 : ℚ), (-5859242301/10000000000 : ℚ), (31825787871/250000000000 : ℚ)⟩,
  ⟨(9484373697/39254873000 : ℚ), (3338457862/13619917675 : ℚ), (-6644339761/10000000000 : ℚ), (73135949439/500000000000 : ℚ)⟩,
  ⟨(3338457862/13619917675 : ℚ), (8546523583/34500742600 : ℚ), (-1797284117/2500000000 : ℚ), (79812865163/500000000000 : ℚ)⟩,
  ⟨(8546523583/34500742600 : ℚ), (1044390137/4188901175 : ℚ), (-3767071947/5000000000 : ℚ), (168172253909/1000000000000 : ℚ)⟩,
  ⟨(1044390137/4188901175 : ℚ), (517969953/2072442200 : ℚ), (-7701699941/10000000000 : ℚ), (172349814457/1000000000000 : ℚ)⟩,
  ⟨(517969953/2072442200 : ℚ), (1/4 : ℚ), (-7722424363/10000000000 : ℚ), (17286778441/100000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2277575637/10000000000 : ℚ), (-1/4 : ℚ), (45961435067/200000000000 : ℚ)⟩,
  ⟨(2277575637/10000000000 : ℚ), (2298300059/10000000000 : ℚ), (-517969953/2072442200 : ℚ), (4762300659968696081/20724422000000000000 : ℚ)⟩,
  ⟨(2298300059/10000000000 : ℚ), (1232928053/5000000000 : ℚ), (-1044390137/4188901175 : ℚ), (38479541265542843811/167556047000000000000 : ℚ)⟩,
  ⟨(1232928053/5000000000 : ℚ), (702715883/2500000000 : ℚ), (-8546523583/34500742600 : ℚ), (308965522687406547/1347685257812500000 : ℚ)⟩,
  ⟨(702715883/2500000000 : ℚ), (3355660239/10000000000 : ℚ), (-3338457862/13619917675 : ℚ), (62249685031866395409/272398353500000000000 : ℚ)⟩,
  ⟨(3355660239/10000000000 : ℚ), (4140757699/10000000000 : ℚ), (-9484373697/39254873000 : ℚ), (89245183846087658523/392548730000000000000 : ℚ)⟩,
  ⟨(4140757699/10000000000 : ℚ), (1308852761/2500000000 : ℚ), (-25980151407/109465334500 : ℚ), (246930332560723246473/1094653345000000000000 : ℚ)⟩,
  ⟨(1308852761/2500000000 : ℚ), (337835811/500000000 : ℚ), (-17682124691/76065258800 : ℚ), (4241119828028518417/19016314700000000000 : ℚ)⟩,
  ⟨(337835811/500000000 : ℚ), (2226348767/2500000000 : ℚ), (-24405463389/107433942400 : ℚ), (11788143828324918463/53716971200000000000 : ℚ)⟩,
  ⟨(2226348767/2500000000 : ℚ), (6018564599/5000000000 : ℚ), (-13883759087/62634682600 : ℚ), (67190422390944910179/313173413000000000000 : ℚ)⟩,
  ⟨(6018564599/5000000000 : ℚ), (16816488047/10000000000 : ℚ), (-25827435863/119483971225 : ℚ), (496865499536789124357/2389679424500000000000 : ℚ)⟩,
  ⟨(16816488047/10000000000 : ℚ), (24583949433/10000000000 : ℚ), (-20473700612/97093267325 : ℚ), (386474684255172382423/1941865346500000000000 : ℚ)⟩,
  ⟨(24583949433/10000000000 : ℚ), (19176615533/5000000000 : ℚ), (-141817141393/688464081650 : ℚ), (64383774650499938479/344232040825000000000 : ℚ)⟩,
  ⟨(19176615533/5000000000 : ℚ), (6606067931/1000000000 : ℚ), (-558910197099/2770744824400 : ℚ), (2364146557803737367223/13853724122000000000000 : ℚ)⟩,
  ⟨(6606067931/1000000000 : ℚ), (134491886951/10000000000 : ℚ), (-113033378381/570260063675 : ℚ), (3364502734575306622643/22810402547000000000000 : ℚ)⟩,
  ⟨(134491886951/10000000000 : ℚ), (32/1 : ℚ), (-492079810993/2515591079750 : ℚ), (5660452499597520429501/50311821595000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (53075798359/100000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(38764837207/200000000000 : ℚ), (3545948165409/10000000000 : ℚ), (-34471166737643/500000000000 : ℚ), 12⟩,
    ⟨(48725245867/250000000000 : ℚ), (188025497463/5000000000 : ℚ), (-7439113450253/1000000000000 : ℚ), 8⟩,
    ⟨(197013197611/1000000000000 : ℚ), (124491886951/10000000000 : ℚ), (-2518315340323/1000000000000 : ℚ), 7⟩,
    ⟨(10003982863/50000000000 : ℚ), (5606067931/1000000000 : ℚ), (-1161914799751/1000000000000 : ℚ), 6⟩,
    ⟨(20398252009/100000000000 : ℚ), (14176615533/5000000000 : ℚ), (-150751150663/250000000000 : ℚ), 5⟩,
    ⟨(26071475159/125000000000 : ℚ), (14583949433/10000000000 : ℚ), (-159685159933/500000000000 : ℚ), 5⟩,
    ⟨(213671137303/1000000000000 : ℚ), (6816488047/10000000000 : ℚ), (-15558071497/100000000000 : ℚ), 5⟩,
    ⟨(219084563559/1000000000000 : ℚ), (1018564599/5000000000 : ℚ), (-26135485759/500000000000 : ℚ), 4⟩,
    ⟨(112302022553/500000000000 : ℚ), (-273651233/2500000000 : ℚ), (17147823917/1000000000000 : ℚ), 4⟩,
    ⟨(115008735681/500000000000 : ℚ), (-162164189/500000000 : ℚ), (13191750139/200000000000 : ℚ), 4⟩,
    ⟨(235116807393/1000000000000 : ℚ), (-1191147239/2500000000 : ℚ), (101323000077/1000000000000 : ℚ), 4⟩,
    ⟨(9588243543/40000000000 : ℚ), (-5859242301/10000000000 : ℚ), (31825787871/250000000000 : ℚ), 4⟩,
    ⟨(48721790281/200000000000 : ℚ), (-6644339761/10000000000 : ℚ), (73135949439/500000000000 : ℚ), 4⟩,
    ⟨(123337705527/500000000000 : ℚ), (-1797284117/2500000000 : ℚ), (79812865163/500000000000 : ℚ), 4⟩,
    ⟨(248787625197/1000000000000 : ℚ), (-3767071947/5000000000 : ℚ), (168172253909/1000000000000 : ℚ), 4⟩,
    ⟨(24986442263/100000000000 : ℚ), (-7701699941/10000000000 : ℚ), (172349814457/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7722424363/10000000000 : ℚ), (17286778441/100000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control798.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control798.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate798
