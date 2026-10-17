import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate429
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(142003246679/500000000000 : ℚ), (3004295484419/2500000000 : ℚ), (-171015912832423/500000000000 : ℚ), 12⟩,
    ⟨(284853439489/1000000000000 : ℚ), (262257105373/2000000000 : ℚ), (-37810559990707/1000000000000 : ℚ), 9⟩,
    ⟨(143269587599/500000000000 : ℚ), (458580721347/10000000000 : ℚ), (-6736372765829/500000000000 : ℚ), 7⟩,
    ⟨(289047465927/1000000000000 : ℚ), (225360599557/10000000000 : ℚ), (-3383642223599/500000000000 : ℚ), 6⟩,
    ⟨(146177077733/500000000000 : ℚ), (130341297629/10000000000 : ℚ), (-4007671195691/1000000000000 : ℚ), 5⟩,
    ⟨(296427398587/1000000000000 : ℚ), (41420386491/5000000000 : ℚ), (-2610582514141/1000000000000 : ℚ), 5⟩,
    ⟨(75306991933/250000000000 : ℚ), (55921225333/10000000000 : ℚ), (-451716141303/250000000000 : ℚ), 5⟩,
    ⟨(76677407699/250000000000 : ℚ), (19655859131/5000000000 : ℚ), (-1302416198487/1000000000000 : ℚ), 4⟩,
    ⟨(19551224773/62500000000 : ℚ), (28413326761/10000000000 : ℚ), (-241273881483/250000000000 : ℚ), 4⟩,
    ⟨(319499022137/1000000000000 : ℚ), (4184116581/2000000000 : ℚ), (-728386400583/1000000000000 : ℚ), 4⟩,
    ⟨(20417723849/62500000000 : ℚ), (7788257603/5000000000 : ℚ), (-138961970379/250000000000 : ℚ), 3⟩,
    ⟨(334304083473/1000000000000 : ℚ), (11649863141/10000000000 : ℚ), (-213080455487/500000000000 : ℚ), 3⟩,
    ⟨(68457427641/200000000000 : ℚ), (217316903/250000000 : ℚ), (-4077275787/12500000000 : ℚ), 3⟩,
    ⟨(350555864599/1000000000000 : ℚ), (1283759431/2000000000 : ℚ), (-247454295089/1000000000000 : ℚ), 3⟩,
    ⟨(3590306303/10000000000 : ℚ), (4638974717/10000000000 : ℚ), (-18433958123/100000000000 : ℚ), 3⟩,
    ⟨(367629818681/1000000000000 : ℚ), (3224355737/10000000000 : ℚ), (-132965720947/1000000000000 : ℚ), 3⟩,
    ⟨(376270614857/1000000000000 : ℚ), (2085024247/10000000000 : ℚ), (-45302751551/500000000000 : ℚ), 3⟩,
    ⟨(192434901619/500000000000 : ℚ), (1156903857/10000000000 : ℚ), (-55296645191/1000000000000 : ℚ), 3⟩,
    ⟨(393344568939/1000000000000 : ℚ), (393502683/10000000000 : ℚ), (-2560139797/100000000000 : ℚ), 3⟩,
    ⟨(401613295333/1000000000000 : ℚ), (-14964843/625000000 : ℚ), (-112519743/250000000000 : ℚ), 2⟩,
    ⟨(81919270013/200000000000 : ℚ), (-299803/3906250 : ℚ), (20963372657/1000000000000 : ℚ), 2⟩,
    ⟨(208608425977/500000000000 : ℚ), (-1209984501/10000000000 : ℚ), (7850540953/200000000000 : ℚ), 2⟩,
    ⟨(2122007057/5000000000 : ℚ), (-1581619513/10000000000 : ℚ), (27444516091/500000000000 : ℚ), 2⟩,
    ⟨(43108083717/100000000000 : ℚ), (-1893693949/10000000000 : ℚ), (545888703/8000000000 : ℚ), 2⟩,
    ⟨(437190802741/1000000000000 : ℚ), (-430983539/2000000000 : ℚ), (79575649821/1000000000000 : ℚ), 2⟩,
    ⟨(88534493161/200000000000 : ℚ), (-2372024193/10000000000 : ℚ), (89126152063/1000000000000 : ℚ), 2⟩,
    ⟨(447473034951/1000000000000 : ℚ), (-637553499/2500000000 : ℚ), (48528236233/500000000000 : ℚ), 2⟩,
    ⟨(56443284759/125000000000 : ℚ), (-673370317/2500000000 : ℚ), (2587405973/25000000000 : ℚ), 2⟩,
    ⟨(454852967611/1000000000000 : ℚ), (-1402427357/5000000000 : ℚ), (10854356203/100000000000 : ℚ), 2⟩,
    ⟨(22868062917/50000000000 : ℚ), (-2886574491/10000000000 : ℚ), (112270810849/1000000000000 : ℚ), 2⟩,
    ⟨(459046994049/1000000000000 : ℚ), (-2940219861/10000000000 : ℚ), (114728849753/1000000000000 : ℚ), 2⟩,
    ⟨(22994697009/50000000000 : ℚ), (-1483398791/5000000000 : ℚ), (28987503941/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-742527111/2500000000 : ℚ), (23220459571/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (171253838847/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control429.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control429.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate429
