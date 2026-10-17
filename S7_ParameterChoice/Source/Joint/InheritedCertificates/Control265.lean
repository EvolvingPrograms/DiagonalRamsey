import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate265
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63949584969/250000000000 : ℚ), (12146691005383/10000000000 : ℚ), (-38930438422907/125000000000 : ℚ), 11⟩,
    ⟨(4009947859/15625000000 : ℚ), (1323917024489/10000000000 : ℚ), (-34431797601647/1000000000000 : ℚ), 8⟩,
    ⟨(258305235667/1000000000000 : ℚ), (462277168763/10000000000 : ℚ), (-766920745887/62500000000 : ℚ), 7⟩,
    ⟨(260787988681/1000000000000 : ℚ), (226780950321/10000000000 : ℚ), (-616496610021/100000000000 : ℚ), 6⟩,
    ⟨(1056244047/4000000000 : ℚ), (32731627389/2500000000 : ℚ), (-3652115140603/1000000000000 : ℚ), 5⟩,
    ⟨(268092783873/1000000000000 : ℚ), (83064788529/10000000000 : ℚ), (-37186044639/15625000000 : ℚ), 5⟩,
    ⟨(272844476879/1000000000000 : ℚ), (218660243/39062500 : ℚ), (-1647979052041/1000000000000 : ℚ), 4⟩,
    ⟨(278270329367/1000000000000 : ℚ), (39288194619/10000000000 : ℚ), (-1188533661571/1000000000000 : ℚ), 4⟩,
    ⟨(284318087413/1000000000000 : ℚ), (2835448423/1000000000 : ℚ), (-220311647089/250000000000 : ℚ), 4⟩,
    ⟨(1454647539/5000000000 : ℚ), (10424488793/5000000000 : ℚ), (-665550387113/1000000000000 : ℚ), 3⟩,
    ⟨(59608183787/200000000000 : ℚ), (60561423/39062500 : ℚ), (-508263460221/1000000000000 : ℚ), 3⟩,
    ⟨(152791917021/500000000000 : ℚ), (2316316777/2000000000 : ℚ), (-77994841343/200000000000 : ℚ), 3⟩,
    ⟨(156742805363/500000000000 : ℚ), (8631378707/10000000000 : ℚ), (-298716050209/1000000000000 : ℚ), 3⟩,
    ⟨(80417537639/250000000000 : ℚ), (3182587159/5000000000 : ℚ), (-14174390037/62500000000 : ℚ), 3⟩,
    ⟨(16502931597/50000000000 : ℚ), (287047641/625000000 : ℚ), (-169065449537/1000000000000 : ℚ), 3⟩,
    ⟨(338570269217/1000000000000 : ℚ), (3184807449/10000000000 : ℚ), (-3050467543/25000000000 : ℚ), 3⟩,
    ⟨(86780772667/250000000000 : ℚ), (3281903/16000000 : ℚ), (-83169977631/1000000000000 : ℚ), 2⟩,
    ⟨(71126945589/200000000000 : ℚ), (1127788161/10000000000 : ℚ), (-5073605053/100000000000 : ℚ), 2⟩,
    ⟨(364023209329/1000000000000 : ℚ), (46019917/1250000000 : ℚ), (-23411493669/1000000000000 : ℚ), 2⟩,
    ⟨(372207749159/1000000000000 : ℚ), (-130929963/5000000000 : ℚ), (-226112023/1000000000000 : ℚ), 2⟩,
    ⟨(190054762921/500000000000 : ℚ), (-157546341/2000000000 : ℚ), (19550253693/1000000000000 : ℚ), 2⟩,
    ⟨(7753048819/20000000000 : ℚ), (-1228646263/10000000000 : ℚ), (9118185459/250000000000 : ℚ), 2⟩,
    ⟨(78952770417/200000000000 : ℚ), (-99950069/625000000 : ℚ), (50966782167/1000000000000 : ℚ), 2⟩,
    ⟨(50171909059/125000000000 : ℚ), (-1910581209/10000000000 : ℚ), (63360257279/1000000000000 : ℚ), 2⟩,
    ⟨(203711515259/500000000000 : ℚ), (-271425107/1250000000 : ℚ), (18476676679/250000000000 : ℚ), 2⟩,
    ⟨(206424441503/500000000000 : ℚ), (-298538951/1250000000 : ℚ), (10350288879/125000000000 : ℚ), 2⟩,
    ⟨(104400144003/250000000000 : ℚ), (-641611459/2500000000 : ℚ), (22549617713/250000000000 : ℚ), 2⟩,
    ⟨(84326469627/200000000000 : ℚ), (-2709742501/10000000000 : ℚ), (24052800923/250000000000 : ℚ), 2⟩,
    ⟨(106226342801/250000000000 : ℚ), (-1410593491/5000000000 : ℚ), (20185637323/200000000000 : ℚ), 2⟩,
    ⟨(213694062109/500000000000 : ℚ), (-145149337/500000000 : ℚ), (104414009287/1000000000000 : ℚ), 2⟩,
    ⟨(429056696909/1000000000000 : ℚ), (-2956697767/10000000000 : ℚ), (21342804399/200000000000 : ℚ), 2⟩,
    ⟨(429895020009/1000000000000 : ℚ), (-149165597/500000000 : ℚ), (107857034773/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1493313763/5000000000 : ℚ), (53999793777/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (9946991337/31250000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control265.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control265.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate265
