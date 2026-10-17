import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate189
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(113510447981/500000000000 : ℚ), (4415902177459/5000000000 : ℚ), (-201171010230091/1000000000000 : ℚ), 11⟩,
    ⟨(114046977121/500000000000 : ℚ), (23938165769/250000000 : ℚ), (-22253030212033/1000000000000 : ℚ), 8⟩,
    ⟨(46045947333/200000000000 : ℚ), (165981700307/5000000000 : ℚ), (-3969760170433/500000000000 : ℚ), 6⟩,
    ⟨(233407674477/1000000000000 : ℚ), (161588342081/10000000000 : ℚ), (-998976629841/250000000000 : ℚ), 5⟩,
    ⟨(237597162401/1000000000000 : ℚ), (92569336499/10000000000 : ℚ), (-593226255019/250000000000 : ℚ), 5⟩,
    ⟨(121378926689/500000000000 : ℚ), (14577039413/2500000000 : ℚ), (-155121194487/100000000000 : ℚ), 4⟩,
    ⟨(62210011783/250000000000 : ℚ), (312389011/80000000 : ℚ), (-33702153633/31250000000 : ℚ), 4⟩,
    ⟨(255785168813/1000000000000 : ℚ), (27271357763/10000000000 : ℚ), (-390852537659/500000000000 : ℚ), 4⟩,
    ⟨(131763166551/500000000000 : ℚ), (19616952797/10000000000 : ℚ), (-583201669319/1000000000000 : ℚ), 3⟩,
    ⟨(67997247089/250000000000 : ℚ), (14405978381/10000000000 : ℚ), (-443836884011/1000000000000 : ℚ), 3⟩,
    ⟨(140545817289/500000000000 : ℚ), (5362942757/5000000000 : ℚ), (-342178094131/1000000000000 : ℚ), 3⟩,
    ⟨(290746608309/1000000000000 : ℚ), (8047950963/10000000000 : ℚ), (-66421892459/250000000000 : ℚ), 3⟩,
    ⟨(150430463437/500000000000 : ℚ), (6049851137/10000000000 : ℚ), (-8265487167/40000000000 : ℚ), 3⟩,
    ⟨(311337183857/1000000000000 : ℚ), (2263411647/5000000000 : ℚ), (-80028069379/500000000000 : ℚ), 2⟩,
    ⟨(12882979487/40000000000 : ℚ), (26754333/80000000 : ℚ), (-122632574341/1000000000000 : ℚ), 2⟩,
    ⟨(332969430729/1000000000000 : ℚ), (150703579/625000000 : ℚ), (-23023472841/250000000000 : ℚ), 2⟩,
    ⟨(68783418051/200000000000 : ℚ), (1664685893/10000000000 : ℚ), (-6684141701/100000000000 : ℚ), 2⟩,
    ⟨(354812033809/1000000000000 : ℚ), (1060002757/10000000000 : ℚ), (-45726657831/1000000000000 : ℚ), 2⟩,
    ⟨(365549337127/1000000000000 : ℚ), (565119553/10000000000 : ℚ), (-6977428937/250000000000 : ℚ), 2⟩,
    ⟨(37602559411/100000000000 : ℚ), (78288267/5000000000 : ℚ), (-3191772437/250000000000 : ℚ), 2⟩,
    ⟨(15445596507/40000000000 : ℚ), (-45752349/2500000000 : ℚ), (16990069/100000000000 : ℚ), 2⟩,
    ⟨(197897443203/500000000000 : ℚ), (-466668333/10000000000 : ℚ), (1125717359/100000000000 : ℚ), 2⟩,
    ⟨(101224383157/250000000000 : ℚ), (-704263181/10000000000 : ℚ), (10383596811/500000000000 : ℚ), 2⟩,
    ⟨(206680093941/500000000000 : ℚ), (-112914839/1250000000 : ℚ), (14454882713/500000000000 : ℚ), 2⟩,
    ⟨(421101352171/1000000000000 : ℚ), (-1069609423/10000000000 : ℚ), (35847021567/1000000000000 : ℚ), 2⟩,
    ⟨(107011618463/250000000000 : ℚ), (-1207581403/10000000000 : ℚ), (41704376247/1000000000000 : ℚ), 2⟩,
    ⟨(217064333803/500000000000 : ℚ), (-264131603/2000000000 : ℚ), (2911163837/62500000000 : ℚ), 2⟩,
    ⟨(439289358583/1000000000000 : ℚ), (-1411462843/10000000000 : ℚ), (50543956451/1000000000000 : ℚ), 2⟩,
    ⟨(443478846507/1000000000000 : ℚ), (-296396533/2000000000 : ℚ), (13414123267/250000000000 : ℚ), 2⟩,
    ⟨(446656784319/1000000000000 : ℚ), (-306737201/2000000000 : ℚ), (13989400657/250000000000 : ℚ), 2⟩,
    ⟨(224396283371/500000000000 : ℚ), (-391901983/2500000000 : ℚ), (57476359447/1000000000000 : ℚ), 2⟩,
    ⟨(224932812511/500000000000 : ℚ), (-792204159/5000000000 : ℚ), (7278906031/125000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1586500923/10000000000 : ℚ), (58325401389/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (340374717379/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control189.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control189.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate189
