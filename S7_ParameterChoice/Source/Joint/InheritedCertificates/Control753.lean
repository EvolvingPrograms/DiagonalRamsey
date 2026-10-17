import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
