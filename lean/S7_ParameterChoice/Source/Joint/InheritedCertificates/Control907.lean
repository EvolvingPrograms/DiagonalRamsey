import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate907
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2498241324329/30468298721200 : ℚ), (33609938291/1000000000 : ℚ), (-276608141907/100000000000 : ℚ)⟩,
  ⟨(2498241324329/30468298721200 : ℚ), (13349468999/158951973640 : ℚ), (15708197849/5000000000 : ℚ), (-267840094741/1000000000000 : ℚ)⟩,
  ⟨(13349468999/158951973640 : ℚ), (3705869707/42600260300 : ℚ), (1893399913/2500000000 : ℚ), (-16899514939/250000000000 : ℚ)⟩,
  ⟨(3705869707/42600260300 : ℚ), (231901725/2561099258 : ℚ), (1183560607/10000000000 : ℚ), (-12010014151/1000000000000 : ℚ)⟩,
  ⟨(231901725/2561099258 : ℚ), (157009145/1668446612 : ℚ), (-1377538651/10000000000 : ℚ), (11180158349/1000000000000 : ℚ)⟩,
  ⟨(157009145/1668446612 : ℚ), (6330242639/65182874700 : ℚ), (-262887361/1000000000 : ℚ), (179342533/7812500000 : ℚ)⟩,
  ⟨(6330242639/65182874700 : ℚ), (715423668/7217729875 : ℚ), (-3280702357/10000000000 : ℚ), (29286086863/1000000000000 : ℚ)⟩,
  ⟨(715423668/7217729875 : ℚ), (86638911/867159050 : ℚ), (-111544111/312500000 : ℚ), (6429556307/200000000000 : ℚ)⟩,
  ⟨(86638911/867159050 : ℚ), (1/10 : ℚ), (-1802048957/5000000000 : ℚ), (32494337179/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (447951043/2250000000 : ℚ), (-9/200 : ℚ), (41453358039/1000000000000 : ℚ)⟩,
  ⟨(447951043/2250000000 : ℚ), (29080889/140625000 : ℚ), (-779750199/17343181000 : ℚ), (718795133357763091/17343181000000000000 : ℚ)⟩,
  ⟨(29080889/140625000 : ℚ), (1219297643/4500000000 : ℚ), (-1609703253/36088649375 : ℚ), (11944420131472063381/288709195000000000000 : ℚ)⟩,
  ⟨(1219297643/4500000000 : ℚ), (187112639/450000000 : ℚ), (-18990727917/434552498000 : ℚ), (13403981616896625269/325914373500000000000 : ℚ)⟩,
  ⟨(187112639/450000000 : ℚ), (3122461349/4500000000 : ℚ), (-282616461/6673786448 : ℚ), (1208553499807432573/29793689500000000000 : ℚ)⟩,
  ⟨(3122461349/4500000000 : ℚ), (5683560607/4500000000 : ℚ), (-417423105/10244397032 : ℚ), (50521956279919553771/1280549629000000000000 : ℚ)⟩,
  ⟨(5683560607/4500000000 : ℚ), (3018399913/1125000000 : ℚ), (-33352827363/852005206000 : ℚ), (1993279723873374637/53250325375000000000 : ℚ)⟩,
  ⟨(3018399913/1125000000 : ℚ), (17958197849/2250000000 : ℚ), (-120145220991/3179039472800 : ℚ), (67159617670253275037/1986899670500000000000 : ℚ)⟩,
  ⟨(17958197849/2250000000 : ℚ), (32/1 : ℚ), (-22484171918961/609365974424000 : ℚ), (162430075857258937691/6093659744240000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (175386731609/200000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(40869376351/500000000000 : ℚ), (33609938291/1000000000 : ℚ), (-276608141907/100000000000 : ℚ), 12⟩,
    ⟨(2077883077/25000000000 : ℚ), (15708197849/5000000000 : ℚ), (-267840094741/1000000000000 : ℚ), 9⟩,
    ⟨(85658893473/1000000000000 : ℚ), (1893399913/2500000000 : ℚ), (-16899514939/250000000000 : ℚ), 7⟩,
    ⟨(88982228347/1000000000000 : ℚ), (1183560607/10000000000 : ℚ), (-12010014151/1000000000000 : ℚ), 7⟩,
    ⟨(46289690047/500000000000 : ℚ), (-1377538651/10000000000 : ℚ), (11180158349/1000000000000 : ℚ), 6⟩,
    ⟨(11987839371/125000000000 : ℚ), (-262887361/1000000000 : ℚ), (179342533/7812500000 : ℚ), 6⟩,
    ⟨(98446285361/1000000000000 : ℚ), (-3280702357/10000000000 : ℚ), (29286086863/1000000000000 : ℚ), 6⟩,
    ⟨(49911427869/500000000000 : ℚ), (-111544111/312500000 : ℚ), (6429556307/200000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1802048957/5000000000 : ℚ), (32494337179/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control907.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control907.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate907
