import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate292
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2541870461119/30395425756980 : ℚ), (10198952583003/10000000000 : ℚ), (-42704275572843/500000000000 : ℚ)⟩,
  ⟨(2541870461119/30395425756980 : ℚ), (1525385386318/18139540884375 : ℚ), (1080324855909/10000000000 : ℚ), (-2288109328029/250000000000 : ℚ)⟩,
  ⟨(1525385386318/18139540884375 : ℚ), (1682340306381/19826538350000 : ℚ), (177371610267/5000000000 : ℚ), (-762723941711/250000000000 : ℚ)⟩,
  ⟨(1682340306381/19826538350000 : ℚ), (34686045426/403897500455 : ℚ), (78238918517/5000000000 : ℚ), (-1368555460463/1000000000000 : ℚ)⟩,
  ⟨(34686045426/403897500455 : ℚ), (117517399749/1348786234300 : ℚ), (75698336943/10000000000 : ℚ), (-674834551943/1000000000000 : ℚ)⟩,
  ⟨(117517399749/1348786234300 : ℚ), (40812907269/460877976260 : ℚ), (17617374957/5000000000 : ℚ), (-40285294087/125000000000 : ℚ)⟩,
  ⟨(40812907269/460877976260 : ℚ), (6457129078/71664041515 : ℚ), (12190851101/10000000000 : ℚ), (-118217816351/1000000000000 : ℚ)⟩,
  ⟨(6457129078/71664041515 : ℚ), (2178618821/23754770520 : ℚ), (-1070978601/5000000000 : ℚ), (10924765209/1000000000000 : ℚ)⟩,
  ⟨(2178618821/23754770520 : ℚ), (5131015999/54981270300 : ℚ), (-1164386541/1000000000 : ℚ), (98069518049/1000000000000 : ℚ)⟩,
  ⟨(5131015999/54981270300 : ℚ), (2241790187/23629893650 : ℚ), (-9120808923/5000000000 : ℚ), (159641710037/1000000000000 : ℚ)⟩,
  ⟨(2241790187/23629893650 : ℚ), (33097368917/343700444500 : ℚ), (-717737393/312500000 : ℚ), (204477513777/1000000000000 : ℚ)⟩,
  ⟨(33097368917/343700444500 : ℚ), (4853431319/49754927220 : ℚ), (-26404601021/10000000000 : ℚ), (118787441347/500000000000 : ℚ)⟩,
  ⟨(4853431319/49754927220 : ℚ), (8570706851/86948814600 : ℚ), (-14446173691/5000000000 : ℚ), (261842039289/1000000000000 : ℚ)⟩,
  ⟨(8570706851/86948814600 : ℚ), (1832836783/18451380150 : ℚ), (-15315661837/5000000000 : ℚ), (278983452991/1000000000000 : ℚ)⟩,
  ⟨(1832836783/18451380150 : ℚ), (2691531287/26968688200 : ℚ), (-31738406483/10000000000 : ℚ), (289980473689/1000000000000 : ℚ)⟩,
  ⟨(2691531287/26968688200 : ℚ), (667793509/6679260200 : ℚ), (-32277780247/10000000000 : ℚ), (295363536263/1000000000000 : ℚ)⟩,
  ⟨(667793509/6679260200 : ℚ), (1/10 : ℚ), (-32344572849/10000000000 : ℚ), (74007832443/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (7655427151/40000000000 : ℚ), (-2/5 : ℚ), (186292800641/500000000000 : ℚ)⟩,
  ⟨(7655427151/40000000000 : ℚ), (7722219753/40000000000 : ℚ), (-667793509/1669815050 : ℚ), (24884947349052109603/66792602000000000000 : ℚ)⟩,
  ⟨(7722219753/40000000000 : ℚ), (8261593517/40000000000 : ℚ), (-2691531287/6742172050 : ℚ), (100440267221551314077/269686882000000000000 : ℚ)⟩,
  ⟨(8261593517/40000000000 : ℚ), (4684338163/20000000000 : ℚ), (-3665673566/9225690075 : ℚ), (137295104090560109089/369027603000000000000 : ℚ)⟩,
  ⟨(4684338163/20000000000 : ℚ), (5553826309/20000000000 : ℚ), (-8570706851/21737203650 : ℚ), (10089655739933514191/27171504562500000000 : ℚ)⟩,
  ⟨(5553826309/20000000000 : ℚ), (13595398979/40000000000 : ℚ), (-4853431319/12438731805 : ℚ), (920947725881896493039/2487746361000000000000 : ℚ)⟩,
  ⟨(13595398979/40000000000 : ℚ), (532262607/1250000000 : ℚ), (-33097368917/85925111125 : ℚ), (1266517863421399710573/3437004445000000000000 : ℚ)⟩,
  ⟨(532262607/1250000000 : ℚ), (10879191077/20000000000 : ℚ), (-4483580374/11814946825 : ℚ), (173001787801235196897/472597873000000000000 : ℚ)⟩,
  ⟨(10879191077/20000000000 : ℚ), (2835613459/4000000000 : ℚ), (-5131015999/13745317575 : ℚ), (199415647051515281857/549812703000000000000 : ℚ)⟩,
  ⟨(2835613459/4000000000 : ℚ), (18929021399/20000000000 : ℚ), (-2178618821/5938692630 : ℚ), (106341746838991311931/296934631500000000000 : ℚ)⟩,
  ⟨(18929021399/20000000000 : ℚ), (52190851101/40000000000 : ℚ), (-25828516312/71664041515 : ℚ), (5045667945238566335207/14332808303000000000000 : ℚ)⟩,
  ⟨(52190851101/40000000000 : ℚ), (37617374957/20000000000 : ℚ), (-40812907269/115219494065 : ℚ), (3963051216745118437241/11521949406500000000000 : ℚ)⟩,
  ⟨(37617374957/20000000000 : ℚ), (115698336943/40000000000 : ℚ), (-117517399749/337196558575 : ℚ), (2247246085958879222429/6743931171500000000000 : ℚ)⟩,
  ⟨(115698336943/40000000000 : ℚ), (98238918517/20000000000 : ℚ), (-138744181704/403897500455 : ℚ), (25749557668261526727547/80779500091000000000000 : ℚ)⟩,
  ⟨(98238918517/20000000000 : ℚ), (197371610267/20000000000 : ℚ), (-1682340306381/4956634587500 : ℚ), (29602705671569982876727/99132691750000000000000 : ℚ)⟩,
  ⟨(197371610267/20000000000 : ℚ), (1120324855909/40000000000 : ℚ), (-6101541545272/18139540884375 : ℚ), (48717054984333504627187/181395408843750000000000 : ℚ)⟩,
  ⟨(1120324855909/40000000000 : ℚ), (32/1 : ℚ), (-2541870461119/7598856439245 : ℚ), (328991849670662018232371/1519771287849000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (159278325223/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(41784317291/500000000000 : ℚ), (10198952583003/10000000000 : ℚ), (-42704275572843/500000000000 : ℚ), 11⟩,
    ⟨(41941798339/500000000000 : ℚ), (1080324855909/10000000000 : ℚ), (-2288109328029/250000000000 : ℚ), 8⟩,
    ⟨(21125354263/250000000000 : ℚ), (177371610267/5000000000 : ℚ), (-762723941711/250000000000 : ℚ), 6⟩,
    ⟨(17079670643/200000000000 : ℚ), (78238918517/5000000000 : ℚ), (-1368555460463/1000000000000 : ℚ), 5⟩,
    ⟨(86539936413/1000000000000 : ℚ), (75698336943/10000000000 : ℚ), (-674834551943/1000000000000 : ℚ), 5⟩,
    ⟨(87882296243/1000000000000 : ℚ), (17617374957/5000000000 : ℚ), (-40285294087/125000000000 : ℚ), 4⟩,
    ⟨(89373846571/1000000000000 : ℚ), (12190851101/10000000000 : ℚ), (-118217816351/1000000000000 : ℚ), 4⟩,
    ⟨(90957267953/1000000000000 : ℚ), (-1070978601/5000000000 : ℚ), (10924765209/1000000000000 : ℚ), 4⟩,
    ⟨(46285855197/500000000000 : ℚ), (-1164386541/1000000000 : ℚ), (98069518049/1000000000000 : ℚ), 4⟩,
    ⟨(735586967/7812500000 : ℚ), (-9120808923/5000000000 : ℚ), (159641710037/1000000000000 : ℚ), 3⟩,
    ⟨(95646682103/1000000000000 : ℚ), (-717737393/312500000 : ℚ), (204477513777/1000000000000 : ℚ), 3⟩,
    ⟨(96989041933/1000000000000 : ℚ), (-26404601021/10000000000 : ℚ), (118787441347/500000000000 : ℚ), 3⟩,
    ⟨(98130625131/1000000000000 : ℚ), (-14446173691/5000000000 : ℚ), (261842039289/1000000000000 : ℚ), 3⟩,
    ⟨(49513780647/500000000000 : ℚ), (-15315661837/5000000000 : ℚ), (278983452991/1000000000000 : ℚ), 3⟩,
    ⟨(99645381669/1000000000000 : ℚ), (-31738406483/10000000000 : ℚ), (289980473689/1000000000000 : ℚ), 3⟩,
    ⟨(24990085941/250000000000 : ℚ), (-32277780247/10000000000 : ℚ), (295363536263/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32344572849/10000000000 : ℚ), (74007832443/250000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control292.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control292.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate292
