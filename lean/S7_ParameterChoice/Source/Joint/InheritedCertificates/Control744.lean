import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate744
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (86364743595751/426915217152200 : ℚ), (4776180555967/10000000000 : ℚ), (-48392704309709/500000000000 : ℚ)⟩,
  ⟨(86364743595751/426915217152200 : ℚ), (3454937158043/16964740735550 : ℚ), (101405676889/2000000000 : ℚ), (-10420665023667/1000000000000 : ℚ)⟩,
  ⟨(3454937158043/16964740735550 : ℚ), (238075391516/1156428057925 : ℚ), (83866784867/5000000000 : ℚ), (-3510790707581/1000000000000 : ℚ)⟩,
  ⟨(238075391516/1156428057925 : ℚ), (784714531023/3757165493900 : ℚ), (752193251/100000000 : ℚ), (-1606187575453/1000000000000 : ℚ)⟩,
  ⟨(784714531023/3757165493900 : ℚ), (398140903487/1873613650600 : ℚ), (37647670161/10000000000 : ℚ), (-82147304443/100000000000 : ℚ)⟩,
  ⟨(398140903487/1873613650600 : ℚ), (114917519861/530419795500 : ℚ), (3782306731/2000000000 : ℚ), (-423332140943/1000000000000 : ℚ)⟩,
  ⟨(114917519861/530419795500 : ℚ), (72449325589/327582856400 : ℚ), (1660627549/2000000000 : ℚ), (-193497101221/1000000000000 : ℚ)⟩,
  ⟨(72449325589/327582856400 : ℚ), (97307581417/430843283500 : ℚ), (1751480617/10000000000 : ℚ), (-48598450043/1000000000000 : ℚ)⟩,
  ⟨(97307581417/430843283500 : ℚ), (34188740873/148295680650 : ℚ), (-1278476109/5000000000 : ℚ), (24354565687/500000000000 : ℚ)⟩,
  ⟨(34188740873/148295680650 : ℚ), (49511053773/210636549400 : ℚ), (-5522865831/10000000000 : ℚ), (182947833/1562500000 : ℚ)⟩,
  ⟨(49511053773/210636549400 : ℚ), (18177737889/75990711350 : ℚ), (-305169253/400000000 : ℚ), (166597666893/1000000000000 : ℚ)⟩,
  ⟨(18177737889/75990711350 : ℚ), (26535436883/109266223000 : ℚ), (-571815347/625000000 : ℚ), (202953142671/1000000000000 : ℚ)⟩,
  ⟨(26535436883/109266223000 : ℚ), (18677647571/75975301400 : ℚ), (-5120853891/5000000000 : ℚ), (114744289777/500000000000 : ℚ)⟩,
  ⟨(18677647571/75975301400 : ℚ), (5976619689/24093706300 : ℚ), (-2750365199/2500000000 : ℚ), (1985329817/8000000000 : ℚ)⟩,
  ⟨(5976619689/24093706300 : ℚ), (5842822351/23425327200 : ℚ), (-5741667461/5000000000 : ℚ), (260119466503/1000000000000 : ℚ)⟩,
  ⟨(5842822351/23425327200 : ℚ), (362225961/1449238900 : ℚ), (-5858794097/5000000000 : ℚ), (132981144427/500000000000 : ℚ)⟩,
  ⟨(362225961/1449238900 : ℚ), (1/4 : ℚ), (-2936643243/2500000000 : ℚ), (33335842597/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (271118919/1250000000 : ℚ), (-3/8 : ℚ), (87005604119/250000000000 : ℚ)⟩,
  ⟨(271118919/1250000000 : ℚ), (1641205903/7500000000 : ℚ), (-1086677883/2898477800 : ℚ), (1260850930057156943/3623097250000000000 : ℚ)⟩,
  ⟨(1641205903/7500000000 : ℚ), (1758332539/7500000000 : ℚ), (-5842822351/15616884800 : ℚ), (40740542728970853097/117126636000000000000 : ℚ)⟩,
  ⟨(1758332539/7500000000 : ℚ), (999634801/3750000000 : ℚ), (-17929859067/48187412600 : ℚ), (83690190033153221431/240937063000000000000 : ℚ)⟩,
  ⟨(999634801/3750000000 : ℚ), (793048703/2500000000 : ℚ), (-56032942713/151950602800 : ℚ), (131614172541183089117/379876507000000000000 : ℚ)⟩,
  ⟨(793048703/2500000000 : ℚ), (365684653/937500000 : ℚ), (-79606310649/218532446000 : ℚ), (188508432958307560957/546331115000000000000 : ℚ)⟩,
  ⟨(365684653/937500000 : ℚ), (294830747/600000000 : ℚ), (-54533213667/151981422700 : ℚ), (521165306358191940861/1519814227000000000000 : ℚ)⟩,
  ⟨(294830747/600000000 : ℚ), (3159044723/5000000000 : ℚ), (-148533161319/421273098800 : ℚ), (715850101140590350917/2106365494000000000000 : ℚ)⟩,
  ⟨(3159044723/5000000000 : ℚ), (2073841297/2500000000 : ℚ), (-34188740873/98863787100 : ℚ), (165881891399643796939/494318935500000000000 : ℚ)⟩,
  ⟨(2073841297/2500000000 : ℚ), (16751480617/15000000000 : ℚ), (-291922744251/861686567000 : ℚ), (44395715815583016637/134638526093750000000 : ℚ)⟩,
  ⟨(16751480617/15000000000 : ℚ), (4660627549/3000000000 : ℚ), (-217347976767/655165712800 : ℚ), (1054433282501869180161/3275828564000000000000 : ℚ)⟩,
  ⟨(4660627549/3000000000 : ℚ), (6782306731/3000000000 : ℚ), (-114917519861/353613197000 : ℚ), (165159186603980005039/530419795500000000000 : ℚ)⟩,
  ⟨(6782306731/3000000000 : ℚ), (17549223387/5000000000 : ℚ), (-1194422710461/3747227301200 : ℚ), (5569959867946227789827/18736136506000000000000 : ℚ)⟩,
  ⟨(17549223387/5000000000 : ℚ), (902193251/150000000 : ℚ), (-2354143593069/7514330987800 : ℚ), (10449290032828929964933/37571654939000000000000 : ℚ)⟩,
  ⟨(902193251/150000000 : ℚ), (91366784867/7500000000 : ℚ), (-357113087274/1156428057925 : ℚ), (11618389440192055721799/46257122317000000000000 : ℚ)⟩,
  ⟨(91366784867/7500000000 : ℚ), (32/1 : ℚ), (-10364811474129/33929481471100 : ℚ), (71472917573880660917033/339294814711000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (109832506043/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(202130264593/1000000000000 : ℚ), (4776180555967/10000000000 : ℚ), (-48392704309709/500000000000 : ℚ), 12⟩,
    ⟨(203047848239/1000000000000 : ℚ), (101405676889/2000000000 : ℚ), (-10420665023667/1000000000000 : ℚ), 8⟩,
    ⟨(40969550661/200000000000 : ℚ), (83866784867/5000000000 : ℚ), (-3510790707581/1000000000000 : ℚ), 7⟩,
    ⟨(4149216209/20000000000 : ℚ), (752193251/100000000 : ℚ), (-1606187575453/1000000000000 : ℚ), 6⟩,
    ⟨(26348325169/125000000000 : ℚ), (37647670161/10000000000 : ℚ), (-82147304443/100000000000 : ℚ), 6⟩,
    ⟨(214697317733/1000000000000 : ℚ), (3782306731/2000000000 : ℚ), (-423332140943/1000000000000 : ℚ), 5⟩,
    ⟨(43808534591/200000000000 : ℚ), (1660627549/2000000000 : ℚ), (-193497101221/1000000000000 : ℚ), 5⟩,
    ⟨(223655677453/1000000000000 : ℚ), (1751480617/10000000000 : ℚ), (-48598450043/1000000000000 : ℚ), 4⟩,
    ⟨(228359056053/1000000000000 : ℚ), (-1278476109/5000000000 : ℚ), (24354565687/500000000000 : ℚ), 4⟩,
    ⟨(29121507569/125000000000 : ℚ), (-5522865831/10000000000 : ℚ), (182947833/1562500000 : ℚ), 4⟩,
    ⟨(118658707887/500000000000 : ℚ), (-305169253/400000000 : ℚ), (166597666893/1000000000000 : ℚ), 4⟩,
    ⟨(120614066077/500000000000 : ℚ), (-571815347/625000000 : ℚ), (202953142671/1000000000000 : ℚ), 4⟩,
    ⟨(244553923057/1000000000000 : ℚ), (-5120853891/5000000000 : ℚ), (114744289777/500000000000 : ℚ), 4⟩,
    ⟨(247166980201/1000000000000 : ℚ), (-2750365199/2500000000 : ℚ), (1985329817/8000000000 : ℚ), 4⟩,
    ⟨(248966885267/1000000000000 : ℚ), (-5741667461/5000000000 : ℚ), (260119466503/1000000000000 : ℚ), 4⟩,
    ⟨(249884468913/1000000000000 : ℚ), (-5858794097/5000000000 : ℚ), (132981144427/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2936643243/2500000000 : ℚ), (33335842597/125000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control744.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control744.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate744
