import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control323
namespace DiagonalRamsey.JointInheritedCertificate323
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(124439865517/500000000000 : ℚ), (1660836248191/1250000000 : ℚ), (-331376528310891/1000000000000 : ℚ), 12⟩,
    ⟨(49921395581/200000000000 : ℚ), (1449963302831/10000000000 : ℚ), (-9156495746231/250000000000 : ℚ), 8⟩,
    ⟨(31381808483/125000000000 : ℚ), (253552247829/5000000000 : ℚ), (-13045780793063/1000000000000 : ℚ), 7⟩,
    ⟨(25320826079/100000000000 : ℚ), (7787078749/312500000 : ℚ), (-6548991616391/1000000000000 : ℚ), 6⟩,
    ⟨(256047614481/1000000000000 : ℚ), (7204050343/500000000 : ℚ), (-1937592890777/500000000000 : ℚ), 5⟩,
    ⟨(259545184407/1000000000000 : ℚ), (45761186571/5000000000 : ℚ), (-630365387539/250000000000 : ℚ), 5⟩,
    ⟨(131833643529/500000000000 : ℚ), (15431144739/2500000000 : ℚ), (-1742609591937/1000000000000 : ℚ), 4⟩,
    ⟨(134187112167/500000000000 : ℚ), (43330056393/10000000000 : ℚ), (-31342112733/25000000000 : ℚ), 4⟩,
    ⟨(136810332927/500000000000 : ℚ), (31252989513/10000000000 : ℚ), (-463329214327/500000000000 : ℚ), 4⟩,
    ⟨(139678042759/500000000000 : ℚ), (4588727701/2000000000 : ℚ), (-69708651227/100000000000 : ℚ), 4⟩,
    ⟨(285525248101/1000000000000 : ℚ), (17011742477/10000000000 : ℚ), (-26483160297/50000000000 : ℚ), 3⟩,
    ⟨(146034370597/500000000000 : ℚ), (12648437031/10000000000 : ℚ), (-80746894237/200000000000 : ℚ), 3⟩,
    ⟨(149461773691/500000000000 : ℚ), (1169775343/1250000000 : ℚ), (-306567805439/1000000000000 : ℚ), 3⟩,
    ⟨(306023651133/1000000000000 : ℚ), (54595869/80000000 : ℚ), (-57492907307/250000000000 : ℚ), 3⟩,
    ⟨(313300674567/1000000000000 : ℚ), (2418962407/5000000000 : ℚ), (-168486049673/1000000000000 : ℚ), 3⟩,
    ⟨(320684535971/1000000000000 : ℚ), (651199/2000000 : ℚ), (-118362437839/1000000000000 : ℚ), 3⟩,
    ⟨(328104124723/1000000000000 : ℚ), (1979247403/10000000000 : ℚ), (-76961888363/1000000000000 : ℚ), 3⟩,
    ⟨(167743993063/500000000000 : ℚ), (37473219/400000000 : ℚ), (-5298368189/125000000000 : ℚ), 2⟩,
    ⟨(342765009561/1000000000000 : ℚ), (38677127/5000000000 : ℚ), (-105989079/8000000000 : ℚ), 2⟩,
    ⟨(10933284791/31250000000 : ℚ), (-31851551/500000000 : ℚ), (11485198439/1000000000000 : ℚ), 2⟩,
    ⟨(356719919499/1000000000000 : ℚ), (-1234569251/10000000000 : ℚ), (16295579451/500000000000 : ℚ), 2⟩,
    ⟨(22703963287/62500000000 : ℚ), (-10853561/62500000 : ℚ), (50659470179/1000000000000 : ℚ), 2⟩,
    ⟨(14777303007/40000000000 : ℚ), (-215925601/1000000000 : ℚ), (33071096743/500000000000 : ℚ), 2⟩,
    ⟨(9379199871/25000000000 : ℚ), (-628766719/2500000000 : ℚ), (79387465863/1000000000000 : ℚ), 2⟩,
    ⟨(9510360909/25000000000 : ℚ), (-562717251/2000000000 : ℚ), (90664218637/1000000000000 : ℚ), 2⟩,
    ⟨(77024274727/200000000000 : ℚ), (-3062215633/10000000000 : ℚ), (20036057031/200000000000 : ℚ), 2⟩,
    ⟨(389243476287/1000000000000 : ℚ), (-3266665671/10000000000 : ℚ), (108095827809/1000000000000 : ℚ), 2⟩,
    ⟨(392741046213/1000000000000 : ℚ), (-3431318039/10000000000 : ℚ), (114533382617/1000000000000 : ℚ), 2⟩,
    ⟨(395580399903/1000000000000 : ℚ), (-1779746163/5000000000 : ℚ), (119585397459/1000000000000 : ℚ), 2⟩,
    ⟨(397734192829/1000000000000 : ℚ), (-3653641959/10000000000 : ℚ), (61659932549/500000000000 : ℚ), 2⟩,
    ⟨(99795420697/250000000000 : ℚ), (-1857747741/5000000000 : ℚ), (6289222717/50000000000 : ℚ), 2⟩,
    ⟨(19995446483/50000000000 : ℚ), (-46826929/125000000 : ℚ), (127009412157/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1874987129/5000000000 : ℚ), (127162192247/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (321777943701/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control323.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control323.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate323

-- Control324
namespace DiagonalRamsey.JointInheritedCertificate324
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(275306093777/1000000000000 : ℚ), (7180395224079/5000000000 : ℚ), (-396135994374581/1000000000000 : ℚ), 12⟩,
    ⟨(276050538319/1000000000000 : ℚ), (392123403787/2500000000 : ℚ), (-43781011113669/1000000000000 : ℚ), 8⟩,
    ⟨(55506451599/200000000000 : ℚ), (68649035283/1250000000 : ℚ), (-15592466946733/1000000000000 : ℚ), 7⟩,
    ⟨(139868491517/500000000000 : ℚ), (135108728831/5000000000 : ℚ), (-1565209785061/200000000000 : ℚ), 6⟩,
    ⟨(28264348073/100000000000 : ℚ), (156450788187/10000000000 : ℚ), (-289361287273/62500000000 : ℚ), 5⟩,
    ⟨(3577796999/12500000000 : ℚ), (99512245343/10000000000 : ℚ), (-602321329253/200000000000 : ℚ), 5⟩,
    ⟨(145221670279/500000000000 : ℚ), (33599852583/5000000000 : ℚ), (-2080677963007/1000000000000 : ℚ), 4⟩,
    ⟨(147630792889/500000000000 : ℚ), (4723165919/1000000000 : ℚ), (-1496360662991/1000000000000 : ℚ), 4⟩,
    ⟨(150316046621/500000000000 : ℚ), (1705352989/500000000 : ℚ), (-1105605235047/1000000000000 : ℚ), 4⟩,
    ⟨(306503142029/1000000000000 : ℚ), (12533530811/5000000000 : ℚ), (-25980350527/31250000000 : ℚ), 4⟩,
    ⟨(39102273841/125000000000 : ℚ), (18606763509/10000000000 : ℚ), (-126290382319/200000000000 : ℚ), 3⟩,
    ⟨(31951642197/100000000000 : ℚ), (13850161057/10000000000 : ℚ), (-240577598043/500000000000 : ℚ), 3⟩,
    ⟨(163266664063/500000000000 : ℚ), (1282535023/1250000000 : ℚ), (-18262913707/50000000000 : ℚ), 3⟩,
    ⟨(333801332553/1000000000000 : ℚ), (299753533/400000000 : ℚ), (-273966392531/1000000000000 : ℚ), 3⟩,
    ⟨(68250088079/200000000000 : ℚ), (5323618477/10000000000 : ℚ), (-100375022947/500000000000 : ℚ), 3⟩,
    ⟨(348808912673/1000000000000 : ℚ), (718956917/2000000000 : ℚ), (-3528129167/25000000000 : ℚ), 3⟩,
    ⟨(178201978583/500000000000 : ℚ), (21991929/100000000 : ℚ), (-91934067343/1000000000000 : ℚ), 3⟩,
    ⟨(363962429443/1000000000000 : ℚ), (264927217/2500000000 : ℚ), (-25452621629/500000000000 : ℚ), 3⟩,
    ⟨(185705768643/500000000000 : ℚ), (15039753/1250000000 : ℚ), (-16374928039/1000000000000 : ℚ), 2⟩,
    ⟨(378679541713/1000000000000 : ℚ), (-660287439/10000000000 : ℚ), (1289415257/100000000000 : ℚ), 2⟩,
    ⟨(96424111967/250000000000 : ℚ), (-656485877/5000000000 : ℚ), (37833783993/1000000000000 : ℚ), 2⟩,
    ⟨(39239467911/100000000000 : ℚ), (-232631441/1250000000 : ℚ), (14788223517/250000000000 : ℚ), 2⟩,
    ⟨(39870972781/100000000000 : ℚ), (-2322301161/10000000000 : ℚ), (15479027977/200000000000 : ℚ), 2⟩,
    ⟨(404580776597/1000000000000 : ℚ), (-135518271/500000000 : ℚ), (9297978649/100000000000 : ℚ), 2⟩,
    ⟨(409951284061/1000000000000 : ℚ), (-3035769387/10000000000 : ℚ), (53115604269/500000000000 : ℚ), 2⟩,
    ⟨(1296154779/3125000000 : ℚ), (-3306649873/10000000000 : ℚ), (23480099331/200000000000 : ℚ), 2⟩,
    ⟨(418989109919/1000000000000 : ℚ), (-3529290619/10000000000 : ℚ), (63340737823/500000000000 : ℚ), 2⟩,
    ⟨(422569389109/1000000000000 : ℚ), (-1854258353/5000000000 : ℚ), (67111342123/500000000000 : ℚ), 2⟩,
    ⟨(106368971701/250000000000 : ℚ), (-3847985929/10000000000 : ℚ), (35034092269/250000000000 : ℚ), 2⟩,
    ⟨(106920152961/250000000000 : ℚ), (-790080591/2000000000 : ℚ), (72252602329/500000000000 : ℚ), 2⟩,
    ⟨(670566143/1562500000 : ℚ), (-502209249/1250000000 : ℚ), (147387225183/1000000000000 : ℚ), 2⟩,
    ⟨(429906776061/1000000000000 : ℚ), (-810202789/2000000000 : ℚ), (148819289491/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-4055167741/10000000000 : ℚ), (2328091927/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (296020419669/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control324.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control324.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate324

-- Control325
namespace DiagonalRamsey.JointInheritedCertificate325
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141273383191/500000000000 : ℚ), (1810064344129/1250000000 : ℚ), (-102484460662997/250000000000 : ℚ), 12⟩,
    ⟨(35413061229/125000000000 : ℚ), (316345588553/2000000000 : ℚ), (-9061384833313/200000000000 : ℚ), 8⟩,
    ⟨(142406319721/500000000000 : ℚ), (276954008869/5000000000 : ℚ), (-8068156369417/500000000000 : ℚ), 7⟩,
    ⟨(143528345453/500000000000 : ℚ), (272586997401/10000000000 : ℚ), (-8099334821767/1000000000000 : ℚ), 6⟩,
    ⟨(290015032781/1000000000000 : ℚ), (157855656251/10000000000 : ℚ), (-958347153447/200000000000 : ℚ), 5⟩,
    ⟨(293659174619/1000000000000 : ℚ), (50214836951/5000000000 : ℚ), (-1558608928833/500000000000 : ℚ), 5⟩,
    ⟨(297954021341/1000000000000 : ℚ), (67837667229/10000000000 : ℚ), (-2153894941297/1000000000000 : ℚ), 4⟩,
    ⟨(151429105613/500000000000 : ℚ), (47695154097/10000000000 : ℚ), (-1549265380473/1000000000000 : ℚ), 4⟩,
    ⟨(308324514243/1000000000000 : ℚ), (4306850431/1250000000 : ℚ), (-572473618893/500000000000 : ℚ), 4⟩,
    ⟨(78575071727/250000000000 : ℚ), (12667228343/5000000000 : ℚ), (-861215695311/1000000000000 : ℚ), 4⟩,
    ⟨(160363989631/500000000000 : ℚ), (18816425921/10000000000 : ℚ), (-654393231509/1000000000000 : ℚ), 3⟩,
    ⟨(65509137823/200000000000 : ℚ), (7008606487/5000000000 : ℚ), (-498927030213/1000000000000 : ℚ), 3⟩,
    ⟨(20917984887/62500000000 : ℚ), (10395211883/10000000000 : ℚ), (-379063438753/1000000000000 : ℚ), 3⟩,
    ⟨(171042702233/500000000000 : ℚ), (7604149133/10000000000 : ℚ), (-142332943289/500000000000 : ℚ), 3⟩,
    ⟨(349667384559/1000000000000 : ℚ), (2707402183/5000000000 : ℚ), (-104488370841/500000000000 : ℚ), 3⟩,
    ⟨(22335042491/62500000000 : ℚ), (367095733/1000000000 : ℚ), (-29471001317/200000000000 : ℚ), 3⟩,
    ⟨(9127279993/25000000000 : ℚ), (2263482071/10000000000 : ℚ), (-19306442873/200000000000 : ℚ), 3⟩,
    ⟨(186392247509/500000000000 : ℚ), (1114530897/10000000000 : ℚ), (-54156903429/1000000000000 : ℚ), 3⟩,
    ⟨(38036647511/100000000000 : ℚ), (41890297/2500000000 : ℚ), (-9253240547/500000000000 : ℚ), 2⟩,
    ⟨(48470515173/125000000000 : ℚ), (-123826551/2000000000 : ℚ), (11700325687/1000000000000 : ℚ), 2⟩,
    ⟨(197453095231/500000000000 : ℚ), (-1276719313/10000000000 : ℚ), (58482307/1562500000 : ℚ), 2⟩,
    ⟨(200861950157/500000000000 : ℚ), (-365750083/2000000000 : ℚ), (11882622599/200000000000 : ℚ), 2⟩,
    ⟨(102037898167/250000000000 : ℚ), (-286648039/1250000000 : ℚ), (78217137717/1000000000000 : ℚ), 2⟩,
    ⟨(414127365333/1000000000000 : ℚ), (-536762087/2000000000 : ℚ), (23568875119/250000000000 : ℚ), 2⟩,
    ⟨(419593668351/1000000000000 : ℚ), (-752817051/2500000000 : ℚ), (26981178267/250000000000 : ℚ), 2⟩,
    ⟨(106124464559/250000000000 : ℚ), (-3283784917/10000000000 : ℚ), (29856348509/250000000000 : ℚ), 2⟩,
    ⟨(214396352479/500000000000 : ℚ), (-3507715731/10000000000 : ℚ), (64489415339/500000000000 : ℚ), 2⟩,
    ⟨(108109211699/250000000000 : ℚ), (-3687941663/10000000000 : ℚ), (8546210333/62500000000 : ℚ), 2⟩,
    ⟨(435395188671/1000000000000 : ℚ), (-3828163649/10000000000 : ℚ), (35705923101/250000000000 : ℚ), 2⟩,
    ⟨(87527848027/200000000000 : ℚ), (-1965559361/5000000000 : ℚ), (9207362823/62500000000 : ℚ), 2⟩,
    ⟨(27446711859/62500000000 : ℚ), (-1999368079/5000000000 : ℚ), (150282092801/1000000000000 : ℚ), 2⟩,
    ⟨(87981022639/200000000000 : ℚ), (-2016122843/5000000000 : ℚ), (7587746129/50000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-4036420511/10000000000 : ℚ), (75969297531/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (72658694631/250000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control325.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control325.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate325

-- Control326
namespace DiagonalRamsey.JointInheritedCertificate326
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(72452114893/250000000000 : ℚ), (14599095754649/10000000000 : ℚ), (-5298883174369/12500000000 : ℚ), 12⟩,
    ⟨(72644840193/250000000000 : ℚ), (1594834725633/10000000000 : ℚ), (-9370334933209/200000000000 : ℚ), 8⟩,
    ⟨(73028434743/250000000000 : ℚ), (558577466497/10000000000 : ℚ), (-16686826580521/1000000000000 : ℚ), 7⟩,
    ⟨(294396817271/1000000000000 : ℚ), (8591644767/312500000 : ℚ), (-8375936740677/1000000000000 : ℚ), 6⟩,
    ⟨(37175826047/125000000000 : ℚ), (39811456261/2500000000 : ℚ), (-123890709747/25000000000 : ℚ), 5⟩,
    ⟨(75278531589/250000000000 : ℚ), (101337057583/10000000000 : ℚ), (-3224069611733/1000000000000 : ℚ), 5⟩,
    ⟨(305483665783/1000000000000 : ℚ), (13693651257/2000000000 : ℚ), (-1113976294499/500000000000 : ℚ), 4⟩,
    ⟨(155236572803/500000000000 : ℚ), (48152947627/10000000000 : ℚ), (-200345106429/125000000000 : ℚ), 4⟩,
    ⟨(158017257203/500000000000 : ℚ), (34797958697/10000000000 : ℚ), (-2369427887/2000000000 : ℚ), 4⟩,
    ⟨(322114213161/1000000000000 : ℚ), (12799020033/5000000000 : ℚ), (-891369413567/1000000000000 : ℚ), 4⟩,
    ⟨(328653691049/1000000000000 : ℚ), (19022839161/10000000000 : ℚ), (-677560673043/1000000000000 : ℚ), 3⟩,
    ⟨(167794984661/500000000000 : ℚ), (28362871/20000000 : ℚ), (-258431764931/500000000000 : ℚ), 3⟩,
    ⟨(34285624783/100000000000 : ℚ), (1315954423/1250000000 : ℚ), (-392986876549/1000000000000 : ℚ), 3⟩,
    ⟨(175191274169/500000000000 : ℚ), (1928050703/2500000000 : ℚ), (-295448068223/1000000000000 : ℚ), 3⟩,
    ⟨(179048194229/500000000000 : ℚ), (2751966531/5000000000 : ℚ), (-217258495389/1000000000000 : ℚ), 3⟩,
    ⟨(365923479693/1000000000000 : ℚ), (149809389/400000000 : ℚ), (-30723651937/200000000000 : ℚ), 3⟩,
    ⟨(2990307543/8000000000 : ℚ), (1163004407/5000000000 : ℚ), (-25286678503/250000000000 : ℚ), 3⟩,
    ⟨(381615534109/1000000000000 : ℚ), (1167701061/10000000000 : ℚ), (-7176427303/125000000000 : ℚ), 3⟩,
    ⟨(389329374229/1000000000000 : ℚ), (213245459/10000000000 : ℚ), (-2063019269/100000000000 : ℚ), 2⟩,
    ⟨(396855674737/1000000000000 : ℚ), (-579458077/10000000000 : ℚ), (10522813767/1000000000000 : ℚ), 2⟩,
    ⟨(80824390649/200000000000 : ℚ), (-620939741/5000000000 : ℚ), (9261645737/250000000000 : ℚ), 2⟩,
    ⟨(205529115759/500000000000 : ℚ), (-1797804073/10000000000 : ℚ), (29850811403/500000000000 : ℚ), 2⟩,
    ⟨(208798854703/500000000000 : ℚ), (-283171563/1250000000 : ℚ), (79071561791/1000000000000 : ℚ), 2⟩,
    ⟨(423677408161/1000000000000 : ℚ), (-1329258891/5000000000 : ℚ), (47803430001/500000000000 : ℚ), 2⟩,
    ⟨(429238776961/1000000000000 : ℚ), (-746998213/2500000000 : ℚ), (10965634929/100000000000 : ℚ), 2⟩,
    ⟨(27139266049/62500000000 : ℚ), (-1631057437/5000000000 : ℚ), (3037258083/25000000000 : ℚ), 2⟩,
    ⟨(109649449053/250000000000 : ℚ), (-3487309957/10000000000 : ℚ), (131317651537/1000000000000 : ℚ), 2⟩,
    ⟨(442305314191/1000000000000 : ℚ), (-3668514699/10000000000 : ℚ), (139298575251/1000000000000 : ℚ), 2⟩,
    ⟨(445315105297/1000000000000 : ℚ), (-3809472909/10000000000 : ℚ), (145554311527/1000000000000 : ℚ), 2⟩,
    ⟨(111899545899/250000000000 : ℚ), (-782590757/2000000000 : ℚ), (150174229139/1000000000000 : ℚ), 2⟩,
    ⟨(112283140449/250000000000 : ℚ), (-995227383/2500000000 : ℚ), (153221113509/1000000000000 : ℚ), 2⟩,
    ⟨(89980692599/200000000000 : ℚ), (-2007292307/5000000000 : ℚ), (38683716779/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2009389983/5000000000 : ℚ), (77461818847/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (142623710819/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control326.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control326.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate326

-- Control327
namespace DiagonalRamsey.JointInheritedCertificate327
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(148580468887/500000000000 : ℚ), (14726428174239/10000000000 : ℚ), (-438449727058011/1000000000000 : ℚ), 12⟩,
    ⟨(37243072479/125000000000 : ℚ), (160891094463/1000000000 : ℚ), (-24229588878569/500000000000 : ℚ), 8⟩,
    ⟨(299504317047/1000000000000 : ℚ), (281796906231/5000000000 : ℚ), (-107873831743/6250000000 : ℚ), 7⟩,
    ⟨(301825128297/1000000000000 : ℚ), (55490735449/2000000000 : ℚ), (-433195745539/50000000000 : ℚ), 6⟩,
    ⟨(304884662901/1000000000000 : ℚ), (40185215873/2500000000 : ℚ), (-5126332109437/1000000000000 : ℚ), 5⟩,
    ⟨(77163363967/250000000000 : ℚ), (102313636603/10000000000 : ℚ), (-667084590707/200000000000 : ℚ), 5⟩,
    ⟨(313095211661/1000000000000 : ℚ), (34573778099/5000000000 : ℚ), (-2305184941759/1000000000000 : ℚ), 4⟩,
    ⟨(63633430749/200000000000 : ℚ), (48646633553/10000000000 : ℚ), (-829300002029/500000000000 : ℚ), 4⟩,
    ⟨(5059694321/15625000000 : ℚ), (35168472867/10000000000 : ℚ), (-38320951521/31250000000 : ℚ), 4⟩,
    ⟨(66000123171/200000000000 : ℚ), (6470757861/2500000000 : ℚ), (-922926081759/1000000000000 : ℚ), 4⟩,
    ⟨(84162043293/250000000000 : ℚ), (19246358853/10000000000 : ℚ), (-701850910647/1000000000000 : ℚ), 3⟩,
    ⟨(85924772221/250000000000 : ℚ), (717978293/500000000 : ℚ), (-33482128143/62500000000 : ℚ), 3⟩,
    ⟨(351085458819/1000000000000 : ℚ), (426861347/400000000 : ℚ), (-407665146663/1000000000000 : ℚ), 3⟩,
    ⟨(358736148197/1000000000000 : ℚ), (1957461569/2500000000 : ℚ), (-306861436807/1000000000000 : ℚ), 3⟩,
    ⟨(45822184587/125000000000 : ℚ), (350073071/625000000 : ℚ), (-11303697463/50000000000 : ℚ), 3⟩,
    ⟨(374533928037/1000000000000 : ℚ), (19132197/50000000 : ℚ), (-32067483183/200000000000 : ℚ), 3⟩,
    ⟨(382528877243/1000000000000 : ℚ), (2394514039/10000000000 : ℚ), (-53077214557/500000000000 : ℚ), 3⟩,
    ⟨(48810666073/125000000000 : ℚ), (122608077/1000000000 : ℚ), (-1525206263/25000000000 : ℚ), 3⟩,
    ⟨(398326657083/1000000000000 : ℚ), (263512183/10000000000 : ℚ), (-11527327597/500000000000 : ℚ), 2⟩,
    ⟨(405977346461/1000000000000 : ℚ), (-535714787/10000000000 : ℚ), (226965939/25000000000 : ℚ), 2⟩,
    ⟨(103340929099/250000000000 : ℚ), (-240678691/2000000000 : ℚ), (36425851111/1000000000000 : ℚ), 2⟩,
    ⟨(105103658027/250000000000 : ℚ), (-881779711/5000000000 : ℚ), (747182043/12500000000 : ℚ), 2⟩,
    ⟨(17082487577/40000000000 : ℚ), (-2234548949/10000000000 : ℚ), (39864698187/500000000000 : ℚ), 2⟩,
    ⟨(13538824023/31250000000 : ℚ), (-1315224523/5000000000 : ℚ), (12094651267/125000000000 : ℚ), 2⟩,
    ⟨(87779130307/200000000000 : ℚ), (-185133403/625000000 : ℚ), (27804926853/250000000000 : ℚ), 2⟩,
    ⟨(443967593619/1000000000000 : ℚ), (-3238018767/10000000000 : ℚ), (123397299899/1000000000000 : ℚ), 2⟩,
    ⟨(112102337353/250000000000 : ℚ), (-692920859/2000000000 : ℚ), (33376698367/250000000000 : ℚ), 2⟩,
    ⟨(452178142379/1000000000000 : ℚ), (-729377469/2000000000 : ℚ), (2834292213/20000000000 : ℚ), 2⟩,
    ⟨(455237676983/1000000000000 : ℚ), (-1894328909/5000000000 : ℚ), (148146712583/1000000000000 : ℚ), 2⟩,
    ⟨(457558488233/1000000000000 : ℚ), (-389271951/1000000000 : ℚ), (76448005953/500000000000 : ℚ), 2⟩,
    ⟨(57389778181/125000000000 : ℚ), (-792209861/2000000000 : ℚ), (31205562409/200000000000 : ℚ), 2⟩,
    ⟨(459901867507/1000000000000 : ℚ), (-998726883/2500000000 : ℚ), (615561053/3906250000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3999125597/10000000000 : ℚ), (157777639857/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (69955530343/250000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control327.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control327.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate327

-- Control328
namespace DiagonalRamsey.JointInheritedCertificate328
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27392132097/125000000000 : ℚ), (540409233043/400000000 : ℚ), (-296672863009913/1000000000000 : ℚ), 12⟩,
    ⟨(219766817871/1000000000000 : ℚ), (737241381543/5000000000 : ℚ), (-32785538711823/1000000000000 : ℚ), 8⟩,
    ⟨(110510137559/500000000000 : ℚ), (103140144863/2000000000 : ℚ), (-182412028653/15625000000 : ℚ), 7⟩,
    ⟨(111442678519/500000000000 : ℚ), (253393813239/10000000000 : ℚ), (-1171558760131/200000000000 : ℚ), 6⟩,
    ⟨(225344101873/1000000000000 : ℚ), (146480017423/10000000000 : ℚ), (-692775414677/200000000000 : ℚ), 5⟩,
    ⟨(114186415283/500000000000 : ℚ), (23250945999/2500000000 : ℚ), (-562949145541/250000000000 : ℚ), 5⟩,
    ⟨(231942374803/1000000000000 : ℚ), (7834491759/1250000000 : ℚ), (-777187170471/500000000000 : ℚ), 4⟩,
    ⟨(236018357923/1000000000000 : ℚ), (21973272281/5000000000 : ℚ), (-558251160369/500000000000 : ℚ), 4⟩,
    ⟨(240561525981/1000000000000 : ℚ), (31643402829/10000000000 : ℚ), (-82355935551/100000000000 : ℚ), 4⟩,
    ⟨(245528125783/1000000000000 : ℚ), (23173309149/10000000000 : ℚ), (-24713987371/40000000000 : ℚ), 4⟩,
    ⟨(250870326259/1000000000000 : ℚ), (428055547/250000000 : ℚ), (-467765800089/1000000000000 : ℚ), 3⟩,
    ⟨(128268339549/500000000000 : ℚ), (12667392109/10000000000 : ℚ), (-177408850303/500000000000 : ℚ), 3⟩,
    ⟨(10498904569/40000000000 : ℚ), (2326191857/2500000000 : ℚ), (-267607612097/1000000000000 : ℚ), 3⟩,
    ⟨(268620965339/1000000000000 : ℚ), (6712327233/10000000000 : ℚ), (-12425210519/62500000000 : ℚ), 3⟩,
    ⟨(137461260229/500000000000 : ℚ), (4677098259/10000000000 : ℚ), (-4484957013/31250000000 : ℚ), 3⟩,
    ⟨(140658296081/500000000000 : ℚ), (305408743/1000000000 : ℚ), (-9839928507/100000000000 : ℚ), 3⟩,
    ⟨(71935400511/250000000000 : ℚ), (871068023/5000000000 : ℚ), (-30542473437/500000000000 : ℚ), 3⟩,
    ⟨(73533918437/250000000000 : ℚ), (669181167/10000000000 : ℚ), (-1195167061/40000000000 : ℚ), 3⟩,
    ⟨(300437228867/1000000000000 : ℚ), (-108518021/5000000000 : ℚ), (-1770459143/500000000000 : ℚ), 2⟩,
    ⟨(306585579981/1000000000000 : ℚ), (-954994827/10000000000 : ℚ), (18851313033/1000000000000 : ℚ), 2⟩,
    ⟨(78130378777/250000000000 : ℚ), (-786699147/5000000000 : ℚ), (37990129979/1000000000000 : ℚ), 2⟩,
    ⟨(318187867947/1000000000000 : ℚ), (-2093892097/10000000000 : ℚ), (10880247739/200000000000 : ℚ), 2⟩,
    ⟨(323530068423/1000000000000 : ℚ), (-2532946391/10000000000 : ℚ), (68486653083/1000000000000 : ℚ), 2⟩,
    ⟨(13139866729/40000000000 : ℚ), (-2903180821/10000000000 : ℚ), (40277698061/500000000000 : ℚ), 2⟩,
    ⟨(333039836283/1000000000000 : ℚ), (-3214311319/10000000000 : ℚ), (11355709843/125000000000 : ℚ), 2⟩,
    ⟨(337115819403/1000000000000 : ℚ), (-1736917653/5000000000 : ℚ), (99541160843/1000000000000 : ℚ), 2⟩,
    ⟨(8517134091/25000000000 : ℚ), (-3687532629/10000000000 : ℚ), (106783018609/1000000000000 : ℚ), 2⟩,
    ⟨(343714092333/1000000000000 : ℚ), (-1929917171/5000000000 : ℚ), (112678979001/1000000000000 : ℚ), 2⟩,
    ⟨(21635802323/62500000000 : ℚ), (-62407731/156250000 : ℚ), (117310105919/1000000000000 : ℚ), 2⟩,
    ⟨(21752369943/62500000000 : ℚ), (-4092791287/10000000000 : ℚ), (24147174729/200000000000 : ℚ), 2⟩,
    ⟨(69858275267/200000000000 : ℚ), (-4157668187/10000000000 : ℚ), (61498944917/500000000000 : ℚ), 2⟩,
    ⟨(34992113743/100000000000 : ℚ), (-2094918233/5000000000 : ℚ), (62061255761/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4193844983/10000000000 : ℚ), (124262793833/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (84613372199/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control328.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control328.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate328

-- Control329
namespace DiagonalRamsey.JointInheritedCertificate329
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4796934903/20000000000 : ℚ), (690383514197/500000000 : ℚ), (-165922633260331/500000000000 : ℚ), 12⟩,
    ⟨(60130303669/250000000000 : ℚ), (1507355823843/10000000000 : ℚ), (-36673555757107/1000000000000 : ℚ), 8⟩,
    ⟨(120931829109/500000000000 : ℚ), (131852537801/2500000000 : ℚ), (-13059645451303/1000000000000 : ℚ), 7⟩,
    ⟨(24386114731/100000000000 : ℚ), (51854907347/2000000000 : ℚ), (-6553550357801/1000000000000 : ℚ), 6⟩,
    ⟨(246494445041/1000000000000 : ℚ), (149964400349/10000000000 : ℚ), (-3875893952907/1000000000000 : ℚ), 5⟩,
    ⟨(124869095657/500000000000 : ℚ), (47638768133/5000000000 : ℚ), (-2520198625883/1000000000000 : ℚ), 5⟩,
    ⟨(253561147079/1000000000000 : ℚ), (16063950481/2500000000 : ℚ), (-1740190702083/1000000000000 : ℚ), 4⟩,
    ⟨(128963247591/500000000000 : ℚ), (22546716857/5000000000 : ℚ), (-15631476373/12500000000 : ℚ), 4⟩,
    ⟨(52558438987/200000000000 : ℚ), (16251610403/5000000000 : ℚ), (-461485258169/500000000000 : ℚ), 4⟩,
    ⟨(26811138699/100000000000 : ℚ), (23834032933/10000000000 : ℚ), (-346505733909/500000000000 : ℚ), 4⟩,
    ⟨(136916422309/500000000000 : ℚ), (2205006359/1250000000 : ℚ), (-262642708503/500000000000 : ℚ), 3⟩,
    ⟨(17493841691/62500000000 : ℚ), (1307989861/1000000000 : ℚ), (-79821851391/200000000000 : ℚ), 3⟩,
    ⟨(35782351269/125000000000 : ℚ), (9638007751/10000000000 : ℚ), (-301732733691/1000000000000 : ℚ), 3⟩,
    ⟨(4575682019/15625000000 : ℚ), (6984919521/10000000000 : ℚ), (-1799624121/8000000000 : ℚ), 3⟩,
    ⟨(299592568649/1000000000000 : ℚ), (980535439/2000000000 : ℚ), (-16330288333/100000000000 : ℚ), 3⟩,
    ⟨(306440572667/1000000000000 : ℚ), (1621421813/5000000000 : ℚ), (-28257217139/250000000000 : ℚ), 3⟩,
    ⟨(19582606953/62500000000 : ℚ), (1901815891/10000000000 : ℚ), (-71488860847/1000000000000 : ℚ), 3⟩,
    ⟨(160084857633/500000000000 : ℚ), (805756363/10000000000 : ℚ), (-36783319333/1000000000000 : ℚ), 3⟩,
    ⟨(326918634699/1000000000000 : ℚ), (-98907893/10000000000 : ℚ), (-7521976293/1000000000000 : ℚ), 2⟩,
    ⟨(333503473763/1000000000000 : ℚ), (-425822841/5000000000 : ℚ), (4332010489/250000000000 : ℚ), 2⟩,
    ⟨(339860816859/1000000000000 : ℚ), (-1481915963/10000000000 : ℚ), (38543633591/1000000000000 : ℚ), 2⟩,
    ⟨(345929439297/1000000000000 : ℚ), (-2011948567/10000000000 : ℚ), (886171867/15625000000 : ℚ), 2⟩,
    ⟨(14066035877/40000000000 : ℚ), (-2458669377/10000000000 : ℚ), (72293945153/1000000000000 : ℚ), 2⟩,
    ⟨(17848504449/50000000000 : ℚ), (-2835055993/10000000000 : ℚ), (21407046549/250000000000 : ℚ), 2⟩,
    ⟨(361835788733/1000000000000 : ℚ), (-3151106669/10000000000 : ℚ), (96986122661/1000000000000 : ℚ), 2⟩,
    ⟨(91550284209/250000000000 : ℚ), (-3414541719/10000000000 : ℚ), (106574995333/1000000000000 : ℚ), 2⟩,
    ⟨(370024092601/1000000000000 : ℚ), (-3631316489/10000000000 : ℚ), (7159647239/62500000000 : ℚ), 2⟩,
    ⟨(186633919437/500000000000 : ℚ), (-1902999567/5000000000 : ℚ), (121046146663/1000000000000 : ℚ), 2⟩,
    ⟨(75180227321/200000000000 : ℚ), (-394204949/1000000000 : ℚ), (3941946029/31250000000 : ℚ), 2⟩,
    ⟨(377898625697/1000000000000 : ℚ), (-808404771/2000000000 : ℚ), (25982052113/200000000000 : ℚ), 2⟩,
    ⟨(379241069239/1000000000000 : ℚ), (-821544551/2000000000 : ℚ), (132397409721/1000000000000 : ℚ), 2⟩,
    ⟨(75983107753/200000000000 : ℚ), (-2070146613/5000000000 : ℚ), (133633712511/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4144351607/10000000000 : ℚ), (133787913831/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (40334688339/125000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control329.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control329.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate329

-- Control330
namespace DiagonalRamsey.JointInheritedCertificate330
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(26815444841/100000000000 : ℚ), (14249832745307/10000000000 : ℚ), (-191434875903541/500000000000 : ℚ), 12⟩,
    ⟨(268885185611/1000000000000 : ℚ), (778115213977/5000000000 : ℚ), (-10578614497839/250000000000 : ℚ), 9⟩,
    ⟨(54067924523/200000000000 : ℚ), (272412034539/5000000000 : ℚ), (-3013976427827/200000000000 : ℚ), 7⟩,
    ⟨(136251876199/500000000000 : ℚ), (268023656419/10000000000 : ℚ), (-7563528436599/1000000000000 : ℚ), 6⟩,
    ⟨(275356733207/1000000000000 : ℚ), (31030199651/2000000000 : ℚ), (-4474272874419/1000000000000 : ℚ), 5⟩,
    ⟨(139435544639/500000000000 : ℚ), (19732832163/2000000000 : ℚ), (-2910258433933/1000000000000 : ℚ), 5⟩,
    ⟨(3537662193/12500000000 : ℚ), (66610569563/10000000000 : ℚ), (-402093791891/200000000000 : ℚ), 4⟩,
    ⟨(143871251533/500000000000 : ℚ), (46804152733/10000000000 : ℚ), (-1445677909417/1000000000000 : ℚ), 4⟩,
    ⟨(293014124219/1000000000000 : ℚ), (33786759131/10000000000 : ℚ), (-533980661569/500000000000 : ℚ), 4⟩,
    ⟨(59755414061/200000000000 : ℚ), (4964230257/2000000000 : ℚ), (-802858947729/1000000000000 : ℚ), 4⟩,
    ⟨(76243960251/250000000000 : ℚ), (9207139899/5000000000 : ℚ), (-152394460051/250000000000 : ℚ), 3⟩,
    ⟨(77887684691/250000000000 : ℚ), (13697086637/10000000000 : ℚ), (-2901582287/6250000000 : ℚ), 3⟩,
    ⟨(318438443727/1000000000000 : ℚ), (2027378319/2000000000 : ℚ), (-88043093067/250000000000 : ℚ), 3⟩,
    ⟨(40696577941/125000000000 : ℚ), (1478637021/2000000000 : ℚ), (-131934619969/500000000000 : ℚ), 3⟩,
    ⟨(332884572117/1000000000000 : ℚ), (1048121557/2000000000 : ℚ), (-48258378279/250000000000 : ℚ), 3⟩,
    ⟨(34030387143/100000000000 : ℚ), (1762803643/5000000000 : ℚ), (-67665967497/500000000000 : ℚ), 3⟩,
    ⟨(8693976739/25000000000 : ℚ), (2140950909/10000000000 : ℚ), (-87713264283/1000000000000 : ℚ), 3⟩,
    ⟨(355178368873/1000000000000 : ℚ), (1010165697/10000000000 : ℚ), (-47982812431/1000000000000 : ℚ), 3⟩,
    ⟨(362490317461/1000000000000 : ℚ), (77727253/10000000000 : ℚ), (-2906662937/200000000000 : ℚ), 2⟩,
    ⟨(184812248631/500000000000 : ℚ), (-10895359/156250000 : ℚ), (3457564217/250000000000 : ℚ), 2⟩,
    ⟨(15060488089/40000000000 : ℚ), (-1345506937/10000000000 : ℚ), (950191411/25000000000 : ℚ), 2⟩,
    ⟨(191543549993/500000000000 : ℚ), (-1889982819/10000000000 : ℚ), (29341620787/500000000000 : ℚ), 2⟩,
    ⟨(97321467671/250000000000 : ℚ), (-2348334391/10000000000 : ℚ), (149182901/1953125000 : ℚ), 2⟩,
    ⟨(395048816771/1000000000000 : ℚ), (-273407217/1000000000 : ℚ), (91507299467/1000000000000 : ℚ), 2⟩,
    ⟨(400320437923/1000000000000 : ℚ), (-611523033/2000000000 : ℚ), (104372962933/1000000000000 : ℚ), 2⟩,
    ⟨(405049965549/1000000000000 : ℚ), (-3327016277/10000000000 : ℚ), (115220616931/1000000000000 : ℚ), 2⟩,
    ⟨(409191851711/1000000000000 : ℚ), (-443561631/1250000000 : ℚ), (124236958449/1000000000000 : ℚ), 2⟩,
    ⟨(206353103891/500000000000 : ℚ), (-465852343/1250000000 : ℚ), (8222811829/62500000000 : ℚ), 2⟩,
    ⟨(415559188591/1000000000000 : ℚ), (-483201403/1250000000 : ℚ), (137312717167/1000000000000 : ℚ), 2⟩,
    ⟨(208861659187/500000000000 : ℚ), (-1983772607/5000000000 : ℚ), (28311931429/200000000000 : ℚ), 2⟩,
    ⟨(209588877689/500000000000 : ℚ), (-4034505591/10000000000 : ℚ), (2887232059/20000000000 : ℚ), 2⟩,
    ⟨(419908492579/1000000000000 : ℚ), (-4067693563/10000000000 : ℚ), (145753979687/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4071828517/10000000000 : ℚ), (72963814409/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (150683924579/500000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control330.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control330.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate330
