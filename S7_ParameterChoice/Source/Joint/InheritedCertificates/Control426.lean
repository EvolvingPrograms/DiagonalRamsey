import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate426
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(229866779961/500000000000 : ℚ), (57173753966709/10000000000 : ℚ), (-1314983875581143/500000000000 : ℚ), 14⟩,
    ⟨(230011463891/500000000000 : ℚ), (632214881489/1000000000 : ℚ), (-36484756790593/125000000000 : ℚ), 10⟩,
    ⟨(46060096639/100000000000 : ℚ), (564455749301/2500000000 : ℚ), (-4193237440869/40000000000 : ℚ), 9⟩,
    ⟨(288416427/625000000 : ℚ), (284953360963/2500000000 : ℚ), (-26648810646667/500000000000 : ℚ), 8⟩,
    ⟨(462616793589/1000000000000 : ℚ), (136146591297/2000000000 : ℚ), (-32090580318173/1000000000000 : ℚ), 7⟩,
    ⟨(3712397807/8000000000 : ℚ), (448997265147/10000000000 : ℚ), (-1334731358137/62500000000 : ℚ), 7⟩,
    ⟨(465761627999/1000000000000 : ℚ), (316167999667/10000000000 : ℚ), (-15181653125977/1000000000000 : ℚ), 6⟩,
    ⟨(2923427349/6250000000 : ℚ), (23316237639/1000000000 : ℚ), (-5654053367519/500000000000 : ℚ), 6⟩,
    ⟨(117501295787/250000000000 : ℚ), (88970901489/5000000000 : ℚ), (-8719459430743/1000000000000 : ℚ), 6⟩,
    ⟨(18901064523/40000000000 : ℚ), (8713807663/625000000 : ℚ), (-6904459668547/1000000000000 : ℚ), 5⟩,
    ⟨(237653295639/500000000000 : ℚ), (111531322089/10000000000 : ℚ), (-5582982083613/1000000000000 : ℚ), 5⟩,
    ⟨(7474037821/15625000000 : ℚ), (18145095551/2000000000 : ℚ), (-57388779259/12500000000 : ℚ), 5⟩,
    ⟨(120403699233/250000000000 : ℚ), (4676107677/625000000 : ℚ), (-956927696903/250000000000 : ℚ), 5⟩,
    ⟨(485127827363/1000000000000 : ℚ), (62402297211/10000000000 : ℚ), (-806923835813/250000000000 : ℚ), 4⟩,
    ⟨(1527715777/3125000000 : ℚ), (52542054239/10000000000 : ℚ), (-1373794863059/500000000000 : ℚ), 4⟩,
    ⟨(492829447833/1000000000000 : ℚ), (44592989023/10000000000 : ℚ), (-117873965757/50000000000 : ℚ), 4⟩,
    ⟨(248499741997/500000000000 : ℚ), (19050432753/5000000000 : ℚ), (-63632189923/31250000000 : ℚ), 4⟩,
    ⟨(25068455557/50000000000 : ℚ), (32737978643/10000000000 : ℚ), (-884284061317/500000000000 : ℚ), 4⟩,
    ⟨(63240975307/125000000000 : ℚ), (28263187309/10000000000 : ℚ), (-192904093637/125000000000 : ℚ), 4⟩,
    ⟨(63833071957/125000000000 : ℚ), (12247962529/5000000000 : ℚ), (-337943652671/250000000000 : ℚ), 3⟩,
    ⟨(257784009719/500000000000 : ℚ), (21298870719/10000000000 : ℚ), (-1187753761779/1000000000000 : ℚ), 3⟩,
    ⟨(260313160489/500000000000 : ℚ), (18566132839/10000000000 : ℚ), (-523096224801/500000000000 : ℚ), 3⟩,
    ⟨(262913647191/500000000000 : ℚ), (16215031391/10000000000 : ℚ), (-115399274829/125000000000 : ℚ), 3⟩,
    ⟨(531158410051/1000000000000 : ℚ), (3545069529/2500000000 : ℚ), (-407836922241/500000000000 : ℚ), 3⟩,
    ⟨(536606824861/1000000000000 : ℚ), (3102447003/2500000000 : ℚ), (-721163062143/1000000000000 : ℚ), 3⟩,
    ⟨(271079706551/500000000000 : ℚ), (10861620027/10000000000 : ℚ), (-637668193053/1000000000000 : ℚ), 3⟩,
    ⟨(68475349763/125000000000 : ℚ), (9501712219/10000000000 : ℚ), (-281782445067/500000000000 : ℚ), 3⟩,
    ⟨(553523384457/1000000000000 : ℚ), (4151092143/5000000000 : ℚ), (-19900763081/40000000000 : ℚ), 3⟩,
    ⟨(34956711923/62500000000 : ℚ), (724005079/1000000000 : ℚ), (-438426966777/1000000000000 : ℚ), 3⟩,
    ⟨(28257044143/50000000000 : ℚ), (314811773/500000000 : ℚ), (-77073812901/200000000000 : ℚ), 3⟩,
    ⟨(285504903669/500000000000 : ℚ), (1363702193/2500000000 : ℚ), (-337574547853/1000000000000 : ℚ), 3⟩,
    ⟨(576900025449/1000000000000 : ℚ), (470239291/1000000000 : ℚ), (-294393433723/1000000000000 : ℚ), 3⟩,
    ⟨(582797347143/1000000000000 : ℚ), (2013846731/5000000000 : ℚ), (-255274644923/1000000000000 : ℚ), 3⟩,
    ⟨(117737513051/200000000000 : ℚ), (3421127979/10000000000 : ℚ), (-54937147507/250000000000 : ℚ), 3⟩,
    ⟨(594556489733/1000000000000 : ℚ), (1437264609/5000000000 : ℚ), (-23426653313/125000000000 : ℚ), 2⟩,
    ⟨(4690546733/7812500000 : ℚ), (595226607/2500000000 : ℚ), (-157922832601/1000000000000 : ℚ), 2⟩,
    ⟨(121234797627/200000000000 : ℚ), (967126057/5000000000 : ℚ), (-65489452367/500000000000 : ℚ), 2⟩,
    ⟨(76486821811/125000000000 : ℚ), (1529384667/10000000000 : ℚ), (-26580682903/250000000000 : ℚ), 2⟩,
    ⟨(61753795949/100000000000 : ℚ), (1161819497/10000000000 : ℚ), (-20932325847/250000000000 : ℚ), 2⟩,
    ⟨(623090547731/1000000000000 : ℚ), (25864467/312500000 : ℚ), (-63002288121/1000000000000 : ℚ), 2⟩,
    ⟨(628538962541/1000000000000 : ℚ), (16360141/312500000 : ℚ), (-21984934029/500000000000 : ℚ), 2⟩,
    ⟨(63387007821/100000000000 : ℚ), (61610981/2500000000 : ℚ), (-13240636057/500000000000 : ℚ), 2⟩,
    ⟨(127814210323/200000000000 : ℚ), (-6169763/10000000000 : ℚ), (-5201938069/500000000000 : ℚ), 2⟩,
    ⟨(322064676577/500000000000 : ℚ), (-118294597/5000000000 : ℚ), (2189616729/500000000000 : ℚ), 2⟩,
    ⟨(81129099617/125000000000 : ℚ), (-446811653/10000000000 : ℚ), (17971313821/1000000000000 : ℚ), 2⟩,
    ⟨(653769570137/1000000000000 : ℚ), (-638595317/10000000000 : ℚ), (7615926027/250000000000 : ℚ), 2⟩,
    ⟨(658328261453/1000000000000 : ℚ), (-81348997/1000000000 : ℚ), (41937301979/1000000000000 : ℚ), 2⟩,
    ⟨(331348944299/500000000000 : ℚ), (-972863107/10000000000 : ℚ), (26231911019/500000000000 : ℚ), 2⟩,
    ⟨(666867924759/1000000000000 : ℚ), (-1117922169/10000000000 : ℚ), (15526717461/250000000000 : ℚ), 2⟩,
    ⟨(41926770247/62500000000 : ℚ), (-624866777/5000000000 : ℚ), (35461432101/500000000000 : ℚ), 2⟩,
    ⟨(674569545229/1000000000000 : ℚ), (-684619441/5000000000 : ℚ), (39480913801/500000000000 : ℚ), 2⟩,
    ⟨(678082575661/1000000000000 : ℚ), (-1477268953/10000000000 : ℚ), (431340337/5000000000 : ℚ), 2⟩,
    ⟨(42584934503/62500000000 : ℚ), (-196819467/1250000000 : ℚ), (92880763033/1000000000000 : ℚ), 2⟩,
    ⟨(136878156263/200000000000 : ℚ), (-1661742673/10000000000 : ℚ), (98834472501/1000000000000 : ℚ), 2⟩,
    ⟨(687170759517/1000000000000 : ℚ), (-869696769/5000000000 : ℚ), (104159569813/1000000000000 : ℚ), 2⟩,
    ⟨(137938437889/200000000000 : ℚ), (-45200001/250000000 : ℚ), (108882621589/1000000000000 : ℚ), 2⟩,
    ⟨(43246812297/62500000000 : ℚ), (-1867988347/10000000000 : ℚ), (22605342519/200000000000 : ℚ), 2⟩,
    ⟨(693935744593/1000000000000 : ℚ), (-1919724643/10000000000 : ℚ), (932893787/8000000000 : ℚ), 2⟩,
    ⟨(347823823359/500000000000 : ℚ), (-490879961/2500000000 : ℚ), (11965456737/100000000000 : ℚ), 2⟩,
    ⟨(174270144751/250000000000 : ℚ), (-999816779/5000000000 : ℚ), (4886775639/40000000000 : ℚ), 2⟩,
    ⟨(43639443087/62500000000 : ℚ), (-2028277359/10000000000 : ℚ), (12416773947/100000000000 : ℚ), 2⟩,
    ⟨(349548203101/500000000000 : ℚ), (-1024808719/5000000000 : ℚ), (2513173843/20000000000 : ℚ), 2⟩,
    ⟨(69967444481/100000000000 : ℚ), (-2063776671/10000000000 : ℚ), (63324483949/500000000000 : ℚ), 2⟩,
    ⟨(699963812671/1000000000000 : ℚ), (-2070836141/10000000000 : ℚ), (127143003067/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2071717633/10000000000 : ℚ), (127204705927/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (229460511279/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control426.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control426.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate426
