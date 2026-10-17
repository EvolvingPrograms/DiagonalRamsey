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

-- Control565
namespace DiagonalRamsey.JointInheritedCertificate565
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(55946475577/200000000000 : ℚ), (7944818019137/5000000000 : ℚ), (-111288510507129/250000000000 : ℚ), 12⟩,
    ⟨(280311150359/1000000000000 : ℚ), (108701238479/625000000 : ℚ), (-983406826243/20000000000 : ℚ), 9⟩,
    ⟨(70365780353/250000000000 : ℚ), (305322267071/5000000000 : ℚ), (-17491483921227/1000000000000 : ℚ), 8⟩,
    ⟨(283177196933/1000000000000 : ℚ), (75320780539/2500000000 : ℚ), (-175268615577/20000000000 : ℚ), 7⟩,
    ⟨(142718434719/500000000000 : ℚ), (174857058073/10000000000 : ℚ), (-2585705010641/500000000000 : ℚ), 6⟩,
    ⟨(72055094261/250000000000 : ℚ), (27853890177/2500000000 : ℚ), (-1676445634553/500000000000 : ℚ), 5⟩,
    ⟨(291500913053/1000000000000 : ℚ), (37650525677/5000000000 : ℚ), (-230672249127/100000000000 : ℚ), 5⟩,
    ⟨(295246884109/1000000000000 : ℚ), (52905758143/10000000000 : ℚ), (-103130907273/62500000000 : ℚ), 5⟩,
    ⟨(4678472101/15625000000 : ℚ), (19064978491/5000000000 : ℚ), (-121100886387/100000000000 : ℚ), 4⟩,
    ⟨(151993346701/500000000000 : ℚ), (27911737693/10000000000 : ℚ), (-902886950429/1000000000000 : ℚ), 4⟩,
    ⟨(154448181249/500000000000 : ℚ), (411580549/200000000 : ℚ), (-678296354639/1000000000000 : ℚ), 4⟩,
    ⟨(157051969477/500000000000 : ℚ), (3031444291/2000000000 : ℚ), (-509487113119/1000000000000 : ℚ), 4⟩,
    ⟨(319559270961/1000000000000 : ℚ), (5523986319/5000000000 : ℚ), (-189675164827/500000000000 : ℚ), 4⟩,
    ⟨(32520982069/100000000000 : ℚ), (98350881/125000000 : ℚ), (-276876577153/1000000000000 : ℚ), 3⟩,
    ⟨(331001170259/1000000000000 : ℚ), (5363347201/10000000000 : ℚ), (-24340678503/125000000000 : ℚ), 3⟩,
    ⟨(67375509161/200000000000 : ℚ), (3360204187/10000000000 : ℚ), (-31963690531/250000000000 : ℚ), 3⟩,
    ⟨(17139117731/50000000000 : ℚ), (1737091651/10000000000 : ℚ), (-72712847171/1000000000000 : ℚ), 3⟩,
    ⟨(174329365083/500000000000 : ℚ), (40708573/1000000000 : ℚ), (-26743812009/1000000000000 : ℚ), 3⟩,
    ⟨(70890015947/200000000000 : ℚ), (-27724241/400000000 : ℚ), (5962554081/500000000000 : ℚ), 3⟩,
    ⟨(45012578683/125000000000 : ℚ), (-805140849/5000000000 : ℚ), (8937422327/200000000000 : ℚ), 3⟩,
    ⟨(365555961471/1000000000000 : ℚ), (-2379494741/10000000000 : ℚ), (72591694817/1000000000000 : ℚ), 3⟩,
    ⟨(185381768963/500000000000 : ℚ), (-605457083/2000000000 : ℚ), (48218713589/500000000000 : ℚ), 3⟩,
    ⟨(187836603511/500000000000 : ℚ), (-357392287/1000000000 : ℚ), (58418308933/500000000000 : ℚ), 3⟩,
    ⟨(380237685961/1000000000000 : ℚ), (-4034988277/10000000000 : ℚ), (16782655441/125000000000 : ℚ), 3⟩,
    ⟨(76882603263/200000000000 : ℚ), (-4422510183/10000000000 : ℚ), (29815225919/200000000000 : ℚ), 3⟩,
    ⟨(388158987371/1000000000000 : ℚ), (-4745789777/10000000000 : ℚ), (161563291803/1000000000000 : ℚ), 3⟩,
    ⟨(19571976169/50000000000 : ℚ), (-2506003707/5000000000 : ℚ), (3438800543/20000000000 : ℚ), 3⟩,
    ⟨(394223030987/1000000000000 : ℚ), (-2613335911/5000000000 : ℚ), (45093122101/250000000000 : ℚ), 3⟩,
    ⟨(99120675873/250000000000 : ℚ), (-5393953743/10000000000 : ℚ), (186985913629/1000000000000 : ℚ), 3⟩,
    ⟨(398196779013/1000000000000 : ℚ), (-2758466273/5000000000 : ℚ), (19187230339/100000000000 : ℚ), 3⟩,
    ⟨(199674375033/500000000000 : ℚ), (-1119555057/2000000000 : ℚ), (39019215601/200000000000 : ℚ), 3⟩,
    ⟨(19996376127/50000000000 : ℚ), (-2818930679/5000000000 : ℚ), (98349034339/500000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-705357073/1250000000 : ℚ), (24612232451/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (65769410193/200000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control565.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control565.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate565

-- Control566
namespace DiagonalRamsey.JointInheritedCertificate566
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36873737573/125000000000 : ℚ), (1612112564567/1000000000 : ℚ), (-47626360042069/100000000000 : ℚ), 12⟩,
    ⟨(14779574781/50000000000 : ℚ), (1764815643623/10000000000 : ℚ), (-13151996569633/250000000000 : ℚ), 9⟩,
    ⟨(59357778401/200000000000 : ℚ), (123953980213/2000000000 : ℚ), (-9357695500803/500000000000 : ℚ), 8⟩,
    ⟨(59714111631/200000000000 : ℚ), (955850071/31250000 : ℚ), (-9377449876847/1000000000000 : ℚ), 7⟩,
    ⟨(75229833913/250000000000 : ℚ), (44395138563/2500000000 : ℚ), (-2767234090593/500000000000 : ℚ), 6⟩,
    ⟨(60762520897/200000000000 : ℚ), (28299079163/2500000000 : ℚ), (-717787337399/200000000000 : ℚ), 5⟩,
    ⟨(76805625223/250000000000 : ℚ), (38270571081/5000000000 : ℚ), (-2469741050729/1000000000000 : ℚ), 5⟩,
    ⟨(311116185709/1000000000000 : ℚ), (53808176177/10000000000 : ℚ), (-70692816271/40000000000 : ℚ), 5⟩,
    ⟨(315456160621/1000000000000 : ℚ), (38808220037/10000000000 : ℚ), (-1297656241869/1000000000000 : ℚ), 4⟩,
    ⟨(320200629297/1000000000000 : ℚ), (1777143753/625000000 : ℚ), (-968119093791/1000000000000 : ℚ), 4⟩,
    ⟨(325303899911/1000000000000 : ℚ), (20989631367/10000000000 : ℚ), (-363980565403/500000000000 : ℚ), 4⟩,
    ⟨(330716825177/1000000000000 : ℚ), (1548512909/1000000000 : ℚ), (-5474922877/10000000000 : ℚ), 4⟩,
    ⟨(67277455133/200000000000 : ℚ), (11313497487/10000000000 : ℚ), (-204203522443/500000000000 : ℚ), 4⟩,
    ⟨(171130320919/500000000000 : ℚ), (1010718497/1250000000 : ℚ), (-37365681807/125000000000 : ℚ), 3⟩,
    ⟨(348280359969/1000000000000 : ℚ), (5543842107/10000000000 : ℚ), (-105596413877/500000000000 : ℚ), 3⟩,
    ⟨(4429855711/12500000000 : ℚ), (3511505769/10000000000 : ℚ), (-69906631727/500000000000 : ℚ), 3⟩,
    ⟨(360526108261/1000000000000 : ℚ), (1865289189/10000000000 : ℚ), (-40492639283/500000000000 : ℚ), 3⟩,
    ⟨(366634205173/1000000000000 : ℚ), (64610913/1250000000 : ℚ), (-31972738437/1000000000000 : ℚ), 3⟩,
    ⟨(372653923303/1000000000000 : ℚ), (-598016993/10000000000 : ℚ), (576858451/62500000000 : ℚ), 3⟩,
    ⟨(94631822369/250000000000 : ℚ), (-190874421/1250000000 : ℚ), (44114504793/1000000000000 : ℚ), 3⟩,
    ⟨(76839547993/200000000000 : ℚ), (-2305694061/10000000000 : ℚ), (73806248929/1000000000000 : ℚ), 3⟩,
    ⟨(38961066523/100000000000 : ℚ), (-23133697/78125000 : ℚ), (19832238213/200000000000 : ℚ), 3⟩,
    ⟨(98678483961/250000000000 : ℚ), (-439235281/1250000000 : ℚ), (120836253493/1000000000000 : ℚ), 3⟩,
    ⟨(399458404521/1000000000000 : ℚ), (-3979866543/10000000000 : ℚ), (27867632533/200000000000 : ℚ), 3⟩,
    ⟨(403798379433/1000000000000 : ℚ), (-4371319777/10000000000 : ℚ), (77529458559/500000000000 : ℚ), 3⟩,
    ⟨(407692064249/1000000000000 : ℚ), (-469772161/1000000000 : ℚ), (168301801249/1000000000000 : ℚ), 3⟩,
    ⟨(411101960657/1000000000000 : ℚ), (-310399589/625000000 : ℚ), (44825178399/250000000000 : ℚ), 3⟩,
    ⟨(41399522949/100000000000 : ℚ), (-5182954457/10000000000 : ℚ), (188234667553/1000000000000 : ℚ), 3⟩,
    ⟨(416344006987/1000000000000 : ℚ), (-1337915171/2500000000 : ℚ), (3050604963/15625000000 : ℚ), 3⟩,
    ⟨(418125673137/1000000000000 : ℚ), (-684456923/1250000000 : ℚ), (50103039767/250000000000 : ℚ), 3⟩,
    ⟨(419323069521/1000000000000 : ℚ), (-173660973/312500000 : ℚ), (101912285197/500000000000 : ℚ), 3⟩,
    ⟨(209962332279/500000000000 : ℚ), (-1399389143/2500000000 : ℚ), (51380019283/250000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-5602591387/10000000000 : ℚ), (102865760199/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (315868177707/1000000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control566.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control566.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate566

-- Control567
namespace DiagonalRamsey.JointInheritedCertificate567
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44334244337/250000000000 : ℚ), (4132461457143/10000000000 : ℚ), (-73604859555653/1000000000000 : ℚ), 10⟩,
    ⟨(178729807299/1000000000000 : ℚ), (218275352571/5000000000 : ℚ), (-7967816997873/1000000000000 : ℚ), 7⟩,
    ⟨(181461941527/1000000000000 : ℚ), (36053334697/2500000000 : ℚ), (-169750968553/62500000000 : ℚ), 6⟩,
    ⟨(92714192823/500000000000 : ℚ), (16273754629/2500000000 : ℚ), (-1268047203407/1000000000000 : ℚ), 5⟩,
    ⟨(190476711433/1000000000000 : ℚ), (16631397073/5000000000 : ℚ), (-83881076777/125000000000 : ℚ), 4⟩,
    ⟨(196412914559/1000000000000 : ℚ), (17552269241/10000000000 : ℚ), (-9193105189/25000000000 : ℚ), 4⟩,
    ⟨(203008870067/1000000000000 : ℚ), (21874337/25000000 : ℚ), (-192221627209/1000000000000 : ℚ), 4⟩,
    ⟨(105005549543/500000000000 : ℚ), (841765407/2500000000 : ℚ), (-10152351027/125000000000 : ℚ), 3⟩,
    ⟨(217150509881/1000000000000 : ℚ), (-70497793/5000000000 : ℚ), (-6376971919/1000000000000 : ℚ), 3⟩,
    ⟨(2241527389/10000000000 : ℚ), (-2536806777/10000000000 : ℚ), (4644189997/100000000000 : ℚ), 3⟩,
    ⟨(28843586801/125000000000 : ℚ), (-528289211/1250000000 : ℚ), (84846078341/1000000000000 : ℚ), 3⟩,
    ⟨(118342448767/500000000000 : ℚ), (-1087522021/2000000000 : ℚ), (22628841171/200000000000 : ℚ), 3⟩,
    ⟨(241733223321/1000000000000 : ℚ), (-1260693341/2000000000 : ℚ), (133850852657/1000000000000 : ℚ), 3⟩,
    ⟨(3071245843/12500000000 : ℚ), (-55219999/80000000 : ℚ), (29689636377/200000000000 : ℚ), 3⟩,
    ⟨(62107950417/250000000000 : ℚ), (-3640461663/5000000000 : ℚ), (7889857317/50000000000 : ℚ), 3⟩,
    ⟨(249824631619/1000000000000 : ℚ), (-7464409337/10000000000 : ℚ), (162368230553/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-116985773/156250000 : ℚ), (81467517461/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (200126474897/500000000000 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control567.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control567.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate567

-- Control568
namespace DiagonalRamsey.JointInheritedCertificate568
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(214401010617/1000000000000 : ℚ), (684507734097/400000000 : ℚ), (-36740931288757/100000000000 : ℚ), 12⟩,
    ⟨(13425809047/62500000000 : ℚ), (936761540169/5000000000 : ℚ), (-324515308353/8000000000 : ℚ), 9⟩,
    ⟨(215632845871/1000000000000 : ℚ), (65784439393/1000000000 : ℚ), (-14416606788481/1000000000000 : ℚ), 8⟩,
    ⟨(108426408939/500000000000 : ℚ), (40560147601/1250000000 : ℚ), (-7212346272919/1000000000000 : ℚ), 7⟩,
    ⟨(6826909743/31250000000 : ℚ), (9408672283/500000000 : ℚ), (-2123662135681/500000000000 : ℚ), 6⟩,
    ⟨(44088447763/200000000000 : ℚ), (29931302287/2500000000 : ℚ), (-2746109979083/1000000000000 : ℚ), 6⟩,
    ⟨(222777119659/1000000000000 : ℚ), (80726285801/10000000000 : ℚ), (-1882353957397/1000000000000 : ℚ), 5⟩,
    ⟨(7045102129/31250000000 : ℚ), (2260657331/400000000 : ℚ), (-1340087062227/1000000000000 : ℚ), 5⟩,
    ⟨(228415007757/1000000000000 : ℚ), (40523088759/10000000000 : ℚ), (-977343501417/1000000000000 : ℚ), 4⟩,
    ⟨(231663719067/1000000000000 : ℚ), (29446374891/10000000000 : ℚ), (-722663319273/1000000000000 : ℚ), 4⟩,
    ⟨(235158115193/1000000000000 : ℚ), (214838943/100000000 : ℚ), (-53689808613/100000000000 : ℚ), 4⟩,
    ⟨(23886454319/100000000000 : ℚ), (7792422577/5000000000 : ℚ), (-397145584489/1000000000000 : ℚ), 4⟩,
    ⟨(24274730813/100000000000 : ℚ), (346998487/312500000 : ℚ), (-72321767737/250000000000 : ℚ), 4⟩,
    ⟨(7711531777/31250000000 : ℚ), (7627855093/10000000000 : ℚ), (-8169546533/40000000000 : ℚ), 4⟩,
    ⟨(125445469069/500000000000 : ℚ), (610292193/1250000000 : ℚ), (-5437809879/40000000000 : ℚ), 3⟩,
    ⟨(255073375599/1000000000000 : ℚ), (1340038957/5000000000 : ℚ), (-80249113587/1000000000000 : ℚ), 3⟩,
    ⟨(51855210017/200000000000 : ℚ), (177981851/2000000000 : ℚ), (-34223099407/1000000000000 : ℚ), 3⟩,
    ⟨(52691697509/200000000000 : ℚ), (-581965557/10000000000 : ℚ), (4237615201/1000000000000 : ℚ), 3⟩,
    ⟨(13379020441/50000000000 : ℚ), (-1803830203/10000000000 : ℚ), (4584211047/125000000000 : ℚ), 3⟩,
    ⟨(135801058777/500000000000 : ℚ), (-2826153771/10000000000 : ℚ), (12845933749/200000000000 : ℚ), 3⟩,
    ⟨(137742441247/500000000000 : ℚ), (-9216791/25000000 : ℚ), (87766205947/1000000000000 : ℚ), 3⟩,
    ⟨(279191310491/1000000000000 : ℚ), (-4414098199/10000000000 : ℚ), (6746044267/62500000000 : ℚ), 3⟩,
    ⟨(282685706617/1000000000000 : ℚ), (-2515050757/5000000000 : ℚ), (125240813083/1000000000000 : ℚ), 3⟩,
    ⟨(285934417927/1000000000000 : ℚ), (-1110292519/2000000000 : ℚ), (1400623987/10000000000 : ℚ), 3⟩,
    ⟨(57781231511/200000000000 : ℚ), (-1198216047/2000000000 : ℚ), (38174270119/250000000000 : ℚ), 3⟩,
    ⟨(11662892241/40000000000 : ℚ), (-3179454873/5000000000 : ℚ), (16337241157/100000000000 : ℚ), 3⟩,
    ⟨(293907186869/1000000000000 : ℚ), (-6662620687/10000000000 : ℚ), (86131460563/500000000000 : ℚ), 3⟩,
    ⟨(73972078477/250000000000 : ℚ), (-172702113/250000000 : ℚ), (44875354319/250000000000 : ℚ), 3⟩,
    ⟨(59499321561/200000000000 : ℚ), (-7099737189/10000000000 : ℚ), (5787109981/31250000000 : ℚ), 3⟩,
    ⟨(74679144953/250000000000 : ℚ), (-7240847357/10000000000 : ℚ), (23674258777/125000000000 : ℚ), 3⟩,
    ⟨(299536480931/1000000000000 : ℚ), (-183342783/250000000 : ℚ), (96085933551/500000000000 : ℚ), 3⟩,
    ⟨(149974207533/500000000000 : ℚ), (-7379788787/10000000000 : ℚ), (96776501541/500000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-7385532053/10000000000 : ℚ), (96862643123/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (364182123999/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control568.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control568.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate568

-- Control569
namespace DiagonalRamsey.JointInheritedCertificate569
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(275554703261/1000000000000 : ℚ), (4506765601299/2500000000 : ℚ), (-248702062019027/500000000000 : ℚ), 12⟩,
    ⟨(69014333207/250000000000 : ℚ), (1974648011501/10000000000 : ℚ), (-27461889596839/500000000000 : ℚ), 9⟩,
    ⟨(69264437841/250000000000 : ℚ), (693913900443/10000000000 : ℚ), (-19525168068247/1000000000000 : ℚ), 8⟩,
    ⟨(69636581073/250000000000 : ℚ), (68526486777/2000000000 : ℚ), (-1221532058327/125000000000 : ℚ), 7⟩,
    ⟨(140254357921/500000000000 : ℚ), (198956671499/10000000000 : ℚ), (-5758451704163/1000000000000 : ℚ), 6⟩,
    ⟨(70731506777/250000000000 : ℚ), (3962024157/312500000 : ℚ), (-3726393290387/1000000000000 : ℚ), 6⟩,
    ⟨(17860936129/62500000000 : ℚ), (214125801/25000000 : ℚ), (-2557373491887/1000000000000 : ℚ), 5⟩,
    ⟨(289028131753/1000000000000 : ℚ), (30053366233/5000000000 : ℚ), (-1823633567949/1000000000000 : ℚ), 5⟩,
    ⟨(292654158527/1000000000000 : ℚ), (10807009937/2500000000 : ℚ), (-1332978908241/1000000000000 : ℚ), 4⟩,
    ⟨(148309068883/500000000000 : ℚ), (15768186687/5000000000 : ℚ), (-494332382587/500000000000 : ℚ), 4⟩,
    ⟨(300881894183/1000000000000 : ℚ), (23131728333/10000000000 : ℚ), (-368844513203/500000000000 : ℚ), 4⟩,
    ⟨(305404365473/1000000000000 : ℚ), (3381221683/2000000000 : ℚ), (-274521540019/500000000000 : ℚ), 4⟩,
    ⟨(155070998883/500000000000 : ℚ), (6089445309/5000000000 : ℚ), (-403608797907/1000000000000 : ℚ), 4⟩,
    ⟨(19690572817/62500000000 : ℚ), (8513891779/10000000000 : ℚ), (-72270922119/250000000000 : ℚ), 3⟩,
    ⟨(20004913043/62500000000 : ℚ), (2810801161/5000000000 : ℚ), (-39453014947/200000000000 : ℚ), 3⟩,
    ⟨(162590946161/500000000000 : ℚ), (3304130099/10000000000 : ℚ), (-61259246539/500000000000 : ℚ), 3⟩,
    ⟨(82577467141/250000000000 : ℚ), (56912003/400000000 : ℚ), (-15218736283/250000000000 : ℚ), 3⟩,
    ⟨(167706576099/500000000000 : ℚ), (-1216437/100000000 : ℚ), (-1895667923/200000000000 : ℚ), 3⟩,
    ⟨(170221297907/500000000000 : ℚ), (-1401535049/10000000000 : ℚ), (33763956209/1000000000000 : ℚ), 3⟩,
    ⟨(4316872039/12500000000 : ℚ), (-1235200453/5000000000 : ℚ), (8801066681/125000000000 : ℚ), 3⟩,
    ⟨(87521848853/250000000000 : ℚ), (-3368364431/10000000000 : ℚ), (101627746261/1000000000000 : ℚ), 3⟩,
    ⟨(354609866703/1000000000000 : ℚ), (-1031455759/2500000000 : ℚ), (128313378079/1000000000000 : ℚ), 3⟩,
    ⟨(4485920289/12500000000 : ℚ), (-4766002137/10000000000 : ℚ), (7557445521/50000000000 : ℚ), 3⟩,
    ⟨(362837602359/1000000000000 : ℚ), (-5306759987/10000000000 : ℚ), (34132172853/200000000000 : ℚ), 3⟩,
    ⟨(366463629133/1000000000000 : ℚ), (-1440470867/2500000000 : ℚ), (187255908057/1000000000000 : ℚ), 3⟩,
    ⟨(184858391411/500000000000 : ℚ), (-3071015643/5000000000 : ℚ), (201248098809/1000000000000 : ℚ), 3⟩,
    ⟨(372565733777/1000000000000 : ℚ), (-3227714137/5000000000 : ℚ), (212879144359/1000000000000 : ℚ), 3⟩,
    ⟨(93745761261/250000000000 : ℚ), (-3354190289/5000000000 : ℚ), (111166812367/500000000000 : ℚ), 3⟩,
    ⟨(376945436593/1000000000000 : ℚ), (-6905659069/10000000000 : ℚ), (229750476677/1000000000000 : ℚ), 3⟩,
    ⟨(378434009521/1000000000000 : ℚ), (-705078333/1000000000 : ℚ), (29403952989/125000000000 : ℚ), 3⟩,
    ⟨(189717214029/500000000000 : ℚ), (-7146228271/10000000000 : ℚ), (238848345649/1000000000000 : ℚ), 3⟩,
    ⟨(3039496461/8000000000 : ℚ), (-287742729/400000000 : ℚ), (120322887247/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-3599734001/5000000000 : ℚ), (120434973721/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (307621981851/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control569.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control569.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate569

-- Control570
namespace DiagonalRamsey.JointInheritedCertificate570
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(759777781/5000000000 : ℚ), (5198733392077/10000000000 : ℚ), (-792643453983/10000000000 : ℚ), 11⟩,
    ⟨(38219122179/250000000000 : ℚ), (27526767833/500000000 : ℚ), (-4276731060931/500000000000 : ℚ), 8⟩,
    ⟨(154682962829/1000000000000 : ℚ), (45478365419/2500000000 : ℚ), (-579137645601/200000000000 : ℚ), 6⟩,
    ⟨(157305556751/1000000000000 : ℚ), (81733592187/10000000000 : ℚ), (-166974033411/125000000000 : ℚ), 5⟩,
    ⟨(160643485669/1000000000000 : ℚ), (20604896589/5000000000 : ℚ), (-692651753359/1000000000000 : ℚ), 5⟩,
    ⟨(82284237423/500000000000 : ℚ), (21084224707/10000000000 : ℚ), (-36589141943/100000000000 : ℚ), 4⟩,
    ⟨(168929689149/1000000000000 : ℚ), (9731665629/10000000000 : ℚ), (-44209032997/250000000000 : ℚ), 4⟩,
    ⟨(173559529559/1000000000000 : ℚ), (2741535493/10000000000 : ℚ), (-1789530179/31250000000 : ℚ), 4⟩,
    ⟨(35656014781/200000000000 : ℚ), (-1845340687/10000000000 : ℚ), (23356252543/1000000000000 : ℚ), 3⟩,
    ⟨(91454957157/500000000000 : ℚ), (-2499258809/5000000000 : ℚ), (80262579397/1000000000000 : ℚ), 3⟩,
    ⟨(93635564309/500000000000 : ℚ), (-289432743/400000000 : ℚ), (60826278773/500000000000 : ℚ), 3⟩,
    ⟨(95598058897/500000000000 : ℚ), (-4424443859/5000000000 : ℚ), (76083523119/500000000000 : ℚ), 3⟩,
    ⟨(24316755839/125000000000 : ℚ), (-10007652291/10000000000 : ℚ), (87255456161/500000000000 : ℚ), 3⟩,
    ⟨(98578320317/500000000000 : ℚ), (-5406315203/5000000000 : ℚ), (95137118421/500000000000 : ℚ), 3⟩,
    ⟨(198963114747/1000000000000 : ℚ), (-11322732137/10000000000 : ℚ), (200376805937/1000000000000 : ℚ), 3⟩,
    ⟨(6246376477/31250000000 : ℚ), (-462821731/400000000 : ℚ), (205318684299/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11601197099/10000000000 : ℚ), (25741447867/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (397176089713/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control570.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control570.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate570

-- Control571
namespace DiagonalRamsey.JointInheritedCertificate571
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118366277477/1000000000000 : ℚ), (6153264642201/10000000000 : ℚ), (-73041092103431/1000000000000 : ℚ), 11⟩,
    ⟨(118972643611/1000000000000 : ℚ), (40746781383/625000000 : ℚ), (-3931268797487/500000000000 : ℚ), 8⟩,
    ⟨(120162073571/1000000000000 : ℚ), (215069415101/10000000000 : ℚ), (-2647375759561/1000000000000 : ℚ), 6⟩,
    ⟨(30472214557/250000000000 : ℚ), (48037084099/5000000000 : ℚ), (-120945692949/100000000000 : ℚ), 5⟩,
    ⟨(124086638217/1000000000000 : ℚ), (47796522257/10000000000 : ℚ), (-24661961303/40000000000 : ℚ), 5⟩,
    ⟨(63335477043/500000000000 : ℚ), (2373475957/1000000000 : ℚ), (-157626032693/500000000000 : ℚ), 4⟩,
    ⟨(5181699681/40000000000 : ℚ), (10107543291/10000000000 : ℚ), (-70436306521/500000000000 : ℚ), 4⟩,
    ⟨(66295450221/500000000000 : ℚ), (840416549/5000000000 : ℚ), (-30529595771/1000000000000 : ℚ), 4⟩,
    ⟨(13569903071/100000000000 : ℚ), (-3873246509/10000000000 : ℚ), (21959800983/500000000000 : ℚ), 4⟩,
    ⟨(138747439127/1000000000000 : ℚ), (-770827421/1000000000 : ℚ), (96514710469/1000000000000 : ℚ), 3⟩,
    ⟨(70809488533/500000000000 : ℚ), (-1305137591/1250000000 : ℚ), (134808261517/1000000000000 : ℚ), 3⟩,
    ⟨(28840658587/200000000000 : ℚ), (-3104844521/2500000000 : ℚ), (163071971343/1000000000000 : ℚ), 3⟩,
    ⟨(36600268231/250000000000 : ℚ), (-13845603387/10000000000 : ℚ), (183791649273/1000000000000 : ℚ), 3⟩,
    ⟨(74063928791/500000000000 : ℚ), (-14839360341/10000000000 : ℚ), (49606183777/250000000000 : ℚ), 3⟩,
    ⟨(149317287541/1000000000000 : ℚ), (-3094103433/2000000000 : ℚ), (207811066397/1000000000000 : ℚ), 3⟩,
    ⟨(37480913419/250000000000 : ℚ), (-15777571259/10000000000 : ℚ), (212405176649/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-1581557387/1000000000 : ℚ), (212975070669/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (81726648141/200000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control571.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control571.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate571

-- Control575
namespace DiagonalRamsey.JointInheritedCertificate575
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146987410757/250000000000 : ℚ), (18375909216719/10000000000 : ℚ), (-1081812022636753/1000000000000 : ℚ), 12⟩,
    ⟨(588970108117/1000000000000 : ℚ), (2016220163179/10000000000 : ℚ), (-1869334138033/15625000000 : ℚ), 9⟩,
    ⟨(591001210659/1000000000000 : ℚ), (35540894009/500000000 : ℚ), (-4266409318453/100000000000 : ℚ), 7⟩,
    ⟨(297011695013/500000000000 : ℚ), (176357976021/5000000000 : ℚ), (-21458031719369/1000000000000 : ℚ), 6⟩,
    ⟨(598007540979/1000000000000 : ℚ), (206232889277/10000000000 : ℚ), (-2546446693989/200000000000 : ℚ), 6⟩,
    ⟨(301457646983/500000000000 : ℚ), (66325438303/5000000000 : ℚ), (-8316296851043/1000000000000 : ℚ), 5⟩,
    ⟨(304349692321/500000000000 : ℚ), (5670163899/625000000 : ℚ), (-5777578564387/1000000000000 : ℚ), 5⟩,
    ⟨(307652054527/500000000000 : ℚ), (64701850853/10000000000 : ℚ), (-4185903899413/1000000000000 : ℚ), 4⟩,
    ⟨(622665860093/1000000000000 : ℚ), (47527188003/10000000000 : ℚ), (-780832547933/250000000000 : ℚ), 4⟩,
    ⟨(315356870037/500000000000 : ℚ), (35652029477/10000000000 : ℚ), (-1189733661633/500000000000 : ℚ), 4⟩,
    ⟨(79921280439/125000000000 : ℚ), (6784557131/2500000000 : ℚ), (-114939977279/62500000000 : ℚ), 4⟩,
    ⟨(162138000887/250000000000 : ℚ), (10427521897/5000000000 : ℚ), (-1434591800049/1000000000000 : ℚ), 3⟩,
    ⟨(658170594813/1000000000000 : ℚ), (8053716301/5000000000 : ℚ), (-1124519191197/1000000000000 : ℚ), 3⟩,
    ⟨(334066692507/500000000000 : ℚ), (3112389821/2500000000 : ℚ), (-882032060049/1000000000000 : ℚ), 3⟩,
    ⟨(678344427037/1000000000000 : ℚ), (2396280287/2500000000 : ℚ), (-689249440883/1000000000000 : ℚ), 3⟩,
    ⟨(137741076593/200000000000 : ℚ), (7311214553/10000000000 : ℚ), (-266934117333/500000000000 : ℚ), 3⟩,
    ⟨(87389558891/125000000000 : ℚ), (5485298783/10000000000 : ℚ), (-101799964259/250000000000 : ℚ), 3⟩,
    ⟨(141895485411/200000000000 : ℚ), (801001891/2000000000 : ℚ), (-30296855003/100000000000 : ℚ), 3⟩,
    ⟨(719688469079/1000000000000 : ℚ), (2795417601/10000000000 : ℚ), (-216551585741/1000000000000 : ℚ), 3⟩,
    ⟨(9120640741/12500000000 : ℚ), (14406069/80000000 : ℚ), (-28897022673/200000000000 : ℚ), 3⟩,
    ⟨(147853970109/200000000000 : ℚ), (978929257/10000000000 : ℚ), (-84134751951/1000000000000 : ℚ), 2⟩,
    ⟨(748451610581/1000000000000 : ℚ), (297746401/10000000000 : ℚ), (-33471224381/1000000000000 : ℚ), 2⟩,
    ⟨(757108114019/1000000000000 : ℚ), (-267644739/10000000000 : ℚ), (113567041/12500000000 : ℚ), 2⟩,
    ⟨(382577997/500000000 : ℚ), (-368298123/5000000000 : ℚ), (44775383107/1000000000000 : ℚ), 2⟩,
    ⟨(772517745039/1000000000000 : ℚ), (-1124261929/10000000000 : ℚ), (18644573499/250000000000 : ℚ), 2⟩,
    ⟨(779122469451/1000000000000 : ℚ), (-360635231/2500000000 : ℚ), (24817393397/250000000000 : ℚ), 2⟩,
    ⟨(784906560127/1000000000000 : ℚ), (-42519181/250000000 : ℚ), (119462371211/1000000000000 : ℚ), 2⟩,
    ⟨(394907156557/500000000000 : ℚ), (-953108699/5000000000 : ℚ), (27127642741/200000000000 : ℚ), 2⟩,
    ⟨(793798464067/1000000000000 : ℚ), (-1032242731/5000000000 : ℚ), (14816973589/100000000000 : ℚ), 2⟩,
    ⟨(398410321717/500000000000 : ℚ), (-43595183/200000000 : ℚ), (157337461499/1000000000000 : ℚ), 2⟩,
    ⟨(99856468247/125000000000 : ℚ), (-451003989/2000000000 : ℚ), (81671005351/500000000000 : ℚ), 2⟩,
    ⟨(159974442213/200000000000 : ℚ), (-1146091203/5000000000 : ℚ), (83156316417/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1148402993/5000000000 : ℚ), (10417655607/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (79672537571/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control575.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control575.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate575
