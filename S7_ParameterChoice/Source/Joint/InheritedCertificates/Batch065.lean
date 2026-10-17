import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control557
namespace DiagonalRamsey.JointInheritedCertificate557
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69689646143/250000000000 : ℚ), (2695759587219/2000000000 : ℚ), (-5881225861597/15625000000 : ℚ), 12⟩,
    ⟨(279438290731/1000000000000 : ℚ), (1473533636601/10000000000 : ℚ), (-2079561315641/50000000000 : ℚ), 9⟩,
    ⟨(280791157107/1000000000000 : ℚ), (258284189389/5000000000 : ℚ), (-3701627074499/250000000000 : ℚ), 7⟩,
    ⟨(282804154857/1000000000000 : ℚ), (203587697/8000000 : ℚ), (-7426867350117/1000000000000 : ℚ), 7⟩,
    ⟨(285457897713/1000000000000 : ℚ), (147511497451/10000000000 : ℚ), (-2194889225059/500000000000 : ℚ), 6⟩,
    ⟨(7218170717/25000000000 : ℚ), (93914102577/10000000000 : ℚ), (-2852196425097/1000000000000 : ℚ), 5⟩,
    ⟨(58515893233/200000000000 : ℚ), (12691702587/2000000000 : ℚ), (-983819729103/500000000000 : ℚ), 5⟩,
    ⟨(59395741433/200000000000 : ℚ), (11152723111/2500000000 : ℚ), (-282487879847/200000000000 : ℚ), 4⟩,
    ⟨(301882184583/1000000000000 : ℚ), (32203443357/10000000000 : ℚ), (-260292565781/250000000000 : ℚ), 4⟩,
    ⟨(1228970701/4000000000 : ℚ), (23643443817/10000000000 : ℚ), (-195157346011/250000000000 : ℚ), 4⟩,
    ⟨(313008554713/1000000000000 : ℚ), (3503188797/2000000000 : ℚ), (-590712629449/1000000000000 : ℚ), 4⟩,
    ⟨(319124294399/1000000000000 : ℚ), (1624604067/1250000000 : ℚ), (-447957684167/1000000000000 : ℚ), 4⟩,
    ⟨(40691374549/125000000000 : ℚ), (383224093/400000000 : ℚ), (-337899463759/1000000000000 : ℚ), 3⟩,
    ⟨(6643339213/20000000000 : ℚ), (6943829409/10000000000 : ℚ), (-251230126029/1000000000000 : ℚ), 3⟩,
    ⟨(338968279209/1000000000000 : ℚ), (974448749/2000000000 : ℚ), (-181744049003/1000000000000 : ℚ), 3⟩,
    ⟨(345869451653/1000000000000 : ℚ), (1609839941/5000000000 : ℚ), (-62589427243/500000000000 : ℚ), 3⟩,
    ⟨(4410050199/12500000000 : ℚ), (1883932963/10000000000 : ℚ), (-39266129211/500000000000 : ℚ), 3⟩,
    ⟨(71941037673/200000000000 : ℚ), (99001887/1250000000 : ℚ), (-19821950431/500000000000 : ℚ), 3⟩,
    ⟨(91626626731/250000000000 : ℚ), (-109144097/10000000000 : ℚ), (-277234779/40000000000 : ℚ), 3⟩,
    ⟨(186571235591/500000000000 : ℚ), (-214682683/2500000000 : ℚ), (10392212689/500000000000 : ℚ), 3⟩,
    ⟨(15181966927/40000000000 : ℚ), (-1486059007/10000000000 : ℚ), (44389147253/1000000000000 : ℚ), 3⟩,
    ⟨(385664912861/1000000000000 : ℚ), (-503324643/2500000000 : ℚ), (12911697033/200000000000 : ℚ), 3⟩,
    ⟨(391430792323/1000000000000 : ℚ), (-2457364831/10000000000 : ℚ), (16362065703/200000000000 : ℚ), 3⟩,
    ⟨(396791282991/1000000000000 : ℚ), (-566250379/2000000000 : ℚ), (96544085289/1000000000000 : ℚ), 3⟩,
    ⟨(401694760409/1000000000000 : ℚ), (-3144986987/10000000000 : ℚ), (109068713153/1000000000000 : ℚ), 3⟩,
    ⟨(1586304693/3906250000 : ℚ), (-85158071/250000000 : ℚ), (934556767/7812500000 : ℚ), 3⟩,
    ⟨(204973319447/500000000000 : ℚ), (-3621245441/10000000000 : ℚ), (6419607469/50000000000 : ℚ), 3⟩,
    ⟨(413215569861/1000000000000 : ℚ), (-1897174571/5000000000 : ℚ), (67758274803/500000000000 : ℚ), 2⟩,
    ⟨(103967328179/250000000000 : ℚ), (-785822907/2000000000 : ℚ), (551183739/3906250000 : ℚ), 2⟩,
    ⟨(208941155233/500000000000 : ℚ), (-4028113277/10000000000 : ℚ), (14523000993/100000000000 : ℚ), 2⟩,
    ⟨(209617588421/500000000000 : ℚ), (-4093156431/10000000000 : ℚ), (147952434767/1000000000000 : ℚ), 2⟩,
    ⟨(419914883001/1000000000000 : ℚ), (-825079501/2000000000 : ℚ), (74652594053/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2064707321/5000000000 : ℚ), (2335529543/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (89371743141/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control557.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control557.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate557

-- Control558
namespace DiagonalRamsey.JointInheritedCertificate558
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(235752656491/1000000000000 : ℚ), (3523440843027/2500000000 : ℚ), (-166412965203033/500000000000 : ℚ), 12⟩,
    ⟨(59075614287/250000000000 : ℚ), (61643746969/400000000 : ℚ), (-36766387333059/1000000000000 : ℚ), 9⟩,
    ⟨(118698381791/500000000000 : ℚ), (540334249451/10000000000 : ℚ), (-3270361250357/250000000000 : ℚ), 8⟩,
    ⟨(119512518511/500000000000 : ℚ), (133091277559/5000000000 : ℚ), (-1638943586143/250000000000 : ℚ), 7⟩,
    ⟨(241171596307/1000000000000 : ℚ), (154240743033/10000000000 : ℚ), (-3870058111469/1000000000000 : ℚ), 6⟩,
    ⟨(48763153779/200000000000 : ℚ), (98125593343/10000000000 : ℚ), (-2510281392451/1000000000000 : ℚ), 5⟩,
    ⟨(246932089961/1000000000000 : ℚ), (33109611323/5000000000 : ℚ), (-26998870033/15625000000 : ℚ), 5⟩,
    ⟨(62622636907/250000000000 : ℚ), (46458633183/10000000000 : ℚ), (-1236788336779/1000000000000 : ℚ), 5⟩,
    ⟨(63614218001/250000000000 : ℚ), (6687658933/2000000000 : ℚ), (-908268824559/1000000000000 : ℚ), 4⟩,
    ⟨(258792865217/1000000000000 : ℚ), (1222292153/500000000 : ℚ), (-33881980209/50000000000 : ℚ), 4⟩,
    ⟨(263456769283/1000000000000 : ℚ), (9000404293/5000000000 : ℚ), (-509439322937/1000000000000 : ℚ), 4⟩,
    ⟨(134201834127/500000000000 : ℚ), (6620387943/5000000000 : ℚ), (-76584535593/200000000000 : ℚ), 4⟩,
    ⟨(273585920791/1000000000000 : ℚ), (2409162739/2500000000 : ℚ), (-285300570007/1000000000000 : ℚ), 3⟩,
    ⟨(278953618967/1000000000000 : ℚ), (342493083/500000000 : ℚ), (-52086135111/250000000000 : ℚ), 3⟩,
    ⟨(71113767229/250000000000 : ℚ), (4656068109/10000000000 : ℚ), (-146569595763/1000000000000 : ℚ), 3⟩,
    ⟨(72509322167/250000000000 : ℚ), (725554451/2500000000 : ℚ), (-12026171141/125000000000 : ℚ), 3⟩,
    ⟨(295646518393/1000000000000 : ℚ), (370320963/2500000000 : ℚ), (-13653008357/250000000000 : ℚ), 3⟩,
    ⟨(9413398067/31250000000 : ℚ), (316836551/10000000000 : ℚ), (-3974103031/200000000000 : ℚ), 3⟩,
    ⟨(153365094047/500000000000 : ℚ), (-646689713/10000000000 : ℚ), (9411396013/1000000000000 : ℚ), 3⟩,
    ⟨(31209788627/100000000000 : ℚ), (-362578133/2500000000 : ℚ), (17135643893/500000000000 : ℚ), 3⟩,
    ⟨(317280138807/1000000000000 : ℚ), (-66396973/312500000 : ℚ), (55489772053/1000000000000 : ℚ), 3⟩,
    ⟨(161113518889/500000000000 : ℚ), (-2693043531/10000000000 : ℚ), (14731983321/200000000000 : ℚ), 3⟩,
    ⟨(326890941843/1000000000000 : ℚ), (-3173007647/10000000000 : ℚ), (89235660263/1000000000000 : ℚ), 3⟩,
    ⟨(331226935057/1000000000000 : ℚ), (-1789079571/5000000000 : ℚ), (102566214671/1000000000000 : ℚ), 3⟩,
    ⟨(335193259433/1000000000000 : ℚ), (-244934553/625000000 : ℚ), (113920929171/1000000000000 : ℚ), 3⟩,
    ⟨(3387517171/10000000000 : ℚ), (-4203461811/10000000000 : ℚ), (61753769693/500000000000 : ℚ), 3⟩,
    ⟨(170934019083/500000000000 : ℚ), (-887582159/2000000000 : ℚ), (16435716519/125000000000 : ℚ), 3⟩,
    ⟨(172256105377/500000000000 : ℚ), (-4627070697/10000000000 : ℚ), (27595464907/200000000000 : ℚ), 3⟩,
    ⟨(346658770039/1000000000000 : ℚ), (-1193637717/2500000000 : ℚ), (28614786277/200000000000 : ℚ), 3⟩,
    ⟨(348287043479/1000000000000 : ℚ), (-4883014707/10000000000 : ℚ), (146842717187/1000000000000 : ℚ), 3⟩,
    ⟨(43672668739/125000000000 : ℚ), (-4954335837/10000000000 : ℚ), (149330630807/1000000000000 : ℚ), 3⟩,
    ⟨(34993115057/100000000000 : ℚ), (-4989706607/10000000000 : ℚ), (150567390509/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-156066079/312500000 : ℚ), (30144330509/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (23703272679/62500000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control558.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control558.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate558

-- Control559
namespace DiagonalRamsey.JointInheritedCertificate559
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25770390151/100000000000 : ℚ), (14392833004613/10000000000 : ℚ), (-46440490006443/125000000000 : ℚ), 12⟩,
    ⟨(129146217883/500000000000 : ℚ), (787079494811/5000000000 : ℚ), (-41042837552537/1000000000000 : ℚ), 9⟩,
    ⟨(259463836371/1000000000000 : ℚ), (276060334751/5000000000 : ℚ), (-14604183192947/1000000000000 : ℚ), 8⟩,
    ⟨(130603411049/500000000000 : ℚ), (272108252487/10000000000 : ℚ), (-914981387159/125000000000 : ℚ), 7⟩,
    ⟨(263504607041/1000000000000 : ℚ), (157756643361/10000000000 : ℚ), (-43219446291/10000000000 : ℚ), 6⟩,
    ⟨(133167531137/500000000000 : ℚ), (20084754593/2000000000 : ℚ), (-350519372219/125000000000 : ℚ), 5⟩,
    ⟨(269670928967/1000000000000 : ℚ), (67819175391/10000000000 : ℚ), (-1930938484959/1000000000000 : ℚ), 5⟩,
    ⟨(2734800809/10000000000 : ℚ), (47622639983/10000000000 : ℚ), (-1382809767933/1000000000000 : ℚ), 5⟩,
    ⟨(277725833857/1000000000000 : ℚ), (17156515777/5000000000 : ℚ), (-508111267841/500000000000 : ℚ), 4⟩,
    ⟨(70591824729/250000000000 : ℚ), (12559879101/5000000000 : ℚ), (-758920650213/1000000000000 : ℚ), 4⟩,
    ⟨(287359776233/1000000000000 : ℚ), (18530415829/10000000000 : ℚ), (-571318892737/1000000000000 : ℚ), 4⟩,
    ⟨(3658189819/12500000000 : ℚ), (68319373/50000000 : ℚ), (-17210356123/40000000000 : ℚ), 4⟩,
    ⟨(298202529091/1000000000000 : ℚ), (9979473267/10000000000 : ℚ), (-80365847337/250000000000 : ℚ), 3⟩,
    ⟨(303948382997/1000000000000 : ℚ), (1782792433/2500000000 : ℚ), (-117872888779/500000000000 : ℚ), 3⟩,
    ⟨(154918705761/500000000000 : ℚ), (4889619481/10000000000 : ℚ), (-166981763601/1000000000000 : ℚ), 3⟩,
    ⟨(157906450051/500000000000 : ℚ), (3098310587/10000000000 : ℚ), (-11096533081/100000000000 : ℚ), 3⟩,
    ⟨(321817301517/1000000000000 : ℚ), (411939927/2500000000 : ℚ), (-32367220677/500000000000 : ℚ), 3⟩,
    ⟨(327792790097/1000000000000 : ℚ), (229875957/5000000000 : ℚ), (-26158275887/1000000000000 : ℚ), 3⟩,
    ⟨(166840909311/500000000000 : ℚ), (-522602133/10000000000 : ℚ), (1580956603/250000000000 : ℚ), 3⟩,
    ⟨(21214229533/62500000000 : ℚ), (-1341318621/10000000000 : ℚ), (16936139753/500000000000 : ℚ), 3⟩,
    ⟨(344975016099/1000000000000 : ℚ), (-1013916601/5000000000 : ℚ), (57360683139/1000000000000 : ℚ), 3⟩,
    ⟨(350270425387/1000000000000 : ℚ), (-2605920137/10000000000 : ℚ), (38726645197/500000000000 : ℚ), 3⟩,
    ⟨(355262902703/1000000000000 : ℚ), (-3093716607/10000000000 : ℚ), (94659014993/1000000000000 : ℚ), 3⟩,
    ⟨(179952183881/500000000000 : ℚ), (-3505151099/10000000000 : ℚ), (13671224289/125000000000 : ℚ), 3⟩,
    ⟨(364150120719/1000000000000 : ℚ), (-3850966909/10000000000 : ℚ), (60944154193/500000000000 : ℚ), 3⟩,
    ⟨(91989818163/250000000000 : ℚ), (-206973267/500000000 : ℚ), (66224157957/500000000000 : ℚ), 3⟩,
    ⟨(74259027869/200000000000 : ℚ), (-4377051211/10000000000 : ℚ), (141229765823/1000000000000 : ℚ), 3⟩,
    ⟨(374125594579/1000000000000 : ℚ), (-4568636283/10000000000 : ℚ), (18546266653/125000000000 : ℚ), 3⟩,
    ⟨(376423379521/1000000000000 : ℚ), (-1179484601/2500000000 : ℚ), (76986478993/500000000000 : ℚ), 3⟩,
    ⟨(5908849457/15625000000 : ℚ), (-4827702237/10000000000 : ℚ), (77204223/488281250 : ℚ), 3⟩,
    ⟨(379337765853/1000000000000 : ℚ), (-4899859239/10000000000 : ℚ), (32169439531/200000000000 : ℚ), 3⟩,
    ⟨(379926300109/1000000000000 : ℚ), (-4935638879/10000000000 : ℚ), (1622055059/10000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-308756093/625000000 : ℚ), (40593729147/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (360740694747/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control559.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control559.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate559

-- Control560
namespace DiagonalRamsey.JointInheritedCertificate560
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287551024371/1000000000000 : ℚ), (14829757561083/10000000000 : ℚ), (-42711899625663/100000000000 : ℚ), 12⟩,
    ⟨(288188418043/1000000000000 : ℚ), (1622469125553/10000000000 : ℚ), (-377496989387/8000000000 : ℚ), 9⟩,
    ⟨(144728533469/500000000000 : ℚ), (569343680947/10000000000 : ℚ), (-16792430161397/1000000000000 : ℚ), 8⟩,
    ⟨(145672376637/500000000000 : ℚ), (280768998891/10000000000 : ℚ), (-8418199587707/1000000000000 : ℚ), 7⟩,
    ⟨(293833297599/1000000000000 : ℚ), (32579329773/2000000000 : ℚ), (-4971809701213/1000000000000 : ℚ), 6⟩,
    ⟨(296898733871/1000000000000 : ℚ), (51892270503/5000000000 : ℚ), (-25211213779/7812500000 : ℚ), 5⟩,
    ⟨(300511540263/1000000000000 : ℚ), (70159617171/10000000000 : ℚ), (-2223307588783/1000000000000 : ℚ), 5⟩,
    ⟨(152318461737/500000000000 : ℚ), (48169826/9765625 : ℚ), (-796667373231/500000000000 : ℚ), 5⟩,
    ⟨(309235153809/1000000000000 : ℚ), (35593374859/10000000000 : ℚ), (-586045182723/500000000000 : ℚ), 4⟩,
    ⟨(78565486949/250000000000 : ℚ), (13053191763/5000000000 : ℚ), (-438252628569/500000000000 : ℚ), 4⟩,
    ⟨(159834447331/500000000000 : ℚ), (9652937949/5000000000 : ℚ), (-132213911619/200000000000 : ℚ), 4⟩,
    ⟨(325403922551/1000000000000 : ℚ), (14283387339/10000000000 : ℚ), (-249579005437/500000000000 : ℚ), 4⟩,
    ⟨(331411800011/1000000000000 : ℚ), (10481363049/10000000000 : ℚ), (-374355066567/1000000000000 : ℚ), 3⟩,
    ⟨(337634667897/1000000000000 : ℚ), (7542852731/10000000000 : ℚ), (-138048685277/500000000000 : ℚ), 3⟩,
    ⟨(34401259659/100000000000 : ℚ), (5231204791/10000000000 : ℚ), (-49335448987/250000000000 : ℚ), 3⟩,
    ⟨(7009683263/20000000000 : ℚ), (211553563/625000000 : ℚ), (-26650058959/200000000000 : ℚ), 3⟩,
    ⟨(356987042853/1000000000000 : ℚ), (1890740373/10000000000 : ℚ), (-80414710147/1000000000000 : ℚ), 3⟩,
    ⟨(90864652353/250000000000 : ℚ), (668034219/10000000000 : ℚ), (-36382280341/1000000000000 : ℚ), 3⟩,
    ⟨(73967307621/200000000000 : ℚ), (-342082951/10000000000 : ℚ), (644447643/1000000000000 : ℚ), 3⟩,
    ⟨(376059405991/1000000000000 : ℚ), (-236617027/2000000000 : ℚ), (4000363999/125000000000 : ℚ), 3⟩,
    ⟨(382067283451/1000000000000 : ℚ), (-943762123/5000000000 : ℚ), (7337611313/125000000000 : ℚ), 3⟩,
    ⟨(387802311341/1000000000000 : ℚ), (-12400199/50000000 : ℚ), (81505504841/1000000000000 : ℚ), 3⟩,
    ⟨(196604629103/500000000000 : ℚ), (-297944619/1000000000 : ℚ), (50502624911/500000000000 : ℚ), 3⟩,
    ⟨(398236052193/1000000000000 : ℚ), (-3400205663/10000000000 : ℚ), (117654035957/1000000000000 : ℚ), 3⟩,
    ⟨(12588571329/31250000000 : ℚ), (-93837099/250000000 : ℚ), (131802997671/1000000000000 : ℚ), 3⟩,
    ⟨(20347983287/50000000000 : ℚ), (-809583403/2000000000 : ℚ), (2874476317/20000000000 : ℚ), 3⟩,
    ⟨(410572472131/1000000000000 : ℚ), (-4290173913/10000000000 : ℚ), (153626040813/1000000000000 : ℚ), 3⟩,
    ⟨(413637908403/1000000000000 : ℚ), (-140167919/312500000 : ℚ), (40417520369/250000000000 : ℚ), 3⟩,
    ⟨(52015806591/125000000000 : ℚ), (-4637392951/10000000000 : ℚ), (167976986131/1000000000000 : ℚ), 3⟩,
    ⟨(52251767383/125000000000 : ℚ), (-2374548431/5000000000 : ℚ), (17263577687/100000000000 : ℚ), 3⟩,
    ⟨(419282787959/1000000000000 : ℚ), (-2411250921/5000000000 : ℚ), (175708851201/1000000000000 : ℚ), 3⟩,
    ⟨(3280626419/7812500000 : ℚ), (-2429446047/5000000000 : ℚ), (177235789859/1000000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-486342641/1000000000 : ℚ), (17742621307/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (33587658471/100000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control560.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control560.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate560

-- Control561
namespace DiagonalRamsey.JointInheritedCertificate561
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(302727889473/1000000000000 : ℚ), (2031280610257/1250000000 : ℚ), (-61583240555689/125000000000 : ℚ), 12⟩,
    ⟨(303340370147/1000000000000 : ℚ), (444773992821/2500000000 : ℚ), (-5442074779189/100000000000 : ℚ), 9⟩,
    ⟨(76139858243/250000000000 : ℚ), (124972733593/2000000000 : ℚ), (-3872199323607/200000000000 : ℚ), 8⟩,
    ⟨(306373337707/1000000000000 : ℚ), (61687097671/2000000000 : ℚ), (-9701503560759/1000000000000 : ℚ), 7⟩,
    ⟨(9648894233/31250000000 : ℚ), (22387938563/1250000000 : ℚ), (-5726208826187/1000000000000 : ℚ), 6⟩,
    ⟨(311710236909/1000000000000 : ℚ), (114193367793/10000000000 : ℚ), (-3713714438253/1000000000000 : ℚ), 5⟩,
    ⟨(7879545853/25000000000 : ℚ), (77236537193/10000000000 : ℚ), (-2556019569709/1000000000000 : ℚ), 5⟩,
    ⟨(319145973711/1000000000000 : ℚ), (54315123683/10000000000 : ℚ), (-1829458958331/1000000000000 : ℚ), 5⟩,
    ⟨(6471289577/20000000000 : ℚ), (4898753133/1250000000 : ℚ), (-83979794751/62500000000 : ℚ), 4⟩,
    ⟨(328394796917/1000000000000 : ℚ), (1149165393/400000000 : ℚ), (-1002853140531/1000000000000 : ℚ), 4⟩,
    ⟨(333590409309/1000000000000 : ℚ), (10610943279/5000000000 : ℚ), (-754492386069/1000000000000 : ℚ), 4⟩,
    ⟨(169550639719/500000000000 : ℚ), (3134224149/2000000000 : ℚ), (-567881477089/1000000000000 : ℚ), 4⟩,
    ⟨(86218583653/250000000000 : ℚ), (1433069029/1250000000 : ℚ), (-424083964307/1000000000000 : ℚ), 4⟩,
    ⟨(70170795431/200000000000 : ℚ), (8209971403/10000000000 : ℚ), (-310913619687/1000000000000 : ℚ), 3⟩,
    ⟨(356982619839/1000000000000 : ℚ), (5647182577/10000000000 : ℚ), (-220244576831/1000000000000 : ℚ), 3⟩,
    ⟨(181600620243/500000000000 : ℚ), (719684187/2000000000 : ℚ), (-73247179829/500000000000 : ℚ), 3⟩,
    ⟨(184724975189/500000000000 : ℚ), (1939178449/10000000000 : ℚ), (-8572975257/100000000000 : ℚ), 3⟩,
    ⟨(15026742841/40000000000 : ℚ), (580381033/10000000000 : ℚ), (-35119517399/1000000000000 : ℚ), 3⟩,
    ⟨(381797213709/1000000000000 : ℚ), (-271429357/5000000000 : ℚ), (3705855691/500000000000 : ℚ), 3⟩,
    ⟨(96944214063/250000000000 : ℚ), (-739271429/5000000000 : ℚ), (21704326767/500000000000 : ℚ), 3⟩,
    ⟨(196774955713/500000000000 : ℚ), (-452529471/2000000000 : ℚ), (3701785303/50000000000 : ℚ), 3⟩,
    ⟨(79812156311/200000000000 : ℚ), (-2922428097/10000000000 : ℚ), (50089786687/500000000000 : ℚ), 3⟩,
    ⟨(404256393947/1000000000000 : ℚ), (-869678711/2500000000 : ℚ), (122520785987/1000000000000 : ℚ), 3⟩,
    ⟨(204543356007/500000000000 : ℚ), (-1973765527/5000000000 : ℚ), (70792239343/500000000000 : ℚ), 3⟩,
    ⟨(413505217153/1000000000000 : ℚ), (-4341255671/10000000000 : ℚ), (39444265943/250000000000 : ℚ), 3⟩,
    ⟨(52183669593/125000000000 : ℚ), (-1167366929/2500000000 : ℚ), (42853280771/250000000000 : ℚ), 3⟩,
    ⟨(84188190791/200000000000 : ℚ), (-2469783577/5000000000 : ℚ), (182735387491/1000000000000 : ℚ), 3⟩,
    ⟨(423886575407/1000000000000 : ℚ), (-2578617431/5000000000 : ℚ), (191929723437/1000000000000 : ℚ), 3⟩,
    ⟨(426277853157/1000000000000 : ℚ), (-532677441/1000000000 : ℚ), (39827284983/200000000000 : ℚ), 3⟩,
    ⟨(107022939473/250000000000 : ℚ), (-5451364803/10000000000 : ℚ), (6389333949/31250000000 : ℚ), 3⟩,
    ⟨(429310820717/1000000000000 : ℚ), (-55332441/100000000 : ℚ), (51992211897/250000000000 : ℚ), 3⟩,
    ⟨(429923301391/1000000000000 : ℚ), (-1114767461/2000000000 : ℚ), (209712799091/1000000000000 : ℚ), 3⟩,
    ⟨(43/100 : ℚ), (-1115779081/2000000000 : ℚ), (6560321187/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (61871116829/200000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control561.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control561.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate561

-- Control562
namespace DiagonalRamsey.JointInheritedCertificate562
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(102720528723/500000000000 : ℚ), (1855019405689/1250000000 : ℚ), (-152683380803211/500000000000 : ℚ), 12⟩,
    ⟨(51474027551/250000000000 : ℚ), (405792760241/2500000000 : ℚ), (-16862471399019/500000000000 : ℚ), 9⟩,
    ⟨(206801833313/1000000000000 : ℚ), (569265389809/10000000000 : ℚ), (-2398680112273/200000000000 : ℚ), 8⟩,
    ⟨(41629900833/200000000000 : ℚ), (280470009237/10000000000 : ℚ), (-600588899489/100000000000 : ℚ), 7⟩,
    ⟨(13120383997/62500000000 : ℚ), (81250229657/5000000000 : ℚ), (-221350766173/62500000000 : ℚ), 6⟩,
    ⟨(106057321331/500000000000 : ℚ), (25833110109/2500000000 : ℚ), (-2293901204331/1000000000000 : ℚ), 5⟩,
    ⟨(214693923857/1000000000000 : ℚ), (69668510649/10000000000 : ℚ), (-315194867289/200000000000 : ℚ), 5⟩,
    ⟨(217639147647/1000000000000 : ℚ), (48803466731/10000000000 : ℚ), (-1125228911483/1000000000000 : ℚ), 5⟩,
    ⟨(220921949919/1000000000000 : ℚ), (7008647759/2000000000 : ℚ), (-102959630261/125000000000 : ℚ), 4⟩,
    ⟨(56127678873/250000000000 : ℚ), (25530230599/10000000000 : ℚ), (-15298215287/25000000000 : ℚ), 4⟩,
    ⟨(228370882591/1000000000000 : ℚ), (9352209027/5000000000 : ℚ), (-457447875343/1000000000000 : ℚ), 4⟩,
    ⟨(232465275697/1000000000000 : ℚ), (13656857087/10000000000 : ℚ), (-68240306317/200000000000 : ℚ), 4⟩,
    ⟨(236754463567/1000000000000 : ℚ), (4914891409/5000000000 : ℚ), (-125728204081/500000000000 : ℚ), 4⟩,
    ⟨(7537410593/31250000000 : ℚ), (343309553/500000000 : ℚ), (-90331981781/500000000000 : ℚ), 3⟩,
    ⟨(245750516531/1000000000000 : ℚ), (2264735541/5000000000 : ℚ), (-123792993079/1000000000000 : ℚ), 3⟩,
    ⟨(125185372359/500000000000 : ℚ), (3322701/12500000 : ℚ), (-3095572873/40000000000 : ℚ), 3⟩,
    ⟨(127506664107/500000000000 : ℚ), (569664449/5000000000 : ℚ), (-19510770833/500000000000 : ℚ), 3⟩,
    ⟨(259633556401/1000000000000 : ℚ), (-107684133/10000000000 : ℚ), (-1388343857/200000000000 : ℚ), 3⟩,
    ⟨(66046733489/250000000000 : ℚ), (-570762431/5000000000 : ℚ), (100646073/5000000000 : ℚ), 3⟩,
    ⟨(53725921873/200000000000 : ℚ), (-401097129/2000000000 : ℚ), (43141167891/1000000000000 : ℚ), 3⟩,
    ⟨(54583759447/200000000000 : ℚ), (-2731935471/10000000000 : ℚ), (62808175991/1000000000000 : ℚ), 3⟩,
    ⟨(277013190341/1000000000000 : ℚ), (-3345333983/10000000000 : ℚ), (79672138319/1000000000000 : ℚ), 3⟩,
    ⟨(438864621/1562500000 : ℚ), (-772864463/2000000000 : ℚ), (94147278181/1000000000000 : ℚ), 3⟩,
    ⟨(284462123013/1000000000000 : ℚ), (-430319903/1000000000 : ℚ), (26637937117/250000000000 : ℚ), 3⟩,
    ⟨(57548985057/200000000000 : ℚ), (-4672978173/10000000000 : ℚ), (29282622417/250000000000 : ℚ), 3⟩,
    ⟨(72672537269/250000000000 : ℚ), (-2491078961/5000000000 : ℚ), (31518004587/250000000000 : ℚ), 3⟩,
    ⟨(29326943027/100000000000 : ℚ), (-209491401/400000000 : ℚ), (133520916961/1000000000000 : ℚ), 3⟩,
    ⟨(14772896449/50000000000 : ℚ), (-5443372391/10000000000 : ℚ), (6979360723/50000000000 : ℚ), 3⟩,
    ⟨(297234568767/1000000000000 : ℚ), (-1120841763/2000000000 : ℚ), (144353458929/1000000000000 : ℚ), 3⟩,
    ⟨(298582239619/1000000000000 : ℚ), (-5722587553/10000000000 : ℚ), (29576005383/200000000000 : ℚ), 3⟩,
    ⟨(37435995341/125000000000 : ℚ), (-5800472003/10000000000 : ℚ), (18776129429/125000000000 : ℚ), 3⟩,
    ⟨(149971507743/500000000000 : ℚ), (-5839110859/10000000000 : ℚ), (18920887571/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-1168785333/2000000000 : ℚ), (7575578051/50000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (98465180559/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control562.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control562.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate562

-- Control563
namespace DiagonalRamsey.JointInheritedCertificate563
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(121063006807/500000000000 : ℚ), (15332415796051/10000000000 : ℚ), (-185907757415741/500000000000 : ℚ), 12⟩,
    ⟨(242645143309/1000000000000 : ℚ), (1677601170441/10000000000 : ℚ), (-20533230379639/500000000000 : ℚ), 9⟩,
    ⟨(243678403197/1000000000000 : ℚ), (147167868389/2500000000 : ℚ), (-7303174594361/500000000000 : ℚ), 8⟩,
    ⟨(245215842419/1000000000000 : ℚ), (290229620337/10000000000 : ℚ), (-3658040357137/500000000000 : ℚ), 7⟩,
    ⟨(61810663649/250000000000 : ℚ), (33658731069/2000000000 : ℚ), (-431570372929/100000000000 : ℚ), 6⟩,
    ⟨(124869660209/500000000000 : ℚ), (107121324079/10000000000 : ℚ), (-2796634322441/1000000000000 : ℚ), 5⟩,
    ⟨(252681795629/1000000000000 : ℚ), (4519259243/625000000 : ℚ), (-480662928247/250000000000 : ℚ), 5⟩,
    ⟨(32005217823/125000000000 : ℚ), (50725565249/10000000000 : ℚ), (-343502965409/250000000000 : ℚ), 5⟩,
    ⟨(259786803157/1000000000000 : ℚ), (36489227683/10000000000 : ℚ), (-1007052505223/1000000000000 : ℚ), 4⟩,
    ⟨(8246278449/31250000000 : ℚ), (26645699781/10000000000 : ℚ), (-374729681743/500000000000 : ℚ), 4⟩,
    ⟨(10731385429/40000000000 : ℚ), (9791197873/5000000000 : ℚ), (-561615595319/1000000000000 : ℚ), 4⟩,
    ⟨(272955568947/1000000000000 : ℚ), (14359568463/10000000000 : ℚ), (-210172286997/500000000000 : ℚ), 4⟩,
    ⟨(277848726393/1000000000000 : ℚ), (162506461/156250000 : ℚ), (-311357991741/1000000000000 : ℚ), 4⟩,
    ⟨(141458492141/500000000000 : ℚ), (45847691/62500000 : ℚ), (-112731224681/500000000000 : ℚ), 3⟩,
    ⟨(7202788313/25000000000 : ℚ), (984074043/2000000000 : ℚ), (-156529380049/1000000000000 : ℚ), 3⟩,
    ⟨(4584099137/15625000000 : ℚ), (746868677/2500000000 : ℚ), (-3135942277/31250000000 : ℚ), 3⟩,
    ⟨(149339330111/500000000000 : ℚ), (1419967733/10000000000 : ℚ), (-13490307473/250000000000 : ℚ), 3⟩,
    ⟨(30394947247/100000000000 : ℚ), (134249531/10000000000 : ℚ), (-15231078271/1000000000000 : ℚ), 3⟩,
    ⟨(77286005177/250000000000 : ℚ), (-930507037/10000000000 : ℚ), (17401098769/1000000000000 : ℚ), 3⟩,
    ⟨(314212278597/1000000000000 : ℚ), (-1819239609/10000000000 : ℚ), (45095416781/1000000000000 : ℚ), 3⟩,
    ⟨(319105436043/1000000000000 : ℚ), (-2565576773/10000000000 : ℚ), (68724844563/1000000000000 : ℚ), 3⟩,
    ⟨(64755273853/200000000000 : ℚ), (-1597477067/5000000000 : ℚ), (22238188397/250000000000 : ℚ), 3⟩,
    ⟨(328180094623/1000000000000 : ℚ), (-3726776151/10000000000 : ℚ), (13285874061/125000000000 : ℚ), 3⟩,
    ⟨(332274201833/1000000000000 : ℚ), (-521992803/1250000000 : ℚ), (121118310671/1000000000000 : ℚ), 3⟩,
    ⟨(168009631203/500000000000 : ℚ), (-569242761/1250000000 : ℚ), (133748134019/1000000000000 : ℚ), 3⟩,
    ⟨(339379209361/1000000000000 : ℚ), (-76088267/156250000 : ℚ), (14440895307/100000000000 : ℚ), 3⟩,
    ⟨(85580421143/250000000000 : ℚ), (-1282476609/2500000000 : ℚ), (153279484731/1000000000000 : ℚ), 3⟩,
    ⟨(68963670079/200000000000 : ℚ), (-166873709/312500000 : ℚ), (160496053817/1000000000000 : ℚ), 3⟩,
    ⟨(86711290643/250000000000 : ℚ), (-5503772951/10000000000 : ℚ), (166161173479/1000000000000 : ℚ), 3⟩,
    ⟨(174191300897/500000000000 : ℚ), (-5624275959/10000000000 : ℚ), (170349984999/1000000000000 : ℚ), 3⟩,
    ⟨(174707930841/500000000000 : ℚ), (-2851763031/5000000000 : ℚ), (17311500323/100000000000 : ℚ), 3⟩,
    ⟨(349934991377/1000000000000 : ℚ), (-574283287/1000000000 : ℚ), (43622366071/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5747731479/10000000000 : ℚ), (43665224913/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (45171393903/125000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control563.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control563.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate563

-- Control564
namespace DiagonalRamsey.JointInheritedCertificate564
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(132281808689/500000000000 : ℚ), (15656451690763/10000000000 : ℚ), (-414845167021767/1000000000000 : ℚ), 12⟩,
    ⟨(265119140133/1000000000000 : ℚ), (1713432470863/10000000000 : ℚ), (-9164208210907/200000000000 : ℚ), 9⟩,
    ⟨(53244967131/200000000000 : ℚ), (300723953967/5000000000 : ℚ), (-16298937095553/1000000000000 : ℚ), 8⟩,
    ⟨(66967513873/250000000000 : ℚ), (148328048477/5000000000 : ℚ), (-4082537782619/500000000000 : ℚ), 7⟩,
    ⟨(135019477639/500000000000 : ℚ), (34421815141/2000000000 : ℚ), (-4817560164951/1000000000000 : ℚ), 6⟩,
    ⟨(136355323661/500000000000 : ℚ), (109617225899/10000000000 : ℚ), (-156139521559/50000000000 : ℚ), 5⟩,
    ⟨(275859401769/1000000000000 : ℚ), (37023679471/5000000000 : ℚ), (-536943905547/250000000000 : ℚ), 5⟩,
    ⟨(34931861799/125000000000 : ℚ), (25996119637/5000000000 : ℚ), (-307153913489/200000000000 : ℚ), 5⟩,
    ⟨(35432812329/125000000000 : ℚ), (936056769/250000000 : ℚ), (-1126484348031/1000000000000 : ℚ), 4⟩,
    ⟨(28784361907/100000000000 : ℚ), (27380935783/10000000000 : ℚ), (-839236438143/1000000000000 : ℚ), 4⟩,
    ⟨(3656950789/12500000000 : ℚ), (20161053931/10000000000 : ℚ), (-314911706839/500000000000 : ℚ), 4⟩,
    ⟨(297554447371/1000000000000 : ℚ), (7411303039/5000000000 : ℚ), (-236192696437/500000000000 : ℚ), 4⟩,
    ⟨(302790634649/1000000000000 : ℚ), (5388129439/5000000000 : ℚ), (-21936200693/62500000000 : ℚ), 4⟩,
    ⟨(308214197609/1000000000000 : ℚ), (7644621647/10000000000 : ℚ), (-102138411/400000000 : ℚ), 3⟩,
    ⟨(502036647/1600000000 : ℚ), (2588712489/5000000000 : ℚ), (-35729265261/200000000000 : ℚ), 3⟩,
    ⟨(319413221561/1000000000000 : ℚ), (3203764593/10000000000 : ℚ), (-4647301579/40000000000 : ℚ), 3⟩,
    ⟨(32508082983/100000000000 : ℚ), (1604003733/10000000000 : ℚ), (-32323061789/500000000000 : ℚ), 3⟩,
    ⟨(41340143377/125000000000 : ℚ), (292608877/10000000000 : ℚ), (-108283443/5000000000 : ℚ), 3⟩,
    ⟨(168139926891/500000000000 : ℚ), (-792681321/10000000000 : ℚ), (7264740261/500000000000 : ℚ), 3⟩,
    ⟨(170851708371/500000000000 : ℚ), (-1697886813/10000000000 : ℚ), (45209126303/1000000000000 : ℚ), 3⟩,
    ⟨(17346980201/50000000000 : ℚ), (-2457465063/10000000000 : ℚ), (35679328547/500000000000 : ℚ), 3⟩,
    ⟨(351937988271/1000000000000 : ℚ), (-3097494219/10000000000 : ℚ), (93720631971/1000000000000 : ℚ), 3⟩,
    ⟨(356650432321/1000000000000 : ℚ), (-1818940811/5000000000 : ℚ), (56432025939/500000000000 : ℚ), 3⟩,
    ⟨(361031552759/1000000000000 : ℚ), (-2046961587/5000000000 : ℚ), (25845437837/200000000000 : ℚ), 3⟩,
    ⟨(365039156999/1000000000000 : ℚ), (-4477421569/10000000000 : ℚ), (11451883/80000000 : ℚ), 3⟩,
    ⟨(184317324811/500000000000 : ℚ), (-4797499029/10000000000 : ℚ), (30977904389/200000000000 : ℚ), 3⟩,
    ⟨(371783404069/1000000000000 : ℚ), (-1265298633/2500000000 : ℚ), (32930276423/200000000000 : ℚ), 3⟩,
    ⟨(374455096113/1000000000000 : ℚ), (-5273906039/10000000000 : ℚ), (172587842601/1000000000000 : ℚ), 3⟩,
    ⟨(376623995899/1000000000000 : ℚ), (-1087943773/2000000000 : ℚ), (178814662829/1000000000000 : ℚ), 3⟩,
    ⟨(47283651967/125000000000 : ℚ), (-1390412079/2500000000 : ℚ), (183416804381/1000000000000 : ℚ), 3⟩,
    ⟨(189687455629/500000000000 : ℚ), (-1410453951/2500000000 : ℚ), (186453712819/1000000000000 : ℚ), 3⟩,
    ⟨(379930434013/1000000000000 : ℚ), (-1136314283/2000000000 : ℚ), (93981521813/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-2843262833/5000000000 : ℚ), (23518910991/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (170932010153/500000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control564.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control564.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate564
