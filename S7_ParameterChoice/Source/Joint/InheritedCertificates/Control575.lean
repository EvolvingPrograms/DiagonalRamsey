import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate575
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146987410757/250000000000 : ℚ), (18375909216719/10000000000 : ℚ), (-1081812022636753/1000000000000 : ℚ), 12⟩,
    ⟨(588970108117/1000000000000 : ℚ), (2016220163179/10000000000 : ℚ), (-1869334138033/15625000000 : ℚ), 9⟩,
    ⟨(591001210659/1000000000000 : ℚ), (35540894009/500000000 : ℚ), (-4266409318453/100000000000 : ℚ), 7⟩,
    ⟨(297011695013/500000000000 : ℚ), (176357976021/5000000000 : ℚ), (-21458031719369/1000000000000 : ℚ), 6⟩,
    ⟨(598007540979/1000000000000 : ℚ), (206232889277/10000000000 : ℚ), (-2546446693989/200000000000 : ℚ), 6⟩,
    ⟨(301457646983/500000000000 : ℚ), (66325438303/5000000000 : ℚ), (-8316296851043/1000000000000 : ℚ), 5⟩,
    ⟨(304349692321/500000000000 : ℚ), (5670163899/625000000 : ℚ), (-5777578564387/1000000000000 : ℚ), 5⟩,
    ⟨(307652054527/500000000000 : ℚ), (64701850853/10000000000 : ℚ), (-4185903899413/1000000000000 : ℚ), 4⟩,
    ⟨(622665860093/1000000000000 : ℚ), (47527188003/10000000000 : ℚ), (-780832547933/250000000000 : ℚ), 4⟩,
    ⟨(315356870037/500000000000 : ℚ), (35652029477/10000000000 : ℚ), (-1189733661633/500000000000 : ℚ), 4⟩,
    ⟨(79921280439/125000000000 : ℚ), (6784557131/2500000000 : ℚ), (-114939977279/62500000000 : ℚ), 4⟩,
    ⟨(162138000887/250000000000 : ℚ), (10427521897/5000000000 : ℚ), (-1434591800049/1000000000000 : ℚ), 3⟩,
    ⟨(658170594813/1000000000000 : ℚ), (8053716301/5000000000 : ℚ), (-1124519191197/1000000000000 : ℚ), 3⟩,
    ⟨(334066692507/500000000000 : ℚ), (3112389821/2500000000 : ℚ), (-882032060049/1000000000000 : ℚ), 3⟩,
    ⟨(678344427037/1000000000000 : ℚ), (2396280287/2500000000 : ℚ), (-689249440883/1000000000000 : ℚ), 3⟩,
    ⟨(137741076593/200000000000 : ℚ), (7311214553/10000000000 : ℚ), (-266934117333/500000000000 : ℚ), 3⟩,
    ⟨(87389558891/125000000000 : ℚ), (5485298783/10000000000 : ℚ), (-101799964259/250000000000 : ℚ), 3⟩,
    ⟨(141895485411/200000000000 : ℚ), (801001891/2000000000 : ℚ), (-30296855003/100000000000 : ℚ), 3⟩,
    ⟨(719688469079/1000000000000 : ℚ), (2795417601/10000000000 : ℚ), (-216551585741/1000000000000 : ℚ), 3⟩,
    ⟨(9120640741/12500000000 : ℚ), (14406069/80000000 : ℚ), (-28897022673/200000000000 : ℚ), 3⟩,
    ⟨(147853970109/200000000000 : ℚ), (978929257/10000000000 : ℚ), (-84134751951/1000000000000 : ℚ), 2⟩,
    ⟨(748451610581/1000000000000 : ℚ), (297746401/10000000000 : ℚ), (-33471224381/1000000000000 : ℚ), 2⟩,
    ⟨(757108114019/1000000000000 : ℚ), (-267644739/10000000000 : ℚ), (113567041/12500000000 : ℚ), 2⟩,
    ⟨(382577997/500000000 : ℚ), (-368298123/5000000000 : ℚ), (44775383107/1000000000000 : ℚ), 2⟩,
    ⟨(772517745039/1000000000000 : ℚ), (-1124261929/10000000000 : ℚ), (18644573499/250000000000 : ℚ), 2⟩,
    ⟨(779122469451/1000000000000 : ℚ), (-360635231/2500000000 : ℚ), (24817393397/250000000000 : ℚ), 2⟩,
    ⟨(784906560127/1000000000000 : ℚ), (-42519181/250000000 : ℚ), (119462371211/1000000000000 : ℚ), 2⟩,
    ⟨(394907156557/500000000000 : ℚ), (-953108699/5000000000 : ℚ), (27127642741/200000000000 : ℚ), 2⟩,
    ⟨(793798464067/1000000000000 : ℚ), (-1032242731/5000000000 : ℚ), (14816973589/100000000000 : ℚ), 2⟩,
    ⟨(398410321717/500000000000 : ℚ), (-43595183/200000000 : ℚ), (157337461499/1000000000000 : ℚ), 2⟩,
    ⟨(99856468247/125000000000 : ℚ), (-451003989/2000000000 : ℚ), (81671005351/500000000000 : ℚ), 2⟩,
    ⟨(159974442213/200000000000 : ℚ), (-1146091203/5000000000 : ℚ), (83156316417/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1148402993/5000000000 : ℚ), (10417655607/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (79672537571/500000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control575.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control575.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate575
