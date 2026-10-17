import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate225
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(242587750497/1000000000000 : ℚ), (10970806151049/10000000000 : ℚ), (-33355874643701/125000000000 : ℚ), 11⟩,
    ⟨(243489647861/1000000000000 : ℚ), (298456064471/2500000000 : ℚ), (-7376789253769/250000000000 : ℚ), 8⟩,
    ⟨(30660594603/125000000000 : ℚ), (415948530813/10000000000 : ℚ), (-2629963951441/250000000000 : ℚ), 7⟩,
    ⟨(49591157901/200000000000 : ℚ), (198801593/9765625 : ℚ), (-2644256232341/500000000000 : ℚ), 6⟩,
    ⟨(251477022401/1000000000000 : ℚ), (29313582859/2500000000 : ℚ), (-3135525058831/1000000000000 : ℚ), 5⟩,
    ⟨(15988409007/62500000000 : ℚ), (74230956319/10000000000 : ℚ), (-2045497585869/1000000000000 : ℚ), 5⟩,
    ⟨(130463290967/500000000000 : ℚ), (24965905523/5000000000 : ℚ), (-354591973483/250000000000 : ℚ), 4⟩,
    ⟨(66690976037/250000000000 : ℚ), (17497657709/5000000000 : ℚ), (-64043062661/62500000000 : ℚ), 4⟩,
    ⟨(5465405883/20000000000 : ℚ), (3154197401/1250000000 : ℚ), (-380683939751/500000000000 : ℚ), 3⟩,
    ⟨(35047886481/125000000000 : ℚ), (9274791879/5000000000 : ℚ), (-72063816989/125000000000 : ℚ), 3⟩,
    ⟨(36004224639/125000000000 : ℚ), (690080333/500000000 : ℚ), (-220843606853/500000000000 : ℚ), 3⟩,
    ⟨(296148729467/1000000000000 : ℚ), (516328027/500000000 : ℚ), (-340266520597/1000000000000 : ℚ), 3⟩,
    ⟨(304649737679/1000000000000 : ℚ), (1543815139/2000000000 : ℚ), (-130998130099/500000000000 : ℚ), 3⟩,
    ⟨(313454952391/1000000000000 : ℚ), (2860403499/5000000000 : ℚ), (-200281205793/1000000000000 : ℚ), 3⟩,
    ⟨(161239787287/500000000000 : ℚ), (4161357099/10000000000 : ℚ), (-75363078193/500000000000 : ℚ), 3⟩,
    ⟨(331636692181/1000000000000 : ℚ), (1462529767/5000000000 : ℚ), (-110314150519/1000000000000 : ℚ), 2⟩,
    ⟨(85209529291/250000000000 : ℚ), (482866461/2500000000 : ℚ), (-2403811597/31250000000 : ℚ), 2⟩,
    ⟨(349995234771/1000000000000 : ℚ), (561723877/5000000000 : ℚ), (-12255872183/250000000000 : ℚ), 2⟩,
    ⟨(359019856953/1000000000000 : ℚ), (459706407/10000000000 : ℚ), (-25501969199/1000000000000 : ℚ), 2⟩,
    ⟨(183912535833/500000000000 : ℚ), (-18015317/2000000000 : ℚ), (-5527867543/1000000000000 : ℚ), 2⟩,
    ⟨(188163039939/500000000000 : ℚ), (-109691001/2000000000 : ℚ), (11522779983/1000000000000 : ℚ), 2⟩,
    ⟨(384441012233/1000000000000 : ℚ), (-466198351/5000000000 : ℚ), (26124096699/1000000000000 : ℚ), 2⟩,
    ⟨(49011464687/125000000000 : ℚ), (-250957501/2000000000 : ℚ), (19319607481/500000000000 : ℚ), 2⟩,
    ⟨(199602257597/500000000000 : ℚ), (-762743313/5000000000 : ℚ), (1973913953/40000000000 : ℚ), 2⟩,
    ⟨(405710905197/1000000000000 : ℚ), (-1752078063/10000000000 : ℚ), (14616545877/250000000000 : ℚ), 2⟩,
    ⟨(411548227411/1000000000000 : ℚ), (-1940412169/10000000000 : ℚ), (4135089157/62500000000 : ℚ), 2⟩,
    ⟨(416660265233/1000000000000 : ℚ), (-104749993/500000000 : ℚ), (36281289493/500000000000 : ℚ), 2⟩,
    ⟨(6578090421/15625000000 : ℚ), (-55482537/250000000 : ℚ), (77768474189/1000000000000 : ℚ), 2⟩,
    ⟨(424519019839/1000000000000 : ℚ), (-115796947/500000000 : ℚ), (40926897937/500000000000 : ℚ), 2⟩,
    ⟨(427190052521/1000000000000 : ℚ), (-2386850731/10000000000 : ℚ), (42436781029/500000000000 : ℚ), 2⟩,
    ⟨(107246290371/250000000000 : ℚ), (-2433403249/10000000000 : ℚ), (21716601173/250000000000 : ℚ), 2⟩,
    ⟨(13433970589/31250000000 : ℚ), (-76764611/312500000 : ℚ), (43928433763/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1229670383/5000000000 : ℚ), (87980399491/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (651534343/2000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control225.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control225.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate225
