import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate833
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287830428887/500000000000 : ℚ), (15350079050493/10000000000 : ℚ), (-442163473336527/500000000000 : ℚ), 14⟩,
    ⟨(144064805979/250000000000 : ℚ), (421855073831/2500000000 : ℚ), (-9767064879183/100000000000 : ℚ), 10⟩,
    ⟨(115490038721/200000000000 : ℚ), (596100041473/10000000000 : ℚ), (-6947734345539/200000000000 : ℚ), 9⟩,
    ⟨(289611148577/500000000000 : ℚ), (148106318711/5000000000 : ℚ), (-17400940071493/1000000000000 : ℚ), 8⟩,
    ⟨(581558468237/1000000000000 : ℚ), (173252635369/10000000000 : ℚ), (-2053365095199/200000000000 : ℚ), 7⟩,
    ⟨(73054526031/125000000000 : ℚ), (111303146517/10000000000 : ℚ), (-1664089158317/250000000000 : ℚ), 7⟩,
    ⟨(293913901489/500000000000 : ℚ), (75878315101/10000000000 : ℚ), (-916129424299/200000000000 : ℚ), 6⟩,
    ⟨(591700589517/1000000000000 : ℚ), (13451092459/2500000000 : ℚ), (-3279200328269/1000000000000 : ℚ), 6⟩,
    ⟨(149004317703/250000000000 : ℚ), (39168846793/10000000000 : ℚ), (-301288769561/125000000000 : ℚ), 6⟩,
    ⟨(300368137431/500000000000 : ℚ), (28999353909/10000000000 : ℚ), (-450490156069/250000000000 : ℚ), 5⟩,
    ⟨(605812155081/1000000000000 : ℚ), (21669707329/10000000000 : ℚ), (-679949300411/500000000000 : ℚ), 5⟩,
    ⟨(122239205593/200000000000 : ℚ), (2028739093/1250000000 : ℚ), (-1028967149563/1000000000000 : ℚ), 5⟩,
    ⟨(154209010969/250000000000 : ℚ), (12095129027/10000000000 : ℚ), (-387571924287/500000000000 : ℚ), 5⟩,
    ⟨(622677886377/1000000000000 : ℚ), (555596581/625000000 : ℚ), (-288259246139/500000000000 : ℚ), 5⟩,
    ⟨(628665295333/1000000000000 : ℚ), (1590724717/2500000000 : ℚ), (-16738595721/40000000000 : ℚ), 4⟩,
    ⟨(634740608721/1000000000000 : ℚ), (217171903/500000000 : ℚ), (-58183637463/200000000000 : ℚ), 4⟩,
    ⟨(640845317953/1000000000000 : ℚ), (1355113423/5000000000 : ℚ), (-186770306181/1000000000000 : ℚ), 4⟩,
    ⟨(646920631341/1000000000000 : ℚ), (34405349/250000000 : ℚ), (-25222047713/250000000000 : ℚ), 4⟩,
    ⟨(652908040297/1000000000000 : ℚ), (277541723/10000000000 : ℚ), (-1474663473/50000000000 : ℚ), 4⟩,
    ⟨(329374941399/500000000000 : ℚ), (-633398379/10000000000 : ℚ), (30241963637/1000000000000 : ℚ), 4⟩,
    ⟨(66438989871/100000000000 : ℚ), (-1392589931/10000000000 : ℚ), (80462816657/1000000000000 : ℚ), 4⟩,
    ⟨(334886885797/500000000000 : ℚ), (-405507919/2000000000 : ℚ), (30703898779/250000000000 : ℚ), 4⟩,
    ⟨(168712412953/250000000000 : ℚ), (-2559463111/10000000000 : ℚ), (39643733301/250000000000 : ℚ), 4⟩,
    ⟨(679568655863/1000000000000 : ℚ), (-3004830919/10000000000 : ℚ), (7549357221/40000000000 : ℚ), 4⟩,
    ⟨(683885337157/1000000000000 : ℚ), (-3376479223/10000000000 : ℚ), (214069055059/1000000000000 : ℚ), 4⟩,
    ⟨(42984882731/62500000000 : ℚ), (-1842210427/5000000000 : ℚ), (5879690773/25000000000 : ℚ), 4⟩,
    ⟨(345574859213/500000000000 : ℚ), (-3936444977/10000000000 : ℚ), (3157038647/12500000000 : ℚ), 4⟩,
    ⟨(694027458437/1000000000000 : ℚ), (-1034641343/2500000000 : ℚ), (1666009209/6250000000 : ℚ), 4⟩,
    ⟨(8704545369/12500000000 : ℚ), (-536919683/1250000000 : ℚ), (277461467383/1000000000000 : ℚ), 4⟩,
    ⟨(698135733069/1000000000000 : ℚ), (-1102552787/2500000000 : ℚ), (142734793179/500000000000 : ℚ), 4⟩,
    ⟨(699326702759/1000000000000 : ℚ), (-2242758661/5000000000 : ℚ), (290731449131/1000000000000 : ℚ), 4⟩,
    ⟨(6999250689/10000000000 : ℚ), (-4522799789/10000000000 : ℚ), (36667478153/125000000000 : ℚ), 4⟩,
    ⟨(7/10 : ℚ), (-181097717/400000000 : ℚ), (293664827387/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (269339394523/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control833.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control833.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate833
