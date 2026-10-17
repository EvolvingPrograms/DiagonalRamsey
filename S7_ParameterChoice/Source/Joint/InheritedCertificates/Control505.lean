import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate505
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(202844292641/1000000000000 : ℚ), (15124091862647/10000000000 : ℚ), (-76823845490759/250000000000 : ℚ), 12⟩,
    ⟨(50827960499/250000000000 : ℚ), (1653729267857/10000000000 : ℚ), (-33940849221871/1000000000000 : ℚ), 9⟩,
    ⟨(4084848759/20000000000 : ℚ), (72470241511/1250000000 : ℚ), (-12072281666841/1000000000000 : ℚ), 7⟩,
    ⟨(41125423671/200000000000 : ℚ), (142766711971/5000000000 : ℚ), (-6047007725821/1000000000000 : ℚ), 7⟩,
    ⟨(103726273991/500000000000 : ℚ), (82690089529/5000000000 : ℚ), (-1783589409683/500000000000 : ℚ), 6⟩,
    ⟨(104850573473/500000000000 : ℚ), (21027800319/2000000000 : ℚ), (-288947747689/125000000000 : ℚ), 5⟩,
    ⟨(212351260009/1000000000000 : ℚ), (70879062631/10000000000 : ℚ), (-1589105366827/1000000000000 : ℚ), 5⟩,
    ⟨(107688682567/500000000000 : ℚ), (49654614791/10000000000 : ℚ), (-567745196663/500000000000 : ℚ), 5⟩,
    ⟨(8750012771/40000000000 : ℚ), (3566441207/1000000000 : ℚ), (-332802087/400000000 : ℚ), 4⟩,
    ⟨(347558811/1562500000 : ℚ), (25997456811/10000000000 : ℚ), (-24755413161/40000000000 : ℚ), 4⟩,
    ⟨(113201906761/500000000000 : ℚ), (953241381/500000000 : ℚ), (-18535600991/40000000000 : ℚ), 4⟩,
    ⟨(115305323147/500000000000 : ℚ), (13940923207/10000000000 : ℚ), (-86591575203/250000000000 : ℚ), 4⟩,
    ⟨(235017623257/1000000000000 : ℚ), (502894441/500000000 : ℚ), (-128003716351/500000000000 : ℚ), 3⟩,
    ⟨(239582302813/1000000000000 : ℚ), (705236127/1000000000 : ℚ), (-92358911229/500000000000 : ℚ), 3⟩,
    ⟨(244260724603/1000000000000 : ℚ), (4683591149/10000000000 : ℚ), (-31858794009/250000000000 : ℚ), 3⟩,
    ⟨(249007832867/1000000000000 : ℚ), (2787350591/10000000000 : ℚ), (-8068424627/100000000000 : ℚ), 3⟩,
    ⟨(253777910359/1000000000000 : ℚ), (1248818741/10000000000 : ℚ), (-21009524887/500000000000 : ℚ), 3⟩,
    ⟨(258525018623/1000000000000 : ℚ), (-436851/312500000 : ℚ), (-9681409313/1000000000000 : ℚ), 3⟩,
    ⟨(263203440413/1000000000000 : ℚ), (-1060620561/10000000000 : ℚ), (17615036853/1000000000000 : ℚ), 3⟩,
    ⟨(267768119969/1000000000000 : ℚ), (-1935065811/10000000000 : ℚ), (4082544383/100000000000 : ℚ), 3⟩,
    ⟨(68043774233/250000000000 : ℚ), (-2670170299/10000000000 : ℚ), (1213353179/20000000000 : ℚ), 3⟩,
    ⟨(34547741213/125000000000 : ℚ), (-3290752267/10000000000 : ℚ), (77686378679/1000000000000 : ℚ), 3⟩,
    ⟨(280348104187/1000000000000 : ℚ), (-238482541/625000000 : ℚ), (92297902027/1000000000000 : ℚ), 3⟩,
    ⟨(284035423951/1000000000000 : ℚ), (-4259576523/10000000000 : ℚ), (20964388543/200000000000 : ℚ), 3⟩,
    ⟨(71852094523/250000000000 : ℚ), (-2316744417/5000000000 : ℚ), (28876158569/250000000000 : ℚ), 3⟩,
    ⟨(290434483217/1000000000000 : ℚ), (-4946075467/10000000000 : ℚ), (15566927481/125000000000 : ℚ), 3⟩,
    ⟨(7327114907/25000000000 : ℚ), (-5203976289/10000000000 : ℚ), (132059612907/1000000000000 : ℚ), 3⟩,
    ⟨(73833298811/250000000000 : ℚ), (-5412276729/10000000000 : ℚ), (138187824207/1000000000000 : ℚ), 3⟩,
    ⟨(297158624871/1000000000000 : ℚ), (-5574821621/10000000000 : ℚ), (14300306411/100000000000 : ℚ), 3⟩,
    ⟨(74635826319/250000000000 : ℚ), (-2847223277/5000000000 : ℚ), (73283034397/500000000000 : ℚ), 2⟩,
    ⟨(29947390123/100000000000 : ℚ), (-5773145387/10000000000 : ℚ), (14891922123/100000000000 : ℚ), 2⟩,
    ⟨(59988290117/200000000000 : ℚ), (-2906093287/5000000000 : ℚ), (75044657153/500000000000 : ℚ), 2⟩,
    ⟨(3/10 : ℚ), (-1163410489/2000000000 : ℚ), (37558819047/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (374236431551/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control505.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control505.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate505
