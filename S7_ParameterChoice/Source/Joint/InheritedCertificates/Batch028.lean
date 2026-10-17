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

-- Control248
namespace DiagonalRamsey.JointInheritedCertificate248
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57771599499/200000000000 : ℚ), (6761985463403/5000000000 : ℚ), (-391503328965313/1000000000000 : ℚ), 11⟩,
    ⟨(289729720101/1000000000000 : ℚ), (1475522218379/10000000000 : ℚ), (-2705061284823/62500000000 : ℚ), 8⟩,
    ⟨(72866192537/250000000000 : ℚ), (51593703631/1000000000 : ℚ), (-3855772451191/250000000000 : ℚ), 7⟩,
    ⟨(58809287631/200000000000 : ℚ), (126754174909/5000000000 : ℚ), (-61982585513/8000000000 : ℚ), 6⟩,
    ⟨(2323827041/7812500000 : ℚ), (146602603001/10000000000 : ℚ), (-4589123201851/1000000000000 : ℚ), 5⟩,
    ⟨(301642262603/1000000000000 : ℚ), (93168950747/10000000000 : ℚ), (-2990024955421/1000000000000 : ℚ), 5⟩,
    ⟨(153291633551/500000000000 : ℚ), (62893184883/10000000000 : ℚ), (-258765687233/125000000000 : ℚ), 4⟩,
    ⟨(312225290171/1000000000000 : ℚ), (44217355813/10000000000 : ℚ), (-746391928669/500000000000 : ℚ), 4⟩,
    ⟨(79628499011/250000000000 : ℚ), (15983225241/5000000000 : ℚ), (-1106743450447/1000000000000 : ℚ), 4⟩,
    ⟨(65077764209/200000000000 : ℚ), (23546316117/10000000000 : ℚ), (-417932737643/500000000000 : ℚ), 3⟩,
    ⟨(332783556851/1000000000000 : ℚ), (17542662011/10000000000 : ℚ), (-39902288283/62500000000 : ℚ), 3⟩,
    ⟨(68125397623/200000000000 : ℚ), (3283190491/2500000000 : ℚ), (-61256622863/125000000000 : ℚ), 3⟩,
    ⟨(174421789153/500000000000 : ℚ), (9812682139/10000000000 : ℚ), (-37566924383/100000000000 : ℚ), 3⟩,
    ⟨(22334637323/62500000000 : ℚ), (3630270771/5000000000 : ℚ), (-285604659447/1000000000000 : ℚ), 3⟩,
    ⟨(366076882789/1000000000000 : ℚ), (1315873859/2500000000 : ℚ), (-13337850491/62500000000 : ℚ), 3⟩,
    ⟨(187463815469/500000000000 : ℚ), (1838327533/5000000000 : ℚ), (-154640002969/1000000000000 : ℚ), 2⟩,
    ⟨(383821204073/1000000000000 : ℚ), (2398937557/10000000000 : ℚ), (-53093296837/500000000000 : ℚ), 2⟩,
    ⟨(392671952223/1000000000000 : ℚ), (1358327243/10000000000 : ℚ), (-32899928557/500000000000 : ℚ), 2⟩,
    ⟨(100348659461/250000000000 : ℚ), (100517219/2000000000 : ℚ), (-31834759271/1000000000000 : ℚ), 2⟩,
    ⟨(204952628353/500000000000 : ℚ), (-103383827/5000000000 : ℚ), (-1198277/390625000 : ℚ), 2⟩,
    ⟨(26132615431/62500000000 : ℚ), (-399229643/5000000000 : ℚ), (10711826323/500000000000 : ℚ), 2⟩,
    ⟨(5324565977/12500000000 : ℚ), (-161771549/1250000000 : ℚ), (42340923231/1000000000000 : ℚ), 2⟩,
    ⟨(433360013967/1000000000000 : ℚ), (-1710426893/10000000000 : ℚ), (60223037119/1000000000000 : ℚ), 2⟩,
    ⟨(55029354871/125000000000 : ℚ), (-411980041/2000000000 : ℚ), (15097206821/200000000000 : ℚ), 2⟩,
    ⟨(446523544841/1000000000000 : ℚ), (-2352370433/10000000000 : ℚ), (11056536091/125000000000 : ℚ), 2⟩,
    ⟨(45216556791/100000000000 : ℚ), (-2595398257/10000000000 : ℚ), (49685901831/500000000000 : ℚ), 2⟩,
    ⟨(457106572409/1000000000000 : ℚ), (-698706231/2500000000 : ℚ), (54218985731/500000000000 : ℚ), 2⟩,
    ⟨(115324743441/250000000000 : ℚ), (-2955138481/10000000000 : ℚ), (23159868391/200000000000 : ℚ), 2⟩,
    ⟨(464702396857/1000000000000 : ℚ), (-1539871873/5000000000 : ℚ), (3039210969/25000000000 : ℚ), 2⟩,
    ⟨(14602627027/31250000000 : ℚ), (-3171160311/10000000000 : ℚ), (1258283329/10000000000 : ℚ), 2⟩,
    ⟨(469019114911/1000000000000 : ℚ), (-3231165267/10000000000 : ℚ), (16079682267/125000000000 : ℚ), 2⟩,
    ⟨(469890837517/1000000000000 : ℚ), (-3260891921/10000000000 : ℚ), (3250824717/25000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-408074371/1250000000 : ℚ), (813793823/6250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (278122896431/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control248.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control248.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate248

-- Control249
namespace DiagonalRamsey.JointInheritedCertificate249
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29602743547/100000000000 : ℚ), (852921773481/625000000 : ℚ), (-25303473978167/62500000000 : ℚ), 11⟩,
    ⟨(18557048737/62500000000 : ℚ), (1489090959957/10000000000 : ℚ), (-44757496691513/1000000000000 : ℚ), 8⟩,
    ⟨(149337471043/500000000000 : ℚ), (16274054479/312500000 : ℚ), (-25519289951/1600000000 : ℚ), 7⟩,
    ⟨(150648475883/500000000000 : ℚ), (7997969287/312500000 : ℚ), (-8012552994547/1000000000000 : ℚ), 6⟩,
    ⟨(152376778723/500000000000 : ℚ), (148040039643/10000000000 : ℚ), (-2373077810841/500000000000 : ℚ), 5⟩,
    ⟨(154505735061/500000000000 : ℚ), (23526646047/2500000000 : ℚ), (-386569385271/125000000000 : ℚ), 5⟩,
    ⟨(31402968377/100000000000 : ℚ), (63544305813/10000000000 : ℚ), (-1070661569643/500000000000 : ℚ), 4⟩,
    ⟨(159879935123/500000000000 : ℚ), (2234482443/500000000 : ℚ), (-772168949791/500000000000 : ℚ), 4⟩,
    ⟨(13045873789/40000000000 : ℚ), (32320131803/10000000000 : ℚ), (-45807365177/40000000000 : ℚ), 4⟩,
    ⟨(6662581943/20000000000 : ℚ), (23817690233/10000000000 : ℚ), (-173025223757/200000000000 : ℚ), 3⟩,
    ⟨(85159846153/250000000000 : ℚ), (443872939/250000000 : ℚ), (-4131422559/6250000000 : ℚ), 3⟩,
    ⟨(348605378939/1000000000000 : ℚ), (6650700123/5000000000 : ℚ), (-253826012631/500000000000 : ℚ), 3⟩,
    ⟨(1427801453/4000000000 : ℚ), (4974226341/5000000000 : ℚ), (-194720205361/500000000000 : ℚ), 3⟩,
    ⟨(73118794157/200000000000 : ℚ), (368556277/500000000 : ℚ), (-29638129407/100000000000 : ℚ), 3⟩,
    ⟨(187226479439/500000000000 : ℚ), (669314891/1250000000 : ℚ), (-44360060043/200000000000 : ℚ), 3⟩,
    ⟨(383442010631/1000000000000 : ℚ), (750465043/2000000000 : ℚ), (-161113462749/1000000000000 : ℚ), 2⟩,
    ⟨(392474556561/1000000000000 : ℚ), (2462454133/10000000000 : ℚ), (-27773072879/250000000000 : ℚ), 2⟩,
    ⟨(401463608313/1000000000000 : ℚ), (1412159689/10000000000 : ℚ), (-34706917961/500000000000 : ℚ), 2⟩,
    ⟨(205161298203/500000000000 : ℚ), (68582907/1250000000 : ℚ), (-34376067731/1000000000000 : ℚ), 2⟩,
    ⟨(418966203941/1000000000000 : ℚ), (-5216369/312500000 : ℚ), (-2356308567/500000000000 : ℚ), 2⟩,
    ⟨(106827797063/250000000000 : ℚ), (-381818743/5000000000 : ℚ), (4106181127/200000000000 : ℚ), 2⟩,
    ⟨(435277182579/1000000000000 : ℚ), (-252680303/2000000000 : ℚ), (42081349863/1000000000000 : ℚ), 2⟩,
    ⟨(221393735021/500000000000 : ℚ), (-841461629/5000000000 : ℚ), (60496849199/1000000000000 : ℚ), 2⟩,
    ⟨(449769722467/1000000000000 : ℚ), (-508756879/2500000000 : ℚ), (76208550423/1000000000000 : ℚ), 2⟩,
    ⟨(91231339389/200000000000 : ℚ), (-291201103/1250000000 : ℚ), (89550699449/1000000000000 : ℚ), 2⟩,
    ⟨(230943441711/500000000000 : ℚ), (-2574319979/10000000000 : ℚ), (100782645113/1000000000000 : ℚ), 2⟩,
    ⟨(466905097069/1000000000000 : ℚ), (-1387537471/5000000000 : ℚ), (13763140531/125000000000 : ℚ), 2⟩,
    ⟨(235581504873/500000000000 : ℚ), (-293641873/1000000000 : ℚ), (117672417573/1000000000000 : ℚ), 2⟩,
    ⟨(18984784617/40000000000 : ℚ), (-1530900061/5000000000 : ℚ), (123601455541/1000000000000 : ℚ), 2⟩,
    ⟨(238620812553/500000000000 : ℚ), (-3153771711/10000000000 : ℚ), (63989303839/500000000000 : ℚ), 2⟩,
    ⟨(2395018937/5000000000 : ℚ), (-3214134127/10000000000 : ℚ), (130864655117/1000000000000 : ℚ), 2⟩,
    ⟨(239944565861/500000000000 : ℚ), (-324403581/1000000000 : ℚ), (33074569667/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3247760563/10000000000 : ℚ), (132477046137/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (34141218373/125000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control249.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control249.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate249

-- Control250
namespace DiagonalRamsey.JointInheritedCertificate250
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133342552311/500000000000 : ℚ), (11079632099/8000000 : ℚ), (-74026666229689/200000000000 : ℚ), 11⟩,
    ⟨(133735518283/500000000000 : ℚ), (1511327596449/10000000000 : ℚ), (-40913136584471/1000000000000 : ℚ), 8⟩,
    ⟨(269035331501/1000000000000 : ℚ), (528560350859/10000000000 : ℚ), (-116603055679/8000000000 : ℚ), 7⟩,
    ⟨(271362924409/1000000000000 : ℚ), (259743551207/10000000000 : ℚ), (-7318882658139/1000000000000 : ℚ), 6⟩,
    ⟨(2744313993/10000000000 : ℚ), (75103795223/5000000000 : ℚ), (-4332464228159/1000000000000 : ℚ), 5⟩,
    ⟨(278211205083/1000000000000 : ℚ), (19088217207/2000000000 : ℚ), (-2820521372917/1000000000000 : ℚ), 5⟩,
    ⟨(141332970081/500000000000 : ℚ), (16099311807/2500000000 : ℚ), (-1950694758217/1000000000000 : ℚ), 4⟩,
    ⟨(287752703003/1000000000000 : ℚ), (45238020797/10000000000 : ℚ), (-1404714546547/1000000000000 : ℚ), 4⟩,
    ⟨(293422505299/1000000000000 : ℚ), (32662555097/10000000000 : ℚ), (-20791582653/20000000000 : ℚ), 4⟩,
    ⟨(149810371877/500000000000 : ℚ), (12006684267/5000000000 : ℚ), (-39165283977/50000000000 : ℚ), 3⟩,
    ⟨(38285965743/125000000000 : ℚ), (17841490453/10000000000 : ℚ), (-298229181783/500000000000 : ℚ), 3⟩,
    ⟨(313359245187/1000000000000 : ℚ), (665196051/500000000 : ℚ), (-113991586631/250000000000 : ℚ), 3⟩,
    ⟨(80191799721/250000000000 : ℚ), (154441297/156250000 : ℚ), (-17380337893/50000000000 : ℚ), 3⟩,
    ⟨(65688048879/200000000000 : ℚ), (1813139709/2500000000 : ℚ), (-13111436257/50000000000 : ℚ), 3⟩,
    ⟨(168152243047/500000000000 : ℚ), (259534761/500000000 : ℚ), (-19373253669/100000000000 : ℚ), 3⟩,
    ⟨(86071046759/250000000000 : ℚ), (1775059739/5000000000 : ℚ), (-137929862559/1000000000000 : ℚ), 3⟩,
    ⟨(352302498339/1000000000000 : ℚ), (1113598843/5000000000 : ℚ), (-2296796067/25000000000 : ℚ), 2⟩,
    ⟨(360282199281/1000000000000 : ℚ), (1148093481/10000000000 : ℚ), (-26718861873/500000000000 : ℚ), 2⟩,
    ⟨(368146440981/1000000000000 : ℚ), (129624443/5000000000 : ℚ), (-842985233/40000000000 : ℚ), 2⟩,
    ⟨(375819486491/1000000000000 : ℚ), (-478786807/10000000000 : ℚ), (6371839737/1000000000000 : ℚ), 2⟩,
    ⟨(383227440189/1000000000000 : ℚ), (-547728523/5000000000 : ℚ), (7442682849/250000000000 : ℚ), 2⟩,
    ⟨(390298959431/1000000000000 : ℚ), (-322596301/2000000000 : ℚ), (49782976779/1000000000000 : ℚ), 2⟩,
    ⟨(396965941621/1000000000000 : ℚ), (-2048282179/10000000000 : ℚ), (8364404507/125000000000 : ℚ), 2⟩,
    ⟨(100791045019/250000000000 : ℚ), (-2414338839/10000000000 : ℚ), (40779056343/500000000000 : ℚ), 2⟩,
    ⟨(102208495593/250000000000 : ℚ), (-2721157081/10000000000 : ℚ), (94013728473/1000000000000 : ℚ), 2⟩,
    ⟨(413920745213/1000000000000 : ℚ), (-1488234239/5000000000 : ℚ), (104515910657/1000000000000 : ℚ), 2⟩,
    ⟨(104593870073/250000000000 : ℚ), (-398280267/1250000000 : ℚ), (56622574263/500000000000 : ℚ), 2⟩,
    ⟨(16886211443/40000000000 : ℚ), (-838765263/2500000000 : ℚ), (15042471241/125000000000 : ℚ), 2⟩,
    ⟨(212611880483/500000000000 : ℚ), (-871599911/2500000000 : ℚ), (25180864497/200000000000 : ℚ), 2⟩,
    ⟨(3420410831/8000000000 : ℚ), (-1791413681/5000000000 : ℚ), (65007914207/500000000000 : ℚ), 2⟩,
    ⟨(429115648809/1000000000000 : ℚ), (-3646155471/10000000000 : ℚ), (132728368337/1000000000000 : ℚ), 2⟩,
    ⟨(429901580753/1000000000000 : ℚ), (-919384647/2500000000 : ℚ), (134076298371/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3681448457/10000000000 : ℚ), (134244403487/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (287657245259/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control250.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control250.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate250

-- Control251
namespace DiagonalRamsey.JointInheritedCertificate251
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(259656105693/1000000000000 : ℚ), (13734033946309/10000000000 : ℚ), (-357378033386263/1000000000000 : ℚ), 11⟩,
    ⟨(65106935019/250000000000 : ℚ), (37464038383/250000000 : ℚ), (-1975139154843/50000000000 : ℚ), 8⟩,
    ⟨(130981788791/500000000000 : ℚ), (20960514557/400000000 : ℚ), (-7036308666153/500000000000 : ℚ), 7⟩,
    ⟨(33031103407/125000000000 : ℚ), (128729785743/5000000000 : ℚ), (-706615963073/100000000000 : ℚ), 6⟩,
    ⟨(267261480893/1000000000000 : ℚ), (148854222867/10000000000 : ℚ), (-418262964299/100000000000 : ℚ), 5⟩,
    ⟨(270972524993/1000000000000 : ℚ), (94557886939/10000000000 : ℚ), (-2722758872501/1000000000000 : ℚ), 5⟩,
    ⟨(275346220173/1000000000000 : ℚ), (63783554217/10000000000 : ℚ), (-1882871242363/1000000000000 : ℚ), 4⟩,
    ⟨(70085111339/250000000000 : ℚ), (11198130723/2500000000 : ℚ), (-677832329389/500000000000 : ℚ), 4⟩,
    ⟨(11436284137/40000000000 : ℚ), (32328598749/10000000000 : ℚ), (-1003065558481/1000000000000 : ℚ), 4⟩,
    ⟨(145996292209/500000000000 : ℚ), (11878398097/5000000000 : ℚ), (-188892973831/250000000000 : ℚ), 3⟩,
    ⟨(74634570457/250000000000 : ℚ), (17640484329/10000000000 : ℚ), (-575107129271/1000000000000 : ℚ), 3⟩,
    ⟨(30548115701/100000000000 : ℚ), (105151169/80000000 : ℚ), (-439395834849/1000000000000 : ℚ), 3⟩,
    ⟨(312754346281/1000000000000 : ℚ), (4877542753/5000000000 : ℚ), (-167352860701/500000000000 : ℚ), 3⟩,
    ⟨(320287804851/1000000000000 : ℚ), (7147042329/10000000000 : ℚ), (-126100890957/500000000000 : ℚ), 3⟩,
    ⟨(328008981397/1000000000000 : ℚ), (40828219/80000000 : ℚ), (-185995091333/1000000000000 : ℚ), 3⟩,
    ⟨(335843516769/1000000000000 : ℚ), (3477344147/10000000000 : ℚ), (-8252643729/62500000000 : ℚ), 3⟩,
    ⟨(171857980053/500000000000 : ℚ), (541451649/2500000000 : ℚ), (-87496868311/1000000000000 : ℚ), 2⟩,
    ⟨(351550495477/1000000000000 : ℚ), (1095766239/10000000000 : ℚ), (-6288984319/125000000000 : ℚ), 2⟩,
    ⟨(44908959003/125000000000 : ℚ), (26771773/1250000000 : ℚ), (-18988741867/1000000000000 : ℚ), 2⟩,
    ⟨(183402565297/500000000000 : ℚ), (-259018559/5000000000 : ℚ), (474146251/62500000000 : ℚ), 2⟩,
    ⟨(74815663973/200000000000 : ℚ), (-282504643/2500000000 : ℚ), (30251640001/1000000000000 : ℚ), 2⟩,
    ⟨(381021195047/1000000000000 : ℚ), (-1643763813/10000000000 : ℚ), (24822242883/500000000000 : ℚ), 2⟩,
    ⟨(48445861557/125000000000 : ℚ), (-259502313/1250000000 : ℚ), (66253260341/1000000000000 : ℚ), 2⟩,
    ⟨(7873047469/20000000000 : ℚ), (-609905969/2500000000 : ℚ), (3218172577/40000000000 : ℚ), 2⟩,
    ⟨(199609515759/500000000000 : ℚ), (-1372238097/5000000000 : ℚ), (23134651213/250000000000 : ℚ), 2⟩,
    ⟨(202106628351/500000000000 : ℚ), (-1499110317/5000000000 : ℚ), (102731198847/1000000000000 : ℚ), 2⟩,
    ⟨(408586951881/1000000000000 : ℚ), (-200422387/625000000 : ℚ), (111205726669/1000000000000 : ℚ), 2⟩,
    ⟨(206148997991/500000000000 : ℚ), (-3374618581/10000000000 : ℚ), (7380948987/62500000000 : ℚ), 2⟩,
    ⟨(415310649619/1000000000000 : ℚ), (-876308789/2500000000 : ℚ), (30875007911/250000000000 : ℚ), 2⟩,
    ⟨(417595899293/1000000000000 : ℚ), (-1800573291/5000000000 : ℚ), (127494243881/1000000000000 : ℚ), 2⟩,
    ⟨(209565868399/500000000000 : ℚ), (-1832071093/5000000000 : ℚ), (65064868639/500000000000 : ℚ), 2⟩,
    ⟨(209951685591/500000000000 : ℚ), (-57740039/156250000 : ℚ), (65719741143/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1849626087/5000000000 : ℚ), (3290070749/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (292688756293/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control251.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control251.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate251

-- Control254
namespace DiagonalRamsey.JointInheritedCertificate254
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(244254475353/1000000000000 : ℚ), (543701361663/500000000 : ℚ), (-16643727127721/62500000000 : ℚ), 11⟩,
    ⟨(122574175909/500000000000 : ℚ), (1183548652347/10000000000 : ℚ), (-3680748167383/125000000000 : ℚ), 8⟩,
    ⟨(61731874057/250000000000 : ℚ), (412489068331/10000000000 : ℚ), (-82012314657/7812500000 : ℚ), 7⟩,
    ⟨(249574774451/1000000000000 : ℚ), (40388893369/2000000000 : ℚ), (-131923612341/25000000000 : ℚ), 6⟩,
    ⟨(1012258767/4000000000 : ℚ), (5817683211/500000000 : ℚ), (-391045220219/125000000000 : ℚ), 5⟩,
    ⟨(257363638313/1000000000000 : ℚ), (18420695957/2500000000 : ℚ), (-2040561221297/1000000000000 : ℚ), 5⟩,
    ⟨(52486042587/200000000000 : ℚ), (2478800731/500000000 : ℚ), (-1414710569237/1000000000000 : ℚ), 4⟩,
    ⟨(134107810867/500000000000 : ℚ), (17376594307/5000000000 : ℚ), (-1021833443657/1000000000000 : ℚ), 4⟩,
    ⟨(274664148059/1000000000000 : ℚ), (3132817021/1250000000 : ℚ), (-759048529003/1000000000000 : ℚ), 4⟩,
    ⟨(70428422269/250000000000 : ℚ), (9212469843/5000000000 : ℚ), (-143642143093/250000000000 : ℚ), 3⟩,
    ⟨(289296353853/1000000000000 : ℚ), (685414917/500000000 : ℚ), (-220011182141/500000000000 : ℚ), 3⟩,
    ⟨(297339117183/1000000000000 : ℚ), (1281878047/1250000000 : ℚ), (-338812762563/1000000000000 : ℚ), 3⟩,
    ⟨(305764522857/1000000000000 : ℚ), (1915761297/2500000000 : ℚ), (-52141724683/200000000000 : ℚ), 3⟩,
    ⟨(314491429613/1000000000000 : ℚ), (5676068017/10000000000 : ℚ), (-24891020319/125000000000 : ℚ), 3⟩,
    ⟨(323435792569/1000000000000 : ℚ), (206250599/500000000 : ℚ), (-149685010271/1000000000000 : ℚ), 3⟩,
    ⟨(332511472621/1000000000000 : ℚ), (1447537903/5000000000 : ℚ), (-21873625667/200000000000 : ℚ), 2⟩,
    ⟨(341631066007/1000000000000 : ℚ), (953195557/5000000000 : ℚ), (-76058327861/1000000000000 : ℚ), 2⟩,
    ⟨(175353373029/500000000000 : ℚ), (8817801/80000000 : ℚ), (-12058060313/250000000000 : ℚ), 2⟩,
    ⟨(179825554507/500000000000 : ℚ), (110388141/2500000000 : ℚ), (-24775033667/1000000000000 : ℚ), 2⟩,
    ⟨(36837801577/100000000000 : ℚ), (-10575323/1000000000 : ℚ), (-4858465393/1000000000000 : ℚ), 2⟩,
    ⟨(75360684289/200000000000 : ℚ), (-281055017/5000000000 : ℚ), (189695843/15625000000 : ℚ), 2⟩,
    ⟨(192423092387/500000000000 : ℚ), (-944388069/10000000000 : ℚ), (2669547989/100000000000 : ℚ), 2⟩,
    ⟨(392428849551/1000000000000 : ℚ), (-1977191/15625000 : ℚ), (9792273287/250000000000 : ℚ), 2⟩,
    ⟨(399478390569/1000000000000 : ℚ), (-1534959609/10000000000 : ℚ), (24920404789/500000000000 : ℚ), 2⟩,
    ⟨(202963458447/500000000000 : ℚ), (-176060537/1000000000 : ℚ), (14731656389/250000000000 : ℚ), 2⟩,
    ⟨(102928081423/250000000000 : ℚ), (-48704017/250000000 : ℚ), (33296808979/500000000000 : ℚ), 2⟩,
    ⟨(208389450157/500000000000 : ℚ), (-1051057151/5000000000 : ℚ), (14594139/200000000 : ℚ), 2⟩,
    ⟨(210538923439/500000000000 : ℚ), (-222590971/1000000000 : ℚ), (78156621391/1000000000000 : ℚ), 2⟩,
    ⟨(26535485261/62500000000 : ℚ), (-2322156027/10000000000 : ℚ), (3289041139/40000000000 : ℚ), 2⟩,
    ⟨(427215042399/1000000000000 : ℚ), (-598195559/2500000000 : ℚ), (8523389401/100000000000 : ℚ), 2⟩,
    ⟨(428994186809/1000000000000 : ℚ), (-609786993/2500000000 : ℚ), (2725588117/31250000000 : ℚ), 2⟩,
    ⟨(214944031637/500000000000 : ℚ), (-2462119949/10000000000 : ℚ), (17641065867/200000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2464981671/10000000000 : ℚ), (44164183663/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (83988138333/250000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control254.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control254.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate254

-- Control255
namespace DiagonalRamsey.JointInheritedCertificate255
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(250846644031/1000000000000 : ℚ), (5483312010783/5000000000 : ℚ), (-34476253867771/125000000000 : ℚ), 11⟩,
    ⟨(125878460123/500000000000 : ℚ), (596888518401/5000000000 : ℚ), (-30497766823197/1000000000000 : ℚ), 8⟩,
    ⟨(126784353109/500000000000 : ℚ), (26008036747/625000000 : ℚ), (-10872673393359/1000000000000 : ℚ), 7⟩,
    ⟨(256264553459/1000000000000 : ℚ), (5094236123/250000000 : ℚ), (-2732807144983/500000000000 : ℚ), 6⟩,
    ⟨(64954624871/250000000000 : ℚ), (117432745771/10000000000 : ℚ), (-3240319293471/1000000000000 : ℚ), 5⟩,
    ⟨(66049079463/250000000000 : ℚ), (929814343/125000000 : ℚ), (-2113694285101/1000000000000 : ℚ), 5⟩,
    ⟨(269355847779/1000000000000 : ℚ), (25031279947/5000000000 : ℚ), (-732760575361/500000000000 : ℚ), 4⟩,
    ⟨(27524740017/100000000000 : ℚ), (877628879/250000000 : ℚ), (-1058646133581/1000000000000 : ℚ), 4⟩,
    ⟨(56362847231/200000000000 : ℚ), (6331338223/2500000000 : ℚ), (-786513636467/1000000000000 : ℚ), 4⟩,
    ⟨(57798622703/200000000000 : ℚ), (9312996317/5000000000 : ℚ), (-119097352937/200000000000 : ℚ), 3⟩,
    ⟨(37089361967/125000000000 : ℚ), (6932537037/5000000000 : ℚ), (-456180853223/1000000000000 : ℚ), 3⟩,
    ⟨(304905217833/1000000000000 : ℚ), (2075841087/2000000000 : ℚ), (-87851431331/250000000000 : ℚ), 3⟩,
    ⟨(9796412579/31250000000 : ℚ), (7762725371/10000000000 : ℚ), (-270564488829/1000000000000 : ℚ), 3⟩,
    ⟨(161186109939/500000000000 : ℚ), (179906977/312500000 : ℚ), (-51709970203/250000000000 : ℚ), 3⟩,
    ⟨(41435085381/125000000000 : ℚ), (1047866453/2500000000 : ℚ), (-77844201131/500000000000 : ℚ), 3⟩,
    ⟨(340722872557/1000000000000 : ℚ), (23601437/80000000 : ℚ), (-3562217263/31250000000 : ℚ), 2⟩,
    ⟨(35000978107/100000000000 : ℚ), (488134079/2500000000 : ℚ), (-15910417063/200000000000 : ℚ), 2⟩,
    ⟨(17962598529/50000000000 : ℚ), (142656521/1250000000 : ℚ), (-50793416607/1000000000000 : ℚ), 2⟩,
    ⟨(368360433749/1000000000000 : ℚ), (23744739/500000000 : ℚ), (-26559654487/1000000000000 : ℚ), 2⟩,
    ⟨(377247451099/1000000000000 : ℚ), (-4810523/625000000 : ℚ), (-5992315417/1000000000000 : ℚ), 2⟩,
    ⟨(77165487159/200000000000 : ℚ), (-268494039/5000000000 : ℚ), (2310919957/200000000000 : ℚ), 2⟩,
    ⟨(98504439473/250000000000 : ℚ), (-4611071/50000000 : ℚ), (26572196159/1000000000000 : ℚ), 2⟩,
    ⟨(25108721257/62500000000 : ℚ), (-622800711/5000000000 : ℚ), (39436817867/1000000000000 : ℚ), 2⟩,
    ⟨(6389350273/15625000000 : ℚ), (-303413273/2000000000 : ℚ), (50438530061/1000000000000 : ℚ), 2⟩,
    ⟨(207742626729/500000000000 : ℚ), (-1744240473/10000000000 : ℚ), (59801660907/1000000000000 : ℚ), 2⟩,
    ⟨(421376805849/1000000000000 : ℚ), (-966506459/5000000000 : ℚ), (67699830721/1000000000000 : ℚ), 2⟩,
    ⟨(17061453431/40000000000 : ℚ), (-208792597/1000000000 : ℚ), (4641692251/62500000000 : ℚ), 2⟩,
    ⟨(430914154143/1000000000000 : ℚ), (-22124649/100000000 : ℚ), (79606153667/1000000000000 : ℚ), 2⟩,
    ⟨(434468100169/1000000000000 : ℚ), (-1154635497/5000000000 : ℚ), (83794757703/1000000000000 : ℚ), 2⟩,
    ⟨(437163947409/1000000000000 : ℚ), (-1190148661/5000000000 : ℚ), (21722538403/250000000000 : ℚ), 2⟩,
    ⟨(438975733381/1000000000000 : ℚ), (-242692067/1000000000 : ℚ), (22233142173/250000000000 : ℚ), 2⟩,
    ⟨(109971502399/250000000000 : ℚ), (-1225009381/5000000000 : ℚ), (17989513707/200000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-613224031/2500000000 : ℚ), (5629634753/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (165745357923/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control255.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control255.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate255

-- Control256
namespace DiagonalRamsey.JointInheritedCertificate256
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51505795359/200000000000 : ℚ), (11065028374597/10000000000 : ℚ), (-285692129440309/1000000000000 : ℚ), 11⟩,
    ⟨(258455218857/1000000000000 : ℚ), (1204648210237/10000000000 : ℚ), (-31590726865781/1000000000000 : ℚ), 8⟩,
    ⟨(65074695691/250000000000 : ℚ), (419997734277/10000000000 : ℚ), (-11262507787587/1000000000000 : ℚ), 7⟩,
    ⟨(263041913987/1000000000000 : ℚ), (102855122707/5000000000 : ℚ), (-56617372713/10000000000 : ℚ), 6⟩,
    ⟨(133329097337/500000000000 : ℚ), (118580845363/10000000000 : ℚ), (-3356733285111/1000000000000 : ℚ), 5⟩,
    ⟨(16944549879/62500000000 : ℚ), (75132866863/10000000000 : ℚ), (-1094883891759/500000000000 : ℚ), 5⟩,
    ⟨(276362823891/1000000000000 : ℚ), (50580882073/10000000000 : ℚ), (-189800148021/125000000000 : ℚ), 4⟩,
    ⟨(282357711537/1000000000000 : ℚ), (35480409159/10000000000 : ℚ), (-1096982801449/1000000000000 : ℚ), 4⟩,
    ⟨(144519863479/500000000000 : ℚ), (6401453183/2500000000 : ℚ), (-163027836321/200000000000 : ℚ), 4⟩,
    ⟨(29634451869/100000000000 : ℚ), (18840759197/10000000000 : ℚ), (-308655754399/500000000000 : ℚ), 3⟩,
    ⟨(152100868799/500000000000 : ℚ), (14032729007/10000000000 : ℚ), (-473062053361/1000000000000 : ℚ), 3⟩,
    ⟨(312535714367/1000000000000 : ℚ), (1051216333/1000000000 : ℚ), (-22786526247/62500000000 : ℚ), 3⟩,
    ⟨(160633094123/500000000000 : ℚ), (7869587841/10000000000 : ℚ), (-280901661107/1000000000000 : ℚ), 3⟩,
    ⟨(165154539999/500000000000 : ℚ), (5843929411/10000000000 : ℚ), (-214951815553/1000000000000 : ℚ), 3⟩,
    ⟨(339577301633/1000000000000 : ℚ), (4262905559/10000000000 : ℚ), (-40507023351/250000000000 : ℚ), 3⟩,
    ⟨(348981595109/1000000000000 : ℚ), (3009504031/10000000000 : ℚ), (-118899083563/1000000000000 : ℚ), 2⟩,
    ⟨(17921569597/50000000000 : ℚ), (2002289177/10000000000 : ℚ), (-41645037719/500000000000 : ℚ), 2⟩,
    ⟨(367835685417/1000000000000 : ℚ), (236678423/2000000000 : ℚ), (-53565487737/1000000000000 : ℚ), 2⟩,
    ⟨(94275976763/250000000000 : ℚ), (510948033/10000000000 : ℚ), (-28527957717/1000000000000 : ℚ), 2⟩,
    ⟨(96536699701/250000000000 : ℚ), (-1145011/250000000 : ℚ), (-1457508323/200000000000 : ℚ), 2⟩,
    ⟨(197438636341/500000000000 : ℚ), (-509751613/10000000000 : ℚ), (433024829/40000000000 : ℚ), 2⟩,
    ⟨(100802812363/250000000000 : ℚ), (-224536537/2500000000 : ℚ), (13160474221/500000000000 : ℚ), 2⟩,
    ⟨(411068468359/1000000000000 : ℚ), (-612043623/5000000000 : ℚ), (154644451/3906250000 : ℚ), 2⟩,
    ⟨(104593315023/250000000000 : ℚ), (-1497607951/10000000000 : ℚ), (10186172159/200000000000 : ℚ), 2⟩,
    ⟨(53131909439/125000000000 : ℚ), (-431607849/2500000000 : ℚ), (60579614921/1000000000000 : ℚ), 2⟩,
    ⟨(215525081579/500000000000 : ℚ), (-1916519079/10000000000 : ℚ), (2147365501/31250000000 : ℚ), 2⟩,
    ⟨(218150094493/500000000000 : ℚ), (-2072470203/10000000000 : ℚ), (18869625631/250000000000 : ℚ), 2⟩,
    ⟨(55094349047/125000000000 : ℚ), (-549453631/2500000000 : ℚ), (40487484277/500000000000 : ℚ), 2⟩,
    ⟨(222185536531/500000000000 : ℚ), (-459045517/2000000000 : ℚ), (42642998327/500000000000 : ℚ), 2⟩,
    ⟨(89422840857/200000000000 : ℚ), (-1183344061/5000000000 : ℚ), (44235625473/500000000000 : ℚ), 2⟩,
    ⟨(876870641/1953125000 : ℚ), (-2413591201/10000000000 : ℚ), (45286332053/500000000000 : ℚ), 2⟩,
    ⟨(224942005127/500000000000 : ℚ), (-152301643/625000000 : ℚ), (91616895751/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1219860321/5000000000 : ℚ), (18349424983/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (10217884573/31250000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control256.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control256.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate256

-- Control257
namespace DiagonalRamsey.JointInheritedCertificate257
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264239867859/1000000000000 : ℚ), (111629410879/100000000 : ℚ), (-147862350085979/500000000000 : ℚ), 11⟩,
    ⟨(53036387667/200000000000 : ℚ), (1215464487521/10000000000 : ℚ), (-6540057238317/200000000000 : ℚ), 8⟩,
    ⟨(267057006633/1000000000000 : ℚ), (8476938319/200000000 : ℚ), (-11658232021581/1000000000000 : ℚ), 7⟩,
    ⟨(134923507411/500000000000 : ℚ), (103820348677/5000000000 : ℚ), (-1465200020609/250000000000 : ℚ), 6⟩,
    ⟨(68381273399/250000000000 : ℚ), (14965318221/1250000000 : ℚ), (-138994949623/40000000000 : ℚ), 5⟩,
    ⟨(139027910523/500000000000 : ℚ), (75876178317/10000000000 : ℚ), (-2266954207239/1000000000000 : ℚ), 5⟩,
    ⟨(283395563791/1000000000000 : ℚ), (51095934027/10000000000 : ℚ), (-1572041955829/1000000000000 : ℚ), 4⟩,
    ⟨(72373224297/250000000000 : ℚ), (17926549969/5000000000 : ℚ), (-283964985763/250000000000 : ℚ), 4⟩,
    ⟨(59257820117/200000000000 : ℚ), (25884175831/10000000000 : ℚ), (-844158698527/1000000000000 : ℚ), 4⟩,
    ⟨(151859361413/500000000000 : ℚ), (19053750947/10000000000 : ℚ), (-319714100963/500000000000 : ℚ), 3⟩,
    ⟨(311710212589/1000000000000 : ℚ), (7099419639/5000000000 : ℚ), (-490161609429/1000000000000 : ℚ), 3⟩,
    ⟨(160093303729/500000000000 : ℚ), (425749837/400000000 : ℚ), (-23620431827/62500000000 : ℚ), 3⟩,
    ⟨(164533137559/500000000000 : ℚ), (7975202773/10000000000 : ℚ), (-145680648479/500000000000 : ℚ), 3⟩,
    ⟨(169131849757/500000000000 : ℚ), (1482421641/2500000000 : ℚ), (-55788592797/250000000000 : ℚ), 3⟩,
    ⟨(173845152211/500000000000 : ℚ), (2166636951/5000000000 : ℚ), (-168433547933/1000000000000 : ℚ), 3⟩,
    ⟨(357255306483/1000000000000 : ℚ), (766954831/2500000000 : ℚ), (-61926688541/500000000000 : ℚ), 2⟩,
    ⟨(366866589499/1000000000000 : ℚ), (2051083867/10000000000 : ℚ), (-21764664151/250000000000 : ℚ), 2⟩,
    ⟨(9410789789/25000000000 : ℚ), (1224616281/10000000000 : ℚ), (-56355716043/1000000000000 : ℚ), 2⟩,
    ⟨(385858196467/1000000000000 : ℚ), (546121339/10000000000 : ℚ), (-15252229177/500000000000 : ℚ), 2⟩,
    ⟨(395055620863/1000000000000 : ℚ), (-1935219/1250000000 : ℚ), (-2145744121/250000000000 : ℚ), 2⟩,
    ⟨(403935288523/1000000000000 : ℚ), (-120834447/2500000000 : ℚ), (2020567831/200000000000 : ℚ), 2⟩,
    ⟨(6443932553/15625000000 : ℚ), (-218719379/2500000000 : ℚ), (26081026143/1000000000000 : ℚ), 2⟩,
    ⟨(84080634631/200000000000 : ℚ), (-60167607/500000000 : ℚ), (39756557951/1000000000000 : ℚ), 2⟩,
    ⟨(427832795397/1000000000000 : ℚ), (-739455387/5000000000 : ℚ), (25720928761/500000000000 : ℚ), 2⟩,
    ⟨(434628998793/1000000000000 : ℚ), (-1709368003/10000000000 : ℚ), (30689399297/500000000000 : ℚ), 2⟩,
    ⟨(440726332191/1000000000000 : ℚ), (-950378747/5000000000 : ℚ), (13950959281/200000000000 : ℚ), 2⟩,
    ⟨(89213214987/200000000000 : ℚ), (-1028867639/5000000000 : ℚ), (9589339211/125000000000 : ℚ), 2⟩,
    ⟨(225298401193/500000000000 : ℚ), (-1091937769/5000000000 : ℚ), (41184872363/500000000000 : ℚ), 2⟩,
    ⟨(11356872029/25000000000 : ℚ), (-2281888033/10000000000 : ℚ), (86804065257/1000000000000 : ℚ), 2⟩,
    ⟨(114266222337/250000000000 : ℚ), (-1176888571/5000000000 : ℚ), (90079787623/1000000000000 : ℚ), 2⟩,
    ⟨(458939957647/1000000000000 : ℚ), (-2400956199/10000000000 : ℚ), (92240585877/1000000000000 : ℚ), 2⟩,
    ⟨(459882028123/1000000000000 : ℚ), (-303040801/1250000000 : ℚ), (46657118633/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1213618759/5000000000 : ℚ), (23362032783/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (322430251713/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control257.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control257.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate257
