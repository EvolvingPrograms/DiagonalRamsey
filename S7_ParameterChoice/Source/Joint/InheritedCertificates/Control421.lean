import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate421
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5164389327/20000000000 : ℚ), (649533614507/400000000 : ℚ), (-419996584875291/1000000000000 : ℚ), 12⟩,
    ⟨(258805519517/1000000000000 : ℚ), (284172859/1600000 : ℚ), (-46396883720293/1000000000000 : ℚ), 9⟩,
    ⟨(259971981837/1000000000000 : ℚ), (622974093639/10000000000 : ℚ), (-16508717591327/1000000000000 : ℚ), 7⟩,
    ⟨(130853809821/500000000000 : ℚ), (153520708783/5000000000 : ℚ), (-2068495193963/250000000000 : ℚ), 6⟩,
    ⟨(263995717791/1000000000000 : ℚ), (178014477761/10000000000 : ℚ), (-976985585027/200000000000 : ℚ), 6⟩,
    ⟨(266814240647/1000000000000 : ℚ), (113319835089/10000000000 : ℚ), (-99034503867/31250000000 : ℚ), 5⟩,
    ⟨(135068022147/500000000000 : ℚ), (76525942123/10000000000 : ℚ), (-2181949769943/1000000000000 : ℚ), 5⟩,
    ⟨(273929137949/1000000000000 : ℚ), (26866191387/5000000000 : ℚ), (-390573714209/250000000000 : ℚ), 4⟩,
    ⟨(69539248011/250000000000 : ℚ), (19354880993/5000000000 : ℚ), (-1147863728621/1000000000000 : ℚ), 4⟩,
    ⟨(56555778007/200000000000 : ℚ), (7083001533/2500000000 : ℚ), (-171394481057/200000000000 : ℚ), 4⟩,
    ⟨(71937580129/250000000000 : ℚ), (2089262251/1000000000 : ℚ), (-322435324499/500000000000 : ℚ), 4⟩,
    ⟨(58604681179/200000000000 : ℚ), (3849345601/2500000000 : ℚ), (-242689262893/500000000000 : ℚ), 3⟩,
    ⟨(298547363477/1000000000000 : ℚ), (11236215479/10000000000 : ℚ), (-362356108139/1000000000000 : ℚ), 3⟩,
    ⟨(304268994531/1000000000000 : ℚ), (400932539/500000000 : ℚ), (-66354645301/250000000000 : ℚ), 3⟩,
    ⟨(155066598311/500000000000 : ℚ), (685737211/1250000000 : ℚ), (-18764311953/100000000000 : ℚ), 3⟩,
    ⟨(158041747139/500000000000 : ℚ), (692270321/2000000000 : ℚ), (-62137808281/500000000000 : ℚ), 3⟩,
    ⟨(322062582879/1000000000000 : ℚ), (910738689/5000000000 : ℚ), (-8996045031/125000000000 : ℚ), 3⟩,
    ⟨(65602576107/200000000000 : ℚ), (95605017/2000000000 : ℚ), (-14156688491/500000000000 : ℚ), 3⟩,
    ⟨(166938541313/500000000000 : ℚ), (-633190317/10000000000 : ℚ), (4226365849/500000000000 : ℚ), 3⟩,
    ⟨(339598713679/1000000000000 : ℚ), (-1559570933/10000000000 : ℚ), (39640911657/1000000000000 : ℚ), 3⟩,
    ⟨(345122671261/1000000000000 : ℚ), (-584145153/2500000000 : ℚ), (33118962477/500000000000 : ℚ), 3⟩,
    ⟨(350395756641/1000000000000 : ℚ), (-1495519823/5000000000 : ℚ), (88993956913/1000000000000 : ℚ), 3⟩,
    ⟨(177683593561/500000000000 : ℚ), (-354340947/1000000000 : ℚ), (10848369179/100000000000 : ℚ), 2⟩,
    ⟨(359989085113/1000000000000 : ℚ), (-801880939/2000000000 : ℚ), (31287424011/250000000000 : ℚ), 2⟩,
    ⟨(45527117401/125000000000 : ℚ), (-275071751/625000000 : ℚ), (34833439629/250000000000 : ℚ), 2⟩,
    ⟨(184005016431/500000000000 : ℚ), (-2364004307/5000000000 : ℚ), (151299875519/1000000000000 : ℚ), 2⟩,
    ⟨(37133183651/100000000000 : ℚ), (-999443461/2000000000 : ℚ), (161251321337/1000000000000 : ℚ), 2⟩,
    ⟨(187075179683/500000000000 : ℚ), (-130358031/250000000 : ℚ), (84671722103/500000000000 : ℚ), 2⟩,
    ⟨(75287691503/200000000000 : ℚ), (-269176043/500000000 : ℚ), (87846647677/500000000000 : ℚ), 2⟩,
    ⟨(9454352383/25000000000 : ℚ), (-2753959173/5000000000 : ℚ), (721547371/4000000000 : ℚ), 2⟩,
    ⟨(9483513941/25000000000 : ℚ), (-5589697567/10000000000 : ℚ), (91742138351/500000000000 : ℚ), 2⟩,
    ⟨(379926610807/1000000000000 : ℚ), (-43986321/78125000 : ℚ), (185023746923/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1408825591/2500000000 : ℚ), (185215752867/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (306176527373/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control421.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control421.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate421
