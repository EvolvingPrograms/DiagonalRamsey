import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control224
namespace DiagonalRamsey.JointInheritedCertificate224
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136595095709/500000000000 : ℚ), (9376350804283/10000000000 : ℚ), (-256946087920781/1000000000000 : ℚ), 11⟩,
    ⟨(274377931901/1000000000000 : ℚ), (1018054696969/10000000000 : ℚ), (-28423012991833/1000000000000 : ℚ), 8⟩,
    ⟨(276741974277/1000000000000 : ℚ), (176835514119/5000000000 : ℚ), (-2028225701641/200000000000 : ℚ), 6⟩,
    ⟨(11210382061/40000000000 : ℚ), (86280062451/5000000000 : ℚ), (-5104228996323/1000000000000 : ℚ), 6⟩,
    ⟨(284896787453/1000000000000 : ℚ), (3964167099/400000000 : ℚ), (-303136297231/100000000000 : ℚ), 5⟩,
    ⟨(58121804589/200000000000 : ℚ), (31294122003/5000000000 : ℚ), (-990999922477/500000000000 : ℚ), 4⟩,
    ⟨(297341246051/1000000000000 : ℚ), (8405700199/2000000000 : ℚ), (-43073927927/31250000000 : ℚ), 4⟩,
    ⟨(15251431089/50000000000 : ℚ), (2943512177/1000000000 : ℚ), (-999534111601/1000000000000 : ℚ), 4⟩,
    ⟨(39199639563/125000000000 : ℚ), (21236699197/10000000000 : ℚ), (-373119487861/500000000000 : ℚ), 3⟩,
    ⟨(322964210933/1000000000000 : ℚ), (15646650421/10000000000 : ℚ), (-142127873319/250000000000 : ℚ), 3⟩,
    ⟨(83259923707/250000000000 : ℚ), (11693415101/10000000000 : ℚ), (-438975712053/1000000000000 : ℚ), 3⟩,
    ⟨(343726535771/1000000000000 : ℚ), (8813518869/10000000000 : ℚ), (-68323199371/200000000000 : ℚ), 3⟩,
    ⟨(177460906821/500000000000 : ℚ), (666304407/1000000000 : ℚ), (-33319888553/125000000000 : ℚ), 3⟩,
    ⟨(73303542359/200000000000 : ℚ), (1255801653/2500000000 : ℚ), (-25931627289/125000000000 : ℚ), 2⟩,
    ⟨(378402555391/1000000000000 : ℚ), (3749988247/10000000000 : ℚ), (-40015998139/250000000000 : ℚ), 2⟩,
    ⟨(39046188689/100000000000 : ℚ), (1372916967/5000000000 : ℚ), (-4859409707/40000000000 : ℚ), 2⟩,
    ⟨(402579568337/1000000000000 : ℚ), (1943038277/10000000000 : ℚ), (-89670349123/1000000000000 : ℚ), 2⟩,
    ⟨(103659724959/250000000000 : ℚ), (323406227/2500000000 : ℚ), (-63147563887/1000000000000 : ℚ), 2⟩,
    ⟨(53315467929/125000000000 : ℚ), (381490917/5000000000 : ℚ), (-40839051311/1000000000000 : ℚ), 2⟩,
    ⟨(87623928317/200000000000 : ℚ), (325747071/10000000000 : ℚ), (-21943207203/1000000000000 : ℚ), 2⟩,
    ⟨(89862983891/200000000000 : ℚ), (-9228907/2500000000 : ℚ), (-183002863/31250000000 : ℚ), 2⟩,
    ⟨(230000880199/500000000000 : ℚ), (-339158907/10000000000 : ℚ), (1576441411/200000000000 : ℚ), 2⟩,
    ⟨(470077244293/1000000000000 : ℚ), (-295860337/5000000000 : ℚ), (19624923519/1000000000000 : ℚ), 2⟩,
    ⟨(479444338723/1000000000000 : ℚ), (-401406193/5000000000 : ℚ), (5929017973/200000000000 : ℚ), 2⟩,
    ⟨(244006416723/500000000000 : ℚ), (-489374887/5000000000 : ℚ), (1907729857/50000000000 : ℚ), 2⟩,
    ⟨(61962526147/125000000000 : ℚ), (-112440613/1000000000 : ℚ), (2832381733/62500000000 : ℚ), 2⟩,
    ⟨(502432432281/1000000000000 : ℚ), (-310885313/2500000000 : ℚ), (51263322993/1000000000000 : ℚ), 2⟩,
    ⟨(254072333887/500000000000 : ℚ), (-334760441/2500000000 : ℚ), (56088621667/1000000000000 : ℚ), 2⟩,
    ⟨(256390951851/500000000000 : ℚ), (-1413097069/10000000000 : ℚ), (3741797337/62500000000 : ℚ), 2⟩,
    ⟨(10325989619/20000000000 : ℚ), (-73366379/500000000 : ℚ), (626590901/10000000000 : ℚ), 2⟩,
    ⟨(259331761663/500000000000 : ℚ), (-751438299/5000000000 : ℚ), (64498672141/1000000000000 : ℚ), 2⟩,
    ⟨(519851263809/1000000000000 : ℚ), (-1520473529/10000000000 : ℚ), (32706202023/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-761332457/5000000000 : ℚ), (16381584951/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (80855229331/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control224.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control224.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate224

-- Control225
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

-- Control226
namespace DiagonalRamsey.JointInheritedCertificate226
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(249155335191/1000000000000 : ℚ), (11065489516501/10000000000 : ℚ), (-2159616880801/7812500000 : ℚ), 11⟩,
    ⟨(250073750613/1000000000000 : ℚ), (60214147393/500000000 : ℚ), (-30567106429631/1000000000000 : ℚ), 8⟩,
    ⟨(251901736613/1000000000000 : ℚ), (419669878451/10000000000 : ℚ), (-10897889182779/1000000000000 : ℚ), 7⟩,
    ⟨(254621688687/1000000000000 : ℚ), (205438758151/10000000000 : ℚ), (-5478677372711/1000000000000 : ℚ), 6⟩,
    ⟨(25820741221/100000000000 : ℚ), (7397348083/625000000 : ℚ), (-3248384882417/1000000000000 : ℚ), 5⟩,
    ⟨(52524874941/200000000000 : ℚ), (37474503263/5000000000 : ℚ), (-2119233097737/1000000000000 : ℚ), 5⟩,
    ⟨(33478754801/125000000000 : ℚ), (2521460067/500000000 : ℚ), (-367402173339/250000000000 : ℚ), 4⟩,
    ⟨(273774269931/1000000000000 : ℚ), (35355117497/10000000000 : ℚ), (-530912026213/500000000000 : ℚ), 4⟩,
    ⟨(70099955769/250000000000 : ℚ), (25502246199/10000000000 : ℚ), (-197270859193/250000000000 : ℚ), 3⟩,
    ⟨(8988840317/31250000000 : ℚ), (4688779631/2500000000 : ℚ), (-597628900043/1000000000000 : ℚ), 3⟩,
    ⟨(295433716439/1000000000000 : ℚ), (2792377757/2000000000 : ℚ), (-18320375203/40000000000 : ℚ), 3⟩,
    ⟨(303697272047/1000000000000 : ℚ), (2613383553/2500000000 : ℚ), (-176497927517/500000000000 : ℚ), 3⟩,
    ⟨(39044246801/125000000000 : ℚ), (1564203009/2000000000 : ℚ), (-135983772489/500000000000 : ℚ), 3⟩,
    ⟨(160660227373/500000000000 : ℚ), (580361577/1000000000 : ℚ), (-208091920229/1000000000000 : ℚ), 3⟩,
    ⟨(82627590239/250000000000 : ℚ), (169174059/400000000 : ℚ), (-78407717361/500000000000 : ℚ), 3⟩,
    ⟨(67967037843/200000000000 : ℚ), (1490729691/5000000000 : ℚ), (-115012230739/1000000000000 : ℚ), 2⟩,
    ⟨(349205136331/1000000000000 : ℚ), (989356987/5000000000 : ℚ), (-3219289951/40000000000 : ℚ), 2⟩,
    ⟨(35852996459/100000000000 : ℚ), (145427973/1250000000 : ℚ), (-645549043/12500000000 : ℚ), 2⟩,
    ⟨(367719870799/1000000000000 : ℚ), (123468469/2500000000 : ℚ), (-27339757891/1000000000000 : ℚ), 2⟩,
    ⟨(188343175569/500000000000 : ℚ), (-60566617/10000000000 : ℚ), (-3354868973/500000000000 : ℚ), 2⟩,
    ⟨(385343053499/1000000000000 : ℚ), (-65336183/1250000000 : ℚ), (5446599031/500000000000 : ℚ), 2⟩,
    ⟨(196803304553/500000000000 : ℚ), (-14213217/156250000 : ℚ), (25960890633/1000000000000 : ℚ), 2⟩,
    ⟨(200698717701/500000000000 : ℚ), (-1234464359/10000000000 : ℚ), (4858774197/125000000000 : ℚ), 2⟩,
    ⟨(40864050247/100000000000 : ℚ), (-753557917/5000000000 : ℚ), (399292203/8000000000 : ℚ), 2⟩,
    ⟨(83053211123/200000000000 : ℚ), (-867636127/5000000000 : ℚ), (1853420691/31250000000 : ℚ), 2⟩,
    ⟨(210605143569/500000000000 : ℚ), (-962426647/5000000000 : ℚ), (33618900373/500000000000 : ℚ), 2⟩,
    ⟨(426415950841/1000000000000 : ℚ), (-1040212197/5000000000 : ℚ), (73830707317/1000000000000 : ℚ), 2⟩,
    ⟨(86166582667/200000000000 : ℚ), (-551372119/2500000000 : ℚ), (39595517837/500000000000 : ℚ), 2⟩,
    ⟨(434418636859/1000000000000 : ℚ), (-287837527/1250000000 : ℚ), (667172439/8000000000 : ℚ), 2⟩,
    ⟨(437138588933/1000000000000 : ℚ), (-2374022637/10000000000 : ℚ), (43252293763/500000000000 : ℚ), 2⟩,
    ⟨(438966574933/1000000000000 : ℚ), (-605209901/2500000000 : ℚ), (44277701737/500000000000 : ℚ), 2⟩,
    ⟨(87976998071/200000000000 : ℚ), (-152752087/625000000 : ℚ), (22393649171/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-305865333/1250000000 : ℚ), (44850854007/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (321372974881/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control226.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control226.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate226

-- Control227
namespace DiagonalRamsey.JointInheritedCertificate227
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127875050233/500000000000 : ℚ), (2231916593157/2000000000 : ℚ), (-286154604741523/1000000000000 : ℚ), 11⟩,
    ⟨(256684903141/1000000000000 : ℚ), (607337940969/5000000000 : ℚ), (-1977653785923/62500000000 : ℚ), 8⟩,
    ⟨(32318188229/125000000000 : ℚ), (423367389481/10000000000 : ℚ), (-705086593021/62500000000 : ℚ), 7⟩,
    ⟨(261313989917/1000000000000 : ℚ), (207292390039/10000000000 : ℚ), (-2835783347319/500000000000 : ℚ), 6⟩,
    ⟨(264963693381/1000000000000 : ℚ), (59726626727/5000000000 : ℚ), (-840710692731/250000000000 : ℚ), 5⟩,
    ⟨(4210304181/15625000000 : ℚ), (15132378943/2000000000 : ℚ), (-2193997168387/1000000000000 : ℚ), 5⟩,
    ⟨(274758015763/1000000000000 : ℚ), (50922797331/10000000000 : ℚ), (-1521551171179/1000000000000 : ℚ), 4⟩,
    ⟨(280808310003/1000000000000 : ℚ), (7142395231/2000000000 : ℚ), (-54972818683/50000000000 : ℚ), 4⟩,
    ⟨(143776041331/500000000000 : ℚ), (3221066501/1250000000 : ℚ), (-817160339879/1000000000000 : ℚ), 3⟩,
    ⟨(73731096881/250000000000 : ℚ), (9479330401/5000000000 : ℚ), (-619013981097/1000000000000 : ℚ), 3⟩,
    ⟨(302854225263/1000000000000 : ℚ), (14120456811/10000000000 : ℚ), (-118632507599/250000000000 : ℚ), 3⟩,
    ⟨(155632613603/500000000000 : ℚ), (5289499499/5000000000 : ℚ), (-182936555703/500000000000 : ℚ), 3⟩,
    ⟨(160038195403/500000000000 : ℚ), (198040013/250000000 : ℚ), (-282048473917/1000000000000 : ℚ), 3⟩,
    ⟨(164601429871/500000000000 : ℚ), (735648787/1250000000 : ℚ), (-215982810533/1000000000000 : ℚ), 3⟩,
    ⟨(338556741129/1000000000000 : ℚ), (4296205749/10000000000 : ℚ), (-162961905529/1000000000000 : ℚ), 3⟩,
    ⟨(13921918079/40000000000 : ℚ), (1518397283/5000000000 : ℚ), (-29937349819/250000000000 : ℚ), 2⟩,
    ⟨(89396271683/250000000000 : ℚ), (2024958917/10000000000 : ℚ), (-84067250043/1000000000000 : ℚ), 2⟩,
    ⟨(183538148789/500000000000 : ℚ), (601223759/5000000000 : ℚ), (-5427762751/100000000000 : ℚ), 2⟩,
    ⟨(75286035793/200000000000 : ℚ), (4118217/78125000 : ℚ), (-29181655529/1000000000000 : ℚ), 2⟩,
    ⟨(385556647901/1000000000000 : ℚ), (-31929907/10000000000 : ℚ), (-7888382729/1000000000000 : ℚ), 2⟩,
    ⟨(394367811501/1000000000000 : ℚ), (-124441503/2500000000 : ℚ), (10272711193/1000000000000 : ℚ), 2⟩,
    ⟨(100694703361/250000000000 : ℚ), (-887710221/10000000000 : ℚ), (201652089/7812500000 : ℚ), 2⟩,
    ⟨(410708651183/1000000000000 : ℚ), (-1214932981/10000000000 : ℚ), (3911868597/100000000000 : ℚ), 2⟩,
    ⟨(83616191209/200000000000 : ℚ), (-37237913/250000000 : ℚ), (50495670441/1000000000000 : ℚ), 2⟩,
    ⟨(3318943193/7812500000 : ℚ), (-429805097/2500000000 : ℚ), (60175533921/1000000000000 : ℚ), 2⟩,
    ⟨(13464844467/31250000000 : ℚ), (-955016671/5000000000 : ℚ), (4271173801/62500000000 : ℚ), 2⟩,
    ⟨(436173571123/1000000000000 : ℚ), (-2066575183/10000000000 : ℚ), (37562418933/500000000000 : ℚ), 2⟩,
    ⟨(220334672663/500000000000 : ℚ), (-1096195649/5000000000 : ℚ), (40320328129/500000000000 : ℚ), 2⟩,
    ⟨(44431904879/100000000000 : ℚ), (-1145084523/5000000000 : ℚ), (84967150451/1000000000000 : ℚ), 2⟩,
    ⟨(3576700263/8000000000 : ℚ), (-1180947967/5000000000 : ℚ), (88163994241/1000000000000 : ℚ), 2⟩,
    ⟨(224474067783/500000000000 : ℚ), (-2408973259/10000000000 : ℚ), (90273128601/1000000000000 : ℚ), 2⟩,
    ⟨(449882938241/1000000000000 : ℚ), (-243229449/1000000000 : ℚ), (91321219263/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1217599783/5000000000 : ℚ), (45725965341/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (316957313623/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control227.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control227.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate227

-- Control228
namespace DiagonalRamsey.JointInheritedCertificate228
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131216624503/500000000000 : ℚ), (17592641277/15625000 : ℚ), (-296249487748493/1000000000000 : ℚ), 11⟩,
    ⟨(263384013603/1000000000000 : ℚ), (245138019513/2000000000 : ℚ), (-4094866940933/125000000000 : ℚ), 8⟩,
    ⟨(53055277283/200000000000 : ℚ), (106821698631/2500000000 : ℚ), (-11679594001583/1000000000000 : ℚ), 7⟩,
    ⟨(33511517857/125000000000 : ℚ), (10462895287/500000000 : ℚ), (-5871893149063/1000000000000 : ℚ), 6⟩,
    ⟨(271804165653/1000000000000 : ℚ), (120615577567/10000000000 : ℚ), (-1740872399277/500000000000 : ℚ), 5⟩,
    ⟨(276376705997/1000000000000 : ℚ), (955231871/125000000 : ℚ), (-567922815217/250000000000 : ℚ), 5⟩,
    ⟨(140882863913/500000000000 : ℚ), (12861758533/2500000000 : ℚ), (-63022152249/40000000000 : ℚ), 4⟩,
    ⟨(35989916489/125000000000 : ℚ), (9022817387/2500000000 : ℚ), (-569302050421/500000000000 : ℚ), 4⟩,
    ⟨(58955651137/200000000000 : ℚ), (26051796829/10000000000 : ℚ), (-846389611983/1000000000000 : ℚ), 3⟩,
    ⟨(302276443959/1000000000000 : ℚ), (19175384123/10000000000 : ℚ), (-641297917551/1000000000000 : ℚ), 3⟩,
    ⟨(155170842541/500000000000 : ℚ), (14289466581/10000000000 : ℚ), (-491765985291/1000000000000 : ℚ), 3⟩,
    ⟨(159448153187/500000000000 : ℚ), (10712873959/10000000000 : ℚ), (-379328927971/1000000000000 : ℚ), 3⟩,
    ⟨(163928961077/500000000000 : ℚ), (8029055561/10000000000 : ℚ), (-29260373521/100000000000 : ℚ), 3⟩,
    ⟨(67428045433/200000000000 : ℚ), (59724449/100000000 : ℚ), (-224267112939/1000000000000 : ℚ), 3⟩,
    ⟨(173326913867/500000000000 : ℚ), (873561637/2000000000 : ℚ), (-33887604183/200000000000 : ℚ), 3⟩,
    ⟨(356307102687/1000000000000 : ℚ), (3096139039/10000000000 : ℚ), (-62382677317/500000000000 : ℚ), 2⟩,
    ⟨(36600708571/100000000000 : ℚ), (1037310813/5000000000 : ℚ), (-87890085843/1000000000000 : ℚ), 2⟩,
    ⟨(375660360663/1000000000000 : ℚ), (622205871/5000000000 : ℚ), (-57115940857/1000000000000 : ℚ), 2⟩,
    ⟨(24073372577/62500000000 : ℚ), (562942689/10000000000 : ℚ), (-15600526113/500000000000 : ℚ), 2⟩,
    ⟨(394456266243/1000000000000 : ℚ), (-264059/2500000000 : ℚ), (-1844463147/200000000000 : ℚ), 2⟩,
    ⟨(403417882023/1000000000000 : ℚ), (-235432119/5000000000 : ℚ), (9515179193/1000000000000 : ℚ), 2⟩,
    ⟨(82394500663/200000000000 : ℚ), (-864008279/10000000000 : ℚ), (5107999707/200000000000 : ℚ), 2⟩,
    ⟨(420037744439/1000000000000 : ℚ), (-1193809229/10000000000 : ℚ), (39257458467/1000000000000 : ℚ), 2⟩,
    ⟨(427535932713/1000000000000 : ℚ), (-36761681/250000000 : ℚ), (25490100347/500000000000 : ℚ), 2⟩,
    ⟨(217197428243/500000000000 : ℚ), (-1701834733/10000000000 : ℚ), (3809389841/62500000000 : ℚ), 2⟩,
    ⟨(110137115143/250000000000 : ℚ), (-473493433/2500000000 : ℚ), (6935507193/100000000000 : ℚ), 2⟩,
    ⟨(557421853/1250000000 : ℚ), (-2051561711/10000000000 : ℚ), (381698123/5000000000 : ℚ), 2⟩,
    ⟨(56313752843/125000000000 : ℚ), (-435637827/2000000000 : ℚ), (2050378249/25000000000 : ℚ), 2⟩,
    ⟨(454222045541/1000000000000 : ℚ), (-569144519/2500000000 : ℚ), (17293158767/200000000000 : ℚ), 2⟩,
    ⟨(457037801983/1000000000000 : ℚ), (-469748411/2000000000 : ℚ), (3590150087/40000000000 : ℚ), 2⟩,
    ⟨(229465087397/500000000000 : ℚ), (-1198050449/5000000000 : ℚ), (91922697217/1000000000000 : ℚ), 2⟩,
    ⟨(459880939391/1000000000000 : ℚ), (-1209779989/5000000000 : ℚ), (18600083727/200000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-48449643/200000000 : ℚ), (93134821151/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (312487610703/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control228.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control228.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate228

-- Control229
namespace DiagonalRamsey.JointInheritedCertificate229
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16825403069/62500000000 : ℚ), (5682315339441/5000000000 : ℚ), (-12269276713847/40000000000 : ℚ), 11⟩,
    ⟨(270172742261/1000000000000 : ℚ), (309331928303/2500000000 : ℚ), (-33918337604307/1000000000000 : ℚ), 8⟩,
    ⟨(68024005661/250000000000 : ℚ), (43142886319/1000000000 : ℚ), (-6046580295977/500000000000 : ℚ), 7⟩,
    ⟨(274957768011/1000000000000 : ℚ), (42267140443/2000000000 : ℚ), (-3039991458103/500000000000 : ℚ), 6⟩,
    ⟨(278730418189/1000000000000 : ℚ), (121844784231/10000000000 : ℚ), (-901321404249/250000000000 : ℚ), 5⟩,
    ⟨(17711102531/62500000000 : ℚ), (77219134707/10000000000 : ℚ), (-294055434777/125000000000 : ℚ), 5⟩,
    ⟨(7221366991/25000000000 : ℚ), (1040040567/200000000 : ℚ), (-815853229069/500000000000 : ℚ), 4⟩,
    ⟨(295108788741/1000000000000 : ℚ), (36493083961/10000000000 : ℚ), (-1179333131299/1000000000000 : ℚ), 4⟩,
    ⟨(302079737307/1000000000000 : ℚ), (26352105771/10000000000 : ℚ), (-35072846777/40000000000 : ℚ), 3⟩,
    ⟨(61940078259/200000000000 : ℚ), (19405337933/10000000000 : ℚ), (-332259726843/500000000000 : ℚ), 3⟩,
    ⟨(317897359641/1000000000000 : ℚ), (14468955437/10000000000 : ℚ), (-509747888043/1000000000000 : ℚ), 3⟩,
    ⟨(326591701057/1000000000000 : ℚ), (10855186761/10000000000 : ℚ), (-4917348757/12500000000 : ℚ), 3⟩,
    ⟨(67139936857/200000000000 : ℚ), (4071699951/5000000000 : ℚ), (-303653303573/1000000000000 : ℚ), 3⟩,
    ⟨(69026718893/200000000000 : ℚ), (6065392693/10000000000 : ℚ), (-232961203109/1000000000000 : ℚ), 3⟩,
    ⟨(354802577887/1000000000000 : ℚ), (1111041573/2500000000 : ℚ), (-176257309591/1000000000000 : ℚ), 2⟩,
    ⟨(182306758477/500000000000 : ℚ), (1579747767/5000000000 : ℚ), (-130071344993/1000000000000 : ℚ), 2⟩,
    ⟨(4680899087/12500000000 : ℚ), (2127700739/10000000000 : ℚ), (-5747509907/62500000000 : ℚ), 2⟩,
    ⟨(384282866027/1000000000000 : ℚ), (64465579/500000000 : ℚ), (-15041689993/250000000000 : ℚ), 2⟩,
    ⟨(49243981181/125000000000 : ℚ), (3758117/62500000 : ℚ), (-33404607987/1000000000000 : ℚ), 2⟩,
    ⟨(403385759629/1000000000000 : ℚ), (16021957/5000000000 : ℚ), (-5358588587/500000000000 : ℚ), 2⟩,
    ⟨(51561717857/125000000000 : ℚ), (-44199683/1000000000 : ℚ), (8615805093/1000000000000 : ℚ), 2⟩,
    ⟨(421188084273/1000000000000 : ℚ), (-838554623/10000000000 : ℚ), (5028477061/200000000000 : ℚ), 2⟩,
    ⟨(214692526309/500000000000 : ℚ), (-1171109247/10000000000 : ℚ), (9820747601/250000000000 : ℚ), 2⟩,
    ⟨(218502853303/500000000000 : ℚ), (-724992731/5000000000 : ℚ), (12840518167/250000000000 : ℚ), 2⟩,
    ⟨(443976655173/1000000000000 : ℚ), (-52597933/312500000 : ℚ), (3081546073/50000000000 : ℚ), 2⟩,
    ⟨(450230764273/1000000000000 : ℚ), (-234586741/1250000000 : ℚ), (8785542783/125000000000 : ℚ), 2⟩,
    ⟨(455707803417/1000000000000 : ℚ), (-254425521/1250000000 : ℚ), (38736496549/500000000000 : ℚ), 2⟩,
    ⟨(115088756431/250000000000 : ℚ), (-540725687/2500000000 : ℚ), (83312585393/1000000000000 : ℚ), 2⟩,
    ⟨(464127675903/1000000000000 : ℚ), (-2261948501/10000000000 : ℚ), (14062523/160000000 : ℚ), 2⟩,
    ⟨(46698942127/100000000000 : ℚ), (-466916501/2000000000 : ℚ), (22818064253/250000000000 : ℚ), 2⟩,
    ⟨(117228175413/250000000000 : ℚ), (-2382244229/10000000000 : ℚ), (18700515587/200000000000 : ℚ), 2⟩,
    ⟨(469878994809/1000000000000 : ℚ), (-150365729/625000000 : ℚ), (94610699337/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2408792237/10000000000 : ℚ), (47374444237/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (153981443619/500000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control229.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control229.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate229

-- Control230
namespace DiagonalRamsey.JointInheritedCertificate230
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276004963601/1000000000000 : ℚ), (5734560514663/5000000000 : ℚ), (-158681338067111/500000000000 : ℚ), 11⟩,
    ⟨(34623332937/125000000000 : ℚ), (1248870703601/10000000000 : ℚ), (-8773522473653/250000000000 : ℚ), 8⟩,
    ⟨(139470304489/500000000000 : ℚ), (217768359647/5000000000 : ℚ), (-782032472897/62500000000 : ℚ), 7⟩,
    ⟨(56369596497/200000000000 : ℚ), (213395920451/10000000000 : ℚ), (-1258191372713/200000000000 : ℚ), 6⟩,
    ⟨(285680784421/1000000000000 : ℚ), (4922529901/400000000 : ℚ), (-373051448271/100000000000 : ℚ), 5⟩,
    ⟨(290402102807/1000000000000 : ℚ), (78012425727/10000000000 : ℚ), (-1217139481681/500000000000 : ℚ), 5⟩,
    ⟨(295966468767/1000000000000 : ℚ), (52551702431/10000000000 : ℚ), (-337719052447/200000000000 : ℚ), 4⟩,
    ⟨(151160147207/500000000000 : ℚ), (18445403701/5000000000 : ℚ), (-1220581264271/1000000000000 : ℚ), 4⟩,
    ⟨(61880477787/200000000000 : ℚ), (26649136873/10000000000 : ℚ), (-907627506699/1000000000000 : ℚ), 3⟩,
    ⟨(317144547887/1000000000000 : ℚ), (19632576763/10000000000 : ℚ), (-688015304679/1000000000000 : ℚ), 3⟩,
    ⟨(2542751641/7812500000 : ℚ), (1464613293/1000000000 : ℚ), (-263965837061/500000000000 : ℚ), 3⟩,
    ⟨(334305175479/1000000000000 : ℚ), (10995485999/10000000000 : ℚ), (-203797546437/500000000000 : ℚ), 3⟩,
    ⟨(343558377893/1000000000000 : ℚ), (4127977857/5000000000 : ℚ), (-314810475553/1000000000000 : ℚ), 3⟩,
    ⟨(176571351947/500000000000 : ℚ), (1231345111/2000000000 : ℚ), (-241731638593/1000000000000 : ℚ), 3⟩,
    ⟨(362965851183/1000000000000 : ℚ), (4519045877/10000000000 : ℚ), (-5722767951/31250000000 : ℚ), 2⟩,
    ⟨(372933217481/1000000000000 : ℚ), (322148251/1000000000 : ℚ), (-27082025379/200000000000 : ℚ), 2⟩,
    ⟨(191474405801/500000000000 : ℚ), (272437349/1250000000 : ℚ), (-9604781219/100000000000 : ℚ), 2⟩,
    ⟨(392916177901/1000000000000 : ℚ), (666501587/5000000000 : ℚ), (-7902880409/125000000000 : ℚ), 2⟩,
    ⟨(402739325189/1000000000000 : ℚ), (79813403/1250000000 : ℚ), (-35603950123/1000000000000 : ℚ), 2⟩,
    ⟨(41232365119/100000000000 : ℚ), (64047737/10000000000 : ℚ), (-6100044623/500000000000 : ℚ), 2⟩,
    ⟨(84315370721/200000000000 : ℚ), (-20709109/500000000 : ℚ), (7734558481/1000000000000 : ℚ), 2⟩,
    ⟨(86081963807/200000000000 : ℚ), (-101764549/1250000000 : ℚ), (24767820929/1000000000000 : ℚ), 2⟩,
    ⟨(109684370299/250000000000 : ℚ), (-574696289/5000000000 : ℚ), (7867095189/200000000000 : ℚ), 2⟩,
    ⟨(446479640149/1000000000000 : ℚ), (-1430459359/10000000000 : ℚ), (51773979077/1000000000000 : ℚ), 2⟩,
    ⟨(45356173467/100000000000 : ℚ), (-1665364951/10000000000 : ℚ), (31172026673/500000000000 : ℚ), 2⟩,
    ⟨(459915560317/1000000000000 : ℚ), (-1860325933/10000000000 : ℚ), (71247933269/1000000000000 : ℚ), 2⟩,
    ⟨(465479926277/1000000000000 : ℚ), (-252517691/1250000000 : ℚ), (39321058649/500000000000 : ℚ), 2⟩,
    ⟨(470201244663/1000000000000 : ℚ), (-2148497417/10000000000 : ℚ), (16929375387/200000000000 : ℚ), 2⟩,
    ⟨(474034046599/1000000000000 : ℚ), (-562047261/2500000000 : ℚ), (1116917129/12500000000 : ℚ), 2⟩,
    ⟨(238470710053/500000000000 : ℚ), (-580321237/2500000000 : ℚ), (92828939651/1000000000000 : ℚ), 2⟩,
    ⟨(119723841397/250000000000 : ℚ), (-2369244169/10000000000 : ℚ), (47560492047/500000000000 : ℚ), 2⟩,
    ⟨(239938532741/500000000000 : ℚ), (-2392997277/10000000000 : ℚ), (24064918371/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2395955917/10000000000 : ℚ), (96401670047/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (30341781557/100000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control230.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control230.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate230

-- Control231
namespace DiagonalRamsey.JointInheritedCertificate231
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57974557349/200000000000 : ℚ), (2923653171939/2500000000 : ℚ), (-339846296802003/1000000000000 : ℚ), 11⟩,
    ⟨(36360499619/125000000000 : ℚ), (1273783895971/10000000000 : ℚ), (-18790469939441/500000000000 : ℚ), 8⟩,
    ⟨(14644833943/50000000000 : ℚ), (55550624239/1250000000 : ℚ), (-13399644130033/1000000000000 : ℚ), 7⟩,
    ⟨(147945724621/500000000000 : ℚ), (217845358441/10000000000 : ℚ), (-6737361380467/1000000000000 : ℚ), 6⟩,
    ⟨(14991973341/50000000000 : ℚ), (125696096699/10000000000 : ℚ), (-799115142951/200000000000 : ℚ), 5⟩,
    ⟨(304702710029/1000000000000 : ℚ), (79727643201/10000000000 : ℚ), (-521513770027/200000000000 : ℚ), 5⟩,
    ⟨(310434343177/1000000000000 : ℚ), (53741064597/10000000000 : ℚ), (-361825622099/200000000000 : ℚ), 4⟩,
    ⟨(19811197969/62500000000 : ℚ), (18876057651/5000000000 : ℚ), (-2092862997/1600000000 : ℚ), 4⟩,
    ⟨(162137076387/500000000000 : ℚ), (27292995299/10000000000 : ℚ), (-121625853781/125000000000 : ℚ), 3⟩,
    ⟨(332249044291/1000000000000 : ℚ), (20125661049/10000000000 : ℚ), (-368969503387/500000000000 : ℚ), 3⟩,
    ⟨(34082703949/100000000000 : ℚ), (3757754659/2500000000 : ℚ), (-566626907511/1000000000000 : ℚ), 3⟩,
    ⟨(87481381897/250000000000 : ℚ), (11300621233/10000000000 : ℚ), (-437886879371/1000000000000 : ℚ), 3⟩,
    ⟨(35945688517/100000000000 : ℚ), (2125263717/2500000000 : ℚ), (-338659000487/1000000000000 : ℚ), 3⟩,
    ⟨(73865864011/200000000000 : ℚ), (3177931651/5000000000 : ℚ), (-130270096909/500000000000 : ℚ), 3⟩,
    ⟨(75889551059/200000000000 : ℚ), (2341260179/5000000000 : ℚ), (-197928757029/1000000000000 : ℚ), 2⟩,
    ⟨(389714744829/1000000000000 : ℚ), (3356984207/10000000000 : ℚ), (-146977812299/1000000000000 : ℚ), 2⟩,
    ⟨(80006282387/200000000000 : ℚ), (2292869921/10000000000 : ℚ), (-104978322661/1000000000000 : ℚ), 2⟩,
    ⟨(410298401469/1000000000000 : ℚ), (1428746187/10000000000 : ℚ), (-13996267853/200000000000 : ℚ), 2⟩,
    ⟨(420416836709/1000000000000 : ℚ), (720134457/10000000000 : ℚ), (-10139757421/250000000000 : ℚ), 2⟩,
    ⟨(430289271593/1000000000000 : ℚ), (134327527/10000000000 : ℚ), (-3129823021/200000000000 : ℚ), 2⟩,
    ⟨(54977578647/125000000000 : ℚ), (-353048581/10000000000 : ℚ), (5548981489/1000000000000 : ℚ), 2⟩,
    ⟨(224459558637/500000000000 : ℚ), (-760365181/10000000000 : ℚ), (11822517491/500000000000 : ℚ), 2⟩,
    ⟨(457497112473/1000000000000 : ℚ), (-1101600709/10000000000 : ℚ), (39107400959/1000000000000 : ℚ), 2⟩,
    ⟨(46547200399/100000000000 : ℚ), (-1387471201/10000000000 : ℚ), (52298033343/1000000000000 : ℚ), 2⟩,
    ⟨(23638349463/50000000000 : ℚ), (-813117877/5000000000 : ℚ), (63497716829/1000000000000 : ℚ), 2⟩,
    ⟨(479311813587/1000000000000 : ℚ), (-364855509/2000000000 : ℚ), (9115563001/125000000000 : ℚ), 2⟩,
    ⟨(97008689347/200000000000 : ℚ), (-1986527151/10000000000 : ℚ), (80747344989/1000000000000 : ℚ), 2⟩,
    ⟨(61238336243/125000000000 : ℚ), (-2116773073/10000000000 : ℚ), (8709624539/100000000000 : ℚ), 2⟩,
    ⟨(246927353761/500000000000 : ℚ), (-2217890063/10000000000 : ℚ), (1841397279/20000000000 : ℚ), 2⟩,
    ⟨(31053092369/62500000000 : ℚ), (-229200617/1000000000 : ℚ), (11967645843/125000000000 : ℚ), 2⟩,
    ⟨(498862159811/1000000000000 : ℚ), (-2340622883/10000000000 : ℚ), (49080781163/500000000000 : ℚ), 2⟩,
    ⟨(499873370019/1000000000000 : ℚ), (-2364698063/10000000000 : ℚ), (3974551891/40000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2367696651/10000000000 : ℚ), (3980548307/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (294162359853/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control231.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control231.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate231
