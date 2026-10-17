import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control82
namespace DiagonalRamsey.JointInheritedCertificate82
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(24374582183/62500000000 : ℚ), (51145662720021/10000000000 : ℚ), (-998174308006491/500000000000 : ℚ), 13⟩,
    ⟨(78073335063/200000000000 : ℚ), (5645895051603/10000000000 : ℚ), (-221575545917443/1000000000000 : ℚ), 10⟩,
    ⟨(48889062079/125000000000 : ℚ), (2011086262777/10000000000 : ℚ), (-79593794695467/1000000000000 : ℚ), 8⟩,
    ⟨(39222898213/100000000000 : ℚ), (1012042262333/10000000000 : ℚ), (-40476492427089/1000000000000 : ℚ), 7⟩,
    ⟨(24607090131/62500000000 : ℚ), (301138710889/5000000000 : ℚ), (-24378969595249/1000000000000 : ℚ), 6⟩,
    ⟨(197781150169/500000000000 : ℚ), (98933773779/2500000000 : ℚ), (-1623056990819/100000000000 : ℚ), 6⟩,
    ⟨(397771102793/1000000000000 : ℚ), (138777112029/5000000000 : ℚ), (-721511129073/62500000000 : ℚ), 5⟩,
    ⟨(50041816033/125000000000 : ℚ), (203853890843/10000000000 : ℚ), (-8604045492683/1000000000000 : ℚ), 5⟩,
    ⟨(403246401233/1000000000000 : ℚ), (38734565477/2500000000 : ℚ), (-103738377499/15625000000 : ℚ), 5⟩,
    ⟨(50812463343/125000000000 : ℚ), (120904510683/10000000000 : ℚ), (-5261731859881/1000000000000 : ℚ), 4⟩,
    ⟨(205043303649/500000000000 : ℚ), (19266830527/2000000000 : ℚ), (-2129417570029/500000000000 : ℚ), 4⟩,
    ⟨(413998461739/1000000000000 : ℚ), (78061308331/10000000000 : ℚ), (-3506133150147/1000000000000 : ℚ), 4⟩,
    ⟨(83645169213/200000000000 : ℚ), (8017077741/1250000000 : ℚ), (-365859217661/125000000000 : ℚ), 4⟩,
    ⟨(422758576139/1000000000000 : ℚ), (13326791137/2500000000 : ℚ), (-617907364349/250000000000 : ℚ), 3⟩,
    ⟨(53448216527/125000000000 : ℚ), (1398071803/312500000 : ℚ), (-263425448573/125000000000 : ℚ), 3⟩,
    ⟨(216347842627/500000000000 : ℚ), (1892846717/500000000 : ℚ), (-362297239537/200000000000 : ℚ), 3⟩,
    ⟨(438076124929/1000000000000 : ℚ), (16129614461/5000000000 : ℚ), (-1567832582141/1000000000000 : ℚ), 3⟩,
    ⟨(44371408929/100000000000 : ℚ), (13827062463/5000000000 : ℚ), (-68242324157/50000000000 : ℚ), 3⟩,
    ⟨(112398998997/250000000000 : ℚ), (23827688103/10000000000 : ℚ), (-1193978146867/1000000000000 : ℚ), 3⟩,
    ⟨(227853837497/500000000000 : ℚ), (4123984333/2000000000 : ℚ), (-104881206791/100000000000 : ℚ), 3⟩,
    ⟨(231017201369/500000000000 : ℚ), (17909312497/10000000000 : ℚ), (-462229132329/500000000000 : ℚ), 3⟩,
    ⟨(468560937579/1000000000000 : ℚ), (7801149213/5000000000 : ℚ), (-163427383817/200000000000 : ℚ), 2⟩,
    ⟨(475271556523/1000000000000 : ℚ), (13625945073/10000000000 : ℚ), (-723889239601/1000000000000 : ℚ), 2⟩,
    ⟨(4821500931/10000000000 : ℚ), (11922762167/10000000000 : ℚ), (-321186267991/500000000000 : ℚ), 2⟩,
    ⟨(244589988157/500000000000 : ℚ), (1305871791/1250000000 : ℚ), (-570712597911/1000000000000 : ℚ), 2⟩,
    ⟨(496344270561/1000000000000 : ℚ), (1832359679/2000000000 : ℚ), (-253697883203/500000000000 : ℚ), 2⟩,
    ⟨(503625716427/1000000000000 : ℚ), (8037428723/10000000000 : ℚ), (-90237790289/200000000000 : ℚ), 2⟩,
    ⟨(511006772273/1000000000000 : ℚ), (7049527881/10000000000 : ℚ), (-5013495243/12500000000 : ℚ), 2⟩,
    ⟨(518469656487/1000000000000 : ℚ), (6178083107/10000000000 : ℚ), (-356230248417/1000000000000 : ℚ), 2⟩,
    ⟨(525996390329/1000000000000 : ℚ), (2703265391/5000000000 : ℚ), (-315943395087/1000000000000 : ℚ), 2⟩,
    ⟨(533568841237/1000000000000 : ℚ), (2360539809/5000000000 : ℚ), (-4369291233/15625000000 : ℚ), 2⟩,
    ⟨(270584383257/500000000000 : ℚ), (2055091381/5000000000 : ℚ), (-246811435961/1000000000000 : ℚ), 2⟩,
    ⟨(274388928637/500000000000 : ℚ), (3564122613/10000000000 : ℚ), (-217056450269/1000000000000 : ℚ), 2⟩,
    ⟨(556377782551/1000000000000 : ℚ), (384335221/1250000000 : ℚ), (-3800286239/20000000000 : ℚ), 2⟩,
    ⟨(563950233459/1000000000000 : ℚ), (2634880341/10000000000 : ℚ), (-16538101871/100000000000 : ℚ), 2⟩,
    ⟨(571476967301/1000000000000 : ℚ), (1119382429/5000000000 : ℚ), (-142895394489/1000000000000 : ℚ), 2⟩,
    ⟨(115787970303/200000000000 : ℚ), (1881237539/10000000000 : ℚ), (-61166080799/500000000000 : ℚ), 2⟩,
    ⟨(586320907361/1000000000000 : ℚ), (62316697/400000000 : ℚ), (-25874071673/250000000000 : ℚ), 2⟩,
    ⟨(593602353227/1000000000000 : ℚ), (1265026799/10000000000 : ℚ), (-43109170549/500000000000 : ℚ), 2⟩,
    ⟨(300383323737/500000000000 : ℚ), (249824451/2500000000 : ℚ), (-70350671483/1000000000000 : ℚ), 2⟩,
    ⟨(1187102599/1953125000 : ℚ), (757895311/10000000000 : ℚ), (-55764225069/1000000000000 : ℚ), 2⟩,
    ⟨(122935013453/200000000000 : ℚ), (107670583/2000000000 : ℚ), (-42345904141/1000000000000 : ℚ), 2⟩,
    ⟨(621385686209/1000000000000 : ℚ), (338519607/10000000000 : ℚ), (-29996352533/1000000000000 : ℚ), 2⟩,
    ⟨(12558244421/20000000000 : ℚ), (31303033/2000000000 : ℚ), (-58212799/3125000000 : ℚ), 2⟩,
    ⟨(317119474397/500000000000 : ℚ), (-4653651/5000000000 : ℚ), (-4081985591/500000000000 : ℚ), 2⟩,
    ⟨(3201753139/5000000000 : ℚ), (-160392897/10000000000 : ℚ), (1464198429/1000000000000 : ℚ), 2⟩,
    ⟨(323116267249/500000000000 : ℚ), (-74502899/2500000000 : ℚ), (2579183437/250000000000 : ℚ), 2⟩,
    ⟨(651870498859/1000000000000 : ℚ), (-211640417/5000000000 : ℚ), (23058823/1250000000 : ℚ), 2⟩,
    ⟨(328625469267/500000000000 : ℚ), (-67148087/1250000000 : ℚ), (25902519157/1000000000000 : ℚ), 2⟩,
    ⟨(165590222893/250000000000 : ℚ), (-320295127/5000000000 : ℚ), (654501749/20000000000 : ℚ), 2⟩,
    ⟨(667188047649/1000000000000 : ℚ), (-734261503/10000000000 : ℚ), (9737990221/250000000000 : ℚ), 2⟩,
    ⟨(671720777723/1000000000000 : ℚ), (-409435633/5000000000 : ℚ), (44616079713/1000000000000 : ℚ), 2⟩,
    ⟨(675948162049/1000000000000 : ℚ), (-895011377/10000000000 : ℚ), (1554580347/31250000000 : ℚ), 1⟩,
    ⟨(67986001649/100000000000 : ℚ), (-240800347/2500000000 : ℚ), (54369130489/1000000000000 : ℚ), 1⟩,
    ⟨(170861729261/250000000000 : ℚ), (-1023896019/10000000000 : ℚ), (14626587451/250000000000 : ℚ), 1⟩,
    ⟨(137340044511/200000000000 : ℚ), (-1077491523/10000000000 : ℚ), (12435599879/200000000000 : ℚ), 1⟩,
    ⟨(172403023881/250000000000 : ℚ), (-1124331103/10000000000 : ℚ), (32700634227/500000000000 : ℚ), 1⟩,
    ⟨(138435104199/200000000000 : ℚ), (-1164709519/10000000000 : ℚ), (17047742847/250000000000 : ℚ), 1⟩,
    ⟨(13887686469/20000000000 : ℚ), (-1198876961/10000000000 : ℚ), (70559720979/1000000000000 : ℚ), 1⟩,
    ⟨(174058295423/250000000000 : ℚ), (-153380287/1250000000 : ℚ), (36259037671/500000000000 : ℚ), 1⟩,
    ⟨(348858820829/500000000000 : ℚ), (-78085983/625000000 : ℚ), (37037328793/500000000000 : ℚ), 1⟩,
    ⟨(174708531789/250000000000 : ℚ), (-316502737/2500000000 : ℚ), (75236253621/1000000000000 : ℚ), 1⟩,
    ⟨(699579948473/1000000000000 : ℚ), (-1277046803/10000000000 : ℚ), (76007887991/1000000000000 : ℚ), 1⟩,
    ⟨(34997665443/50000000000 : ℚ), (-1282548523/10000000000 : ℚ), (76392879969/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-32080887/250000000 : ℚ), (2388780167/31250000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (1700463157/10000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control82.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control82.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate82

-- Control83
namespace DiagonalRamsey.JointInheritedCertificate83
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(242676466027/500000000000 : ℚ), (6272509035781/1000000000 : ℚ), (-380815630569653/125000000000 : ℚ), 13⟩,
    ⟨(60716485143/125000000000 : ℚ), (3465363637273/5000000000 : ℚ), (-8453506387987/25000000000 : ℚ), 10⟩,
    ⟨(243244433201/500000000000 : ℚ), (2472354336443/10000000000 : ℚ), (-24293931724253/200000000000 : ℚ), 8⟩,
    ⟨(97524412837/200000000000 : ℚ), (155801806949/1250000000 : ℚ), (-61774935265623/1000000000000 : ℚ), 7⟩,
    ⟨(489128744519/1000000000000 : ℚ), (743281812503/10000000000 : ℚ), (-37209470949513/1000000000000 : ℚ), 6⟩,
    ⟨(491005277681/1000000000000 : ℚ), (489482174107/10000000000 : ℚ), (-24774755907803/1000000000000 : ℚ), 6⟩,
    ⟨(61655892867/125000000000 : ℚ), (86031718527/2500000000 : ℚ), (-17623247782531/1000000000000 : ℚ), 5⟩,
    ⟨(123962234859/250000000000 : ℚ), (253382734409/10000000000 : ℚ), (-821039787269/62500000000 : ℚ), 5⟩,
    ⟨(19952175969/40000000000 : ℚ), (193082170529/10000000000 : ℚ), (-5069235035437/500000000000 : ℚ), 5⟩,
    ⟨(502106402341/1000000000000 : ℚ), (151071255913/10000000000 : ℚ), (-8036523965837/1000000000000 : ℚ), 4⟩,
    ⟨(50574699397/100000000000 : ℚ), (120698047323/10000000000 : ℚ), (-1626576158329/250000000000 : ℚ), 4⟩,
    ⟨(509717403607/1000000000000 : ℚ), (24518708427/2500000000 : ℚ), (-5357922635931/1000000000000 : ℚ), 4⟩,
    ⟨(514008066187/1000000000000 : ℚ), (20201748877/2500000000 : ℚ), (-559281423729/125000000000 : ℚ), 4⟩,
    ⟨(51860864513/100000000000 : ℚ), (2694193327/400000000 : ℚ), (-944965734953/250000000000 : ℚ), 4⟩,
    ⟨(523508057237/1000000000000 : ℚ), (56692240583/10000000000 : ℚ), (-806100818811/250000000000 : ℚ), 3⟩,
    ⟨(105738899879/200000000000 : ℚ), (24057164227/5000000000 : ℚ), (-1386608163201/500000000000 : ℚ), 3⟩,
    ⟨(534155477011/1000000000000 : ℚ), (41124108183/10000000000 : ℚ), (-30022716457/12500000000 : ℚ), 3⟩,
    ⟨(4217795579/7812500000 : ℚ), (4420397687/1250000000 : ℚ), (-1046254913077/500000000000 : ℚ), 3⟩,
    ⟨(545847785037/1000000000000 : ℚ), (15283971171/5000000000 : ℚ), (-1832246362807/1000000000000 : ℚ), 3⟩,
    ⟨(552050947653/1000000000000 : ℚ), (26541101161/10000000000 : ℚ), (-1611236213663/1000000000000 : ℚ), 3⟩,
    ⟨(558472377997/1000000000000 : ℚ), (1156635039/500000000 : ℚ), (-711008251351/500000000000 : ℚ), 3⟩,
    ⟨(565096606281/1000000000000 : ℚ), (4045434991/2000000000 : ℚ), (-1258818335861/1000000000000 : ℚ), 2⟩,
    ⟨(571907674159/1000000000000 : ℚ), (8867174301/5000000000 : ℚ), (-558562784959/500000000000 : ℚ), 2⟩,
    ⟨(144722293293/250000000000 : ℚ), (3895766479/2500000000 : ℚ), (-993362095533/1000000000000 : ℚ), 2⟩,
    ⟨(586024284277/1000000000000 : ℚ), (85728783/62500000 : ℚ), (-884666569053/1000000000000 : ℚ), 2⟩,
    ⟨(593295818367/1000000000000 : ℚ), (12089330897/10000000000 : ℚ), (-788727719001/1000000000000 : ℚ), 2⟩,
    ⟨(600686257679/1000000000000 : ℚ), (1066421443/1000000000 : ℚ), (-87957787587/125000000000 : ℚ), 2⟩,
    ⟨(608177797997/1000000000000 : ℚ), (588186113/625000000 : ℚ), (-156980881303/250000000000 : ℚ), 2⟩,
    ⟨(123150478309/200000000000 : ℚ), (8304685649/10000000000 : ℚ), (-1400578919/2500000000 : ℚ), 2⟩,
    ⟨(623391790463/1000000000000 : ℚ), (3662333597/5000000000 : ℚ), (-4995202679/10000000000 : ℚ), 2⟩,
    ⟨(63107759077/100000000000 : ℚ), (3226841299/5000000000 : ℚ), (-27805990843/62500000000 : ℚ), 2⟩,
    ⟨(638791276701/1000000000000 : ℚ), (2838636179/5000000000 : ℚ), (-395604677791/1000000000000 : ℚ), 2⟩,
    ⟨(646514265309/1000000000000 : ℚ), (24916227/50000000 : ℚ), (-351007792949/1000000000000 : ℚ), 2⟩,
    ⟨(16355698781/25000000000 : ℚ), (1090318281/2500000000 : ℚ), (-15528037481/50000000000 : ℚ), 2⟩,
    ⟨(661913751547/1000000000000 : ℚ), (3802565129/10000000000 : ℚ), (-136898714967/500000000000 : ℚ), 2⟩,
    ⟨(133910630093/200000000000 : ℚ), (329960843/1000000000 : ℚ), (-120158509891/500000000000 : ℚ), 2⟩,
    ⟨(677127744013/1000000000000 : ℚ), (711489099/2500000000 : ℚ), (-13110840089/62500000000 : ℚ), 2⟩,
    ⟨(684619284331/1000000000000 : ℚ), (76126779/312500000 : ℚ), (-90933365809/500000000000 : ℚ), 2⟩,
    ⟨(692009723643/1000000000000 : ℚ), (2065111781/10000000000 : ℚ), (-156335963459/1000000000000 : ℚ), 2⟩,
    ⟨(699281257733/1000000000000 : ℚ), (345792163/2000000000 : ℚ), (-66476704317/500000000000 : ℚ), 2⟩,
    ⟨(353208184419/500000000000 : ℚ), (711993139/5000000000 : ℚ), (-111519696173/1000000000000 : ℚ), 2⟩,
    ⟨(713397867851/1000000000000 : ℚ), (1147033297/10000000000 : ℚ), (-45929889531/500000000000 : ℚ), 2⟩,
    ⟨(720208935729/1000000000000 : ℚ), (447671781/5000000000 : ℚ), (-73819560549/1000000000000 : ℚ), 2⟩,
    ⟨(726833164013/1000000000000 : ℚ), (666499793/10000000000 : ℚ), (-57263060327/1000000000000 : ℚ), 2⟩,
    ⟨(733254594357/1000000000000 : ℚ), (7162173/156250000 : ℚ), (-42070025937/1000000000000 : ℚ), 2⟩,
    ⟨(739457756973/1000000000000 : ℚ), (26911349/1000000000 : ℚ), (-28133912001/1000000000000 : ℚ), 2⟩,
    ⟨(745427707899/1000000000000 : ℚ), (97056873/10000000000 : ℚ), (-15360167117/1000000000000 : ℚ), 2⟩,
    ⟨(751150064999/1000000000000 : ℚ), (-14810859/2500000000 : ℚ), (-3664776529/1000000000000 : ℚ), 2⟩,
    ⟨(151322208523/200000000000 : ℚ), (-100535279/5000000000 : ℚ), (7026979497/1000000000000 : ℚ), 1⟩,
    ⟨(761797484773/1000000000000 : ℚ), (-329558501/10000000000 : ℚ), (8390792883/500000000000 : ℚ), 1⟩,
    ⟨(9583711211/12500000000 : ℚ), (-222854789/5000000000 : ℚ), (6414549501/250000000000 : ℚ), 1⟩,
    ⟨(771297475823/1000000000000 : ℚ), (-550409283/10000000000 : ℚ), (33709418133/1000000000000 : ℚ), 1⟩,
    ⟨(193897034601/250000000000 : ℚ), (-644439/10000000 : ℚ), (40981957303/1000000000000 : ℚ), 1⟩,
    ⟨(779558548041/1000000000000 : ℚ), (-728486863/10000000000 : ℚ), (47517202979/1000000000000 : ℚ), 1⟩,
    ⟨(783199139669/1000000000000 : ℚ), (-401578517/5000000000 : ℚ), (10670340823/200000000000 : ℚ), 1⟩,
    ⟨(157300228557/200000000000 : ℚ), (-868977607/10000000000 : ℚ), (11703516767/200000000000 : ℚ), 1⟩,
    ⟨(394728301287/500000000000 : ℚ), (-926407333/10000000000 : ℚ), (15760722739/250000000000 : ℚ), 1⟩,
    ⟨(396029199537/500000000000 : ℚ), (-195168263/2000000000 : ℚ), (66951897681/1000000000000 : ℚ), 1⟩,
    ⟨(79430026433/100000000000 : ℚ), (-63600987/625000000 : ℚ), (8783168607/125000000000 : ℚ), 1⟩,
    ⟨(796176797491/1000000000000 : ℚ), (-1052012127/10000000000 : ℚ), (18250167473/250000000000 : ℚ), 1⟩,
    ⟨(398841738913/500000000000 : ℚ), (-1079260083/10000000000 : ℚ), (75172137561/1000000000000 : ℚ), 1⟩,
    ⟨(99852084451/125000000000 : ℚ), (-21990809/200000000 : ℚ), (19197754081/250000000000 : ℚ), 1⟩,
    ⟨(799573660867/1000000000000 : ℚ), (-1112987087/10000000000 : ℚ), (15573132897/200000000000 : ℚ), 1⟩,
    ⟨(199988152489/250000000000 : ℚ), (-1119688421/10000000000 : ℚ), (78401612419/1000000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-56026253/500000000 : ℚ), (78468541591/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (119228373547/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control83.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control83.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate83

-- Control84
namespace DiagonalRamsey.JointInheritedCertificate84
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(198622761933/1000000000000 : ℚ), (6519011407699/10000000000 : ℚ), (-130130459203243/1000000000000 : ℚ), 10⟩,
    ⟨(100036550579/500000000000 : ℚ), (700206685671/10000000000 : ℚ), (-144006185881/10000000000 : ℚ), 7⟩,
    ⟨(101479906023/500000000000 : ℚ), (59921250099/2500000000 : ℚ), (-1285574990913/250000000000 : ℚ), 6⟩,
    ⟨(41451018799/200000000000 : ℚ), (28758916203/2500000000 : ℚ), (-2591611792301/1000000000000 : ℚ), 5⟩,
    ⟨(53229395273/250000000000 : ℚ), (2030042451/312500000 : ℚ), (-1542006349157/1000000000000 : ℚ), 4⟩,
    ⟨(21989274049/100000000000 : ℚ), (5044717537/1250000000 : ℚ), (-1010735402311/1000000000000 : ℚ), 4⟩,
    ⟨(228113397591/1000000000000 : ℚ), (26688779527/10000000000 : ℚ), (-7051854609/10000000000 : ℚ), 3⟩,
    ⟨(237500382973/1000000000000 : ℚ), (3687430947/2000000000 : ℚ), (-25673058277/50000000000 : ℚ), 3⟩,
    ⟨(247963294837/1000000000000 : ℚ), (410832817/312500000 : ℚ), (-192640705947/500000000000 : ℚ), 3⟩,
    ⟨(12970068481/50000000000 : ℚ), (9594848231/10000000000 : ℚ), (-147666686383/500000000000 : ℚ), 2⟩,
    ⟨(27170445241/100000000000 : ℚ), (3560597097/5000000000 : ℚ), (-28718592333/125000000000 : ℚ), 2⟩,
    ⟨(56950811559/200000000000 : ℚ), (2672749937/5000000000 : ℚ), (-180415071963/1000000000000 : ℚ), 2⟩,
    ⟨(14921225547/50000000000 : ℚ), (504721603/1250000000 : ℚ), (-71166469621/500000000000 : ℚ), 2⟩,
    ⟨(31258415791/100000000000 : ℚ), (610633599/2000000000 : ℚ), (-112288022467/1000000000000 : ℚ), 2⟩,
    ⟨(163548316781/500000000000 : ℚ), (2297386739/10000000000 : ℚ), (-88140188239/1000000000000 : ℚ), 2⟩,
    ⟨(42727771853/125000000000 : ℚ), (1707302961/10000000000 : ℚ), (-8552788419/125000000000 : ℚ), 2⟩,
    ⟨(356618966683/1000000000000 : ℚ), (154955199/1250000000 : ℚ), (-52103604619/1000000000000 : ℚ), 2⟩,
    ⟨(74268901589/200000000000 : ℚ), (864119713/10000000000 : ℚ), (-19222336863/500000000000 : ℚ), 2⟩,
    ⟨(192928491799/500000000000 : ℚ), (559161509/10000000000 : ℚ), (-13452847767/500000000000 : ℚ), 2⟩,
    ⟨(400016630567/1000000000000 : ℚ), (9660917/312500000 : ℚ), (-17086652621/1000000000000 : ℚ), 2⟩,
    ⟨(413687083713/1000000000000 : ℚ), (51309613/5000000000 : ℚ), (-4343698761/500000000000 : ℚ), 2⟩,
    ⟨(426736689097/1000000000000 : ℚ), (-34473967/5000000000 : ℚ), (-1480381951/1000000000000 : ℚ), 2⟩,
    ⟨(27439985743/62500000000 : ℚ), (-105975239/5000000000 : ℚ), (4708335627/1000000000000 : ℚ), 2⟩,
    ⟨(450477846671/1000000000000 : ℚ), (-331236809/10000000000 : ℚ), (10012548683/1000000000000 : ℚ), 2⟩,
    ⟨(230470379267/500000000000 : ℚ), (-430506211/10000000000 : ℚ), (363389679/25000000000 : ℚ), 2⟩,
    ⟨(470327743917/1000000000000 : ℚ), (-256296809/5000000000 : ℚ), (3671474999/200000000000 : ℚ), 1⟩,
    ⟨(239274200509/500000000000 : ℚ), (-18114809/312500000 : ℚ), (1346226739/62500000000 : ℚ), 1⟩,
    ⟨(15172611263/31250000000 : ℚ), (-79176163/1250000000 : ℚ), (4825941263/200000000000 : ℚ), 1⟩,
    ⟨(61398255939/125000000000 : ℚ), (-168764089/2500000000 : ℚ), (26163479789/1000000000000 : ℚ), 1⟩,
    ⟨(495481329461/1000000000000 : ℚ), (-705542697/10000000000 : ℚ), (345843007/12500000000 : ℚ), 1⟩,
    ⟨(9967360807/20000000000 : ℚ), (-2902087/40000000 : ℚ), (1791264963/62500000000 : ℚ), 1⟩,
    ⟨(249909189787/500000000000 : ℚ), (-14708199/200000000 : ℚ), (14576875781/500000000000 : ℚ), 1⟩,
    ⟨(1/2 : ℚ), (-368320639/5000000000 : ℚ), (14607653371/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (75327659237/250000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control84.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control84.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate84

-- Control85
namespace DiagonalRamsey.JointInheritedCertificate85
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(52329772767/250000000000 : ℚ), (6665256897369/10000000000 : ℚ), (-140201135009727/1000000000000 : ℚ), 10⟩,
    ⟨(210814203013/1000000000000 : ℚ), (358159169029/5000000000 : ℚ), (-7757493850899/500000000000 : ℚ), 7⟩,
    ⟨(53447507039/250000000000 : ℚ), (61347037667/2500000000 : ℚ), (-1385044341447/250000000000 : ℚ), 6⟩,
    ⟨(54554476919/250000000000 : ℚ), (29468466971/2500000000 : ℚ), (-2792104276247/1000000000000 : ℚ), 5⟩,
    ⟨(224055198671/1000000000000 : ℚ), (8327930287/1250000000 : ℚ), (-66451502007/40000000000 : ℚ), 4⟩,
    ⟨(231245684839/1000000000000 : ℚ), (20713663577/5000000000 : ℚ), (-43556994093/40000000000 : ℚ), 4⟩,
    ⟨(239720117867/1000000000000 : ℚ), (3427538649/1250000000 : ℚ), (-759757890277/1000000000000 : ℚ), 3⟩,
    ⟨(249396884333/1000000000000 : ℚ), (473977329/250000000 : ℚ), (-276616037597/500000000000 : ℚ), 3⟩,
    ⟨(52036558337/200000000000 : ℚ), (6765388961/5000000000 : ℚ), (-103793794859/250000000000 : ℚ), 3⟩,
    ⟨(271973965739/1000000000000 : ℚ), (9884348697/10000000000 : ℚ), (-63663065359/200000000000 : ℚ), 2⟩,
    ⟨(71164212761/250000000000 : ℚ), (7343538929/10000000000 : ℚ), (-247710646993/1000000000000 : ℚ), 2⟩,
    ⟨(298109304481/1000000000000 : ℚ), (5518939529/10000000000 : ℚ), (-97310207751/500000000000 : ℚ), 2⟩,
    ⟨(31220177157/100000000000 : ℚ), (1043714027/2500000000 : ℚ), (-4801802741/31250000000 : ℚ), 2⟩,
    ⟨(81699633537/250000000000 : ℚ), (1581383019/5000000000 : ℚ), (-30339669121/250000000000 : ℚ), 2⟩,
    ⟨(341759017413/1000000000000 : ℚ), (1192957879/5000000000 : ℚ), (-47708415537/500000000000 : ℚ), 2⟩,
    ⟨(356939143733/1000000000000 : ℚ), (1779493179/10000000000 : ℚ), (-18562657651/250000000000 : ℚ), 2⟩,
    ⟨(372192720193/1000000000000 : ℚ), (51961499/400000000 : ℚ), (-56748638027/1000000000000 : ℚ), 2⟩,
    ⟨(387372846513/1000000000000 : ℚ), (913414843/10000000000 : ℚ), (-42113308403/1000000000000 : ℚ), 2⟩,
    ⟨(201166664889/500000000000 : ℚ), (15010707/250000000 : ℚ), (-1860132209/62500000000 : ℚ), 2⟩,
    ⟨(104232523089/250000000000 : ℚ), (343999859/10000000000 : ℚ), (-9631574489/500000000000 : ℚ), 2⟩,
    ⟨(86204511889/200000000000 : ℚ), (26464017/2000000000 : ℚ), (-10292102871/1000000000000 : ℚ), 2⟩,
    ⟨(222237506441/500000000000 : ℚ), (-2169619/500000000 : ℚ), (-650725673/250000000000 : ℚ), 2⟩,
    ⟨(457157898187/1000000000000 : ℚ), (-4743421/250000000 : ℚ), (3992747023/1000000000000 : ℚ), 2⟩,
    ⟨(234474536121/500000000000 : ℚ), (-77929223/2500000000 : ℚ), (9639852769/1000000000000 : ℚ), 2⟩,
    ⟨(239867489797/500000000000 : ℚ), (-82630471/2000000000 : ℚ), (7225277661/500000000000 : ℚ), 2⟩,
    ⟨(489411746059/1000000000000 : ℚ), (-248486039/5000000000 : ℚ), (9255861433/500000000000 : ℚ), 1⟩,
    ⟨(497886179087/1000000000000 : ℚ), (-56542407/1000000000 : ℚ), (87562159/4000000000 : ℚ), 1⟩,
    ⟨(101015333051/200000000000 : ℚ), (-620227299/10000000000 : ℚ), (6159661999/250000000000 : ℚ), 1⟩,
    ⟨(81746233/160000000 : ℚ), (-41417601/625000000 : ℚ), (26795222027/1000000000000 : ℚ), 1⟩,
    ⟨(51534183577/100000000000 : ℚ), (-346873511/5000000000 : ℚ), (2838923953/100000000000 : ℚ), 1⟩,
    ⟨(518317660913/1000000000000 : ℚ), (-11157811/156250000 : ℚ), (29441126789/1000000000000 : ℚ), 1⟩,
    ⟨(259906386429/500000000000 : ℚ), (-724171423/10000000000 : ℚ), (5992780607/200000000000 : ℚ), 1⟩,
    ⟨(13/25 : ℚ), (-1450851/20000000 : ℚ), (1876818957/62500000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (14787067097/50000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control85.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control85.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate85

-- Control86
namespace DiagonalRamsey.JointInheritedCertificate86
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(112961687439/500000000000 : ℚ), (1724510366207/2500000000 : ℚ), (-15658442401291/100000000000 : ℚ), 10⟩,
    ⟨(45496590397/200000000000 : ℚ), (741967775981/10000000000 : ℚ), (-693112989077/40000000000 : ℚ), 7⟩,
    ⟨(230587086619/1000000000000 : ℚ), (254470117143/10000000000 : ℚ), (-6187399941237/1000000000000 : ℚ), 6⟩,
    ⟨(117602942133/500000000000 : ℚ), (30598855409/2500000000 : ℚ), (-1559107555219/500000000000 : ℚ), 5⟩,
    ⟨(12064743169/50000000000 : ℚ), (69272642359/10000000000 : ℚ), (-1855282791267/1000000000000 : ℚ), 4⟩,
    ⟨(62198845941/250000000000 : ℚ), (10783271161/2500000000 : ℚ), (-608036541017/500000000000 : ℚ), 4⟩,
    ⟨(128817605653/500000000000 : ℚ), (28587590133/10000000000 : ℚ), (-53030522003/62500000000 : ℚ), 3⟩,
    ⟨(133864606817/500000000000 : ℚ), (19792366041/10000000000 : ℚ), (-617886907217/1000000000000 : ℚ), 3⟩,
    ⟨(278980179989/1000000000000 : ℚ), (14144298577/10000000000 : ℚ), (-92753265347/200000000000 : ℚ), 3⟩,
    ⟨(145639878707/500000000000 : ℚ), (80834887/78125000 : ℚ), (-5557307601/15625000000 : ℚ), 2⟩,
    ⟨(152254747127/500000000000 : ℚ), (1924699977/2500000000 : ℚ), (-276902589087/1000000000000 : ℚ), 2⟩,
    ⟨(19908873807/62500000000 : ℚ), (1449005211/2500000000 : ℚ), (-217708148117/1000000000000 : ℚ), 2⟩,
    ⟨(333242076871/1000000000000 : ℚ), (219688051/500000000 : ℚ), (-86033470313/500000000000 : ℚ), 2⟩,
    ⟨(34846821217/100000000000 : ℚ), (3337645211/10000000000 : ℚ), (-136109258489/1000000000000 : ℚ), 2⟩,
    ⟨(182036875401/500000000000 : ℚ), (2527012007/10000000000 : ℚ), (-26814432013/250000000000 : ℚ), 2⟩,
    ⟨(379908402901/1000000000000 : ℚ), (1894364467/10000000000 : ℚ), (-83744635709/1000000000000 : ℚ), 2⟩,
    ⟨(39581967211/100000000000 : ℚ), (348338143/2500000000 : ℚ), (-64327217321/1000000000000 : ℚ), 2⟩,
    ⟨(25728395263/62500000000 : ℚ), (991486047/10000000000 : ℚ), (-12028309457/250000000000 : ℚ), 2⟩,
    ⟨(427259862841/1000000000000 : ℚ), (41598557/625000000 : ℚ), (-4306322717/125000000000 : ℚ), 2⟩,
    ⟨(22124299907/50000000000 : ℚ), (398812373/10000000000 : ℚ), (-5713835471/250000000000 : ℚ), 2⟩,
    ⟨(228593047049/500000000000 : ℚ), (3576617/200000000 : ℚ), (-12963793411/1000000000000 : ℚ), 2⟩,
    ⟨(117804645189/250000000000 : ℚ), (-892113/2500000000 : ℚ), (-899921153/200000000000 : ℚ), 2⟩,
    ⟨(484448317597/1000000000000 : ℚ), (-38826649/2500000000 : ℚ), (1374492363/500000000000 : ℚ), 2⟩,
    ⟨(496747895021/1000000000000 : ℚ), (-281635947/10000000000 : ℚ), (44726713/5000000000 : ℚ), 2⟩,
    ⟨(7937482209/15625000000 : ℚ), (-15462791/400000000 : ℚ), (7108028163/500000000000 : ℚ), 2⟩,
    ⟨(103618572741/200000000000 : ℚ), (-473187851/10000000000 : ℚ), (18659400451/1000000000000 : ℚ), 1⟩,
    ⟨(526932691247/1000000000000 : ℚ), (-543855903/10000000000 : ℚ), (22351559279/1000000000000 : ℚ), 1⟩,
    ⟨(534433211631/1000000000000 : ℚ), (-150096061/2500000000 : ℚ), (25351234203/1000000000000 : ℚ), 1⟩,
    ⟨(108104438149/200000000000 : ℚ), (-644142699/10000000000 : ℚ), (6925765091/250000000000 : ℚ), 1⟩,
    ⟨(68142623549/125000000000 : ℚ), (-676143521/10000000000 : ℚ), (14720063827/500000000000 : ℚ), 1⟩,
    ⟨(274122561513/500000000000 : ℚ), (-697100243/10000000000 : ℚ), (30585805873/1000000000000 : ℚ), 1⟩,
    ⟨(137451175033/250000000000 : ℚ), (-35373393/500000000 : ℚ), (31155012499/1000000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-708758679/10000000000 : ℚ), (31225994959/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (57408395769/200000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control86.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control86.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate86

-- Control87
namespace DiagonalRamsey.JointInheritedCertificate87
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31923260151/125000000000 : ℚ), (29493446179049/10000000000 : ℚ), (-94284692949073/125000000000 : ℚ), 12⟩,
    ⟨(51160224249/200000000000 : ℚ), (3244807889571/10000000000 : ℚ), (-104654316617/1250000000 : ℚ), 9⟩,
    ⟨(256630201453/1000000000000 : ℚ), (229995074323/2000000000 : ℚ), (-3759895565251/125000000000 : ℚ), 8⟩,
    ⟨(257871324503/1000000000000 : ℚ), (143787789833/2500000000 : ℚ), (-15299663890999/1000000000000 : ℚ), 7⟩,
    ⟨(259521500421/1000000000000 : ℚ), (33992250789/1000000000 : ℚ), (-9217617508203/1000000000000 : ℚ), 6⟩,
    ⟨(261576753791/1000000000000 : ℚ), (221699426299/10000000000 : ℚ), (-1227789939073/200000000000 : ℚ), 5⟩,
    ⟨(10561285333/40000000000 : ℚ), (154289592409/10000000000 : ℚ), (-1092078425813/250000000000 : ℚ), 5⟩,
    ⟨(1334408619/5000000000 : ℚ), (56210490731/5000000000 : ℚ), (-3257454995799/1000000000000 : ℚ), 5⟩,
    ⟨(135059330151/500000000000 : ℚ), (84758751469/10000000000 : ℚ), (-157193784231/62500000000 : ℚ), 4⟩,
    ⟨(273735144769/1000000000000 : ℚ), (65608852479/10000000000 : ℚ), (-1994623093449/1000000000000 : ℚ), 4⟩,
    ⟨(69430616193/250000000000 : ℚ), (2592942199/500000000 : ℚ), (-1615681323643/1000000000000 : ℚ), 4⟩,
    ⟨(70517753627/250000000000 : ℚ), (20846158631/5000000000 : ℚ), (-1040046803/781250000 : ℚ), 4⟩,
    ⟨(286770317939/1000000000000 : ℚ), (33992319629/10000000000 : ℚ), (-556179290383/500000000000 : ℚ), 3⟩,
    ⟨(291809054033/1000000000000 : ℚ), (28042021993/10000000000 : ℚ), (-940301161853/1000000000000 : ℚ), 3⟩,
    ⟨(297175084033/1000000000000 : ℚ), (934588929/400000000 : ℚ), (-8026195739/10000000000 : ℚ), 3⟩,
    ⟨(151427740351/500000000000 : ℚ), (4908434143/2500000000 : ℚ), (-690732514583/1000000000000 : ℚ), 3⟩,
    ⟨(77209139867/250000000000 : ℚ), (16619348949/10000000000 : ℚ), (-2338192033/3906250000 : ℚ), 3⟩,
    ⟨(315103911387/1000000000000 : ℚ), (7078201907/5000000000 : ℚ), (-521771614221/1000000000000 : ℚ), 3⟩,
    ⟨(16082121893/50000000000 : ℚ), (6061916681/5000000000 : ℚ), (-457085217257/1000000000000 : ℚ), 3⟩,
    ⟨(82109096751/250000000000 : ℚ), (10431362891/10000000000 : ℚ), (-201046936259/500000000000 : ℚ), 2⟩,
    ⟨(838673479/2500000000 : ℚ), (563165947/625000000 : ℚ), (-14198001787/40000000000 : ℚ), 2⟩,
    ⟨(13708980341/40000000000 : ℚ), (1561855887/2000000000 : ℚ), (-314225815627/1000000000000 : ℚ), 2⟩,
    ⟨(175092129783/500000000000 : ℚ), (6786521999/10000000000 : ℚ), (-278803628013/1000000000000 : ℚ), 2⟩,
    ⟨(357830673529/1000000000000 : ℚ), (5910423247/10000000000 : ℚ), (-123899422319/500000000000 : ℚ), 2⟩,
    ⟨(182822664767/500000000000 : ℚ), (2577824211/5000000000 : ℚ), (-27562994811/125000000000 : ℚ), 2⟩,
    ⟨(37360940139/100000000000 : ℚ), (1125483697/2500000000 : ℚ), (-196347798667/1000000000000 : ℚ), 2⟩,
    ⟨(7634074059/20000000000 : ℚ), (393294407/1000000000 : ℚ), (-174865296653/1000000000000 : ℚ), 2⟩,
    ⟨(97477183583/250000000000 : ℚ), (1717701997/5000000000 : ℚ), (-155674796889/1000000000000 : ℚ), 2⟩,
    ⟨(199102364449/500000000000 : ℚ), (2998458933/10000000000 : ℚ), (-17307604537/125000000000 : ℚ), 2⟩,
    ⟨(406571700869/1000000000000 : ℚ), (653293409/2500000000 : ℚ), (-3842529131/31250000000 : ℚ), 2⟩,
    ⟨(207494746739/500000000000 : ℚ), (1136075197/5000000000 : ℚ), (-54477674717/500000000000 : ℚ), 2⟩,
    ⟨(16937513101/40000000000 : ℚ), (492307777/2500000000 : ℚ), (-48129550123/500000000000 : ℚ), 2⟩,
    ⟨(53987043779/125000000000 : ℚ), (849631783/5000000000 : ℚ), (-84715637583/1000000000000 : ℚ), 2⟩,
    ⟨(440344684279/1000000000000 : ℚ), (1457916709/10000000000 : ℚ), (-14838368681/200000000000 : ℚ), 2⟩,
    ⟨(56095309611/125000000000 : ℚ), (620766809/5000000000 : ℚ), (-64574018251/1000000000000 : ℚ), 2⟩,
    ⟨(457129448859/1000000000000 : ℚ), (1047013733/10000000000 : ℚ), (-27882323471/500000000000 : ℚ), 2⟩,
    ⟨(18617017737/40000000000 : ℚ), (17434359/200000000 : ℚ), (-47679776259/1000000000000 : ℚ), 2⟩,
    ⟨(473630474807/1000000000000 : ℚ), (356695849/5000000000 : ℚ), (-10061718377/250000000000 : ℚ), 2⟩,
    ⟨(481724776367/1000000000000 : ℚ), (14252557/250000000 : ℚ), (-16701534953/500000000000 : ℚ), 2⟩,
    ⟨(489688848223/1000000000000 : ℚ), (220093779/5000000000 : ℚ), (-13546854737/500000000000 : ℚ), 2⟩,
    ⟨(124375876057/250000000000 : ℚ), (80553439/2500000000 : ℚ), (-4254229343/200000000000 : ℚ), 2⟩,
    ⟨(505149918191/1000000000000 : ℚ), (214940589/10000000000 : ℚ), (-3973435863/250000000000 : ℚ), 2⟩,
    ⟨(32038104327/62500000000 : ℚ), (117292349/10000000000 : ℚ), (-10925030363/1000000000000 : ℚ), 2⟩,
    ⟨(519864786157/1000000000000 : ℚ), (1416691/500000000 : ℚ), (-6333001233/1000000000000 : ℚ), 2⟩,
    ⟨(526897790753/1000000000000 : ℚ), (-52749847/10000000000 : ℚ), (-2089517629/1000000000000 : ℚ), 2⟩,
    ⟨(533691739897/1000000000000 : ℚ), (-31667501/2500000000 : ℚ), (366038959/200000000000 : ℚ), 2⟩,
    ⟨(54023026637/100000000000 : ℚ), (-97024351/5000000000 : ℚ), (544797513/100000000000 : ℚ), 2⟩,
    ⟨(546497618289/1000000000000 : ℚ), (-249444/9765625 : ℚ), (8783091679/1000000000000 : ℚ), 2⟩,
    ⟨(110495739411/200000000000 : ℚ), (-311293369/10000000000 : ℚ), (11852554107/1000000000000 : ℚ), 1⟩,
    ⟨(139539773431/250000000000 : ℚ), (-11314241/312500000 : ℚ), (1833922591/125000000000 : ℚ), 1⟩,
    ⟨(140881280931/250000000000 : ℚ), (-408085209/10000000000 : ℚ), (2156603469/125000000000 : ℚ), 1⟩,
    ⟨(284281929909/500000000000 : ℚ), (-224852117/5000000000 : ℚ), (3921717281/200000000000 : ℚ), 1⟩,
    ⟨(573263163249/1000000000000 : ℚ), (-487195289/10000000000 : ℚ), (5437238171/250000000000 : ℚ), 1⟩,
    ⟨(115522342597/200000000000 : ℚ), (-260402749/5000000000 : ℚ), (23682973149/1000000000000 : ℚ), 1⟩,
    ⟨(145399758247/250000000000 : ℚ), (-550750439/10000000000 : ℚ), (25418570823/1000000000000 : ℚ), 1⟩,
    ⟨(117043103491/200000000000 : ℚ), (-115443481/2000000000 : ℚ), (842582919/31250000000 : ℚ), 1⟩,
    ⟨(588452453957/1000000000000 : ℚ), (-600368167/10000000000 : ℚ), (2832120537/100000000000 : ℚ), 1⟩,
    ⟨(36956377777/62500000000 : ℚ), (-310170657/5000000000 : ℚ), (1843710433/62500000000 : ℚ), 1⟩,
    ⟨(296878711983/500000000000 : ℚ), (-25490169/400000000 : ℚ), (30501501639/1000000000000 : ℚ), 1⟩,
    ⟨(119162535467/200000000000 : ℚ), (-651204701/10000000000 : ℚ), (15665625971/500000000000 : ℚ), 1⟩,
    ⟨(298731426627/500000000000 : ℚ), (-662272309/10000000000 : ℚ), (3199158559/100000000000 : ℚ), 1⟩,
    ⟨(37418998519/62500000000 : ℚ), (-335259733/5000000000 : ℚ), (3248483371/100000000000 : ℚ), 1⟩,
    ⟨(1170963001/1953125000 : ℚ), (-675992271/10000000000 : ℚ), (16406359687/500000000000 : ℚ), 1⟩,
    ⟨(599948096549/1000000000000 : ℚ), (-169680281/2500000000 : ℚ), (16488189877/500000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-679061877/10000000000 : ℚ), (32996824011/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (424020373/1562500000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control87.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control87.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate87

-- Control88
namespace DiagonalRamsey.JointInheritedCertificate88
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(81010170771/250000000000 : ℚ), (34310215770213/10000000000 : ℚ), (-1113146402711257/1000000000000 : ℚ), 12⟩,
    ⟨(16224673717/50000000000 : ℚ), (236187955271/625000000 : ℚ), (-123556720972411/1000000000000 : ℚ), 9⟩,
    ⟨(325397966037/1000000000000 : ℚ), (1341572458657/10000000000 : ℚ), (-44389617961189/1000000000000 : ℚ), 8⟩,
    ⟨(326751979177/1000000000000 : ℚ), (168090493997/2500000000 : ℚ), (-22578362982389/1000000000000 : ℚ), 7⟩,
    ⟨(164276125911/500000000000 : ℚ), (199147940027/5000000000 : ℚ), (-1700329638031/125000000000 : ℚ), 6⟩,
    ⟨(330794446959/1000000000000 : ℚ), (260418258469/10000000000 : ℚ), (-362369729689/40000000000 : ℚ), 6⟩,
    ⟨(333473162943/1000000000000 : ℚ), (2271365061/125000000 : ℚ), (-1611556206621/250000000000 : ℚ), 5⟩,
    ⟨(21036371657/62500000000 : ℚ), (66378238653/5000000000 : ℚ), (-24034510591/5000000000 : ℚ), 5⟩,
    ⟨(170056654167/500000000000 : ℚ), (50182455919/5000000000 : ℚ), (-742284248767/200000000000 : ℚ), 4⟩,
    ⟨(344058741051/1000000000000 : ℚ), (77903926149/10000000000 : ℚ), (-2943393514891/1000000000000 : ℚ), 4⟩,
    ⟨(43551092471/125000000000 : ℚ), (61747884037/10000000000 : ℚ), (-9313490779/3906250000 : ℚ), 4⟩,
    ⟨(353152824957/1000000000000 : ℚ), (49780016329/10000000000 : ℚ), (-245577256461/125000000000 : ℚ), 4⟩,
    ⟨(358279567703/1000000000000 : ℚ), (40698061491/10000000000 : ℚ), (-1641689362719/1000000000000 : ℚ), 3⟩,
    ⟨(22736038577/62500000000 : ℚ), (16832907629/5000000000 : ℚ), (-138790615519/100000000000 : ℚ), 3⟩,
    ⟨(369630730671/1000000000000 : ℚ), (28126849099/10000000000 : ℚ), (-37027146529/31250000000 : ℚ), 3⟩,
    ⟨(375827804947/1000000000000 : ℚ), (23699572487/10000000000 : ℚ), (-509956562047/500000000000 : ℚ), 3⟩,
    ⟨(382352910767/1000000000000 : ℚ), (5028863649/2500000000 : ℚ), (-17681844289/20000000000 : ℚ), 3⟩,
    ⟨(194595164289/500000000000 : ℚ), (17181259091/10000000000 : ℚ), (-770939262481/1000000000000 : ℚ), 3⟩,
    ⟨(396323586443/1000000000000 : ℚ), (3688798581/2500000000 : ℚ), (-675686420501/1000000000000 : ℚ), 3⟩,
    ⟨(201867749859/500000000000 : ℚ), (101851337/80000000 : ℚ), (-297378014261/500000000000 : ℚ), 2⟩,
    ⟨(205704106227/500000000000 : ℚ), (11029708807/10000000000 : ℚ), (-52542119181/100000000000 : ℚ), 2⟩,
    ⟨(13103851263/31250000000 : ℚ), (383537693/400000000 : ℚ), (-465574174009/1000000000000 : ℚ), 2⟩,
    ⟨(427461515607/1000000000000 : ℚ), (8359695191/10000000000 : ℚ), (-16542606731/40000000000 : ℚ), 2⟩,
    ⟨(435803432209/1000000000000 : ℚ), (3652896093/5000000000 : ℚ), (-184044010781/500000000000 : ℚ), 2⟩,
    ⟨(88865778763/200000000000 : ℚ), (3198409871/5000000000 : ℚ), (-164048955301/500000000000 : ℚ), 2⟩,
    ⟨(453017361841/1000000000000 : ℚ), (5608812481/10000000000 : ℚ), (-292751148227/1000000000000 : ℚ), 2⟩,
    ⟨(230923952503/500000000000 : ℚ), (984482473/2000000000 : ℚ), (-261360573569/1000000000000 : ℚ), 2⟩,
    ⟨(470799249759/1000000000000 : ℚ), (108046627/250000000 : ℚ), (-116681038379/500000000000 : ℚ), 2⟩,
    ⟨(239924915763/500000000000 : ℚ), (3794260373/10000000000 : ℚ), (-52072297743/250000000000 : ℚ), 2⟩,
    ⟨(488977846663/1000000000000 : ℚ), (3328951077/10000000000 : ℚ), (-185753602559/1000000000000 : ℚ), 2⟩,
    ⟨(498161304981/1000000000000 : ℚ), (1458552277/5000000000 : ℚ), (-20678756847/125000000000 : ℚ), 2⟩,
    ⟨(253689041363/500000000000 : ℚ), (2551353301/10000000000 : ℚ), (-9190284139/62500000000 : ℚ), 2⟩,
    ⟨(8071968373/15625000000 : ℚ), (1112760293/5000000000 : ℚ), (-130365028291/1000000000000 : ℚ), 2⟩,
    ⟨(525822753617/1000000000000 : ℚ), (12090021/62500000 : ℚ), (-23038802709/200000000000 : ℚ), 2⟩,
    ⟨(107001242387/200000000000 : ℚ), (1673599279/10000000000 : ℚ), (-25340664821/250000000000 : ℚ), 2⟩,
    ⟨(4251048649/7812500000 : ℚ), (719683981/5000000000 : ℚ), (-88725998297/1000000000000 : ℚ), 2⟩,
    ⟨(553184808839/1000000000000 : ℚ), (614259521/5000000000 : ℚ), (-77159071167/1000000000000 : ℚ), 2⟩,
    ⟨(70267019199/125000000000 : ℚ), (129790163/1250000000 : ℚ), (-2079805273/31250000000 : ℚ), 2⟩,
    ⟨(570966696757/1000000000000 : ℚ), (433214277/5000000000 : ℚ), (-28408120417/500000000000 : ℚ), 2⟩,
    ⟨(579655164783/1000000000000 : ℚ), (355409417/5000000000 : ℚ), (-5983094767/125000000000 : ℚ), 2⟩,
    ⟨(588180626389/1000000000000 : ℚ), (284872171/5000000000 : ℚ), (-4953492299/125000000000 : ℚ), 2⟩,
    ⟨(37282658937/62500000000 : ℚ), (88338001/2000000000 : ℚ), (-16021634923/500000000000 : ℚ), 2⟩,
    ⟨(302330409091/500000000000 : ℚ), (6506781/200000000 : ℚ), (-25055874133/1000000000000 : ℚ), 2⟩,
    ⟨(2392874399/3906250000 : ℚ), (219544301/10000000000 : ℚ), (-18617468147/1000000000000 : ℚ), 2⟩,
    ⟨(620248558881/1000000000000 : ℚ), (30826037/2500000000 : ℚ), (-2537097487/200000000000 : ℚ), 2⟩,
    ⟨(125532094431/200000000000 : ℚ), (35742377/10000000000 : ℚ), (-902793191/125000000000 : ℚ), 2⟩,
    ⟨(31739686501/50000000000 : ℚ), (-5488603/1250000000 : ℚ), (-2194804421/1000000000000 : ℚ), 1⟩,
    ⟨(641631147831/1000000000000 : ℚ), (-23264643/2000000000 : ℚ), (2426560959/1000000000000 : ℚ), 1⟩,
    ⟨(648156253651/1000000000000 : ℚ), (-45523163/2500000000 : ℚ), (1333563903/200000000000 : ℚ), 1⟩,
    ⟨(81794165991/125000000000 : ℚ), (-241737399/10000000000 : ℚ), (2638018787/250000000000 : ℚ), 1⟩,
    ⟨(330103720683/500000000000 : ℚ), (-147857443/5000000000 : ℚ), (7049900377/500000000000 : ℚ), 1⟩,
    ⟨(41606530681/62500000000 : ℚ), (-344427173/10000000000 : ℚ), (693165033/40000000000 : ℚ), 1⟩,
    ⟨(670831233641/1000000000000 : ℚ), (-388227303/10000000000 : ℚ), (2025608231/100000000000 : ℚ), 1⟩,
    ⟨(675575318831/1000000000000 : ℚ), (-427424717/10000000000 : ℚ), (22894815559/1000000000000 : ℚ), 1⟩,
    ⟨(169981329387/250000000000 : ℚ), (-115572469/2500000000 : ℚ), (12628883151/500000000000 : ℚ), 1⟩,
    ⟨(85483843783/125000000000 : ℚ), (-61632273/1250000000 : ℚ), (27355824991/1000000000000 : ℚ), 1⟩,
    ⟨(687402112087/1000000000000 : ℚ), (-20797333/400000000 : ℚ), (5839692889/200000000000 : ℚ), 1⟩,
    ⟨(86313861957/125000000000 : ℚ), (-543090083/10000000000 : ℚ), (3079385237/100000000000 : ℚ), 1⟩,
    ⟨(693189611639/1000000000000 : ℚ), (-562676711/10000000000 : ℚ), (3214894627/100000000000 : ℚ), 1⟩,
    ⟨(86928975847/125000000000 : ℚ), (-578816903/10000000000 : ℚ), (8317393201/250000000000 : ℚ), 1⟩,
    ⟨(348616039711/500000000000 : ℚ), (-147902853/2500000000 : ℚ), (34160493119/1000000000000 : ℚ), 1⟩,
    ⟨(698586092561/1000000000000 : ℚ), (-601139351/10000000000 : ℚ), (34825455733/1000000000000 : ℚ), 1⟩,
    ⟨(699490584259/1000000000000 : ℚ), (-303729599/5000000000 : ℚ), (8816809257/250000000000 : ℚ), 1⟩,
    ⟨(349971687757/500000000000 : ℚ), (-122121907/2000000000 : ℚ), (35487671399/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-611002879/10000000000 : ℚ), (7103040873/200000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (117172050453/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control88.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control88.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate88

-- Control91
namespace DiagonalRamsey.JointInheritedCertificate91
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27993809897/100000000000 : ℚ), (10318355600207/2500000000 : ℚ), (-1156581336032961/1000000000000 : ℚ), 13⟩,
    ⟨(140131675681/500000000000 : ℚ), (2275623913967/5000000000 : ℚ), (-128368023430621/1000000000000 : ℚ), 9⟩,
    ⟨(140456536293/500000000000 : ℚ), (1618536899291/10000000000 : ℚ), (-23055488857273/500000000000 : ℚ), 8⟩,
    ⟨(56377139481/200000000000 : ℚ), (812874300731/10000000000 : ℚ), (-4689669225739/200000000000 : ℚ), 7⟩,
    ⟨(7079472067/25000000000 : ℚ), (30166046379/625000000 : ℚ), (-112977486951/8000000000 : ℚ), 6⟩,
    ⟨(284789513017/1000000000000 : ℚ), (158178553337/5000000000 : ℚ), (-4700662317961/500000000000 : ℚ), 6⟩,
    ⟨(57342741653/200000000000 : ℚ), (221302998727/10000000000 : ℚ), (-6686155728427/1000000000000 : ℚ), 5⟩,
    ⟨(72236708217/250000000000 : ℚ), (81048540571/5000000000 : ℚ), (-1245665357357/250000000000 : ℚ), 5⟩,
    ⟨(58296701407/200000000000 : ℚ), (6142748209/500000000 : ℚ), (-961052991203/250000000000 : ℚ), 5⟩,
    ⟨(58863523939/200000000000 : ℚ), (19118459021/2000000000 : ℚ), (-3045974355241/1000000000000 : ℚ), 4⟩,
    ⟨(297442343223/1000000000000 : ℚ), (37970828393/5000000000 : ℚ), (-2464757106087/1000000000000 : ℚ), 4⟩,
    ⟨(60170029977/200000000000 : ℚ), (7669022753/1250000000 : ℚ), (-126779376923/62500000000 : ℚ), 4⟩,
    ⟨(304532829977/1000000000000 : ℚ), (25126917283/5000000000 : ℚ), (-26447605837/15625000000 : ℚ), 4⟩,
    ⟨(308481511601/1000000000000 : ℚ), (41637951183/10000000000 : ℚ), (-285730316853/200000000000 : ℚ), 3⟩,
    ⟨(78171670509/250000000000 : ℚ), (8708239821/2500000000 : ℚ), (-1217367927461/1000000000000 : ℚ), 3⟩,
    ⟨(158569105329/500000000000 : ℚ), (29378007721/10000000000 : ℚ), (-522819491771/500000000000 : ℚ), 3⟩,
    ⟨(64365074669/200000000000 : ℚ), (24948556069/10000000000 : ℚ), (-4520847589/5000000000 : ℚ), 3⟩,
    ⟨(326736878311/1000000000000 : ℚ), (852435087/400000000 : ℚ), (-786241587431/1000000000000 : ℚ), 3⟩,
    ⟨(2592663229/7812500000 : ℚ), (1829331751/1000000000 : ℚ), (-34345116491/50000000000 : ℚ), 3⟩,
    ⟨(67437014829/200000000000 : ℚ), (985476201/625000000 : ℚ), (-602435447193/1000000000000 : ℚ), 3⟩,
    ⟨(342696594393/1000000000000 : ℚ), (6818236551/5000000000 : ℚ), (-16562766869/31250000000 : ℚ), 3⟩,
    ⟨(174191088161/500000000000 : ℚ), (11825037227/10000000000 : ℚ), (-116858116113/250000000000 : ℚ), 2⟩,
    ⟨(70845624573/200000000000 : ℚ), (2055008289/2000000000 : ℚ), (-206496909343/500000000000 : ℚ), 2⟩,
    ⟨(180110175313/500000000000 : ℚ), (1788123087/2000000000 : ℚ), (-182668106691/500000000000 : ℚ), 2⟩,
    ⟨(366344423803/1000000000000 : ℚ), (15205641/19531250 : ℚ), (-161687371333/500000000000 : ℚ), 2⟩,
    ⟨(46573198621/125000000000 : ℚ), (6779798089/10000000000 : ℚ), (-71558362737/250000000000 : ℚ), 2⟩,
    ⟨(378928810607/1000000000000 : ℚ), (1475118237/2500000000 : ℚ), (-506397979/2000000000 : ℚ), 2⟩,
    ⟨(385358807343/1000000000000 : ℚ), (5128016969/10000000000 : ℚ), (-27960730429/125000000000 : ℚ), 2⟩,
    ⟨(24491255547/62500000000 : ℚ), (4446592031/10000000000 : ℚ), (-24651242511/125000000000 : ℚ), 2⟩,
    ⟨(99604248169/250000000000 : ℚ), (153724587/400000000 : ℚ), (-173368406387/1000000000000 : ℚ), 2⟩,
    ⟨(5062671537/12500000000 : ℚ), (3306712947/10000000000 : ℚ), (-75911944657/500000000000 : ℚ), 2⟩,
    ⟨(411634387503/1000000000000 : ℚ), (2828303021/10000000000 : ℚ), (-132292300779/1000000000000 : ℚ), 2⟩,
    ⟨(3267679973/7812500000 : ℚ), (120012823/500000000 : ℚ), (-57266578661/500000000000 : ℚ), 2⟩,
    ⟨(424883701087/1000000000000 : ℚ), (2016136699/10000000000 : ℚ), (-98341904183/1000000000000 : ℚ), 2⟩,
    ⟨(431480431371/1000000000000 : ℚ), (1670488877/10000000000 : ℚ), (-41771886223/500000000000 : ℚ), 2⟩,
    ⟨(1711083341/3906250000 : ℚ), (1358671081/10000000000 : ℚ), (-34994413381/500000000000 : ℚ), 2⟩,
    ⟨(3472957943/7812500000 : ℚ), (538359013/5000000000 : ℚ), (-11509589843/200000000000 : ℚ), 2⟩,
    ⟨(1409276917/3125000000 : ℚ), (12831723/156250000 : ℚ), (-46109559883/1000000000000 : ℚ), 2⟩,
    ⟨(457311835079/1000000000000 : ℚ), (294641867/5000000000 : ℚ), (-35576926227/1000000000000 : ℚ), 2⟩,
    ⟨(115888250061/250000000000 : ℚ), (378355369/10000000000 : ℚ), (-25865941337/1000000000000 : ℚ), 2⟩,
    ⟨(469677073421/1000000000000 : ℚ), (93130933/5000000000 : ℚ), (-8451640371/500000000000 : ℚ), 2⟩,
    ⟨(237834650591/500000000000 : ℚ), (694303/625000000 : ℚ), (-8624866933/1000000000000 : ℚ), 2⟩,
    ⟨(19260609909/40000000000 : ℚ), (-148751413/10000000000 : ℚ), (-243645577/250000000000 : ℚ), 2⟩,
    ⟨(243600414827/500000000000 : ℚ), (-29475531/1000000000 : ℚ), (6096811949/1000000000000 : ℚ), 2⟩,
    ⟨(246356174951/500000000000 : ℚ), (-214078761/5000000000 : ℚ), (3158147453/250000000000 : ℚ), 2⟩,
    ⟨(99607306147/200000000000 : ℚ), (-550055927/10000000000 : ℚ), (9335417043/500000000000 : ℚ), 2⟩,
    ⟨(62895068217/125000000000 : ℚ), (-661412631/10000000000 : ℚ), (12122547323/500000000000 : ℚ), 2⟩,
    ⟨(254036025351/500000000000 : ℚ), (-381535887/5000000000 : ℚ), (3673118833/125000000000 : ℚ), 2⟩,
    ⟨(512759213389/1000000000000 : ℚ), (-855774631/10000000000 : ℚ), (1066140331/31250000000 : ℚ), 2⟩,
    ⟨(517210742011/1000000000000 : ℚ), (-940172467/10000000000 : ℚ), (2403920309/62500000000 : ℚ), 2⟩,
    ⟨(260707956223/500000000000 : ℚ), (-63552343/625000000 : ℚ), (5305492573/125000000000 : ℚ), 2⟩,
    ⟨(52536459407/100000000000 : ℚ), (-1086272193/10000000000 : ℚ), (46078006237/1000000000000 : ℚ), 2⟩,
    ⟨(264523637081/500000000000 : ℚ), (-143614671/1250000000 : ℚ), (24690318063/500000000000 : ℚ), 2⟩,
    ⟨(66556885103/125000000000 : ℚ), (-301289729/2500000000 : ℚ), (52365616861/1000000000000 : ℚ), 2⟩,
    ⟨(8368434443/15625000000 : ℚ), (-156916713/1250000000 : ℚ), (55045004069/1000000000000 : ℚ), 2⟩,
    ⟨(134603479253/250000000000 : ℚ), (-25994691/200000000 : ℚ), (14357322797/250000000000 : ℚ), 2⟩,
    ⟨(540950591179/1000000000000 : ℚ), (-1338614473/10000000000 : ℚ), (29763777369/500000000000 : ℚ), 2⟩,
    ⟨(543183715783/1000000000000 : ℚ), (-1372190301/10000000000 : ℚ), (61347578891/1000000000000 : ℚ), 2⟩,
    ⟨(54510791103/100000000000 : ℚ), (-1400645711/10000000000 : ℚ), (62895961177/1000000000000 : ℚ), 2⟩,
    ⟨(546718541367/1000000000000 : ℚ), (-356033441/2500000000 : ℚ), (32089100539/500000000000 : ℚ), 2⟩,
    ⟨(548011726643/1000000000000 : ℚ), (-1442778997/10000000000 : ℚ), (13039754819/200000000000 : ℚ), 2⟩,
    ⟨(548984351461/1000000000000 : ℚ), (-1456679103/10000000000 : ℚ), (16490297821/250000000000 : ℚ), 2⟩,
    ⟨(109926814537/200000000000 : ℚ), (-732953121/5000000000 : ℚ), (66468046299/1000000000000 : ℚ), 2⟩,
    ⟨(549959325077/1000000000000 : ℚ), (-735253997/5000000000 : ℚ), (66721049081/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-1471082661/10000000000 : ℚ), (66752654621/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (241584772081/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control91.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control91.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate91
