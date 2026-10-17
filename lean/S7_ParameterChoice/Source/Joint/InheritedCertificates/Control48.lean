import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate48
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (39315825827423/490362353694800 : ℚ), (1371038931787/1250000000 : ℚ), (-88094918313623/1000000000000 : ℚ)⟩,
  ⟨(39315825827423/490362353694800 : ℚ), (6291793566997/77926637767800 : ℚ), (2902660951/25000000 : ℚ), (-9463266658777/1000000000000 : ℚ)⟩,
  ⟨(6291793566997/77926637767800 : ℚ), (347004290343/4249303703740 : ℚ), (190899001361/5000000000 : ℚ), (-158573654589/50000000000 : ℚ)⟩,
  ⟨(347004290343/4249303703740 : ℚ), (3578460683/43164553902 : ℚ), (33866563507/2000000000 : ℚ), (-287290328013/200000000000 : ℚ)⟩,
  ⟨(3578460683/43164553902 : ℚ), (7279417015/86232710154 : ℚ), (83003709731/10000000000 : ℚ), (-144151900693/200000000000 : ℚ)⟩,
  ⟨(7279417015/86232710154 : ℚ), (105456788623/1224207513900 : ℚ), (19943677327/5000000000 : ℚ), (-71357730543/200000000000 : ℚ)⟩,
  ⟨(105456788623/1224207513900 : ℚ), (66843600569/759438208800 : ℚ), (1925400547/1250000000 : ℚ), (-145875075469/1000000000000 : ℚ)⟩,
  ⟨(66843600569/759438208800 : ℚ), (90379619469/1004591335400 : ℚ), (1072201/50000000 : ℚ), (-12187874331/1000000000000 : ℚ)⟩,
  ⟨(90379619469/1004591335400 : ℚ), (15994446722/174011790025 : ℚ), (-4915736577/5000000000 : ℚ), (39095872569/500000000000 : ℚ)⟩,
  ⟨(15994446722/174011790025 : ℚ), (9332154257/99500549260 : ℚ), (-3358388951/2000000000 : ℚ), (71084766013/500000000000 : ℚ)⟩,
  ⟨(9332154257/99500549260 : ℚ), (17239722893/180489159050 : ℚ), (-10883486109/5000000000 : ℚ), (188830303311/1000000000000 : ℚ)⟩,
  ⟨(17239722893/180489159050 : ℚ), (25289782291/260639891200 : ℚ), (-25376755399/10000000000 : ℚ), (223309749097/1000000000000 : ℚ)⟩,
  ⟨(25289782291/260639891200 : ℚ), (405925009/4130679225 : ℚ), (-27983154311/10000000000 : ℚ), (62149882847/250000000000 : ℚ)⟩,
  ⟨(405925009/4130679225 : ℚ), (477219851/4811036025 : ℚ), (-2980065317/1000000000 : ℚ), (33307528973/125000000000 : ℚ)⟩,
  ⟨(477219851/4811036025 : ℚ), (2801985107/28087160850 : ℚ), (-3869412727/1250000000 : ℚ), (17369594263/62500000000 : ℚ)⟩,
  ⟨(2801985107/28087160850 : ℚ), (695060617/6952276200 : ℚ), (-31517045033/10000000000 : ℚ), (141758739211/500000000000 : ℚ)⟩,
  ⟨(695060617/6952276200 : ℚ), (1/10 : ℚ), (-6317313559/2000000000 : ℚ), (284212539039/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1682686441/8000000000 : ℚ), (-2/5 : ℚ), (368346861089/1000000000000 : ℚ)⟩,
  ⟨(1682686441/8000000000 : ℚ), (8482954967/40000000000 : ℚ), (-695060617/1738069050 : ℚ), (25607086088519076203/69522762000000000000 : ℚ)⟩,
  ⟨(8482954967/40000000000 : ℚ), (1130587273/5000000000 : ℚ), (-5603970214/14043580425 : ℚ), (6462570230196053641/17554475531250000000 : ℚ)⟩,
  ⟨(1130587273/5000000000 : ℚ), (1019934683/4000000000 : ℚ), (-1908879404/4811036025 : ℚ), (4421707129484165629/12027590062500000000 : ℚ)⟩,
  ⟨(1019934683/4000000000 : ℚ), (12016845689/40000000000 : ℚ), (-1623700036/4130679225 : ℚ), (1893348423868800793/5163349031250000000 : ℚ)⟩,
  ⟨(12016845689/40000000000 : ℚ), (14623244601/40000000000 : ℚ), (-25289782291/65159972800 : ℚ), (190370591886548988671/521279782400000000000 : ℚ)⟩,
  ⟨(14623244601/40000000000 : ℚ), (9116513891/20000000000 : ℚ), (-34479445786/90244579525 : ℚ), (1310301145879277238943/3609783181000000000000 : ℚ)⟩,
  ⟨(9116513891/20000000000 : ℚ), (4641611049/8000000000 : ℚ), (-9332154257/24875137315 : ℚ), (1790203083987797669863/4975027463000000000000 : ℚ)⟩,
  ⟨(4641611049/8000000000 : ℚ), (15084263423/20000000000 : ℚ), (-63977786888/174011790025 : ℚ), (1237183501371986810593/3480235800500000000000 : ℚ)⟩,
  ⟨(15084263423/20000000000 : ℚ), (201072201/200000000 : ℚ), (-90379619469/251147833850 : ℚ), (1756063736468094768813/5022956677000000000000 : ℚ)⟩,
  ⟨(201072201/200000000 : ℚ), (6925400547/5000000000 : ℚ), (-66843600569/189859552200 : ℚ), (54073304235929064389/158216293500000000000 : ℚ)⟩,
  ⟨(6925400547/5000000000 : ℚ), (39943677327/20000000000 : ℚ), (-105456788623/306051878475 : ℚ), (1352276792705968983019/4080691713000000000000 : ℚ)⟩,
  ⟨(39943677327/20000000000 : ℚ), (123003709731/40000000000 : ℚ), (-14558834030/43116355077 : ℚ), (912882813311931453763/2874423671800000000000 : ℚ)⟩,
  ⟨(123003709731/40000000000 : ℚ), (41866563507/8000000000 : ℚ), (-7156921366/21582276951 : ℚ), (430171049195301745229/1438818463400000000000 : ℚ)⟩,
  ⟨(41866563507/8000000000 : ℚ), (210899001361/20000000000 : ℚ), (-347004290343/1062325925935 : ℚ), (5800096525258681410537/21246518518700000000000 : ℚ)⟩,
  ⟨(210899001361/20000000000 : ℚ), (3002660951/100000000 : ℚ), (-6291793566997/19481659441950 : ℚ), (91221805981907429039497/389633188839000000000000 : ℚ)⟩,
  ⟨(3002660951/100000000 : ℚ), (32/1 : ℚ), (-39315825827423/122590588423700 : ℚ), (204135215733491963929151/1225905884237000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (50878640511/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(80106754159/1000000000000 : ℚ), (1371038931787/1250000000 : ℚ), (-88094918313623/1000000000000 : ℚ), 10⟩,
    ⟨(10061009347/125000000000 : ℚ), (2902660951/25000000 : ℚ), (-9463266658777/1000000000000 : ℚ), 7⟩,
    ⟨(10154507759/125000000000 : ℚ), (190899001361/5000000000 : ℚ), (-158573654589/50000000000 : ℚ), 6⟩,
    ⟨(20580492829/250000000000 : ℚ), (33866563507/2000000000 : ℚ), (-287290328013/200000000000 : ℚ), 5⟩,
    ⟨(10463008953/125000000000 : ℚ), (83003709731/10000000000 : ℚ), (-144151900693/200000000000 : ℚ), 4⟩,
    ⟨(10666156207/125000000000 : ℚ), (19943677327/5000000000 : ℚ), (-71357730543/200000000000 : ℚ), 4⟩,
    ⟨(21783762683/250000000000 : ℚ), (1925400547/1250000000 : ℚ), (-145875075469/1000000000000 : ℚ), 3⟩,
    ⟨(89052078929/1000000000000 : ℚ), (1072201/50000000 : ℚ), (-12187874331/1000000000000 : ℚ), 3⟩,
    ⟨(11375832991/125000000000 : ℚ), (-4915736577/5000000000 : ℚ), (39095872569/500000000000 : ℚ), 3⟩,
    ⟨(743389537/8000000000 : ℚ), (-3358388951/2000000000 : ℚ), (71084766013/500000000000 : ℚ), 3⟩,
    ⟨(94729493201/1000000000000 : ℚ), (-10883486109/5000000000 : ℚ), (188830303311/1000000000000 : ℚ), 3⟩,
    ⟨(96354671233/1000000000000 : ℚ), (-25376755399/10000000000 : ℚ), (223309749097/1000000000000 : ℚ), 2⟩,
    ⟨(97736771541/1000000000000 : ℚ), (-27983154311/10000000000 : ℚ), (62149882847/250000000000 : ℚ), 2⟩,
    ⟨(19764536157/200000000000 : ℚ), (-2980065317/1000000000 : ℚ), (33307528973/125000000000 : ℚ), 2⟩,
    ⟨(99570668081/1000000000000 : ℚ), (-3869412727/1250000000 : ℚ), (17369594263/62500000000 : ℚ), 2⟩,
    ⟨(49975994349/500000000000 : ℚ), (-31517045033/10000000000 : ℚ), (141758739211/500000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-6317313559/2000000000 : ℚ), (284212539039/1000000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control48.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control48.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate48
