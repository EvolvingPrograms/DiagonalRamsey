import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate545
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(584850915749/1000000000000 : ℚ), (232724373587/31250000 : ℚ), (-4357261115427519/1000000000000 : ℚ), 14⟩,
    ⟨(585110033211/1000000000000 : ℚ), (8243452915147/10000000000 : ℚ), (-483574425035133/1000000000000 : ℚ), 11⟩,
    ⟨(585627643899/1000000000000 : ℚ), (1474337110327/5000000000 : ℚ), (-173679665135231/1000000000000 : ℚ), 9⟩,
    ⟨(293201250421/500000000000 : ℚ), (298304062507/2000000000 : ℚ), (-22075178829253/250000000000 : ℚ), 8⟩,
    ⟨(587432737343/1000000000000 : ℚ), (892795049803/10000000000 : ℚ), (-53165591519187/1000000000000 : ℚ), 8⟩,
    ⟨(588715871471/1000000000000 : ℚ), (590322167581/10000000000 : ℚ), (-1415220596657/40000000000 : ℚ), 7⟩,
    ⟨(147562203011/250000000000 : ℚ), (416775950001/10000000000 : ℚ), (-25151742895809/1000000000000 : ℚ), 7⟩,
    ⟨(23681114643/40000000000 : ℚ), (154100897779/5000000000 : ℚ), (-9367211531867/500000000000 : ℚ), 6⟩,
    ⟨(118809749533/200000000000 : ℚ), (235877677509/10000000000 : ℚ), (-1805741336041/125000000000 : ℚ), 6⟩,
    ⟨(119261317667/200000000000 : ℚ), (11584566677/625000000 : ℚ), (-5719618851559/500000000000 : ℚ), 6⟩,
    ⟨(149698987187/250000000000 : ℚ), (29743045491/2000000000 : ℚ), (-9250239919577/1000000000000 : ℚ), 5⟩,
    ⟨(601510831817/1000000000000 : ℚ), (379178289/31250000 : ℚ), (-7607351970773/1000000000000 : ℚ), 5⟩,
    ⟨(604444697151/1000000000000 : ℚ), (50183378333/5000000000 : ℚ), (-6343058185191/1000000000000 : ℚ), 5⟩,
    ⟨(607590476811/1000000000000 : ℚ), (41984725899/5000000000 : ℚ), (-2674741334047/500000000000 : ℚ), 5⟩,
    ⟨(610940592339/1000000000000 : ℚ), (70921396921/10000000000 : ℚ), (-4554611642239/1000000000000 : ℚ), 4⟩,
    ⟨(614486973013/1000000000000 : ℚ), (60381247277/10000000000 : ℚ), (-1954441636299/500000000000 : ℚ), 4⟩,
    ⟨(618221075291/1000000000000 : ℚ), (6469408903/1250000000 : ℚ), (-337728306471/100000000000 : ℚ), 4⟩,
    ⟨(311066951697/500000000000 : ℚ), (44614882657/10000000000 : ℚ), (-2934505330857/1000000000000 : ℚ), 4⟩,
    ⟨(2446156371/3906250000 : ℚ), (38644510589/10000000000 : ℚ), (-512378639581/200000000000 : ℚ), 4⟩,
    ⟨(315228811917/500000000000 : ℚ), (16803846839/5000000000 : ℚ), (-1122723715061/500000000000 : ℚ), 4⟩,
    ⟨(1587121159/2500000000 : ℚ), (29324467551/10000000000 : ℚ), (-987248881581/500000000000 : ℚ), 4⟩,
    ⟨(127875594471/200000000000 : ℚ), (25655943593/10000000000 : ℚ), (-1740796299783/1000000000000 : ℚ), 3⟩,
    ⟨(322017619059/500000000000 : ℚ), (22493580239/10000000000 : ℚ), (-76894320693/50000000000 : ℚ), 3⟩,
    ⟨(5190472329/8000000000 : ℚ), (617236993/312500000 : ℚ), (-340163868611/250000000000 : ℚ), 3⟩,
    ⟨(653687880869/1000000000000 : ℚ), (8680718839/5000000000 : ℚ), (-150626581133/125000000000 : ℚ), 3⟩,
    ⟨(164665000949/250000000000 : ℚ), (15267905753/10000000000 : ℚ), (-1067653353427/1000000000000 : ℚ), 3⟩,
    ⟨(663713431627/1000000000000 : ℚ), (1342607243/1000000000 : ℚ), (-945884704481/1000000000000 : ℚ), 3⟩,
    ⟨(167208997553/250000000000 : ℚ), (2949780959/2500000000 : ℚ), (-33499782709/40000000000 : ℚ), 3⟩,
    ⟨(337007669429/500000000000 : ℚ), (10356665237/10000000000 : ℚ), (-740652184781/1000000000000 : ℚ), 3⟩,
    ⟨(679239000061/1000000000000 : ℚ), (36293727/40000000 : ℚ), (-163457992277/250000000000 : ℚ), 3⟩,
    ⟨(171123597391/250000000000 : ℚ), (7928290771/10000000000 : ℚ), (-287877248249/500000000000 : ℚ), 3⟩,
    ⟨(43110552917/62500000000 : ℚ), (1725865783/2500000000 : ℚ), (-63167549467/125000000000 : ℚ), 3⟩,
    ⟨(695049664757/1000000000000 : ℚ), (598390991/1000000000 : ℚ), (-88334802943/200000000000 : ℚ), 3⟩,
    ⟨(140064824373/200000000000 : ℚ), (5156845881/10000000000 : ℚ), (-11999205171/31250000000 : ℚ), 3⟩,
    ⟨(88197438921/125000000000 : ℚ), (551418829/1250000000 : ℚ), (-165786519849/500000000000 : ℚ), 3⟩,
    ⟨(710803172571/1000000000000 : ℚ), (3738055597/10000000000 : ℚ), (-283893612733/1000000000000 : ℚ), 3⟩,
    ⟨(715982521217/1000000000000 : ℚ), (1564445303/5000000000 : ℚ), (-240438570851/1000000000000 : ℚ), 3⟩,
    ⟨(360552539901/500000000000 : ℚ), (257687737/1000000000 : ℚ), (-100388008123/500000000000 : ℚ), 3⟩,
    ⟨(726158507633/1000000000000 : ℚ), (1037980143/5000000000 : ℚ), (-164529784593/1000000000000 : ℚ), 2⟩,
    ⟨(4569566441/6250000000 : ℚ), (1620867087/10000000000 : ℚ), (-16421391673/125000000000 : ℚ), 2⟩,
    ⟨(736009470303/1000000000000 : ℚ), (120699349/1000000000 : ℚ), (-50505926861/500000000000 : ℚ), 2⟩,
    ⟨(740783273311/1000000000000 : ℚ), (415153647/5000000000 : ℚ), (-73198539559/1000000000000 : ℚ), 2⟩,
    ⟨(745440539073/1000000000000 : ℚ), (19490731/400000000 : ℚ), (-47707794963/1000000000000 : ℚ), 2⟩,
    ⟨(749970047829/1000000000000 : ℚ), (34952207/2000000000 : ℚ), (-24342214493/1000000000000 : ℚ), 2⟩,
    ⟨(150872177519/200000000000 : ℚ), (-109961531/10000000000 : ℚ), (-731748717/250000000000 : ℚ), 2⟩,
    ⟨(758602480453/1000000000000 : ℚ), (-369325969/10000000000 : ℚ), (8346463399/500000000000 : ℚ), 2⟩,
    ⟨(152536921607/200000000000 : ℚ), (-302739363/5000000000 : ℚ), (17327650771/500000000000 : ℚ), 2⟩,
    ⟨(383298718069/500000000000 : ℚ), (-820320527/10000000000 : ℚ), (12770658093/250000000000 : ℚ), 2⟩,
    ⟨(48145721151/62500000000 : ℚ), (-1015535679/10000000000 : ℚ), (66083935211/1000000000000 : ℚ), 2⟩,
    ⟨(77387791909/100000000000 : ℚ), (-596308551/5000000000 : ℚ), (9969530437/125000000000 : ℚ), 2⟩,
    ⟨(388614017309/500000000000 : ℚ), (-338221941/2500000000 : ℚ), (92185897721/1000000000000 : ℚ), 2⟩,
    ⟨(390186907139/500000000000 : ℚ), (-299503813/2000000000 : ℚ), (103449651943/1000000000000 : ℚ), 2⟩,
    ⟨(195826919903/250000000000 : ℚ), (-1627546627/10000000000 : ℚ), (56807812373/500000000000 : ℚ), 2⟩,
    ⟨(786022562681/1000000000000 : ℚ), (-174388387/1000000000 : ℚ), (490976471/4000000000 : ℚ), 2⟩,
    ⟨(394255961547/500000000000 : ℚ), (-369466737/2000000000 : ℚ), (8180520009/62500000000 : ℚ), 2⟩,
    ⟨(197692440941/250000000000 : ℚ), (-969299231/5000000000 : ℚ), (27618982929/200000000000 : ℚ), 2⟩,
    ⟨(396395322677/500000000000 : ℚ), (-2018288687/10000000000 : ℚ), (72202298871/500000000000 : ℚ), 2⟩,
    ⟨(158913939877/200000000000 : ℚ), (-1043465141/5000000000 : ℚ), (149852524351/1000000000000 : ℚ), 2⟩,
    ⟨(398051319979/500000000000 : ℚ), (-1072485421/5000000000 : ℚ), (9654292943/62500000000 : ℚ), 2⟩,
    ⟨(398692887043/500000000000 : ℚ), (-2192784873/10000000000 : ℚ), (158278234907/1000000000000 : ℚ), 2⟩,
    ⟨(798416010587/1000000000000 : ℚ), (-2230678131/10000000000 : ℚ), (161301737603/1000000000000 : ℚ), 2⟩,
    ⟨(79919086753/100000000000 : ℚ), (-1129445569/5000000000 : ℚ), (81777700347/500000000000 : ℚ), 2⟩,
    ⟨(799708478217/1000000000000 : ℚ), (-455520387/2000000000 : ℚ), (41262808579/250000000000 : ℚ), 2⟩,
    ⟨(799967595679/1000000000000 : ℚ), (-2286928103/10000000000 : ℚ), (82898588313/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-2288092507/10000000000 : ℚ), (3317806541/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (6128106443/40000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control545.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control545.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate545
