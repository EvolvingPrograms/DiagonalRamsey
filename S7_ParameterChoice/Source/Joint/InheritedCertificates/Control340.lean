import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate340
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(295793416917/1000000000000 : ℚ), (2845664998363/2500000000 : ℚ), (-337498517525319/1000000000000 : ℚ), 11⟩,
    ⟨(296776134853/1000000000000 : ℚ), (620289959131/5000000000 : ℚ), (-18659536329269/500000000000 : ℚ), 8⟩,
    ⟨(298732106613/1000000000000 : ℚ), (1732752849/40000000 : ℚ), (-6652319653981/500000000000 : ℚ), 7⟩,
    ⟨(301642495121/1000000000000 : ℚ), (212545403063/10000000000 : ℚ), (-1337663358973/200000000000 : ℚ), 6⟩,
    ⟨(4773113621/15625000000 : ℚ), (491012307/40000000 : ℚ), (-247839595317/62500000000 : ℚ), 5⟩,
    ⟨(155102743113/500000000000 : ℚ), (19482412507/2500000000 : ℚ), (-1293492958057/500000000000 : ℚ), 5⟩,
    ⟨(157887811269/500000000000 : ℚ), (52570102463/10000000000 : ℚ), (-112127319077/62500000000 : ℚ), 4⟩,
    ⟨(161068018611/500000000000 : ℚ), (1478121871/400000000 : ℚ), (-1296391497223/1000000000000 : ℚ), 4⟩,
    ⟨(41153184501/125000000000 : ℚ), (13363712609/5000000000 : ℚ), (-30114410211/31250000000 : ℚ), 4⟩,
    ⟨(13479026549/40000000000 : ℚ), (19713127879/10000000000 : ℚ), (-146042415887/200000000000 : ℚ), 3⟩,
    ⟨(86327990457/250000000000 : ℚ), (14722253041/10000000000 : ℚ), (-560086314811/1000000000000 : ℚ), 3⟩,
    ⟨(354154087209/1000000000000 : ℚ), (11064221919/10000000000 : ℚ), (-432247018377/1000000000000 : ℚ), 3⟩,
    ⟨(363416885369/1000000000000 : ℚ), (8316361399/10000000000 : ℚ), (-333724613689/1000000000000 : ℚ), 3⟩,
    ⟨(11656598453/31250000000 : ℚ), (620892251/1000000000 : ℚ), (-64043456271/250000000000 : ℚ), 3⟩,
    ⟨(382844484573/1000000000000 : ℚ), (2281848619/5000000000 : ℚ), (-194031058427/1000000000000 : ℚ), 3⟩,
    ⟨(392822187217/1000000000000 : ℚ), (814873341/2500000000 : ℚ), (-143475132353/1000000000000 : ℚ), 3⟩,
    ⟨(402848167697/1000000000000 : ℚ), (88473801/400000000 : ℚ), (-101814620489/1000000000000 : ℚ), 2⟩,
    ⟨(412825870341/1000000000000 : ℚ), (680317717/5000000000 : ℚ), (-67112775753/1000000000000 : ℚ), 2⟩,
    ⟨(211329602209/500000000000 : ℚ), (41393729/625000000 : ℚ), (-37950274993/1000000000000 : ℚ), 2⟩,
    ⟨(86450693909/200000000000 : ℚ), (21193433/2500000000 : ℚ), (-13270792769/1000000000000 : ℚ), 2⟩,
    ⟨(88303253541/200000000000 : ℚ), (-2474113/62500000 : ℚ), (3861039081/500000000000 : ℚ), 2⟩,
    ⟨(225179196543/500000000000 : ℚ), (-199409217/2500000000 : ℚ), (25635191737/1000000000000 : ℚ), 2⟩,
    ⟨(458694691189/1000000000000 : ℚ), (-226860083/2000000000 : ℚ), (409348541/10000000000 : ℚ), 2⟩,
    ⟨(233222439453/500000000000 : ℚ), (-283277477/2000000000 : ℚ), (10796314857/200000000000 : ℚ), 2⟩,
    ⟨(118383579423/250000000000 : ℚ), (-826012339/5000000000 : ℚ), (65055106697/1000000000000 : ℚ), 2⟩,
    ⟨(59986841547/125000000000 : ℚ), (-1847495943/10000000000 : ℚ), (3718637829/50000000000 : ℚ), 2⟩,
    ⟨(30341554293/62500000000 : ℚ), (-62739257/312500000 : ℚ), (41051458817/500000000000 : ℚ), 2⟩,
    ⟨(49019108317/100000000000 : ℚ), (-213623653/1000000000 : ℚ), (44187586121/500000000000 : ℚ), 2⟩,
    ⟨(494027859793/1000000000000 : ℚ), (-1118034031/5000000000 : ℚ), (93287850999/1000000000000 : ℚ), 2⟩,
    ⟨(496938248301/1000000000000 : ℚ), (-2309246511/10000000000 : ℚ), (24228416841/250000000000 : ℚ), 2⟩,
    ⟨(498894220061/1000000000000 : ℚ), (-2357250377/10000000000 : ℚ), (775811271/7812500000 : ℚ), 2⟩,
    ⟨(499876937997/1000000000000 : ℚ), (-2381022749/10000000000 : ℚ), (25122749703/250000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1191991827/5000000000 : ℚ), (100639025827/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (323269486613/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control340.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control340.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate340
