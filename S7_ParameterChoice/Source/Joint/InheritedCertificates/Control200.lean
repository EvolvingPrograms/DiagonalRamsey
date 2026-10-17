import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate200
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(130346188231/500000000000 : ℚ), (90853989667/80000000 : ℚ), (-148421492993229/500000000000 : ℚ), 11⟩,
    ⟨(4088304981/15625000000 : ℚ), (123603820269/1000000000 : ℚ), (-32825178165713/1000000000000 : ℚ), 8⟩,
    ⟨(52712113273/200000000000 : ℚ), (215385135077/5000000000 : ℚ), (-11703660700649/1000000000000 : ℚ), 7⟩,
    ⟨(266401134031/1000000000000 : ℚ), (823816421/39062500 : ℚ), (-588434524449/100000000000 : ℚ), 6⟩,
    ⟨(270145865563/1000000000000 : ℚ), (1215215971/100000000 : ℚ), (-1744711176433/500000000000 : ℚ), 5⟩,
    ⟨(5495173943/20000000000 : ℚ), (2405294767/312500000 : ℚ), (-2276956365343/1000000000000 : ℚ), 4⟩,
    ⟨(140097602351/500000000000 : ℚ), (25902049309/5000000000 : ℚ), (-1579434753821/1000000000000 : ℚ), 4⟩,
    ⟨(286403031679/1000000000000 : ℚ), (7266765923/2000000000 : ℚ), (-45664749521/40000000000 : ℚ), 4⟩,
    ⟨(146661196657/500000000000 : ℚ), (5244555429/2000000000 : ℚ), (-848826108839/1000000000000 : ℚ), 3⟩,
    ⟨(75221663093/250000000000 : ℚ), (2412458877/1250000000 : ℚ), (-128665723663/200000000000 : ℚ), 3⟩,
    ⟨(309022960903/1000000000000 : ℚ), (14382248199/10000000000 : ℚ), (-246749835813/500000000000 : ℚ), 3⟩,
    ⟨(317652961809/1000000000000 : ℚ), (5391896577/5000000000 : ℚ), (-190418588869/500000000000 : ℚ), 3⟩,
    ⟨(163346771731/500000000000 : ℚ), (4042214737/5000000000 : ℚ), (-4592738171/15625000000 : ℚ), 3⟩,
    ⟨(336057640119/1000000000000 : ℚ), (3008259881/5000000000 : ℚ), (-225455952917/1000000000000 : ℚ), 3⟩,
    ⟨(345655070411/1000000000000 : ℚ), (550437683/1250000000 : ℚ), (-170508656113/1000000000000 : ℚ), 2⟩,
    ⟨(177696702919/500000000000 : ℚ), (390686847/1250000000 : ℚ), (-125735799487/1000000000000 : ℚ), 2⟩,
    ⟨(73035772181/200000000000 : ℚ), (1049549129/5000000000 : ℚ), (-5548373037/62500000000 : ℚ), 2⟩,
    ⟨(93729299083/250000000000 : ℚ), (2470837/19531250 : ℚ), (-14480971033/250000000000 : ℚ), 2⟩,
    ⟨(6008041041/15625000000 : ℚ), (290281483/5000000000 : ℚ), (-31941613497/1000000000000 : ℚ), 2⟩,
    ⟨(393878723281/1000000000000 : ℚ), (3529401/2500000000 : ℚ), (-4951318309/500000000000 : ℚ), 2⟩,
    ⟨(201459652467/500000000000 : ℚ), (-228841813/5000000000 : ℚ), (177778457/20000000000 : ℚ), 2⟩,
    ⟨(411549305839/1000000000000 : ℚ), (-213116441/2500000000 : ℚ), (24962284457/1000000000000 : ℚ), 2⟩,
    ⟨(41968561437/100000000000 : ℚ), (-1183620771/10000000000 : ℚ), (77446407/2000000000 : ℚ), 2⟩,
    ⟨(106812468357/250000000000 : ℚ), (-365350233/2500000000 : ℚ), (12621153741/250000000000 : ℚ), 2⟩,
    ⟨(434169235063/1000000000000 : ℚ), (-1693697349/10000000000 : ℚ), (15122181853/250000000000 : ℚ), 2⟩,
    ⟨(440377062041/1000000000000 : ℚ), (-1886601059/10000000000 : ℚ), (8615397143/125000000000 : ℚ), 2⟩,
    ⟨(55726696199/125000000000 : ℚ), (-204481149/1000000000 : ℚ), (75932977921/1000000000000 : ℚ), 2⟩,
    ⟨(22521320059/50000000000 : ℚ), (-1085967889/5000000000 : ℚ), (16325886323/200000000000 : ℚ), 2⟩,
    ⟨(56771391589/125000000000 : ℚ), (-2270708607/10000000000 : ℚ), (21524198823/250000000000 : ℚ), 2⟩,
    ⟨(228505850189/500000000000 : ℚ), (-2343152859/10000000000 : ℚ), (44698622043/500000000000 : ℚ), 2⟩,
    ⟨(229460373979/500000000000 : ℚ), (-2390695007/10000000000 : ℚ), (91574499541/1000000000000 : ℚ), 2⟩,
    ⟨(459879890281/1000000000000 : ℚ), (-482848939/2000000000 : ℚ), (92656371197/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-75536817/312500000 : ℚ), (92791292217/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (302596346743/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control200.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control200.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate200
