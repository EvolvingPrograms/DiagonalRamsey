import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate473
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49622439507/200000000000 : ℚ), (9074675684509/5000000000 : ℚ), (-28184643043919/62500000000 : ℚ), 12⟩,
    ⟨(248602519489/1000000000000 : ℚ), (993451759549/5000000000 : ℚ), (-12449593987107/250000000000 : ℚ), 9⟩,
    ⟨(24957844133/100000000000 : ℚ), (697678420217/10000000000 : ℚ), (-35411371953/2000000000 : ℚ), 8⟩,
    ⟨(50206112879/200000000000 : ℚ), (172098599533/5000000000 : ℚ), (-4431773431771/500000000000 : ℚ), 7⟩,
    ⟨(126472451973/500000000000 : ℚ), (39938548747/2000000000 : ℚ), (-1306124334779/250000000000 : ℚ), 6⟩,
    ⟨(31912877981/125000000000 : ℚ), (15893489209/1250000000 : ℚ), (-3382087246147/1000000000000 : ℚ), 5⟩,
    ⟨(51616442823/200000000000 : ℚ), (42914477809/5000000000 : ℚ), (-1161044154181/500000000000 : ℚ), 5⟩,
    ⟨(261255709627/1000000000000 : ℚ), (30094776867/5000000000 : ℚ), (-828345915783/500000000000 : ℚ), 5⟩,
    ⟨(264792947887/1000000000000 : ℚ), (43260302799/10000000000 : ℚ), (-1211653559159/1000000000000 : ℚ), 4⟩,
    ⟨(268659863357/1000000000000 : ℚ), (6308463103/2000000000 : ℚ), (-899265110113/1000000000000 : ℚ), 4⟩,
    ⟨(136409607763/500000000000 : ℚ), (23124635521/10000000000 : ℚ), (-671475870951/1000000000000 : ℚ), 4⟩,
    ⟨(277230947561/1000000000000 : ℚ), (8446629547/5000000000 : ℚ), (-500175092369/1000000000000 : ℚ), 4⟩,
    ⟨(281852572069/1000000000000 : ℚ), (1520519467/1250000000 : ℚ), (-368032424611/1000000000000 : ℚ), 3⟩,
    ⟨(286639580281/1000000000000 : ℚ), (1699835321/2000000000 : ℚ), (-131948503649/500000000000 : ℚ), 3⟩,
    ⟨(29154587069/100000000000 : ℚ), (5607679137/10000000000 : ℚ), (-45083813139/250000000000 : ℚ), 3⟩,
    ⟨(296524193037/1000000000000 : ℚ), (3291133537/10000000000 : ℚ), (-2244844701/20000000000 : ℚ), 3⟩,
    ⟨(150763301679/500000000000 : ℚ), (282105483/2000000000 : ℚ), (-28011596551/500000000000 : ℚ), 3⟩,
    ⟨(61300985141/200000000000 : ℚ), (-26709841/2000000000 : ℚ), (-9092503333/1000000000000 : ℚ), 3⟩,
    ⟨(155705608057/500000000000 : ℚ), (-1413473079/10000000000 : ℚ), (15221604569/500000000000 : ℚ), 3⟩,
    ⟨(12647928973/40000000000 : ℚ), (-2482748667/10000000000 : ℚ), (63991329027/1000000000000 : ℚ), 3⟩,
    ⟨(160409924417/500000000000 : ℚ), (-211340039/625000000 : ℚ), (92610958481/1000000000000 : ℚ), 3⟩,
    ⟨(81307895217/250000000000 : ℚ), (-258741927/625000000 : ℚ), (117106976651/1000000000000 : ℚ), 3⟩,
    ⟨(164695466519/500000000000 : ℚ), (-4781184401/10000000000 : ℚ), (138095626979/1000000000000 : ℚ), 3⟩,
    ⟨(83314462127/250000000000 : ℚ), (-5323162187/10000000000 : ℚ), (39012780021/250000000000 : ℚ), 3⟩,
    ⟨(21049692923/62500000000 : ℚ), (-115590423/200000000 : ℚ), (10708707523/62500000000 : ℚ), 3⟩,
    ⟨(339968582279/1000000000000 : ℚ), (-770107487/1250000000 : ℚ), (23030308897/125000000000 : ℚ), 3⟩,
    ⟨(342747772547/1000000000000 : ℚ), (-6475353807/10000000000 : ℚ), (19497757941/100000000000 : ℚ), 3⟩,
    ⟨(10784559139/31250000000 : ℚ), (-336463499/500000000 : ℚ), (101855107587/500000000000 : ℚ), 3⟩,
    ⟨(43377529/125000000 : ℚ), (-3463674863/5000000000 : ℚ), (210564912667/1000000000000 : ℚ), 3⟩,
    ⟨(69694471013/200000000000 : ℚ), (-7073091287/10000000000 : ℚ), (107816487861/500000000000 : ℚ), 2⟩,
    ⟨(69889655381/200000000000 : ℚ), (-7168955077/10000000000 : ℚ), (43795645641/200000000000 : ℚ), 2⟩,
    ⟨(17496929943/50000000000 : ℚ), (-7216506553/10000000000 : ℚ), (220641070473/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-3611216433/5000000000 : ℚ), (110424236613/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (151516647711/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control473.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control473.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate473
