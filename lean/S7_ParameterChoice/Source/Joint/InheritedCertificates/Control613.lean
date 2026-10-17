import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate613
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (88566766618331/552782534324100 : ℚ), (1236722178119/2000000000 : ℚ), (-19849939469763/200000000000 : ℚ)⟩,
  ⟨(88566766618331/552782534324100 : ℚ), (3543159707719/21959540981200 : ℚ), (327892773677/5000000000 : ℚ), (-2670732682621/250000000000 : ℚ)⟩,
  ⟨(3543159707719/21959540981200 : ℚ), (1953566398641/11970485842000 : ℚ), (21659472773/1000000000 : ℚ), (-1798305657523/500000000000 : ℚ)⟩,
  ⟨(1953566398641/11970485842000 : ℚ), (44735632357/269996852850 : ℚ), (9688986931/1000000000 : ℚ), (-328608983281/200000000000 : ℚ)⟩,
  ⟨(44735632357/269996852850 : ℚ), (51113610616/302938861875 : ℚ), (48290435797/10000000000 : ℚ), (-837803533979/1000000000000 : ℚ)⟩,
  ⟨(51113610616/302938861875 : ℚ), (236385045769/1372806782900 : ℚ), (24055326847/10000000000 : ℚ), (-428894649051/1000000000000 : ℚ)⟩,
  ⟨(236385045769/1372806782900 : ℚ), (5973103205/33947357924 : ℚ), (5163629509/5000000000 : ℚ), (-96254801641/500000000000 : ℚ)⟩,
  ⟨(5973103205/33947357924 : ℚ), (50267852467/279477494000 : ℚ), (1840419537/10000000000 : ℚ), (-43182023157/1000000000000 : ℚ)⟩,
  ⟨(50267852467/279477494000 : ℚ), (8855960842/48189006525 : ℚ), (-3749130343/10000000000 : ℚ), (57353681777/1000000000000 : ℚ)⟩,
  ⟨(8855960842/48189006525 : ℚ), (17149534187/91446306200 : ℚ), (-1520850173/2000000000 : ℚ), (128201368513/1000000000000 : ℚ)⟩,
  ⟨(17149534187/91446306200 : ℚ), (37878710413/198315691700 : ℚ), (-10347640051/10000000000 : ℚ), (89824985537/500000000000 : ℚ)⟩,
  ⟨(37878710413/198315691700 : ℚ), (24010427/123740500 : ℚ), (-1541349621/1250000000 : ℚ), (217528681487/1000000000000 : ℚ)⟩,
  ⟨(24010427/123740500 : ℚ), (6511627207/33133064100 : ℚ), (-6879381169/5000000000 : ℚ), (49047342849/200000000000 : ℚ)⟩,
  ⟨(6511627207/33133064100 : ℚ), (3128827506/15771894925 : ℚ), (-14752754261/10000000000 : ℚ), (132385797933/500000000000 : ℚ)⟩,
  ⟨(3128827506/15771894925 : ℚ), (510099439/2556645025 : ℚ), (-7691815029/5000000000 : ℚ), (27728690589/100000000000 : ℚ)⟩,
  ⟨(510099439/2556645025 : ℚ), (189781552/949136525 : ℚ), (-15690427461/10000000000 : ℚ), (141704049579/500000000000 : ℚ)⟩,
  ⟨(189781552/949136525 : ℚ), (1/5 : ℚ), (-7864196461/5000000000 : ℚ), (142083612683/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2135803539/10000000000 : ℚ), (-2/5 : ℚ), (184799683463/500000000000 : ℚ)⟩,
  ⟨(2135803539/10000000000 : ℚ), (4309572539/20000000000 : ℚ), (-379563104/949136525 : ℚ), (280624571905983679/759309220000000000 : ℚ)⟩,
  ⟨(4309572539/20000000000 : ℚ), (2308184971/10000000000 : ℚ), (-1020198878/2556645025 : ℚ), (18888099204087559021/51132900500000000000 : ℚ)⟩,
  ⟨(2308184971/10000000000 : ℚ), (5247245739/20000000000 : ℚ), (-6257655012/15771894925 : ℚ), (116354449380311321469/315437898500000000000 : ℚ)⟩,
  ⟨(5247245739/20000000000 : ℚ), (3120618831/10000000000 : ℚ), (-6511627207/16566532050 : ℚ), (40631683564253983693/110443547000000000000 : ℚ)⟩,
  ⟨(3120618831/10000000000 : ℚ), (958650379/2500000000 : ℚ), (-24010427/61870250 : ℚ), (453311917663435899/1237405000000000000 : ℚ)⟩,
  ⟨(958650379/2500000000 : ℚ), (9652359949/20000000000 : ℚ), (-37878710413/99157845850 : ℚ), (144378606016892693559/396631383400000000000 : ℚ)⟩,
  ⟨(9652359949/20000000000 : ℚ), (2479149827/4000000000 : ℚ), (-17149534187/45723153100 : ℚ), (329816739567146545051/914463062000000000000 : ℚ)⟩,
  ⟨(2479149827/4000000000 : ℚ), (16250869657/20000000000 : ℚ), (-17711921684/48189006525 : ℚ), (62383721739885177143/175232751000000000000 : ℚ)⟩,
  ⟨(16250869657/20000000000 : ℚ), (21840419537/20000000000 : ℚ), (-50267852467/139738747000 : ℚ), (977186950925617162199/2794774940000000000000 : ℚ)⟩,
  ⟨(21840419537/20000000000 : ℚ), (15163629509/10000000000 : ℚ), (-5973103205/16973678962 : ℚ), (90465565605521845019/265213733781250000000 : ℚ)⟩,
  ⟨(15163629509/10000000000 : ℚ), (44055326847/20000000000 : ℚ), (-236385045769/686403391450 : ℚ), (20205917943879781161/61286017093750000000 : ℚ)⟩,
  ⟨(44055326847/20000000000 : ℚ), (68290435797/20000000000 : ℚ), (-102227221232/302938861875 : ℚ), (66844789722125903119/212588675000000000000 : ℚ)⟩,
  ⟨(68290435797/20000000000 : ℚ), (11688986931/2000000000 : ℚ), (-44735632357/134998426425 : ℚ), (105729687267269853817/359995803800000000000 : ℚ)⟩,
  ⟨(11688986931/2000000000 : ℚ), (23659472773/2000000000 : ℚ), (-1953566398641/5985242921000 : ℚ), (3167166192959259122761/11970485842000000000000 : ℚ)⟩,
  ⟨(23659472773/2000000000 : ℚ), (32/1 : ℚ), (-3543159707719/10979770490600 : ℚ), (24246785344840286358259/109797704906000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (92587141893/250000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(160078763937/1000000000000 : ℚ), (1236722178119/2000000000 : ℚ), (-19849939469763/200000000000 : ℚ), 11⟩,
    ⟨(80421993999/500000000000 : ℚ), (327892773677/5000000000 : ℚ), (-2670732682621/250000000000 : ℚ), 8⟩,
    ⟨(162345028989/1000000000000 : ℚ), (21659472773/1000000000 : ℚ), (-1798305657523/500000000000 : ℚ), 7⟩,
    ⟨(32904840549/200000000000 : ℚ), (9688986931/1000000000 : ℚ), (-328608983281/200000000000 : ℚ), 6⟩,
    ⟨(167297764841/1000000000000 : ℚ), (48290435797/10000000000 : ℚ), (-837803533979/1000000000000 : ℚ), 5⟩,
    ⟨(170559128843/1000000000000 : ℚ), (24055326847/10000000000 : ℚ), (-428894649051/1000000000000 : ℚ), 5⟩,
    ⟨(174182962359/1000000000000 : ℚ), (5163629509/5000000000 : ℚ), (-96254801641/500000000000 : ℚ), 4⟩,
    ⟨(178030003501/1000000000000 : ℚ), (1840419537/10000000000 : ℚ), (-43182023157/1000000000000 : ℚ), 4⟩,
    ⟨(90976206317/500000000000 : ℚ), (-3749130343/10000000000 : ℚ), (57353681777/1000000000000 : ℚ), 4⟩,
    ⟨(11612465861/62500000000 : ℚ), (-1520850173/2000000000 : ℚ), (128201368513/1000000000000 : ℚ), 4⟩,
    ⟨(47355821823/250000000000 : ℚ), (-10347640051/10000000000 : ℚ), (89824985537/500000000000 : ℚ), 3⟩,
    ⟨(96342325647/500000000000 : ℚ), (-1541349621/1250000000 : ℚ), (217528681487/1000000000000 : ℚ), 3⟩,
    ⟨(195458213391/1000000000000 : ℚ), (-6879381169/5000000000 : ℚ), (49047342849/200000000000 : ℚ), 3⟩,
    ⟨(197637387147/1000000000000 : ℚ), (-14752754261/10000000000 : ℚ), (132385797933/500000000000 : ℚ), 3⟩,
    ⟨(199138428137/1000000000000 : ℚ), (-7691815029/5000000000 : ℚ), (27728690589/100000000000 : ℚ), 3⟩,
    ⟨(99951826099/500000000000 : ℚ), (-15690427461/10000000000 : ℚ), (141704049579/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-7864196461/5000000000 : ℚ), (142083612683/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control613.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control613.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate613
