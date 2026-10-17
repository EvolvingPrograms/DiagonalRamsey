import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate812
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(14320379129/25000000000 : ℚ), (886593272139/500000000 : ℚ), (-40660611188527/40000000000 : ℚ), 13⟩,
    ⟨(71678403229/125000000000 : ℚ), (1949090597063/10000000000 : ℚ), (-56138077934029/500000000000 : ℚ), 10⟩,
    ⟨(71830681587/125000000000 : ℚ), (688477602703/10000000000 : ℚ), (-1996880544901/50000000000 : ℚ), 9⟩,
    ⟨(288229056781/500000000000 : ℚ), (342094034789/10000000000 : ℚ), (-20008347713227/1000000000000 : ℚ), 8⟩,
    ⟨(289423875757/500000000000 : ℚ), (200083155753/10000000000 : ℚ), (-11807842657473/1000000000000 : ℚ), 7⟩,
    ⟨(290895676517/500000000000 : ℚ), (12854384117/1000000000 : ℚ), (-1914414614157/250000000000 : ℚ), 7⟩,
    ⟨(585260569629/1000000000000 : ℚ), (21910180849/2500000000 : ℚ), (-5271627029029/1000000000000 : ℚ), 6⟩,
    ⟨(589221990847/1000000000000 : ℚ), (31078456969/5000000000 : ℚ), (-235973729431/62500000000 : ℚ), 6⟩,
    ⟨(148409366509/250000000000 : ℚ), (22631609327/5000000000 : ℚ), (-555347127961/200000000000 : ℚ), 5⟩,
    ⟨(598464471757/1000000000000 : ℚ), (16763258313/5000000000 : ℚ), (-1038684158657/500000000000 : ℚ), 5⟩,
    ⟨(120731304261/200000000000 : ℚ), (12534327583/5000000000 : ℚ), (-1569137425839/1000000000000 : ℚ), 5⟩,
    ⟨(121832722481/200000000000 : ℚ), (18792509877/10000000000 : ℚ), (-297160699361/250000000000 : ℚ), 5⟩,
    ⟨(15373317719/25000000000 : ℚ), (14022712249/10000000000 : ℚ), (-896777920581/1000000000000 : ℚ), 5⟩,
    ⟨(620908250817/1000000000000 : ℚ), (10325318207/10000000000 : ℚ), (-334179520851/500000000000 : ℚ), 4⟩,
    ⟨(627032690841/1000000000000 : ℚ), (3705691529/5000000000 : ℚ), (-486575257897/1000000000000 : ℚ), 4⟩,
    ⟨(5065976377/8000000000 : ℚ), (5082632601/10000000000 : ℚ), (-67971764033/200000000000 : ℚ), 4⟩,
    ⟨(319745736011/500000000000 : ℚ), (3199474907/10000000000 : ℚ), (-13752545391/62500000000 : ℚ), 4⟩,
    ⟨(322852914153/500000000000 : ℚ), (332289057/2000000000 : ℚ), (-60611069251/500000000000 : ℚ), 4⟩,
    ⟨(65183026833/100000000000 : ℚ), (394858141/10000000000 : ℚ), (-7812211477/200000000000 : ℚ), 4⟩,
    ⟨(657805810387/1000000000000 : ℚ), (-327606847/5000000000 : ℚ), (463928919/15625000000 : ℚ), 4⟩,
    ⟨(331787453371/500000000000 : ℚ), (-1530279819/10000000000 : ℚ), (17500071473/200000000000 : ℚ), 4⟩,
    ⟨(334540998921/500000000000 : ℚ), (-2262068039/10000000000 : ℚ), (34064321981/250000000000 : ℚ), 4⟩,
    ⟨(67427404739/100000000000 : ℚ), (-1437524453/5000000000 : ℚ), (8871345611/50000000000 : ℚ), 4⟩,
    ⟨(67910105311/100000000000 : ℚ), (-338822047/1000000000 : ℚ), (212150565057/1000000000000 : ℚ), 4⟩,
    ⟨(6835165283/10000000000 : ℚ), (-3816390917/10000000000 : ℚ), (24132084409/100000000000 : ℚ), 4⟩,
    ⟨(343738974759/500000000000 : ℚ), (-4171114231/10000000000 : ℚ), (53127233397/200000000000 : ℚ), 3⟩,
    ⟨(690947166113/1000000000000 : ℚ), (-4461381783/10000000000 : ℚ), (35705156277/125000000000 : ℚ), 3⟩,
    ⟨(693890767633/1000000000000 : ℚ), (-2347069409/5000000000 : ℚ), (150878748959/500000000000 : ℚ), 3⟩,
    ⟨(139256081117/200000000000 : ℚ), (-974934469/2000000000 : ℚ), (314305978509/1000000000000 : ℚ), 3⟩,
    ⟨(698093066451/1000000000000 : ℚ), (-312931359/625000000 : ℚ), (64704955437/200000000000 : ℚ), 3⟩,
    ⟨(139862258663/200000000000 : ℚ), (-5093592891/10000000000 : ℚ), (164790944589/500000000000 : ℚ), 3⟩,
    ⟨(349961676993/500000000000 : ℚ), (-1284127347/2500000000 : ℚ), (332584399471/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-2570927033/5000000000 : ℚ), (66591701289/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (54109027287/250000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control812.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control812.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate812
