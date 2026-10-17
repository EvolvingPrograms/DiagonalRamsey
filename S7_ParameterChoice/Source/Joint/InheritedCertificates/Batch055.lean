import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control471
namespace DiagonalRamsey.JointInheritedCertificate471
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289778752647/1000000000000 : ℚ), (8291455302687/5000000000 : ℚ), (-60161754259253/125000000000 : ℚ), 12⟩,
    ⟨(290405425663/1000000000000 : ℚ), (907301956763/5000000000 : ℚ), (-26584771480059/500000000000 : ℚ), 9⟩,
    ⟨(72913184123/250000000000 : ℚ), (63691176423/1000000000 : ℚ), (-189194247059/10000000000 : ℚ), 7⟩,
    ⟨(293508672849/1000000000000 : ℚ), (39270139659/1250000000 : ℚ), (-592685338217/62500000000 : ℚ), 6⟩,
    ⟨(295955361051/1000000000000 : ℚ), (22788170497/1250000000 : ℚ), (-349963844711/62500000000 : ℚ), 6⟩,
    ⟨(59793847631/200000000000 : ℚ), (116165829629/10000000000 : ℚ), (-3633335479689/1000000000000 : ℚ), 5⟩,
    ⟨(2420170231/8000000000 : ℚ), (78533515949/10000000000 : ℚ), (-2502293985859/1000000000000 : ℚ), 5⟩,
    ⟨(153288637559/500000000000 : ℚ), (55209858471/10000000000 : ℚ), (-1792415581981/1000000000000 : ℚ), 4⟩,
    ⟨(311098165423/1000000000000 : ℚ), (2489437361/625000000 : ℚ), (-658870211551/500000000000 : ℚ), 4⟩,
    ⟨(63208082229/200000000000 : ℚ), (228147259/78125000 : ℚ), (-492330963627/500000000000 : ℚ), 4⟩,
    ⟨(321356415757/1000000000000 : ℚ), (4316286067/2000000000 : ℚ), (-29675886821/40000000000 : ℚ), 4⟩,
    ⟨(163497491613/500000000000 : ℚ), (996900497/625000000 : ℚ), (-34965211523/62500000000 : ℚ), 3⟩,
    ⟨(332901811067/1000000000000 : ℚ), (11685949183/10000000000 : ℚ), (-1308758433/3125000000 : ℚ), 3⟩,
    ⟨(339020013299/1000000000000 : ℚ), (8388619229/10000000000 : ℚ), (-61614379297/200000000000 : ℚ), 3⟩,
    ⟨(1348791673/3906250000 : ℚ), (579356267/1000000000 : ℚ), (-219314640713/1000000000000 : ℚ), 3⟩,
    ⟨(351653386201/1000000000000 : ℚ), (1859967997/5000000000 : ℚ), (-73539743661/500000000000 : ℚ), 3⟩,
    ⟨(71609378117/200000000000 : ℚ), (1020578679/5000000000 : ℚ), (-8752634729/100000000000 : ℚ), 3⟩,
    ⟨(364409608497/1000000000000 : ℚ), (666733769/10000000000 : ℚ), (-18945888511/500000000000 : ℚ), 3⟩,
    ⟨(370680263487/1000000000000 : ℚ), (-23460277/500000000 : ℚ), (3849200909/1000000000000 : ℚ), 3⟩,
    ⟨(188399232859/500000000000 : ℚ), (-14153517/100000000 : ℚ), (9800797753/250000000000 : ℚ), 3⟩,
    ⟨(382705293559/1000000000000 : ℚ), (-1104084211/5000000000 : ℚ), (69305340123/1000000000000 : ℚ), 3⟩,
    ⟨(388343861029/1000000000000 : ℚ), (-143763019/500000000 : ℚ), (95019653849/1000000000000 : ℚ), 3⟩,
    ⟨(9841496641/25000000000 : ℚ), (-3437709523/10000000000 : ℚ), (11700891091/100000000000 : ℚ), 3⟩,
    ⟨(199301055681/500000000000 : ℚ), (-3911723977/10000000000 : ℚ), (13578430401/100000000000 : ℚ), 2⟩,
    ⟨(403123001667/1000000000000 : ℚ), (-4309819853/10000000000 : ℚ), (9483830503/62500000000 : ℚ), 2⟩,
    ⟨(407178997911/1000000000000 : ℚ), (-580209951/1250000000 : ℚ), (165185860083/1000000000000 : ℚ), 2⟩,
    ⟨(410731038631/1000000000000 : ℚ), (-2457391143/5000000000 : ℚ), (35270814509/200000000000 : ℚ), 2⟩,
    ⟨(206872457867/500000000000 : ℚ), (-256743489/500000000 : ℚ), (185426658659/1000000000000 : ℚ), 2⟩,
    ⟨(416191603937/1000000000000 : ℚ), (-5306292707/10000000000 : ℚ), (96270019267/500000000000 : ℚ), 2⟩,
    ⟨(418047540293/1000000000000 : ℚ), (-2716132871/5000000000 : ℚ), (12362160487/62500000000 : ℚ), 2⟩,
    ⟨(209647425561/500000000000 : ℚ), (-220602111/400000000 : ℚ), (50315151769/250000000000 : ℚ), 2⟩,
    ⟨(209960762069/500000000000 : ℚ), (-5556095677/10000000000 : ℚ), (202982798951/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2780604897/5000000000 : ℚ), (50799392943/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (290324874223/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control471.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control471.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate471

-- Control472
namespace DiagonalRamsey.JointInheritedCertificate472
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(174031755721/1000000000000 : ℚ), (17071599752721/10000000000 : ℚ), (-297551604314379/1000000000000 : ℚ), 12⟩,
    ⟨(174397343133/1000000000000 : ℚ), (1867727402169/10000000000 : ℚ), (-16426819096479/500000000000 : ℚ), 9⟩,
    ⟨(3502499943/20000000000 : ℚ), (81897888193/1250000000 : ℚ), (-2919393927463/250000000000 : ℚ), 8⟩,
    ⟨(88103855033/500000000000 : ℚ), (322821631923/10000000000 : ℚ), (-1460767082667/250000000000 : ℚ), 7⟩,
    ⟨(35527010953/200000000000 : ℚ), (187001135359/10000000000 : ℚ), (-688343126519/200000000000 : ℚ), 6⟩,
    ⟨(11212080321/62500000000 : ℚ), (59422237333/5000000000 : ℚ), (-2225813172399/1000000000000 : ℚ), 5⟩,
    ⟨(181465468459/1000000000000 : ℚ), (40020806703/5000000000 : ℚ), (-381533930817/250000000000 : ℚ), 5⟩,
    ⟨(183831648477/1000000000000 : ℚ), (27986561957/5000000000 : ℚ), (-217358764393/200000000000 : ℚ), 5⟩,
    ⟨(93234518791/500000000000 : ℚ), (40086190609/10000000000 : ℚ), (-39640813707/50000000000 : ℚ), 4⟩,
    ⟨(189352236277/1000000000000 : ℚ), (29091753053/10000000000 : ℚ), (-586331905569/1000000000000 : ℚ), 4⟩,
    ⟨(9622673889/50000000000 : ℚ), (21193931973/10000000000 : ℚ), (-217818812783/500000000000 : ℚ), 4⟩,
    ⟨(195742895441/1000000000000 : ℚ), (15346163661/10000000000 : ℚ), (-161093909073/500000000000 : ℚ), 4⟩,
    ⟨(19918881037/100000000000 : ℚ), (2181220747/2000000000 : ℚ), (-58637646037/250000000000 : ℚ), 3⟩,
    ⟨(202758036523/1000000000000 : ℚ), (7462526243/10000000000 : ℚ), (-165371881827/1000000000000 : ℚ), 3⟩,
    ⟨(206416200299/1000000000000 : ℚ), (741067/1562500 : ℚ), (-109750847061/1000000000000 : ℚ), 3⟩,
    ⟨(6566502237/31250000000 : ℚ), (256095453/1000000000 : ℚ), (-32161754709/500000000000 : ℚ), 3⟩,
    ⟨(106928951513/500000000000 : ℚ), (196687539/2500000000 : ℚ), (-26722676863/1000000000000 : ℚ), 3⟩,
    ⟨(21756977431/100000000000 : ℚ), (-16818847/250000000 : ℚ), (594088671/125000000000 : ℚ), 3⟩,
    ⟨(221227938087/1000000000000 : ℚ), (-942578643/5000000000 : ℚ), (31346731881/1000000000000 : ℚ), 3⟩,
    ⟨(2809964553/12500000000 : ℚ), (-181272481/625000000 : ℚ), (53982664913/1000000000000 : ℚ), 3⟩,
    ⟨(228243079169/1000000000000 : ℚ), (-3755665659/10000000000 : ℚ), (73353917537/1000000000000 : ℚ), 3⟩,
    ⟨(23153249683/100000000000 : ℚ), (-4479258331/10000000000 : ℚ), (44993091031/500000000000 : ℚ), 3⟩,
    ⟨(234633738333/1000000000000 : ℚ), (-5092610009/10000000000 : ℚ), (104280797433/1000000000000 : ℚ), 3⟩,
    ⟨(237516937027/1000000000000 : ℚ), (-14030461/25000000 : ℚ), (5827279313/50000000000 : ℚ), 3⟩,
    ⟨(240154326133/1000000000000 : ℚ), (-756332173/1250000000 : ℚ), (3969286383/31250000000 : ℚ), 3⟩,
    ⟨(242520506151/1000000000000 : ℚ), (-6417804201/10000000000 : ℚ), (16984666409/125000000000 : ℚ), 3⟩,
    ⟨(122296344737/500000000000 : ℚ), (-6721151149/10000000000 : ℚ), (2238519823/15625000000 : ℚ), 3⟩,
    ⟨(49270183969/200000000000 : ℚ), (-6966457859/10000000000 : ℚ), (149286701543/1000000000000 : ℚ), 3⟩,
    ⟨(247778264543/1000000000000 : ℚ), (-7158075069/10000000000 : ℚ), (9626300443/62500000000 : ℚ), 3⟩,
    ⟨(12443048873/50000000000 : ℚ), (-1824802169/2500000000 : ℚ), (4922668737/31250000000 : ℚ), 3⟩,
    ⟨(249588631477/1000000000000 : ℚ), (-924013893/1250000000 : ℚ), (31968150049/200000000000 : ℚ), 3⟩,
    ⟨(249954218889/1000000000000 : ℚ), (-7438214533/10000000000 : ℚ), (16099228001/100000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7443961347/10000000000 : ℚ), (161135937197/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (371062513809/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control472.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control472.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate472

-- Control473
namespace DiagonalRamsey.JointInheritedCertificate473
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49622439507/200000000000 : ℚ), (9074675684509/5000000000 : ℚ), (-28184643043919/62500000000 : ℚ), 12⟩,
    ⟨(248602519489/1000000000000 : ℚ), (993451759549/5000000000 : ℚ), (-12449593987107/250000000000 : ℚ), 9⟩,
    ⟨(24957844133/100000000000 : ℚ), (697678420217/10000000000 : ℚ), (-35411371953/2000000000 : ℚ), 8⟩,
    ⟨(50206112879/200000000000 : ℚ), (172098599533/5000000000 : ℚ), (-4431773431771/500000000000 : ℚ), 7⟩,
    ⟨(126472451973/500000000000 : ℚ), (39938548747/2000000000 : ℚ), (-1306124334779/250000000000 : ℚ), 6⟩,
    ⟨(31912877981/125000000000 : ℚ), (15893489209/1250000000 : ℚ), (-3382087246147/1000000000000 : ℚ), 5⟩,
    ⟨(51616442823/200000000000 : ℚ), (42914477809/5000000000 : ℚ), (-1161044154181/500000000000 : ℚ), 5⟩,
    ⟨(261255709627/1000000000000 : ℚ), (30094776867/5000000000 : ℚ), (-828345915783/500000000000 : ℚ), 5⟩,
    ⟨(264792947887/1000000000000 : ℚ), (43260302799/10000000000 : ℚ), (-1211653559159/1000000000000 : ℚ), 4⟩,
    ⟨(268659863357/1000000000000 : ℚ), (6308463103/2000000000 : ℚ), (-899265110113/1000000000000 : ℚ), 4⟩,
    ⟨(136409607763/500000000000 : ℚ), (23124635521/10000000000 : ℚ), (-671475870951/1000000000000 : ℚ), 4⟩,
    ⟨(277230947561/1000000000000 : ℚ), (8446629547/5000000000 : ℚ), (-500175092369/1000000000000 : ℚ), 4⟩,
    ⟨(281852572069/1000000000000 : ℚ), (1520519467/1250000000 : ℚ), (-368032424611/1000000000000 : ℚ), 3⟩,
    ⟨(286639580281/1000000000000 : ℚ), (1699835321/2000000000 : ℚ), (-131948503649/500000000000 : ℚ), 3⟩,
    ⟨(29154587069/100000000000 : ℚ), (5607679137/10000000000 : ℚ), (-45083813139/250000000000 : ℚ), 3⟩,
    ⟨(296524193037/1000000000000 : ℚ), (3291133537/10000000000 : ℚ), (-2244844701/20000000000 : ℚ), 3⟩,
    ⟨(150763301679/500000000000 : ℚ), (282105483/2000000000 : ℚ), (-28011596551/500000000000 : ℚ), 3⟩,
    ⟨(61300985141/200000000000 : ℚ), (-26709841/2000000000 : ℚ), (-9092503333/1000000000000 : ℚ), 3⟩,
    ⟨(155705608057/500000000000 : ℚ), (-1413473079/10000000000 : ℚ), (15221604569/500000000000 : ℚ), 3⟩,
    ⟨(12647928973/40000000000 : ℚ), (-2482748667/10000000000 : ℚ), (63991329027/1000000000000 : ℚ), 3⟩,
    ⟨(160409924417/500000000000 : ℚ), (-211340039/625000000 : ℚ), (92610958481/1000000000000 : ℚ), 3⟩,
    ⟨(81307895217/250000000000 : ℚ), (-258741927/625000000 : ℚ), (117106976651/1000000000000 : ℚ), 3⟩,
    ⟨(164695466519/500000000000 : ℚ), (-4781184401/10000000000 : ℚ), (138095626979/1000000000000 : ℚ), 3⟩,
    ⟨(83314462127/250000000000 : ℚ), (-5323162187/10000000000 : ℚ), (39012780021/250000000000 : ℚ), 3⟩,
    ⟨(21049692923/62500000000 : ℚ), (-115590423/200000000 : ℚ), (10708707523/62500000000 : ℚ), 3⟩,
    ⟨(339968582279/1000000000000 : ℚ), (-770107487/1250000000 : ℚ), (23030308897/125000000000 : ℚ), 3⟩,
    ⟨(342747772547/1000000000000 : ℚ), (-6475353807/10000000000 : ℚ), (19497757941/100000000000 : ℚ), 3⟩,
    ⟨(10784559139/31250000000 : ℚ), (-336463499/500000000 : ℚ), (101855107587/500000000000 : ℚ), 3⟩,
    ⟨(43377529/125000000 : ℚ), (-3463674863/5000000000 : ℚ), (210564912667/1000000000000 : ℚ), 3⟩,
    ⟨(69694471013/200000000000 : ℚ), (-7073091287/10000000000 : ℚ), (107816487861/500000000000 : ℚ), 2⟩,
    ⟨(69889655381/200000000000 : ℚ), (-7168955077/10000000000 : ℚ), (43795645641/200000000000 : ℚ), 2⟩,
    ⟨(17496929943/50000000000 : ℚ), (-7216506553/10000000000 : ℚ), (220641070473/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-3611216433/5000000000 : ℚ), (110424236613/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (151516647711/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control473.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control473.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate473

-- Control477
namespace DiagonalRamsey.JointInheritedCertificate477
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(286031714717/1000000000000 : ℚ), (2380849307273/2000000000 : ℚ), (-170610218804379/500000000000 : ℚ), 12⟩,
    ⟨(286868914731/1000000000000 : ℚ), (1299226278537/10000000000 : ℚ), (-7543968159631/200000000000 : ℚ), 9⟩,
    ⟨(57707050413/200000000000 : ℚ), (454487340787/10000000000 : ℚ), (-13439680937599/1000000000000 : ℚ), 7⟩,
    ⟨(14550733949/50000000000 : ℚ), (111707471203/5000000000 : ℚ), (-6750105731331/1000000000000 : ℚ), 6⟩,
    ⟨(147141658619/500000000000 : ℚ), (32313371343/2500000000 : ℚ), (-1998515970073/500000000000 : ℚ), 6⟩,
    ⟨(74577422017/250000000000 : ℚ), (20542794467/2500000000 : ℚ), (-2603256281979/1000000000000 : ℚ), 5⟩,
    ⟨(75763753829/250000000000 : ℚ), (27740823283/5000000000 : ℚ), (-900723663097/500000000000 : ℚ), 5⟩,
    ⟨(308473598887/1000000000000 : ℚ), (19504633987/5000000000 : ℚ), (-1298200952269/1000000000000 : ℚ), 4⟩,
    ⟨(15725662743/50000000000 : ℚ), (28197487873/10000000000 : ℚ), (-961688583007/1000000000000 : ℚ), 4⟩,
    ⟨(64223163609/200000000000 : ℚ), (10380945019/5000000000 : ℚ), (-725551843433/1000000000000 : ℚ), 4⟩,
    ⟨(328217702151/1000000000000 : ℚ), (15456854739/10000000000 : ℚ), (-553436224397/1000000000000 : ℚ), 3⟩,
    ⟨(6715010243/20000000000 : ℚ), (2311527349/2000000000 : ℚ), (-21203658699/50000000000 : ℚ), 3⟩,
    ⟨(85910425741/250000000000 : ℚ), (1724042297/2000000000 : ℚ), (-162175150701/500000000000 : ℚ), 3⟩,
    ⟨(351815278113/1000000000000 : ℚ), (6360880979/10000000000 : ℚ), (-122915199747/500000000000 : ℚ), 3⟩,
    ⟨(360192521599/1000000000000 : ℚ), (28699891/62500000 : ℚ), (-91444257079/500000000000 : ℚ), 3⟩,
    ⟨(368692755989/1000000000000 : ℚ), (3185716147/10000000000 : ℚ), (-131661262951/1000000000000 : ℚ), 3⟩,
    ⟨(377234119377/1000000000000 : ℚ), (205287841/1000000000 : ℚ), (-11178436001/125000000000 : ℚ), 3⟩,
    ⟨(385734353767/1000000000000 : ℚ), (1129883833/10000000000 : ℚ), (-10845822777/200000000000 : ℚ), 3⟩,
    ⟨(394111597253/1000000000000 : ℚ), (185291919/5000000000 : ℚ), (-24631340849/1000000000000 : ℚ), 3⟩,
    ⟨(201142586201/500000000000 : ℚ), (-259036423/10000000000 : ℚ), (108358523/250000000000 : ℚ), 3⟩,
    ⟨(25636022701/62500000000 : ℚ), (-784381287/10000000000 : ℚ), (5442449821/250000000000 : ℚ), 2⟩,
    ⟨(83541834643/200000000000 : ℚ), (-76539779/625000000 : ℚ), (19995227639/500000000000 : ℚ), 2⟩,
    ⟨(424811057321/1000000000000 : ℚ), (-797212123/5000000000 : ℚ), (27782883799/500000000000 : ℚ), 2⟩,
    ⟨(215706810253/500000000000 : ℚ), (-380993701/2000000000 : ℚ), (34429463623/500000000000 : ℚ), 2⟩,
    ⟨(437453276479/1000000000000 : ℚ), (-270615871/1250000000 : ℚ), (40075657233/500000000000 : ℚ), 2⟩,
    ⟨(8857437201/20000000000 : ℚ), (-1190496727/5000000000 : ℚ), (1400954139/15625000000 : ℚ), 2⟩,
    ⟨(223808593649/500000000000 : ℚ), (-511667639/2000000000 : ℚ), (97556827323/1000000000000 : ℚ), 2⟩,
    ⟨(28227722383/62500000000 : ℚ), (-1350466051/5000000000 : ℚ), (103968050717/1000000000000 : ℚ), 2⟩,
    ⟨(454912196387/1000000000000 : ℚ), (-56235723/200000000 : ℚ), (108992704221/1000000000000 : ℚ), 2⟩,
    ⟨(457391623301/1000000000000 : ℚ), (-2893127251/10000000000 : ℚ), (112703046511/1000000000000 : ℚ), 2⟩,
    ⟨(91811592127/200000000000 : ℚ), (-368315653/1250000000 : ℚ), (14393732523/125000000000 : ℚ), 2⟩,
    ⟨(459895160649/1000000000000 : ℚ), (-2972980739/10000000000 : ℚ), (116365427361/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-595255279/2000000000 : ℚ), (29129252569/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (70464619603/200000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control477.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control477.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate477

-- Control478
namespace DiagonalRamsey.JointInheritedCertificate478
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146608857381/500000000000 : ℚ), (3002340796123/2500000000 : ℚ), (-352875660895519/1000000000000 : ℚ), 12⟩,
    ⟨(294068456789/1000000000000 : ℚ), (1310844107243/10000000000 : ℚ), (-39008637857841/1000000000000 : ℚ), 9⟩,
    ⟨(73940436933/250000000000 : ℚ), (458625805907/10000000000 : ℚ), (-13899170845791/1000000000000 : ℚ), 7⟩,
    ⟨(149140640137/500000000000 : ℚ), (225493451057/10000000000 : ℚ), (-6981122035311/1000000000000 : ℚ), 6⟩,
    ⟨(301602789939/1000000000000 : ℚ), (65242514229/5000000000 : ℚ), (-129188633337/31250000000 : ℚ), 6⟩,
    ⟨(305694288773/1000000000000 : ℚ), (829747713/100000000 : ℚ), (-538536534331/200000000000 : ℚ), 5⟩,
    ⟨(310516373407/1000000000000 : ℚ), (56039893587/10000000000 : ℚ), (-931760290733/500000000000 : ℚ), 5⟩,
    ⟨(19751412783/62500000000 : ℚ), (9853589753/2500000000 : ℚ), (-671562083547/500000000000 : ℚ), 4⟩,
    ⟨(322159954121/1000000000000 : ℚ), (7125243763/2500000000 : ℚ), (-995161905479/1000000000000 : ℚ), 4⟩,
    ⟨(65773863231/200000000000 : ℚ), (209948553/100000000 : ℚ), (-75100863703/100000000000 : ℚ), 4⟩,
    ⟨(67217215161/200000000000 : ℚ), (15639152521/10000000000 : ℚ), (-5730678291/10000000000 : ℚ), 3⟩,
    ⟨(343740731731/1000000000000 : ℚ), (11702541429/10000000000 : ℚ), (-109836030933/250000000000 : ℚ), 3⟩,
    ⟨(87939891353/250000000000 : ℚ), (4368465213/5000000000 : ℚ), (-168138421819/500000000000 : ℚ), 3⟩,
    ⟨(45008168887/125000000000 : ℚ), (1291199097/2000000000 : ℚ), (-31892514731/125000000000 : ℚ), 3⟩,
    ⟨(184289049763/500000000000 : ℚ), (4670315177/10000000000 : ℚ), (-47529080163/250000000000 : ℚ), 3⟩,
    ⟨(188607914141/500000000000 : ℚ), (3250874419/10000000000 : ℚ), (-137209506479/1000000000000 : ℚ), 3⟩,
    ⟨(192947675657/500000000000 : ℚ), (2107607907/10000000000 : ℚ), (-93604911613/1000000000000 : ℚ), 3⟩,
    ⟨(39453308007/100000000000 : ℚ), (73519027/625000000 : ℚ), (-57276869333/1000000000000 : ℚ), 3⟩,
    ⟨(806091657/2000000000 : ℚ), (801469/19531250 : ℚ), (-26740819037/1000000000000 : ℚ), 3⟩,
    ⟨(51418951773/125000000000 : ℚ), (-224612803/10000000000 : ℚ), (-891906587/1000000000000 : ℚ), 3⟩,
    ⟨(83874089573/200000000000 : ℚ), (-754261399/10000000000 : ℚ), (2110274521/100000000000 : ℚ), 2⟩,
    ⟨(427025103791/1000000000000 : ℚ), (-1197985713/10000000000 : ℚ), (9969394989/250000000000 : ℚ), 2⟩,
    ⟨(217120931721/500000000000 : ℚ), (-785284629/5000000000 : ℚ), (11183967843/200000000000 : ℚ), 2⟩,
    ⟨(17638049019/40000000000 : ℚ), (-1883362793/10000000000 : ℚ), (69605909281/1000000000000 : ℚ), 2⟩,
    ⟨(447088575069/1000000000000 : ℚ), (-2145124369/10000000000 : ℚ), (81227537221/1000000000000 : ℚ), 2⟩,
    ⟨(45259480619/100000000000 : ℚ), (-236262723/1000000000 : ℚ), (1820220333/20000000000 : ℚ), 2⟩,
    ⟨(457416890823/1000000000000 : ℚ), (-2541104331/10000000000 : ℚ), (49565701453/500000000000 : ℚ), 2⟩,
    ⟨(461508389657/1000000000000 : ℚ), (-671143933/2500000000 : ℚ), (21144627961/200000000000 : ℚ), 2⟩,
    ⟨(232414949661/500000000000 : ℚ), (-2796090333/10000000000 : ℚ), (3465251053/31250000000 : ℚ), 2⟩,
    ⟨(58418678983/125000000000 : ℚ), (-2877903509/10000000000 : ℚ), (114701212429/1000000000000 : ℚ), 2⟩,
    ⟨(58630340351/125000000000 : ℚ), (-22903167/78125000 : ℚ), (23443099717/200000000000 : ℚ), 2⟩,
    ⟨(93978692967/200000000000 : ℚ), (-184888103/625000000 : ℚ), (11846448249/100000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2369219/8000000 : ℚ), (59310113811/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (69403356161/200000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control478.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control478.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate478

-- Control479
namespace DiagonalRamsey.JointInheritedCertificate479
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(479024284923/1000000000000 : ℚ), (7853107354871/5000000000 : ℚ), (-376799015373567/500000000000 : ℚ), 12⟩,
    ⟨(60010962769/125000000000 : ℚ), (107473077009/625000000 : ℚ), (-83329991764889/1000000000000 : ℚ), 9⟩,
    ⟨(482204295319/1000000000000 : ℚ), (302157977021/5000000000 : ℚ), (-29708833922539/1000000000000 : ℚ), 7⟩,
    ⟨(121338420119/250000000000 : ℚ), (29873379039/1000000000 : ℚ), (-7468009878029/500000000000 : ℚ), 6⟩,
    ⟨(489505527321/1000000000000 : ℚ), (173931627157/10000000000 : ℚ), (-1771415728797/200000000000 : ℚ), 6⟩,
    ⟨(247309925651/500000000000 : ℚ), (13920220279/1250000000 : ℚ), (-5780362913791/1000000000000 : ℚ), 5⟩,
    ⟨(12516184967/25000000000 : ℚ), (75787596711/10000000000 : ℚ), (-501406181097/125000000000 : ℚ), 5⟩,
    ⟨(507530120881/1000000000000 : ℚ), (6720469047/1250000000 : ℚ), (-362720239693/125000000000 : ℚ), 4⟩,
    ⟨(515201733527/1000000000000 : ℚ), (7852830311/2000000000 : ℚ), (-540188664771/250000000000 : ℚ), 4⟩,
    ⟨(104717670959/200000000000 : ℚ), (14632142777/5000000000 : ℚ), (-25651058579/15625000000 : ℚ), 4⟩,
    ⟨(532609216937/1000000000000 : ℚ), (22112717949/10000000000 : ℚ), (-1264200819319/1000000000000 : ℚ), 3⟩,
    ⟨(542177444119/1000000000000 : ℚ), (8423479209/5000000000 : ℚ), (-98136727483/100000000000 : ℚ), 3⟩,
    ⟨(552200889083/1000000000000 : ℚ), (2575221411/2000000000 : ℚ), (-382094991939/500000000000 : ℚ), 3⟩,
    ⟨(22503320823/40000000000 : ℚ), (1964336661/2000000000 : ℚ), (-297006800781/500000000000 : ℚ), 3⟩,
    ⟨(573223852993/1000000000000 : ℚ), (74325839/100000000 : ℚ), (-229195169273/500000000000 : ℚ), 3⟩,
    ⟨(73002613663/125000000000 : ℚ), (2768603819/5000000000 : ℚ), (-17437980737/50000000000 : ℚ), 3⟩,
    ⟨(594870207953/1000000000000 : ℚ), (2007645753/5000000000 : ℚ), (-259080360903/1000000000000 : ℚ), 3⟩,
    ⟨(75708408033/125000000000 : ℚ), (347588647/1250000000 : ℚ), (-92496941743/500000000000 : ℚ), 3⟩,
    ⟨(308154048341/500000000000 : ℚ), (55331863/312500000 : ℚ), (-30823632829/250000000000 : ℚ), 2⟩,
    ⟨(313345114087/500000000000 : ℚ), (938426403/10000000000 : ℚ), (-14317074679/200000000000 : ℚ), 2⟩,
    ⟨(318356836569/500000000000 : ℚ), (249095749/10000000000 : ℚ), (-28048593849/1000000000000 : ℚ), 2⟩,
    ⟨(4039261877/6250000000 : ℚ), (-162012517/5000000000 : ℚ), (10888751/1250000000 : ℚ), 2⟩,
    ⟨(327651381231/500000000000 : ℚ), (-160282227/2000000000 : ℚ), (19887364181/500000000000 : ℚ), 2⟩,
    ⟨(66368938373/100000000000 : ℚ), (-119891241/1000000000 : ℚ), (32993452627/500000000000 : ℚ), 2⟩,
    ⟨(83920124547/125000000000 : ℚ), (-1528863003/10000000000 : ℚ), (88010025023/1000000000000 : ℚ), 2⟩,
    ⟨(678243718577/1000000000000 : ℚ), (-225110603/1250000000 : ℚ), (53182449629/500000000000 : ℚ), 2⟩,
    ⟨(136854253191/200000000000 : ℚ), (-1011237767/5000000000 : ℚ), (121460193539/1000000000000 : ℚ), 2⟩,
    ⟨(43086599371/62500000000 : ℚ), (-2199442149/10000000000 : ℚ), (133614350717/1000000000000 : ℚ), 2⟩,
    ⟨(693537436781/1000000000000 : ℚ), (-2336221839/10000000000 : ℚ), (71535967187/500000000000 : ℚ), 2⟩,
    ⟨(348343410969/500000000000 : ℚ), (-1218059163/5000000000 : ℚ), (150015775551/1000000000000 : ℚ), 2⟩,
    ⟨(139760683021/200000000000 : ℚ), (-2501473207/10000000000 : ℚ), (30915171149/200000000000 : ℚ), 2⟩,
    ⟨(349933416167/500000000000 : ℚ), (-2533785121/10000000000 : ℚ), (39208884579/250000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-158612947/625000000 : ℚ), (78558526843/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (4224041351/20000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control479.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control479.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate479

-- Control480
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

-- Control481
namespace DiagonalRamsey.JointInheritedCertificate481
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(271297904793/1000000000000 : ℚ), (1547288324759/1250000000 : ℚ), (-336505071690963/1000000000000 : ℚ), 12⟩,
    ⟨(272061638229/1000000000000 : ℚ), (1351435741287/10000000000 : ℚ), (-7438679217457/200000000000 : ℚ), 9⟩,
    ⟨(273581749931/1000000000000 : ℚ), (472948669697/10000000000 : ℚ), (-3312082036419/250000000000 : ℚ), 7⟩,
    ⟨(34480450049/125000000000 : ℚ), (9303127821/400000000 : ℚ), (-3325523363481/500000000000 : ℚ), 6⟩,
    ⟨(69706351689/250000000000 : ℚ), (134590213059/10000000000 : ℚ), (-3935923340811/1000000000000 : ℚ), 6⟩,
    ⟨(282498452597/1000000000000 : ℚ), (85570729031/10000000000 : ℚ), (-640331448639/250000000000 : ℚ), 5⟩,
    ⟨(71706841119/250000000000 : ℚ), (225651553/39062500 : ℚ), (-1770513845163/1000000000000 : ℚ), 5⟩,
    ⟨(58354090521/200000000000 : ℚ), (4059495687/1000000000 : ℚ), (-318533358553/250000000000 : ℚ), 4⟩,
    ⟨(297280112343/1000000000000 : ℚ), (29315396559/10000000000 : ℚ), (-471088003669/500000000000 : ℚ), 4⟩,
    ⟨(9478227583/31250000000 : ℚ), (21551446099/10000000000 : ℚ), (-709199622411/1000000000000 : ℚ), 4⟩,
    ⟨(121008577/390625000 : ℚ), (1600693807/1000000000 : ℚ), (-539352125643/1000000000000 : ℚ), 4⟩,
    ⟨(316653742559/1000000000000 : ℚ), (2981888003/2500000000 : ℚ), (-411659150149/1000000000000 : ℚ), 3⟩,
    ⟨(323852459923/1000000000000 : ℚ), (8851029267/10000000000 : ℚ), (-39148747413/125000000000 : ℚ), 3⟩,
    ⟨(331308781627/1000000000000 : ℚ), (12660041/19531250 : ℚ), (-117812315389/500000000000 : ℚ), 3⟩,
    ⟨(169475449609/500000000000 : ℚ), (1156201917/2500000000 : ℚ), (-34683330947/200000000000 : ℚ), 3⟩,
    ⟨(346705214927/1000000000000 : ℚ), (31464659/100000000 : ℚ), (-30689242523/250000000000 : ℚ), 3⟩,
    ⟨(354497050453/1000000000000 : ℚ), (195394139/1000000000 : ℚ), (-16192615403/200000000000 : ℚ), 3⟩,
    ⟨(181125683081/500000000000 : ℚ), (490471253/5000000000 : ℚ), (-46105154801/1000000000000 : ℚ), 3⟩,
    ⟨(369893483753/1000000000000 : ℚ), (179345419/10000000000 : ℚ), (-4192391059/250000000000 : ℚ), 3⟩,
    ⟨(188674902729/500000000000 : ℚ), (-60790849/1250000000 : ℚ), (126485683/15625000000 : ℚ), 3⟩,
    ⟨(384548522821/1000000000000 : ℚ), (-521286493/5000000000 : ℚ), (14640343851/500000000000 : ℚ), 3⟩,
    ⟨(19571015413/50000000000 : ℚ), (-301881107/2000000000 : ℚ), (1480931993/31250000000 : ℚ), 2⟩,
    ⟨(99474745681/250000000000 : ℚ), (-1902075211/10000000000 : ℚ), (7860580387/125000000000 : ℚ), 2⟩,
    ⟨(403922153037/1000000000000 : ℚ), (-111614291/500000000 : ℚ), (38060791381/500000000000 : ℚ), 2⟩,
    ⟨(16377272511/40000000000 : ℚ), (-1254531203/5000000000 : ℚ), (43688209091/500000000000 : ℚ), 2⟩,
    ⟨(51796862613/125000000000 : ℚ), (-1369689937/5000000000 : ℚ), (19372522821/200000000000 : ℚ), 2⟩,
    ⟨(418703812783/1000000000000 : ℚ), (-1464311451/5000000000 : ℚ), (52372466909/500000000000 : ℚ), 2⟩,
    ⟨(412477401/976562500 : ℚ), (-3080924853/10000000000 : ℚ), (111149623381/1000000000000 : ℚ), 2⟩,
    ⟨(106339666247/250000000000 : ℚ), (-799854533/2500000000 : ℚ), (58086030571/500000000000 : ℚ), 2⟩,
    ⟨(427620515449/1000000000000 : ℚ), (-3286418227/10000000000 : ℚ), (119882479091/1000000000000 : ℚ), 2⟩,
    ⟨(429140627151/1000000000000 : ℚ), (-3343556631/10000000000 : ℚ), (122330164053/1000000000000 : ℚ), 2⟩,
    ⟨(429904360587/1000000000000 : ℚ), (-842968237/2500000000 : ℚ), (123546411919/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3375400769/10000000000 : ℚ), (123698091361/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (44464348263/125000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control481.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control481.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate481
