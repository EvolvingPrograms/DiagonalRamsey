import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate345
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280179825483/1000000000000 : ℚ), (6123217252161/5000000000 : ℚ), (-85971476083577/250000000000 : ℚ), 12⟩,
    ⟨(140522593481/500000000000 : ℚ), (166972435497/1250000000 : ℚ), (-38017622403429/1000000000000 : ℚ), 8⟩,
    ⟨(56553515203/200000000000 : ℚ), (233451246309/5000000000 : ℚ), (-3387011794103/250000000000 : ℚ), 7⟩,
    ⟨(57066081019/200000000000 : ℚ), (11466036053/500000000 : ℚ), (-1701571119607/250000000000 : ℚ), 6⟩,
    ⟨(72177248189/250000000000 : ℚ), (132558530933/10000000000 : ℚ), (-4031731097743/1000000000000 : ℚ), 5⟩,
    ⟨(292870801353/1000000000000 : ℚ), (84207847801/10000000000 : ℚ), (-2627077170147/1000000000000 : ℚ), 5⟩,
    ⟨(297775750393/1000000000000 : ℚ), (14205103471/2500000000 : ℚ), (-1819003901519/1000000000000 : ℚ), 4⟩,
    ⟨(37922075317/125000000000 : ℚ), (19965878789/5000000000 : ℚ), (-1311817098419/1000000000000 : ℚ), 4⟩,
    ⟨(154809709257/500000000000 : ℚ), (28856903773/10000000000 : ℚ), (-972658766287/1000000000000 : ℚ), 4⟩,
    ⟨(316444076597/1000000000000 : ℚ), (2124762163/1000000000 : ℚ), (-367326053209/500000000000 : ℚ), 3⟩,
    ⟨(80946212899/250000000000 : ℚ), (15823874403/10000000000 : ℚ), (-280579276643/500000000000 : ℚ), 3⟩,
    ⟨(66314209567/200000000000 : ℚ), (2960289799/2500000000 : ℚ), (-430743514881/1000000000000 : ℚ), 3⟩,
    ⟨(84931919997/250000000000 : ℚ), (884354287/1000000000 : ℚ), (-165096259087/500000000000 : ℚ), 3⟩,
    ⟨(348176195229/1000000000000 : ℚ), (3269933279/5000000000 : ℚ), (-2008024451/8000000000 : ℚ), 3⟩,
    ⟨(178417614869/500000000000 : ℚ), (4737645283/10000000000 : ℚ), (-187507087951/1000000000000 : ℚ), 3⟩,
    ⟨(182810696139/500000000000 : ℚ), (330588187/1000000000 : ℚ), (-67906055363/500000000000 : ℚ), 3⟩,
    ⟨(187225033651/500000000000 : ℚ), (2153208343/10000000000 : ℚ), (-23294231591/250000000000 : ℚ), 3⟩,
    ⟨(191618114921/500000000000 : ℚ), (6072737/50000000 : ℚ), (-2881474123/50000000000 : ℚ), 2⟩,
    ⟨(7837905287/20000000000 : ℚ), (88541309/2000000000 : ℚ), (-5545027253/200000000000 : ℚ), 2⟩,
    ⟨(50042972449/125000000000 : ℚ), (-9853479/500000000 : ℚ), (-2389304923/1000000000000 : ℚ), 2⟩,
    ⟨(81700082349/200000000000 : ℚ), (-18267931/250000000 : ℚ), (19187577507/1000000000000 : ℚ), 2⟩,
    ⟨(26017912999/62500000000 : ℚ), (-1177808867/10000000000 : ℚ), (37621781763/1000000000000 : ℚ), 2⟩,
    ⟨(423627382983/1000000000000 : ℚ), (-38831281/250000000 : ℚ), (13346563133/250000000000 : ℚ), 2⟩,
    ⟨(215226020533/500000000000 : ℚ), (-1868479971/10000000000 : ℚ), (334230323/5000000000 : ℚ), 2⟩,
    ⟨(109173714261/250000000000 : ℚ), (-266539019/1250000000 : ℚ), (78283994343/1000000000000 : ℚ), 2⟩,
    ⟨(442295709187/1000000000000 : ℚ), (-470312549/2000000000 : ℚ), (87919231749/1000000000000 : ℚ), 2⟩,
    ⟨(447200658227/1000000000000 : ℚ), (-1265747371/5000000000 : ℚ), (11990154799/125000000000 : ℚ), 2⟩,
    ⟨(451362466823/1000000000000 : ℚ), (-2676150229/10000000000 : ℚ), (51210049527/500000000000 : ℚ), 2⟩,
    ⟨(90948210897/200000000000 : ℚ), (-2788594463/10000000000 : ℚ), (26878570933/250000000000 : ℚ), 2⟩,
    ⟨(91460776713/200000000000 : ℚ), (-1435547453/5000000000 : ℚ), (55638219661/500000000000 : ℚ), 2⟩,
    ⟨(229513136309/500000000000 : ℚ), (-2925250301/10000000000 : ℚ), (113757635839/1000000000000 : ℚ), 2⟩,
    ⟨(459891634097/1000000000000 : ℚ), (-1476039979/5000000000 : ℚ), (57495173319/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2955422169/10000000000 : ℚ), (115144070239/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (161513918629/500000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control345.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control345.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate345
