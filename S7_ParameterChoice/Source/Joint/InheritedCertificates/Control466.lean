import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate466
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28218964211/100000000000 : ℚ), (7628433250773/5000000000 : ℚ), (-107817087232057/250000000000 : ℚ), 12⟩,
    ⟨(56570567349/200000000000 : ℚ), (52138092023/312500000 : ℚ), (-1906022959303/40000000000 : ℚ), 9⟩,
    ⟨(284172839089/1000000000000 : ℚ), (73139241889/1250000000 : ℚ), (-16960997357779/1000000000000 : ℚ), 7⟩,
    ⟨(143068468399/500000000000 : ℚ), (72091480203/2500000000 : ℚ), (-8505508901653/1000000000000 : ℚ), 6⟩,
    ⟨(36090776817/125000000000 : ℚ), (83604333681/5000000000 : ℚ), (-201026494949/40000000000 : ℚ), 6⟩,
    ⟨(18244733509/62500000000 : ℚ), (106482458239/10000000000 : ℚ), (-815983237439/250000000000 : ℚ), 5⟩,
    ⟨(59134956957/200000000000 : ℚ), (71961379969/10000000000 : ℚ), (-2250432149861/1000000000000 : ℚ), 5⟩,
    ⟨(149983579383/500000000000 : ℚ), (50587569143/10000000000 : ℚ), (-1614304591287/1000000000000 : ℚ), 4⟩,
    ⟨(304751520179/1000000000000 : ℚ), (18254875143/5000000000 : ℚ), (-1188922469397/1000000000000 : ℚ), 4⟩,
    ⟨(309981793007/1000000000000 : ℚ), (26791912877/10000000000 : ℚ), (-445205287151/500000000000 : ℚ), 4⟩,
    ⟨(157803803433/500000000000 : ℚ), (9915755941/5000000000 : ℚ), (-42051102959/62500000000 : ℚ), 4⟩,
    ⟨(321574782091/1000000000000 : ℚ), (7347502487/5000000000 : ℚ), (-509260509361/1000000000000 : ℚ), 3⟩,
    ⟨(327825851523/1000000000000 : ℚ), (2161928269/2000000000 : ℚ), (-3831650053/10000000000 : ℚ), 3⟩,
    ⟨(334300613947/1000000000000 : ℚ), (1952222339/2500000000 : ℚ), (-283866198349/1000000000000 : ℚ), 3⟩,
    ⟨(340936713861/1000000000000 : ℚ), (2724929169/5000000000 : ℚ), (-204253748409/1000000000000 : ℚ), 3⟩,
    ⟨(173835120997/500000000000 : ℚ), (1783407181/5000000000 : ℚ), (-34860990149/250000000000 : ℚ), 3⟩,
    ⟨(44304543849/125000000000 : ℚ), (31934951/156250000 : ℚ), (-85997025983/1000000000000 : ℚ), 3⟩,
    ⟨(14446795157/40000000000 : ℚ), (199529821/2500000000 : ℚ), (-41437866611/1000000000000 : ℚ), 3⟩,
    ⟨(367805978839/1000000000000 : ℚ), (-57641353/2500000000 : ℚ), (-3953081899/1000000000000 : ℚ), 3⟩,
    ⟨(374280741263/1000000000000 : ℚ), (-2716751/25000000 : ℚ), (6951573257/250000000000 : ℚ), 3⟩,
    ⟨(76106362139/200000000000 : ℚ), (-901785907/5000000000 : ℚ), (54856453969/1000000000000 : ℚ), 3⟩,
    ⟨(1207809331/3125000000 : ℚ), (-2406360079/10000000000 : ℚ), (77970735039/1000000000000 : ℚ), 3⟩,
    ⟨(392124799779/1000000000000 : ℚ), (-2914282933/10000000000 : ℚ), (97742268339/1000000000000 : ℚ), 2⟩,
    ⟨(397355072607/1000000000000 : ℚ), (-417763369/1250000000 : ℚ), (114628473021/1000000000000 : ℚ), 2⟩,
    ⟨(20106971701/50000000000 : ℚ), (-1850615013/5000000000 : ℚ), (64491588661/500000000000 : ℚ), 2⟩,
    ⟨(406431808001/1000000000000 : ℚ), (-2000233429/5000000000 : ℚ), (141080163229/1000000000000 : ℚ), 2⟩,
    ⟨(205095428321/500000000000 : ℚ), (-2123312533/5000000000 : ℚ), (151130641553/1000000000000 : ℚ), 2⟩,
    ⟨(1653521513/4000000000 : ℚ), (-4444930861/10000000000 : ℚ), (31859268593/200000000000 : ℚ), 2⟩,
    ⟨(103992413997/250000000000 : ℚ), (-4599344411/10000000000 : ℚ), (165699364779/1000000000000 : ℚ), 2⟩,
    ⟨(417933753697/1000000000000 : ℚ), (-2356396153/5000000000 : ℚ), (85214771813/500000000000 : ℚ), 2⟩,
    ⟨(419253756041/1000000000000 : ℚ), (-598416991/1250000000 : ℚ), (173549878337/1000000000000 : ℚ), 2⟩,
    ⟨(104979237669/250000000000 : ℚ), (-1206072099/2500000000 : ℚ), (7004013919/40000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4828892657/10000000000 : ℚ), (43823426951/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (77244987981/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control466.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control466.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate466
