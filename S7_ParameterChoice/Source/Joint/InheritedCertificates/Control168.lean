import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate168
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118778170899/500000000000 : ℚ), (113457480333/125000000 : ℚ), (-54084817720223/250000000000 : ℚ), 11⟩,
    ⟨(59668736757/250000000000 : ℚ), (492069972551/5000000000 : ℚ), (-5982819753961/250000000000 : ℚ), 8⟩,
    ⟨(24090138471/100000000000 : ℚ), (68245519677/2000000000 : ℚ), (-1707716948549/200000000000 : ℚ), 6⟩,
    ⟨(24421421303/100000000000 : ℚ), (83060508429/5000000000 : ℚ), (-2148832439867/500000000000 : ℚ), 5⟩,
    ⟨(248581527641/1000000000000 : ℚ), (23795591419/2500000000 : ℚ), (-1276168332577/500000000000 : ℚ), 5⟩,
    ⟨(63490317229/250000000000 : ℚ), (2998350093/500000000 : ℚ), (-417185803721/250000000000 : ℚ), 4⟩,
    ⟨(52060325401/200000000000 : ℚ), (2008533817/500000000 : ℚ), (-145052303423/125000000000 : ℚ), 4⟩,
    ⟨(53508308159/200000000000 : ℚ), (28065222633/10000000000 : ℚ), (-841348876981/1000000000000 : ℚ), 3⟩,
    ⟨(137805642979/500000000000 : ℚ), (10098926719/5000000000 : ℚ), (-156988758353/250000000000 : ℚ), 3⟩,
    ⟨(71108286609/250000000000 : ℚ), (3710593599/2500000000 : ℚ), (-9563288971/20000000000 : ℚ), 3⟩,
    ⟨(29392216289/100000000000 : ℚ), (11060776433/10000000000 : ℚ), (-73785525231/200000000000 : ℚ), 3⟩,
    ⟨(60797390181/200000000000 : ℚ), (207738717/250000000 : ℚ), (-71690166589/250000000000 : ℚ), 3⟩,
    ⟨(31453058107/100000000000 : ℚ), (6257326801/10000000000 : ℚ), (-223351944433/1000000000000 : ℚ), 2⟩,
    ⟨(325451512463/1000000000000 : ℚ), (1173396549/2500000000 : ℚ), (-173355118277/1000000000000 : ℚ), 2⟩,
    ⟨(67328914109/200000000000 : ℚ), (3479950731/10000000000 : ℚ), (-33301964551/250000000000 : ℚ), 2⟩,
    ⟨(21750122503/62500000000 : ℚ), (504568363/2000000000 : ℚ), (-25116371299/250000000000 : ℚ), 2⟩,
    ⟨(359414303101/1000000000000 : ℚ), (439357647/2500000000 : ℚ), (-18352013363/250000000000 : ℚ), 2⟩,
    ⟨(92692923151/250000000000 : ℚ), (1137867339/10000000000 : ℚ), (-406397821/8000000000 : ℚ), 2⟩,
    ⟨(190982375343/500000000000 : ℚ), (126228229/2000000000 : ℚ), (-31736516599/1000000000000 : ℚ), 2⟩,
    ⟨(392885682079/1000000000000 : ℚ), (106556861/5000000000 : ℚ), (-7773559999/500000000000 : ℚ), 2⟩,
    ⟨(100857328061/250000000000 : ℚ), (-134104221/10000000000 : ℚ), (-69068387/40000000000 : ℚ), 2⟩,
    ⟨(413494100259/1000000000000 : ℚ), (-423925167/10000000000 : ℚ), (10108294901/1000000000000 : ℚ), 2⟩,
    ⟨(211491558357/500000000000 : ℚ), (-166626003/2500000000 : ℚ), (10125868329/500000000000 : ℚ), 2⟩,
    ⟨(53975622149/125000000000 : ℚ), (-173918099/2000000000 : ℚ), (7232517611/250000000000 : ℚ), 2⟩,
    ⟨(219937361177/500000000000 : ℚ), (-207826723/2000000000 : ℚ), (36318466953/1000000000000 : ℚ), 2⟩,
    ⟨(27944664759/62500000000 : ℚ), (-1179715357/10000000000 : ℚ), (8510515171/200000000000 : ℚ), 2⟩,
    ⟨(453454994233/1000000000000 : ℚ), (-647432477/5000000000 : ℚ), (5967151959/125000000000 : ℚ), 2⟩,
    ⟨(114708683877/250000000000 : ℚ), (-693644037/5000000000 : ℚ), (25976420731/500000000000 : ℚ), 2⟩,
    ⟨(11580051253/25000000000 : ℚ), (-182379293/1250000000 : ℚ), (55260373413/1000000000000 : ℚ), 2⟩,
    ⟨(11662871961/25000000000 : ℚ), (-755809603/5000000000 : ℚ), (5770478277/100000000000 : ℚ), 2⟩,
    ⟨(468741316121/1000000000000 : ℚ), (-1546111069/10000000000 : ℚ), (2965885339/50000000000 : ℚ), 2⟩,
    ⟨(469859921351/1000000000000 : ℚ), (-781595599/5000000000 : ℚ), (60119276769/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1565318529/10000000000 : ℚ), (30109623217/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (80569850737/250000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control168.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control168.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate168
