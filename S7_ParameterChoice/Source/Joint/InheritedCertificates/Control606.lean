import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate606
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(122630081813/500000000000 : ℚ), (15027315504313/10000000000 : ℚ), (-369110390986487/1000000000000 : ℚ), 12⟩,
    ⟨(245764210627/1000000000000 : ℚ), (1644706364077/10000000000 : ℚ), (-636939729297/15625000000 : ℚ), 9⟩,
    ⟨(246767450381/1000000000000 : ℚ), (36084023673/625000000 : ℚ), (-14496265698161/1000000000000 : ℚ), 8⟩,
    ⟨(12413011057/50000000000 : ℚ), (1779690057/62500000 : ℚ), (-3629486440721/500000000000 : ℚ), 7⟩,
    ⟨(250228146707/1000000000000 : ℚ), (165168634019/10000000000 : ℚ), (-428041151923/100000000000 : ℚ), 6⟩,
    ⟨(252652274881/1000000000000 : ℚ), (105155572199/10000000000 : ℚ), (-2772401425669/1000000000000 : ℚ), 6⟩,
    ⟨(51101851997/200000000000 : ℚ), (70987737801/10000000000 : ℚ), (-476199209753/250000000000 : ℚ), 5⟩,
    ⟨(258771587689/1000000000000 : ℚ), (12448830267/2500000000 : ℚ), (-1328297481/976562500 : ℚ), 5⟩,
    ⟨(262407839993/1000000000000 : ℚ), (17904667501/5000000000 : ℚ), (-995922134409/1000000000000 : ℚ), 4⟩,
    ⟨(133191498901/500000000000 : ℚ), (26133870147/10000000000 : ℚ), (-185061073801/250000000000 : ℚ), 4⟩,
    ⟨(67664694543/250000000000 : ℚ), (959375079/500000000 : ℚ), (-110762759149/200000000000 : ℚ), 4⟩,
    ⟨(275194003/1000000000 : ℚ), (2809693423/2000000000 : ℚ), (-16544879209/40000000000 : ℚ), 4⟩,
    ⟨(34993124449/125000000000 : ℚ), (1268859209/1250000000 : ℚ), (-305483813669/1000000000000 : ℚ), 4⟩,
    ⟨(284866001293/1000000000000 : ℚ), (7132310901/10000000000 : ℚ), (-220272040863/1000000000000 : ℚ), 4⟩,
    ⟨(9059675879/31250000000 : ℚ), (2376211947/5000000000 : ℚ), (-151901875737/1000000000000 : ℚ), 3⟩,
    ⟨(73756825803/250000000000 : ℚ), (1423533227/5000000000 : ℚ), (-48097222953/500000000000 : ℚ), 3⟩,
    ⟨(150084870269/500000000000 : ℚ), (1301325901/10000000000 : ℚ), (-50206879109/1000000000000 : ℚ), 3⟩,
    ⟨(305287415623/1000000000000 : ℚ), (33043729/10000000000 : ℚ), (-738890373/62500000000 : ℚ), 3⟩,
    ⟨(310331042457/1000000000000 : ℚ), (-1017583847/10000000000 : ℚ), (10254890969/500000000000 : ℚ), 3⟩,
    ⟨(157626024079/500000000000 : ℚ), (-23684463/125000000 : ℚ), (9588344639/200000000000 : ℚ), 3⟩,
    ⟨(320003040751/1000000000000 : ℚ), (-1315782903/5000000000 : ℚ), (7134097211/100000000000 : ℚ), 3⟩,
    ⟨(324538265579/1000000000000 : ℚ), (-3253047229/10000000000 : ℚ), (91366763599/1000000000000 : ℚ), 3⟩,
    ⟨(328814045949/1000000000000 : ℚ), (-1889153623/5000000000 : ℚ), (108523840641/1000000000000 : ℚ), 3⟩,
    ⟨(332789203757/1000000000000 : ℚ), (-1055504791/2500000000 : ℚ), (123200590269/1000000000000 : ℚ), 3⟩,
    ⟨(168212728031/500000000000 : ℚ), (-2297749337/5000000000 : ℚ), (67848307841/500000000000 : ℚ), 3⟩,
    ⟨(169843891883/500000000000 : ℚ), (-4907485543/10000000000 : ℚ), (73121490559/500000000000 : ℚ), 3⟩,
    ⟨(342544768869/1000000000000 : ℚ), (-2582359177/5000000000 : ℚ), (155017274449/1000000000000 : ℚ), 3⟩,
    ⟨(86242224261/250000000000 : ℚ), (-2686180169/5000000000 : ℚ), (162154921513/1000000000000 : ℚ), 3⟩,
    ⟨(34693682261/100000000000 : ℚ), (-345894737/625000000 : ℚ), (20969715403/125000000000 : ℚ), 3⟩,
    ⟨(34842959337/100000000000 : ℚ), (-5653464033/10000000000 : ℚ), (85950134459/500000000000 : ℚ), 3⟩,
    ⟨(87358208281/250000000000 : ℚ), (-2865914657/5000000000 : ℚ), (43658666733/250000000000 : ℚ), 3⟩,
    ⟨(2799495041/8000000000 : ℚ), (-1154139829/2000000000 : ℚ), (43998471161/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2887771693/5000000000 : ℚ), (44040854449/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (380171309909/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control606.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control606.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate606
