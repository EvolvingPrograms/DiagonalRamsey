import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate741
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (6509087189759/29441359289390 : ℚ), (658563607121/2000000000 : ℚ), (-72987441095667/1000000000000 : ℚ)⟩,
  ⟨(6509087189759/29441359289390 : ℚ), (2603913463163/11659672573150 : ℚ), (174341053333/5000000000 : ℚ), (-7896569198077/1000000000000 : ℚ)⟩,
  ⟨(2603913463163/11659672573150 : ℚ), (119624936552/526997037825 : ℚ), (115488655203/10000000000 : ℚ), (-2688742271751/1000000000000 : ℚ)⟩,
  ⟨(119624936552/526997037825 : ℚ), (118295820631/510042026700 : ℚ), (6531126333/1250000000 : ℚ), (-1253243033127/1000000000000 : ℚ)⟩,
  ⟨(118295820631/510042026700 : ℚ), (300133604333/1261301356400 : ℚ), (26746909329/10000000000 : ℚ), (-165440982493/250000000000 : ℚ)⟩,
  ⟨(300133604333/1261301356400 : ℚ), (173283560111/707775451500 : ℚ), (2826779153/2000000000 : ℚ), (-361630325639/1000000000000 : ℚ)⟩,
  ⟨(173283560111/707775451500 : ℚ), (109258877971/433071684100 : ℚ), (5644913/8000000 : ℚ), (-23543345691/125000000000 : ℚ)⟩,
  ⟨(109258877971/433071684100 : ℚ), (18343205829/70537842650 : ℚ), (2725424409/10000000000 : ℚ), (-79087887557/1000000000000 : ℚ)⟩,
  ⟨(18343205829/70537842650 : ℚ), (5154550391/19247186660 : ℚ), (-96089297/10000000000 : ℚ), (-5715064241/1000000000000 : ℚ)⟩,
  ⟨(5154550391/19247186660 : ℚ), (37300907877/135506747200 : ℚ), (-2020807963/10000000000 : ℚ), (45830439669/1000000000000 : ℚ)⟩,
  ⟨(37300907877/135506747200 : ℚ), (1710192749/6061388275 : ℚ), (-675175087/2000000000 : ℚ), (41565673773/500000000000 : ℚ)⟩,
  ⟨(1710192749/6061388275 : ℚ), (19946701521/69218443000 : ℚ), (-4345697559/10000000000 : ℚ), (11049443153/100000000000 : ℚ)⟩,
  ⟨(19946701521/69218443000 : ℚ), (14020599987/47833380500 : ℚ), (-5037881989/10000000000 : ℚ), (130441133051/1000000000000 : ℚ)⟩,
  ⟨(14020599987/47833380500 : ℚ), (2240403831/7548908725 : ℚ), (-2758107897/5000000000 : ℚ), (72230866519/500000000000 : ℚ)⟩,
  ⟨(2240403831/7548908725 : ℚ), (437667043/1463545790 : ℚ), (-5818172143/10000000000 : ℚ), (76711674181/500000000000 : ℚ)⟩,
  ⟨(437667043/1463545790 : ℚ), (271235853/904407800 : ℚ), (-2982263361/5000000000 : ℚ), (19725002349/125000000000 : ℚ)⟩,
  ⟨(271235853/904407800 : ℚ), (3/10 : ℚ), (-2991307439/5000000000 : ℚ), (79171245249/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1008692561/4000000000 : ℚ), (-6/25 : ℚ), (109432022079/500000000000 : ℚ)⟩,
  ⟨(1008692561/4000000000 : ℚ), (1017736639/4000000000 : ℚ), (-271235853/1130509750 : ℚ), (197924900917334991/904407800000000000 : ℚ)⟩,
  ⟨(1017736639/4000000000 : ℚ), (2181827857/8000000000 : ℚ), (-875334086/3658864475 : ℚ), (8000837755843254527/36588644750000000000 : ℚ)⟩,
  ⟨(2181827857/8000000000 : ℚ), (1241892103/4000000000 : ℚ), (-8961615324/37744543625 : ℚ), (32939928040182965503/150978174500000000000 : ℚ)⟩,
  ⟨(1241892103/4000000000 : ℚ), (2962118011/8000000000 : ℚ), (-14020599987/59791725625 : ℚ), (3247658601478598591/14947931406250000000 : ℚ)⟩,
  ⟨(2962118011/8000000000 : ℚ), (3654302441/8000000000 : ℚ), (-19946701521/86523053750 : ℚ), (149373805164855790661/692184430000000000000 : ℚ)⟩,
  ⟨(3654302441/8000000000 : ℚ), (924824913/1600000000 : ℚ), (-6840770996/30306941375 : ℚ), (25894116109077046833/121227765500000000000 : ℚ)⟩,
  ⟨(924824913/1600000000 : ℚ), (5979192037/8000000000 : ℚ), (-37300907877/169383434000 : ℚ), (285132629373949322217/1355067472000000000000 : ℚ)⟩,
  ⟨(5979192037/8000000000 : ℚ), (7903910703/8000000000 : ℚ), (-5154550391/24058983325 : ℚ), (1905822928960266953/9253455125000000000 : ℚ)⟩,
  ⟨(7903910703/8000000000 : ℚ), (10725424409/8000000000 : ℚ), (-36686411658/176344606625 : ℚ), (281903555715004182001/1410756853000000000000 : ℚ)⟩,
  ⟨(10725424409/8000000000 : ℚ), (12044913/6400000 : ℚ), (-109258877971/541339605125 : ℚ), (414670295063950773351/2165358420500000000000 : ℚ)⟩,
  ⟨(12044913/6400000 : ℚ), (4426779153/1600000000 : ℚ), (-173283560111/884719314375 : ℚ), (42530319574421110661/235925150500000000000 : ℚ)⟩,
  ⟨(4426779153/1600000000 : ℚ), (34746909329/8000000000 : ℚ), (-300133604333/1576626695500 : ℚ), (2081877711441930382349/12613013564000000000000 : ℚ)⟩,
  ⟨(34746909329/8000000000 : ℚ), (7531126333/1000000000 : ℚ), (-118295820631/637552533375 : ℚ), (29405599722649880963/204016810680000000000 : ℚ)⟩,
  ⟨(7531126333/1000000000 : ℚ), (123488655203/8000000000 : ℚ), (-478499746208/2634985189125 : ℚ), (2410921666697191680961/21079881513000000000000 : ℚ)⟩,
  ⟨(123488655203/8000000000 : ℚ), (32/1 : ℚ), (-5207826926326/29149181432875 : ℚ), (3222090643577504610493/46638690292600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (247294607737/500000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(220806655009/1000000000000 : ℚ), (658563607121/2000000000 : ℚ), (-72987441095667/1000000000000 : ℚ), 11⟩,
    ⟨(222324660437/1000000000000 : ℚ), (174341053333/5000000000 : ℚ), (-7896569198077/1000000000000 : ℚ), 8⟩,
    ⟨(225302335197/1000000000000 : ℚ), (115488655203/10000000000 : ℚ), (-2688742271751/1000000000000 : ℚ), 7⟩,
    ⟨(57406312229/250000000000 : ℚ), (6531126333/1250000000 : ℚ), (-1253243033127/1000000000000 : ℚ), 6⟩,
    ⟨(47025454889/200000000000 : ℚ), (26746909329/10000000000 : ℚ), (-165440982493/250000000000 : ℚ), 5⟩,
    ⟨(241596972029/1000000000000 : ℚ), (2826779153/2000000000 : ℚ), (-361630325639/1000000000000 : ℚ), 5⟩,
    ⟨(124392857409/500000000000 : ℚ), (5644913/8000000 : ℚ), (-23543345691/125000000000 : ℚ), 4⟩,
    ⟨(256417243457/1000000000000 : ℚ), (2725424409/10000000000 : ℚ), (-79087887557/1000000000000 : ℚ), 4⟩,
    ⟨(264198282581/1000000000000 : ℚ), (-96089297/10000000000 : ℚ), (-5715064241/1000000000000 : ℚ), 4⟩,
    ⟨(271829811221/1000000000000 : ℚ), (-2020807963/10000000000 : ℚ), (45830439669/1000000000000 : ℚ), 4⟩,
    ⟨(279018554009/1000000000000 : ℚ), (-675175087/2000000000 : ℚ), (41565673773/500000000000 : ℚ), 4⟩,
    ⟨(285488251593/1000000000000 : ℚ), (-4345697559/10000000000 : ℚ), (11049443153/100000000000 : ℚ), 3⟩,
    ⟨(290990277123/1000000000000 : ℚ), (-5037881989/10000000000 : ℚ), (130441133051/1000000000000 : ℚ), 3⟩,
    ⟨(147656595421/500000000000 : ℚ), (-2758107897/5000000000 : ℚ), (72230866519/500000000000 : ℚ), 3⟩,
    ⟨(149145432801/500000000000 : ℚ), (-5818172143/10000000000 : ℚ), (76711674181/500000000000 : ℚ), 3⟩,
    ⟨(29980887103/100000000000 : ℚ), (-2982263361/5000000000 : ℚ), (19725002349/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2991307439/5000000000 : ℚ), (79171245249/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control741.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control741.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate741
