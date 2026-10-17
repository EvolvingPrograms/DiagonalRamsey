import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate480
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57916950727/100000000000 : ℚ), (1524085362007/200000000 : ℚ), (-883075558280673/200000000000 : ℚ), 14⟩,
    ⟨(579435467207/1000000000000 : ℚ), (8434517766139/10000000000 : ℚ), (-245014423576347/500000000000 : ℚ), 11⟩,
    ⟨(579966746359/1000000000000 : ℚ), (3016638025993/10000000000 : ℚ), (-176001111694661/1000000000000 : ℚ), 9⟩,
    ⟨(58076206483/100000000000 : ℚ), (1525665912881/10000000000 : ℚ), (-89483489315449/1000000000000 : ℚ), 8⟩,
    ⟨(290909753313/500000000000 : ℚ), (45653976667/500000000 : ℚ), (-10775956267193/200000000000 : ℚ), 7⟩,
    ⟨(291568262139/500000000000 : ℚ), (75453281441/1250000000 : ℚ), (-35857513692993/1000000000000 : ℚ), 7⟩,
    ⟨(23388397799/40000000000 : ℚ), (426090394441/10000000000 : ℚ), (-1019693093059/40000000000 : ℚ), 6⟩,
    ⟨(586535978209/1000000000000 : ℚ), (315031528919/10000000000 : ℚ), (-2373678209347/125000000000 : ℚ), 6⟩,
    ⟨(294305112453/500000000000 : ℚ), (30132607241/1250000000 : ℚ), (-7321871578053/500000000000 : ℚ), 6⟩,
    ⟨(73865961003/125000000000 : ℚ), (189392690223/10000000000 : ℚ), (-5798477482971/500000000000 : ℚ), 5⟩,
    ⟨(593482784591/1000000000000 : ℚ), (151930950761/10000000000 : ℚ), (-2344691776753/250000000000 : ℚ), 5⟩,
    ⟨(149067339789/250000000000 : ℚ), (30985361251/2500000000 : ℚ), (-308558878671/40000000000 : ℚ), 5⟩,
    ⟨(599280698617/1000000000000 : ℚ), (102506471531/10000000000 : ℚ), (-6432819571843/1000000000000 : ℚ), 5⟩,
    ⟨(75313693549/125000000000 : ℚ), (85748790347/10000000000 : ℚ), (-1085199024861/200000000000 : ℚ), 4⟩,
    ⟨(605948129901/1000000000000 : ℚ), (36208229331/5000000000 : ℚ), (-4620524228351/1000000000000 : ℚ), 4⟩,
    ⟨(609588159299/1000000000000 : ℚ), (30824387709/5000000000 : ℚ), (-793236774521/200000000000 : ℚ), 4⟩,
    ⟨(153355216859/250000000000 : ℚ), (52838374767/10000000000 : ℚ), (-3427492408829/1000000000000 : ℚ), 4⟩,
    ⟨(77179627623/125000000000 : ℚ), (45546848741/10000000000 : ℚ), (-2978806491037/1000000000000 : ℚ), 4⟩,
    ⟨(24865077787/40000000000 : ℚ), (986285263/250000000 : ℚ), (-2601220276539/1000000000000 : ℚ), 4⟩,
    ⟨(312990272309/500000000000 : ℚ), (34310204969/10000000000 : ℚ), (-1140273846917/500000000000 : ℚ), 4⟩,
    ⟨(2462841143/3906250000 : ℚ), (14969586779/5000000000 : ℚ), (-100298803019/50000000000 : ℚ), 3⟩,
    ⟨(317568225699/500000000000 : ℚ), (26196277167/10000000000 : ℚ), (-1769147387597/1000000000000 : ℚ), 3⟩,
    ⟨(127983340171/200000000000 : ℚ), (5742629989/2500000000 : ℚ), (-781759434903/500000000000 : ℚ), 3⟩,
    ⟨(322408282469/500000000000 : ℚ), (806967003/400000000 : ℚ), (-691954822143/500000000000 : ℚ), 3⟩,
    ⟨(129964847889/200000000000 : ℚ), (4434297019/2500000000 : ℚ), (-613087149227/500000000000 : ℚ), 3⟩,
    ⟨(654927660451/1000000000000 : ℚ), (780154407/500000000 : ℚ), (-54348208889/50000000000 : ℚ), 3⟩,
    ⟨(330057266683/500000000000 : ℚ), (109807683/80000000 : ℚ), (-120443813921/125000000000 : ℚ), 3⟩,
    ⟨(665372362561/1000000000000 : ℚ), (301704399/250000000 : ℚ), (-426845855911/500000000000 : ℚ), 3⟩,
    ⟨(670688481463/1000000000000 : ℚ), (1324833877/1250000000 : ℚ), (-377766338939/500000000000 : ℚ), 3⟩,
    ⟨(676050083077/1000000000000 : ℚ), (4645813889/5000000000 : ℚ), (-16688189299/25000000000 : ℚ), 3⟩,
    ⟨(340722125417/500000000000 : ℚ), (2031363549/2500000000 : ℚ), (-588380022729/1000000000000 : ℚ), 3⟩,
    ⟨(686857989713/1000000000000 : ℚ), (3540993641/5000000000 : ℚ), (-258498199547/500000000000 : ℚ), 3⟩,
    ⟨(692278257541/1000000000000 : ℚ), (6145865913/10000000000 : ℚ), (-90489798033/200000000000 : ℚ), 3⟩,
    ⟨(34884599821/50000000000 : ℚ), (5304033179/10000000000 : ℚ), (-393946763719/1000000000000 : ℚ), 3⟩,
    ⟨(703086164177/1000000000000 : ℚ), (4545338621/10000000000 : ℚ), (-34081197097/100000000000 : ℚ), 3⟩,
    ⟨(708447765791/1000000000000 : ℚ), (193010907/500000000 : ℚ), (-36557662669/125000000000 : ℚ), 2⟩,
    ⟨(713763884693/1000000000000 : ℚ), (810108691/2500000000 : ℚ), (-248390604923/1000000000000 : ℚ), 2⟩,
    ⟨(22469428559/31250000000 : ℚ), (1339433721/5000000000 : ℚ), (-20816243243/100000000000 : ℚ), 2⟩,
    ⟨(724208586803/1000000000000 : ℚ), (2169337993/10000000000 : ℚ), (-171395814773/1000000000000 : ℚ), 2⟩,
    ⟨(729312007809/1000000000000 : ℚ), (1706468591/10000000000 : ℚ), (-68878919207/500000000000 : ℚ), 2⟩,
    ⟨(183579920579/250000000000 : ℚ), (1285563791/10000000000 : ℚ), (-26739165617/250000000000 : ℚ), 2⟩,
    ⟨(739219546399/1000000000000 : ℚ), (18050249/200000000 : ℚ), (-78735709013/1000000000000 : ℚ), 2⟩,
    ⟨(46499987241/62500000000 : ℚ), (553705811/10000000000 : ℚ), (-52868804811/1000000000000 : ℚ), 2⟩,
    ⟨(374324457323/500000000000 : ℚ), (29496103/1250000000 : ℚ), (-583122091/20000000000 : ℚ), 2⟩,
    ⟨(188288925659/250000000000 : ℚ), (-6687207/1250000000 : ℚ), (-1855164127/250000000000 : ℚ), 2⟩,
    ⟨(757509302579/1000000000000 : ℚ), (-63433137/2000000000 : ℚ), (6247250183/500000000000 : ℚ), 2⟩,
    ⟨(76169922627/100000000000 : ℚ), (-557221589/10000000000 : ℚ), (15364398851/500000000000 : ℚ), 2⟩,
    ⟨(382857689909/500000000000 : ℚ), (-96950139/1250000000 : ℚ), (47406230987/1000000000000 : ℚ), 2⟩,
    ⟨(153909617591/200000000000 : ℚ), (-487009683/5000000000 : ℚ), (62637144599/1000000000000 : ℚ), 2⟩,
    ⟨(773188117353/1000000000000 : ℚ), (-576998207/5000000000 : ℚ), (76519757563/1000000000000 : ℚ), 2⟩,
    ⟨(388313349431/500000000000 : ℚ), (-1316879163/10000000000 : ℚ), (22285367407/250000000000 : ℚ), 2⟩,
    ⟨(779855548637/1000000000000 : ℚ), (-73193007/500000000 : ℚ), (20115996483/200000000000 : ℚ), 2⟩,
    ⟨(391433444049/500000000000 : ℚ), (-1595993613/10000000000 : ℚ), (13863032839/125000000000 : ℚ), 2⟩,
    ⟨(785653462663/1000000000000 : ℚ), (-342841889/2000000000 : ℚ), (7510960699/62500000000 : ℚ), 2⟩,
    ⟨(78820855923/100000000000 : ℚ), (-1819324993/10000000000 : ℚ), (128447174189/1000000000000 : ℚ), 2⟩,
    ⟨(197631505587/250000000000 : ℚ), (-1912055331/10000000000 : ℚ), (135766956713/1000000000000 : ℚ), 2⟩,
    ⟨(158520053809/200000000000 : ℚ), (-398604401/2000000000 : ℚ), (71087973817/500000000000 : ℚ), 2⟩,
    ⟨(794426302279/1000000000000 : ℚ), (-412552101/2000000000 : ℚ), (147709768693/1000000000000 : ℚ), 2⟩,
    ⟨(24874991343/31250000000 : ℚ), (-2121726603/10000000000 : ℚ), (38099704007/250000000000 : ℚ), 2⟩,
    ⟨(199329185157/250000000000 : ℚ), (-2170301681/10000000000 : ℚ), (39067145477/250000000000 : ℚ), 2⟩,
    ⟨(99796772803/125000000000 : ℚ), (-552199283/2500000000 : ℚ), (159339920029/1000000000000 : ℚ), 2⟩,
    ⟨(159833900179/200000000000 : ℚ), (-447491587/2000000000 : ℚ), (161629262647/1000000000000 : ℚ), 2⟩,
    ⟨(799700780047/1000000000000 : ℚ), (-2256465437/10000000000 : ℚ), (20393598581/125000000000 : ℚ), 2⟩,
    ⟨(799966739983/1000000000000 : ℚ), (-566484853/2500000000 : ℚ), (81953274529/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-2267122267/10000000000 : ℚ), (41000293883/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (141224056261/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control480.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control480.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate480
