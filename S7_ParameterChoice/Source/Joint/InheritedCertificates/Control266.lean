import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate266
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(262656681699/1000000000000 : ℚ), (1225173920343/1000000000 : ℚ), (-161276742528797/500000000000 : ℚ), 11⟩,
    ⟨(131755061813/500000000000 : ℚ), (1335524784933/10000000000 : ℚ), (-89150980053/2500000000 : ℚ), 8⟩,
    ⟨(132604394183/500000000000 : ℚ), (29150644801/625000000 : ℚ), (-635441085953/50000000000 : ℚ), 7⟩,
    ⟨(267736316851/1000000000000 : ℚ), (114427769063/5000000000 : ℚ), (-159631780523/25000000000 : ℚ), 6⟩,
    ⟨(271068367599/1000000000000 : ℚ), (132154799783/10000000000 : ℚ), (-3782805222853/1000000000000 : ℚ), 5⟩,
    ⟨(13758642557/50000000000 : ℚ), (83865560473/10000000000 : ℚ), (-616310677329/250000000000 : ℚ), 5⟩,
    ⟨(140005119527/500000000000 : ℚ), (2261311401/400000000 : ℚ), (-853619263969/500000000000 : ℚ), 4⟩,
    ⟨(285533944651/1000000000000 : ℚ), (620173367/156250000 : ℚ), (-615720886117/500000000000 : ℚ), 4⟩,
    ⟨(145845385813/500000000000 : ℚ), (3582006463/1250000000 : ℚ), (-228309012559/250000000000 : ℚ), 4⟩,
    ⟨(298421426369/1000000000000 : ℚ), (10540138663/5000000000 : ℚ), (-344946582743/500000000000 : ℚ), 3⟩,
    ⟨(305661088997/1000000000000 : ℚ), (1960574551/1250000000 : ℚ), (-65880949637/125000000000 : ℚ), 3⟩,
    ⟨(313340037601/1000000000000 : ℚ), (11725288137/10000000000 : ℚ), (-80918989997/200000000000 : ℚ), 3⟩,
    ⟨(80346079927/250000000000 : ℚ), (4373553351/5000000000 : ℚ), (-310141362681/1000000000000 : ℚ), 3⟩,
    ⟨(329716464483/1000000000000 : ℚ), (807436301/1250000000 : ℚ), (-117856487263/500000000000 : ℚ), 3⟩,
    ⟨(169128114409/500000000000 : ℚ), (4670471099/10000000000 : ℚ), (-87997434359/500000000000 : ℚ), 3⟩,
    ⟨(346921370113/1000000000000 : ℚ), (3249498199/10000000000 : ℚ), (-63668898383/500000000000 : ℚ), 3⟩,
    ⟨(177814219161/500000000000 : ℚ), (1052794599/5000000000 : ℚ), (-87172618671/1000000000000 : ℚ), 2⟩,
    ⟨(182146789809/500000000000 : ℚ), (293499741/2500000000 : ℚ), (-53651798667/1000000000000 : ℚ), 2⟩,
    ⟨(372833343953/1000000000000 : ℚ), (407820581/10000000000 : ℚ), (-12711304827/500000000000 : ℚ), 2⟩,
    ⟨(47645686091/125000000000 : ℚ), (-227456569/10000000000 : ℚ), (-1479488617/1000000000000 : ℚ), 2⟩,
    ⟨(77841954167/200000000000 : ℚ), (-378779937/5000000000 : ℚ), (295852249/15625000000 : ℚ), 2⟩,
    ⟨(198444359719/500000000000 : ℚ), (-600942199/5000000000 : ℚ), (36395205989/1000000000000 : ℚ), 2⟩,
    ⟨(202064191033/500000000000 : ℚ), (-1575187257/10000000000 : ℚ), (10268774021/200000000000 : ℚ), 2⟩,
    ⟨(41085903681/100000000000 : ℚ), (-11804867/62500000 : ℚ), (8015107441/125000000000 : ℚ), 2⟩,
    ⟨(83403172757/200000000000 : ℚ), (-2151371853/10000000000 : ℚ), (74989467019/1000000000000 : ℚ), 2⟩,
    ⟨(422539569381/1000000000000 : ℚ), (-94787849/400000000 : ℚ), (84153532511/1000000000000 : ℚ), 2⟩,
    ⟨(85475391459/200000000000 : ℚ), (-1274472829/5000000000 : ℚ), (91770459583/1000000000000 : ℚ), 2⟩,
    ⟨(107870360209/250000000000 : ℚ), (-2693107169/10000000000 : ℚ), (979609381/10000000000 : ℚ), 2⟩,
    ⟨(3396980403/7812500000 : ℚ), (-175325197/625000000 : ℚ), (102816228973/1000000000000 : ℚ), 2⟩,
    ⟨(437341020069/1000000000000 : ℚ), (-1443734407/5000000000 : ℚ), (106403598623/1000000000000 : ℚ), 2⟩,
    ⟨(43903968481/100000000000 : ℚ), (-2941479911/10000000000 : ℚ), (21754059709/200000000000 : ℚ), 2⟩,
    ⟨(27493320421/62500000000 : ℚ), (-371030127/1250000000 : ℚ), (109946357463/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-371446853/1250000000 : ℚ), (110093027169/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (78375734423/250000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control266.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control266.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate266
