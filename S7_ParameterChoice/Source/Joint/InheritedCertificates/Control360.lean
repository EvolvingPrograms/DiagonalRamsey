import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate360
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32295208877/100000000000 : ℚ), (1792852414737/1250000000 : ℚ), (-464092896069839/1000000000000 : ℚ), 12⟩,
    ⟨(10118878409/31250000000 : ℚ), (1567122998073/10000000000 : ℚ), (-25649395263751/500000000000 : ℚ), 9⟩,
    ⟨(162749972151/500000000000 : ℚ), (274524161507/5000000000 : ℚ), (-18275183542019/1000000000000 : ℚ), 7⟩,
    ⟨(328023262593/1000000000000 : ℚ), (270368093711/10000000000 : ℚ), (-458837082013/50000000000 : ℚ), 6⟩,
    ⟨(165674881513/500000000000 : ℚ), (19587581181/1250000000 : ℚ), (-5432411110531/1000000000000 : ℚ), 5⟩,
    ⟨(167723704791/500000000000 : ℚ), (49900248063/5000000000 : ℚ), (-707382259373/200000000000 : ℚ), 5⟩,
    ⟨(340276739687/1000000000000 : ℚ), (13500755743/2000000000 : ℚ), (-2446585744353/1000000000000 : ℚ), 4⟩,
    ⟨(345791244251/1000000000000 : ℚ), (23771366609/5000000000 : ℚ), (-881185447989/500000000000 : ℚ), 4⟩,
    ⟨(17596890779/50000000000 : ℚ), (17210985187/5000000000 : ℚ), (-652481691109/500000000000 : ℚ), 4⟩,
    ⟨(358657258833/1000000000000 : ℚ), (3173144383/1250000000 : ℚ), (-984106210061/1000000000000 : ℚ), 4⟩,
    ⟨(182942431049/500000000000 : ℚ), (9464260243/5000000000 : ℚ), (-375175332101/500000000000 : ℚ), 3⟩,
    ⟨(93387754901/250000000000 : ℚ), (567061739/400000000 : ℚ), (-574766327683/1000000000000 : ℚ), 3⟩,
    ⟨(381581902063/1000000000000 : ℚ), (5296201169/5000000000 : ℚ), (-109878953771/250000000000 : ℚ), 3⟩,
    ⟨(389900167689/1000000000000 : ℚ), (7832795061/10000000000 : ℚ), (-83280069573/250000000000 : ℚ), 3⟩,
    ⟨(79685141407/200000000000 : ℚ), (5670394099/10000000000 : ℚ), (-15495352041/62500000000 : ℚ), 3⟩,
    ⟨(12721137953/31250000000 : ℚ), (19751027/50000000 : ℚ), (-44668383443/250000000000 : ℚ), 3⟩,
    ⟨(51971122379/125000000000 : ℚ), (2563904329/10000000000 : ℚ), (-24331803207/200000000000 : ℚ), 3⟩,
    ⟨(212209843247/500000000000 : ℚ), (1434166879/10000000000 : ℚ), (-74214841751/1000000000000 : ℚ), 3⟩,
    ⟨(5411815323/12500000000 : ℚ), (504789171/10000000000 : ℚ), (-859634119/25000000000 : ℚ), 2⟩,
    ⟨(88252698293/200000000000 : ℚ), (-265720653/10000000000 : ℚ), (-714281391/1000000000000 : ℚ), 2⟩,
    ⟨(17971774957/40000000000 : ℚ), (-454201059/5000000000 : ℚ), (13948513471/500000000000 : ℚ), 2⟩,
    ⟨(456960531431/1000000000000 : ℚ), (-723368067/5000000000 : ℚ), (26143092059/500000000000 : ℚ), 2⟩,
    ⟨(58023516837/125000000000 : ℚ), (-1898648931/10000000000 : ℚ), (73097161127/1000000000000 : ℚ), 2⟩,
    ⟨(117726894487/250000000000 : ℚ), (-569480903/2500000000 : ℚ), (5676752261/62500000000 : ℚ), 2⟩,
    ⟨(238527074639/500000000000 : ℚ), (-648802367/2500000000 : ℚ), (21173085803/200000000000 : ℚ), 2⟩,
    ⟨(482568653841/1000000000000 : ℚ), (-285875301/1000000000 : ℚ), (23701937487/200000000000 : ℚ), 2⟩,
    ⟨(243698991973/500000000000 : ℚ), (-3074933051/10000000000 : ℚ), (128993538767/1000000000000 : ℚ), 2⟩,
    ⟨(491495630503/1000000000000 : ℚ), (-1624327599/5000000000 : ℚ), (137496023359/1000000000000 : ℚ), 2⟩,
    ⟨(61852766367/125000000000 : ℚ), (-3383643459/10000000000 : ℚ), (5766117793/40000000000 : ℚ), 2⟩,
    ⟨(497345449227/1000000000000 : ℚ), (-3482654771/10000000000 : ℚ), (149064675959/1000000000000 : ℚ), 2⟩,
    ⟨(499041284441/1000000000000 : ℚ), (-3547634059/10000000000 : ℚ), (152301883609/1000000000000 : ℚ), 2⟩,
    ⟨(499893304759/1000000000000 : ℚ), (-894955447/2500000000 : ℚ), (19238694151/125000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-179191563/500000000 : ℚ), (154110005419/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (138879482803/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control360.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control360.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate360
