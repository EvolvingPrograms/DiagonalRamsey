import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control82.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control82.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate82
