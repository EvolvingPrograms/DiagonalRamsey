import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate259
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(277870711107/1000000000000 : ℚ), (5684788902893/5000000000 : ℚ), (-158361359369807/500000000000 : ℚ), 11⟩,
    ⟨(278843432331/1000000000000 : ℚ), (619146527651/5000000000 : ℚ), (-35022662766169/1000000000000 : ℚ), 8⟩,
    ⟨(280779506943/1000000000000 : ℚ), (431972108591/10000000000 : ℚ), (-3121642684829/250000000000 : ℚ), 7⟩,
    ⟨(56732057897/200000000000 : ℚ), (6616142301/312500000 : ℚ), (-1255506632473/200000000000 : ℚ), 6⟩,
    ⟨(287458036447/1000000000000 : ℚ), (122133751723/10000000000 : ℚ), (-3722240756329/1000000000000 : ℚ), 5⟩,
    ⟨(292136173449/1000000000000 : ℚ), (19361635043/2500000000 : ℚ), (-2428608472891/1000000000000 : ℚ), 5⟩,
    ⟨(11905985899/40000000000 : ℚ), (26092240557/5000000000 : ℚ), (-421104846407/250000000000 : ℚ), 4⟩,
    ⟨(75986340189/250000000000 : ℚ), (36641103/10000000 : ℚ), (-608670847797/500000000000 : ℚ), 4⟩,
    ⟨(310962682131/1000000000000 : ℚ), (13236499167/5000000000 : ℚ), (-90501351657/100000000000 : ℚ), 4⟩,
    ⟨(3982925387/12500000000 : ℚ), (2438062299/1250000000 : ℚ), (-342920494589/500000000000 : ℚ), 3⟩,
    ⟨(326885527959/1000000000000 : ℚ), (227352047/156250000 : ℚ), (-526079615259/1000000000000 : ℚ), 3⟩,
    ⟨(167818853351/500000000000 : ℚ), (546122687/500000000 : ℚ), (-20299397527/50000000000 : ℚ), 3⟩,
    ⟨(86201569731/250000000000 : ℚ), (8198993789/10000000000 : ℚ), (-313395560123/1000000000000 : ℚ), 3⟩,
    ⟨(354302946261/1000000000000 : ℚ), (6111458593/10000000000 : ℚ), (-240472013567/1000000000000 : ℚ), 3⟩,
    ⟨(45504531327/125000000000 : ℚ), (560307867/1250000000 : ℚ), (-4549941629/25000000000 : ℚ), 3⟩,
    ⟨(373912454947/1000000000000 : ℚ), (638294151/2000000000 : ℚ), (-67194159141/500000000000 : ℚ), 2⟩,
    ⟨(383836446007/1000000000000 : ℚ), (1077274229/5000000000 : ℚ), (-23780057611/250000000000 : ℚ), 2⟩,
    ⟨(196856325169/500000000000 : ℚ), (1312016241/10000000000 : ℚ), (-62378071193/1000000000000 : ℚ), 2⟩,
    ⟨(403445954693/1000000000000 : ℚ), (77583853/1250000000 : ℚ), (-34832214631/1000000000000 : ℚ), 2⟩,
    ⟨(41294262203/100000000000 : ℚ), (48748997/10000000000 : ℚ), (-1149376253/100000000000 : ℚ), 2⟩,
    ⟨(422111194251/1000000000000 : ℚ), (-213707107/5000000000 : ℚ), (8382244453/1000000000000 : ℚ), 2⟩,
    ⟨(86172674599/200000000000 : ℚ), (-33026033/400000000 : ℚ), (25362911943/1000000000000 : ℚ), 2⟩,
    ⟨(219557434997/500000000000 : ℚ), (-1159524589/10000000000 : ℚ), (7976705653/200000000000 : ℚ), 2⟩,
    ⟨(446786218823/1000000000000 : ℚ), (-719714923/5000000000 : ℚ), (52280217737/1000000000000 : ℚ), 2⟩,
    ⟨(226901770099/500000000000 : ℚ), (-52292953/312500000 : ℚ), (12562695613/200000000000 : ℚ), 2⟩,
    ⟨(460099253479/1000000000000 : ℚ), (-1867544859/10000000000 : ℚ), (17921347107/250000000000 : ℚ), 2⟩,
    ⟨(93122545501/200000000000 : ℚ), (-2026717251/10000000000 : ℚ), (9881542071/125000000000 : ℚ), 2⟩,
    ⟨(470290864507/1000000000000 : ℚ), (-1077279973/5000000000 : ℚ), (85034512011/1000000000000 : ℚ), 2⟩,
    ⟨(474088611469/1000000000000 : ℚ), (-281731903/1250000000 : ℚ), (22430752651/250000000000 : ℚ), 2⟩,
    ⟨(476969394011/1000000000000 : ℚ), (-2326661847/10000000000 : ℚ), (93185126121/1000000000000 : ℚ), 2⟩,
    ⟨(239452734311/500000000000 : ℚ), (-474886383/2000000000 : ℚ), (23867055437/250000000000 : ℚ), 2⟩,
    ⟨(479878189847/1000000000000 : ℚ), (-2398091539/10000000000 : ℚ), (19320488601/200000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2401038543/10000000000 : ℚ), (3869755249/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (313208977747/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control259.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control259.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate259
