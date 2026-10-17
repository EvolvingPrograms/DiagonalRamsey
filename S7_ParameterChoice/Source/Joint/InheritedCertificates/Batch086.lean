import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control753
namespace DiagonalRamsey.JointInheritedCertificate753
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(318793153941/1000000000000 : ℚ), (163253588491/125000000 : ℚ), (-83372706215633/200000000000 : ℚ), 13⟩,
    ⟨(63865664519/200000000000 : ℚ), (286294118937/2000000000 : ℚ), (-9206052833929/200000000000 : ℚ), 10⟩,
    ⟨(20024594121/62500000000 : ℚ), (503474347449/10000000000 : ℚ), (-3272706866557/200000000000 : ℚ), 8⟩,
    ⟨(160989222833/500000000000 : ℚ), (49770999943/2000000000 : ℚ), (-2047490330817/250000000000 : ℚ), 8⟩,
    ⟨(6481357559/20000000000 : ℚ), (144667340991/10000000000 : ℚ), (-4826255360899/1000000000000 : ℚ), 7⟩,
    ⟨(326641680413/1000000000000 : ℚ), (92303272099/10000000000 : ℚ), (-3123452617197/1000000000000 : ℚ), 6⟩,
    ⟨(41209383241/125000000000 : ℚ), (390255429/62500000 : ℚ), (-267998429093/125000000000 : ℚ), 6⟩,
    ⟨(333138821337/1000000000000 : ℚ), (21942974449/5000000000 : ℚ), (-764681667231/500000000000 : ℚ), 5⟩,
    ⟨(16849979439/50000000000 : ℚ), (15809170403/5000000000 : ℚ), (-139813079479/125000000000 : ℚ), 5⟩,
    ⟨(170610093479/500000000000 : ℚ), (5779150449/2500000000 : ℚ), (-415164790383/500000000000 : ℚ), 5⟩,
    ⟨(345759969201/1000000000000 : ℚ), (17002844231/10000000000 : ℚ), (-38775972771/62500000000 : ℚ), 5⟩,
    ⟨(175287607463/500000000000 : ℚ), (12473259131/10000000000 : ℚ), (-115692903787/250000000000 : ℚ), 4⟩,
    ⟨(355619550683/1000000000000 : ℚ), (1129232209/1250000000 : ℚ), (-341371269937/1000000000000 : ℚ), 4⟩,
    ⟨(360844396763/1000000000000 : ℚ), (6367884373/10000000000 : ℚ), (-245899480697/1000000000000 : ℚ), 4⟩,
    ⟨(366199435041/1000000000000 : ℚ), (2132475981/5000000000 : ℚ), (-42369149947/250000000000 : ℚ), 4⟩,
    ⟨(37163309357/100000000000 : ℚ), (1290565643/5000000000 : ℚ), (-21474972377/200000000000 : ℚ), 4⟩,
    ⟨(1508372173/4000000000 : ℚ), (1215462891/10000000000 : ℚ), (-56261918801/1000000000000 : ℚ), 4⟩,
    ⟨(382526701779/1000000000000 : ℚ), (95603787/10000000000 : ℚ), (-858617343/62500000000 : ℚ), 4⟩,
    ⟨(387881740057/1000000000000 : ℚ), (-831233021/10000000000 : ℚ), (548935647/25000000000 : ℚ), 4⟩,
    ⟨(393106586137/1000000000000 : ℚ), (-1604162517/10000000000 : ℚ), (52134875981/1000000000000 : ℚ), 4⟩,
    ⟨(199075460947/500000000000 : ℚ), (-2252545557/10000000000 : ℚ), (77783159701/1000000000000 : ℚ), 4⟩,
    ⟨(402966167619/1000000000000 : ℚ), (-349832043/1250000000 : ℚ), (24913878457/250000000000 : ℚ), 3⟩,
    ⟨(203752974931/500000000000 : ℚ), (-1629767579/5000000000 : ℚ), (59165087669/500000000000 : ℚ), 3⟩,
    ⟨(411726548039/1000000000000 : ℚ), (-3648298543/10000000000 : ℚ), (67126657409/500000000000 : ℚ), 3⟩,
    ⟨(415587315483/1000000000000 : ℚ), (-397508093/1000000000 : ℚ), (147770070263/1000000000000 : ℚ), 3⟩,
    ⟨(104762767723/250000000000 : ℚ), (-4247721081/10000000000 : ℚ), (159147340881/1000000000000 : ℚ), 3⟩,
    ⟨(422084456407/1000000000000 : ℚ), (-4472268519/10000000000 : ℚ), (10536922791/62500000000 : ℚ), 3⟩,
    ⟨(42465825887/100000000000 : ℚ), (-4653360379/10000000000 : ℚ), (11016093627/62500000000 : ℚ), 3⟩,
    ⟨(213373845577/500000000000 : ℚ), (-4794502869/10000000000 : ℚ), (182265887681/1000000000000 : ℚ), 3⟩,
    ⟨(107083157721/250000000000 : ℚ), (-2449140289/5000000000 : ℚ), (11668922823/62500000000 : ℚ), 3⟩,
    ⟨(17175912569/40000000000 : ℚ), (-2483254691/5000000000 : ℚ), (94814425343/500000000000 : ℚ), 3⟩,
    ⟨(429932982879/1000000000000 : ℚ), (-625042937/1250000000 : ℚ), (191082584183/1000000000000 : ℚ), 3⟩,
    ⟨(43/100 : ℚ), (-2502279891/5000000000 : ℚ), (11953991899/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (43218306371/100000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control753.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control753.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate753

-- Control754
namespace DiagonalRamsey.JointInheritedCertificate754
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(171542841193/500000000000 : ℚ), (13369921443221/10000000000 : ℚ), (-45925325454433/100000000000 : ℚ), 13⟩,
    ⟨(171824158757/500000000000 : ℚ), (146572026663/1000000000 : ℚ), (-50713864841861/1000000000000 : ℚ), 10⟩,
    ⟨(86192042321/250000000000 : ℚ), (257847222907/5000000000 : ℚ), (-4507668590059/250000000000 : ℚ), 8⟩,
    ⟨(173217226457/500000000000 : ℚ), (255007227273/10000000000 : ℚ), (-4513036139953/500000000000 : ℚ), 7⟩,
    ⟨(348631121179/1000000000000 : ℚ), (2966483437/200000000 : ℚ), (-665052533627/125000000000 : ℚ), 7⟩,
    ⟨(175668509483/500000000000 : ℚ), (94698695997/10000000000 : ℚ), (-3444569144527/1000000000000 : ℚ), 6⟩,
    ⟨(354526086997/1000000000000 : ℚ), (8014074521/1250000000 : ℚ), (-236562163517/100000000000 : ℚ), 6⟩,
    ⟨(71633522561/200000000000 : ℚ), (45105429821/10000000000 : ℚ), (-844314498413/500000000000 : ℚ), 5⟩,
    ⟨(181113263253/500000000000 : ℚ), (1301494651/400000000 : ℚ), (-1236136785393/1000000000000 : ℚ), 5⟩,
    ⟨(183331869271/500000000000 : ℚ), (23826704539/10000000000 : ℚ), (-229704521281/250000000000 : ℚ), 5⟩,
    ⟨(74287303227/200000000000 : ℚ), (2195314789/1250000000 : ℚ), (-171933114059/250000000000 : ℚ), 5⟩,
    ⟨(376498894829/1000000000000 : ℚ), (12921644253/10000000000 : ℚ), (-514245039383/1000000000000 : ℚ), 4⟩,
    ⟨(95450530287/250000000000 : ℚ), (4699068099/5000000000 : ℚ), (-23793655493/62500000000 : ℚ), 4⟩,
    ⟨(3098360977/8000000000 : ℚ), (6667520423/10000000000 : ℚ), (-55145482901/200000000000 : ℚ), 4⟩,
    ⟨(392924997157/1000000000000 : ℚ), (4514240799/10000000000 : ℚ), (-191750950373/1000000000000 : ℚ), 4⟩,
    ⟨(39863752747/100000000000 : ℚ), (697699007/2500000000 : ℚ), (-123558722239/1000000000000 : ℚ), 4⟩,
    ⟨(202188849137/500000000000 : ℚ), (348422489/2500000000 : ℚ), (-16869369763/250000000000 : ℚ), 4⟩,
    ⟨(102522557147/250000000000 : ℚ), (248735057/10000000000 : ℚ), (-10430536147/500000000000 : ℚ), 4⟩,
    ⟨(20786005181/50000000000 : ℚ), (-174556217/2500000000 : ℚ), (18232011191/1000000000000 : ℚ), 4⟩,
    ⟨(105303276149/250000000000 : ℚ), (-371834881/2500000000 : ℚ), (1601513559/31250000000 : ℚ), 4⟩,
    ⟨(106629082729/250000000000 : ℚ), (-2148763771/10000000000 : ℚ), (79279974199/1000000000000 : ℚ), 4⟩,
    ⟨(431578709609/1000000000000 : ℚ), (-1352694443/5000000000 : ℚ), (20631810409/200000000000 : ℚ), 3⟩,
    ⟨(218175743601/500000000000 : ℚ), (-3174739551/10000000000 : ℚ), (61762639543/500000000000 : ℚ), 3⟩,
    ⟨(220394349619/500000000000 : ℚ), (-3570315323/10000000000 : ℚ), (35218177571/250000000000 : ℚ), 3⟩,
    ⟨(444847612939/1000000000000 : ℚ), (-1951277363/5000000000 : ℚ), (31116796823/200000000000 : ℚ), 3⟩,
    ⟨(112122284687/250000000000 : ℚ), (-6687261/16000000 : ℚ), (83977694281/500000000000 : ℚ), 3⟩,
    ⟨(451678206779/1000000000000 : ℚ), (-2203753169/5000000000 : ℚ), (178215522703/1000000000000 : ℚ), 3⟩,
    ⟨(90876820913/200000000000 : ℚ), (-2295623327/5000000000 : ℚ), (46634835019/250000000000 : ℚ), 3⟩,
    ⟨(456580772831/1000000000000 : ℚ), (-4734381237/10000000000 : ℚ), (38611754759/200000000000 : ℚ), 3⟩,
    ⟨(22912352823/50000000000 : ℚ), (-967916341/2000000000 : ℚ), (1582966003/8000000000 : ℚ), 3⟩,
    ⟨(459366908231/1000000000000 : ℚ), (-4908725961/10000000000 : ℚ), (40208625131/200000000000 : ℚ), 3⟩,
    ⟨(229964771679/500000000000 : ℚ), (-77234501/156250000 : ℚ), (10130944751/50000000000 : ℚ), 3⟩,
    ⟨(23/50 : ℚ), (-618409987/1250000000 : ℚ), (202815384251/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (410257908821/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control754.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control754.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate754

-- Control756
namespace DiagonalRamsey.JointInheritedCertificate756
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(179716488443/500000000000 : ℚ), (13582997629593/10000000000 : ℚ), (-488794942596117/1000000000000 : ℚ), 13⟩,
    ⟨(360013190189/1000000000000 : ℚ), (1489286895743/10000000000 : ℚ), (-6747241176403/125000000000 : ℚ), 10⟩,
    ⟨(11286500907/31250000000 : ℚ), (65512640333/1250000000 : ℚ), (-4798137909271/250000000000 : ℚ), 8⟩,
    ⟨(362886371661/1000000000000 : ℚ), (259238210419/10000000000 : ℚ), (-1921760862481/200000000000 : ℚ), 7⟩,
    ⟨(182575834761/500000000000 : ℚ), (75418952401/5000000000 : ℚ), (-566485330907/100000000000 : ℚ), 7⟩,
    ⟨(7358842131/20000000000 : ℚ), (48172182047/5000000000 : ℚ), (-366841030689/100000000000 : ℚ), 6⟩,
    ⟨(37123080931/100000000000 : ℚ), (65260231483/10000000000 : ℚ), (-252014082011/100000000000 : ℚ), 6⟩,
    ⟨(187493052899/500000000000 : ℚ), (4594183421/1000000000 : ℚ), (-179969226091/100000000000 : ℚ), 5⟩,
    ⟨(75834366091/200000000000 : ℚ), (8291749419/2500000000 : ℚ), (-1318195687701/1000000000000 : ℚ), 5⟩,
    ⟨(76749534493/200000000000 : ℚ), (24312553973/10000000000 : ℚ), (-122572253849/125000000000 : ℚ), 5⟩,
    ⟨(388669563967/1000000000000 : ℚ), (8972420747/5000000000 : ℚ), (-367375140699/500000000000 : ℚ), 5⟩,
    ⟨(393890104457/1000000000000 : ℚ), (13227378549/10000000000 : ℚ), (-68779370483/125000000000 : ℚ), 4⟩,
    ⟨(15974360691/40000000000 : ℚ), (4822995439/5000000000 : ℚ), (-40823807057/100000000000 : ℚ), 4⟩,
    ⟨(202511816901/500000000000 : ℚ), (3435446863/5000000000 : ℚ), (-296662123709/1000000000000 : ℚ), 4⟩,
    ⟨(410829400683/1000000000000 : ℚ), (4682974177/10000000000 : ℚ), (-207437450861/1000000000000 : ℚ), 4⟩,
    ⟨(416720405209/1000000000000 : ℚ), (183267049/625000000 : ℚ), (-13501721253/100000000000 : ℚ), 4⟩,
    ⟨(105659978447/250000000000 : ℚ), (94596727/625000000 : ℚ), (-75490431053/1000000000000 : ℚ), 4⟩,
    ⟨(214265459157/500000000000 : ℚ), (43917699/1250000000 : ℚ), (-13019588451/500000000000 : ℚ), 4⟩,
    ⟨(86867337039/200000000000 : ℚ), (-609444191/10000000000 : ℚ), (7702312031/500000000000 : ℚ), 4⟩,
    ⟨(220000650861/500000000000 : ℚ), (-44052251/312500000 : ℚ), (2519122347/50000000000 : ℚ), 4⟩,
    ⟨(22273510727/50000000000 : ℚ), (-2080043863/10000000000 : ℚ), (40029055889/500000000000 : ℚ), 3⟩,
    ⟨(45069075503/100000000000 : ℚ), (-1321938177/5000000000 : ℚ), (5265971113/50000000000 : ℚ), 3⟩,
    ⟨(113903161633/250000000000 : ℚ), (-194939271/625000000 : ℚ), (126848964239/1000000000000 : ℚ), 3⟩,
    ⟨(230094244271/500000000000 : ℚ), (-3519263743/10000000000 : ℚ), (145174360369/1000000000000 : ℚ), 3⟩,
    ⟨(464374213199/1000000000000 : ℚ), (-77104623/200000000 : ℚ), (160704572481/1000000000000 : ℚ), 3⟩,
    ⟨(468129509687/1000000000000 : ℚ), (-2067588957/5000000000 : ℚ), (34751309219/200000000000 : ℚ), 3⟩,
    ⟨(471418212447/1000000000000 : ℚ), (-4365477147/10000000000 : ℚ), (92287521033/500000000000 : ℚ), 3⟩,
    ⟨(18968345979/40000000000 : ℚ), (-182040801/400000000 : ℚ), (6042111173/31250000000 : ℚ), 3⟩,
    ⟨(95294789467/200000000000 : ℚ), (-4695508969/10000000000 : ℚ), (50053903467/250000000000 : ℚ), 3⟩,
    ⟨(478192289973/1000000000000 : ℚ), (-2400837919/5000000000 : ℚ), (102641634479/500000000000 : ℚ), 3⟩,
    ⟨(479347128807/1000000000000 : ℚ), (-4871441479/10000000000 : ℚ), (208623424513/1000000000000 : ℚ), 3⟩,
    ⟨(47992734211/100000000000 : ℚ), (-4906027533/10000000000 : ℚ), (210282298943/1000000000000 : ℚ), 3⟩,
    ⟨(12/25 : ℚ), (-2455168523/5000000000 : ℚ), (210489139921/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (395534980441/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control756.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control756.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate756

-- Control757
namespace DiagonalRamsey.JointInheritedCertificate757
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(187981734289/500000000000 : ℚ), (3452669741803/2500000000 : ℚ), (-64979439380343/125000000000 : ℚ), 13⟩,
    ⟨(94140094611/250000000000 : ℚ), (1514470286197/10000000000 : ℚ), (-57407877387313/1000000000000 : ℚ), 10⟩,
    ⟨(377748449607/1000000000000 : ℚ), (533085512787/10000000000 : ℚ), (-20413675165703/1000000000000 : ℚ), 8⟩,
    ⟨(379516240293/1000000000000 : ℚ), (263760673751/10000000000 : ℚ), (-255535172993/25000000000 : ℚ), 7⟩,
    ⟨(381846725711/1000000000000 : ℚ), (76762683771/5000000000 : ℚ), (-6027072656989/1000000000000 : ℚ), 7⟩,
    ⟨(384717462013/1000000000000 : ℚ), (98104200621/10000000000 : ℚ), (-3903925540507/1000000000000 : ℚ), 6⟩,
    ⟨(194050401219/500000000000 : ℚ), (8310978037/1250000000 : ℚ), (-13414118229/5000000000 : ℚ), 6⟩,
    ⟨(39196416357/100000000000 : ℚ), (46836778783/10000000000 : ℚ), (-1916721839847/1000000000000 : ℚ), 5⟩,
    ⟨(396270339127/1000000000000 : ℚ), (33840903387/10000000000 : ℚ), (-1404757626391/1000000000000 : ℚ), 5⟩,
    ⟨(200488929143/500000000000 : ℚ), (4966544559/2000000000 : ℚ), (-522910130139/500000000000 : ℚ), 5⟩,
    ⟨(50755173133/125000000000 : ℚ), (18354283463/10000000000 : ℚ), (-19612810079/25000000000 : ℚ), 5⟩,
    ⟨(411412154929/1000000000000 : ℚ), (3388718541/2500000000 : ℚ), (-588420442397/1000000000000 : ℚ), 4⟩,
    ⟨(26064902777/62500000000 : ℚ), (9911530191/10000000000 : ℚ), (-4375559889/10000000000 : ℚ), 4⟩,
    ⟨(42286606933/100000000000 : ℚ), (3544396641/5000000000 : ℚ), (-159526132611/500000000000 : ℚ), 4⟩,
    ⟨(428838906409/1000000000000 : ℚ), (2431875701/5000000000 : ℚ), (-56081478777/250000000000 : ℚ), 4⟩,
    ⟨(434899433983/1000000000000 : ℚ), (3083819801/10000000000 : ℚ), (-36869116633/250000000000 : ℚ), 4⟩,
    ⟨(220494642929/500000000000 : ℚ), (410473083/2500000000 : ℚ), (-1054288047/12500000000 : ℚ), 4⟩,
    ⟨(55881226679/125000000000 : ℚ), (461156263/10000000000 : ℚ), (-1277083847/40000000000 : ℚ), 4⟩,
    ⟨(453022650511/1000000000000 : ℚ), (-102898737/2000000000 : ℚ), (598628549/50000000000 : ℚ), 4⟩,
    ⟨(458850275409/1000000000000 : ℚ), (-331670157/2500000000 : ℚ), (48997207029/1000000000000 : ℚ), 4⟩,
    ⟨(464476564913/1000000000000 : ℚ), (-1003345297/5000000000 : ℚ), (20096622439/250000000000 : ℚ), 3⟩,
    ⟨(234923667389/500000000000 : ℚ), (-2578294519/10000000000 : ℚ), (10708658633/100000000000 : ℚ), 3⟩,
    ⟨(118727715389/250000000000 : ℚ), (-3059708157/10000000000 : ℚ), (12982541051/100000000000 : ℚ), 3⟩,
    ⟨(95923676143/200000000000 : ℚ), (-3464977963/10000000000 : ℚ), (149166030727/1000000000000 : ℚ), 3⟩,
    ⟨(30245284767/62500000000 : ℚ), (-1902488549/5000000000 : ℚ), (165545239223/1000000000000 : ℚ), 3⟩,
    ⟨(487787917403/1000000000000 : ℚ), (-4088131581/10000000000 : ℚ), (89650925577/500000000000 : ℚ), 3⟩,
    ⟨(491171257829/1000000000000 : ℚ), (-540119521/1250000000 : ℚ), (95348880983/500000000000 : ℚ), 3⟩,
    ⟨(49404199413/100000000000 : ℚ), (-4508453351/10000000000 : ℚ), (19993378669/100000000000 : ℚ), 3⟩,
    ⟨(496372479549/1000000000000 : ℚ), (-581801451/1250000000 : ℚ), (103580820231/500000000000 : ℚ), 3⟩,
    ⟨(99628054047/200000000000 : ℚ), (-1190406861/2500000000 : ℚ), (106246486561/500000000000 : ℚ), 3⟩,
    ⟨(249664170699/500000000000 : ℚ), (-4832067813/10000000000 : ℚ), (108003031691/500000000000 : ℚ), 3⟩,
    ⟨(7811332051/15625000000 : ℚ), (-1216745997/2500000000 : ℚ), (217750567497/1000000000000 : ℚ), 3⟩,
    ⟨(1/2 : ℚ), (-4871334429/10000000000 : ℚ), (43593614653/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (95174534863/250000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control757.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control757.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate757

-- Control758
namespace DiagonalRamsey.JointInheritedCertificate758
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(196374848229/500000000000 : ℚ), (7031692711987/5000000000 : ℚ), (-276485673207289/500000000000 : ℚ), 13⟩,
    ⟨(393362072189/1000000000000 : ℚ), (771213413641/5000000000 : ℚ), (-3816870706987/62500000000 : ℚ), 10⟩,
    ⟨(197290463069/500000000000 : ℚ), (543062937527/10000000000 : ℚ), (-21717855975083/1000000000000 : ℚ), 8⟩,
    ⟨(15855780803/40000000000 : ℚ), (13439289161/500000000 : ℚ), (-5438003455729/500000000000 : ℚ), 7⟩,
    ⟨(3987853881/10000000000 : ℚ), (156513727863/10000000000 : ℚ), (-1603599349009/250000000000 : ℚ), 7⟩,
    ⟨(200865252423/500000000000 : ℚ), (50031435683/5000000000 : ℚ), (-4156000919939/1000000000000 : ℚ), 6⟩,
    ⟨(101300376807/250000000000 : ℚ), (67855613689/10000000000 : ℚ), (-2857157535951/1000000000000 : ℚ), 6⟩,
    ⟨(204582483799/500000000000 : ℚ), (23917597853/5000000000 : ℚ), (-510582088781/250000000000 : ℚ), 5⟩,
    ⟨(25848919729/62500000000 : ℚ), (34593804453/10000000000 : ℚ), (-748923995833/500000000000 : ℚ), 5⟩,
    ⟨(418412206097/1000000000000 : ℚ), (2541479097/1000000000 : ℚ), (-558080292867/500000000000 : ℚ), 5⟩,
    ⟨(84721385653/200000000000 : ℚ), (1881324311/1000000000 : ℚ), (-838337198427/1000000000000 : ℚ), 5⟩,
    ⟨(214558427077/500000000000 : ℚ), (1740332407/1250000000 : ℚ), (-629897395229/1000000000000 : ℚ), 4⟩,
    ⟨(86977784033/200000000000 : ℚ), (5105160573/5000000000 : ℚ), (-14674305159/31250000000 : ℚ), 4⟩,
    ⟨(440867538147/1000000000000 : ℚ), (7334476409/10000000000 : ℚ), (-343690263627/1000000000000 : ℚ), 4⟩,
    ⟨(446995130741/1000000000000 : ℚ), (5067999209/10000000000 : ℚ), (-60775779917/250000000000 : ℚ), 4⟩,
    ⟨(11330317147/25000000000 : ℚ), (3255393699/10000000000 : ℚ), (-161538283633/1000000000000 : ℚ), 4⟩,
    ⟨(45946032511/100000000000 : ℚ), (1787487197/10000000000 : ℚ), (-11821002739/125000000000 : ℚ), 4⟩,
    ⟨(465677880249/1000000000000 : ℚ), (58596477/1000000000 : ℚ), (-39000861827/1000000000000 : ℚ), 4⟩,
    ⟨(471805472843/1000000000000 : ℚ), (-81278747/2000000000 : ℚ), (7506623383/1000000000000 : ℚ), 4⟩,
    ⟨(19111363633/40000000000 : ℚ), (-1232053953/10000000000 : ℚ), (46702334293/1000000000000 : ℚ), 4⟩,
    ⟨(120889039209/250000000000 : ℚ), (-961474297/5000000000 : ℚ), (15981416887/200000000000 : ℚ), 3⟩,
    ⟨(19562643309/40000000000 : ℚ), (-1251675733/5000000000 : ℚ), (108129513537/1000000000000 : ℚ), 3⟩,
    ⟨(494260804893/1000000000000 : ℚ), (-2991873459/10000000000 : ℚ), (33036525703/250000000000 : ℚ), 3⟩,
    ⟨(499090295327/1000000000000 : ℚ), (-1701436939/5000000000 : ℚ), (30511589059/200000000000 : ℚ), 3⟩,
    ⟨(503508043393/1000000000000 : ℚ), (-936868673/2500000000 : ℚ), (33966345869/200000000000 : ℚ), 3⟩,
    ⟨(253735751881/500000000000 : ℚ), (-806859999/2000000000 : ℚ), (92164900097/500000000000 : ℚ), 3⟩,
    ⟨(102188501229/200000000000 : ℚ), (-170800869/400000000 : ℚ), (196332520449/1000000000000 : ℚ), 3⟩,
    ⟨(51388762289/100000000000 : ℚ), (-4459766031/10000000000 : ℚ), (41211016757/200000000000 : ℚ), 3⟩,
    ⟨(103255698183/200000000000 : ℚ), (-287963569/625000000 : ℚ), (213660230707/1000000000000 : ℚ), 3⟩,
    ⟨(129523021213/250000000000 : ℚ), (-471584343/1000000000 : ℚ), (43853567107/200000000000 : ℚ), 3⟩,
    ⟨(259655469401/500000000000 : ℚ), (-1196765841/2500000000 : ℚ), (222962011119/1000000000000 : ℚ), 3⟩,
    ⟨(519923314533/1000000000000 : ℚ), (-964472247/2000000000 : ℚ), (112398073659/500000000000 : ℚ), 3⟩,
    ⟨(13/25 : ℚ), (-4826759013/10000000000 : ℚ), (225024814917/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (91427958969/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control758.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control758.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate758

-- Control759
namespace DiagonalRamsey.JointInheritedCertificate759
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(104536468193/250000000000 : ℚ), (14450636480471/10000000000 : ℚ), (-302460875897437/500000000000 : ℚ), 13⟩,
    ⟨(418780403813/1000000000000 : ℚ), (49539384501/312500000 : ℚ), (-6681107941669/100000000000 : ℚ), 10⟩,
    ⟨(210021677507/500000000000 : ℚ), (558344372637/10000000000 : ℚ), (-23762314043163/1000000000000 : ℚ), 8⟩,
    ⟨(84384512693/200000000000 : ℚ), (276478064789/10000000000 : ℚ), (-11902053092073/1000000000000 : ℚ), 7⟩,
    ⟨(2652499571/6250000000 : ℚ), (80542405441/5000000000 : ℚ), (-7021415981551/1000000000000 : ℚ), 7⟩,
    ⟨(213725800147/500000000000 : ℚ), (20611205143/2000000000 : ℚ), (-4550985457119/1000000000000 : ℚ), 6⟩,
    ⟨(17241927241/40000000000 : ℚ), (13988659009/2000000000 : ℚ), (-39128393967/12500000000 : ℚ), 6⟩,
    ⟨(108788759129/250000000000 : ℚ), (616960761/125000000 : ℚ), (-279882807341/125000000000 : ℚ), 5⟩,
    ⟨(219866307751/500000000000 : ℚ), (35739264199/10000000000 : ℚ), (-410905086947/250000000000 : ℚ), 5⟩,
    ⟨(444736833397/1000000000000 : ℚ), (5259700169/2000000000 : ℚ), (-1226284537061/1000000000000 : ℚ), 5⟩,
    ⟨(90023899369/200000000000 : ℚ), (4877086689/2500000000 : ℚ), (-461294558067/500000000000 : ℚ), 5⟩,
    ⟨(28489297991/62500000000 : ℚ), (7239051457/5000000000 : ℚ), (-694813151387/1000000000000 : ℚ), 4⟩,
    ⟨(461809663029/1000000000000 : ℚ), (2665026139/2500000000 : ℚ), (-51969409997/100000000000 : ℚ), 4⟩,
    ⟨(468004583073/1000000000000 : ℚ), (7702953969/10000000000 : ℚ), (-95564040533/250000000000 : ℚ), 4⟩,
    ⟨(474353867523/1000000000000 : ℚ), (2686533813/5000000000 : ℚ), (-136253781397/500000000000 : ℚ), 4⟩,
    ⟨(480796369297/1000000000000 : ℚ), (702097601/2000000000 : ℚ), (-11473628853/62500000000 : ℚ), 4⟩,
    ⟨(487270043583/1000000000000 : ℚ), (62589833/312500000 : ℚ), (-55310645903/500000000000 : ℚ), 4⟩,
    ⟨(493712545357/1000000000000 : ℚ), (96201171/1250000000 : ℚ), (-50143036521/1000000000000 : ℚ), 4⟩,
    ⟨(500061829807/1000000000000 : ℚ), (-248238027/10000000000 : ℚ), (105857089/250000000000 : ℚ), 4⟩,
    ⟨(506256749851/1000000000000 : ℚ), (-547213033/5000000000 : ℚ), (21496769597/500000000000 : ℚ), 4⟩,
    ⟨(16007426407/31250000000 : ℚ), (-360376089/2000000000 : ℚ), (79015658279/1000000000000 : ℚ), 3⟩,
    ⟨(103589383207/200000000000 : ℚ), (-1197823857/5000000000 : ℚ), (4383868997/40000000000 : ℚ), 3⟩,
    ⟨(523329579483/1000000000000 : ℚ), (-2894946453/10000000000 : ℚ), (67794860789/500000000000 : ℚ), 3⟩,
    ⟨(264166898689/500000000000 : ℚ), (-3314617521/10000000000 : ℚ), (157655706837/1000000000000 : ℚ), 3⟩,
    ⟨(133227844091/250000000000 : ℚ), (-1833083101/5000000000 : ℚ), (44077144307/250000000000 : ℚ), 3⟩,
    ⟨(107403646371/200000000000 : ℚ), (-3958521981/10000000000 : ℚ), (95973941249/500000000000 : ℚ), 3⟩,
    ⟨(270307406293/500000000000 : ℚ), (-4198599289/10000000000 : ℚ), (204883221903/1000000000000 : ℚ), 3⟩,
    ⟨(6795831019/12500000000 : ℚ), (-878343029/2000000000 : ℚ), (53838145371/250000000000 : ℚ), 3⟩,
    ⟨(68267981177/125000000000 : ℚ), (-4541901511/10000000000 : ℚ), (223536196827/1000000000000 : ℚ), 3⟩,
    ⟨(274011528933/500000000000 : ℚ), (-2326069013/5000000000 : ℚ), (229567005831/1000000000000 : ℚ), 3⟩,
    ⟨(549286009067/1000000000000 : ℚ), (-1181130601/2500000000 : ℚ), (233538393483/1000000000000 : ℚ), 3⟩,
    ⟨(137480135027/250000000000 : ℚ), (-2380195007/5000000000 : ℚ), (235509687331/1000000000000 : ℚ), 3⟩,
    ⟨(11/20 : ℚ), (-4764858429/10000000000 : ℚ), (117877716187/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (42886536193/125000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control759.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control759.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate759

-- Control760
namespace DiagonalRamsey.JointInheritedCertificate760
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(461664382109/1000000000000 : ℚ), (7604171456433/5000000000 : ℚ), (-175715534366207/250000000000 : ℚ), 13⟩,
    ⟨(462330104491/1000000000000 : ℚ), (13352653533/80000000 : ℚ), (-77636744890077/1000000000000 : ℚ), 10⟩,
    ⟨(7244611531/15625000000 : ℚ), (73532176263/1250000000 : ℚ), (-27618906422801/1000000000000 : ℚ), 8⟩,
    ⟨(465626721791/1000000000000 : ℚ), (145770952917/5000000000 : ℚ), (-6919363912881/500000000000 : ℚ), 7⟩,
    ⟨(468225868483/1000000000000 : ℚ), (170041331447/10000000000 : ℚ), (-163363019149/20000000000 : ℚ), 7⟩,
    ⟨(58928443357/125000000000 : ℚ), (54462344677/5000000000 : ℚ), (-5298014682871/1000000000000 : ℚ), 6⟩,
    ⟨(475200922997/1000000000000 : ℚ), (1850993593/250000000 : ℚ), (-3647578305969/1000000000000 : ℚ), 6⟩,
    ⟨(479509657231/1000000000000 : ℚ), (10469040457/2000000000 : ℚ), (-1306205938559/500000000000 : ℚ), 5⟩,
    ⟨(121078063523/250000000000 : ℚ), (37990819589/10000000000 : ℚ), (-1920936172701/1000000000000 : ℚ), 5⟩,
    ⟨(489562461947/1000000000000 : ℚ), (1121486511/400000000 : ℚ), (-1436440673609/1000000000000 : ℚ), 5⟩,
    ⟨(61901214803/125000000000 : ℚ), (5219297103/2500000000 : ℚ), (-542010455987/500000000000 : ℚ), 5⟩,
    ⟨(501199637357/1000000000000 : ℚ), (7786432263/5000000000 : ℚ), (-819846714721/1000000000000 : ℚ), 4⟩,
    ⟨(507474532551/1000000000000 : ℚ), (11547293681/10000000000 : ℚ), (-616886502513/1000000000000 : ℚ), 4⟩,
    ⟨(102794794667/200000000000 : ℚ), (4215108733/5000000000 : ℚ), (-2288682391/5000000000 : ℚ), 4⟩,
    ⟨(260317683271/500000000000 : ℚ), (2987714089/5000000000 : ℚ), (-165391603741/500000000000 : ℚ), 4⟩,
    ⟨(105478911863/200000000000 : ℚ), (4014248831/10000000000 : ℚ), (-22803959681/100000000000 : ℚ), 4⟩,
    ⟨(53418645693/100000000000 : ℚ), (1214075157/5000000000 : ℚ), (-143869534533/1000000000000 : ℚ), 4⟩,
    ⟨(270472824851/500000000000 : ℚ), (45280647/400000000 : ℚ), (-2968297783/40000000000 : ℚ), 4⟩,
    ⟨(54760704291/100000000000 : ℚ), (63577583/10000000000 : ℚ), (-2008115363/125000000000 : ℚ), 4⟩,
    ⟨(277053241847/500000000000 : ℚ), (-411723911/5000000000 : ℚ), (32790114149/1000000000000 : ℚ), 3⟩,
    ⟨(70047672361/125000000000 : ℚ), (-312784821/2000000000 : ℚ), (74047377347/1000000000000 : ℚ), 3⟩,
    ⟨(566371297821/1000000000000 : ℚ), (-546101651/2500000000 : ℚ), (109000084951/1000000000000 : ℚ), 3⟩,
    ⟨(286009277149/500000000000 : ℚ), (-541060209/2000000000 : ℚ), (69323229151/500000000000 : ℚ), 3⟩,
    ⟨(577268762153/1000000000000 : ℚ), (-392798727/1250000000 : ℚ), (40940413303/250000000000 : ℚ), 3⟩,
    ⟨(291035679507/500000000000 : ℚ), (-3507928527/10000000000 : ℚ), (184949618039/1000000000000 : ℚ), 3⟩,
    ⟨(9162188957/15625000000 : ℚ), (-952861331/2500000000 : ℚ), (202681071347/1000000000000 : ℚ), 3⟩,
    ⟨(590153469389/1000000000000 : ℚ), (-812066161/2000000000 : ℚ), (217321707147/1000000000000 : ℚ), 3⟩,
    ⟨(296677573881/500000000000 : ℚ), (-4260277457/10000000000 : ℚ), (229153373877/1000000000000 : ℚ), 3⟩,
    ⟨(297977147227/500000000000 : ℚ), (-441560847/1000000000 : ℚ), (119195037693/500000000000 : ℚ), 3⟩,
    ⟨(597925878261/1000000000000 : ℚ), (-4529522909/10000000000 : ℚ), (245190031079/1000000000000 : ℚ), 3⟩,
    ⟨(299625455877/500000000000 : ℚ), (-4604275397/10000000000 : ℚ), (3120807657/12500000000 : ℚ), 3⟩,
    ⟨(74989579267/125000000000 : ℚ), (-928260467/2000000000 : ℚ), (125942342879/500000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-4645914517/10000000000 : ℚ), (252161397413/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (304731133859/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control760.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control760.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate760

-- Control761
namespace DiagonalRamsey.JointInheritedCertificate761
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(255712140693/1000000000000 : ℚ), (12354498207619/10000000000 : ℚ), (-316327383341669/1000000000000 : ℚ), 13⟩,
    ⟨(128082944449/500000000000 : ℚ), (1353410524143/10000000000 : ℚ), (-1396973232259/40000000000 : ℚ), 10⟩,
    ⟨(32133626933/125000000000 : ℚ), (475629670441/10000000000 : ℚ), (-12411969787689/1000000000000 : ℚ), 8⟩,
    ⟨(258412822789/1000000000000 : ℚ), (23484148941/1000000000 : ℚ), (-620943642863/100000000000 : ℚ), 8⟩,
    ⟨(130092184637/500000000000 : ℚ), (34085393679/2500000000 : ℚ), (-3656788119723/1000000000000 : ℚ), 7⟩,
    ⟨(131183296979/500000000000 : ℚ), (4342616233/500000000 : ℚ), (-472893325513/200000000000 : ℚ), 6⟩,
    ⟨(264938480823/1000000000000 : ℚ), (469111741/80000000 : ℚ), (-1621010695073/1000000000000 : ℚ), 6⟩,
    ⟨(133937630597/500000000000 : ℚ), (822285293/200000000 : ℚ), (-1154379986727/1000000000000 : ℚ), 5⟩,
    ⟨(271148652271/1000000000000 : ℚ), (14765406427/5000000000 : ℚ), (-842345145507/1000000000000 : ℚ), 5⟩,
    ⟨(274727129507/1000000000000 : ℚ), (5376134737/2500000000 : ℚ), (-623379656107/1000000000000 : ℚ), 5⟩,
    ⟨(278576230211/1000000000000 : ℚ), (125863027/80000000 : ℚ), (-463775716047/1000000000000 : ℚ), 5⟩,
    ⟨(141329442719/500000000000 : ℚ), (572807617/500000000 : ℚ), (-171906246107/500000000000 : ℚ), 4⟩,
    ⟨(71733944247/250000000000 : ℚ), (8207640649/10000000000 : ℚ), (-251330945199/1000000000000 : ℚ), 4⟩,
    ⟨(291365716057/1000000000000 : ℚ), (1422048243/2500000000 : ℚ), (-178506422103/1000000000000 : ℚ), 4⟩,
    ⟨(295906039909/1000000000000 : ℚ), (3699215109/10000000000 : ℚ), (-30030381603/250000000000 : ℚ), 4⟩,
    ⟨(37564127843/125000000000 : ℚ), (84197211/400000000 : ℚ), (-72592123759/1000000000000 : ℚ), 4⟩,
    ⟨(305142296799/1000000000000 : ℚ), (810169889/10000000000 : ℚ), (-33393284863/1000000000000 : ℚ), 4⟩,
    ⟨(61949855927/200000000000 : ℚ), (-253197283/10000000000 : ℚ), (-707938951/1000000000000 : ℚ), 4⟩,
    ⟨(314289603487/1000000000000 : ℚ), (-567415707/5000000000 : ℚ), (26795303897/1000000000000 : ℚ), 4⟩,
    ⟨(63743908511/200000000000 : ℚ), (-1871484557/10000000000 : ℚ), (25053365127/500000000000 : ℚ), 4⟩,
    ⟨(64599286821/200000000000 : ℚ), (-2490704777/10000000000 : ℚ), (69972025719/1000000000000 : ℚ), 4⟩,
    ⟨(327079089333/1000000000000 : ℚ), (-753339529/2500000000 : ℚ), (43479088601/500000000000 : ℚ), 4⟩,
    ⟨(330928190037/1000000000000 : ℚ), (-431922537/1250000000 : ℚ), (10149942601/100000000000 : ℚ), 3⟩,
    ⟨(334506667273/1000000000000 : ℚ), (-957253861/2500000000 : ℚ), (56964965267/500000000000 : ℚ), 3⟩,
    ⟨(6755601167/20000000000 : ℚ), (-4143706257/10000000000 : ℚ), (15563424577/125000000000 : ℚ), 3⟩,
    ⟨(340716838721/1000000000000 : ℚ), (-17213839/39062500 : ℚ), (3335761273/25000000000 : ℚ), 3⟩,
    ⟨(171644362793/500000000000 : ℚ), (-2311870417/5000000000 : ℚ), (140851591599/1000000000000 : ℚ), 3⟩,
    ⟨(34547095027/100000000000 : ℚ), (-2399498863/5000000000 : ℚ), (36721736093/250000000000 : ℚ), 3⟩,
    ⟨(173621248377/500000000000 : ℚ), (-2467878853/5000000000 : ℚ), (37905912001/250000000000 : ℚ), 3⟩,
    ⟨(348586304079/1000000000000 : ℚ), (-5036409079/10000000000 : ℚ), (38781356313/250000000000 : ℚ), 3⟩,
    ⟨(174744715323/500000000000 : ℚ), (-2551314007/5000000000 : ℚ), (78718354201/500000000000 : ℚ), 3⟩,
    ⟨(6998863577/20000000000 : ℚ), (-1027095817/2000000000 : ℚ), (158585562863/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2569786753/5000000000 : ℚ), (158728855961/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (244757018727/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control761.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control761.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate761
