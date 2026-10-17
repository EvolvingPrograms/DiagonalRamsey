import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
