import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate525
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(138445266009/500000000000 : ℚ), (2722708913873/2000000000 : ℚ), (-7552535667637/20000000000 : ℚ), 12⟩,
    ⟨(277579227939/1000000000000 : ℚ), (59520293961/400000000 : ℚ), (-41728448811443/1000000000000 : ℚ), 9⟩,
    ⟨(4358593551/15625000000 : ℚ), (260762285273/5000000000 : ℚ), (-3714109645721/250000000000 : ℚ), 7⟩,
    ⟨(280989608831/1000000000000 : ℚ), (51373142321/2000000000 : ℚ), (-7452743224269/1000000000000 : ℚ), 6⟩,
    ⟨(28367844997/100000000000 : ℚ), (148858996587/10000000000 : ℚ), (-4405750063339/1000000000000 : ℚ), 6⟩,
    ⟨(286990615669/1000000000000 : ℚ), (94754555039/10000000000 : ℚ), (-2863148496973/1000000000000 : ℚ), 5⟩,
    ⟨(72723551991/250000000000 : ℚ), (1280359813/200000000 : ℚ), (-246962238943/125000000000 : ℚ), 5⟩,
    ⟨(472562613/1600000000 : ℚ), (45001397051/10000000000 : ℚ), (-283735038911/200000000000 : ℚ), 4⟩,
    ⟨(300319963713/1000000000000 : ℚ), (32486174203/10000000000 : ℚ), (-1046180321411/1000000000000 : ℚ), 4⟩,
    ⟨(305751351987/1000000000000 : ℚ), (5963575277/2500000000 : ℚ), (-784772022729/1000000000000 : ℚ), 4⟩,
    ⟨(31159349071/100000000000 : ℚ), (8838573187/5000000000 : ℚ), (-594215505259/1000000000000 : ℚ), 4⟩,
    ⟨(79447529223/250000000000 : ℚ), (13122718077/10000000000 : ℚ), (-450972110401/1000000000000 : ℚ), 3⟩,
    ⟨(64856310727/200000000000 : ℚ), (4840369789/5000000000 : ℚ), (-340529814559/1000000000000 : ℚ), 3⟩,
    ⟨(66201056971/200000000000 : ℚ), (351239197/500000000 : ℚ), (-126775360503/500000000000 : ℚ), 3⟩,
    ⟨(10559267417/31250000000 : ℚ), (4938628783/10000000000 : ℚ), (-91904665051/500000000000 : ℚ), 3⟩,
    ⟨(344889004383/1000000000000 : ℚ), (654961107/2000000000 : ℚ), (-31757443063/250000000000 : ℚ), 3⟩,
    ⟨(175957642441/500000000000 : ℚ), (482555071/2500000000 : ℚ), (-16040083321/200000000000 : ℚ), 3⟩,
    ⟨(358907731921/1000000000000 : ℚ), (831267203/10000000000 : ℚ), (-10288580039/250000000000 : ℚ), 3⟩,
    ⟨(36579900441/100000000000 : ℚ), (-7556053/1000000000 : ℚ), (-8303873391/1000000000000 : ℚ), 3⟩,
    ⟨(37252273563/100000000000 : ℚ), (-165952349/2000000000 : ℚ), (1953190273/100000000000 : ℚ), 3⟩,
    ⟨(189507086187/500000000000 : ℚ), (-73043883/500000000 : ℚ), (5405330133/125000000000 : ℚ), 3⟩,
    ⟨(77042159711/200000000000 : ℚ), (-995622407/5000000000 : ℚ), (63505348427/1000000000000 : ℚ), 3⟩,
    ⟨(195526468639/500000000000 : ℚ), (-97516111/400000000 : ℚ), (40419633157/500000000000 : ℚ), 3⟩,
    ⟨(24780270347/62500000000 : ℚ), (-2813939129/10000000000 : ℚ), (95644822439/1000000000000 : ℚ), 3⟩,
    ⟨(20072632807/50000000000 : ℚ), (-391181529/1250000000 : ℚ), (54115876941/500000000000 : ℚ), 2⟩,
    ⟨(202955040651/500000000000 : ℚ), (-3392249461/10000000000 : ℚ), (59419860031/500000000000 : ℚ), 2⟩,
    ⟨(102453418399/250000000000 : ℚ), (-1804179523/5000000000 : ℚ), (63826801299/500000000000 : ℚ), 2⟩,
    ⟨(82625167859/200000000000 : ℚ), (-945602007/2500000000 : ℚ), (134814966371/1000000000000 : ℚ), 2⟩,
    ⟨(207907340217/500000000000 : ℚ), (-1958951051/5000000000 : ℚ), (140430680629/1000000000000 : ℚ), 2⟩,
    ⟨(417854302001/1000000000000 : ℚ), (-2008715893/5000000000 : ℚ), (14457937491/100000000000 : ℚ), 2⟩,
    ⟨(209612530663/500000000000 : ℚ), (-1020705413/2500000000 : ℚ), (368290467/2500000000 : ℚ), 2⟩,
    ⟨(6561152457/15625000000 : ℚ), (-4115233937/10000000000 : ℚ), (148676105443/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-514909047/1250000000 : ℚ), (148845702469/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (21748852711/62500000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control525.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control525.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate525
