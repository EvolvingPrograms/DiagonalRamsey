import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate24
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120418637783/500000000000 : ℚ), (4030034228361/1250000000 : ℚ), (-777657551480851/1000000000000 : ℚ), 12⟩,
    ⟨(120634918819/500000000000 : ℚ), (708751106901/2000000000 : ℚ), (-86310090705219/1000000000000 : ℚ), 9⟩,
    ⟨(242133919701/1000000000000 : ℚ), (1254147663117/10000000000 : ℚ), (-7750605853519/250000000000 : ℚ), 7⟩,
    ⟨(243427440107/1000000000000 : ℚ), (125229267503/2000000000 : ℚ), (-7882379285961/500000000000 : ℚ), 6⟩,
    ⟨(245147282651/1000000000000 : ℚ), (369311555221/10000000000 : ℚ), (-949429252421/100000000000 : ℚ), 5⟩,
    ⟨(123644652041/500000000000 : ℚ), (7510310087/312500000 : ℚ), (-1264075523389/200000000000 : ℚ), 5⟩,
    ⟨(249848344083/1000000000000 : ℚ), (2607122313/156250000 : ℚ), (-4495092386313/1000000000000 : ℚ), 4⟩,
    ⟨(126409118851/500000000000 : ℚ), (6063613277/500000000 : ℚ), (-1675038385269/500000000000 : ℚ), 4⟩,
    ⟨(128095915103/500000000000 : ℚ), (91194924903/10000000000 : ℚ), (-2585021652199/1000000000000 : ℚ), 4⟩,
    ⟨(129980497157/500000000000 : ℚ), (70403880157/10000000000 : ℚ), (-2048748835703/1000000000000 : ℚ), 3⟩,
    ⟨(13205832489/50000000000 : ℚ), (27750031013/5000000000 : ℚ), (-1658421462961/1000000000000 : ℚ), 3⟩,
    ⟨(134324392633/500000000000 : ℚ), (8900065417/2000000000 : ℚ), (-1365562069219/1000000000000 : ℚ), 3⟩,
    ⟨(136773241231/500000000000 : ℚ), (36185567831/10000000000 : ℚ), (-142533372073/125000000000 : ℚ), 3⟩,
    ⟨(17424871399/62500000000 : ℚ), (2977366623/1000000000 : ℚ), (-120409612293/125000000000 : ℚ), 3⟩,
    ⟨(284390513807/1000000000000 : ℚ), (12372353849/5000000000 : ℚ), (-821733386009/1000000000000 : ℚ), 3⟩,
    ⟨(58062144747/200000000000 : ℚ), (10371275503/5000000000 : ℚ), (-176696391889/250000000000 : ℚ), 2⟩,
    ⟨(59308861973/200000000000 : ℚ), (1751690087/1000000000 : ℚ), (-612179456303/1000000000000 : ℚ), 2⟩,
    ⟨(151538127471/500000000000 : ℚ), (465247169/312500000 : ℚ), (-533394448823/1000000000000 : ℚ), 2⟩,
    ⟨(154945411469/500000000000 : ℚ), (1590478643/1250000000 : ℚ), (-233548611127/500000000000 : ℚ), 2⟩,
    ⟨(316971596961/1000000000000 : ℚ), (10926498721/10000000000 : ℚ), (-205393184567/500000000000 : ℚ), 2⟩,
    ⟨(324301518807/1000000000000 : ℚ), (1177709609/1250000000 : ℚ), (-362555257511/1000000000000 : ℚ), 2⟩,
    ⟨(82965732513/250000000000 : ℚ), (1019057559/1250000000 : ℚ), (-320930204989/1000000000000 : ℚ), 2⟩,
    ⟨(169818807297/500000000000 : ℚ), (7074712749/10000000000 : ℚ), (-284757813987/1000000000000 : ℚ), 2⟩,
    ⟨(347606842537/1000000000000 : ℚ), (6153830591/10000000000 : ℚ), (-253125107327/1000000000000 : ℚ), 2⟩,
    ⟨(177875707657/500000000000 : ℚ), (1340605403/2500000000 : ℚ), (-11265099129/50000000000 : ℚ), 2⟩,
    ⟨(364051711933/1000000000000 : ℚ), (584826301/1250000000 : ℚ), (-40139825419/200000000000 : ℚ), 2⟩,
    ⟨(74497547251/200000000000 : ℚ), (255299193/625000000 : ℚ), (-89418410031/500000000000 : ℚ), 2⟩,
    ⟨(190519582579/500000000000 : ℚ), (1783335663/5000000000 : ℚ), (-79660757573/500000000000 : ℚ), 2⟩,
    ⟨(389685397499/1000000000000 : ℚ), (622520917/2000000000 : ℚ), (-70914030263/500000000000 : ℚ), 2⟩,
    ⟨(398405603749/1000000000000 : ℚ), (2713009421/10000000000 : ℚ), (-126086055487/1000000000000 : ℚ), 1⟩,
    ⟨(407178776167/1000000000000 : ℚ), (2359972553/10000000000 : ℚ), (-111869278501/1000000000000 : ℚ), 1⟩,
    ⟨(103995944853/250000000000 : ℚ), (2046920591/10000000000 : ℚ), (-98987420769/1000000000000 : ℚ), 1⟩,
    ⟨(424799401459/1000000000000 : ℚ), (353673161/2000000000 : ℚ), (-43639783193/500000000000 : ℚ), 1⟩,
    ⟨(13550137647/31250000000 : ℚ), (1519705347/10000000000 : ℚ), (-76609010713/1000000000000 : ℚ), 1⟩,
    ⟨(221188788561/500000000000 : ℚ), (259412319/2000000000 : ℚ), (-6685911129/100000000000 : ℚ), 1⟩,
    ⟨(112774445843/250000000000 : ℚ), (219430877/2000000000 : ℚ), (-57929942271/1000000000000 : ℚ), 1⟩,
    ⟨(229872007857/500000000000 : ℚ), (917198167/10000000000 : ℚ), (-49735580539/1000000000000 : ℚ), 1⟩,
    ⟨(58536930577/125000000000 : ℚ), (150963749/2000000000 : ℚ), (-21100944423/500000000000 : ℚ), 1⟩,
    ⟨(238365734469/500000000000 : ℚ), (151996387/2500000000 : ℚ), (-17632348661/500000000000 : ℚ), 1⟩,
    ⟨(242515882779/500000000000 : ℚ), (237478121/5000000000 : ℚ), (-28868301101/1000000000000 : ℚ), 1⟩,
    ⟨(246588169167/500000000000 : ℚ), (354231249/10000000000 : ℚ), (-5741053777/250000000000 : ℚ), 1⟩,
    ⟨(501145566277/1000000000000 : ℚ), (122258113/5000000000 : ℚ), (-8755067739/500000000000 : ℚ), 1⟩,
    ⟨(508920250819/1000000000000 : ℚ), (144691001/10000000000 : ℚ), (-12469071069/1000000000000 : ℚ), 1⟩,
    ⟨(32280103879/62500000000 : ℚ), (26891873/5000000000 : ℚ), (-7808612903/1000000000000 : ℚ), 1⟩,
    ⟨(52381158391/100000000000 : ℚ), (-29050569/10000000000 : ℚ), (-875079391/250000000000 : ℚ), 1⟩,
    ⟨(265446178967/500000000000 : ℚ), (-104548201/10000000000 : ℚ), (480814087/1000000000000 : ℚ), 1⟩,
    ⟨(537706925929/1000000000000 : ℚ), (-173351771/10000000000 : ℚ), (4156780347/1000000000000 : ℚ), 1⟩,
    ⟨(272119435503/500000000000 : ℚ), (-59005751/2500000000 : ℚ), (7546956133/1000000000000 : ℚ), 1⟩,
    ⟨(34404528571/62500000000 : ℚ), (-293053487/10000000000 : ℚ), (133355201/12500000000 : ℚ), 1⟩,
    ⟨(111278533413/200000000000 : ℚ), (-86218439/2500000000 : ℚ), (270724193/20000000000 : ℚ), 1⟩,
    ⟨(561985238487/1000000000000 : ℚ), (-195930507/5000000000 : ℚ), (505112469/31250000000 : ℚ), 1⟩,
    ⟨(56723669841/100000000000 : ℚ), (-43434567/1000000000 : ℚ), (9281130953/500000000000 : ℚ), 1⟩,
    ⟨(114426879121/200000000000 : ℚ), (-236308451/5000000000 : ℚ), (4148493369/200000000000 : ℚ), 1⟩,
    ⟨(576666531091/1000000000000 : ℚ), (-101385477/2000000000 : ℚ), (2839152933/125000000000 : ℚ), 1⟩,
    ⟨(290411093279/500000000000 : ℚ), (-537497311/10000000000 : ℚ), (24482411877/1000000000000 : ℚ), 1⟩,
    ⟨(292295675333/500000000000 : ℚ), (-2822589/50000000 : ℚ), (26056893343/1000000000000 : ℚ), 1⟩,
    ⟨(587964943169/1000000000000 : ℚ), (-588153799/10000000000 : ℚ), (1372130301/50000000000 : ℚ), 1⟩,
    ⟨(147733709197/250000000000 : ℚ), (-152136629/2500000000 : ℚ), (28644645037/1000000000000 : ℚ), 1⟩,
    ⟨(593493876789/1000000000000 : ℚ), (-625815473/10000000000 : ℚ), (3708416447/125000000000 : ℚ), 1⟩,
    ⟨(29781794911/50000000000 : ℚ), (-320030103/5000000000 : ℚ), (30514270003/1000000000000 : ℚ), 1⟩,
    ⟨(149338935191/250000000000 : ℚ), (-651361661/10000000000 : ℚ), (15594197677/500000000000 : ℚ), 1⟩,
    ⟨(59864926117/100000000000 : ℚ), (-41236457/625000000 : ℚ), (31692011459/1000000000000 : ℚ), 1⟩,
    ⟨(599513343233/1000000000000 : ℚ), (-66537203/1000000000 : ℚ), (32026820917/1000000000000 : ℚ), 1⟩,
    ⟨(119989181061/200000000000 : ℚ), (-133631743/2000000000 : ℚ), (16096973323/500000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-167126673/2500000000 : ℚ), (3221482433/100000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (42521143497/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control24.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control24.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate24
