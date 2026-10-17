import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control134
namespace DiagonalRamsey.JointInheritedCertificate134
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(320339678263/1000000000000 : ℚ), (10651199825207/10000000000 : ℚ), (-342225562785739/1000000000000 : ℚ), 11⟩,
    ⟨(321685507619/1000000000000 : ℚ), (1157160251019/10000000000 : ℚ), (-37858747113483/1000000000000 : ℚ), 8⟩,
    ⟨(324364205257/1000000000000 : ℚ), (402340365113/10000000000 : ℚ), (-13509486444331/1000000000000 : ℚ), 6⟩,
    ⟨(10260936683/31250000000 : ℚ), (196509035833/10000000000 : ℚ), (-2176356867/320000000 : ℚ), 5⟩,
    ⟨(83401107071/250000000000 : ℚ), (14124068663/1250000000 : ℚ), (-505070679133/125000000000 : ℚ), 5⟩,
    ⟨(13603078611/40000000000 : ℚ), (8932092993/1250000000 : ℚ), (-2643265483009/1000000000000 : ℚ), 4⟩,
    ⟨(347705250757/1000000000000 : ℚ), (4806043031/1000000000 : ℚ), (-459920208199/250000000000 : ℚ), 4⟩,
    ⟨(356415820171/1000000000000 : ℚ), (16862138083/5000000000 : ℚ), (-1335557070333/1000000000000 : ℚ), 3⟩,
    ⟨(183062392987/500000000000 : ℚ), (12194480953/5000000000 : ℚ), (-39947092669/40000000000 : ℚ), 3⟩,
    ⟨(94184661379/250000000000 : ℚ), (18023237611/10000000000 : ℚ), (-762483126061/1000000000000 : ℚ), 3⟩,
    ⟨(388155181527/1000000000000 : ℚ), (3380521577/2500000000 : ℚ), (-118101449613/200000000000 : ℚ), 3⟩,
    ⟨(200132223263/500000000000 : ℚ), (2048869519/2000000000 : ℚ), (-461413249331/1000000000000 : ℚ), 3⟩,
    ⟨(412949821671/1000000000000 : ℚ), (7798483053/10000000000 : ℚ), (-362045858769/1000000000000 : ℚ), 2⟩,
    ⟨(53261142483/125000000000 : ℚ), (2967632827/5000000000 : ℚ), (-141969916103/500000000000 : ℚ), 2⟩,
    ⟨(439555862289/1000000000000 : ℚ), (4490528377/10000000000 : ℚ), (-55362846631/250000000000 : ℚ), 2⟩,
    ⟨(453220297047/1000000000000 : ℚ), (3352986739/10000000000 : ℚ), (-170704153567/1000000000000 : ℚ), 2⟩,
    ⟨(466950848161/1000000000000 : ℚ), (2445345681/10000000000 : ℚ), (-64483844631/500000000000 : ℚ), 2⟩,
    ⟨(480615282919/1000000000000 : ℚ), (34255731/200000000 : ℚ), (-18855379437/200000000000 : ℚ), 2⟩,
    ⟨(15440062667/31250000000 : ℚ), (557862021/5000000000 : ℚ), (-32595613969/500000000000 : ℚ), 2⟩,
    ⟨(507221323537/1000000000000 : ℚ), (625122081/10000000000 : ℚ), (-40637911647/1000000000000 : ℚ), 2⟩,
    ⟨(259953349341/500000000000 : ℚ), (43878193/2000000000 : ℚ), (-19807305509/1000000000000 : ℚ), 2⟩,
    ⟨(3325099773/6250000000 : ℚ), (-23542317/2000000000 : ℚ), (-1040736419/500000000000 : ℚ), 2⟩,
    ⟨(135858124923/250000000000 : ℚ), (-79705331/2000000000 : ℚ), (13015522833/1000000000000 : ℚ), 2⟩,
    ⟨(277023179617/500000000000 : ℚ), (-632506803/10000000000 : ℚ), (6463203089/250000000000 : ℚ), 2⟩,
    ⟨(140938831259/250000000000 : ℚ), (-413467569/5000000000 : ℚ), (917950521/25000000000 : ℚ), 2⟩,
    ⟨(572465894451/1000000000000 : ℚ), (-493721017/5000000000 : ℚ), (4583569153/100000000000 : ℚ), 2⟩,
    ⟨(580094179933/1000000000000 : ℚ), (-223675997/2000000000 : ℚ), (2135233751/40000000000 : ℚ), 2⟩,
    ⟨(586566716923/1000000000000 : ℚ), (-611548667/5000000000 : ℚ), (59489024039/1000000000000 : ℚ), 2⟩,
    ⟨(73977646419/125000000000 : ℚ), (-1304138581/10000000000 : ℚ), (12852755063/200000000000 : ℚ), 2⟩,
    ⟨(595806939951/1000000000000 : ℚ), (-54535611/400000000 : ℚ), (67782162417/1000000000000 : ℚ), 2⟩,
    ⟨(598485637589/1000000000000 : ℚ), (-1402185479/10000000000 : ℚ), (70098785591/1000000000000 : ℚ), 2⟩,
    ⟨(119966293389/200000000000 : ℚ), (-355343911/2500000000 : ℚ), (35624289259/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-284752959/2000000000 : ℚ), (71391907427/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (1249329813/5000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control134.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control134.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate134

-- Control136
namespace DiagonalRamsey.JointInheritedCertificate136
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16812103697/62500000000 : ℚ), (5929156449079/5000000000 : ℚ), (-319844106044449/1000000000000 : ℚ), 11⟩,
    ⟨(16875568753/62500000000 : ℚ), (1290181720803/10000000000 : ℚ), (-17685320122813/500000000000 : ℚ), 8⟩,
    ⟨(272030202589/1000000000000 : ℚ), (449434292831/10000000000 : ℚ), (-1261270585957/100000000000 : ℚ), 6⟩,
    ⟨(275037502453/1000000000000 : ℚ), (219928733083/10000000000 : ℚ), (-6342584038507/1000000000000 : ℚ), 5⟩,
    ⟨(139501018849/500000000000 : ℚ), (31667334703/2500000000 : ℚ), (-235136833959/62500000000 : ℚ), 5⟩,
    ⟨(283885627683/1000000000000 : ℚ), (80201137297/10000000000 : ℚ), (-2455881828093/1000000000000 : ℚ), 4⟩,
    ⟨(144820620383/500000000000 : ℚ), (53967272791/10000000000 : ℚ), (-1704428233403/1000000000000 : ℚ), 4⟩,
    ⟨(148106723623/500000000000 : ℚ), (9462493771/2500000000 : ℚ), (-61640565557/50000000000 : ℚ), 4⟩,
    ⟨(9485592287/31250000000 : ℚ), (5464660897/2000000000 : ℚ), (-458730302261/500000000000 : ℚ), 3⟩,
    ⟨(311547209951/1000000000000 : ℚ), (4024219413/2000000000 : ℚ), (-348086287579/500000000000 : ℚ), 3⟩,
    ⟨(320161093659/1000000000000 : ℚ), (1876202209/1250000000 : ℚ), (-106973598903/200000000000 : ℚ), 3⟩,
    ⟨(329297647897/1000000000000 : ℚ), (5636196679/5000000000 : ℚ), (-103402347767/250000000000 : ℚ), 3⟩,
    ⟨(169434441327/500000000000 : ℚ), (4235728541/5000000000 : ℚ), (-160052841821/500000000000 : ℚ), 3⟩,
    ⟨(348782621707/1000000000000 : ℚ), (253108769/400000000 : ℚ), (-24644931509/100000000000 : ℚ), 2⟩,
    ⟨(358943390329/1000000000000 : ℚ), (4657123063/10000000000 : ℚ), (-93684957643/500000000000 : ℚ), 2⟩,
    ⟨(73850666953/200000000000 : ℚ), (3334747491/10000000000 : ℚ), (-139249246493/1000000000000 : ℚ), 2⟩,
    ⟨(379613164613/1000000000000 : ℚ), (284214959/1250000000 : ℚ), (-24885104329/250000000000 : ℚ), 2⟩,
    ⟨(389923109049/1000000000000 : ℚ), (1412357331/10000000000 : ℚ), (-16603061151/250000000000 : ℚ), 2⟩,
    ⟨(400083877671/1000000000000 : ℚ), (176518463/2500000000 : ℚ), (-38524227801/1000000000000 : ℚ), 2⟩,
    ⟨(102499404181/250000000000 : ℚ), (24427719/2000000000 : ℚ), (-3720007897/250000000000 : ℚ), 2⟩,
    ⟨(419568851481/1000000000000 : ℚ), (-90949427/2500000000 : ℚ), (5270354549/1000000000000 : ℚ), 2⟩,
    ⟨(10717635143/25000000000 : ℚ), (-770056453/10000000000 : ℚ), (22497433637/1000000000000 : ℚ), 2⟩,
    ⟨(437319289427/1000000000000 : ℚ), (-555277639/5000000000 : ℚ), (7447750827/200000000000 : ℚ), 2⟩,
    ⟨(89065509239/200000000000 : ℚ), (-1395947351/10000000000 : ℚ), (24915965057/500000000000 : ℚ), 2⟩,
    ⟨(113163263033/250000000000 : ℚ), (-81721603/500000000 : ℚ), (12107687717/200000000000 : ℚ), 2⟩,
    ⟨(459225258613/1000000000000 : ℚ), (-458084731/2500000000 : ℚ), (434756297/6250000000 : ℚ), 2⟩,
    ⟨(29061304481/62500000000 : ℚ), (-199455229/1000000000 : ℚ), (38528233177/500000000000 : ℚ), 2⟩,
    ⟨(5873305771/12500000000 : ℚ), (-84992891/400000000 : ℚ), (83145318023/1000000000000 : ℚ), 2⟩,
    ⟨(18953159877/40000000000 : ℚ), (-2225992921/10000000000 : ℚ), (43959445611/500000000000 : ℚ), 2⟩,
    ⟨(476836296789/1000000000000 : ℚ), (-2300168761/10000000000 : ℚ), (3657786287/40000000000 : ℚ), 2⟩,
    ⟨(47885739933/100000000000 : ℚ), (-146802147/625000000 : ℚ), (2930315981/31250000000 : ℚ), 2⟩,
    ⟨(239936420113/500000000000 : ℚ), (-7415427/31250000 : ℚ), (94925489063/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2375938741/10000000000 : ℚ), (47534785417/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (132457397391/500000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control136.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control136.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate136

-- Control137
namespace DiagonalRamsey.JointInheritedCertificate137
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(317681669057/1000000000000 : ℚ), (51060085853563/10000000000 : ℚ), (-1623358214313163/1000000000000 : ℚ), 13⟩,
    ⟨(158980732257/500000000000 : ℚ), (225538274629/400000000 : ℚ), (-18016249858817/100000000000 : ℚ), 10⟩,
    ⟨(4976880959/15625000000 : ℚ), (401895148647/2000000000 : ℚ), (-16176712086221/250000000000 : ℚ), 8⟩,
    ⟨(319357073163/1000000000000 : ℚ), (10118412699/100000000 : ℚ), (-32897645419169/1000000000000 : ℚ), 7⟩,
    ⟨(320469524211/1000000000000 : ℚ), (602543393741/10000000000 : ℚ), (-19807445374469/1000000000000 : ℚ), 7⟩,
    ⟨(321855054529/1000000000000 : ℚ), (99040949517/2500000000 : ℚ), (-2636242825177/200000000000 : ℚ), 6⟩,
    ⟨(80877581563/250000000000 : ℚ), (27802473299/1000000000 : ℚ), (-2342539077219/250000000000 : ℚ), 6⟩,
    ⟨(162715675843/500000000000 : ℚ), (25539028507/1250000000 : ℚ), (-6979074371541/1000000000000 : ℚ), 5⟩,
    ⟨(327613502913/1000000000000 : ℚ), (155358865489/10000000000 : ℚ), (-1345270550697/250000000000 : ℚ), 5⟩,
    ⟨(330051522939/1000000000000 : ℚ), (7579697501/625000000 : ℚ), (-4260606779839/1000000000000 : ℚ), 5⟩,
    ⟨(8318488459/25000000000 : ℚ), (96649341659/10000000000 : ℚ), (-137789546691/40000000000 : ℚ), 4⟩,
    ⟨(335671073511/1000000000000 : ℚ), (39159536379/5000000000 : ℚ), (-2832294008133/1000000000000 : ℚ), 4⟩,
    ⟨(84709766517/250000000000 : ℚ), (64336919139/10000000000 : ℚ), (-295107700579/125000000000 : ℚ), 4⟩,
    ⟨(17111794203/50000000000 : ℚ), (53451004751/10000000000 : ℚ), (-1990249966067/1000000000000 : ℚ), 4⟩,
    ⟨(345853344253/1000000000000 : ℚ), (11206815059/2500000000 : ℚ), (-1693628640237/1000000000000 : ℚ), 4⟩,
    ⟨(34968273187/100000000000 : ℚ), (7578578181/2000000000 : ℚ), (-363133022689/250000000000 : ℚ), 3⟩,
    ⟨(17685741079/50000000000 : ℚ), (1612209109/500000000 : ℚ), (-313478687999/250000000000 : ℚ), 3⟩,
    ⟨(357939899727/1000000000000 : ℚ), (6897528379/2500000000 : ℚ), (-1088348385241/1000000000000 : ℚ), 3⟩,
    ⟨(181173893863/500000000000 : ℚ), (23716730751/10000000000 : ℚ), (-948882052849/1000000000000 : ℚ), 3⟩,
    ⟨(36692786659/100000000000 : ℚ), (20463984809/10000000000 : ℚ), (-103787536327/125000000000 : ℚ), 3⟩,
    ⟨(371669102507/1000000000000 : ℚ), (553446633/312500000 : ℚ), (-364314052569/500000000000 : ℚ), 3⟩,
    ⟨(15062402937/40000000000 : ℚ), (3072402283/2000000000 : ℚ), (-640793212173/1000000000000 : ℚ), 3⟩,
    ⟨(381588996567/1000000000000 : ℚ), (1668265589/1250000000 : ℚ), (-141097729471/250000000000 : ℚ), 3⟩,
    ⟨(77348751363/200000000000 : ℚ), (11605058409/10000000000 : ℚ), (-62189685103/125000000000 : ℚ), 3⟩,
    ⟨(196005967951/500000000000 : ℚ), (10092955497/10000000000 : ℚ), (-438650072323/1000000000000 : ℚ), 3⟩,
    ⟨(198690421161/500000000000 : ℚ), (4386477159/5000000000 : ℚ), (-96639753911/250000000000 : ℚ), 2⟩,
    ⟨(402837541909/1000000000000 : ℚ), (1523034927/2000000000 : ℚ), (-2658146497/7812500000 : ℚ), 2⟩,
    ⟨(408368888997/1000000000000 : ℚ), (6595208761/10000000000 : ℚ), (-298879043203/1000000000000 : ℚ), 2⟩,
    ⟨(82792311617/200000000000 : ℚ), (5692978229/10000000000 : ℚ), (-16361746589/62500000000 : ℚ), 2⟩,
    ⟨(52450259493/125000000000 : ℚ), (1222964587/2500000000 : ℚ), (-22840340553/100000000000 : ℚ), 2⟩,
    ⟨(425276854073/1000000000000 : ℚ), (4178001373/10000000000 : ℚ), (-7930050713/40000000000 : ℚ), 2⟩,
    ⟨(430972221433/1000000000000 : ℚ), (176990427/500000000 : ℚ), (-85466042421/500000000000 : ℚ), 2⟩,
    ⟨(218337228693/500000000000 : ℚ), (2967514769/10000000000 : ℚ), (-146107568817/1000000000000 : ℚ), 2⟩,
    ⟨(221184912373/500000000000 : ℚ), (2452859473/10000000000 : ℚ), (-964764293/7812500000 : ℚ), 2⟩,
    ⟨(3584356823/8000000000 : ℚ), (79552949/400000000 : ℚ), (-10283276133/100000000000 : ℚ), 2⟩,
    ⟨(226842560367/500000000000 : ℚ), (1569418987/10000000000 : ℚ), (-1049063781/12500000000 : ℚ), 2⟩,
    ⟨(229638894911/500000000000 : ℚ), (59475811/500000000 : ℚ), (-6658480559/100000000000 : ℚ), 2⟩,
    ⟨(46480913691/100000000000 : ℚ), (211176707/2500000000 : ℚ), (-25327221463/500000000000 : ℚ), 2⟩,
    ⟨(470265836497/1000000000000 : ℚ), (265594451/5000000000 : ℚ), (-35997436609/1000000000000 : ℚ), 2⟩,
    ⟨(475634742917/1000000000000 : ℚ), (245673647/10000000000 : ℚ), (-22494945807/1000000000000 : ℚ), 2⟩,
    ⟨(120225730501/250000000000 : ℚ), (-2938387/2000000000 : ℚ), (-10043286091/1000000000000 : ℚ), 2⟩,
    ⟨(121514420563/250000000000 : ℚ), (-50477849/2000000000 : ℚ), (14482227/10000000000 : ℚ), 2⟩,
    ⟨(245543302697/500000000000 : ℚ), (-469581603/10000000000 : ℚ), (6029528641/500000000000 : ℚ), 2⟩,
    ⟨(61997197039/125000000000 : ℚ), (-668159061/10000000000 : ℚ), (21859006793/1000000000000 : ℚ), 2⟩,
    ⟨(500718812229/1000000000000 : ℚ), (-849776049/10000000000 : ℚ), (7727362947/250000000000 : ℚ), 2⟩,
    ⟨(505298891093/1000000000000 : ℚ), (-1625413/16000000 : ℚ), (19632224503/500000000000 : ℚ), 2⟩,
    ⟨(127426694773/250000000000 : ℚ), (-116775383/1000000000 : ℚ), (11742913417/250000000000 : ℚ), 2⟩,
    ⟨(513931857239/1000000000000 : ℚ), (-653253739/5000000000 : ℚ), (54073107007/1000000000000 : ℚ), 2⟩,
    ⟨(517963946949/1000000000000 : ℚ), (-179141069/1250000000 : ℚ), (12121182231/200000000000 : ℚ), 2⟩,
    ⟨(260896667283/500000000000 : ℚ), (-309696647/2000000000 : ℚ), (13320561459/200000000000 : ℚ), 2⟩,
    ⟨(13135269869/25000000000 : ℚ), (-413333387/2500000000 : ℚ), (18023168571/250000000000 : ℚ), 2⟩,
    ⟨(528807612751/1000000000000 : ℚ), (-34966989/200000000 : ℚ), (19275239567/250000000000 : ℚ), 2⟩,
    ⟨(132993901327/250000000000 : ℚ), (-229264901/1250000000 : ℚ), (81650043599/1000000000000 : ℚ), 2⟩,
    ⟨(26745357023/50000000000 : ℚ), (-1911158293/10000000000 : ℚ), (42879786867/500000000000 : ℚ), 2⟩,
    ⟨(537595155881/1000000000000 : ℚ), (-989958501/5000000000 : ℚ), (8944672797/100000000000 : ℚ), 2⟩,
    ⟨(270016587953/500000000000 : ℚ), (-204078699/1000000000 : ℚ), (5795403801/62500000000 : ℚ), 2⟩,
    ⟨(542215327133/1000000000000 : ℚ), (-2094106851/10000000000 : ℚ), (23902927053/250000000000 : ℚ), 2⟩,
    ⟨(544136352567/1000000000000 : ℚ), (-2140166859/10000000000 : ℚ), (98113563579/1000000000000 : ℚ), 2⟩,
    ⟨(545791624291/1000000000000 : ℚ), (-272401623/1250000000 : ℚ), (50120714343/500000000000 : ℚ), 2⟩,
    ⟨(34198572163/62500000000 : ℚ), (-2211450247/10000000000 : ℚ), (102003140147/1000000000000 : ℚ), 2⟩,
    ⟨(548289605657/1000000000000 : ℚ), (-223704549/1000000000 : ℚ), (103405074733/1000000000000 : ℚ), 2⟩,
    ⟨(137281574361/250000000000 : ℚ), (-1128064803/5000000000 : ℚ), (5222611717/50000000000 : ℚ), 2⟩,
    ⟨(109937042861/200000000000 : ℚ), (-1134399643/5000000000 : ℚ), (105148313581/1000000000000 : ℚ), 2⟩,
    ⟨(274982504881/500000000000 : ℚ), (-2275118289/10000000000 : ℚ), (52747874081/500000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-71122107/312500000 : ℚ), (52769574599/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (117160660943/500000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control137.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control137.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate137

-- Control138
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

-- Control139
namespace DiagonalRamsey.JointInheritedCertificate139
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(178852806863/1000000000000 : ℚ), (5980968792143/10000000000 : ℚ), (-3359568480951/31250000000 : ℚ), 10⟩,
    ⟨(180157667881/1000000000000 : ℚ), (321237790757/5000000000 : ℚ), (-11897689453993/1000000000000 : ℚ), 7⟩,
    ⟨(182754823393/1000000000000 : ℚ), (109980114451/5000000000 : ℚ), (-2124501853329/500000000000 : ℚ), 6⟩,
    ⟨(18661926137/100000000000 : ℚ), (21118448849/2000000000 : ℚ), (-2141696992069/1000000000000 : ℚ), 5⟩,
    ⟨(191713765163/1000000000000 : ℚ), (14910749379/2500000000 : ℚ), (-637230868983/500000000000 : ℚ), 4⟩,
    ⟨(39597854383/200000000000 : ℚ), (37061535571/10000000000 : ℚ), (-167083885239/200000000000 : ℚ), 4⟩,
    ⟨(102692672533/500000000000 : ℚ), (24511873257/10000000000 : ℚ), (-291418082253/500000000000 : ℚ), 3⟩,
    ⟨(213830756387/1000000000000 : ℚ), (1693230869/1000000000 : ℚ), (-212137741357/500000000000 : ℚ), 3⟩,
    ⟨(223244171953/1000000000000 : ℚ), (12069549727/10000000000 : ℚ), (-63640443547/200000000000 : ℚ), 3⟩,
    ⟨(233534935423/1000000000000 : ℚ), (4401111931/5000000000 : ℚ), (-121853926931/500000000000 : ℚ), 3⟩,
    ⟨(122301970561/500000000000 : ℚ), (3262201541/5000000000 : ℚ), (-189338026001/1000000000000 : ℚ), 2⟩,
    ⟨(32043073559/125000000000 : ℚ), (4887346881/10000000000 : ℚ), (-18549119309/125000000000 : ℚ), 2⟩,
    ⟨(134321904311/500000000000 : ℚ), (3680082819/10000000000 : ℚ), (-116744147321/1000000000000 : ℚ), 2⟩,
    ⟨(281383153359/1000000000000 : ℚ), (1384867573/5000000000 : ℚ), (-91737475629/1000000000000 : ℚ), 2⟩,
    ⟨(294439935829/1000000000000 : ℚ), (2069786971/10000000000 : ℚ), (-35802972301/500000000000 : ℚ), 2⟩,
    ⟨(153844206039/500000000000 : ℚ), (304462291/2000000000 : ℚ), (-55138353027/1000000000000 : ℚ), 2⟩,
    ⟨(160500496019/500000000000 : ℚ), (543794641/5000000000 : ℚ), (-20741932551/500000000000 : ℚ), 2⟩,
    ⟨(334249468287/1000000000000 : ℚ), (368909561/5000000000 : ℚ), (-30032294063/1000000000000 : ℚ), 2⟩,
    ⟨(347306250757/1000000000000 : ℚ), (226594197/5000000000 : ℚ), (-10169161521/500000000000 : ℚ), 2⟩,
    ⟨(180022797747/500000000000 : ℚ), (27419067/1250000000 : ℚ), (-12072145373/1000000000000 : ℚ), 2⟩,
    ⟨(93086203911/250000000000 : ℚ), (25780087/10000000000 : ℚ), (-2493246147/500000000000 : ℚ), 2⟩,
    ⟨(192042731497/500000000000 : ℚ), (-6767801/500000000 : ℚ), (552944649/500000000000 : ℚ), 2⟩,
    ⟨(395154468693/1000000000000 : ℚ), (-269934617/10000000000 : ℚ), (99186407/15625000000 : ℚ), 2⟩,
    ⟨(405445232163/1000000000000 : ℚ), (-191205101/5000000000 : ℚ), (10849367133/1000000000000 : ℚ), 2⟩,
    ⟨(25928665483/62500000000 : ℚ), (-29761311/625000000 : ℚ), (14694760047/1000000000000 : ℚ), 2⟩,
    ⟨(8466081181/20000000000 : ℚ), (-69231309/1250000000 : ℚ), (112183383/6250000000 : ℚ), 2⟩,
    ⟨(430700132201/1000000000000 : ℚ), (-77176917/1250000000 : ℚ), (413266641/20000000000 : ℚ), 2⟩,
    ⟨(436975638953/1000000000000 : ℚ), (-668401017/10000000000 : ℚ), (22875149073/1000000000000 : ℚ), 2⟩,
    ⟨(221035071373/500000000000 : ℚ), (-35398003/500000000 : ℚ), (24613792507/1000000000000 : ℚ), 2⟩,
    ⟨(445934580723/1000000000000 : ℚ), (-73694301/1000000000 : ℚ), (25900614747/1000000000000 : ℚ), 2⟩,
    ⟨(224265868117/500000000000 : ℚ), (-755948731/10000000000 : ℚ), (6687651387/250000000000 : ℚ), 2⟩,
    ⟨(449836597253/1000000000000 : ℚ), (-765358773/10000000000 : ℚ), (27173288733/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-766530727/10000000000 : ℚ), (272260171/10000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (89956267459/250000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control139.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control139.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate139

-- Control141
namespace DiagonalRamsey.JointInheritedCertificate141
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(194210375231/1000000000000 : ℚ), (3081461316597/5000000000 : ℚ), (-120273026513309/1000000000000 : ℚ), 10⟩,
    ⟨(195585701069/1000000000000 : ℚ), (82815223289/1250000000 : ℚ), (-3327616801017/250000000000 : ℚ), 7⟩,
    ⟨(198323107607/1000000000000 : ℚ), (227056586227/10000000000 : ℚ), (-118836693839/25000000000 : ℚ), 6⟩,
    ⟨(202396232121/1000000000000 : ℚ), (109124167621/10000000000 : ℚ), (-2395924736521/1000000000000 : ℚ), 5⟩,
    ⟨(103882924099/500000000000 : ℚ), (30855831743/5000000000 : ℚ), (-712862938951/500000000000 : ℚ), 4⟩,
    ⟨(107190121749/500000000000 : ℚ), (9598265241/2500000000 : ℚ), (-116822233071/125000000000 : ℚ), 4⟩,
    ⟨(222175717779/1000000000000 : ℚ), (25422816057/10000000000 : ℚ), (-326019943101/500000000000 : ℚ), 3⟩,
    ⟨(115538598181/500000000000 : ℚ), (549452951/312500000 : ℚ), (-237349160641/500000000000 : ℚ), 3⟩,
    ⟨(240998953143/1000000000000 : ℚ), (6274139673/5000000000 : ℚ), (-356085477199/1000000000000 : ℚ), 3⟩,
    ⟨(12592271809/50000000000 : ℚ), (9163220951/10000000000 : ℚ), (-27280963013/100000000000 : ℚ), 3⟩,
    ⟨(32939023489/125000000000 : ℚ), (3400922999/5000000000 : ℚ), (-106027870801/500000000000 : ℚ), 2⟩,
    ⟨(137943425571/500000000000 : ℚ), (637993031/1250000000 : ℚ), (-166327815449/1000000000000 : ℚ), 2⟩,
    ⟨(288850251099/1000000000000 : ℚ), (770290243/2000000000 : ℚ), (-131006349659/1000000000000 : ℚ), 2⟩,
    ⟨(151138771577/500000000000 : ℚ), (581383409/2000000000 : ℚ), (-5156058657/50000000000 : ℚ), 2⟩,
    ⟨(63207883029/200000000000 : ℚ), (1090385597/5000000000 : ℚ), (-20173626149/250000000000 : ℚ), 2⟩,
    ⟨(330003332721/1000000000000 : ℚ), (806494593/5000000000 : ℚ), (-62370285429/1000000000000 : ℚ), 2⟩,
    ⟨(344034815723/1000000000000 : ℚ), (145296989/1250000000 : ℚ), (-47195560781/1000000000000 : ℚ), 2⟩,
    ⟨(357998733299/1000000000000 : ℚ), (800070507/10000000000 : ℚ), (-34486561801/1000000000000 : ℚ), 2⟩,
    ⟨(37176060529/100000000000 : ℚ), (63185801/1250000000 : ℚ), (-370999087/15625000000 : ℚ), 2⟩,
    ⟨(77037579469/200000000000 : ℚ), (263705143/10000000000 : ℚ), (-14597566389/1000000000000 : ℚ), 2⟩,
    ⟨(199075648651/500000000000 : ℚ), (12752831/2000000000 : ℚ), (-6769641337/1000000000000 : ℚ), 2⟩,
    ⟨(102631490133/250000000000 : ℚ), (-102491071/10000000000 : ℚ), (-49526827/1000000000000 : ℚ), 2⟩,
    ⟨(52774089033/125000000000 : ℚ), (-241190433/10000000000 : ℚ), (5723803869/1000000000000 : ℚ), 2⟩,
    ⟨(433039195301/1000000000000 : ℚ), (-178491199/5000000000 : ℚ), (1067420117/100000000000 : ℚ), 2⟩,
    ⟨(221480476041/500000000000 : ℚ), (-453415849/10000000000 : ℚ), (1862161517/125000000000 : ℚ), 2⟩,
    ⟨(90372486133/200000000000 : ℚ), (-533211707/10000000000 : ℚ), (4616752651/250000000000 : ℚ), 2⟩,
    ⟨(229828952473/500000000000 : ℚ), (-299229013/5000000000 : ℚ), (10720206119/500000000000 : ℚ), 2⟩,
    ⟨(233136150123/500000000000 : ℚ), (-650751041/10000000000 : ℚ), (11930624163/500000000000 : ℚ), 2⟩,
    ⟨(471641916323/1000000000000 : ℚ), (-5400761/78125000 : ℚ), (12881312769/500000000000 : ℚ), 2⟩,
    ⟨(475715040837/1000000000000 : ℚ), (-90123499/1250000000 : ℚ), (27168974323/1000000000000 : ℚ), 2⟩,
    ⟨(3827619579/8000000000 : ℚ), (-740450269/10000000000 : ℚ), (28097479109/1000000000000 : ℚ), 2⟩,
    ⟨(479827773213/1000000000000 : ℚ), (-150016823/2000000000 : ℚ), (14279537101/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-751283837/10000000000 : ℚ), (1788540659/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (87908138197/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control141.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control141.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate141

-- Control144
namespace DiagonalRamsey.JointInheritedCertificate144
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57440513347/250000000000 : ℚ), (9068084775527/10000000000 : ℚ), (-52265091568307/250000000000 : ℚ), 11⟩,
    ⟨(46174008783/200000000000 : ℚ), (491396049291/5000000000 : ℚ), (-1445390224727/62500000000 : ℚ), 8⟩,
    ⟨(116537677207/500000000000 : ℚ), (34055622937/1000000000 : ℚ), (-8251461677351/1000000000000 : ℚ), 6⟩,
    ⟨(236356746541/1000000000000 : ℚ), (82840855889/5000000000 : ℚ), (-1038308733181/250000000000 : ℚ), 5⟩,
    ⟨(120341309347/500000000000 : ℚ), (94863172899/10000000000 : ℚ), (-2466630582239/1000000000000 : ℚ), 5⟩,
    ⟨(246011310361/1000000000000 : ℚ), (3732701239/625000000 : ℚ), (-1612764427287/1000000000000 : ℚ), 4⟩,
    ⟨(7884109479/31250000000 : ℚ), (1998969697/500000000 : ℚ), (-1121537276251/1000000000000 : ℚ), 4⟩,
    ⟨(129731357951/500000000000 : ℚ), (6978181829/2500000000 : ℚ), (-406596745539/500000000000 : ℚ), 3⟩,
    ⟨(66863971347/250000000000 : ℚ), (627345561/312500000 : ℚ), (-606964936067/1000000000000 : ℚ), 3⟩,
    ⟨(276194033193/1000000000000 : ℚ), (14742829717/10000000000 : ℚ), (-462194195449/1000000000000 : ℚ), 3⟩,
    ⟨(285593006177/1000000000000 : ℚ), (548984411/500000000 : ℚ), (-178303492151/500000000000 : ℚ), 3⟩,
    ⟨(295562287093/1000000000000 : ℚ), (8243238481/10000000000 : ℚ), (-34646625717/125000000000 : ℚ), 3⟩,
    ⟨(61201173263/200000000000 : ℚ), (775363921/1250000000 : ℚ), (-21586043823/100000000000 : ℚ), 2⟩,
    ⟨(158411583233/500000000000 : ℚ), (4648772851/10000000000 : ℚ), (-167503178177/1000000000000 : ℚ), 2⟩,
    ⟨(163955005517/500000000000 : ℚ), (688579779/2000000000 : ℚ), (-128659285011/1000000000000 : ℚ), 2⟩,
    ⟨(169579813821/500000000000 : ℚ), (2492064671/10000000000 : ℚ), (-12120876021/125000000000 : ℚ), 2⟩,
    ⟨(70092735267/200000000000 : ℚ), (173172247/1000000000 : ℚ), (-14153011397/200000000000 : ℚ), 2⟩,
    ⟨(22607080809/62500000000 : ℚ), (1116248473/10000000000 : ℚ), (-48860043193/1000000000000 : ℚ), 2⟩,
    ⟨(372800137511/1000000000000 : ℚ), (612814617/10000000000 : ℚ), (-15189654917/500000000000 : ℚ), 2⟩,
    ⟨(383617437663/1000000000000 : ℚ), (24678921/1250000000 : ℚ), (-14675087451/1000000000000 : ℚ), 2⟩,
    ⟨(78812203377/200000000000 : ℚ), (-73834599/5000000000 : ℚ), (-1260481231/1000000000000 : ℚ), 2⟩,
    ⟨(2020151489/5000000000 : ℚ), (-108950101/2500000000 : ℚ), (1279281479/125000000000 : ℚ), 2⟩,
    ⟨(82685854157/200000000000 : ℚ), (-677036151/10000000000 : ℚ), (5023042757/250000000000 : ℚ), 2⟩,
    ⟨(42216741859/100000000000 : ℚ), (-219765031/2500000000 : ℚ), (28531263561/1000000000000 : ℚ), 2⟩,
    ⟨(107540147019/250000000000 : ℚ), (-1047767641/10000000000 : ℚ), (17860009823/500000000000 : ℚ), 2⟩,
    ⟨(8746636013/20000000000 : ℚ), (-593848651/5000000000 : ℚ), (41788809921/1000000000000 : ℚ), 2⟩,
    ⟨(443611993617/1000000000000 : ℚ), (-130234357/1000000000 : ℚ), (46838290839/1000000000000 : ℚ), 2⟩,
    ⟨(112235171321/250000000000 : ℚ), (-1394384593/10000000000 : ℚ), (50945660283/1000000000000 : ℚ), 2⟩,
    ⟨(453266557437/1000000000000 : ℚ), (-146584863/1000000000 : ℚ), (54169327629/1000000000000 : ℚ), 2⟩,
    ⟨(114136987391/250000000000 : ℚ), (-759117517/5000000000 : ℚ), (28276190719/500000000000 : ℚ), 2⟩,
    ⟨(458753260063/1000000000000 : ℚ), (-1552600723/10000000000 : ℚ), (14531279279/250000000000 : ℚ), 2⟩,
    ⟨(45986125059/100000000000 : ℚ), (-1569619571/10000000000 : ℚ), (58906803643/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-62869573/400000000 : ℚ), (7375537199/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (1971574419/6250000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control144.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control144.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate144

-- Control145
namespace DiagonalRamsey.JointInheritedCertificate145
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(58975394997/250000000000 : ℚ), (366289807613/400000000 : ℚ), (-216750701915111/1000000000000 : ℚ), 11⟩,
    ⟨(237028148547/1000000000000 : ℚ), (496316897081/5000000000 : ℚ), (-11988521372603/500000000000 : ℚ), 8⟩,
    ⟨(119635218097/500000000000 : ℚ), (344053198701/10000000000 : ℚ), (-8555103407897/1000000000000 : ℚ), 6⟩,
    ⟨(242606848473/1000000000000 : ℚ), (167431600521/10000000000 : ℚ), (-430613608449/100000000000 : ℚ), 5⟩,
    ⟨(247005253911/1000000000000 : ℚ), (11986891701/1250000000 : ℚ), (-2557506107059/1000000000000 : ℚ), 5⟩,
    ⟨(126211646729/500000000000 : ℚ), (60392820237/10000000000 : ℚ), (-83612524517/50000000000 : ℚ), 4⟩,
    ⟨(258808788431/1000000000000 : ℚ), (40441617127/10000000000 : ℚ), (-1162977603169/1000000000000 : ℚ), 4⟩,
    ⟨(16631265189/62500000000 : ℚ), (28245828473/10000000000 : ℚ), (-843319535959/1000000000000 : ℚ), 3⟩,
    ⟨(274227436543/1000000000000 : ℚ), (812911643/400000000 : ℚ), (-314768525499/500000000000 : ℚ), 3⟩,
    ⟨(283112099671/1000000000000 : ℚ), (14931559333/10000000000 : ℚ), (-11986925601/25000000000 : ℚ), 3⟩,
    ⟨(146334334123/500000000000 : ℚ), (2781558409/2500000000 : ℚ), (-370045609051/1000000000000 : ℚ), 3⟩,
    ⟨(37850638411/125000000000 : ℚ), (2089705081/2500000000 : ℚ), (-143866457627/500000000000 : ℚ), 3⟩,
    ⟨(313423797349/1000000000000 : ℚ), (6295287623/10000000000 : ℚ), (-28026416147/125000000000 : ℚ), 2⟩,
    ⟨(324422474637/1000000000000 : ℚ), (4723465313/10000000000 : ℚ), (-34824862003/200000000000 : ℚ), 2⟩,
    ⟨(167847607939/500000000000 : ℚ), (3503932591/10000000000 : ℚ), (-33475712567/250000000000 : ℚ), 2⟩,
    ⟨(86783364603/250000000000 : ℚ), (2542432307/10000000000 : ℚ), (-3159306921/31250000000 : ℚ), 2⟩,
    ⟨(35862704571/100000000000 : ℚ), (443421627/2500000000 : ℚ), (-18496570799/250000000000 : ℚ), 2⟩,
    ⟨(92516322061/250000000000 : ℚ), (115154357/1000000000 : ℚ), (-12832594629/250000000000 : ℚ), 2⟩,
    ⟨(76267605897/200000000000 : ℚ), (20087089/312500000 : ℚ), (-32224756511/1000000000000 : ℚ), 2⟩,
    ⟨(196168353387/500000000000 : ℚ), (55784043/2500000000 : ℚ), (-15997210871/1000000000000 : ℚ), 2⟩,
    ⟨(201477698417/500000000000 : ℚ), (-31349179/2500000000 : ℚ), (-1071160237/500000000000 : ℚ), 2⟩,
    ⟨(103272958969/250000000000 : ℚ), (-416294097/10000000000 : ℚ), (4861936747/500000000000 : ℚ), 2⟩,
    ⟨(422648404451/1000000000000 : ℚ), (-131952131/2000000000 : ℚ), (497386183/25000000000 : ℚ), 2⟩,
    ⟨(431533067579/1000000000000 : ℚ), (-863582053/10000000000 : ℚ), (14299496301/500000000000 : ℚ), 2⟩,
    ⟨(219830130549/500000000000 : ℚ), (-206746703/2000000000 : ℚ), (7201950901/200000000000 : ℚ), 2⟩,
    ⟨(446951715691/1000000000000 : ℚ), (-293704099/2500000000 : ℚ), (42263419799/1000000000000 : ℚ), 2⟩,
    ⟨(56667151333/125000000000 : ℚ), (-645187181/5000000000 : ℚ), (47464821903/1000000000000 : ℚ), 2⟩,
    ⟨(458755250211/1000000000000 : ℚ), (-1383123897/10000000000 : ℚ), (1615450621/31250000000 : ℚ), 2⟩,
    ⟨(463153655649/1000000000000 : ℚ), (-363780677/2500000000 : ℚ), (55013132937/1000000000000 : ℚ), 2⟩,
    ⟨(58311258491/125000000000 : ℚ), (-60315687/400000000 : ℚ), (28732965069/500000000000 : ℚ), 2⟩,
    ⟨(18749294223/40000000000 : ℚ), (-771252447/5000000000 : ℚ), (59084447187/1000000000000 : ℚ), 2⟩,
    ⟨(234929462067/500000000000 : ℚ), (-779822399/5000000000 : ℚ), (29944406919/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1561779571/10000000000 : ℚ), (14997283283/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (155880917119/500000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control145.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control145.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate145
