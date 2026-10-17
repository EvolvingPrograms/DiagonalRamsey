import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate397
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(396282331937/1000000000000 : ℚ), (14895535042531/10000000000 : ℚ), (-295676105602137/500000000000 : ℚ), 12⟩,
    ⟨(49657837129/125000000000 : ℚ), (25450797623/156250000 : ℚ), (-32688797890441/500000000000 : ℚ), 9⟩,
    ⟨(399213985771/1000000000000 : ℚ), (142849522181/2500000000 : ℚ), (-11649847133767/500000000000 : ℚ), 7⟩,
    ⟨(16084696247/40000000000 : ℚ), (14091401203/500000000 : ℚ), (-11706887588429/1000000000000 : ℚ), 6⟩,
    ⟨(405944996719/1000000000000 : ℚ), (16366008327/1000000000 : ℚ), (-6936278346723/1000000000000 : ℚ), 5⟩,
    ⟨(82131979123/200000000000 : ℚ), (104473009351/10000000000 : ℚ), (-17662114741/3906250000 : ℚ), 5⟩,
    ⟨(406461617/976562500 : ℚ), (8857228191/1250000000 : ℚ), (-3132747616607/1000000000000 : ℚ), 4⟩,
    ⟨(211280941137/500000000000 : ℚ), (50069730863/10000000000 : ℚ), (-565383988701/250000000000 : ℚ), 4⟩,
    ⟨(2148171737/5000000000 : ℚ), (36398431889/10000000000 : ℚ), (-419849752051/250000000000 : ℚ), 4⟩,
    ⟨(10934149487/25000000000 : ℚ), (3372378799/1250000000 : ℚ), (-158916234637/125000000000 : ℚ), 4⟩,
    ⟨(44568231867/100000000000 : ℚ), (20247996007/10000000000 : ℚ), (-974317939191/1000000000000 : ℚ), 3⟩,
    ⟨(454503274079/1000000000000 : ℚ), (15294616213/10000000000 : ℚ), (-375747826137/500000000000 : ℚ), 3⟩,
    ⟨(231871947541/500000000000 : ℚ), (5780095013/5000000000 : ℚ), (-145032248647/250000000000 : ℚ), 3⟩,
    ⟨(9466303789/20000000000 : ℚ), (4343591203/5000000000 : ℚ), (-222792412887/500000000000 : ℚ), 3⟩,
    ⟨(15097655637/31250000000 : ℚ), (1287728961/2000000000 : ℚ), (-84525596881/250000000000 : ℚ), 3⟩,
    ⟨(123269698559/250000000000 : ℚ), (232643053/500000000 : ℚ), (-7842890101/31250000000 : ℚ), 3⟩,
    ⟨(15721274073/31250000000 : ℚ), (3216672319/10000000000 : ℚ), (-89732098507/500000000000 : ℚ), 3⟩,
    ⟨(128258646047/250000000000 : ℚ), (2049188653/10000000000 : ℚ), (-6008396569/50000000000 : ℚ), 3⟩,
    ⟨(261422187561/500000000000 : ℚ), (136439533/1250000000 : ℚ), (-4411246999/62500000000 : ℚ), 2⟩,
    ⟨(532415669489/1000000000000 : ℚ), (300093917/10000000000 : ℚ), (-14416039823/500000000000 : ℚ), 2⟩,
    ⟨(541656290493/1000000000000 : ℚ), (-44717151/1250000000 : ℚ), (6488637077/1000000000000 : ℚ), 2⟩,
    ⟨(550477245901/1000000000000 : ℚ), (-453371697/5000000000 : ℚ), (36462920417/1000000000000 : ℚ), 2⟩,
    ⟨(139698396273/250000000000 : ℚ), (-682941463/5000000000 : ℚ), (61924836661/1000000000000 : ℚ), 2⟩,
    ⟨(141631304293/250000000000 : ℚ), (-1749774501/10000000000 : ℚ), (41761199527/500000000000 : ℚ), 2⟩,
    ⟨(286798841149/500000000000 : ℚ), (-413949441/2000000000 : ℚ), (10176117573/100000000000 : ℚ), 2⟩,
    ⟨(144985717191/250000000000 : ℚ), (-1167300541/5000000000 : ℚ), (117036117427/1000000000000 : ℚ), 2⟩,
    ⟨(585499668957/1000000000000 : ℚ), (-318895489/1250000000 : ℚ), (32413766107/250000000000 : ℚ), 2⟩,
    ⟨(147553641963/250000000000 : ℚ), (-1362350949/5000000000 : ℚ), (13985626669/100000000000 : ℚ), 2⟩,
    ⟨(594042158397/1000000000000 : ℚ), (-2859223471/10000000000 : ℚ), (73910747819/500000000000 : ℚ), 2⟩,
    ⟨(596945578801/1000000000000 : ℚ), (-2957703021/10000000000 : ℚ), (153685820261/1000000000000 : ℚ), 2⟩,
    ⟨(598896867539/1000000000000 : ℚ), (-3022242859/10000000000 : ℚ), (39386193287/250000000000 : ℚ), 2⟩,
    ⟨(299938616317/500000000000 : ℚ), (-3054185697/10000000000 : ℚ), (39864845709/250000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1529081693/5000000000 : ℚ), (79849009889/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (121228089929/500000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control397.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control397.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate397
