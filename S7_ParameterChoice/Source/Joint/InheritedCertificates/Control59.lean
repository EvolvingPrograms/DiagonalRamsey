import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate59
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(318314885963/1000000000000 : ℚ), (3527142810481/1000000000 : ℚ), (-1124153340497223/1000000000000 : ℚ), 12⟩,
    ⟨(318774573153/1000000000000 : ℚ), (3883900775839/10000000000 : ℚ), (-124776194159929/1000000000000 : ℚ), 9⟩,
    ⟨(319692840107/1000000000000 : ℚ), (1378276922339/10000000000 : ℚ), (-44826118942409/1000000000000 : ℚ), 8⟩,
    ⟨(321067474639/1000000000000 : ℚ), (34521264531/500000000 : ℚ), (-11399589362217/500000000000 : ℚ), 7⟩,
    ⟨(161447582567/500000000000 : ℚ), (204385579729/5000000000 : ℚ), (-13734728367943/1000000000000 : ℚ), 6⟩,
    ⟨(13006860341/40000000000 : ℚ), (33388251581/1250000000 : ℚ), (-4573229410389/500000000000 : ℚ), 5⟩,
    ⟨(163945510451/500000000000 : ℚ), (37251126073/2000000000 : ℚ), (-650766726177/100000000000 : ℚ), 5⟩,
    ⟨(165523575361/500000000000 : ℚ), (67993193493/5000000000 : ℚ), (-194088442549/40000000000 : ℚ), 5⟩,
    ⟨(334632294591/1000000000000 : ℚ), (25683828337/2500000000 : ℚ), (-936495979693/250000000000 : ℚ), 4⟩,
    ⟨(338637815583/1000000000000 : ℚ), (79687405777/10000000000 : ℚ), (-118818236197/40000000000 : ℚ), 4⟩,
    ⟨(343054064049/1000000000000 : ℚ), (63116435209/10000000000 : ℚ), (-1202943986821/500000000000 : ℚ), 4⟩,
    ⟨(347870400857/1000000000000 : ℚ), (50847067359/10000000000 : ℚ), (-991104608853/500000000000 : ℚ), 3⟩,
    ⟨(44134402879/125000000000 : ℚ), (10385281049/2500000000 : ℚ), (-165619786141/100000000000 : ℚ), 3⟩,
    ⟨(3586559917/10000000000 : ℚ), (34339420507/10000000000 : ℚ), (-1400018817059/1000000000000 : ℚ), 3⟩,
    ⟨(364599262301/1000000000000 : ℚ), (28670296697/10000000000 : ℚ), (-597544665129/500000000000 : ℚ), 3⟩,
    ⟨(23180669811/62500000000 : ℚ), (3017720503/1250000000 : ℚ), (-128577416779/125000000000 : ℚ), 3⟩,
    ⟨(18875759953/50000000000 : ℚ), (10239005811/5000000000 : ℚ), (-445786091129/500000000000 : ℚ), 3⟩,
    ⟨(384456749593/1000000000000 : ℚ), (17480594779/10000000000 : ℚ), (-777416386709/1000000000000 : ℚ), 3⟩,
    ⟨(15667945831/40000000000 : ℚ), (150039253/100000000 : ℚ), (-85167024191/125000000000 : ℚ), 2⟩,
    ⟨(399223441241/1000000000000 : ℚ), (12939347289/10000000000 : ℚ), (-299858945981/500000000000 : ℚ), 2⟩,
    ⟨(407013008101/1000000000000 : ℚ), (11204528479/10000000000 : ℚ), (-529807036639/1000000000000 : ℚ), 2⟩,
    ⟨(415048580607/1000000000000 : ℚ), (4868116887/5000000000 : ℚ), (-9389490961/20000000000 : ℚ), 2⟩,
    ⟨(423310800359/1000000000000 : ℚ), (1697060769/2000000000 : ℚ), (-13032933957/31250000000 : ℚ), 2⟩,
    ⟨(431779762947/1000000000000 : ℚ), (296524119/400000000 : ℚ), (-37122564289/100000000000 : ℚ), 2⟩,
    ⟨(220217532949/500000000000 : ℚ), (6488965349/10000000000 : ℚ), (-330934394183/1000000000000 : ℚ), 2⟩,
    ⟨(44925585783/100000000000 : ℚ), (711041501/1250000000 : ℚ), (-295327910601/1000000000000 : ℚ), 2⟩,
    ⟨(229110444341/500000000000 : ℚ), (4991373401/10000000000 : ℚ), (-65928024391/250000000000 : ℚ), 2⟩,
    ⟨(467308560909/1000000000000 : ℚ), (4381958449/10000000000 : ℚ), (-117758592179/500000000000 : ℚ), 2⟩,
    ⟨(476496981513/1000000000000 : ℚ), (961718561/2500000000 : ℚ), (-210272058121/1000000000000 : ℚ), 2⟩,
    ⟨(485764014783/1000000000000 : ℚ), (3375229351/10000000000 : ℚ), (-187584576049/1000000000000 : ℚ), 2⟩,
    ⟨(495087335627/1000000000000 : ℚ), (2957993149/10000000000 : ℚ), (-83563156953/500000000000 : ℚ), 2⟩,
    ⟨(100888896669/200000000000 : ℚ), (40431829/156250000 : ℚ), (-148620642587/1000000000000 : ℚ), 2⟩,
    ⟨(513812915751/1000000000000 : ℚ), (1128926419/5000000000 : ℚ), (-131833328949/1000000000000 : ℚ), 2⟩,
    ⟨(523170063469/1000000000000 : ℚ), (490832439/2500000000 : ℚ), (-116565066343/1000000000000 : ℚ), 2⟩,
    ⟨(66561673039/125000000000 : ℚ), (424894257/2500000000 : ℚ), (-51322747751/500000000000 : ℚ), 2⟩,
    ⟨(541760417583/1000000000000 : ℚ), (1462781461/10000000000 : ℚ), (-89928384511/1000000000000 : ℚ), 2⟩,
    ⟨(550948838187/1000000000000 : ℚ), (312423151/2500000000 : ℚ), (-78287719727/1000000000000 : ℚ), 2⟩,
    ⟨(280018255207/500000000000 : ℚ), (1057529553/10000000000 : ℚ), (-67614513493/1000000000000 : ℚ), 2⟩,
    ⟨(284500770633/500000000000 : ℚ), (441952473/5000000000 : ℚ), (-11562837017/200000000000 : ℚ), 2⟩,
    ⟨(288911166599/500000000000 : ℚ), (181690663/2500000000 : ℚ), (-48804398343/1000000000000 : ℚ), 1⟩,
    ⟨(586477636149/1000000000000 : ℚ), (116865293/2000000000 : ℚ), (-2025663473/50000000000 : ℚ), 1⟩,
    ⟨(594946598737/1000000000000 : ℚ), (227528829/5000000000 : ℚ), (-32877872363/1000000000000 : ℚ), 1⟩,
    ⟨(603208818489/1000000000000 : ℚ), (337619739/10000000000 : ℚ), (-12921494393/500000000000 : ℚ), 1⟩,
    ⟨(122248878199/200000000000 : ℚ), (230849071/10000000000 : ℚ), (-19360058117/1000000000000 : ℚ), 1⟩,
    ⟨(123806791571/200000000000 : ℚ), (66865143/5000000000 : ℚ), (-2677258159/200000000000 : ℚ), 1⟩,
    ⟨(626558753321/1000000000000 : ℚ), (45375657/10000000000 : ℚ), (-7883919021/1000000000000 : ℚ), 1⟩,
    ⟨(633800649503/1000000000000 : ℚ), (-34992269/10000000000 : ℚ), (-2819560559/1000000000000 : ℚ), 1⟩,
    ⟨(160185550009/250000000000 : ℚ), (-108055337/10000000000 : ℚ), (73452941/40000000000 : ℚ), 1⟩,
    ⟨(16184167053/25000000000 : ℚ), (-174412191/10000000000 : ℚ), (3054945499/500000000000 : ℚ), 1⟩,
    ⟨(326829068397/500000000000 : ℚ), (-29323599/1250000000 : ℚ), (10024313073/1000000000000 : ℚ), 1⟩,
    ⟨(164900351849/250000000000 : ℚ), (-72261841/2500000000 : ℚ), (2720022731/200000000000 : ℚ), 1⟩,
    ⟨(10393471501/15625000000 : ℚ), (-338193999/10000000000 : ℚ), (8427729693/500000000000 : ℚ), 1⟩,
    ⟨(670386998239/1000000000000 : ℚ), (-382385129/10000000000 : ℚ), (1237900491/62500000000 : ℚ), 1⟩,
    ⟨(675203335047/1000000000000 : ℚ), (-210966527/5000000000 : ℚ), (22467122529/1000000000000 : ℚ), 1⟩,
    ⟨(679619583513/1000000000000 : ℚ), (-457110633/10000000000 : ℚ), (24850054689/1000000000000 : ℚ), 1⟩,
    ⟨(136725020901/200000000000 : ℚ), (-97631057/2000000000 : ℚ), (26966100667/1000000000000 : ℚ), 1⟩,
    ⟨(343605124187/500000000000 : ℚ), (-8051131/156250000 : ℚ), (28824736043/1000000000000 : ℚ), 1⟩,
    ⟨(345183189097/500000000000 : ℚ), (-538638117/10000000000 : ℚ), (118883313/3906250000 : ℚ), 1⟩,
    ⟨(693085890571/1000000000000 : ℚ), (-558401899/10000000000 : ℚ), (3975154117/125000000000 : ℚ), 1⟩,
    ⟨(347681116981/500000000000 : ℚ), (-574688371/10000000000 : ℚ), (8232968669/250000000000 : ℚ), 1⟩,
    ⟨(697189924457/1000000000000 : ℚ), (-587599041/10000000000 : ℚ), (8457702877/250000000000 : ℚ), 1⟩,
    ⟨(698564558989/1000000000000 : ℚ), (-298606803/5000000000 : ℚ), (8625447293/250000000000 : ℚ), 1⟩,
    ⟨(699482825943/1000000000000 : ℚ), (-603590971/10000000000 : ℚ), (34947581799/1000000000000 : ℚ), 1⟩,
    ⟨(699942513133/1000000000000 : ℚ), (-606769999/10000000000 : ℚ), (1373829/39062500 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-303583463/5000000000 : ℚ), (549965721/15625000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (5134987213/25000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control59.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control59.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate59
