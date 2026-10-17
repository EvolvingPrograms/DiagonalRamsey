import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate20
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(767725671/10000000000 : ℚ), (53392588184841/10000000000 : ℚ), (-410340936232373/1000000000000 : ℚ), 11⟩,
    ⟨(15376869227/200000000000 : ℚ), (5850786721277/10000000000 : ℚ), (-11313123617503/250000000000 : ℚ), 7⟩,
    ⟨(77106827713/1000000000000 : ℚ), (256956195313/1250000000 : ℚ), (-8022742501017/500000000000 : ℚ), 6⟩,
    ⟨(38718934607/500000000000 : ℚ), (1013808555781/10000000000 : ℚ), (-7998730637451/1000000000000 : ℚ), 5⟩,
    ⟨(2433571329/31250000000 : ℚ), (293599114831/5000000000 : ℚ), (-4687377707609/1000000000000 : ℚ), 4⟩,
    ⟨(15682372951/200000000000 : ℚ), (74520754529/2000000000 : ℚ), (-602245852533/200000000000 : ℚ), 4⟩,
    ⟨(15809087737/200000000000 : ℚ), (250103840629/10000000000 : ℚ), (-1023613458711/500000000000 : ℚ), 3⟩,
    ⟨(15953780531/200000000000 : ℚ), (34781022241/2000000000 : ℚ), (-288482031273/200000000000 : ℚ), 3⟩,
    ⟨(80575289311/1000000000000 : ℚ), (12346455951/1000000000 : ℚ), (-1038181337911/1000000000000 : ℚ), 3⟩,
    ⟨(8145683271/100000000000 : ℚ), (88460210049/10000000000 : ℚ), (-377349504197/500000000000 : ℚ), 2⟩,
    ⟨(16481008621/200000000000 : ℚ), (31624446881/5000000000 : ℚ), (-548215356893/1000000000000 : ℚ), 2⟩,
    ⟨(10426348589/125000000000 : ℚ), (44537005487/10000000000 : ℚ), (-196565889281/500000000000 : ℚ), 2⟩,
    ⟨(84464383653/1000000000000 : ℚ), (1211980043/400000000 : ℚ), (-54732677697/200000000000 : ℚ), 2⟩,
    ⟨(8555568123/100000000000 : ℚ), (2404677969/1250000000 : ℚ), (-17965202349/100000000000 : ℚ), 2⟩,
    ⟨(86674171653/1000000000000 : ℚ), (10487881259/10000000000 : ℚ), (-104325433841/1000000000000 : ℚ), 2⟩,
    ⟨(87809083247/1000000000000 : ℚ), (1730319611/5000000000 : ℚ), (-21516681003/500000000000 : ℚ), 2⟩,
    ⟨(88949486193/1000000000000 : ℚ), (-451622427/2000000000 : ℚ), (937211357/125000000000 : ℚ), 2⟩,
    ⟨(45042198893/500000000000 : ℚ), (-1741154671/2500000000 : ℚ), (9924177857/200000000000 : ℚ), 1⟩,
    ⟨(91202888209/1000000000000 : ℚ), (-10874763983/10000000000 : ℚ), (4252899133/50000000000 : ℚ), 1⟩,
    ⟨(92294185787/1000000000000 : ℚ), (-7074132149/5000000000 : ℚ), (57543782561/500000000000 : ℚ), 1⟩,
    ⟨(93347780727/1000000000000 : ℚ), (-8452402463/5000000000 : ℚ), (70335464099/500000000000 : ℚ), 1⟩,
    ⟨(18870705267/200000000000 : ℚ), (-769401701/400000000 : ℚ), (40634532461/250000000000 : ℚ), 1⟩,
    ⟨(9530173673/100000000000 : ℚ), (-21208254029/10000000000 : ℚ), (36249611741/200000000000 : ℚ), 1⟩,
    ⟨(187857969/1953125000 : ℚ), (-11438872541/5000000000 : ℚ), (7889244269/40000000000 : ℚ), 1⟩,
    ⟨(3030927087/31250000000 : ℚ), (-6071182543/2500000000 : ℚ), (52704990147/250000000000 : ℚ), 1⟩,
    ⟨(48856565377/500000000000 : ℚ), (-25461149983/10000000000 : ℚ), (55568027901/250000000000 : ℚ), 1⟩,
    ⟨(24586676171/250000000000 : ℚ), (-2643173599/1000000000 : ℚ), (46357295861/200000000000 : ℚ), 1⟩,
    ⟨(1545066983/15625000000 : ℚ), (-272155321/100000000 : ℚ), (119757883607/500000000000 : ℚ), 1⟩,
    ⟨(3972828009/40000000000 : ℚ), (-5565403437/2000000000 : ℚ), (122787829471/500000000000 : ℚ), 1⟩,
    ⟨(49825870863/500000000000 : ℚ), (-28276927981/10000000000 : ℚ), (125025809601/500000000000 : ℚ), 1⟩,
    ⟨(12484277913/125000000000 : ℚ), (-7143212811/2500000000 : ℚ), (10120153141/40000000000 : ℚ), 1⟩,
    ⟨(4999300117/50000000000 : ℚ), (-28719632451/10000000000 : ℚ), (50894122723/200000000000 : ℚ), 1⟩,
    ⟨(1/10 : ℚ), (-28737925363/10000000000 : ℚ), (63663382481/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (24999/1000000 : ℚ)
  x := (12236322349/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control20.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control20.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate20
