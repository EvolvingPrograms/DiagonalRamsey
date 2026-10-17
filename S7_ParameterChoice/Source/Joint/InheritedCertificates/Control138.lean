import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate138
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(354974692473/1000000000000 : ℚ), (54098232417327/10000000000 : ℚ), (-1921777900016479/1000000000000 : ℚ), 13⟩,
    ⟨(177634895867/500000000000 : ℚ), (5975555346881/10000000000 : ℚ), (-213283367956987/1000000000000 : ℚ), 10⟩,
    ⟨(44482409917/125000000000 : ℚ), (2130491358981/10000000000 : ℚ), (-76603829219347/1000000000000 : ℚ), 8⟩,
    ⟨(22296358447/62500000000 : ℚ), (1073325208163/10000000000 : ℚ), (-38947253618099/1000000000000 : ℚ), 7⟩,
    ⟨(357915033269/1000000000000 : ℚ), (319765111253/5000000000 : ℚ), (-4690151157429/200000000000 : ℚ), 7⟩,
    ⟨(359376347109/1000000000000 : ℚ), (84150370663/2000000000 : ℚ), (-3901622756789/250000000000 : ℚ), 6⟩,
    ⟨(180561078119/500000000000 : ℚ), (73870835539/2500000000 : ℚ), (-5547457777263/500000000000 : ℚ), 6⟩,
    ⟨(7262965097/20000000000 : ℚ), (217299486811/10000000000 : ℚ), (-1652871272641/200000000000 : ℚ), 5⟩,
    ⟨(73089952379/200000000000 : ℚ), (165359588717/10000000000 : ℚ), (-6372688556621/1000000000000 : ℚ), 5⟩,
    ⟨(184010566421/500000000000 : ℚ), (8073970363/625000000 : ℚ), (-5046328181393/1000000000000 : ℚ), 5⟩,
    ⟨(46357021629/125000000000 : ℚ), (103035895319/10000000000 : ℚ), (-4080580333671/1000000000000 : ℚ), 4⟩,
    ⟨(186974026303/500000000000 : ℚ), (41782482513/5000000000 : ℚ), (-1677830397063/500000000000 : ℚ), 4⟩,
    ⟨(188644661477/500000000000 : ℚ), (34353235393/5000000000 : ℚ), (-2797685459589/1000000000000 : ℚ), 4⟩,
    ⟨(47608991833/125000000000 : ℚ), (57133291209/10000000000 : ℚ), (-2359074498903/1000000000000 : ℚ), 4⟩,
    ⟨(384687256911/1000000000000 : ℚ), (2997569799/625000000 : ℚ), (-2008065216477/1000000000000 : ℚ), 4⟩,
    ⟨(388726098249/1000000000000 : ℚ), (20291283727/5000000000 : ℚ), (-861398751757/500000000000 : ℚ), 3⟩,
    ⟨(78595745751/200000000000 : ℚ), (6913897309/2000000000 : ℚ), (-1487827527609/1000000000000 : ℚ), 3⟩,
    ⟨(39743490347/100000000000 : ℚ), (14806590561/5000000000 : ℚ), (-129199371317/100000000000 : ℚ), 3⟩,
    ⟨(201041943539/500000000000 : ℚ), (25486660871/10000000000 : ℚ), (-35220848289/31250000000 : ℚ), 3⟩,
    ⟨(101728619943/250000000000 : ℚ), (22020088603/10000000000 : ℚ), (-986873373521/1000000000000 : ℚ), 3⟩,
    ⟨(411915044231/1000000000000 : ℚ), (19084414539/10000000000 : ℚ), (-173341282847/200000000000 : ℚ), 3⟩,
    ⟨(83414706731/200000000000 : ℚ), (8290110213/5000000000 : ℚ), (-762928898531/1000000000000 : ℚ), 3⟩,
    ⟨(422377520793/1000000000000 : ℚ), (14429961969/10000000000 : ℚ), (-8408671661/12500000000 : ℚ), 3⟩,
    ⟨(3422513823/8000000000 : ℚ), (3928899/3125000 : ℚ), (-148436707217/250000000000 : ℚ), 3⟩,
    ⟨(216685278699/500000000000 : ℚ), (2191806561/2000000000 : ℚ), (-52428499833/100000000000 : ℚ), 3⟩,
    ⟨(109758280919/250000000000 : ℚ), (955044257/1000000000 : ℚ), (-462852060943/1000000000000 : ℚ), 2⟩,
    ⟨(111197071273/250000000000 : ℚ), (415746389/500000000 : ℚ), (-408261854941/1000000000000 : ℚ), 2⟩,
    ⟨(225311088479/500000000000 : ℚ), (7226519077/10000000000 : ℚ), (-359540474429/1000000000000 : ℚ), 2⟩,
    ⟨(456520744917/1000000000000 : ℚ), (3131921721/5000000000 : ℚ), (-31588243289/100000000000 : ℚ), 2⟩,
    ⟨(462469778803/1000000000000 : ℚ), (1352298903/2500000000 : ℚ), (-276617044467/1000000000000 : ℚ), 2⟩,
    ⟨(468454946871/1000000000000 : ℚ), (1161955021/2500000000 : ℚ), (-241182387027/1000000000000 : ℚ), 2⟩,
    ⟨(59307728791/125000000000 : ℚ), (3967350967/10000000000 : ℚ), (-209104955043/1000000000000 : ℚ), 2⟩,
    ⟨(240237979033/500000000000 : ℚ), (3357371317/10000000000 : ℚ), (-17998362279/100000000000 : ℚ), 2⟩,
    ⟨(486482841523/1000000000000 : ℚ), (87783243/312500000 : ℚ), (-153476905169/1000000000000 : ℚ), 2⟩,
    ⟨(492468009591/1000000000000 : ℚ), (231493159/1000000000 : ℚ), (-64646381637/500000000000 : ℚ), 2⟩,
    ⟨(498417043477/1000000000000 : ℚ), (1868574321/10000000000 : ℚ), (-5359019493/50000000000 : ℚ), 2⟩,
    ⟨(126078902859/250000000000 : ℚ), (732253193/5000000000 : ℚ), (-86923546797/1000000000000 : ℚ), 2⟩,
    ⟨(255074751651/500000000000 : ℚ), (1098009379/10000000000 : ℚ), (-17083782163/250000000000 : ℚ), 2⟩,
    ⟨(257952332359/500000000000 : ℚ), (382505609/5000000000 : ℚ), (-25626350507/500000000000 : ℚ), 2⟩,
    ⟨(521567230997/1000000000000 : ℚ), (461986729/10000000000 : ℚ), (-35534818931/1000000000000 : ℚ), 2⟩,
    ⟨(527123560519/1000000000000 : ℚ), (23234433/1250000000 : ℚ), (-21057973371/1000000000000 : ℚ), 2⟩,
    ⟨(532560267601/1000000000000 : ℚ), (-65986537/10000000000 : ℚ), (-7714047423/1000000000000 : ℚ), 2⟩,
    ⟨(537864254739/1000000000000 : ℚ), (-18495229/625000000 : ℚ), (2295907091/500000000000 : ℚ), 2⟩,
    ⟨(135755686041/250000000000 : ℚ), (-505968391/10000000000 : ℚ), (15942995473/1000000000000 : ℚ), 2⟩,
    ⟨(274011654311/500000000000 : ℚ), (-139580267/2000000000 : ℚ), (66032303/2500000000 : ℚ), 2⟩,
    ⟨(138213475329/250000000000 : ℚ), (-174657007/2000000000 : ℚ), (18033168423/500000000000 : ℚ), 2⟩,
    ⟨(22300115397/40000000000 : ℚ), (-516746273/5000000000 : ℚ), (5620049773/125000000000 : ℚ), 2⟩,
    ⟨(14048976491/25000000000 : ℚ), (-235946341/2000000000 : ℚ), (53145600401/1000000000000 : ℚ), 2⟩,
    ⟨(283105845073/500000000000 : ℚ), (-52522631/400000000 : ℚ), (15166643051/250000000000 : ℚ), 2⟩,
    ⟨(570250531483/1000000000000 : ℚ), (-1434431071/10000000000 : ℚ), (67562758811/1000000000000 : ℚ), 2⟩,
    ⟨(57406585373/100000000000 : ℚ), (-308930403/2000000000 : ℚ), (73869007761/1000000000000 : ℚ), 2⟩,
    ⟨(3610302909/6250000000 : ℚ), (-411113509/2500000000 : ℚ), (39808037331/500000000000 : ℚ), 2⟩,
    ⟨(580989735789/1000000000000 : ℚ), (-1734474629/10000000000 : ℚ), (84831059513/1000000000000 : ℚ), 2⟩,
    ⟨(292040807681/500000000000 : ℚ), (-363054567/2000000000 : ℚ), (89537782737/1000000000000 : ℚ), 2⟩,
    ⟨(586916655553/1000000000000 : ℚ), (-1887337381/10000000000 : ℚ), (18751422193/200000000000 : ℚ), 2⟩,
    ⟨(589488026499/1000000000000 : ℚ), (-1951093647/10000000000 : ℚ), (48753618677/500000000000 : ℚ), 2⟩,
    ⟨(73973691693/125000000000 : ℚ), (-1003454811/5000000000 : ℚ), (100803923009/1000000000000 : ℚ), 2⟩,
    ⟨(148453908039/250000000000 : ℚ), (-128443811/625000000 : ℚ), (20732140851/200000000000 : ℚ), 2⟩,
    ⟨(119112288257/200000000000 : ℚ), (-1047967669/5000000000 : ℚ), (53044533887/500000000000 : ℚ), 2⟩,
    ⟨(4776182041/8000000000 : ℚ), (-2129635893/10000000000 : ℚ), (27024649993/250000000000 : ℚ), 2⟩,
    ⟨(299098026621/500000000000 : ℚ), (-1078192169/5000000000 : ℚ), (13712138691/125000000000 : ℚ), 2⟩,
    ⟨(299539254529/500000000000 : ℚ), (-272040409/1250000000 : ℚ), (110890727343/1000000000000 : ℚ), 2⟩,
    ⟨(599667996661/1000000000000 : ℚ), (-2189558057/10000000000 : ℚ), (55841992309/500000000000 : ℚ), 2⟩,
    ⟨(299981547961/500000000000 : ℚ), (-2196158187/10000000000 : ℚ), (11207987061/100000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-549245599/2500000000 : ℚ), (112129321611/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (105622558741/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control138.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control138.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate138
