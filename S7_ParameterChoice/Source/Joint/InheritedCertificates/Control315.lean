import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate315
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28726230579/125000000000 : ℚ), (12342148112821/10000000000 : ℚ), (-35534612741141/125000000000 : ℚ), 12⟩,
    ⟨(57633153863/250000000000 : ℚ), (168220403833/1250000000 : ℚ), (-1963931359403/62500000000 : ℚ), 8⟩,
    ⟨(231971196413/1000000000000 : ℚ), (470129165957/10000000000 : ℚ), (-5597211284383/500000000000 : ℚ), 7⟩,
    ⟨(46822346639/200000000000 : ℚ), (115364520051/5000000000 : ℚ), (-1405266540567/250000000000 : ℚ), 6⟩,
    ⟨(118466805629/500000000000 : ℚ), (133240494009/10000000000 : ℚ), (-3327272408021/1000000000000 : ℚ), 5⟩,
    ⟨(120204827187/500000000000 : ℚ), (84533911201/10000000000 : ℚ), (-433181586771/200000000000 : ℚ), 5⟩,
    ⟨(244506386347/1000000000000 : ℚ), (56947999433/10000000000 : ℚ), (-1497689180093/1000000000000 : ℚ), 4⟩,
    ⟨(24918435341/100000000000 : ℚ), (4992215699/1250000000 : ℚ), (-1078173612279/1000000000000 : ℚ), 4⟩,
    ⟨(254398504181/1000000000000 : ℚ), (1151297651/400000000 : ℚ), (-797531754529/1000000000000 : ℚ), 4⟩,
    ⟨(260098623539/1000000000000 : ℚ), (21116301669/10000000000 : ℚ), (-150119881541/250000000000 : ℚ), 3⟩,
    ⟨(266229816219/1000000000000 : ℚ), (15649864049/10000000000 : ℚ), (-456730427701/1000000000000 : ℚ), 3⟩,
    ⟨(272733035483/1000000000000 : ℚ), (5816653273/5000000000 : ℚ), (-348567105553/1000000000000 : ℚ), 3⟩,
    ⟨(139772825887/500000000000 : ℚ), (8607560953/10000000000 : ℚ), (-53013596443/200000000000 : ℚ), 3⟩,
    ⟨(143301027937/500000000000 : ℚ), (6279567221/10000000000 : ℚ), (-199207155691/1000000000000 : ℚ), 3⟩,
    ⟨(293834290753/1000000000000 : ℚ), (2227834003/5000000000 : ℚ), (-14630230871/100000000000 : ℚ), 3⟩,
    ⟨(301172706037/1000000000000 : ℚ), (3004139737/10000000000 : ℚ), (-103139302527/1000000000000 : ℚ), 3⟩,
    ⟨(154273314387/500000000000 : ℚ), (458292147/2500000000 : ℚ), (-8432013499/125000000000 : ℚ), 3⟩,
    ⟨(157942522029/500000000000 : ℚ), (877411557/10000000000 : ℚ), (-37626844781/1000000000000 : ℚ), 2⟩,
    ⟨(323117278937/1000000000000 : ℚ), (17905539/2000000000 : ℚ), (-12461891687/1000000000000 : ℚ), 2⟩,
    ⟨(330173683037/1000000000000 : ℚ), (-35331879/625000000 : ℚ), (8922252733/1000000000000 : ℚ), 2⟩,
    ⟨(5265410927/15625000000 : ℚ), (-278264921/2500000000 : ℚ), (27189879281/1000000000000 : ℚ), 2⟩,
    ⟨(335438983/976562500 : ℚ), (-1573283299/10000000000 : ℚ), (42845438453/1000000000000 : ℚ), 2⟩,
    ⟨(349620711271/1000000000000 : ℚ), (-1960857773/10000000000 : ℚ), (281374677/5000000000 : ℚ), 2⟩,
    ⟨(355320830629/1000000000000 : ℚ), (-1143588893/5000000000 : ℚ), (13555065717/200000000000 : ℚ), 2⟩,
    ⟨(360534981401/1000000000000 : ℚ), (-512202907/2000000000 : ℚ), (9696969753/125000000000 : ℚ), 2⟩,
    ⟨(365212948463/1000000000000 : ℚ), (-69728409/250000000 : ℚ), (85853097809/1000000000000 : ℚ), 2⟩,
    ⟨(369309680437/1000000000000 : ℚ), (-1488380929/5000000000 : ℚ), (23185872453/250000000000 : ℚ), 2⟩,
    ⟨(372785723553/1000000000000 : ℚ), (-1563946479/5000000000 : ℚ), (1229387121/12500000000 : ℚ), 2⟩,
    ⟨(23475475101/62500000000 : ℚ), (-324556031/1000000000 : ℚ), (51376970427/500000000000 : ℚ), 2⟩,
    ⟨(188874069199/500000000000 : ℚ), (-833000783/2500000000 : ℚ), (53005004311/500000000000 : ℚ), 2⟩,
    ⟨(379186719359/1000000000000 : ℚ), (-3388798749/10000000000 : ℚ), (10815952547/100000000000 : ℚ), 2⟩,
    ⟨(379909490179/1000000000000 : ℚ), (-683390423/2000000000 : ℚ), (54614039809/500000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1710229979/5000000000 : ℚ), (54680680883/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (68357930351/200000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control315.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control315.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate315
