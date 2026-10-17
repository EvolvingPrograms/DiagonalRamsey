import S7_ParameterChoice.Source.Joint.Controls.ControlPrecision
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeData
import S7_ParameterChoice.Source.Joint.Controls.FastControlDomain
import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

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

namespace DiagonalRamsey.JointInheritedCertificate279
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134150409013/500000000000 : ℚ), (858125072021/625000000 : ℚ), (-369149618128879/1000000000000 : ℚ), 12⟩,
    ⟨(269078974557/1000000000000 : ℚ), (374634383847/2500000000 : ℚ), (-1275103000869/31250000000 : ℚ), 8⟩,
    ⟨(135313896773/500000000000 : ℚ), (52420586109/1000000000 : ℚ), (-14535449600553/1000000000000 : ℚ), 7⟩,
    ⟨(13646617951/50000000000 : ℚ), (128833030789/5000000000 : ℚ), (-912276145509/125000000000 : ℚ), 6⟩,
    ⟨(137985238377/500000000000 : ℚ), (149041008877/10000000000 : ℚ), (-2159857529653/500000000000 : ℚ), 5⟩,
    ⟨(69928222003/250000000000 : ℚ), (11839931093/1250000000 : ℚ), (-1405891527819/500000000000 : ℚ), 5⟩,
    ⟨(284123551329/1000000000000 : ℚ), (63920874741/10000000000 : ℚ), (-1944263737261/1000000000000 : ℚ), 4⟩,
    ⟨(144579994803/500000000000 : ℚ), (89816467/20000000 : ℚ), (-1399732587103/1000000000000 : ℚ), 4⟩,
    ⟨(294773699189/1000000000000 : ℚ), (16212801967/5000000000 : ℚ), (-258892009379/250000000000 : ℚ), 4⟩,
    ⟨(150455308493/500000000000 : ℚ), (11918923963/5000000000 : ℚ), (-3119914759/4000000000 : ℚ), 3⟩,
    ⟨(307511641123/1000000000000 : ℚ), (4427014091/2500000000 : ℚ), (-296816827329/500000000000 : ℚ), 3⟩,
    ⟨(314513200131/1000000000000 : ℚ), (6600080521/5000000000 : ℚ), (-453523464643/1000000000000 : ℚ), 3⟩,
    ⟨(321847865167/1000000000000 : ℚ), (9801927771/10000000000 : ℚ), (-345463007403/1000000000000 : ℚ), 3⟩,
    ⟨(329444999399/1000000000000 : ℚ), (7186083189/10000000000 : ℚ), (-52065116989/200000000000 : ℚ), 3⟩,
    ⟨(33723143827/100000000000 : ℚ), (2568076259/5000000000 : ℚ), (-2400343171/12500000000 : ℚ), 3⟩,
    ⟨(172566097059/500000000000 : ℚ), (876182683/2500000000 : ℚ), (-27278217749/200000000000 : ℚ), 3⟩,
    ⟨(176535589173/500000000000 : ℚ), (2188948459/10000000000 : ℚ), (-90475076897/1000000000000 : ℚ), 3⟩,
    ⟨(180485967097/500000000000 : ℚ), (223099389/2000000000 : ℚ), (-52163867659/1000000000000 : ℚ), 2⟩,
    ⟨(73751674613/200000000000 : ℚ), (115593947/5000000000 : ℚ), (-2488532099/125000000000 : ℚ), 2⟩,
    ⟨(376355507297/1000000000000 : ℚ), (-503166823/10000000000 : ℚ), (1860887429/250000000000 : ℚ), 2⟩,
    ⟨(383690172333/1000000000000 : ℚ), (-223364357/2000000000 : ℚ), (7689682221/250000000000 : ℚ), 2⟩,
    ⟨(390691731341/1000000000000 : ℚ), (-40796479/250000000 : ℚ), (1584277197/31250000000 : ℚ), 2⟩,
    ⟨(198646377739/500000000000 : ℚ), (-2065099623/10000000000 : ℚ), (67763660063/1000000000000 : ℚ), 2⟩,
    ⟨(16137186931/40000000000 : ℚ), (-2429447389/10000000000 : ℚ), (10293623367/125000000000 : ℚ), 2⟩,
    ⟨(204521691429/500000000000 : ℚ), (-1367425533/5000000000 : ℚ), (47377220539/500000000000 : ℚ), 2⟩,
    ⟨(82815964227/200000000000 : ℚ), (-1494499397/5000000000 : ℚ), (52606723129/500000000000 : ℚ), 2⟩,
    ⟨(104622621113/250000000000 : ℚ), (-1598913169/5000000000 : ℚ), (113906180399/1000000000000 : ℚ), 2⟩,
    ⟨(42223289571/100000000000 : ℚ), (-841472759/2500000000 : ℚ), (120970727009/1000000000000 : ℚ), 2⟩,
    ⟨(106317753361/250000000000 : ℚ), (-3496647689/10000000000 : ℚ), (25302288341/200000000000 : ℚ), 2⟩,
    ⟨(213787789459/500000000000 : ℚ), (-71853021/200000000 : ℚ), (13060519747/100000000000 : ℚ), 2⟩,
    ⟨(429124397907/1000000000000 : ℚ), (-1827850941/5000000000 : ℚ), (66652982429/500000000000 : ℚ), 2⟩,
    ⟨(214951277219/500000000000 : ℚ), (-460868503/1250000000 : ℚ), (33662006729/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3690840849/10000000000 : ℚ), (67407699717/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (148454011681/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control279.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control279.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate279

namespace DiagonalRamsey.JointInheritedCertificate280
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137685072887/500000000000 : ℚ), (6920610431907/5000000000 : ℚ), (-19096964465573/50000000000 : ℚ), 12⟩,
    ⟨(69040601447/250000000000 : ℚ), (377707170393/2500000000 : ℚ), (-1688693180391/40000000000 : ℚ), 8⟩,
    ⟨(277739295921/1000000000000 : ℚ), (528583325833/10000000000 : ℚ), (-7519719504669/500000000000 : ℚ), 7⟩,
    ⟨(8752675933/31250000000 : ℚ), (259863986421/10000000000 : ℚ), (-7551481019579/1000000000000 : ℚ), 6⟩,
    ⟨(283178811117/1000000000000 : ℚ), (150342839257/10000000000 : ℚ), (-4469820850789/1000000000000 : ℚ), 5⟩,
    ⟨(286989050677/1000000000000 : ℚ), (95568545859/10000000000 : ℚ), (-90927400867/31250000000 : ℚ), 5⟩,
    ⟨(145739826923/500000000000 : ℚ), (32255228367/5000000000 : ℚ), (-1006069339891/500000000000 : ℚ), 4⟩,
    ⟨(14830368683/50000000000 : ℚ), (88546589/19531250 : ℚ), (-1448784476813/1000000000000 : ℚ), 4⟩,
    ⟨(151161413687/500000000000 : ℚ), (8186453809/2500000000 : ℚ), (-268012819713/250000000000 : ℚ), 4⟩,
    ⟨(154285486023/500000000000 : ℚ), (24083542817/10000000000 : ℚ), (-807660184303/1000000000000 : ℚ), 3⟩,
    ⟨(157645817313/500000000000 : ℚ), (17900245773/10000000000 : ℚ), (-122983467853/200000000000 : ℚ), 3⟩,
    ⟨(16121004573/50000000000 : ℚ), (13352891849/10000000000 : ℚ), (-94003140733/200000000000 : ℚ), 3⟩,
    ⟨(329887691611/1000000000000 : ℚ), (1240617733/1250000000 : ℚ), (-179139122773/500000000000 : ℚ), 3⟩,
    ⟨(42202814751/125000000000 : ℚ), (7286342273/10000000000 : ℚ), (-13513076469/50000000000 : ℚ), 3⟩,
    ⟨(86387520011/250000000000 : ℚ), (1304688991/2500000000 : ℚ), (-9983521619/50000000000 : ℚ), 3⟩,
    ⟨(88398507741/250000000000 : ℚ), (3573491133/10000000000 : ℚ), (-28436406151/200000000000 : ℚ), 3⟩,
    ⟨(361676903123/1000000000000 : ℚ), (1123382701/5000000000 : ℚ), (-94752282109/1000000000000 : ℚ), 3⟩,
    ⟨(184860427021/500000000000 : ℚ), (582303621/5000000000 : ℚ), (-55191570877/1000000000000 : ℚ), 2⟩,
    ⟨(377648416079/1000000000000 : ℚ), (273337663/10000000000 : ℚ), (-10948105319/500000000000 : ℚ), 2⟩,
    ⟨(96345810619/250000000000 : ℚ), (-466600971/10000000000 : ℚ), (6326334811/1000000000000 : ℚ), 2⟩,
    ⟨(392850842627/1000000000000 : ℚ), (-1084745531/10000000000 : ℚ), (15187070117/500000000000 : ℚ), 2⟩,
    ⟨(399979299461/1000000000000 : ℚ), (-320679289/2000000000 : ℚ), (50930503167/1000000000000 : ℚ), 2⟩,
    ⟨(10167499051/25000000000 : ℚ), (-1019772389/5000000000 : ℚ), (6851947451/100000000000 : ℚ), 2⟩,
    ⟨(51618513339/125000000000 : ℚ), (-2406228713/10000000000 : ℚ), (83545270321/1000000000000 : ℚ), 2⟩,
    ⟨(418663560427/1000000000000 : ℚ), (-678375663/2500000000 : ℚ), (96320708829/1000000000000 : ℚ), 2⟩,
    ⟨(423791280241/1000000000000 : ℚ), (-296913839/1000000000 : ℚ), (10708802707/100000000000 : ℚ), 2⟩,
    ⟨(42828188341/100000000000 : ℚ), (-635827533/2000000000 : ℚ), (116034305471/1000000000000 : ℚ), 2⟩,
    ⟨(432092122969/1000000000000 : ℚ), (-837027363/2500000000 : ℚ), (12330299579/100000000000 : ℚ), 2⟩,
    ⟨(43518530423/100000000000 : ℚ), (-869887087/2500000000 : ℚ), (64501283829/500000000000 : ℚ), 2⟩,
    ⟨(218765819083/500000000000 : ℚ), (-894009737/2500000000 : ℚ), (66606482059/500000000000 : ℚ), 2⟩,
    ⟨(219554264149/500000000000 : ℚ), (-145576131/400000000 : ℚ), (5439613379/40000000000 : ℚ), 2⟩,
    ⟨(439900788313/1000000000000 : ℚ), (-3670802827/10000000000 : ℚ), (17171294693/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3674714673/10000000000 : ℚ), (17192807421/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (72945712121/250000000000 : ℚ)
  μ := (11/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control280.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control280.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate280

namespace DiagonalRamsey.JointInheritedCertificate281
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(56505584929/200000000000 : ℚ), (6980161029503/5000000000 : ℚ), (-395232654594011/1000000000000 : ℚ), 12⟩,
    ⟨(283333862483/1000000000000 : ℚ), (380998178277/2500000000 : ℚ), (-8737435228739/200000000000 : ℚ), 8⟩,
    ⟨(142468988269/500000000000 : ℚ), (533273011227/10000000000 : ℚ), (-7781705963171/500000000000 : ℚ), 7⟩,
    ⟨(57464963663/200000000000 : ℚ), (32777461247/1250000000 : ℚ), (-7814865951247/1000000000000 : ℚ), 6⟩,
    ⟨(290471401221/1000000000000 : ℚ), (75869461437/5000000000 : ℚ), (-1156494742581/250000000000 : ℚ), 5⟩,
    ⟨(58869484389/200000000000 : ℚ), (9647977199/1000000000 : ℚ), (-752892155799/250000000000 : ℚ), 5⟩,
    ⟨(149457776143/500000000000 : ℚ), (65143724487/10000000000 : ℚ), (-2082831415393/1000000000000 : ℚ), 4⟩,
    ⟨(152065899327/500000000000 : ℚ), (45795620869/10000000000 : ℚ), (-749957506887/500000000000 : ℚ), 4⟩,
    ⟨(309945925743/1000000000000 : ℚ), (258519491/78125000 : ℚ), (-1110120552193/1000000000000 : ℚ), 4⟩,
    ⟨(316301940333/1000000000000 : ℚ), (24348353343/10000000000 : ℚ), (-83658368271/100000000000 : ℚ), 3⟩,
    ⟨(323138630527/1000000000000 : ℚ), (9053841909/5000000000 : ℚ), (-637193914407/1000000000000 : ℚ), 3⟩,
    ⟨(330390155261/1000000000000 : ℚ), (13517997707/10000000000 : ℚ), (-243657609299/500000000000 : ℚ), 3⟩,
    ⟨(33798667839/100000000000 : ℚ), (10058146889/10000000000 : ℚ), (-46469907239/125000000000 : ℚ), 3⟩,
    ⟨(345855041241/1000000000000 : ℚ), (1848775407/2500000000 : ℚ), (-280753366449/1000000000000 : ℚ), 3⟩,
    ⟨(17695973359/50000000000 : ℚ), (5308531399/10000000000 : ℚ), (-20778269299/100000000000 : ℚ), 3⟩,
    ⟨(22631393211/62500000000 : ℚ), (456045903/1250000000 : ℚ), (-148373159269/1000000000000 : ℚ), 3⟩,
    ⟨(9258117719/25000000000 : ℚ), (2309849707/10000000000 : ℚ), (-19874803597/200000000000 : ℚ), 3⟩,
    ⟨(94626883239/250000000000 : ℚ), (1218298177/10000000000 : ℚ), (-29259317161/500000000000 : ℚ), 2⟩,
    ⟨(77314391779/200000000000 : ℚ), (79877169/2500000000 : ℚ), (-12073326223/500000000000 : ℚ), 2⟩,
    ⟨(197220160873/500000000000 : ℚ), (-426471709/10000000000 : ℚ), (995370977/200000000000 : ℚ), 2⟩,
    ⟨(3216294759/8000000000 : ℚ), (-1049481807/10000000000 : ℚ), (29782123291/1000000000000 : ℚ), 2⟩,
    ⟨(409288369609/1000000000000 : ℚ), (-786027761/5000000000 : ℚ), (50977140773/1000000000000 : ℚ), 2⟩,
    ⟨(416125059803/1000000000000 : ℚ), (-10056831/50000000 : ℚ), (17276273937/250000000000 : ℚ), 2⟩,
    ⟨(422481074393/1000000000000 : ℚ), (-476119073/2000000000 : ℚ), (84585145221/1000000000000 : ℚ), 2⟩,
    ⟨(214147600741/500000000000 : ℚ), (-336238831/1250000000 : ℚ), (97741826391/1000000000000 : ℚ), 2⟩,
    ⟨(8670228957/20000000000 : ℚ), (-2947173411/10000000000 : ℚ), (108826583351/1000000000000 : ℚ), 2⟩,
    ⟨(438079578191/1000000000000 : ℚ), (-631691213/2000000000 : ℚ), (118033715007/1000000000000 : ℚ), 2⟩,
    ⟨(88391119783/200000000000 : ℚ), (-133136917/400000000 : ℚ), (6275614619/50000000000 : ℚ), 2⟩,
    ⟨(445102181821/1000000000000 : ℚ), (-3460611267/10000000000 : ℚ), (32843774049/250000000000 : ℚ), 2⟩,
    ⟨(223744511799/500000000000 : ℚ), (-711527541/2000000000 : ℚ), (135705289379/1000000000000 : ℚ), 2⟩,
    ⟨(449093137653/1000000000000 : ℚ), (-3621347089/10000000000 : ℚ), (69280654259/500000000000 : ℚ), 2⟩,
    ⟨(449899075491/1000000000000 : ℚ), (-3652915581/10000000000 : ℚ), (69990148977/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1828424189/5000000000 : ℚ), (140157253971/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (286616679599/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control281.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control281.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate281

namespace DiagonalRamsey.JointInheritedCertificate282
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289776307913/1000000000000 : ℚ), (14087379485401/10000000000 : ℚ), (-409055007029321/1000000000000 : ℚ), 12⟩,
    ⟨(290595487553/1000000000000 : ℚ), (1538037928783/10000000000 : ℚ), (-904312779251/20000000000 : ℚ), 8⟩,
    ⟨(146112978843/500000000000 : ℚ), (269138951321/5000000000 : ℚ), (-16108372304323/1000000000000 : ℚ), 7⟩,
    ⟨(294652015993/1000000000000 : ℚ), (264734694047/10000000000 : ℚ), (-8088872314507/1000000000000 : ℚ), 6⟩,
    ⟨(297850298207/1000000000000 : ℚ), (38307544491/2500000000 : ℚ), (-2394246926381/500000000000 : ℚ), 5⟩,
    ⟨(3772375039/12500000000 : ℚ), (97453738991/10000000000 : ℚ), (-3117659696441/1000000000000 : ℚ), 5⟩,
    ⟨(153216594611/500000000000 : ℚ), (65821112709/10000000000 : ℚ), (-2156483897293/1000000000000 : ℚ), 4⟩,
    ⟨(311735140091/1000000000000 : ℚ), (5785982269/1250000000 : ℚ), (-776614495461/500000000000 : ℚ), 4⟩,
    ⟨(317644795043/1000000000000 : ℚ), (8364972481/2500000000 : ℚ), (-1149855861891/1000000000000 : ℚ), 4⟩,
    ⟨(32410524087/100000000000 : ℚ), (2463247297/1000000000 : ℚ), (-216702963723/250000000000 : ℚ), 3⟩,
    ⟨(331054259947/1000000000000 : ℚ), (9165262139/5000000000 : ℚ), (-82564184389/125000000000 : ℚ), 3⟩,
    ⟨(338424929421/1000000000000 : ℚ), (213993783/156250000 : ℚ), (-505462713/1000000000 : ℚ), 3⟩,
    ⟨(86536566429/250000000000 : ℚ), (10201642633/10000000000 : ℚ), (-385939567197/1000000000000 : ℚ), 3⟩,
    ⟨(22133994259/62500000000 : ℚ), (3756221041/5000000000 : ℚ), (-145914510769/500000000000 : ℚ), 3⟩,
    ⟨(181170417517/500000000000 : ℚ), (5405544241/10000000000 : ℚ), (-216387729063/1000000000000 : ℚ), 3⟩,
    ⟨(370658105501/1000000000000 : ℚ), (932352933/2500000000 : ℚ), (-154984413347/1000000000000 : ℚ), 3⟩,
    ⟨(379015619683/1000000000000 : ℚ), (2378243551/10000000000 : ℚ), (-104357343267/1000000000000 : ℚ), 3⟩,
    ⟨(7746657803/20000000000 : ℚ), (255320617/2000000000 : ℚ), (-15539940643/250000000000 : ℚ), 2⟩,
    ⟨(395529817041/1000000000000 : ℚ), (369726823/10000000000 : ℚ), (-26672350329/1000000000000 : ℚ), 2⟩,
    ⟨(100881864867/250000000000 : ℚ), (-38275943/1000000000 : ℚ), (169197101/50000000000 : ℚ), 2⟩,
    ⟨(411248795763/1000000000000 : ℚ), (-1579713/15625000 : ℚ), (3621604639/125000000000 : ℚ), 2⟩,
    ⟨(209309732619/500000000000 : ℚ), (-307565317/2000000000 : ℚ), (25414021939/500000000000 : ℚ), 2⟩,
    ⟨(212784242157/500000000000 : ℚ), (-99027893/500000000 : ℚ), (34756349413/500000000000 : ℚ), 2⟩,
    ⟨(432028930141/1000000000000 : ℚ), (-588136121/2500000000 : ℚ), (10682692999/125000000000 : ℚ), 2⟩,
    ⟨(437938585093/1000000000000 : ℚ), (-2664074833/10000000000 : ℚ), (49505675273/500000000000 : ℚ), 2⟩,
    ⟨(443240535963/1000000000000 : ℚ), (-584621163/2000000000 : ℚ), (11042318277/100000000000 : ℚ), 2⟩,
    ⟨(27992732629/62500000000 : ℚ), (-627157053/2000000000 : ℚ), (59949444549/500000000000 : ℚ), 2⟩,
    ⟨(225911713489/500000000000 : ℚ), (-3306836589/10000000000 : ℚ), (31898355843/250000000000 : ℚ), 2⟩,
    ⟨(455021709191/1000000000000 : ℚ), (-429980333/1250000000 : ℚ), (13362408437/100000000000 : ℚ), 2⟩,
    ⟨(228723883749/500000000000 : ℚ), (-442181791/1250000000 : ℚ), (27615482407/200000000000 : ℚ), 2⟩,
    ⟨(459078237631/1000000000000 : ℚ), (-90038521/250000000 : ℚ), (70507121777/500000000000 : ℚ), 2⟩,
    ⟨(459897417271/1000000000000 : ℚ), (-181664703/500000000 : ℚ), (142473263371/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-363724977/1000000000 : ℚ), (71327602879/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (281408875403/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control282.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control282.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate282

namespace DiagonalRamsey.JointInheritedCertificate283
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29697456877/100000000000 : ℚ), (2840771670901/2000000000 : ℚ), (-10566895757073/25000000000 : ℚ), 12⟩,
    ⟨(14890361571/50000000000 : ℚ), (775454869713/5000000000 : ℚ), (-46721550202617/1000000000000 : ℚ), 8⟩,
    ⟨(299464537723/1000000000000 : ℚ), (271430883159/5000000000 : ℚ), (-16645099600537/1000000000000 : ℚ), 7⟩,
    ⟨(150965263457/500000000000 : ℚ), (5340718349/200000000 : ℚ), (-32650745841/3906250000 : ℚ), 6⟩,
    ⟨(305181450169/1000000000000 : ℚ), (38648223763/2500000000 : ℚ), (-989669017577/200000000000 : ℚ), 5⟩,
    ⟨(7729649983/25000000000 : ℚ), (98342271707/10000000000 : ℚ), (-3221909746509/1000000000000 : ℚ), 5⟩,
    ⟨(313905608369/1000000000000 : ℚ), (16609452903/2500000000 : ℚ), (-445753799341/200000000000 : ℚ), 4⟩,
    ⟨(319294824901/1000000000000 : ℚ), (11683721519/2500000000 : ℚ), (-802736623091/500000000000 : ℚ), 4⟩,
    ⟨(65060349563/200000000000 : ℚ), (4224297191/1250000000 : ℚ), (-237744170793/200000000000 : ℚ), 4⟩,
    ⟨(331868527159/1000000000000 : ℚ), (248888671/100000000 : ℚ), (-448154986631/500000000000 : ℚ), 3⟩,
    ⟨(338931921259/1000000000000 : ℚ), (9265414867/5000000000 : ℚ), (-683205529257/1000000000000 : ℚ), 3⟩,
    ⟨(43302988221/125000000000 : ℚ), (6927265723/5000000000 : ℚ), (-523060060011/1000000000000 : ℚ), 3⟩,
    ⟨(354272328781/1000000000000 : ℚ), (1291175101/1250000000 : ℚ), (-199814810263/500000000000 : ℚ), 3⟩,
    ⟨(90600401423/250000000000 : ℚ), (3808161609/5000000000 : ℚ), (-302461809497/1000000000000 : ℚ), 3⟩,
    ⟨(370733447121/1000000000000 : ℚ), (5490892681/10000000000 : ℚ), (-8983523649/40000000000 : ℚ), 3⟩,
    ⟨(379187612881/1000000000000 : ℚ), (3800224631/10000000000 : ℚ), (-161222260083/1000000000000 : ℚ), 3⟩,
    ⟨(193841342367/500000000000 : ℚ), (2437562151/10000000000 : ℚ), (-27248299321/250000000000 : ℚ), 2⟩,
    ⟨(198068425247/500000000000 : ℚ), (82923413/625000000 : ℚ), (-4092198197/62500000000 : ℚ), 2⟩,
    ⟨(101117172981/250000000000 : ℚ), (51573067/1250000000 : ℚ), (-7222683451/250000000000 : ℚ), 2⟩,
    ⟨(82519593767/200000000000 : ℚ), (-345769429/10000000000 : ℚ), (1041331553/500000000000 : ℚ), 2⟩,
    ⟨(420446391847/1000000000000 : ℚ), (-489371937/5000000000 : ℚ), (14220881109/500000000000 : ℚ), 2⟩,
    ⟨(106984594089/250000000000 : ℚ), (-1509350511/10000000000 : ℚ), (50945638449/1000000000000 : ℚ), 2⟩,
    ⟨(54375221307/125000000000 : ℚ), (-1955135881/10000000000 : ℚ), (70177104749/1000000000000 : ℚ), 2⟩,
    ⟨(441568549801/1000000000000 : ℚ), (-2329575121/10000000000 : ℚ), (86586277861/1000000000000 : ℚ), 2⟩,
    ⟨(89515094543/200000000000 : ℚ), (-528613583/2000000000 : ℚ), (25130499807/250000000000 : ℚ), 2⟩,
    ⟨(452964689247/1000000000000 : ℚ), (-725914821/2500000000 : ℚ), (112254825281/1000000000000 : ℚ), 2⟩,
    ⟨(57210537287/125000000000 : ℚ), (-623513327/2000000000 : ℚ), (60997026799/500000000000 : ℚ), 2⟩,
    ⟨(230844423723/500000000000 : ℚ), (-82239197/250000000 : ℚ), (129900442053/1000000000000 : ℚ), 2⟩,
    ⟨(464939770701/1000000000000 : ℚ), (-68465759/200000000 : ℚ), (68047873037/500000000000 : ℚ), 2⟩,
    ⟨(116851439973/250000000000 : ℚ), (-3521409239/10000000000 : ℚ), (2197966193/15625000000 : ℚ), 2⟩,
    ⟨(117265766549/250000000000 : ℚ), (-717164701/2000000000 : ℚ), (143685917331/1000000000000 : ℚ), 2⟩,
    ⟨(234947864423/500000000000 : ℚ), (-1808868533/5000000000 : ℚ), (18148023901/125000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1810856327/5000000000 : ℚ), (145371023111/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (138117222741/500000000000 : ℚ)
  μ := (47/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control283.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control283.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate283

namespace DiagonalRamsey.JointInheritedCertificate284
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48414345573/100000000000 : ℚ), (9286617888649/5000000000 : ℚ), (-900635760609241/1000000000000 : ℚ), 12⟩,
    ⟨(242591118803/500000000000 : ℚ), (2034006594571/10000000000 : ℚ), (-99583582261311/1000000000000 : ℚ), 8⟩,
    ⟨(243624898661/500000000000 : ℚ), (715073986253/10000000000 : ℚ), (-35499794973377/1000000000000 : ℚ), 7⟩,
    ⟨(490326223147/1000000000000 : ℚ), (22101164967/625000000 : ℚ), (-17844547011877/1000000000000 : ℚ), 6⟩,
    ⟨(494381887419/1000000000000 : ℚ), (41192376371/2000000000 : ℚ), (-5289779267881/500000000000 : ℚ), 5⟩,
    ⟨(499377731873/1000000000000 : ℚ), (131911988069/10000000000 : ℚ), (-1380522324101/200000000000 : ℚ), 5⟩,
    ⟨(126316410949/250000000000 : ℚ), (11224565719/1250000000 : ℚ), (-2394210296549/500000000000 : ℚ), 4⟩,
    ⟨(511988919379/1000000000000 : ℚ), (1274263349/200000000 : ℚ), (-3462570314513/1000000000000 : ℚ), 4⟩,
    ⟨(519482809801/1000000000000 : ℚ), (2908373857/625000000 : ℚ), (-1288550921609/500000000000 : ℚ), 4⟩,
    ⟨(527675144801/1000000000000 : ℚ), (17340509631/5000000000 : ℚ), (-1956854010691/1000000000000 : ℚ), 3⟩,
    ⟨(134121756929/250000000000 : ℚ), (5240076389/2000000000 : ℚ), (-2941121573/1953125000 : ℚ), 3⟩,
    ⟨(109166719059/200000000000 : ℚ), (19953112817/10000000000 : ℚ), (-233588897237/200000000000 : ℚ), 3⟩,
    ⟨(69453104373/125000000000 : ℚ), (190498067/125000000 : ℚ), (-908490771623/1000000000000 : ℚ), 3⟩,
    ⟨(565766451791/1000000000000 : ℚ), (11612534877/10000000000 : ℚ), (-705195599813/1000000000000 : ℚ), 3⟩,
    ⟨(576160776403/1000000000000 : ℚ), (438693191/500000000 : ℚ), (-543180952367/1000000000000 : ℚ), 3⟩,
    ⟨(9167307903/15625000000 : ℚ), (6520606641/10000000000 : ℚ), (-412215193893/1000000000000 : ℚ), 3⟩,
    ⟨(298652833631/500000000000 : ℚ), (2355154669/5000000000 : ℚ), (-152539235919/500000000000 : ℚ), 2⟩,
    ⟨(607852596651/1000000000000 : ℚ), (3240935913/10000000000 : ℚ), (-54140544541/250000000000 : ℚ), 2⟩,
    ⟨(618246921263/1000000000000 : ℚ), (7961041/39062500 : ℚ), (-142836250137/1000000000000 : ℚ), 2⟩,
    ⟨(62838853807/100000000000 : ℚ), (523181779/5000000000 : ℚ), (-20259392297/250000000000 : ℚ), 2⟩,
    ⟨(638179777759/1000000000000 : ℚ), (224428743/10000000000 : ℚ), (-1812215589/62500000000 : ℚ), 2⟩,
    ⟨(323763172669/500000000000 : ℚ), (-91872973/2000000000 : ℚ), (467359347/31250000000 : ℚ), 2⟩,
    ⟨(656338228253/1000000000000 : ℚ), (-1029283101/10000000000 : ℚ), (26052721637/500000000000 : ℚ), 2⟩,
    ⟨(664530563253/1000000000000 : ℚ), (-376027483/2500000000 : ℚ), (83461302833/1000000000000 : ℚ), 2⟩,
    ⟨(168006113419/250000000000 : ℚ), (-1898462621/10000000000 : ℚ), (109812785151/1000000000000 : ℚ), 2⟩,
    ⟨(339373864629/500000000000 : ℚ), (-111187211/500000000 : ℚ), (65890216387/500000000000 : ℚ), 2⟩,
    ⟨(342317820591/500000000000 : ℚ), (-497768131/2000000000 : ℚ), (14985097843/100000000000 : ℚ), 2⟩,
    ⟨(172407871409/250000000000 : ℚ), (-675158679/2500000000 : ℚ), (164403579581/1000000000000 : ℚ), 2⟩,
    ⟨(693687149907/1000000000000 : ℚ), (-358048277/1250000000 : ℚ), (43932341481/250000000000 : ℚ), 2⟩,
    ⟨(174190893933/250000000000 : ℚ), (-1492005989/5000000000 : ℚ), (184045953781/1000000000000 : ℚ), 2⟩,
    ⟨(87353891931/125000000000 : ℚ), (-765572149/2500000000 : ℚ), (37901609341/200000000000 : ℚ), 2⟩,
    ⟨(174967479331/250000000000 : ℚ), (-3100993369/10000000000 : ℚ), (4805371587/25000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-388226419/1250000000 : ℚ), (96276045491/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (9364163937/62500000000 : ℚ)
  μ := (7/10 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control284.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control284.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate284

namespace DiagonalRamsey.JointInheritedCertificate285
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46712257803/200000000000 : ℚ), (13196302707787/10000000000 : ℚ), (-61776986853807/200000000000 : ℚ), 12⟩,
    ⟨(234266006491/1000000000000 : ℚ), (1439554995777/10000000000 : ℚ), (-6828071470923/200000000000 : ℚ), 8⟩,
    ⟨(58917163657/250000000000 : ℚ), (503197608853/10000000000 : ℚ), (-6080312268989/500000000000 : ℚ), 7⟩,
    ⟨(118877862579/500000000000 : ℚ), (123558186891/5000000000 : ℚ), (-3052385161369/500000000000 : ℚ), 6⟩,
    ⟨(4810142369/20000000000 : ℚ), (7139557353/500000000 : ℚ), (-3612406847969/1000000000000 : ℚ), 5⟩,
    ⟨(60974084271/250000000000 : ℚ), (362567539/40000000 : ℚ), (-2350514751539/1000000000000 : ℚ), 5⟩,
    ⟨(30986342629/125000000000 : ℚ), (3818025983/625000000 : ℚ), (-1624465029027/1000000000000 : ℚ), 4⟩,
    ⟨(126225930999/500000000000 : ℚ), (42852747739/10000000000 : ℚ), (-584326310723/500000000000 : ℚ), 4⟩,
    ⟨(32191971737/125000000000 : ℚ), (3860663069/1250000000 : ℚ), (-86373946979/100000000000 : ℚ), 4⟩,
    ⟨(2104748127/8000000000 : ℚ), (11327447447/5000000000 : ℚ), (-324827538539/500000000000 : ℚ), 3⟩,
    ⟨(269071563841/1000000000000 : ℚ), (4195407263/2500000000 : ℚ), (-493490625047/1000000000000 : ℚ), 3⟩,
    ⟨(68853086481/250000000000 : ℚ), (12462861259/10000000000 : ℚ), (-187997283521/500000000000 : ℚ), 3⟩,
    ⟨(282054796927/1000000000000 : ℚ), (2301754833/2500000000 : ℚ), (-285299442971/1000000000000 : ℚ), 3⟩,
    ⟨(57786989283/200000000000 : ℚ), (6700174231/10000000000 : ℚ), (-213770715313/1000000000000 : ℚ), 3⟩,
    ⟨(73996633697/250000000000 : ℚ), (47347903/100000000 : ℚ), (-15632031613/100000000000 : ℚ), 3⟩,
    ⟨(151570825697/500000000000 : ℚ), (633927797/2000000000 : ℚ), (-109455462311/1000000000000 : ℚ), 3⟩,
    ⟨(6206627771/20000000000 : ℚ), (1906233013/10000000000 : ℚ), (-17679478781/250000000000 : ℚ), 3⟩,
    ⟨(317486505157/1000000000000 : ℚ), (437222119/5000000000 : ℚ), (-9585167851/250000000000 : ℚ), 2⟩,
    ⟨(32453809353/100000000000 : ℚ), (23438611/10000000000 : ℚ), (-2757693387/250000000000 : ℚ), 2⟩,
    ⟨(165709121509/500000000000 : ℚ), (-684199857/10000000000 : ℚ), (2434418739/200000000000 : ℚ), 2⟩,
    ⟨(338060694021/1000000000000 : ℚ), (-1276372593/10000000000 : ℚ), (31990033627/1000000000000 : ℚ), 2⟩,
    ⟨(43050184513/125000000000 : ℚ), (-887058097/5000000000 : ℚ), (24485723143/500000000000 : ℚ), 2⟩,
    ⟨(350379524069/1000000000000 : ℚ), (-2193435737/10000000000 : ℚ), (63536006147/1000000000000 : ℚ), 2⟩,
    ⟨(2780759891/7812500000 : ℚ), (-1273297379/5000000000 : ℚ), (7600660571/100000000000 : ℚ), 2⟩,
    ⟨(180510588973/500000000000 : ℚ), (-2843036403/10000000000 : ℚ), (21658105293/250000000000 : ℚ), 2⟩,
    ⟨(365582298913/1000000000000 : ℚ), (-618009909/2000000000 : ℚ), (9560581247/100000000000 : ℚ), 2⟩,
    ⟨(18478835143/50000000000 : ℚ), (-823313841/2500000000 : ℚ), (51537427947/500000000000 : ℚ), 2⟩,
    ⟨(186482960747/500000000000 : ℚ), (-864241307/2500000000 : ℚ), (109152717887/1000000000000 : ℚ), 2⟩,
    ⟨(375717314787/1000000000000 : ℚ), (-3584444503/10000000000 : ℚ), (113924690431/1000000000000 : ℚ), 2⟩,
    ⟨(377804385317/1000000000000 : ℚ), (-114940813/312500000 : ℚ), (58726722661/500000000000 : ℚ), 2⟩,
    ⟨(189603516727/500000000000 : ℚ), (-747929891/2000000000 : ℚ), (374321521/3125000000 : ℚ), 2⟩,
    ⟨(37991175093/100000000000 : ℚ), (-11781743/31250000 : ℚ), (120940856479/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3773959091/10000000000 : ℚ), (121085290263/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (32228420807/100000000000 : ℚ)
  μ := (19/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control285.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control285.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate285

namespace DiagonalRamsey.JointInheritedCertificate318
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(277086618021/1000000000000 : ℚ), (6861480469081/5000000000 : ℚ), (-381023694513419/1000000000000 : ℚ), 12⟩,
    ⟨(138935308867/500000000000 : ℚ), (187272634243/1250000000 : ℚ), (-42115029109273/1000000000000 : ℚ), 8⟩,
    ⟨(279431066813/1000000000000 : ℚ), (104856075729/2000000000 : ℚ), (-187527519199/12500000000 : ℚ), 7⟩,
    ⟨(281752937281/1000000000000 : ℚ), (128906501069/5000000000 : ℚ), (-3766084208649/500000000000 : ℚ), 6⟩,
    ⟨(284813868257/1000000000000 : ℚ), (149192469271/10000000000 : ℚ), (-1114471152709/250000000000 : ℚ), 5⟩,
    ⟨(288584381301/1000000000000 : ℚ), (5928619893/625000000 : ℚ), (-2901475089061/1000000000000 : ℚ), 5⟩,
    ⟨(36628520539/125000000000 : ℚ), (12808421941/2000000000 : ℚ), (-2006086308351/1000000000000 : ℚ), 4⟩,
    ⟨(29810242123/100000000000 : ℚ), (45012225559/10000000000 : ℚ), (-722041528653/500000000000 : ℚ), 4⟩,
    ⟨(75939571047/250000000000 : ℚ), (6502756199/2000000000 : ℚ), (-1068256080723/1000000000000 : ℚ), 4⟩,
    ⟨(77485321033/250000000000 : ℚ), (1494504479/625000000 : ℚ), (-804504631681/1000000000000 : ℚ), 4⟩,
    ⟨(63318375079/200000000000 : ℚ), (1110639513/625000000 : ℚ), (-153058124377/250000000000 : ℚ), 3⟩,
    ⟨(64729201829/200000000000 : ℚ), (6626041163/5000000000 : ℚ), (-46768973033/100000000000 : ℚ), 3⟩,
    ⟨(16551787511/50000000000 : ℚ), (1969043373/2000000000 : ℚ), (-356234408329/1000000000000 : ℚ), 3⟩,
    ⟨(84672482843/250000000000 : ℚ), (451385943/625000000 : ℚ), (-268445558683/1000000000000 : ℚ), 3⟩,
    ⟨(173267419327/500000000000 : ℚ), (5166297541/10000000000 : ℚ), (-198042878279/1000000000000 : ℚ), 3⟩,
    ⟨(354494921319/1000000000000 : ℚ), (882501457/2500000000 : ℚ), (-70356726991/500000000000 : ℚ), 3⟩,
    ⟨(362493519421/1000000000000 : ℚ), (2210272119/10000000000 : ℚ), (-46710062599/500000000000 : ℚ), 3⟩,
    ⟨(185226801043/500000000000 : ℚ), (226729059/2000000000 : ℚ), (-53978067473/1000000000000 : ℚ), 2⟩,
    ⟨(47287313671/125000000000 : ℚ), (246810757/10000000000 : ℚ), (-20786959409/1000000000000 : ℚ), 2⟩,
    ⟨(9648817263/25000000000 : ℚ), (-122382633/2500000000 : ℚ), (7343357547/1000000000000 : ℚ), 2⟩,
    ⟨(78668486319/200000000000 : ℚ), (-1104729617/10000000000 : ℚ), (31309269851/1000000000000 : ℚ), 2⟩,
    ⟨(80079313069/200000000000 : ℚ), (-162095179/1000000000 : ℚ), (51792871013/1000000000000 : ℚ), 2⟩,
    ⟨(3180055911/7812500000 : ℚ), (-256886083/1250000000 : ℚ), (34658673573/500000000000 : ℚ), 2⟩,
    ⟨(51653769569/125000000000 : ℚ), (-605026089/2500000000 : ℚ), (84286286471/1000000000000 : ℚ), 2⟩,
    ⟨(41888601951/100000000000 : ℚ), (-681499367/2500000000 : ℚ), (12126505519/125000000000 : ℚ), 2⟩,
    ⟨(105990069107/250000000000 : ℚ), (-1490248661/5000000000 : ℚ), (107736508893/1000000000000 : ℚ), 2⟩,
    ⟨(428404059439/1000000000000 : ℚ), (-797393269/2500000000 : ℚ), (116646492871/1000000000000 : ℚ), 2⟩,
    ⟨(432174572483/1000000000000 : ℚ), (-839452163/2500000000 : ℚ), (123885237593/1000000000000 : ℚ), 2⟩,
    ⟨(435235503459/1000000000000 : ℚ), (-3488679497/10000000000 : ℚ), (16195130821/125000000000 : ℚ), 2⟩,
    ⟨(437557373927/1000000000000 : ℚ), (-716951173/2000000000 : ℚ), (133753733257/1000000000000 : ℚ), 2⟩,
    ⟨(219558911503/500000000000 : ℚ), (-364784953/1000000000 : ℚ), (136519350703/1000000000000 : ℚ), 2⟩,
    ⟨(439901822719/1000000000000 : ℚ), (-1839557687/5000000000 : ℚ), (137893513399/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-1841505291/5000000000 : ℚ), (138064883431/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (150492084549/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control318.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control318.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate318

namespace DiagonalRamsey.JointInheritedCertificate319
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(284263459283/1000000000000 : ℚ), (13838906717391/10000000000 : ℚ), (-394189053750171/1000000000000 : ℚ), 12⟩,
    ⟨(71265261271/250000000000 : ℚ), (1510996227463/10000000000 : ℚ), (-21785329931351/500000000000 : ℚ), 8⟩,
    ⟨(286648535499/1000000000000 : ℚ), (66105710687/1250000000 : ℚ), (-15521061560589/1000000000000 : ℚ), 7⟩,
    ⟨(289010642127/1000000000000 : ℚ), (52021230473/2000000000 : ℚ), (-311717928653/40000000000 : ℚ), 6⟩,
    ⟨(292124616591/1000000000000 : ℚ), (30110282469/2000000000 : ℚ), (-2306234679811/500000000000 : ℚ), 5⟩,
    ⟨(295960469613/1000000000000 : ℚ), (95744837537/10000000000 : ℚ), (-3002315557201/1000000000000 : ℚ), 5⟩,
    ⟨(300481259833/1000000000000 : ℚ), (8082302743/1250000000 : ℚ), (-259503468293/125000000000 : ℚ), 4⟩,
    ⟨(30564344957/100000000000 : ℚ), (22729810467/5000000000 : ℚ), (-747325166577/500000000000 : ℚ), 4⟩,
    ⟨(311397324113/1000000000000 : ℚ), (2053070307/625000000 : ℚ), (-221177515473/200000000000 : ℚ), 4⟩,
    ⟨(158843735253/500000000000 : ℚ), (24169650383/10000000000 : ℚ), (-833078179621/1000000000000 : ℚ), 4⟩,
    ⟨(324453311201/1000000000000 : ℚ), (17971947523/10000000000 : ℚ), (-317111466937/500000000000 : ℚ), 3⟩,
    ⟨(331629687453/1000000000000 : ℚ), (104785763/78125000 : ℚ), (-24237544463/50000000000 : ℚ), 3⟩,
    ⟨(84786871709/250000000000 : ℚ), (1246831141/1250000000 : ℚ), (-369513744247/1000000000000 : ℚ), 3⟩,
    ⟨(10841697151/31250000000 : ℚ), (7327804029/10000000000 : ℚ), (-69691116463/250000000000 : ℚ), 3⟩,
    ⟨(354915162089/1000000000000 : ℚ), (2626721201/5000000000 : ℚ), (-103002568267/500000000000 : ℚ), 3⟩,
    ⟨(181506593313/500000000000 : ℚ), (3602645143/10000000000 : ℚ), (-73386569973/500000000000 : ℚ), 3⟩,
    ⟨(185575197021/500000000000 : ℚ), (2271433177/10000000000 : ℚ), (-48962816069/500000000000 : ℚ), 3⟩,
    ⟨(379248418579/1000000000000 : ℚ), (296416209/2500000000 : ℚ), (-11440300669/200000000000 : ℚ), 2⟩,
    ⟨(96807317959/250000000000 : ℚ), (9109819/312500000 : ℚ), (-11472150039/500000000000 : ℚ), 2⟩,
    ⟨(49377011729/125000000000 : ℚ), (-90140569/2000000000 : ℚ), (379882987/62500000000 : ℚ), 2⟩,
    ⟨(80506778643/200000000000 : ℚ), (-1070631651/10000000000 : ℚ), (15397013369/500000000000 : ℚ), 2⟩,
    ⟨(409710269467/1000000000000 : ℚ), (-795332563/5000000000 : ℚ), (51909951191/1000000000000 : ℚ), 2⟩,
    ⟨(208238055081/500000000000 : ℚ), (-405574531/2000000000 : ℚ), (34984023543/500000000000 : ℚ), 2⟩,
    ⟨(84553251311/200000000000 : ℚ), (-2339217/9765625 : ℚ), (85386705607/1000000000000 : ℚ), 2⟩,
    ⟨(214260065549/500000000000 : ℚ), (-675807723/2500000000 : ℚ), (98489891921/1000000000000 : ℚ), 2⟩,
    ⟨(86736464167/200000000000 : ℚ), (-2959307467/10000000000 : ℚ), (109528615673/1000000000000 : ℚ), 2⟩,
    ⟨(87640622211/200000000000 : ℚ), (-633925219/2000000000 : ℚ), (59348419421/500000000000 : ℚ), 2⟩,
    ⟨(442038964077/1000000000000 : ℚ), (-3338824737/10000000000 : ℚ), (126143367729/1000000000000 : ℚ), 2⟩,
    ⟨(445152938541/1000000000000 : ℚ), (-3470420519/10000000000 : ℚ), (26396154873/200000000000 : ℚ), 2⟩,
    ⟨(447515045169/1000000000000 : ℚ), (-1783507481/5000000000 : ℚ), (68146029733/500000000000 : ℚ), 2⟩,
    ⟨(14034454237/31250000000 : ℚ), (-3630442129/10000000000 : ℚ), (6956776981/50000000000 : ℚ), 2⟩,
    ⟨(89980024277/200000000000 : ℚ), (-1830935611/5000000000 : ℚ), (17568534951/125000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3665786673/10000000000 : ℚ), (70362227663/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (147864601593/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control319.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control319.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate319

namespace DiagonalRamsey.JointInheritedCertificate320
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291531713829/1000000000000 : ℚ), (3490737849093/2500000000 : ℚ), (-407884877827127/1000000000000 : ℚ), 12⟩,
    ⟨(73085611451/250000000000 : ℚ), (762354205151/5000000000 : ℚ), (-45085072948437/1000000000000 : ℚ), 8⟩,
    ⟨(146978050981/500000000000 : ℚ), (33358243781/625000000 : ℚ), (-3212194067919/200000000000 : ℚ), 7⟩,
    ⟨(37044642739/125000000000 : ℚ), (262561510449/10000000000 : ℚ), (-4032190915333/500000000000 : ℚ), 6⟩,
    ⟨(299522442327/1000000000000 : ℚ), (38001821151/2500000000 : ℚ), (-4773431356693/1000000000000 : ℚ), 5⟩,
    ⟨(303421519633/1000000000000 : ℚ), (19339134727/2000000000 : ℚ), (-621473951141/200000000000 : ℚ), 5⟩,
    ⟨(61603364717/200000000000 : ℚ), (1632992409/250000000 : ℚ), (-2148939906613/1000000000000 : ℚ), 4⟩,
    ⟨(313264098893/1000000000000 : ℚ), (22970059267/5000000000 : ℚ), (-773704917971/500000000000 : ℚ), 4⟩,
    ⟨(319112811427/1000000000000 : ℚ), (33209676803/10000000000 : ℚ), (-286298106633/250000000000 : ℚ), 4⟩,
    ⟨(32550663489/100000000000 : ℚ), (1222346649/500000000 : ℚ), (-862962679297/1000000000000 : ℚ), 4⟩,
    ⟨(66476798653/200000000000 : ℚ), (18189389107/10000000000 : ℚ), (-328630935811/500000000000 : ℚ), 3⟩,
    ⟨(42459831729/125000000000 : ℚ), (3396460599/2500000000 : ℚ), (-502664965813/1000000000000 : ℚ), 3⟩,
    ⟨(173660182511/500000000000 : ℚ), (505730119/500000000 : ℚ), (-383496865773/1000000000000 : ℚ), 3⟩,
    ⟨(355235532979/1000000000000 : ℚ), (744221267/1000000000 : ℚ), (-72417830707/250000000000 : ℚ), 3⟩,
    ⟨(363347930309/1000000000000 : ℚ), (5347998151/10000000000 : ℚ), (-107232006787/500000000000 : ℚ), 3⟩,
    ⟨(37157943019/100000000000 : ℚ), (3681606169/10000000000 : ℚ), (-4789267457/31250000000 : ℚ), 3⟩,
    ⟨(379850758779/1000000000000 : ℚ), (2338040667/10000000000 : ℚ), (-51398069999/500000000000 : ℚ), 3⟩,
    ⟨(19404112933/50000000000 : ℚ), (1242421807/10000000000 : ℚ), (-60742252577/1000000000000 : ℚ), 2⟩,
    ⟨(39619465599/100000000000 : ℚ), (340377167/10000000000 : ℚ), (-6345002189/250000000000 : ℚ), 2⟩,
    ⟨(404109823947/1000000000000 : ℚ), (-408188957/10000000000 : ℚ), (4566468251/1000000000000 : ℚ), 2⟩,
    ⟨(411751535137/1000000000000 : ℚ), (-32288637/312500000 : ℚ), (6011722927/200000000000 : ℚ), 2⟩,
    ⟨(52380774463/125000000000 : ℚ), (-1557401277/10000000000 : ℚ), (51828478577/1000000000000 : ℚ), 2⟩,
    ⟨(425923554079/1000000000000 : ℚ), (-1997943023/10000000000 : ℚ), (70437979489/1000000000000 : ℚ), 2⟩,
    ⟨(216158688771/500000000000 : ℚ), (-2368115079/10000000000 : ℚ), (21580239193/250000000000 : ℚ), 2⟩,
    ⟨(438166090077/1000000000000 : ℚ), (-2678144711/10000000000 : ℚ), (49906751237/500000000000 : ℚ), 2⟩,
    ⟨(88682673077/200000000000 : ℚ), (-1467971099/5000000000 : ℚ), (1737127517/15625000000 : ℚ), 2⟩,
    ⟨(56001083667/125000000000 : ℚ), (-3147619547/10000000000 : ℚ), (120610376849/1000000000000 : ℚ), 2⟩,
    ⟨(225953873321/500000000000 : ℚ), (-1658936289/5000000000 : ℚ), (25654157061/200000000000 : ℚ), 2⟩,
    ⟨(455073047057/1000000000000 : ℚ), (-3450263069/10000000000 : ℚ), (134274434437/1000000000000 : ℚ), 2⟩,
    ⟨(457474087007/1000000000000 : ℚ), (-443428257/1250000000 : ℚ), (17338458759/125000000000 : ℚ), 2⟩,
    ⟨(91817548633/200000000000 : ℚ), (-1805609751/5000000000 : ℚ), (14163118601/100000000000 : ℚ), 2⟩,
    ⟨(22994923757/50000000000 : ℚ), (-3642827977/10000000000 : ℚ), (143083571683/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-911691419/2500000000 : ℚ), (143264685813/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (290430479477/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control320.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control320.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate320

namespace DiagonalRamsey.JointInheritedCertificate321
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(149410925427/500000000000 : ℚ), (14085875546201/10000000000 : ℚ), (-210879196262343/500000000000 : ℚ), 12⟩,
    ⟨(299645623697/1000000000000 : ℚ), (769147804539/5000000000 : ℚ), (-23309533694821/500000000000 : ℚ), 8⟩,
    ⟨(150642617999/500000000000 : ℚ), (269286383117/5000000000 : ℚ), (-664312489183/40000000000 : ℚ), 7⟩,
    ⟨(303724897397/1000000000000 : ℚ), (52998690569/2000000000 : ℚ), (-333570583499/40000000000 : ℚ), 6⟩,
    ⟨(306941112619/1000000000000 : ℚ), (76724380383/5000000000 : ℚ), (-2468204810999/500000000000 : ℚ), 5⟩,
    ⟨(62180581551/200000000000 : ℚ), (19527334547/2000000000 : ℚ), (-3213715814517/1000000000000 : ℚ), 5⟩,
    ⟨(315572128551/1000000000000 : ℚ), (32986874813/5000000000 : ℚ), (-2222728227919/1000000000000 : ℚ), 4⟩,
    ⟨(160451903929/500000000000 : ℚ), (9283006067/2000000000 : ℚ), (-320157128991/200000000000 : ℚ), 4⟩,
    ⟨(32684659869/100000000000 : ℚ), (33565730569/10000000000 : ℚ), (-592470439931/500000000000 : ℚ), 4⟩,
    ⟨(333343268723/1000000000000 : ℚ), (3090059441/1250000000 : ℚ), (-893170647557/1000000000000 : ℚ), 4⟩,
    ⟨(340331251473/1000000000000 : ℚ), (14722911/8000000 : ℚ), (-680537749917/1000000000000 : ℚ), 3⟩,
    ⟨(173871624423/500000000000 : ℚ), (2751264691/2000000000 : ℚ), (-520751960767/1000000000000 : ℚ), 3⟩,
    ⟨(71101575851/200000000000 : ℚ), (10252083707/10000000000 : ℚ), (-397604533461/1000000000000 : ℚ), 3⟩,
    ⟨(181775182533/500000000000 : ℚ), (7554392549/10000000000 : ℚ), (-300665580717/1000000000000 : ℚ), 3⟩,
    ⟨(371793252743/1000000000000 : ℚ), (5440518367/10000000000 : ℚ), (-27872676553/125000000000 : ℚ), 3⟩,
    ⟨(95039289693/250000000000 : ℚ), (751737553/2000000000 : ℚ), (-15977583977/100000000000 : ℚ), 3⟩,
    ⟨(77712306833/200000000000 : ℚ), (600724177/2500000000 : ℚ), (-53842308337/500000000000 : ℚ), 3⟩,
    ⟨(198462720097/500000000000 : ℚ), (1297533631/10000000000 : ℚ), (-64286783217/1000000000000 : ℚ), 2⟩,
    ⟨(40516832787/100000000000 : ℚ), (193842141/5000000000 : ℚ), (-27808228657/1000000000000 : ℚ), 2⟩,
    ⟨(413210813681/1000000000000 : ℚ), (-183577589/5000000000 : ℚ), (3071250333/1000000000000 : ℚ), 2⟩,
    ⟨(42097544409/100000000000 : ℚ), (-498628261/5000000000 : ℚ), (7336685949/250000000000 : ℚ), 2⟩,
    ⟨(428387441463/1000000000000 : ℚ), (-1525497281/10000000000 : ℚ), (809002483/15625000000 : ℚ), 2⟩,
    ⟨(435375424213/1000000000000 : ℚ), (-1969325439/10000000000 : ℚ), (35470739469/500000000000 : ℚ), 2⟩,
    ⟨(220936047123/500000000000 : ℚ), (-1171071449/5000000000 : ℚ), (87292225581/1000000000000 : ℚ), 2⟩,
    ⟨(447814885079/1000000000000 : ℚ), (-2654294297/10000000000 : ℚ), (202353613/2000000000 : ℚ), 2⟩,
    ⟨(226573282193/500000000000 : ℚ), (-2913782857/10000000000 : ℚ), (56432727543/500000000000 : ℚ), 2⟩,
    ⟨(228907892591/500000000000 : ℚ), (-3126793989/10000000000 : ℚ), (122567221519/1000000000000 : ℚ), 2⟩,
    ⟨(461777580317/1000000000000 : ℚ), (-3298081047/10000000000 : ℚ), (26088534027/200000000000 : ℚ), 2⟩,
    ⟨(464993795539/1000000000000 : ℚ), (-1715625107/5000000000 : ℚ), (68306701349/500000000000 : ℚ), 2⟩,
    ⟨(233716728469/500000000000 : ℚ), (-3528969863/10000000000 : ℚ), (141169169793/1000000000000 : ℚ), 2⟩,
    ⟨(11726826731/25000000000 : ℚ), (-1796560867/5000000000 : ℚ), (36043271423/250000000000 : ℚ), 2⟩,
    ⟨(234948421041/500000000000 : ℚ), (-906226421/2500000000 : ℚ), (145665292321/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-453608143/1250000000 : ℚ), (4557855203/31250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (285125519959/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control321.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control321.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate321

namespace DiagonalRamsey.JointInheritedCertificate322
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19133196097/62500000000 : ℚ), (1775928333479/1250000000 : ℚ), (-217898163248887/500000000000 : ℚ), 12⟩,
    ⟨(153483929553/500000000000 : ℚ), (1551729758583/10000000000 : ℚ), (-3010697647211/62500000000 : ℚ), 8⟩,
    ⟨(9644788879/31250000000 : ℚ), (135839542149/2500000000 : ℚ), (-2145131191797/125000000000 : ℚ), 7⟩,
    ⟨(311111254051/1000000000000 : ℚ), (13369840599/500000000 : ℚ), (-8617318674923/1000000000000 : ℚ), 6⟩,
    ⟨(78594506071/250000000000 : ℚ), (77436354269/5000000000 : ℚ), (-1275308324949/250000000000 : ℚ), 5⟩,
    ⟨(318402094043/1000000000000 : ℚ), (98565732577/10000000000 : ℚ), (-664247406207/200000000000 : ℚ), 5⟩,
    ⟨(161572354669/500000000000 : ℚ), (16654767893/2500000000 : ℚ), (-574326790663/250000000000 : ℚ), 4⟩,
    ⟨(32856019619/100000000000 : ℚ), (46883217333/10000000000 : ℚ), (-827355884329/500000000000 : ℚ), 4⟩,
    ⟨(334596400501/1000000000000 : ℚ), (16958197471/5000000000 : ℚ), (-245016004867/200000000000 : ℚ), 4⟩,
    ⟨(341195190323/1000000000000 : ℚ), (24989560131/10000000000 : ℚ), (-923658348967/1000000000000 : ℚ), 4⟩,
    ⟨(348293015703/1000000000000 : ℚ), (18614104477/10000000000 : ℚ), (-176003380797/250000000000 : ℚ), 3⟩,
    ⟨(355821520703/1000000000000 : ℚ), (2784704613/2000000000 : ℚ), (-107795971207/200000000000 : ℚ), 3⟩,
    ⟨(45463525213/125000000000 : ℚ), (10386667533/10000000000 : ℚ), (-411808604567/1000000000000 : ℚ), 3⟩,
    ⟨(46484638207/125000000000 : ℚ), (1532794909/2000000000 : ℚ), (-974131711/3125000000 : ℚ), 3⟩,
    ⟨(7604991231/20000000000 : ℚ), (1106135763/2000000000 : ℚ), (-231534685801/1000000000000 : ℚ), 3⟩,
    ⟨(388744938057/1000000000000 : ℚ), (3833601889/10000000000 : ℚ), (-33262064993/200000000000 : ℚ), 3⟩,
    ⟨(397281420059/1000000000000 : ℚ), (1232871397/5000000000 : ℚ), (-56286021551/500000000000 : ℚ), 3⟩,
    ⟨(202888398283/500000000000 : ℚ), (270153229/2000000000 : ℚ), (-67817442033/1000000000000 : ℚ), 2⟩,
    ⟨(20707462623/50000000000 : ℚ), (433221619/10000000000 : ℚ), (-15106227417/500000000000 : ℚ), 2⟩,
    ⟨(105579539103/250000000000 : ℚ), (-327798523/10000000000 : ℚ), (1608006907/1000000000000 : ℚ), 2⟩,
    ⟨(430204837413/1000000000000 : ℚ), (-962874861/10000000000 : ℚ), (7168279971/250000000000 : ℚ), 2⟩,
    ⟨(437733342413/1000000000000 : ℚ), (-747561973/5000000000 : ℚ), (51766991581/1000000000000 : ℚ), 2⟩,
    ⟨(444831167793/1000000000000 : ℚ), (-971090297/5000000000 : ℚ), (446824633/6250000000 : ℚ), 2⟩,
    ⟨(90285991523/200000000000 : ℚ), (-1158796913/5000000000 : ℚ), (88313392713/1000000000000 : ℚ), 2⟩,
    ⟨(228733080963/500000000000 : ℚ), (-131591233/500000000 : ℚ), (102592248043/1000000000000 : ℚ), 2⟩,
    ⟨(231440824389/500000000000 : ℚ), (-180810531/625000000 : ℚ), (1790758967/15625000000 : ℚ), 2⟩,
    ⟨(467624264073/1000000000000 : ℚ), (-3107283579/10000000000 : ℚ), (31144786009/250000000000 : ℚ), 2⟩,
    ⟨(58956041729/125000000000 : ℚ), (-655916073/2000000000 : ℚ), (66335272959/500000000000 : ℚ), 2⟩,
    ⟨(94983020813/200000000000 : ℚ), (-3413509117/10000000000 : ℚ), (69504504661/500000000000 : ℚ), 2⟩,
    ⟨(119348278497/250000000000 : ℚ), (-438971413/1250000000 : ℚ), (143687746151/1000000000000 : ℚ), 2⟩,
    ⟨(47905849901/100000000000 : ℚ), (-143050891/400000000 : ℚ), (36693083057/250000000000 : ℚ), 2⟩,
    ⟨(95979044113/200000000000 : ℚ), (-3608227063/10000000000 : ℚ), (148304488293/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1806103853/5000000000 : ℚ), (148495538309/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (69954083167/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control322.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control322.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate322

namespace DiagonalRamsey.JointInheritedCertificate323
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(124439865517/500000000000 : ℚ), (1660836248191/1250000000 : ℚ), (-331376528310891/1000000000000 : ℚ), 12⟩,
    ⟨(49921395581/200000000000 : ℚ), (1449963302831/10000000000 : ℚ), (-9156495746231/250000000000 : ℚ), 8⟩,
    ⟨(31381808483/125000000000 : ℚ), (253552247829/5000000000 : ℚ), (-13045780793063/1000000000000 : ℚ), 7⟩,
    ⟨(25320826079/100000000000 : ℚ), (7787078749/312500000 : ℚ), (-6548991616391/1000000000000 : ℚ), 6⟩,
    ⟨(256047614481/1000000000000 : ℚ), (7204050343/500000000 : ℚ), (-1937592890777/500000000000 : ℚ), 5⟩,
    ⟨(259545184407/1000000000000 : ℚ), (45761186571/5000000000 : ℚ), (-630365387539/250000000000 : ℚ), 5⟩,
    ⟨(131833643529/500000000000 : ℚ), (15431144739/2500000000 : ℚ), (-1742609591937/1000000000000 : ℚ), 4⟩,
    ⟨(134187112167/500000000000 : ℚ), (43330056393/10000000000 : ℚ), (-31342112733/25000000000 : ℚ), 4⟩,
    ⟨(136810332927/500000000000 : ℚ), (31252989513/10000000000 : ℚ), (-463329214327/500000000000 : ℚ), 4⟩,
    ⟨(139678042759/500000000000 : ℚ), (4588727701/2000000000 : ℚ), (-69708651227/100000000000 : ℚ), 4⟩,
    ⟨(285525248101/1000000000000 : ℚ), (17011742477/10000000000 : ℚ), (-26483160297/50000000000 : ℚ), 3⟩,
    ⟨(146034370597/500000000000 : ℚ), (12648437031/10000000000 : ℚ), (-80746894237/200000000000 : ℚ), 3⟩,
    ⟨(149461773691/500000000000 : ℚ), (1169775343/1250000000 : ℚ), (-306567805439/1000000000000 : ℚ), 3⟩,
    ⟨(306023651133/1000000000000 : ℚ), (54595869/80000000 : ℚ), (-57492907307/250000000000 : ℚ), 3⟩,
    ⟨(313300674567/1000000000000 : ℚ), (2418962407/5000000000 : ℚ), (-168486049673/1000000000000 : ℚ), 3⟩,
    ⟨(320684535971/1000000000000 : ℚ), (651199/2000000 : ℚ), (-118362437839/1000000000000 : ℚ), 3⟩,
    ⟨(328104124723/1000000000000 : ℚ), (1979247403/10000000000 : ℚ), (-76961888363/1000000000000 : ℚ), 3⟩,
    ⟨(167743993063/500000000000 : ℚ), (37473219/400000000 : ℚ), (-5298368189/125000000000 : ℚ), 2⟩,
    ⟨(342765009561/1000000000000 : ℚ), (38677127/5000000000 : ℚ), (-105989079/8000000000 : ℚ), 2⟩,
    ⟨(10933284791/31250000000 : ℚ), (-31851551/500000000 : ℚ), (11485198439/1000000000000 : ℚ), 2⟩,
    ⟨(356719919499/1000000000000 : ℚ), (-1234569251/10000000000 : ℚ), (16295579451/500000000000 : ℚ), 2⟩,
    ⟨(22703963287/62500000000 : ℚ), (-10853561/62500000 : ℚ), (50659470179/1000000000000 : ℚ), 2⟩,
    ⟨(14777303007/40000000000 : ℚ), (-215925601/1000000000 : ℚ), (33071096743/500000000000 : ℚ), 2⟩,
    ⟨(9379199871/25000000000 : ℚ), (-628766719/2500000000 : ℚ), (79387465863/1000000000000 : ℚ), 2⟩,
    ⟨(9510360909/25000000000 : ℚ), (-562717251/2000000000 : ℚ), (90664218637/1000000000000 : ℚ), 2⟩,
    ⟨(77024274727/200000000000 : ℚ), (-3062215633/10000000000 : ℚ), (20036057031/200000000000 : ℚ), 2⟩,
    ⟨(389243476287/1000000000000 : ℚ), (-3266665671/10000000000 : ℚ), (108095827809/1000000000000 : ℚ), 2⟩,
    ⟨(392741046213/1000000000000 : ℚ), (-3431318039/10000000000 : ℚ), (114533382617/1000000000000 : ℚ), 2⟩,
    ⟨(395580399903/1000000000000 : ℚ), (-1779746163/5000000000 : ℚ), (119585397459/1000000000000 : ℚ), 2⟩,
    ⟨(397734192829/1000000000000 : ℚ), (-3653641959/10000000000 : ℚ), (61659932549/500000000000 : ℚ), 2⟩,
    ⟨(99795420697/250000000000 : ℚ), (-1857747741/5000000000 : ℚ), (6289222717/50000000000 : ℚ), 2⟩,
    ⟨(19995446483/50000000000 : ℚ), (-46826929/125000000 : ℚ), (127009412157/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1874987129/5000000000 : ℚ), (127162192247/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (321777943701/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control323.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control323.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate323

namespace DiagonalRamsey.JointInheritedCertificate357
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18335724571/62500000000 : ℚ), (216289742257/156250000 : ℚ), (-203452975349119/500000000000 : ℚ), 12⟩,
    ⟨(18385841933/62500000000 : ℚ), (755912271053/5000000000 : ℚ), (-5621964992943/125000000000 : ℚ), 9⟩,
    ⟨(295769503991/1000000000000 : ℚ), (4135512503/78125000 : ℚ), (-8010591444737/500000000000 : ℚ), 7⟩,
    ⟨(149072160827/500000000000 : ℚ), (260469278901/10000000000 : ℚ), (-8043760492479/1000000000000 : ℚ), 6⟩,
    ⟨(96408017/320000000 : ℚ), (150832969701/10000000000 : ℚ), (-595087244197/125000000000 : ℚ), 5⟩,
    ⟨(76282886937/250000000000 : ℚ), (4798491647/500000000 : ℚ), (-619726121361/200000000000 : ℚ), 5⟩,
    ⟨(77419166343/250000000000 : ℚ), (16210282741/2500000000 : ℚ), (-1071250156217/500000000000 : ℚ), 4⟩,
    ⟨(314866634029/1000000000000 : ℚ), (9121875719/2000000000 : ℚ), (-308483238343/200000000000 : ℚ), 4⟩,
    ⟨(80162867871/250000000000 : ℚ), (32972580037/10000000000 : ℚ), (-570584614519/500000000000 : ℚ), 4⟩,
    ⟨(326975466591/1000000000000 : ℚ), (24271810809/10000000000 : ℚ), (-429812429107/500000000000 : ℚ), 4⟩,
    ⟨(333777715819/1000000000000 : ℚ), (18056728453/10000000000 : ℚ), (-327214357369/500000000000 : ℚ), 3⟩,
    ⟨(340992709789/1000000000000 : ℚ), (13483117503/10000000000 : ℚ), (-250108386803/500000000000 : ℚ), 3⟩,
    ⟨(174275482083/500000000000 : ℚ), (5016752763/5000000000 : ℚ), (-381351458663/1000000000000 : ℚ), 3⟩,
    ⟨(89094922207/250000000000 : ℚ), (1844270857/2500000000 : ℚ), (-71942631859/250000000000 : ℚ), 3⟩,
    ⟨(364403488877/1000000000000 : ℚ), (529489041/1000000000 : ℚ), (-106382749597/500000000000 : ℚ), 3⟩,
    ⟨(372545090733/1000000000000 : ℚ), (1818856311/5000000000 : ℚ), (-30345740283/200000000000 : ℚ), 3⟩,
    ⟨(190363043159/500000000000 : ℚ), (1150663291/5000000000 : ℚ), (-101414682843/1000000000000 : ℚ), 3⟩,
    ⟨(194433844087/500000000000 : ℚ), (151423237/1250000000 : ℚ), (-5948807289/100000000000 : ℚ), 3⟩,
    ⟨(396891488223/1000000000000 : ℚ), (39236513/1250000000 : ℚ), (-189356221/7812500000 : ℚ), 2⟩,
    ⟨(80944042577/200000000000 : ℚ), (-430984797/10000000000 : ℚ), (5610066271/1000000000000 : ℚ), 2⟩,
    ⟨(206139233631/500000000000 : ℚ), (-210602697/2000000000 : ℚ), (31014530557/1000000000000 : ℚ), 2⟩,
    ⟨(419493461233/1000000000000 : ℚ), (-1574690977/10000000000 : ℚ), (13176635537/250000000000 : ℚ), 2⟩,
    ⟨(21314785523/50000000000 : ℚ), (-1006587083/5000000000 : ℚ), (17811770309/250000000000 : ℚ), 2⟩,
    ⟨(432619705567/1000000000000 : ℚ), (-238164013/1000000000 : ℚ), (87069302851/1000000000000 : ℚ), 2⟩,
    ⟨(219202271511/500000000000 : ℚ), (-672564641/2500000000 : ℚ), (50254395979/500000000000 : ℚ), 2⟩,
    ⟨(443594511679/1000000000000 : ℚ), (-2946895913/10000000000 : ℚ), (55912854917/500000000000 : ℚ), 2⟩,
    ⟨(448139629303/1000000000000 : ℚ), (-789407639/2500000000 : ℚ), (60610602203/500000000000 : ℚ), 2⟩,
    ⟨(225998061963/500000000000 : ℚ), (-1663566227/5000000000 : ℚ), (25769935641/200000000000 : ℚ), 2⟩,
    ⟨(455126855397/1000000000000 : ℚ), (-1729471811/5000000000 : ℚ), (67413997413/500000000000 : ℚ), 2⟩,
    ⟨(22875083653/50000000000 : ℚ), (-3555684297/10000000000 : ℚ), (6962117801/50000000000 : ℚ), 2⟩,
    ⟨(459097706123/1000000000000 : ℚ), (-3619201869/10000000000 : ℚ), (142153348687/1000000000000 : ℚ), 2⟩,
    ⟨(91979916783/200000000000 : ℚ), (-1825337041/5000000000 : ℚ), (71799745339/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3654594827/10000000000 : ℚ), (71889912633/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (149747118981/500000000000 : ℚ)
  μ := (23/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control357.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control357.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate357

namespace DiagonalRamsey.JointInheritedCertificate358
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300682294999/1000000000000 : ℚ), (13962471208833/10000000000 : ℚ), (-420652428658669/1000000000000 : ℚ), 12⟩,
    ⟨(301497114693/1000000000000 : ℚ), (1525080471889/10000000000 : ℚ), (-46495608065089/1000000000000 : ℚ), 9⟩,
    ⟨(151559453461/500000000000 : ℚ), (534068397871/10000000000 : ℚ), (-16562952947539/1000000000000 : ℚ), 7⟩,
    ⟨(15276602647/50000000000 : ℚ), (65710466641/2500000000 : ℚ), (-8316060322099/1000000000000 : ℚ), 6⟩,
    ⟨(4823645513/15625000000 : ℚ), (76119612353/5000000000 : ℚ), (-4922117311761/1000000000000 : ℚ), 5⟩,
    ⟨(156316024663/500000000000 : ℚ), (96887798273/10000000000 : ℚ), (-3203935898149/1000000000000 : ℚ), 5⟩,
    ⟨(9914078839/31250000000 : ℚ), (65479131379/10000000000 : ℚ), (-69235802047/31250000000 : ℚ), 4⟩,
    ⟨(80631063743/250000000000 : ℚ), (46072589897/10000000000 : ℚ), (-1595235683241/1000000000000 : ℚ), 4⟩,
    ⟨(13136098271/40000000000 : ℚ), (2082488507/625000000 : ℚ), (-590242967911/500000000000 : ℚ), 4⟩,
    ⟨(334828517961/1000000000000 : ℚ), (6134633251/2500000000 : ℚ), (-889488277011/1000000000000 : ℚ), 4⟩,
    ⟨(21358784503/62500000000 : ℚ), (9132795083/5000000000 : ℚ), (-677423407283/1000000000000 : ℚ), 3⟩,
    ⟨(349071992369/1000000000000 : ℚ), (13649266133/10000000000 : ℚ), (-518070038193/1000000000000 : ℚ), 3⟩,
    ⟨(71350446629/200000000000 : ℚ), (10167449267/10000000000 : ℚ), (-98815457819/250000000000 : ℚ), 3⟩,
    ⟨(18235365473/50000000000 : ℚ), (935791873/1250000000 : ℚ), (-298596051623/1000000000000 : ℚ), 3⟩,
    ⟨(372860609581/1000000000000 : ℚ), (5384956233/10000000000 : ℚ), (-221136949439/1000000000000 : ℚ), 3⟩,
    ⟨(381133612769/1000000000000 : ℚ), (742542613/2000000000 : ℚ), (-158120483001/1000000000000 : ℚ), 3⟩,
    ⟨(389446645481/1000000000000 : ℚ), (472879701/2000000000 : ℚ), (-53095393343/500000000000 : ℚ), 3⟩,
    ⟨(39771964867/100000000000 : ℚ), (1264952097/10000000000 : ℚ), (-62932763359/1000000000000 : ℚ), 3⟩,
    ⟨(40587294879/100000000000 : ℚ), (359846523/10000000000 : ℚ), (-26576447603/1000000000000 : ℚ), 2⟩,
    ⟨(82765605021/200000000000 : ℚ), (-6111667/156250000 : ℚ), (209770511/50000000000 : ℚ), 2⟩,
    ⟨(421508265881/1000000000000 : ℚ), (-509050437/5000000000 : ℚ), (3796972631/125000000000 : ℚ), 2⟩,
    ⟨(214419853101/500000000000 : ℚ), (-1543748861/10000000000 : ℚ), (26360520873/500000000000 : ℚ), 2⟩,
    ⟨(435751740289/1000000000000 : ℚ), (-99271593/500000000 : ℚ), (35906030181/500000000000 : ℚ), 2⟩,
    ⟨(17687112059/40000000000 : ℚ), (-589118019/2500000000 : ℚ), (88097536827/1000000000000 : ℚ), 2⟩,
    ⟨(448056003279/1000000000000 : ℚ), (-1333576997/5000000000 : ℚ), (101925263873/1000000000000 : ℚ), 2⟩,
    ⟨(453329735403/1000000000000 : ℚ), (-91419843/312500000 : ℚ), (56782502913/500000000000 : ℚ), 2⟩,
    ⟨(114487052231/250000000000 : ℚ), (-1568732611/5000000000 : ℚ), (61612724233/500000000000 : ℚ), 2⟩,
    ⟨(230933472709/500000000000 : ℚ), (-206748187/625000000 : ℚ), (26213373793/200000000000 : ℚ), 2⟩,
    ⟨(46504820531/100000000000 : ℚ), (-688107551/2000000000 : ℚ), (137210642219/1000000000000 : ℚ), 2⟩,
    ⟨(14608167229/31250000000 : ℚ), (-353781837/1000000000 : ℚ), (141746342171/1000000000000 : ℚ), 2⟩,
    ⟨(469083143557/1000000000000 : ℚ), (-900420873/2500000000 : ℚ), (144736952457/1000000000000 : ℚ), 2⟩,
    ⟨(469897963251/1000000000000 : ℚ), (-3633325823/10000000000 : ℚ), (5848901121/40000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-3637267663/10000000000 : ℚ), (29281554881/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (294098409831/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control358.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control358.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate358

namespace DiagonalRamsey.JointInheritedCertificate359
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(308012894081/1000000000000 : ℚ), (14081192234927/10000000000 : ℚ), (-108641282248563/250000000000 : ℚ), 12⟩,
    ⟨(77210139981/250000000000 : ℚ), (769100892999/5000000000 : ℚ), (-9606759753201/200000000000 : ℚ), 9⟩,
    ⟨(62097584147/200000000000 : ℚ), (538742325559/10000000000 : ℚ), (-17111192164891/1000000000000 : ℚ), 7⟩,
    ⟨(312939111529/1000000000000 : ℚ), (265189202509/10000000000 : ℚ), (-4295784919863/500000000000 : ℚ), 6⟩,
    ⟨(316170525999/1000000000000 : ℚ), (153629941613/10000000000 : ℚ), (-317837867007/62500000000 : ℚ), 5⟩,
    ⟨(320151043857/1000000000000 : ℚ), (48897568409/5000000000 : ℚ), (-413804094463/125000000000 : ℚ), 5⟩,
    ⟨(16242116527/50000000000 : ℚ), (16527331073/2500000000 : ℚ), (-2289393791359/1000000000000 : ℚ), 4⟩,
    ⟨(330199206393/1000000000000 : ℚ), (9305951503/2000000000 : ℚ), (-1648614979159/1000000000000 : ℚ), 4⟩,
    ⟨(336170081773/1000000000000 : ℚ), (33662182817/10000000000 : ℚ), (-1220201036721/1000000000000 : ℚ), 4⟩,
    ⟨(171348726943/500000000000 : ℚ), (2480120537/1000000000 : ℚ), (-229909469493/250000000000 : ℚ), 4⟩,
    ⟨(349718460571/1000000000000 : ℚ), (2308874447/1250000000 : ℚ), (-175155882669/250000000000 : ℚ), 3⟩,
    ⟨(178582742847/500000000000 : ℚ), (13812401411/10000000000 : ℚ), (-536069054843/1000000000000 : ℚ), 3⟩,
    ⟨(182483405167/500000000000 : ℚ), (82389749/80000000 : ℚ), (-409272934269/1000000000000 : ℚ), 3⟩,
    ⟨(93261825867/250000000000 : ℚ), (7593177181/10000000000 : ℚ), (-309487802169/1000000000000 : ℚ), 3⟩,
    ⟨(95332286383/250000000000 : ℚ), (5472823819/10000000000 : ℚ), (-229547867533/1000000000000 : ℚ), 3⟩,
    ⟨(194866288929/500000000000 : ℚ), (3785686257/10000000000 : ℚ), (-164530802953/1000000000000 : ℚ), 3⟩,
    ⟨(995441677/2500000000 : ℚ), (2425583699/10000000000 : ℚ), (-22193793067/200000000000 : ℚ), 3⟩,
    ⟨(203290051563/500000000000 : ℚ), (658374279/5000000000 : ℚ), (-13273307519/200000000000 : ℚ), 3⟩,
    ⟨(414861945189/1000000000000 : ℚ), (404129687/10000000000 : ℚ), (-28894122799/1000000000000 : ℚ), 2⟩,
    ⟨(105735609581/250000000000 : ℚ), (-352896161/10000000000 : ℚ), (2810023487/1000000000000 : ℚ), 2⟩,
    ⟨(430743762963/1000000000000 : ℚ), (-3846501/39062500 : ℚ), (14886332699/500000000000 : ℚ), 2⟩,
    ⟨(219095394043/500000000000 : ℚ), (-757130599/5000000000 : ℚ), (26388077831/500000000000 : ℚ), 2⟩,
    ⟨(445211794771/1000000000000 : ℚ), (-979545501/5000000000 : ℚ), (7242152571/100000000000 : ℚ), 2⟩,
    ⟨(112934791721/250000000000 : ℚ), (-233265987/1000000000 : ℚ), (89173242771/1000000000000 : ℚ), 2⟩,
    ⟨(57213755283/125000000000 : ℚ), (-2645366227/10000000000 : ℚ), (10339148749/100000000000 : ℚ), 2⟩,
    ⟨(463066918117/1000000000000 : ℚ), (-581051543/2000000000 : ℚ), (57677886879/500000000000 : ℚ), 2⟩,
    ⟨(146174439/312500000 : ℚ), (-779638969/2500000000 : ℚ), (31320610973/250000000000 : ℚ), 2⟩,
    ⟨(235869361329/500000000000 : ℚ), (-822510727/2500000000 : ℚ), (133337744821/1000000000000 : ℚ), 2⟩,
    ⟨(59371267141/125000000000 : ℚ), (-684669493/2000000000 : ℚ), (17455954719/125000000000 : ℚ), 2⟩,
    ⟨(477421327923/1000000000000 : ℚ), (-3521154831/10000000000 : ℚ), (144305126153/1000000000000 : ℚ), 2⟩,
    ⟨(239534344367/500000000000 : ℚ), (-1792679393/5000000000 : ℚ), (36843907929/250000000000 : ℚ), 2⟩,
    ⟨(479896354577/1000000000000 : ℚ), (-1808583449/5000000000 : ℚ), (74450386531/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-905282323/2500000000 : ℚ), (74545473731/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (57739281889/200000000000 : ℚ)
  μ := (12/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control359.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control359.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate359

namespace DiagonalRamsey.JointInheritedCertificate360
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32295208877/100000000000 : ℚ), (1792852414737/1250000000 : ℚ), (-464092896069839/1000000000000 : ℚ), 12⟩,
    ⟨(10118878409/31250000000 : ℚ), (1567122998073/10000000000 : ℚ), (-25649395263751/500000000000 : ℚ), 9⟩,
    ⟨(162749972151/500000000000 : ℚ), (274524161507/5000000000 : ℚ), (-18275183542019/1000000000000 : ℚ), 7⟩,
    ⟨(328023262593/1000000000000 : ℚ), (270368093711/10000000000 : ℚ), (-458837082013/50000000000 : ℚ), 6⟩,
    ⟨(165674881513/500000000000 : ℚ), (19587581181/1250000000 : ℚ), (-5432411110531/1000000000000 : ℚ), 5⟩,
    ⟨(167723704791/500000000000 : ℚ), (49900248063/5000000000 : ℚ), (-707382259373/200000000000 : ℚ), 5⟩,
    ⟨(340276739687/1000000000000 : ℚ), (13500755743/2000000000 : ℚ), (-2446585744353/1000000000000 : ℚ), 4⟩,
    ⟨(345791244251/1000000000000 : ℚ), (23771366609/5000000000 : ℚ), (-881185447989/500000000000 : ℚ), 4⟩,
    ⟨(17596890779/50000000000 : ℚ), (17210985187/5000000000 : ℚ), (-652481691109/500000000000 : ℚ), 4⟩,
    ⟨(358657258833/1000000000000 : ℚ), (3173144383/1250000000 : ℚ), (-984106210061/1000000000000 : ℚ), 4⟩,
    ⟨(182942431049/500000000000 : ℚ), (9464260243/5000000000 : ℚ), (-375175332101/500000000000 : ℚ), 3⟩,
    ⟨(93387754901/250000000000 : ℚ), (567061739/400000000 : ℚ), (-574766327683/1000000000000 : ℚ), 3⟩,
    ⟨(381581902063/1000000000000 : ℚ), (5296201169/5000000000 : ℚ), (-109878953771/250000000000 : ℚ), 3⟩,
    ⟨(389900167689/1000000000000 : ℚ), (7832795061/10000000000 : ℚ), (-83280069573/250000000000 : ℚ), 3⟩,
    ⟨(79685141407/200000000000 : ℚ), (5670394099/10000000000 : ℚ), (-15495352041/62500000000 : ℚ), 3⟩,
    ⟨(12721137953/31250000000 : ℚ), (19751027/50000000 : ℚ), (-44668383443/250000000000 : ℚ), 3⟩,
    ⟨(51971122379/125000000000 : ℚ), (2563904329/10000000000 : ℚ), (-24331803207/200000000000 : ℚ), 3⟩,
    ⟨(212209843247/500000000000 : ℚ), (1434166879/10000000000 : ℚ), (-74214841751/1000000000000 : ℚ), 3⟩,
    ⟨(5411815323/12500000000 : ℚ), (504789171/10000000000 : ℚ), (-859634119/25000000000 : ℚ), 2⟩,
    ⟨(88252698293/200000000000 : ℚ), (-265720653/10000000000 : ℚ), (-714281391/1000000000000 : ℚ), 2⟩,
    ⟨(17971774957/40000000000 : ℚ), (-454201059/5000000000 : ℚ), (13948513471/500000000000 : ℚ), 2⟩,
    ⟨(456960531431/1000000000000 : ℚ), (-723368067/5000000000 : ℚ), (26143092059/500000000000 : ℚ), 2⟩,
    ⟨(58023516837/125000000000 : ℚ), (-1898648931/10000000000 : ℚ), (73097161127/1000000000000 : ℚ), 2⟩,
    ⟨(117726894487/250000000000 : ℚ), (-569480903/2500000000 : ℚ), (5676752261/62500000000 : ℚ), 2⟩,
    ⟨(238527074639/500000000000 : ℚ), (-648802367/2500000000 : ℚ), (21173085803/200000000000 : ℚ), 2⟩,
    ⟨(482568653841/1000000000000 : ℚ), (-285875301/1000000000 : ℚ), (23701937487/200000000000 : ℚ), 2⟩,
    ⟨(243698991973/500000000000 : ℚ), (-3074933051/10000000000 : ℚ), (128993538767/1000000000000 : ℚ), 2⟩,
    ⟨(491495630503/1000000000000 : ℚ), (-1624327599/5000000000 : ℚ), (137496023359/1000000000000 : ℚ), 2⟩,
    ⟨(61852766367/125000000000 : ℚ), (-3383643459/10000000000 : ℚ), (5766117793/40000000000 : ℚ), 2⟩,
    ⟨(497345449227/1000000000000 : ℚ), (-3482654771/10000000000 : ℚ), (149064675959/1000000000000 : ℚ), 2⟩,
    ⟨(499041284441/1000000000000 : ℚ), (-3547634059/10000000000 : ℚ), (152301883609/1000000000000 : ℚ), 2⟩,
    ⟨(499893304759/1000000000000 : ℚ), (-894955447/2500000000 : ℚ), (19238694151/125000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-179191563/500000000 : ℚ), (154110005419/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (138879482803/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control360.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control360.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate360

namespace DiagonalRamsey.JointInheritedCertificate361
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(108078856889/500000000000 : ℚ), (12694634230521/10000000000 : ℚ), (-274993418221943/1000000000000 : ℚ), 12⟩,
    ⟨(108400906289/500000000000 : ℚ), (276990554431/2000000000 : ℚ), (-15195939864701/500000000000 : ℚ), 9⟩,
    ⟨(54520951789/250000000000 : ℚ), (484150615097/10000000000 : ℚ), (-10823582163859/1000000000000 : ℚ), 7⟩,
    ⟨(109995675601/500000000000 : ℚ), (47553858641/2000000000 : ℚ), (-84876465857/15625000000 : ℚ), 6⟩,
    ⟨(27813259253/125000000000 : ℚ), (137381617031/10000000000 : ℚ), (-1606561344651/500000000000 : ℚ), 5⟩,
    ⟨(225603757467/1000000000000 : ℚ), (43595608227/5000000000 : ℚ), (-2089612813703/1000000000000 : ℚ), 5⟩,
    ⟨(229254569147/1000000000000 : ℚ), (29370532817/5000000000 : ℚ), (-180393245533/125000000000 : ℚ), 4⟩,
    ⟨(933693399/4000000000 : ℚ), (41181028879/10000000000 : ℚ), (-518629211953/500000000000 : ℚ), 4⟩,
    ⟨(238069951641/1000000000000 : ℚ), (14826453867/5000000000 : ℚ), (-95713263387/125000000000 : ℚ), 4⟩,
    ⟨(7598425797/31250000000 : ℚ), (10860667007/5000000000 : ℚ), (-11500201169/20000000000 : ℚ), 4⟩,
    ⟨(124306725651/500000000000 : ℚ), (3211717913/2000000000 : ℚ), (-87174596357/200000000000 : ℚ), 3⟩,
    ⟨(127204404703/500000000000 : ℚ), (11892331919/10000000000 : ℚ), (-8278910811/25000000000 : ℚ), 3⟩,
    ⟨(260479887349/1000000000000 : ℚ), (8749518379/10000000000 : ℚ), (-250295883037/1000000000000 : ℚ), 3⟩,
    ⟨(266768217333/1000000000000 : ℚ), (6328032999/10000000000 : ℚ), (-186495292967/1000000000000 : ℚ), 3⟩,
    ⟨(273213239301/1000000000000 : ℚ), (2214067933/5000000000 : ℚ), (-135225696259/1000000000000 : ℚ), 3⟩,
    ⟨(279752884169/1000000000000 : ℚ), (582778893/2000000000 : ℚ), (-46689196029/500000000000 : ℚ), 3⟩,
    ⟨(286324171583/1000000000000 : ℚ), (211313687/1250000000 : ℚ), (-11753148629/200000000000 : ℚ), 3⟩,
    ⟨(292863816451/1000000000000 : ℚ), (172619113/2500000000 : ℚ), (-29815548147/1000000000000 : ℚ), 3⟩,
    ⟨(299308838419/1000000000000 : ℚ), (-67568537/5000000000 : ℚ), (-2688845653/500000000000 : ℚ), 2⟩,
    ⟨(305597168403/1000000000000 : ℚ), (-411172931/5000000000 : ℚ), (962608779/62500000000 : ℚ), 2⟩,
    ⟨(155834123173/500000000000 : ℚ), (-1398003739/10000000000 : ℚ), (16582264383/500000000000 : ℚ), 2⟩,
    ⟨(6349272089/20000000000 : ℚ), (-941176989/5000000000 : ℚ), (12099440511/250000000000 : ℚ), 2⟩,
    ⟨(40365928781/125000000000 : ℚ), (-2290794201/10000000000 : ℚ), (61473891989/1000000000000 : ℚ), 2⟩,
    ⟨(328007104111/1000000000000 : ℚ), (-658779631/2500000000 : ℚ), (14535838321/200000000000 : ℚ), 2⟩,
    ⟨(166326853001/500000000000 : ℚ), (-1462202407/5000000000 : ℚ), (16446862751/200000000000 : ℚ), 2⟩,
    ⟨(67364497321/200000000000 : ℚ), (-126626261/400000000 : ℚ), (18061872757/200000000000 : ℚ), 2⟩,
    ⟨(85118324571/250000000000 : ℚ), (-3364271723/10000000000 : ℚ), (97035085087/1000000000000 : ℚ), 2⟩,
    ⟨(10736593179/31250000000 : ℚ), (-3524388213/10000000000 : ℚ), (102511233313/1000000000000 : ℚ), 2⟩,
    ⟨(6921714091/20000000000 : ℚ), (-729827609/2000000000 : ℚ), (106812866447/1000000000000 : ℚ), 2⟩,
    ⟨(86998312149/250000000000 : ℚ), (-3740834241/10000000000 : ℚ), (109995047387/1000000000000 : ℚ), 2⟩,
    ⟨(174637621587/500000000000 : ℚ), (-1900552693/5000000000 : ℚ), (112096294523/1000000000000 : ℚ), 2⟩,
    ⟨(174959670987/500000000000 : ℚ), (-3830988721/10000000000 : ℚ), (113141006411/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-76694249/200000000 : ℚ), (56635660947/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (357308532381/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control361.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control361.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate361

namespace DiagonalRamsey.JointInheritedCertificate362
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118313301397/500000000000 : ℚ), (2594744763777/2000000000 : ℚ), (-307638808802347/1000000000000 : ℚ), 12⟩,
    ⟨(237316568841/1000000000000 : ℚ), (1415795112927/10000000000 : ℚ), (-17000359240573/500000000000 : ℚ), 9⟩,
    ⟨(119344928093/500000000000 : ℚ), (247567395649/5000000000 : ℚ), (-12109505065203/1000000000000 : ℚ), 7⟩,
    ⟨(240733239319/1000000000000 : ℚ), (15205272249/625000000 : ℚ), (-607803993221/100000000000 : ℚ), 6⟩,
    ⟨(48685407869/200000000000 : ℚ), (14064822867/1000000000 : ℚ), (-3595715231439/1000000000000 : ℚ), 5⟩,
    ⟨(30843164187/125000000000 : ℚ), (89321963023/10000000000 : ℚ), (-584727047137/250000000000 : ℚ), 5⟩,
    ⟨(250656104979/1000000000000 : ℚ), (60220829871/10000000000 : ℚ), (-807894034641/500000000000 : ℚ), 4⟩,
    ⟨(127560875367/500000000000 : ℚ), (42254630741/10000000000 : ℚ), (-580910111879/500000000000 : ℚ), 4⟩,
    ⟨(260099244151/1000000000000 : ℚ), (6091451863/2000000000 : ℚ), (-85814783293/100000000000 : ℚ), 4⟩,
    ⟨(8298145289/31250000000 : ℚ), (5584746829/2500000000 : ℚ), (-128988558843/200000000000 : ℚ), 4⟩,
    ⟨(135696781159/500000000000 : ℚ), (4135569151/2500000000 : ℚ), (-489429105743/1000000000000 : ℚ), 3⟩,
    ⟨(27760161661/100000000000 : ℚ), (3069326113/2500000000 : ℚ), (-186216414239/500000000000 : ℚ), 3⟩,
    ⟨(142052512583/500000000000 : ℚ), (9060220811/10000000000 : ℚ), (-881669263/3125000000 : ℚ), 3⟩,
    ⟨(284024567/976562500 : ℚ), (6581929091/10000000000 : ℚ), (-26366124367/125000000000 : ℚ), 3⟩,
    ⟨(297745138307/1000000000000 : ℚ), (579751553/1250000000 : ℚ), (-76874622933/500000000000 : ℚ), 3⟩,
    ⟨(152375240573/500000000000 : ℚ), (1544653061/5000000000 : ℚ), (-21423112391/200000000000 : ℚ), 3⟩,
    ⟨(311789719843/1000000000000 : ℚ), (919358591/5000000000 : ℚ), (-68578861879/1000000000000 : ℚ), 3⟩,
    ⟨(159397531341/500000000000 : ℚ), (408537933/5000000000 : ℚ), (-142103313/3906250000 : ℚ), 3⟩,
    ⟨(325699044381/1000000000000 : ℚ), (-25783101/10000000000 : ℚ), (-9225728603/1000000000000 : ℚ), 2⟩,
    ⟨(332435175823/1000000000000 : ℚ), (-4542517/62500000 : ℚ), (1383658423/100000000000 : ℚ), 2⟩,
    ⟨(338938584379/1000000000000 : ℚ), (-1313545647/10000000000 : ℚ), (1341139731/40000000000 : ℚ), 2⟩,
    ⟨(345146638671/1000000000000 : ℚ), (-1806802847/10000000000 : ℚ), (25198471207/500000000000 : ℚ), 2⟩,
    ⟨(350999551741/1000000000000 : ℚ), (-1111199541/5000000000 : ℚ), (32430297161/500000000000 : ℚ), 2⟩,
    ⟨(178220478419/500000000000 : ℚ), (-128623193/500000000 : ℚ), (77241633037/1000000000000 : ℚ), 2⟩,
    ⟨(72283690051/200000000000 : ℚ), (-286633949/1000000000 : ℚ), (87788731457/1000000000000 : ℚ), 2⟩,
    ⟨(36588409601/100000000000 : ℚ), (-311123813/1000000000 : ℚ), (48346941093/500000000000 : ℚ), 2⟩,
    ⟨(369794887493/1000000000000 : ℚ), (-828180529/2500000000 : ℚ), (416419539/4000000000 : ℚ), 2⟩,
    ⟨(93278290411/250000000000 : ℚ), (-3475057547/10000000000 : ℚ), (110134690701/1000000000000 : ℚ), 2⟩,
    ⟨(37580696167/100000000000 : ℚ), (-720295031/2000000000 : ℚ), (57434210623/500000000000 : ℚ), 2⟩,
    ⟨(377850344803/1000000000000 : ℚ), (-3694361813/10000000000 : ℚ), (118368613803/1000000000000 : ℚ), 2⟩,
    ⟨(379223632147/1000000000000 : ℚ), (-46942483/125000000 : ℚ), (1508488387/12500000000 : ℚ), 2⟩,
    ⟨(75982719639/200000000000 : ℚ), (-3785656583/10000000000 : ℚ), (121827565933/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3789426757/10000000000 : ℚ), (121970816283/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (341836975833/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control362.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control362.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate362

namespace DiagonalRamsey.JointInheritedCertificate401
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10938004787/40000000000 : ℚ), (1671433385493/1250000000 : ℚ), (-183186230133521/500000000000 : ℚ), 12⟩,
    ⟨(137101747927/500000000000 : ℚ), (292035222633/2000000000 : ℚ), (-40492924105847/1000000000000 : ℚ), 9⟩,
    ⟨(275702992787/1000000000000 : ℚ), (51114532897/1000000000 : ℚ), (-7211210392711/500000000000 : ℚ), 7⟩,
    ⟨(277934169499/1000000000000 : ℚ), (15714689653/625000000 : ℚ), (-7239551506953/1000000000000 : ℚ), 6⟩,
    ⟨(280875538539/1000000000000 : ℚ), (18192775163/1250000000 : ℚ), (-4283435110011/1000000000000 : ℚ), 5⟩,
    ⟨(142249386457/500000000000 : ℚ), (46277662093/5000000000 : ℚ), (-2786835540171/1000000000000 : ℚ), 5⟩,
    ⟨(144384489449/500000000000 : ℚ), (62492553859/10000000000 : ℚ), (-192584136711/100000000000 : ℚ), 5⟩,
    ⟨(36705629009/125000000000 : ℚ), (21959878291/5000000000 : ℚ), (-8658837641/6250000000 : ℚ), 4⟩,
    ⟨(299079973379/1000000000000 : ℚ), (3964470421/1250000000 : ℚ), (-51200223617/50000000000 : ℚ), 4⟩,
    ⟨(152510730681/500000000000 : ℚ), (2914055539/1250000000 : ℚ), (-770361474497/1000000000000 : ℚ), 4⟩,
    ⟨(62282455249/200000000000 : ℚ), (3461812309/2000000000 : ℚ), (-292725061419/500000000000 : ℚ), 3⟩,
    ⟨(318190870987/1000000000000 : ℚ), (6445166789/5000000000 : ℚ), (-446433976849/1000000000000 : ℚ), 3⟩,
    ⟨(162645982007/500000000000 : ℚ), (119457131/125000000 : ℚ), (-67846862791/200000000000 : ℚ), 3⟩,
    ⟨(4158089599/12500000000 : ℚ), (349418447/500000000 : ℚ), (-254792499371/1000000000000 : ℚ), 3⟩,
    ⟨(340185648069/1000000000000 : ℚ), (4974348619/10000000000 : ℚ), (-1870697049/10000000000 : ℚ), 3⟩,
    ⟨(173917402389/500000000000 : ℚ), (337048739/1000000000 : ℚ), (-65959381561/500000000000 : ℚ), 3⟩,
    ⟨(88880243121/250000000000 : ℚ), (519052523/2500000000 : ℚ), (-10802394059/125000000000 : ℚ), 3⟩,
    ⟨(45396266149/125000000000 : ℚ), (1019791697/10000000000 : ℚ), (-48469892203/1000000000000 : ℚ), 3⟩,
    ⟨(185354304671/500000000000 : ℚ), (149154039/10000000000 : ℚ), (-3306407361/200000000000 : ℚ), 3⟩,
    ⟨(378063813247/1000000000000 : ℚ), (-114820433/2000000000 : ℚ), (2634733439/250000000000 : ℚ), 2⟩,
    ⟨(15406596251/40000000000 : ℚ), (-1178663829/10000000000 : ℚ), (33605010023/1000000000000 : ℚ), 2⟩,
    ⟨(391943501017/1000000000000 : ℚ), (-1686199613/10000000000 : ℚ), (13330515151/250000000000 : ℚ), 2⟩,
    ⟨(3983343159/10000000000 : ℚ), (-528306337/2500000000 : ℚ), (280772327/4000000000 : ℚ), 2⟩,
    ⟨(404275803883/1000000000000 : ℚ), (-494483563/2000000000 : ℚ), (1321968679/15625000000 : ℚ), 2⟩,
    ⟨(40971074519/100000000000 : ℚ), (-346694247/1250000000 : ℚ), (96860930747/1000000000000 : ℚ), 2⟩,
    ⟨(103646699591/250000000000 : ℚ), (-3024191101/10000000000 : ℚ), (107190204657/1000000000000 : ℚ), 2⟩,
    ⟨(104714251087/250000000000 : ℚ), (-1615082213/5000000000 : ℚ), (57886569451/500000000000 : ℚ), 2⟩,
    ⟨(422480238723/1000000000000 : ℚ), (-848988473/2500000000 : ℚ), (1534339299/12500000000 : ℚ), 2⟩,
    ⟨(425421607763/1000000000000 : ℚ), (-3524955087/10000000000 : ℚ), (128216043323/1000000000000 : ℚ), 2⟩,
    ⟨(17106111379/40000000000 : ℚ), (-3619678401/10000000000 : ℚ), (26451259251/200000000000 : ℚ), 2⟩,
    ⟨(6705504397/15625000000 : ℚ), (-460236609/1250000000 : ℚ), (33730391433/250000000000 : ℚ), 2⟩,
    ⟨(429905657587/1000000000000 : ℚ), (-185636293/500000000 : ℚ), (27249186027/200000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1858283637/5000000000 : ℚ), (136411092803/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (324988310537/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control401.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control401.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate401

namespace DiagonalRamsey.JointInheritedCertificate402
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(154990307779/500000000000 : ℚ), (13958507829777/10000000000 : ℚ), (-216758226281227/500000000000 : ℚ), 12⟩,
    ⟨(155399405997/500000000000 : ℚ), (381266877781/2500000000 : ℚ), (-4791668604881/100000000000 : ℚ), 9⟩,
    ⟨(312427325187/1000000000000 : ℚ), (267133848933/5000000000 : ℚ), (-8534302519977/500000000000 : ℚ), 7⟩,
    ⟨(157425235833/500000000000 : ℚ), (131526636907/5000000000 : ℚ), (-8569516098001/1000000000000 : ℚ), 6⟩,
    ⟨(318044915203/1000000000000 : ℚ), (152430269069/10000000000 : ℚ), (-5071803521069/1000000000000 : ℚ), 5⟩,
    ⟨(321979891563/1000000000000 : ℚ), (9705319331/1000000000 : ℚ), (-3301110688073/1000000000000 : ℚ), 5⟩,
    ⟨(81654376193/250000000000 : ℚ), (8202493723/1250000000 : ℚ), (-57063414763/25000000000 : ℚ), 5⟩,
    ⟨(331913092079/1000000000000 : ℚ), (5773937591/1250000000 : ℚ), (-328661645171/200000000000 : ℚ), 4⟩,
    ⟨(337815654083/1000000000000 : ℚ), (33419741213/10000000000 : ℚ), (-607967656069/500000000000 : ℚ), 4⟩,
    ⟨(344268345887/1000000000000 : ℚ), (12311117197/5000000000 : ℚ), (-916107723291/1000000000000 : ℚ), 4⟩,
    ⟨(17560451227/50000000000 : ℚ), (733422011/400000000 : ℚ), (-697635245069/1000000000000 : ℚ), 3⟩,
    ⟨(358570847513/1000000000000 : ℚ), (13707667603/10000000000 : ℚ), (-533494270559/1000000000000 : ℚ), 3⟩,
    ⟨(183141458213/500000000000 : ℚ), (5108094577/5000000000 : ℚ), (-407023459321/1000000000000 : ℚ), 3⟩,
    ⟨(2339193499/6250000000 : ℚ), (3763524943/5000000000 : ℚ), (-2460009219/8000000000 : ℚ), 3⟩,
    ⟨(38245804853/100000000000 : ℚ), (5419049663/10000000000 : ℚ), (-227778529909/1000000000000 : ℚ), 3⟩,
    ⟨(97691334089/250000000000 : ℚ), (374138189/1000000000 : ℚ), (-81472370167/500000000000 : ℚ), 3⟩,
    ⟨(99778204899/250000000000 : ℚ), (1194328713/5000000000 : ℚ), (-109540043517/1000000000000 : ℚ), 3⟩,
    ⟨(203710053711/500000000000 : ℚ), (257131187/2000000000 : ℚ), (-32537069/500000000 : ℚ), 3⟩,
    ⟨(25975449757/62500000000 : ℚ), (37771037/1000000000 : ℚ), (-13860756913/500000000000 : ℚ), 3⟩,
    ⟨(211797619763/500000000000 : ℚ), (-375529277/10000000000 : ℚ), (969203741/250000000000 : ℚ), 2⟩,
    ⟨(431307308439/1000000000000 : ℚ), (-25106037/250000000 : ℚ), (1229825729/40000000000 : ℚ), 2⟩,
    ⟨(109667282853/250000000000 : ℚ), (-1531249423/10000000000 : ℚ), (13416477453/250000000000 : ℚ), 2⟩,
    ⟨(89121962013/200000000000 : ℚ), (-986985691/5000000000 : ℚ), (73237622509/1000000000000 : ℚ), 2⟩,
    ⟨(452062501869/1000000000000 : ℚ), (-2345794697/10000000000 : ℚ), (11240562349/125000000000 : ℚ), 2⟩,
    ⟨(457965063873/1000000000000 : ℚ), (-2657058319/10000000000 : ℚ), (26021540317/250000000000 : ℚ), 2⟩,
    ⟨(23163032559/50000000000 : ℚ), (-2915764587/10000000000 : ℚ), (29000424943/250000000000 : ℚ), 2⟩,
    ⟨(467898264389/1000000000000 : ℚ), (-625620057/2000000000 : ℚ), (125887127719/1000000000000 : ℚ), 2⟩,
    ⟨(471833240749/1000000000000 : ℚ), (-3298820879/10000000000 : ℚ), (33477108079/250000000000 : ℚ), 2⟩,
    ⟨(475027684287/1000000000000 : ℚ), (-1715767297/5000000000 : ℚ), (17523921109/125000000000 : ℚ), 2⟩,
    ⟨(95490166153/200000000000 : ℚ), (-3528911417/10000000000 : ℚ), (72414389877/500000000000 : ℚ), 2⟩,
    ⟨(239539671979/500000000000 : ℚ), (-17964171/50000000 : ℚ), (73942983521/500000000000 : ℚ), 2⟩,
    ⟨(239948770197/500000000000 : ℚ), (-113265733/312500000 : ℚ), (149404469237/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1814224287/5000000000 : ℚ), (14959381473/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (18601374237/62500000000 : ℚ)
  μ := (12/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control402.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control402.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate402

namespace DiagonalRamsey.JointInheritedCertificate403
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(491432801993/1000000000000 : ℚ), (1805007979389/1000000000 : ℚ), (-444189802722033/500000000000 : ℚ), 12⟩,
    ⟨(123109126207/250000000000 : ℚ), (123593183677/625000000 : ℚ), (-98222938340519/1000000000000 : ℚ), 9⟩,
    ⟨(49443424429/100000000000 : ℚ), (347787546201/5000000000 : ℚ), (-350107711779/10000000000 : ℚ), 7⟩,
    ⟨(497406781057/1000000000000 : ℚ), (17208758397/500000000 : ℚ), (-879781916443/50000000000 : ℚ), 6⟩,
    ⟨(250662743987/500000000000 : ℚ), (200576073721/10000000000 : ℚ), (-651839827683/62500000000 : ℚ), 5⟩,
    ⟨(63269078219/125000000000 : ℚ), (128529656527/10000000000 : ℚ), (-3401236455131/500000000000 : ℚ), 5⟩,
    ⟨(102368341283/200000000000 : ℚ), (21883134459/2500000000 : ℚ), (-4717009297033/1000000000000 : ℚ), 5⟩,
    ⟨(259168970503/500000000000 : ℚ), (12425399903/2000000000 : ℚ), (-426145901823/125000000000 : ℚ), 4⟩,
    ⟨(131394691809/250000000000 : ℚ), (907671627/200000000 : ℚ), (-507144616429/200000000000 : ℚ), 4⟩,
    ⟨(133373612997/250000000000 : ℚ), (33823467203/10000000000 : ℚ), (-1923900477371/1000000000000 : ℚ), 4⟩,
    ⟨(542008762893/1000000000000 : ℚ), (25546573161/10000000000 : ℚ), (-739517025517/500000000000 : ℚ), 3⟩,
    ⟨(551039702481/1000000000000 : ℚ), (19445086201/10000000000 : ℚ), (-1145730891651/1000000000000 : ℚ), 3⟩,
    ⟨(560500297867/1000000000000 : ℚ), (1483859721/1000000000 : ℚ), (-889828836847/1000000000000 : ℚ), 3⟩,
    ⟨(570299438347/1000000000000 : ℚ), (2258215741/2000000000 : ℚ), (-689333782811/1000000000000 : ℚ), 3⟩,
    ⟨(14508568821/25000000000 : ℚ), (8513086759/10000000000 : ℚ), (-132392402153/250000000000 : ℚ), 3⟩,
    ⟨(295266759369/500000000000 : ℚ), (3153348333/5000000000 : ℚ), (-400442847003/1000000000000 : ℚ), 3⟩,
    ⟨(300386796697/500000000000 : ℚ), (2266552283/5000000000 : ℚ), (-294830396213/1000000000000 : ℚ), 3⟩,
    ⟨(152741089823/250000000000 : ℚ), (48325561/156250000 : ℚ), (-10379634353/50000000000 : ℚ), 2⟩,
    ⟨(124201534757/200000000000 : ℚ), (956628681/5000000000 : ℚ), (-134949698119/1000000000000 : ℚ), 2⟩,
    ⟨(126161362853/200000000000 : ℚ), (188094423/2000000000 : ℚ), (-1851876639/25000000000 : ℚ), 2⟩,
    ⟨(640267409651/1000000000000 : ℚ), (133928563/10000000000 : ℚ), (-22825417341/1000000000000 : ℚ), 2⟩,
    ⟨(649298349239/1000000000000 : ℚ), (-107448919/2000000000 : ℚ), (817764661/40000000000 : ℚ), 2⟩,
    ⟨(41113291259/62500000000 : ℚ), (-1096777921/10000000000 : ℚ), (57008118177/1000000000000 : ℚ), 2⟩,
    ⟨(10402005389/15625000000 : ℚ), (-31261021/200000000 : ℚ), (43930768923/500000000000 : ℚ), 2⟩,
    ⟨(336484585563/500000000000 : ℚ), (-487593259/2500000000 : ℚ), (113784783407/1000000000000 : ℚ), 2⟩,
    ⟨(679465405717/1000000000000 : ℚ), (-2269910179/10000000000 : ℚ), (135391093259/1000000000000 : ℚ), 2⟩,
    ⟨(34257724319/50000000000 : ℚ), (-2530365617/10000000000 : ℚ), (76580707123/500000000000 : ℚ), 2⟩,
    ⟨(344990812079/500000000000 : ℚ), (-2738480969/10000000000 : ℚ), (41867576679/250000000000 : ℚ), 2⟩,
    ⟨(27756013243/40000000000 : ℚ), (-2899407867/10000000000 : ℚ), (22325659017/125000000000 : ℚ), 2⟩,
    ⟨(348436433921/500000000000 : ℚ), (-603396403/2000000000 : ℚ), (1167382047/6250000000 : ℚ), 2⟩,
    ⟨(87358825913/125000000000 : ℚ), (-309392199/1000000000 : ℚ), (192150523703/1000000000000 : ℚ), 2⟩,
    ⟨(349937155069/500000000000 : ℚ), (-1565983817/5000000000 : ℚ), (194811327903/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-3136703653/10000000000 : ℚ), (97571409731/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (6739854519/40000000000 : ℚ)
  μ := (7/10 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control403.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control403.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate403

namespace DiagonalRamsey.JointInheritedCertificate404
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(119111457541/500000000000 : ℚ), (12861305015303/10000000000 : ℚ), (-307019383680709/1000000000000 : ℚ), 12⟩,
    ⟨(238905199081/1000000000000 : ℚ), (280758036053/2000000000 : ℚ), (-16965634166577/500000000000 : ℚ), 9⟩,
    ⟨(30032899539/125000000000 : ℚ), (491058747021/10000000000 : ℚ), (-6042026959083/500000000000 : ℚ), 7⟩,
    ⟨(242283828519/1000000000000 : ℚ), (241345864799/10000000000 : ℚ), (-6064712615979/1000000000000 : ℚ), 6⟩,
    ⟨(244947635909/1000000000000 : ℚ), (34890854651/2500000000 : ℚ), (-448422425909/125000000000 : ℚ), 6⟩,
    ⟨(248228964561/1000000000000 : ℚ), (44326643463/5000000000 : ℚ), (-2333101970241/1000000000000 : ℚ), 5⟩,
    ⟨(126048106743/500000000000 : ℚ), (14945249769/2500000000 : ℚ), (-1611440370943/1000000000000 : ℚ), 5⟩,
    ⟨(256512138963/1000000000000 : ℚ), (4195122287/1000000000 : ℚ), (-579195966941/500000000000 : ℚ), 4⟩,
    ⟨(52286842643/200000000000 : ℚ), (6048004393/2000000000 : ℚ), (-855338973377/1000000000000 : ℚ), 4⟩,
    ⟨(266815033977/1000000000000 : ℚ), (4435723659/2000000000 : ℚ), (-642573808327/1000000000000 : ℚ), 4⟩,
    ⟨(68150695251/250000000000 : ℚ), (4105192319/2500000000 : ℚ), (-487386399947/1000000000000 : ℚ), 3⟩,
    ⟨(278741715127/1000000000000 : ℚ), (12183133861/10000000000 : ℚ), (-74128267667/200000000000 : ℚ), 3⟩,
    ⟨(17823294691/62500000000 : ℚ), (8985766503/10000000000 : ℚ), (-140271239157/500000000000 : ℚ), 3⟩,
    ⟨(58366769349/200000000000 : ℚ), (6522014997/10000000000 : ℚ), (-209500792293/1000000000000 : ℚ), 3⟩,
    ⟨(149330479927/500000000000 : ℚ), (4589040859/10000000000 : ℚ), (-152458120343/1000000000000 : ℚ), 3⟩,
    ⟨(152794152777/500000000000 : ℚ), (1524362283/5000000000 : ℚ), (-26485441311/250000000000 : ℚ), 3⟩,
    ⟨(78137292429/250000000000 : ℚ), (1804679729/10000000000 : ℚ), (-13501437139/200000000000 : ℚ), 3⟩,
    ⟨(63895303083/200000000000 : ℚ), (788222763/10000000000 : ℚ), (-35396810991/1000000000000 : ℚ), 3⟩,
    ⟨(13052145141/40000000000 : ℚ), (-50472039/10000000000 : ℚ), (-8324214183/1000000000000 : ℚ), 3⟩,
    ⟨(166482380107/500000000000 : ℚ), (-748107253/10000000000 : ℚ), (14666389201/1000000000000 : ℚ), 2⟩,
    ⟨(339395760143/1000000000000 : ℚ), (-333018287/2500000000 : ℚ), (3429395909/100000000000 : ℚ), 2⟩,
    ⟨(172767347133/500000000000 : ℚ), (-227879443/1250000000 : ℚ), (51104714873/1000000000000 : ℚ), 2⟩,
    ⟨(351322441293/1000000000000 : ℚ), (-223672723/1000000000 : ℚ), (6551681487/100000000000 : ℚ), 2⟩,
    ⟨(71340652411/200000000000 : ℚ), (-1292604641/5000000000 : ℚ), (77852089597/1000000000000 : ℚ), 2⟩,
    ⟨(361625336307/1000000000000 : ℚ), (-179860779/625000000 : ℚ), (44179479733/500000000000 : ℚ), 2⟩,
    ⟨(45755157723/125000000000 : ℚ), (-780397423/2500000000 : ℚ), (97229232649/1000000000000 : ℚ), 2⟩,
    ⟨(369908510709/1000000000000 : ℚ), (-3322193179/10000000000 : ℚ), (104610569161/1000000000000 : ℚ), 2⟩,
    ⟨(373189839361/1000000000000 : ℚ), (-348382583/1000000000 : ℚ), (55307905673/500000000000 : ℚ), 2⟩,
    ⟨(375853646751/1000000000000 : ℚ), (-721940127/2000000000 : ℚ), (57664997103/500000000000 : ℚ), 2⟩,
    ⟨(188937139479/500000000000 : ℚ), (-92554779/250000000 : ℚ), (118815586613/1000000000000 : ℚ), 2⟩,
    ⟨(379232276189/1000000000000 : ℚ), (-940742251/2500000000 : ℚ), (12111633949/100000000000 : ℚ), 2⟩,
    ⟨(94978640047/250000000000 : ℚ), (-3793098967/10000000000 : ℚ), (24451998259/200000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3796853213/10000000000 : ℚ), (1912541197/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (351688102677/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control404.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control404.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate404

namespace DiagonalRamsey.JointInheritedCertificate405
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(126085482133/500000000000 : ℚ), (13057529816067/10000000000 : ℚ), (-329944508712913/1000000000000 : ℚ), 12⟩,
    ⟨(252882372501/1000000000000 : ℚ), (285095458347/2000000000 : ℚ), (-1823281713479/50000000000 : ℚ), 9⟩,
    ⟨(254298337721/1000000000000 : ℚ), (249391961747/5000000000 : ℚ), (-3246791837257/250000000000 : ℚ), 7⟩,
    ⟨(128202611703/500000000000 : ℚ), (245225732743/10000000000 : ℚ), (-1303681914179/200000000000 : ℚ), 6⟩,
    ⟨(32397842387/125000000000 : ℚ), (141862336981/10000000000 : ℚ), (-1928071369823/500000000000 : ℚ), 5⟩,
    ⟨(262604135797/1000000000000 : ℚ), (450767359/50000000 : ℚ), (-2508264348989/1000000000000 : ℚ), 5⟩,
    ⟨(266636463587/1000000000000 : ℚ), (3041167229/500000000 : ℚ), (-346556186489/200000000000 : ℚ), 5⟩,
    ⟨(135620444473/500000000000 : ℚ), (8541568747/2000000000 : ℚ), (-124597714819/100000000000 : ℚ), 4⟩,
    ⟨(13818653437/50000000000 : ℚ), (7701792267/2500000000 : ℚ), (-460189034119/500000000000 : ℚ), 4⟩,
    ⟨(281983577273/1000000000000 : ℚ), (22614326941/10000000000 : ℚ), (-691817324177/1000000000000 : ℚ), 4⟩,
    ⟨(288018382281/1000000000000 : ℚ), (16762112609/10000000000 : ℚ), (-525141924393/1000000000000 : ℚ), 3⟩,
    ⟨(73604841323/250000000000 : ℚ), (498195933/400000000 : ℚ), (-399786974693/1000000000000 : ℚ), 3⟩,
    ⟨(15056244067/50000000000 : ℚ), (2301285747/2500000000 : ℚ), (-151537366551/500000000000 : ℚ), 3⟩,
    ⟨(308070352641/1000000000000 : ℚ), (3350644423/5000000000 : ℚ), (-226848594877/1000000000000 : ℚ), 3⟩,
    ⟨(31518889051/100000000000 : ℚ), (4737211047/10000000000 : ℚ), (-165671684529/1000000000000 : ℚ), 3⟩,
    ⟨(161205969767/500000000000 : ℚ), (634503803/2000000000 : ℚ), (-115810867359/1000000000000 : ℚ), 3⟩,
    ⟨(82417484451/250000000000 : ℚ), (954607333/5000000000 : ℚ), (-9329729943/125000000000 : ℚ), 3⟩,
    ⟨(84223246707/250000000000 : ℚ), (877444179/10000000000 : ℚ), (-1610499231/40000000000 : ℚ), 3⟩,
    ⟨(344011524697/1000000000000 : ℚ), (6628807/2500000000 : ℚ), (-1130092821/100000000000 : ℚ), 3⟩,
    ⟨(175478497999/500000000000 : ℚ), (-170231873/2500000000 : ℚ), (13275397051/1000000000000 : ℚ), 2⟩,
    ⟨(178831256023/500000000000 : ℚ), (-1272772981/10000000000 : ℚ), (34240591427/1000000000000 : ℚ), 2⟩,
    ⟨(364063495057/1000000000000 : ℚ), (-885036343/5000000000 : ℚ), (13045778757/250000000000 : ℚ), 2⟩,
    ⟨(74019660013/200000000000 : ℚ), (-1094430201/5000000000 : ℚ), (33776891579/500000000000 : ℚ), 2⟩,
    ⟨(187854404299/500000000000 : ℚ), (-317679223/1250000000 : ℚ), (10087480487/125000000000 : ℚ), 2⟩,
    ⟨(47605123549/125000000000 : ℚ), (-1418635163/5000000000 : ℚ), (45944791969/500000000000 : ℚ), 2⟩,
    ⟨(385445413751/1000000000000 : ℚ), (-38546131/125000000 : ℚ), (20266071549/200000000000 : ℚ), 2⟩,
    ⟨(389477741541/1000000000000 : ℚ), (-3286342711/10000000000 : ℚ), (27295490619/250000000000 : ℚ), 2⟩,
    ⟨(196449569121/500000000000 : ℚ), (-344956081/1000000000 : ℚ), (23113329523/200000000000 : ℚ), 2⟩,
    ⟨(98919163483/250000000000 : ℚ), (-3576627743/10000000000 : ℚ), (120576634477/1000000000000 : ℚ), 2⟩,
    ⟨(397783539617/1000000000000 : ℚ), (-3669969483/10000000000 : ℚ), (24855947489/200000000000 : ℚ), 2⟩,
    ⟨(399199504837/1000000000000 : ℚ), (-186564747/500000000 : ℚ), (126723491869/1000000000000 : ℚ), 2⟩,
    ⟨(24994432067/62500000000 : ℚ), (-1880846429/5000000000 : ℚ), (127938054909/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1882740163/5000000000 : ℚ), (128089536729/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (34108342643/100000000000 : ℚ)
  μ := (2/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control405.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control405.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate405

namespace DiagonalRamsey.JointInheritedCertificate406
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133176216217/500000000000 : ℚ), (2654030010549/2000000000 : ℚ), (-354163913333383/1000000000000 : ℚ), 12⟩,
    ⟨(133545920803/500000000000 : ℚ), (724489744867/5000000000 : ℚ), (-39143306669111/1000000000000 : ℚ), 9⟩,
    ⟨(134281769517/500000000000 : ℚ), (507157794297/10000000000 : ℚ), (-13941511693149/1000000000000 : ℚ), 7⟩,
    ⟨(270753351469/1000000000000 : ℚ), (249432996327/10000000000 : ℚ), (-6997972837527/1000000000000 : ℚ), 6⟩,
    ⟨(273640189819/1000000000000 : ℚ), (5774259617/400000000 : ℚ), (-4140337842429/1000000000000 : ℚ), 6⟩,
    ⟨(138598126127/500000000000 : ℚ), (91782056767/10000000000 : ℚ), (-1346790184537/500000000000 : ℚ), 5⟩,
    ⟨(281387291947/1000000000000 : ℚ), (30977858189/5000000000 : ℚ), (-372248683251/200000000000 : ℚ), 5⟩,
    ⟨(17885809181/62500000000 : ℚ), (21765240793/5000000000 : ℚ), (-1338786256749/1000000000000 : ℚ), 4⟩,
    ⟨(291507128627/1000000000000 : ℚ), (3928044211/1250000000 : ℚ), (-989376738249/1000000000000 : ℚ), 4⟩,
    ⟨(148669233027/500000000000 : ℚ), (11544466931/5000000000 : ℚ), (-372069046719/500000000000 : ℚ), 4⟩,
    ⟨(303610800211/1000000000000 : ℚ), (3426861363/2000000000 : ℚ), (-70667054421/125000000000 : ℚ), 3⟩,
    ⟨(31026372509/100000000000 : ℚ), (12751534291/10000000000 : ℚ), (-215448318581/500000000000 : ℚ), 3⟩,
    ⟨(317233169387/1000000000000 : ℚ), (4722423757/5000000000 : ℚ), (-163604762541/500000000000 : ℚ), 3⟩,
    ⟨(64890402709/200000000000 : ℚ), (862171943/1250000000 : ℚ), (-245518794023/1000000000000 : ℚ), 3⟩,
    ⟨(331850736149/1000000000000 : ℚ), (2449717267/5000000000 : ℚ), (-179987377433/1000000000000 : ℚ), 3⟩,
    ⟨(169679041727/500000000000 : ℚ), (3308174779/10000000000 : ℚ), (-63303445409/500000000000 : ℚ), 3⟩,
    ⟨(173450877801/500000000000 : ℚ), (31622707/156250000 : ℚ), (-41277385687/500000000000 : ℚ), 3⟩,
    ⟨(354409102907/1000000000000 : ℚ), (243837313/2500000000 : ℚ), (-45800731953/1000000000000 : ℚ), 3⟩,
    ⟨(36180782551/100000000000 : ℚ), (111032333/10000000000 : ℚ), (-14857828393/1000000000000 : ℚ), 3⟩,
    ⟨(92256667417/250000000000 : ℚ), (-121431883/2000000000 : ℚ), (568978771/50000000000 : ℚ), 2⟩,
    ⟨(187998056983/500000000000 : ℚ), (-1207654947/10000000000 : ℚ), (33743985317/1000000000000 : ℚ), 2⟩,
    ⟨(76529807769/200000000000 : ℚ), (-1711923303/10000000000 : ℚ), (52868651207/1000000000000 : ℚ), 2⟩,
    ⟨(388921373001/1000000000000 : ℚ), (-2136324343/10000000000 : ℚ), (69239054431/1000000000000 : ℚ), 2⟩,
    ⟨(394752710429/1000000000000 : ℚ), (-77919129/312500000 : ℚ), (650230157/7812500000 : ℚ), 2⟩,
    ⟨(625135769/1562500000 : ℚ), (-349108331/1250000000 : ℚ), (3805172073/40000000000 : ℚ), 2⟩,
    ⟨(404872547109/1000000000000 : ℚ), (-3042168467/10000000000 : ℚ), (21032501851/200000000000 : ℚ), 2⟩,
    ⟨(204531793401/500000000000 : ℚ), (-405886539/1250000000 : ℚ), (22700368323/200000000000 : ℚ), 2⟩,
    ⟨(103154912309/250000000000 : ℚ), (-136482831/400000000 : ℚ), (60139806197/500000000000 : ℚ), 2⟩,
    ⟨(415506487587/1000000000000 : ℚ), (-3540462953/10000000000 : ℚ), (3139893583/25000000000 : ℚ), 2⟩,
    ⟨(417696300021/1000000000000 : ℚ), (-3634751893/10000000000 : ℚ), (2023809161/15625000000 : ℚ), 2⟩,
    ⟨(8383359949/20000000000 : ℚ), (-739337431/2000000000 : ℚ), (132115342939/1000000000000 : ℚ), 2⟩,
    ⟨(209953703311/500000000000 : ℚ), (-1863691797/5000000000 : ℚ), (66701586281/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1865604041/5000000000 : ℚ), (16695472921/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (66071008287/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control406.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control406.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate406

namespace DiagonalRamsey.JointInheritedCertificate447
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(34408862501/125000000000 : ℚ), (13251404288789/10000000000 : ℚ), (-182743787572439/500000000000 : ℚ), 12⟩,
    ⟨(55203102783/200000000000 : ℚ), (90458010807/625000000 : ℚ), (-40393955413569/1000000000000 : ℚ), 9⟩,
    ⟨(277497570691/1000000000000 : ℚ), (253385141519/5000000000 : ℚ), (-1798290836943/125000000000 : ℚ), 7⟩,
    ⟨(139851398659/500000000000 : ℚ), (249347331577/10000000000 : ℚ), (-7220782103139/1000000000000 : ℚ), 6⟩,
    ⟨(282609956259/1000000000000 : ℚ), (36092430919/2500000000 : ℚ), (-213589897853/50000000000 : ℚ), 6⟩,
    ⟨(286191049983/1000000000000 : ℚ), (18366006729/2000000000 : ℚ), (-347351522971/125000000000 : ℚ), 5⟩,
    ⟨(290411590601/1000000000000 : ℚ), (62013869329/10000000000 : ℚ), (-383980137081/200000000000 : ℚ), 5⟩,
    ⟨(295230931999/1000000000000 : ℚ), (2179427117/500000000 : ℚ), (-690392484839/500000000000 : ℚ), 4⟩,
    ⟨(150301330643/500000000000 : ℚ), (15739006183/5000000000 : ℚ), (-510128813493/500000000000 : ℚ), 4⟩,
    ⟨(30647504577/100000000000 : ℚ), (11568295729/5000000000 : ℚ), (-767239428493/1000000000000 : ℚ), 4⟩,
    ⟨(312791531181/1000000000000 : ℚ), (17175656643/10000000000 : ℚ), (-145697423187/250000000000 : ℚ), 3⟩,
    ⟨(319491286309/1000000000000 : ℚ), (12786889187/10000000000 : ℚ), (-222063518689/500000000000 : ℚ), 3⟩,
    ⟨(81627447213/250000000000 : ℚ), (2368700399/2500000000 : ℚ), (-168603287133/500000000000 : ℚ), 3⟩,
    ⟨(333779446793/1000000000000 : ℚ), (3461313831/5000000000 : ℚ), (-126495649999/500000000000 : ℚ), 3⟩,
    ⟨(341230249351/1000000000000 : ℚ), (984138919/2000000000 : ℚ), (-185456649163/1000000000000 : ℚ), 3⟩,
    ⟨(13951617649/40000000000 : ℚ), (3326114591/10000000000 : ℚ), (-65232542799/500000000000 : ℚ), 3⟩,
    ⟨(71277442727/200000000000 : ℚ), (2039082131/10000000000 : ℚ), (-85102708427/1000000000000 : ℚ), 3⟩,
    ⟨(363947405509/1000000000000 : ℚ), (988403789/10000000000 : ℚ), (-47273148611/1000000000000 : ℚ), 3⟩,
    ⟨(92849552017/250000000000 : ℚ), (122374267/10000000000 : ℚ), (-15440702767/1000000000000 : ℚ), 3⟩,
    ⟨(47333483251/125000000000 : ℚ), (-29857029/500000000 : ℚ), (5768427201/500000000000 : ℚ), 3⟩,
    ⟨(385686368551/1000000000000 : ℚ), (-299659181/2500000000 : ℚ), (34519879929/1000000000000 : ℚ), 2⟩,
    ⟨(392386123679/1000000000000 : ℚ), (-851821821/5000000000 : ℚ), (2708153677/50000000000 : ℚ), 2⟩,
    ⟨(39870260909/100000000000 : ℚ), (-2128574479/10000000000 : ℚ), (2217768371/31250000000 : ℚ), 2⟩,
    ⟨(16182999743/40000000000 : ℚ), (-2486029357/10000000000 : ℚ), (85323729449/1000000000000 : ℚ), 2⟩,
    ⟨(409946722861/1000000000000 : ℚ), (-174107959/625000000 : ℚ), (48764085143/500000000000 : ℚ), 2⟩,
    ⟨(414766064259/1000000000000 : ℚ), (-758795387/2500000000 : ℚ), (107813881497/1000000000000 : ℚ), 2⟩,
    ⟨(418986604877/1000000000000 : ℚ), (-3240193263/10000000000 : ℚ), (58179958317/500000000000 : ℚ), 2⟩,
    ⟨(422567698601/1000000000000 : ℚ), (-3405216291/10000000000 : ℚ), (3082586877/25000000000 : ℚ), 2⟩,
    ⟨(212737428771/500000000000 : ℚ), (-3533626213/10000000000 : ℚ), (128748212851/1000000000000 : ℚ), 2⟩,
    ⟨(427680084169/1000000000000 : ℚ), (-3627918427/10000000000 : ℚ), (16596307299/125000000000 : ℚ), 2⟩,
    ⟨(85832428189/200000000000 : ℚ), (-1844925623/5000000000 : ℚ), (27084755427/200000000000 : ℚ), 2⟩,
    ⟨(107476688713/250000000000 : ℚ), (-3720545107/10000000000 : ℚ), (136742182457/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-372436921/1000000000 : ℚ), (5476264043/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (33445764887/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control447.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control447.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate447

namespace DiagonalRamsey.JointInheritedCertificate448
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(282475499961/1000000000000 : ℚ), (3339299359157/2500000000 : ℚ), (-189021104501321/500000000000 : ℚ), 12⟩,
    ⟨(70808391593/250000000000 : ℚ), (58360845173/400000000 : ℚ), (-10445472208161/250000000000 : ℚ), 9⟩,
    ⟨(1423711993/5000000000 : ℚ), (255467886689/5000000000 : ℚ), (-14880930877967/1000000000000 : ℚ), 7⟩,
    ⟨(57397493153/200000000000 : ℚ), (10057584389/400000000 : ℚ), (-7469273377019/1000000000000 : ℚ), 6⟩,
    ⟨(72486786661/250000000000 : ℚ), (29121915807/2000000000 : ℚ), (-441901762687/100000000000 : ℚ), 6⟩,
    ⟨(73398234473/250000000000 : ℚ), (23159794051/2500000000 : ℚ), (-574955677459/200000000000 : ℚ), 5⟩,
    ⟨(148944864273/500000000000 : ℚ), (62576077553/10000000000 : ℚ), (-79455960581/40000000000 : ℚ), 5⟩,
    ⟨(302796138163/1000000000000 : ℚ), (43996601727/10000000000 : ℚ), (-1428805646011/1000000000000 : ℚ), 4⟩,
    ⟨(308264915337/1000000000000 : ℚ), (1589190497/500000000 : ℚ), (-1055940306619/1000000000000 : ℚ), 4⟩,
    ⟨(314243392753/1000000000000 : ℚ), (23371413379/10000000000 : ℚ), (-99285249357/125000000000 : ℚ), 4⟩,
    ⟨(320673994407/1000000000000 : ℚ), (8679745023/5000000000 : ℚ), (-3772200821/6250000000 : ℚ), 3⟩,
    ⟨(327494790089/1000000000000 : ℚ), (6466549609/5000000000 : ℚ), (-115046608129/250000000000 : ℚ), 3⟩,
    ⟨(334640091807/1000000000000 : ℚ), (4796330153/5000000000 : ℚ), (-69931427429/200000000000 : ℚ), 3⟩,
    ⟨(342041086401/1000000000000 : ℚ), (438672747/625000000 : ℚ), (-65654080233/250000000000 : ℚ), 3⟩,
    ⟨(174813249123/500000000000 : ℚ), (2499983419/5000000000 : ℚ), (-3012998593/15625000000 : ℚ), 3⟩,
    ⟨(2233270473/6250000000 : ℚ), (1696078837/5000000000 : ℚ), (-8501476083/62500000000 : ℚ), 3⟩,
    ⟨(5704020227/15625000000 : ℚ), (1047331307/5000000000 : ℚ), (-2786773989/31250000000 : ℚ), 3⟩,
    ⟨(186377035981/500000000000 : ℚ), (1035657599/10000000000 : ℚ), (-12530562531/250000000000 : ℚ), 3⟩,
    ⟨(11885608869/31250000000 : ℚ), (162970121/10000000000 : ℚ), (-3454167707/200000000000 : ℚ), 3⟩,
    ⟨(387740478401/1000000000000 : ℚ), (-561886097/10000000000 : ℚ), (1055972961/100000000000 : ℚ), 3⟩,
    ⟨(9872144503/25000000000 : ℚ), (-46707053/400000000 : ℚ), (34260184277/1000000000000 : ℚ), 2⟩,
    ⟨(401706575801/1000000000000 : ℚ), (-1676138511/10000000000 : ℚ), (13627134749/250000000000 : ℚ), 2⟩,
    ⟨(81627435491/200000000000 : ℚ), (-2103848749/10000000000 : ℚ), (35912505433/500000000000 : ℚ), 2⟩,
    ⟨(414115654871/1000000000000 : ℚ), (-2463535441/10000000000 : ℚ), (2165275063/25000000000 : ℚ), 2⟩,
    ⟨(83916886409/200000000000 : ℚ), (-2765019079/10000000000 : ℚ), (99177234183/1000000000000 : ℚ), 2⟩,
    ⟨(212245420831/500000000000 : ℚ), (-753973263/2500000000 : ℚ), (109764348573/1000000000000 : ℚ), 2⟩,
    ⟨(107196908079/250000000000 : ℚ), (-3222022021/10000000000 : ℚ), (59279094791/500000000000 : ℚ), 2⟩,
    ⟨(108108355891/250000000000 : ℚ), (-3387909409/10000000000 : ℚ), (125701235157/1000000000000 : ℚ), 2⟩,
    ⟨(435393104443/1000000000000 : ℚ), (-1758484531/5000000000 : ℚ), (131301185339/1000000000000 : ℚ), 2⟩,
    ⟨(54704771451/125000000000 : ℚ), (-3611725069/10000000000 : ℚ), (27087476801/200000000000 : ℚ), 2⟩,
    ⟨(109786750959/250000000000 : ℚ), (-3673956189/10000000000 : ℚ), (138165535811/1000000000000 : ℚ), 2⟩,
    ⟨(439905070247/1000000000000 : ℚ), (-3704795991/10000000000 : ℚ), (69760511813/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3708638187/10000000000 : ℚ), (139690062007/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (328963628883/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control448.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control448.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate448

namespace DiagonalRamsey.JointInheritedCertificate449
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289773900541/1000000000000 : ℚ), (6735787828623/5000000000 : ℚ), (-24445293467451/62500000000 : ℚ), 12⟩,
    ⟨(290544968051/1000000000000 : ℚ), (367916295277/2500000000 : ℚ), (-10807081894673/250000000000 : ℚ), 9⟩,
    ⟨(292079677271/1000000000000 : ℚ), (515441649179/10000000000 : ℚ), (-3079298600407/200000000000 : ℚ), 7⟩,
    ⟨(18397703007/62500000000 : ℚ), (126852022227/5000000000 : ℚ), (-3864189457123/500000000000 : ℚ), 6⟩,
    ⟨(297373688537/1000000000000 : ℚ), (146952392137/10000000000 : ℚ), (-2286298023521/500000000000 : ℚ), 6⟩,
    ⟨(7527050159/25000000000 : ℚ), (93516280821/10000000000 : ℚ), (-594990087183/200000000000 : ℚ), 5⟩,
    ⟨(305452488453/1000000000000 : ℚ), (31593076713/5000000000 : ℚ), (-2055866237061/1000000000000 : ℚ), 5⟩,
    ⟨(62088608937/200000000000 : ℚ), (8887990937/2000000000 : ℚ), (-92438779529/62500000000 : ℚ), 4⟩,
    ⟨(316005613271/1000000000000 : ℚ), (32116530501/10000000000 : ℚ), (-1093300722559/1000000000000 : ℚ), 4⟩,
    ⟨(161043311817/500000000000 : ℚ), (5906830269/2500000000 : ℚ), (-411320788019/500000000000 : ℚ), 4⟩,
    ⟨(64185061/195312500 : ℚ), (8780094949/5000000000 : ℚ), (-156342578171/250000000000 : ℚ), 3⟩,
    ⟨(83891321749/250000000000 : ℚ), (13093038179/10000000000 : ℚ), (-238553414381/500000000000 : ℚ), 3⟩,
    ⟨(3428331331/10000000000 : ℚ), (607616329/625000000 : ℚ), (-566906527/1562500000 : ℚ), 3⟩,
    ⟨(350361057299/1000000000000 : ℚ), (7124393257/10000000000 : ℚ), (-34104803063/125000000000 : ℚ), 3⟩,
    ⟨(35807656157/100000000000 : ℚ), (1271819409/2500000000 : ℚ), (-25089155183/125000000000 : ℚ), 3⟩,
    ⟨(365905341387/1000000000000 : ℚ), (433135157/1250000000 : ℚ), (-7100778107/50000000000 : ℚ), 3⟩,
    ⟨(186886000661/500000000000 : ℚ), (2156192303/10000000000 : ℚ), (-9362566841/100000000000 : ℚ), 3⟩,
    ⟨(19080039057/50000000000 : ℚ), (68006603/625000000 : ℚ), (-13324653613/250000000000 : ℚ), 3⟩,
    ⟨(38931628541/100000000000 : ℚ), (208144299/10000000000 : ℚ), (-4847340411/250000000000 : ℚ), 3⟩,
    ⟨(39684420961/100000000000 : ℚ), (-522558173/10000000000 : ℚ), (9326115077/1000000000000 : ℚ), 3⟩,
    ⟨(404112055713/1000000000000 : ℚ), (-113305773/1000000000 : ℚ), (16885120489/500000000000 : ℚ), 2⟩,
    ⟨(411049830389/1000000000000 : ℚ), (-164531733/1000000000 : ℚ), (27322685251/500000000000 : ℚ), 2⟩,
    ⟨(104397679769/250000000000 : ℚ), (-519022239/2500000000 : ℚ), (9061324237/125000000000 : ℚ), 2⟩,
    ⟨(423671729439/1000000000000 : ℚ), (-2438239489/10000000000 : ℚ), (43861025833/500000000000 : ℚ), 2⟩,
    ⟨(53654287253/125000000000 : ℚ), (-2741698941/10000000000 : ℚ), (5033101289/50000000000 : ℚ), 2⟩,
    ⟨(27139053391/62500000000 : ℚ), (-1497073711/5000000000 : ℚ), (892481939/8000000000 : ℚ), 2⟩,
    ⟨(438595336349/1000000000000 : ℚ), (-3201518079/10000000000 : ℚ), (24121933157/200000000000 : ℚ), 2⟩,
    ⟨(442303654173/1000000000000 : ℚ), (-3368368003/10000000000 : ℚ), (127958315713/1000000000000 : ℚ), 2⟩,
    ⟨(222657047299/500000000000 : ℚ), (-1749076223/5000000000 : ℚ), (33429535461/250000000000 : ℚ), 2⟩,
    ⟨(223798832719/500000000000 : ℚ), (-359342657/1000000000 : ℚ), (27594332109/200000000000 : ℚ), 2⟩,
    ⟨(224566187329/500000000000 : ℚ), (-3655991289/10000000000 : ℚ), (140776828929/1000000000000 : ℚ), 2⟩,
    ⟨(449903442169/1000000000000 : ℚ), (-368699441/1000000000 : ℚ), (71085236467/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3690856859/10000000000 : ℚ), (142344264479/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (161709637009/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control449.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control449.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate449

namespace DiagonalRamsey.JointInheritedCertificate450
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(119921664157/500000000000 : ℚ), (12745060854191/10000000000 : ℚ), (-306302836667011/1000000000000 : ℚ), 12⟩,
    ⟨(240517814283/1000000000000 : ℚ), (86960092259/625000000 : ℚ), (-33851005902051/1000000000000 : ℚ), 9⟩,
    ⟨(241860290553/1000000000000 : ℚ), (486831065637/10000000000 : ℚ), (-12054696018941/1000000000000 : ℚ), 7⟩,
    ⟨(121928914171/500000000000 : ℚ), (9573228303/400000000 : ℚ), (-6049381708187/1000000000000 : ℚ), 6⟩,
    ⟨(246491190271/1000000000000 : ℚ), (34608197009/2500000000 : ℚ), (-3577823820257/1000000000000 : ℚ), 6⟩,
    ⟨(31216876953/125000000000 : ℚ), (87954396277/10000000000 : ℚ), (-145404586827/62500000000 : ℚ), 5⟩,
    ⟨(25355806459/100000000000 : ℚ), (59319920101/10000000000 : ℚ), (-803249730557/500000000000 : ℚ), 5⟩,
    ⟨(128961759559/500000000000 : ℚ), (4163218189/1000000000 : ℚ), (-1154514734573/1000000000000 : ℚ), 4⟩,
    ⟨(262789337493/1000000000000 : ℚ), (6002178547/2000000000 : ℚ), (-426089053777/500000000000 : ℚ), 4⟩,
    ⟨(134054329613/500000000000 : ℚ), (4401793729/2000000000 : ℚ), (-127984231153/200000000000 : ℚ), 4⟩,
    ⟨(273830256339/1000000000000 : ℚ), (16291870363/10000000000 : ℚ), (-485110110653/1000000000000 : ℚ), 4⟩,
    ⟨(11195961069/40000000000 : ℚ), (12082977383/10000000000 : ℚ), (-184327057369/500000000000 : ℚ), 3⟩,
    ⟨(35782065601/125000000000 : ℚ), (8906396239/10000000000 : ℚ), (-34848048193/125000000000 : ℚ), 3⟩,
    ⟨(146420762203/500000000000 : ℚ), (6458014381/10000000000 : ℚ), (-25991171523/125000000000 : ℚ), 3⟩,
    ⟨(299590608373/1000000000000 : ℚ), (9073271/20000000 : ℚ), (-75521210799/500000000000 : ℚ), 3⟩,
    ⟨(306438779341/1000000000000 : ℚ), (3005229301/10000000000 : ℚ), (-13082323827/125000000000 : ℚ), 3⟩,
    ⟨(313320085679/1000000000000 : ℚ), (1768147241/10000000000 : ℚ), (-66338653011/1000000000000 : ℚ), 3⟩,
    ⟨(320168256647/1000000000000 : ℚ), (757214533/10000000000 : ℚ), (-4291090821/125000000000 : ℚ), 3⟩,
    ⟨(163458670307/500000000000 : ℚ), (-7703823/1000000000 : ℚ), (-1836241281/250000000000 : ℚ), 3⟩,
    ⟨(333502340211/1000000000000 : ℚ), (-4819129/62500000 : ℚ), (7783299889/500000000000 : ℚ), 3⟩,
    ⟨(67971967659/200000000000 : ℚ), (-676030507/5000000000 : ℚ), (702472901/20000000000 : ℚ), 2⟩,
    ⟨(345928608681/1000000000000 : ℚ), (-1840572663/10000000000 : ℚ), (10374295857/200000000000 : ℚ), 2⟩,
    ⟨(175825102897/500000000000 : ℚ), (-1126115341/5000000000 : ℚ), (13245522081/200000000000 : ℚ), 2⟩,
    ⟨(356969527527/1000000000000 : ℚ), (-1299511611/5000000000 : ℚ), (15702679757/200000000000 : ℚ), 2⟩,
    ⟨(180917672951/500000000000 : ℚ), (-2890185971/10000000000 : ℚ), (3559076797/40000000000 : ℚ), 2⟩,
    ⟨(36620080043/100000000000 : ℚ), (-783212451/2500000000 : ℚ), (19561944571/200000000000 : ℚ), 2⟩,
    ⟨(92505962349/250000000000 : ℚ), (-16662573/50000000 : ℚ), (1314490853/12500000000 : ℚ), 2⟩,
    ⟨(373267674749/1000000000000 : ℚ), (-3493398341/10000000000 : ℚ), (55569121079/500000000000 : ℚ), 2⟩,
    ⟨(375901036677/1000000000000 : ℚ), (-3618694923/10000000000 : ℚ), (115831555579/1000000000000 : ℚ), 2⟩,
    ⟨(377898574467/1000000000000 : ℚ), (-371076359/1000000000 : ℚ), (119301580381/1000000000000 : ℚ), 2⟩,
    ⟨(379241050737/1000000000000 : ℚ), (-3771265693/10000000000 : ℚ), (121591995241/1000000000000 : ℚ), 2⟩,
    ⟨(189957768353/500000000000 : ℚ), (-3801259411/10000000000 : ℚ), (122730490197/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1902498351/5000000000 : ℚ), (61436245737/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (361599718491/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control450.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control450.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate450

namespace DiagonalRamsey.JointInheritedCertificate451
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63470233433/250000000000 : ℚ), (16176303947/12500000 : ℚ), (-329206619583093/1000000000000 : ℚ), 12⟩,
    ⟨(254584112959/1000000000000 : ℚ), (35325582377/250000000 : ℚ), (-36382996452899/1000000000000 : ℚ), 9⟩,
    ⟨(255983699411/1000000000000 : ℚ), (247274146267/5000000000 : ℚ), (-6478475565653/500000000000 : ℚ), 7⟩,
    ⟨(64516553577/250000000000 : ℚ), (48641474933/2000000000 : ℚ), (-6502638278541/1000000000000 : ℚ), 6⟩,
    ⟨(65202900473/250000000000 : ℚ), (17591303627/1250000000 : ℚ), (-3846318766313/1000000000000 : ℚ), 6⟩,
    ⟨(264193422579/1000000000000 : ℚ), (89454246293/10000000000 : ℚ), (-1250727241879/500000000000 : ℚ), 5⟩,
    ⟨(268179107587/1000000000000 : ℚ), (12072488541/2000000000 : ℚ), (-1727708908083/1000000000000 : ℚ), 5⟩,
    ⟨(17045642037/62500000000 : ℚ), (21194636373/5000000000 : ℚ), (-1242000424299/1000000000000 : ℚ), 4⟩,
    ⟨(138901543693/500000000000 : ℚ), (15289339821/5000000000 : ℚ), (-458569471929/500000000000 : ℚ), 4⟩,
    ⟨(28334869799/100000000000 : ℚ), (11222706469/5000000000 : ℚ), (-27564060653/40000000000 : ℚ), 4⟩,
    ⟨(289313697143/1000000000000 : ℚ), (8316999379/5000000000 : ℚ), (-130703425767/250000000000 : ℚ), 4⟩,
    ⟨(3695507983/12500000000 : ℚ), (6177773243/5000000000 : ℚ), (-397756497169/1000000000000 : ℚ), 3⟩,
    ⟨(151134295289/500000000000 : ℚ), (9126577657/10000000000 : ℚ), (-60256067837/200000000000 : ℚ), 3⟩,
    ⟨(77283430539/250000000000 : ℚ), (6638081171/10000000000 : ℚ), (-14077913959/62500000000 : ℚ), 3⟩,
    ⟨(316169918403/1000000000000 : ℚ), (4685579117/10000000000 : ℚ), (-82115161277/500000000000 : ℚ), 3⟩,
    ⟨(64661883381/200000000000 : ℚ), (4890271/15625000 : ℚ), (-114506283043/1000000000000 : ℚ), 3⟩,
    ⟨(165241730193/500000000000 : ℚ), (1873406191/10000000000 : ℚ), (-73451668089/1000000000000 : ℚ), 3⟩,
    ⟨(337622958887/1000000000000 : ℚ), (423566959/5000000000 : ℚ), (-9795036799/250000000000 : ℚ), 3⟩,
    ⟨(68931831027/200000000000 : ℚ), (621657/10000000000 : ℚ), (-5155252721/500000000000 : ℚ), 3⟩,
    ⟨(351524286713/1000000000000 : ℚ), (-351616113/5000000000 : ℚ), (14183976829/1000000000000 : ℚ), 3⟩,
    ⟨(7163044773/20000000000 : ℚ), (-646067179/5000000000 : ℚ), (7015217167/200000000000 : ℚ), 2⟩,
    ⟨(91119795037/250000000000 : ℚ), (-1787003453/10000000000 : ℚ), (52953355019/1000000000000 : ℚ), 2⟩,
    ⟨(3704441793/10000000000 : ℚ), (-1101887757/5000000000 : ℚ), (68265940063/1000000000000 : ℚ), 2⟩,
    ⟨(23499361869/62500000000 : ℚ), (-2554675271/10000000000 : ℚ), (40680307413/500000000000 : ℚ), 2⟩,
    ⟨(381062604699/1000000000000 : ℚ), (-284912519/1000000000 : ℚ), (92505319033/1000000000000 : ℚ), 2⟩,
    ⟨(385613769703/1000000000000 : ℚ), (-773600941/2500000000 : ℚ), (10190714751/100000000000 : ℚ), 2⟩,
    ⟨(48699931839/125000000000 : ℚ), (-3296127217/10000000000 : ℚ), (13715712239/125000000000 : ℚ), 2⟩,
    ⟨(392981275399/1000000000000 : ℚ), (-3458604509/10000000000 : ℚ), (116083063297/1000000000000 : ℚ), 2⟩,
    ⟨(395726662983/1000000000000 : ℚ), (-717019919/2000000000 : ℚ), (118233731/976562500 : ℚ), 2⟩,
    ⟨(397809177879/1000000000000 : ℚ), (-1839012099/5000000000 : ℚ), (24951649337/200000000000 : ℚ), 2⟩,
    ⟨(99802191083/250000000000 : ℚ), (-3739077031/10000000000 : ℚ), (127191244027/1000000000000 : ℚ), 2⟩,
    ⟨(399911943559/1000000000000 : ℚ), (-3769340253/10000000000 : ℚ), (128400440793/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-47163887/125000000 : ℚ), (128551252471/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (350817260999/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control451.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control451.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate451

namespace DiagonalRamsey.JointInheritedCertificate452
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(268092266149/1000000000000 : ℚ), (13145246359989/10000000000 : ℚ), (-353109786465369/1000000000000 : ℚ), 12⟩,
    ⟨(53764660519/200000000000 : ℚ), (287118811967/2000000000 : ℚ), (-19512765436119/500000000000 : ℚ), 9⟩,
    ⟨(54055667041/200000000000 : ℚ), (502589537311/10000000000 : ℚ), (-13898645403381/1000000000000 : ℚ), 7⟩,
    ⟨(272443351221/1000000000000 : ℚ), (123623465757/5000000000 : ℚ), (-6975746845219/1000000000000 : ℚ), 6⟩,
    ⟨(137648750177/500000000000 : ℚ), (71562339793/5000000000 : ℚ), (-4126608391371/1000000000000 : ℚ), 6⟩,
    ⟨(69703323897/250000000000 : ℚ), (45508592393/5000000000 : ℚ), (-2684155124929/1000000000000 : ℚ), 5⟩,
    ⟨(141478438947/500000000000 : ℚ), (61448805377/10000000000 : ℚ), (-1854297709271/1000000000000 : ℚ), 5⟩,
    ⟨(71922085577/250000000000 : ℚ), (5397269899/1250000000 : ℚ), (-53336036573/40000000000 : ℚ), 4⟩,
    ⟨(146481061121/500000000000 : ℚ), (7792561319/2500000000 : ℚ), (-985039544927/1000000000000 : ℚ), 4⟩,
    ⟨(37340928539/125000000000 : ℚ), (2862505947/1250000000 : ℚ), (-370270865589/500000000000 : ℚ), 4⟩,
    ⟨(304928737469/1000000000000 : ℚ), (16990281147/10000000000 : ℚ), (-112457165319/200000000000 : ℚ), 3⟩,
    ⟨(62301265543/200000000000 : ℚ), (6319636057/5000000000 : ℚ), (-428262304623/1000000000000 : ℚ), 3⟩,
    ⟨(159198426631/500000000000 : ℚ), (1871128043/2000000000 : ℚ), (-324902330231/1000000000000 : ℚ), 3⟩,
    ⟨(16276697729/50000000000 : ℚ), (6825271489/10000000000 : ℚ), (-243475420993/1000000000000 : ℚ), 3⟩,
    ⟨(83212224371/250000000000 : ℚ), (4840269729/10000000000 : ℚ), (-178161575219/1000000000000 : ℚ), 3⟩,
    ⟨(170135617537/500000000000 : ℚ), (3258974741/10000000000 : ℚ), (-3124099309/25000000000 : ℚ), 3⟩,
    ⟨(347729486181/1000000000000 : ℚ), (1982452199/10000000000 : ℚ), (-81068040627/1000000000000 : ℚ), 3⟩,
    ⟨(355151823771/1000000000000 : ℚ), (3672427/39062500 : ℚ), (-8889819909/200000000000 : ℚ), 3⟩,
    ⟨(14498670667/40000000000 : ℚ), (80805409/10000000000 : ℚ), (-3406046251/250000000000 : ℚ), 3⟩,
    ⟨(184801933997/500000000000 : ℚ), (-126667307/2000000000 : ℚ), (12509486729/1000000000000 : ℚ), 3⟩,
    ⟨(18824719677/50000000000 : ℚ), (-153813813/1250000000 : ℚ), (34782359907/1000000000000 : ℚ), 2⟩,
    ⟨(383071983787/1000000000000 : ℚ), (-433009259/2500000000 : ℚ), (53826181891/1000000000000 : ℚ), 2⟩,
    ⟨(389273292943/1000000000000 : ℚ), (-538541503/2500000000 : ℚ), (70125327857/1000000000000 : ℚ), 2⟩,
    ⟨(395038599013/1000000000000 : ℚ), (-2509369073/10000000000 : ℚ), (42026619313/500000000000 : ℚ), 2⟩,
    ⟨(400312378947/1000000000000 : ℚ), (-2807263741/10000000000 : ℚ), (95898724103/1000000000000 : ℚ), 2⟩,
    ⟨(405043843361/1000000000000 : ℚ), (-3055282773/10000000000 : ℚ), (827228393/7812500000 : ℚ), 2⟩,
    ⟨(409187425667/1000000000000 : ℚ), (-407395507/1250000000 : ℚ), (14273144187/125000000000 : ℚ), 2⟩,
    ⟨(412703220901/1000000000000 : ℚ), (-13693247/40000000 : ℚ), (24186099817/200000000000 : ℚ), 2⟩,
    ⟨(83111474007/200000000000 : ℚ), (-3551063167/10000000000 : ℚ), (2524419187/20000000000 : ℚ), 2⟩,
    ⟨(8354447721/20000000000 : ℚ), (-1822442503/5000000000 : ℚ), (130129904679/1000000000000 : ℚ), 2⟩,
    ⟨(419177418661/1000000000000 : ℚ), (-1853257569/5000000000 : ℚ), (829430021/6250000000 : ℚ), 2⟩,
    ⟨(209954227553/500000000000 : ℚ), (-1868530433/5000000000 : ℚ), (6699516307/50000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3740866601/10000000000 : ℚ), (26830029919/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (339937549299/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control452.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control452.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate452

namespace DiagonalRamsey.JointInheritedCertificate488
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(277112219449/1000000000000 : ℚ), (13126261635531/10000000000 : ℚ), (-364444898896131/1000000000000 : ℚ), 12⟩,
    ⟨(277847972243/1000000000000 : ℚ), (286783479289/2000000000 : ℚ), (-2517339648107/62500000000 : ℚ), 9⟩,
    ⟨(27931239213/100000000000 : ℚ), (251096882591/5000000000 : ℚ), (-14343900125057/1000000000000 : ℚ), 7⟩,
    ⟨(56298275189/200000000000 : ℚ), (49431541439/2000000000 : ℚ), (-7198772028933/1000000000000 : ℚ), 6⟩,
    ⟨(71090984721/250000000000 : ℚ), (143136280943/10000000000 : ℚ), (-4258193138011/1000000000000 : ℚ), 6⟩,
    ⟨(143951208297/500000000000 : ℚ), (91064497697/10000000000 : ℚ), (-22155729543/8000000000 : ℚ), 5⟩,
    ⟨(146036365801/500000000000 : ℚ), (61506842583/10000000000 : ℚ), (-1913008950603/1000000000000 : ℚ), 5⟩,
    ⟨(296834721493/1000000000000 : ℚ), (43236439261/10000000000 : ℚ), (-171929815619/125000000000 : ℚ), 4⟩,
    ⟨(302142525703/1000000000000 : ℚ), (31224338157/10000000000 : ℚ), (-507975000651/500000000000 : ℚ), 4⟩,
    ⟨(12317801087/40000000000 : ℚ), (22948281131/10000000000 : ℚ), (-763666786319/1000000000000 : ℚ), 4⟩,
    ⟨(314186344647/1000000000000 : ℚ), (4258075403/2500000000 : ℚ), (-72469898461/125000000000 : ℚ), 4⟩,
    ⟨(320806370821/1000000000000 : ℚ), (2535072151/2000000000 : ℚ), (-441510680739/1000000000000 : ℚ), 3⟩,
    ⟨(163870675613/500000000000 : ℚ), (9386369401/10000000000 : ℚ), (-334916250659/1000000000000 : ℚ), 3⟩,
    ⟨(33492449821/100000000000 : ℚ), (171283121/250000000 : ℚ), (-12548220511/50000000000 : ℚ), 3⟩,
    ⟨(17114331707/50000000000 : ℚ), (1215586609/2500000000 : ℚ), (-36729489943/200000000000 : ℚ), 3⟩,
    ⟨(349756857623/1000000000000 : ℚ), (32777391/100000000 : ℚ), (-128839248397/1000000000000 : ℚ), 3⟩,
    ⟨(178631613161/500000000000 : ℚ), (1998508343/10000000000 : ℚ), (-83633788323/1000000000000 : ℚ), 3⟩,
    ⟨(72946689961/200000000000 : ℚ), (119252791/1250000000 : ℚ), (-22970112717/500000000000 : ℚ), 3⟩,
    ⟨(74419117147/200000000000 : ℚ), (46485393/5000000000 : ℚ), (-14226774027/1000000000000 : ℚ), 3⟩,
    ⟨(189639366359/500000000000 : ℚ), (-311249323/5000000000 : ℚ), (12645987821/1000000000000 : ℚ), 3⟩,
    ⟨(386213713123/1000000000000 : ℚ), (-610339163/5000000000 : ℚ), (17768197451/500000000000 : ℚ), 3⟩,
    ⟨(196416869649/500000000000 : ℚ), (-430737193/2500000000 : ℚ), (2754883787/50000000000 : ℚ), 2⟩,
    ⟨(39907505677/100000000000 : ℚ), (-53640321/250000000 : ℚ), (14366180523/200000000000 : ℚ), 2⟩,
    ⟨(202438779121/500000000000 : ℚ), (-125059401/500000000 : ℚ), (43061289131/500000000000 : ℚ), 2⟩,
    ⟨(410185362451/1000000000000 : ℚ), (-2799330779/10000000000 : ℚ), (98271767919/1000000000000 : ℚ), 2⟩,
    ⟨(414947352343/1000000000000 : ℚ), (-3047506331/10000000000 : ℚ), (108509976237/1000000000000 : ℚ), 2⟩,
    ⟨(8382353347/20000000000 : ℚ), (-3251479079/10000000000 : ℚ), (14626986539/125000000000 : ℚ), 2⟩,
    ⟨(422656145061/1000000000000 : ℚ), (-3415674363/10000000000 : ℚ), (30981606873/250000000000 : ℚ), 2⟩,
    ⟨(425528707999/1000000000000 : ℚ), (-885861489/2500000000 : ℚ), (64672504949/500000000000 : ℚ), 2⟩,
    ⟨(85541538363/200000000000 : ℚ), (-1818636451/5000000000 : ℚ), (33336947779/250000000000 : ℚ), 2⟩,
    ⟨(429172111701/1000000000000 : ℚ), (-462362727/1250000000 : ℚ), (67994102989/500000000000 : ℚ), 2⟩,
    ⟨(26869241531/62500000000 : ℚ), (-3729445579/10000000000 : ℚ), (68650090517/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1866625503/5000000000 : ℚ), (137463796883/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (172000036409/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control488.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control488.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate488

namespace DiagonalRamsey.JointInheritedCertificate489
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(284400185237/1000000000000 : ℚ), (13236966285391/10000000000 : ℚ), (-15087144998593/40000000000 : ℚ), 12⟩,
    ⟨(285148989347/1000000000000 : ℚ), (1446155767347/10000000000 : ℚ), (-41685271004001/1000000000000 : ℚ), 9⟩,
    ⟨(11465575447/40000000000 : ℚ), (253277687553/5000000000 : ℚ), (-371141806107/25000000000 : ℚ), 7⟩,
    ⟨(18053563899/62500000000 : ℚ), (12467493643/500000000 : ℚ), (-7450922686629/1000000000000 : ℚ), 6⟩,
    ⟨(11671221637/40000000000 : ℚ), (1155491401/80000000 : ℚ), (-1101907131389/250000000000 : ℚ), 6⟩,
    ⟨(73845446679/250000000000 : ℚ), (91913887863/10000000000 : ℚ), (-1433458773369/500000000000 : ℚ), 5⟩,
    ⟨(9363314931/31250000000 : ℚ), (62097775997/10000000000 : ℚ), (-990286246023/500000000000 : ℚ), 5⟩,
    ⟨(304472539311/1000000000000 : ℚ), (272912497/62500000 : ℚ), (-712130609923/500000000000 : ℚ), 4⟩,
    ⟨(309874497197/1000000000000 : ℚ), (31546814113/10000000000 : ℚ), (-526129556619/500000000000 : ℚ), 4⟩,
    ⟨(315779927643/1000000000000 : ℚ), (11598203141/5000000000 : ℚ), (-791213006463/1000000000000 : ℚ), 4⟩,
    ⟨(161065979063/500000000000 : ℚ), (3445397501/2000000000 : ℚ), (-600936243659/1000000000000 : ℚ), 4⟩,
    ⟨(328869415121/1000000000000 : ℚ), (1283059097/1000000000 : ℚ), (-457918242489/1000000000000 : ℚ), 3⟩,
    ⟨(20995463327/62500000000 : ℚ), (380473827/400000000 : ℚ), (-347664231693/1000000000000 : ℚ), 3⟩,
    ⟨(343237980081/1000000000000 : ℚ), (6953984181/10000000000 : ℚ), (-260847367939/1000000000000 : ℚ), 3⟩,
    ⟨(2740083679/7812500000 : ℚ), (4947274109/10000000000 : ℚ), (-38249893679/200000000000 : ℚ), 3⟩,
    ⟨(35833344663/100000000000 : ℚ), (334874093/1000000000 : ℚ), (-134599617057/1000000000000 : ℚ), 3⟩,
    ⟨(11436655273/31250000000 : ℚ), (2058482233/10000000000 : ℚ), (-4394478623/50000000000 : ℚ), 3⟩,
    ⟨(74715140891/200000000000 : ℚ), (1608331/16000000 : ℚ), (-12238674337/250000000000 : ℚ), 3⟩,
    ⟨(76213687057/200000000000 : ℚ), (137116181/10000000000 : ℚ), (-16208903651/1000000000000 : ℚ), 3⟩,
    ⟨(194189501067/500000000000 : ℚ), (-584010289/10000000000 : ℚ), (360245503/31250000000 : ℚ), 3⟩,
    ⟨(79087400049/200000000000 : ℚ), (-593373189/5000000000 : ℚ), (17572370663/500000000000 : ℚ), 3⟩,
    ⟨(10054361431/25000000000 : ℚ), (-1692690509/10000000000 : ℚ), (55318645503/1000000000000 : ℚ), 2⟩,
    ⟨(408526487723/1000000000000 : ℚ), (-529578969/2500000000 : ℚ), (72568981909/1000000000000 : ℚ), 2⟩,
    ⟨(41443191817/100000000000 : ℚ), (-1238137043/5000000000 : ℚ), (1364008891/15625000000 : ℚ), 2⟩,
    ⟨(52479234507/125000000000 : ℚ), (-555265533/2000000000 : ℚ), (99811695449/1000000000000 : ℚ), 2⟩,
    ⟨(212340168787/500000000000 : ℚ), (-756506451/2500000000 : ℚ), (27588669471/250000000000 : ℚ), 2⟩,
    ⟨(8578492573/20000000000 : ℚ), (-3231199213/10000000000 : ℚ), (119111107867/1000000000000 : ℚ), 2⟩,
    ⟨(216262937221/500000000000 : ℚ), (-3396325181/10000000000 : ℚ), (31555816143/250000000000 : ℚ), 2⟩,
    ⟨(435449392983/1000000000000 : ℚ), (-704959511/2000000000 : ℚ), (5271947579/40000000000 : ℚ), 2⟩,
    ⟨(437667029191/1000000000000 : ℚ), (-904781361/2500000000 : ℚ), (2718332051/20000000000 : ℚ), 2⟩,
    ⟨(439157426019/1000000000000 : ℚ), (-736215379/2000000000 : ℚ), (1083067311/7812500000 : ℚ), 2⟩,
    ⟨(439906230129/1000000000000 : ℚ), (-2899827/7812500 : ℚ), (69991024979/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-232225223/625000000 : ℚ), (140150332377/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (67678377013/200000000000 : ℚ)
  μ := (11/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control489.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control489.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate489

namespace DiagonalRamsey.JointInheritedCertificate490
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29171550073/100000000000 : ℚ), (3336860865463/2500000000 : ℚ), (-390103637536013/1000000000000 : ℚ), 12⟩,
    ⟨(14623861227/50000000000 : ℚ), (1458368184607/10000000000 : ℚ), (-43114216483257/1000000000000 : ℚ), 9⟩,
    ⟨(146996668171/500000000000 : ℚ), (102181432459/2000000000 : ℚ), (-15354939879267/1000000000000 : ℚ), 7⟩,
    ⟨(296249235151/1000000000000 : ℚ), (98256507/3906250 : ℚ), (-3853409483353/500000000000 : ℚ), 6⟩,
    ⟨(299223195429/1000000000000 : ℚ), (145733014621/10000000000 : ℚ), (-2279633587607/500000000000 : ℚ), 6⟩,
    ⟨(302886576313/1000000000000 : ℚ), (3710425829/400000000 : ℚ), (-1482896141829/500000000000 : ℚ), 5⟩,
    ⟨(307204097441/1000000000000 : ℚ), (62686605997/10000000000 : ℚ), (-2049111764673/1000000000000 : ℚ), 5⟩,
    ⟨(12485367149/40000000000 : ℚ), (44093786943/10000000000 : ℚ), (-368444924601/250000000000 : ℚ), 4⟩,
    ⟨(79407335197/250000000000 : ℚ), (31867737309/10000000000 : ℚ), (-272269459133/250000000000 : ℚ), 4⟩,
    ⟨(64727332443/200000000000 : ℚ), (23443132581/10000000000 : ℚ), (-163827843893/200000000000 : ℚ), 4⟩,
    ⟨(66019657843/200000000000 : ℚ), (17420386651/10000000000 : ℚ), (-4979198613/8000000000 : ℚ), 4⟩,
    ⟨(33695199279/100000000000 : ℚ), (12984619039/10000000000 : ℚ), (-59317884023/125000000000 : ℚ), 3⟩,
    ⟨(86032942007/250000000000 : ℚ), (602261609/625000000 : ℚ), (-360577052931/1000000000000 : ℚ), 3⟩,
    ⟨(175784234883/500000000000 : ℚ), (7055560297/10000000000 : ℚ), (-16928425773/62500000000 : ℚ), 3⟩,
    ⟨(44898809813/125000000000 : ℚ), (1006232469/2000000000 : ℚ), (-49736127539/250000000000 : ℚ), 3⟩,
    ⟨(366924390129/1000000000000 : ℚ), (2670891/7812500 : ℚ), (-140428235837/1000000000000 : ℚ), 3⟩,
    ⟨(187347861423/500000000000 : ℚ), (1058743059/5000000000 : ℚ), (-46096980979/500000000000 : ℚ), 3⟩,
    ⟨(382429634471/1000000000000 : ℚ), (527725007/5000000000 : ℚ), (-26001060489/500000000000 : ℚ), 3⟩,
    ⟨(390051643209/1000000000000 : ℚ), (180345901/10000000000 : ℚ), (-1138217239/62500000000 : ℚ), 3⟩,
    ⟨(99372086237/250000000000 : ℚ), (-273207099/5000000000 : ℚ), (10399289277/1000000000000 : ℚ), 3⟩,
    ⟨(80933624037/200000000000 : ℚ), (-72105329/625000000 : ℚ), (34750654623/1000000000000 : ℚ), 3⟩,
    ⟨(5144022797/12500000000 : ℚ), (-831641713/5000000000 : ℚ), (55543568411/1000000000000 : ℚ), 2⟩,
    ⟨(417983450761/1000000000000 : ℚ), (-2091852113/10000000000 : ℚ), (36658047127/500000000000 : ℚ), 2⟩,
    ⟨(423990772187/1000000000000 : ℚ), (-306522127/1250000000 : ℚ), (88483614599/1000000000000 : ℚ), 2⟩,
    ⟨(1717943737/4000000000 : ℚ), (-2754126733/10000000000 : ℚ), (101367841831/1000000000000 : ℚ), 2⟩,
    ⟨(217208007767/500000000000 : ℚ), (-1502667233/5000000000 : ℚ), (2805451659/25000000000 : ℚ), 2⟩,
    ⟨(219366768331/500000000000 : ℚ), (-3211697283/10000000000 : ℚ), (121226912861/1000000000000 : ℚ), 2⟩,
    ⟨(221198458773/500000000000 : ℚ), (-3377744471/10000000000 : ℚ), (12854213241/100000000000 : ℚ), 2⟩,
    ⟨(3479459983/7812500000 : ℚ), (-3506909999/10000000000 : ℚ), (67137730887/500000000000 : ℚ), 2⟩,
    ⟨(447626776633/1000000000000 : ℚ), (-1800866539/5000000000 : ℚ), (138509251453/1000000000000 : ℚ), 2⟩,
    ⟨(112285722109/250000000000 : ℚ), (-732800643/2000000000 : ℚ), (7065066773/50000000000 : ℚ), 2⟩,
    ⟨(89980922449/200000000000 : ℚ), (-923715213/2500000000 : ℚ), (570753831/4000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-9246763/25000000 : ℚ), (3571535877/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (83191898217/250000000000 : ℚ)
  μ := (9/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control490.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control490.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate490

namespace DiagonalRamsey.JointInheritedCertificate491
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74764108853/250000000000 : ℚ), (6728768655563/5000000000 : ℚ), (-100803336151903/250000000000 : ℚ), 12⟩,
    ⟨(18739434727/62500000000 : ℚ), (1470537337043/10000000000 : ℚ), (-22281766700509/500000000000 : ℚ), 9⟩,
    ⟨(150686268509/500000000000 : ℚ), (20609715127/400000000 : ℚ), (-991964587841/62500000000 : ℚ), 7⟩,
    ⟨(151833166649/500000000000 : ℚ), (126857430903/5000000000 : ℚ), (-7966320142417/1000000000000 : ℚ), 6⟩,
    ⟨(153345126981/500000000000 : ℚ), (18378012887/1250000000 : ℚ), (-4713021418683/1000000000000 : ℚ), 6⟩,
    ⟨(310415177/1000000000 : ℚ), (18720691939/2000000000 : ℚ), (-1533014803429/500000000000 : ℚ), 5⟩,
    ⟨(157402614683/500000000000 : ℚ), (6327238589/1000000000 : ℚ), (-529645359879/250000000000 : ℚ), 5⟩,
    ⟨(319818132457/1000000000000 : ℚ), (11129770901/2500000000 : ℚ), (-1523958349461/1000000000000 : ℚ), 4⟩,
    ⟨(13016224371/40000000000 : ℚ), (32186542569/10000000000 : ℚ), (-225275413673/200000000000 : ℚ), 4⟩,
    ⟨(66302769873/200000000000 : ℚ), (5922000451/2500000000 : ℚ), (-847420899007/1000000000000 : ℚ), 4⟩,
    ⟨(169042013517/500000000000 : ℚ), (352242371/200000000 : ℚ), (-161032188791/250000000000 : ℚ), 4⟩,
    ⟨(172526433941/500000000000 : ℚ), (6568561333/5000000000 : ℚ), (-245683255847/500000000000 : ℚ), 3⟩,
    ⟨(352353258159/1000000000000 : ℚ), (9759111983/10000000000 : ℚ), (-373638010483/1000000000000 : ℚ), 3⟩,
    ⟨(359914891119/1000000000000 : ℚ), (3577905271/5000000000 : ℚ), (-140485793263/500000000000 : ℚ), 3⟩,
    ⟨(367664944101/1000000000000 : ℚ), (5113796371/10000000000 : ℚ), (-6459958331/31250000000 : ℚ), 3⟩,
    ⟨(187764389929/500000000000 : ℚ), (871886377/2500000000 : ℚ), (-146312220403/1000000000000 : ℚ), 3⟩,
    ⟨(191715332677/500000000000 : ℚ), (2175346197/10000000000 : ℚ), (-96534924509/1000000000000 : ℚ), 3⟩,
    ⟨(391294501111/1000000000000 : ℚ), (110459319/1000000000 : ℚ), (-13767795241/250000000000 : ℚ), 3⟩,
    ⟨(399044554093/1000000000000 : ℚ), (55628527/2500000000 : ℚ), (-5055946177/250000000000 : ℚ), 3⟩,
    ⟨(101651546763/250000000000 : ℚ), (-509845527/10000000000 : ℚ), (2317617663/250000000000 : ℚ), 3⟩,
    ⟨(41390657733/100000000000 : ℚ), (-1121621123/10000000000 : ℚ), (6872773639/200000000000 : ℚ), 3⟩,
    ⟨(420875418177/1000000000000 : ℚ), (-204355753/1250000000 : ℚ), (13945447163/250000000000 : ℚ), 2⟩,
    ⟨(427445595847/1000000000000 : ℚ), (-2066333579/10000000000 : ℚ), (14816249471/200000000000 : ℚ), 2⟩,
    ⟨(433553835937/1000000000000 : ℚ), (-1214501679/5000000000 : ℚ), (89692432229/1000000000000 : ℚ), 2⟩,
    ⟨(87828262551/200000000000 : ℚ), (-2732829911/10000000000 : ℚ), (51474337441/500000000000 : ℚ), 2⟩,
    ⟨(222077107923/500000000000 : ℚ), (-1492765193/5000000000 : ℚ), (57054198851/500000000000 : ℚ), 2⟩,
    ⟨(112136067053/250000000000 : ℚ), (-1596534089/5000000000 : ℚ), (123371386239/1000000000000 : ℚ), 2⟩,
    ⟨(452269191249/1000000000000 : ℚ), (-1680012279/5000000000 : ℚ), (130890965343/1000000000000 : ℚ), 2⟩,
    ⟨(455293111913/1000000000000 : ℚ), (-3489873613/10000000000 : ℚ), (2735662941/20000000000 : ℚ), 2⟩,
    ⟨(228793454097/500000000000 : ℚ), (-179259233/500000000 : ℚ), (28226694721/200000000000 : ℚ), 2⟩,
    ⟨(22956424479/50000000000 : ℚ), (-1823884333/5000000000 : ℚ), (144002044803/1000000000000 : ℚ), 2⟩,
    ⟨(2299515049/5000000000 : ℚ), (-1839389933/5000000000 : ℚ), (145427056447/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3682643253/10000000000 : ℚ), (18200594191/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (163564243/500000000 : ℚ)
  μ := (23/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control491.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control491.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate491

namespace DiagonalRamsey.JointInheritedCertificate492
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1278071561/5000000000 : ℚ), (12820122970171/10000000000 : ℚ), (-1641726750957/5000000000 : ℚ), 12⟩,
    ⟨(128154574883/500000000000 : ℚ), (350019542177/2500000000 : ℚ), (-18143315263947/500000000000 : ℚ), 9⟩,
    ⟨(257692133231/1000000000000 : ℚ), (122534230503/2500000000 : ℚ), (-12921779572603/1000000000000 : ℚ), 7⟩,
    ⟨(25974994371/100000000000 : ℚ), (30137520303/1250000000 : ℚ), (-6484329233331/1000000000000 : ℚ), 6⟩,
    ⟨(131231381681/500000000000 : ℚ), (34886353009/2500000000 : ℚ), (-3834952546711/1000000000000 : ℚ), 6⟩,
    ⟨(265804466251/1000000000000 : ℚ), (44359997167/5000000000 : ℚ), (-498721379577/200000000000 : ℚ), 5⟩,
    ⟨(4214732343/15625000000 : ℚ), (5987690177/1000000000 : ℚ), (-107618118897/62500000000 : ℚ), 5⟩,
    ⟨(274240045483/1000000000000 : ℚ), (21026283047/5000000000 : ℚ), (-618729817881/500000000000 : ℚ), 4⟩,
    ⟨(279252682587/1000000000000 : ℚ), (1896024151/625000000 : ℚ), (-114182304611/125000000000 : ℚ), 4⟩,
    ⟨(71183126707/250000000000 : ℚ), (22265717699/10000000000 : ℚ), (-343015356019/500000000000 : ℚ), 4⟩,
    ⟨(145313372251/500000000000 : ℚ), (8248644801/5000000000 : ℚ), (-520193678767/1000000000000 : ℚ), 4⟩,
    ⟨(296878630879/1000000000000 : ℚ), (24498451/20000000 : ℚ), (-395481876361/1000000000000 : ℚ), 3⟩,
    ⟨(485484731/1600000000 : ℚ), (4521140301/5000000000 : ℚ), (-59855729273/200000000000 : ℚ), 3⟩,
    ⟨(310211648901/1000000000000 : ℚ), (410631303/625000000 : ℚ), (-111733208953/500000000000 : ℚ), 3⟩,
    ⟨(158582188147/500000000000 : ℚ), (2314964581/5000000000 : ℚ), (-2032925473/12500000000 : ℚ), 3⟩,
    ⟨(324219180489/1000000000000 : ℚ), (1541805511/5000000000 : ℚ), (-22613145473/200000000000 : ℚ), 3⟩,
    ⟨(41413514983/125000000000 : ℚ), (1834664769/10000000000 : ℚ), (-14429020611/200000000000 : ℚ), 3⟩,
    ⟨(338362924059/1000000000000 : ℚ), (814283521/10000000000 : ℚ), (-37990338303/1000000000000 : ℚ), 3⟩,
    ⟨(86328912863/250000000000 : ℚ), (-1099639/400000000 : ℚ), (-1152924229/125000000000 : ℚ), 3⟩,
    ⟨(176049671739/500000000000 : ℚ), (-90936519/1250000000 : ℚ), (15180193041/1000000000000 : ℚ), 3⟩,
    ⟨(179324334737/500000000000 : ℚ), (-164154151/1250000000 : ℚ), (35991594253/1000000000000 : ℚ), 3⟩,
    ⟨(364900555851/1000000000000 : ℚ), (-902745803/5000000000 : ℚ), (13449295097/250000000000 : ℚ), 3⟩,
    ⟨(14831791741/40000000000 : ℚ), (-444019787/2000000000 : ℚ), (13809252447/200000000000 : ℚ), 2⟩,
    ⟨(188137308883/500000000000 : ℚ), (-2569201809/10000000000 : ℚ), (82084992531/1000000000000 : ℚ), 2⟩,
    ⟨(38128725487/100000000000 : ℚ), (-2862163571/10000000000 : ℚ), (46590423273/500000000000 : ℚ), 2⟩,
    ⟨(385784430401/1000000000000 : ℚ), (-38827719/125000000 : ℚ), (102540565551/1000000000000 : ℚ), 2⟩,
    ⟨(194861417051/500000000000 : ℚ), (-1653472541/5000000000 : ℚ), (110323472473/1000000000000 : ℚ), 2⟩,
    ⟨(393064536991/1000000000000 : ℚ), (-3468628371/10000000000 : ℚ), (116651443599/1000000000000 : ℚ), 2⟩,
    ⟨(395777356643/1000000000000 : ℚ), (-1797255387/5000000000 : ℚ), (121616404453/1000000000000 : ℚ), 2⟩,
    ⟨(198917583561/500000000000 : ℚ), (-1843494293/5000000000 : ℚ), (25057187741/200000000000 : ℚ), 2⟩,
    ⟨(99804537647/250000000000 : ℚ), (-3747749479/10000000000 : ℚ), (127707409659/1000000000000 : ℚ), 2⟩,
    ⟨(399912988153/1000000000000 : ℚ), (-1888934241/5000000000 : ℚ), (25782171951/200000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3781621243/10000000000 : ℚ), (25812190773/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (14424670237/40000000000 : ℚ)
  μ := (2/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control492.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control492.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate492

namespace DiagonalRamsey.JointInheritedCertificate493
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134959254963/500000000000 : ℚ), (13024314312221/10000000000 : ℚ), (-352231944035749/1000000000000 : ℚ), 12⟩,
    ⟨(16915047363/62500000000 : ℚ), (1422649275309/10000000000 : ℚ), (-7785464773587/200000000000 : ℚ), 9⟩,
    ⟨(27207829793/100000000000 : ℚ), (3892026983/78125000 : ℚ), (-2772562218889/200000000000 : ℚ), 7⟩,
    ⟨(137108642997/500000000000 : ℚ), (122570619413/5000000000 : ℚ), (-6957099701177/1000000000000 : ℚ), 6⟩,
    ⟨(138518561189/500000000000 : ℚ), (35485311933/2500000000 : ℚ), (-4115037703371/1000000000000 : ℚ), 6⟩,
    ⟨(280510650513/1000000000000 : ℚ), (45142260457/5000000000 : ℚ), (-2676170777041/1000000000000 : ℚ), 5⟩,
    ⟨(284604418427/1000000000000 : ℚ), (30482412447/5000000000 : ℚ), (-462095244841/250000000000 : ℚ), 5⟩,
    ⟨(4519984389/15625000000 : ℚ), (8568593613/2000000000 : ℚ), (-33219675711/25000000000 : ℚ), 4⟩,
    ⟨(58897875827/200000000000 : ℚ), (773235307/250000000 : ℚ), (-245325642967/250000000000 : ℚ), 4⟩,
    ⟨(150092687177/500000000000 : ℚ), (22721751139/10000000000 : ℚ), (-737426330169/1000000000000 : ℚ), 4⟩,
    ⟨(76578032751/250000000000 : ℚ), (8427453093/5000000000 : ℚ), (-69953760949/125000000000 : ℚ), 4⟩,
    ⟨(312810645071/1000000000000 : ℚ), (6267109863/5000000000 : ℚ), (-425958900769/1000000000000 : ℚ), 3⟩,
    ⟨(319618332311/1000000000000 : ℚ), (9272546851/10000000000 : ℚ), (-322877472103/1000000000000 : ℚ), 3⟩,
    ⟨(13066785239/40000000000 : ℚ), (6758431919/10000000000 : ℚ), (-241676758003/1000000000000 : ℚ), 3⟩,
    ⟨(166948316601/500000000000 : ℚ), (957140103/2000000000 : ℚ), (-35310178687/200000000000 : ℚ), 3⟩,
    ⟨(341229739009/1000000000000 : ℚ), (160691833/500000000 : ℚ), (-30878151449/250000000000 : ℚ), 3⟩,
    ⟨(17429916329/50000000000 : ℚ), (972341383/5000000000 : ℚ), (-39876945267/500000000000 : ℚ), 3⟩,
    ⟨(88982858097/250000000000 : ℚ), (454107431/5000000000 : ℚ), (-21627322543/500000000000 : ℚ), 3⟩,
    ⟨(72631686923/200000000000 : ℚ), (13393271/2500000000 : ℚ), (-12535128307/1000000000000 : ℚ), 3⟩,
    ⟨(185104866639/500000000000 : ℚ), (-164188857/2500000000 : ℚ), (6752579181/500000000000 : ℚ), 3⟩,
    ⟨(377017420519/1000000000000 : ℚ), (-25016067/200000000 : ℚ), (17847514321/500000000000 : ℚ), 3⟩,
    ⟨(76703186917/200000000000 : ℚ), (-874875081/5000000000 : ℚ), (54665059693/1000000000000 : ℚ), 2⟩,
    ⟨(97410672809/250000000000 : ℚ), (-54243539/250000000 : ℚ), (70898779357/1000000000000 : ℚ), 2⟩,
    ⟨(79067737291/200000000000 : ℚ), (-1261585657/5000000000 : ℚ), (84769007697/1000000000000 : ℚ), 2⟩,
    ⟨(200274532347/500000000000 : ℚ), (-1409799039/5000000000 : ℚ), (96564092581/1000000000000 : ℚ), 2⟩,
    ⟨(405223647163/1000000000000 : ℚ), (-61328193/200000000 : ℚ), (53253566293/500000000000 : ℚ), 2⟩,
    ⟨(102329353769/250000000000 : ℚ), (-3269309339/10000000000 : ℚ), (4590809583/40000000000 : ℚ), 2⟩,
    ⟨(103197735803/250000000000 : ℚ), (-858168663/2500000000 : ℚ), (121485215939/1000000000000 : ℚ), 2⟩,
    ⟨(83122155919/200000000000 : ℚ), (-889955623/2500000000 : ℚ), (12675157947/100000000000 : ℚ), 2⟩,
    ⟨(20887488383/50000000000 : ℚ), (-3653204259/10000000000 : ℚ), (65321283851/500000000000 : ℚ), 2⟩,
    ⟨(209593653891/500000000000 : ℚ), (-1857273439/5000000000 : ℚ), (66604774983/500000000000 : ℚ), 2⟩,
    ⟨(26244347229/62500000000 : ℚ), (-468118823/1250000000 : ℚ), (33621282759/250000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3748738647/10000000000 : ℚ), (26928842511/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (174777933309/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control493.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control493.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate493

namespace DiagonalRamsey.JointInheritedCertificate518
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(278974581701/1000000000000 : ℚ), (12995784100899/10000000000 : ℚ), (-181617194899123/500000000000 : ℚ), 12⟩,
    ⟨(279701372117/1000000000000 : ℚ), (1419915556247/10000000000 : ℚ), (-10035561890561/250000000000 : ℚ), 9⟩,
    ⟨(140573976779/500000000000 : ℚ), (24870284059/500000000 : ℚ), (-7147370824953/500000000000 : ℚ), 7⟩,
    ⟨(8853137333/31250000000 : ℚ), (61215265123/2500000000 : ℚ), (-1434663701881/200000000000 : ℚ), 6⟩,
    ⟨(11445518649/40000000000 : ℚ), (70919412507/5000000000 : ℚ), (-106062468759/25000000000 : ℚ), 6⟩,
    ⟨(289633340901/1000000000000 : ℚ), (1410261017/156250000 : ℚ), (-344839568293/125000000000 : ℚ), 5⟩,
    ⟨(146876428157/500000000000 : ℚ), (60970056651/10000000000 : ℚ), (-238138575297/125000000000 : ℚ), 5⟩,
    ⟨(298456839279/1000000000000 : ℚ), (2143120067/500000000 : ℚ), (-1369331798341/1000000000000 : ℚ), 4⟩,
    ⟨(303699987869/1000000000000 : ℚ), (6190788197/2000000000 : ℚ), (-505524232599/500000000000 : ℚ), 4⟩,
    ⟨(19339487981/62500000000 : ℚ), (1137344239/500000000 : ℚ), (-189904305403/250000000000 : ℚ), 4⟩,
    ⟨(315597098203/1000000000000 : ℚ), (4219622821/2500000000 : ℚ), (-18010537483/31250000000 : ℚ), 4⟩,
    ⟨(322136484271/1000000000000 : ℚ), (12555334649/10000000000 : ℚ), (-21928357987/50000000000 : ℚ), 3⟩,
    ⟨(164493494019/500000000000 : ℚ), (371637191/400000000 : ℚ), (-83087096499/250000000000 : ℚ), 3⟩,
    ⟨(336082635407/1000000000000 : ℚ), (1354834039/2000000000 : ℚ), (-124349521127/500000000000 : ℚ), 3⟩,
    ⟨(42919386427/125000000000 : ℚ), (959811249/2000000000 : ℚ), (-18163103303/100000000000 : ℚ), 3⟩,
    ⟨(175367159169/500000000000 : ℚ), (3225146849/10000000000 : ℚ), (-63515775983/500000000000 : ℚ), 3⟩,
    ⟨(358149250183/1000000000000 : ℚ), (1954301969/10000000000 : ℚ), (-1025047579/12500000000 : ℚ), 3⟩,
    ⟨(73105695421/200000000000 : ℚ), (458241409/5000000000 : ℚ), (-22231724369/500000000000 : ℚ), 3⟩,
    ⟨(186400466557/500000000000 : ℚ), (15199347/2500000000 : ℚ), (-12883329013/1000000000000 : ℚ), 3⟩,
    ⟨(94974145121/250000000000 : ℚ), (-325153729/5000000000 : ℚ), (1734078891/125000000000 : ℚ), 3⟩,
    ⟨(386747084251/1000000000000 : ℚ), (-62245359/500000000 : ℚ), (36660330981/1000000000000 : ℚ), 3⟩,
    ⟨(393286470319/1000000000000 : ℚ), (-1744223107/10000000000 : ℚ), (11226241593/200000000000 : ℚ), 3⟩,
    ⟨(15978070433/40000000000 : ℚ), (-541109959/2500000000 : ℚ), (36392501167/500000000000 : ℚ), 3⟩,
    ⟨(405183580653/1000000000000 : ℚ), (-2517985977/10000000000 : ℚ), (87007214103/1000000000000 : ℚ), 2⟩,
    ⟨(410426729243/1000000000000 : ℚ), (-2814450463/10000000000 : ℚ), (24774035701/250000000000 : ℚ), 2⟩,
    ⟨(25945669513/62500000000 : ℚ), (-3061246709/10000000000 : ℚ), (109282699343/1000000000000 : ℚ), 2⟩,
    ⟨(419250227621/1000000000000 : ℚ), (-51001549/156250000 : ℚ), (58872553151/500000000000 : ℚ), 2⟩,
    ⟨(422745602297/1000000000000 : ℚ), (-3427402191/10000000000 : ℚ), (31154976459/250000000000 : ℚ), 2⟩,
    ⟨(212791586933/500000000000 : ℚ), (-55538843/156250000 : ℚ), (65005117219/500000000000 : ℚ), 2⟩,
    ⟨(427735614963/1000000000000 : ℚ), (-729562337/2000000000 : ℚ), (133992018371/1000000000000 : ℚ), 2⟩,
    ⟨(85836439281/200000000000 : ℚ), (-3709113279/10000000000 : ℚ), (27323705259/200000000000 : ℚ), 2⟩,
    ⟨(21495449341/50000000000 : ℚ), (-3739495399/10000000000 : ℚ), (137923575203/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1871640357/5000000000 : ℚ), (69043163261/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (70723303433/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control518.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control518.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate518

namespace DiagonalRamsey.JointInheritedCertificate519
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57255302501/200000000000 : ℚ), (13102146351541/10000000000 : ℚ), (-187893546978741/500000000000 : ℚ), 12⟩,
    ⟨(35877035879/125000000000 : ℚ), (1431673315487/10000000000 : ℚ), (-20764986654601/500000000000 : ℚ), 9⟩,
    ⟨(72122177913/250000000000 : ℚ), (501595602911/10000000000 : ℚ), (-14789275744003/1000000000000 : ℚ), 7⟩,
    ⟨(290679606111/1000000000000 : ℚ), (123483310879/5000000000 : ℚ), (-3710888811107/500000000000 : ℚ), 6⟩,
    ⟨(146783935449/500000000000 : ℚ), (71543673997/5000000000 : ℚ), (-4389701903861/1000000000000 : ℚ), 6⟩,
    ⟨(59425138089/200000000000 : ℚ), (22768037759/2500000000 : ℚ), (-913495751/320000000 : ℚ), 5⟩,
    ⟨(301318801003/1000000000000 : ℚ), (30768590757/5000000000 : ℚ), (-98580155101/50000000000 : ℚ), 5⟩,
    ⟨(306106820627/1000000000000 : ℚ), (43274482033/10000000000 : ℚ), (-1417351735607/1000000000000 : ℚ), 4⟩,
    ⟨(31144363807/100000000000 : ℚ), (31263138427/10000000000 : ℚ), (-261683163133/250000000000 : ℚ), 4⟩,
    ⟨(158638928431/500000000000 : ℚ), (4596930051/2000000000 : ℚ), (-78666308883/100000000000 : ℚ), 4⟩,
    ⟨(20222080643/62500000000 : ℚ), (8532459021/5000000000 : ℚ), (-37319030917/62500000000 : ℚ), 4⟩,
    ⟨(82552375623/250000000000 : ℚ), (12703859861/10000000000 : ℚ), (-56829106927/125000000000 : ℚ), 3⟩,
    ⟨(337182390513/1000000000000 : ℚ), (9410876797/10000000000 : ℚ), (-86201663933/250000000000 : ℚ), 3⟩,
    ⟨(86101200407/250000000000 : ℚ), (6872206083/10000000000 : ℚ), (-258333181161/1000000000000 : ℚ), 3⟩,
    ⟨(87951795017/250000000000 : ℚ), (4880068841/10000000000 : ℚ), (-94508424451/500000000000 : ℚ), 3⟩,
    ⟨(89829559221/250000000000 : ℚ), (1646397277/5000000000 : ℚ), (-132602108887/1000000000000 : ℚ), 3⟩,
    ⟨(366865636491/1000000000000 : ℚ), (502842653/2500000000 : ℚ), (-86091390219/1000000000000 : ℚ), 3⟩,
    ⟨(374376693307/1000000000000 : ℚ), (482562231/5000000000 : ℚ), (-11831898347/250000000000 : ℚ), 3⟩,
    ⟨(381779071747/1000000000000 : ℚ), (20538897/2000000000 : ℚ), (-7365014989/500000000000 : ℚ), 3⟩,
    ⟨(194500741431/500000000000 : ℚ), (-61382649/1000000000 : ℚ), (2575486811/200000000000 : ℚ), 3⟩,
    ⟨(395974370883/1000000000000 : ℚ), (-606392383/5000000000 : ℚ), (18190545419/500000000000 : ℚ), 3⟩,
    ⟨(402630583087/1000000000000 : ℚ), (-857805711/5000000000 : ℚ), (56455711373/1000000000000 : ℚ), 3⟩,
    ⟨(408906016513/1000000000000 : ℚ), (-427731017/2000000000 : ℚ), (73619119741/1000000000000 : ℚ), 3⟩,
    ⟨(82948047061/200000000000 : ℚ), (-2494473559/10000000000 : ℚ), (88270929639/1000000000000 : ℚ), 2⟩,
    ⟨(105019263187/250000000000 : ℚ), (-2792757977/10000000000 : ℚ), (39343947/390625000 : ℚ), 2⟩,
    ⟨(106216268093/250000000000 : ℚ), (-3041002687/10000000000 : ℚ), (27801859783/250000000000 : ℚ), 2⟩,
    ⟨(42905818293/100000000000 : ℚ), (-811249007/2500000000 : ℚ), (119916757947/1000000000000 : ℚ), 2⟩,
    ⟨(432616002477/1000000000000 : ℚ), (-852295629/2500000000 : ℚ), (15873786197/125000000000 : ℚ), 2⟩,
    ⟨(106324284/244140625 : ℚ), (-442116357/1250000000 : ℚ), (132535220737/1000000000000 : ℚ), 2⟩,
    ⟨(437695161723/1000000000000 : ℚ), (-3630731281/10000000000 : ℚ), (136630497139/1000000000000 : ℚ), 2⟩,
    ⟨(439167586343/1000000000000 : ℚ), (-3692338333/10000000000 : ℚ), (69665764891/500000000000 : ℚ), 2⟩,
    ⟨(43990736087/100000000000 : ℚ), (-3722869939/10000000000 : ℚ), (35168376641/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3726673789/10000000000 : ℚ), (4401276823/31250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (173966788683/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control519.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control519.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate519

namespace DiagonalRamsey.JointInheritedCertificate520
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(293676064019/1000000000000 : ℚ), (13217513642247/10000000000 : ℚ), (-388888885581101/1000000000000 : ℚ), 12⟩,
    ⟨(294428352869/1000000000000 : ℚ), (1444428856927/10000000000 : ℚ), (-42978567459063/1000000000000 : ℚ), 9⟩,
    ⟨(295925685617/1000000000000 : ℚ), (506142738673/10000000000 : ℚ), (-478300663399/31250000000 : ℚ), 7⟩,
    ⟨(29815364213/100000000000 : ℚ), (24925294147/1000000000 : ℚ), (-3840644262589/500000000000 : ℚ), 6⟩,
    ⟨(301090765969/1000000000000 : ℚ), (144444044849/10000000000 : ℚ), (-567941271859/125000000000 : ℚ), 6⟩,
    ⟨(152354385513/500000000000 : ℚ), (91959061093/10000000000 : ℚ), (-184688591979/62500000000 : ℚ), 5⟩,
    ⟨(308972813933/1000000000000 : ℚ), (3107734501/500000000 : ℚ), (-2041196398053/1000000000000 : ℚ), 5⟩,
    ⟨(313841829627/1000000000000 : ℚ), (43723753459/10000000000 : ℚ), (-22932257327/15625000000 : ℚ), 4⟩,
    ⟨(12770757073/40000000000 : ℚ), (316007423/100000000 : ℚ), (-1084172337281/1000000000000 : ℚ), 4⟩,
    ⟨(65040367923/200000000000 : ℚ), (23244694771/10000000000 : ℚ), (-407544547059/500000000000 : ℚ), 4⟩,
    ⟨(165791715401/500000000000 : ℚ), (17269193193/10000000000 : ℚ), (-61898000481/100000000000 : ℚ), 4⟩,
    ⟨(13534089687/40000000000 : ℚ), (12866937351/10000000000 : ℚ), (-471604038129/1000000000000 : ℚ), 3⟩,
    ⟨(345443086381/1000000000000 : ℚ), (9542867441/10000000000 : ℚ), (-71603150427/200000000000 : ℚ), 3⟩,
    ⟨(176393837357/500000000000 : ℚ), (6980340643/10000000000 : ℚ), (-268597940709/1000000000000 : ℚ), 3⟩,
    ⟨(90078818693/250000000000 : ℚ), (4969649281/10000000000 : ℚ), (-196938437487/1000000000000 : ℚ), 3⟩,
    ⟨(367953391653/1000000000000 : ℚ), (1683895139/5000000000 : ℚ), (-34658169949/250000000000 : ℚ), 3⟩,
    ⟨(75125693223/200000000000 : ℚ), (2074805461/10000000000 : ℚ), (-45288940471/500000000000 : ℚ), 3⟩,
    ⟨(76653316599/200000000000 : ℚ), (254833913/2500000000 : ℚ), (-10108194703/200000000000 : ℚ), 3⟩,
    ⟨(195397091527/500000000000 : ℚ), (74755279/5000000000 : ℚ), (-16885350883/1000000000000 : ℚ), 3⟩,
    ⟨(199069385693/500000000000 : ℚ), (-572960381/10000000000 : ℚ), (11606969319/1000000000000 : ℚ), 3⟩,
    ⟨(50653701949/125000000000 : ℚ), (-588358363/5000000000 : ℚ), (1120438927/31250000000 : ℚ), 3⟩,
    ⟨(82399685393/200000000000 : ℚ), (-1683416641/10000000000 : ℚ), (14138762483/250000000000 : ℚ), 3⟩,
    ⟨(418380018153/1000000000000 : ℚ), (-1054793169/5000000000 : ℚ), (74246729273/1000000000000 : ℚ), 3⟩,
    ⟨(212156465471/500000000000 : ℚ), (-2467923507/10000000000 : ℚ), (89343477441/1000000000000 : ℚ), 2⟩,
    ⟨(21487001407/50000000000 : ℚ), (-1384114983/5000000000 : ℚ), (102166254139/1000000000000 : ℚ), 2⟩,
    ⟨(217304521917/500000000000 : ℚ), (-1509043877/5000000000 : ℚ), (2824094171/25000000000 : ℚ), 2⟩,
    ⟨(219436543371/500000000000 : ℚ), (-644670899/2000000000 : ℚ), (60964091439/500000000000 : ℚ), 2⟩,
    ⟨(221245545899/500000000000 : ℚ), (-3388529023/10000000000 : ℚ), (32301722723/250000000000 : ℚ), 2⟩,
    ⟨(445428215637/1000000000000 : ℚ), (-1758510983/5000000000 : ℚ), (3372783523/25000000000 : ℚ), 2⟩,
    ⟨(8953123443/20000000000 : ℚ), (-3611355033/10000000000 : ℚ), (139123661637/1000000000000 : ℚ), 2⟩,
    ⟨(224576752449/500000000000 : ℚ), (-3673305209/10000000000 : ℚ), (3547538083/25000000000 : ℚ), 2⟩,
    ⟨(449905793749/1000000000000 : ℚ), (-3704004849/10000000000 : ℚ), (143281561391/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3707829539/10000000000 : ℚ), (143453654397/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (171097503817/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control520.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control520.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate520

namespace DiagonalRamsey.JointInheritedCertificate521
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(67941778891/250000000000 : ℚ), (1612285342447/1250000000 : ℚ), (-351199930990341/1000000000000 : ℚ), 12⟩,
    ⟨(68120116817/250000000000 : ℚ), (1409139568667/10000000000 : ℚ), (-19405984749373/500000000000 : ℚ), 9⟩,
    ⟨(273900300711/1000000000000 : ℚ), (246783606373/5000000000 : ℚ), (-13820791877859/1000000000000 : ℚ), 7⟩,
    ⟨(6900323553/25000000000 : ℚ), (24293332243/1000000000 : ℚ), (-1733822120189/250000000000 : ℚ), 6⟩,
    ⟨(278798045603/1000000000000 : ℚ), (140696704021/10000000000 : ℚ), (-2050773336571/500000000000 : ℚ), 6⟩,
    ⟨(282228789091/1000000000000 : ℚ), (349654457/39062500 : ℚ), (-2666896234643/1000000000000 : ℚ), 5⟩,
    ⟨(286272132649/1000000000000 : ℚ), (30226236503/5000000000 : ℚ), (-1841537014707/1000000000000 : ℚ), 5⟩,
    ⟨(72722284167/250000000000 : ℚ), (42486882811/10000000000 : ℚ), (-132347410323/100000000000 : ℚ), 4⟩,
    ⟨(74008834219/250000000000 : ℚ), (7668166229/2500000000 : ℚ), (-977019468107/1000000000000 : ℚ), 4⟩,
    ⟨(301661172551/1000000000000 : ℚ), (11265507211/5000000000 : ℚ), (-183468085971/250000000000 : ℚ), 4⟩,
    ⟨(15385623191/50000000000 : ℚ), (4177400767/2500000000 : ℚ), (-556614327021/1000000000000 : ℚ), 4⟩,
    ⟨(314130933441/1000000000000 : ℚ), (3105276953/2500000000 : ℚ), (-3386837081/8000000000 : ℚ), 3⟩,
    ⟨(160427384021/500000000000 : ℚ), (9182815811/10000000000 : ℚ), (-320597409469/1000000000000 : ℚ), 3⟩,
    ⟨(327819213421/1000000000000 : ℚ), (1671514169/2500000000 : ℚ), (-119829421329/500000000000 : ℚ), 3⟩,
    ⟨(334957198161/1000000000000 : ℚ), (945292547/2000000000 : ℚ), (-87374870207/500000000000 : ℚ), 3⟩,
    ⟨(342199979567/1000000000000 : ℚ), (791180213/2500000000 : ℚ), (-30473530539/250000000000 : ℚ), 3⟩,
    ⟨(69895561139/200000000000 : ℚ), (1903491711/10000000000 : ℚ), (-78291783541/1000000000000 : ℚ), 3⟩,
    ⟨(356720587101/1000000000000 : ℚ), (54582391/625000000 : ℚ), (-10482023201/250000000000 : ℚ), 3⟩,
    ⟨(363858571841/1000000000000 : ℚ), (474793/200000000 : ℚ), (-2265438257/200000000000 : ℚ), 3⟩,
    ⟨(18541150861/50000000000 : ℚ), (-341236059/5000000000 : ℚ), (14608637681/1000000000000 : ℚ), 3⟩,
    ⟨(377546851821/1000000000000 : ℚ), (-50925749/400000000 : ℚ), (7341239629/200000000000 : ℚ), 3⟩,
    ⟨(191982660721/500000000000 : ℚ), (-884651903/5000000000 : ℚ), (3474662631/62500000000 : ℚ), 3⟩,
    ⟨(390016612711/1000000000000 : ℚ), (-1093493133/5000000000 : ℚ), (35878149623/500000000000 : ℚ), 3⟩,
    ⟨(197821224193/500000000000 : ℚ), (-2538501041/10000000000 : ℚ), (10695413263/125000000000 : ℚ), 2⟩,
    ⟨(200394324297/500000000000 : ℚ), (-1416671603/5000000000 : ℚ), (97303361997/1000000000000 : ℚ), 2⟩,
    ⟨(405405652613/1000000000000 : ℚ), (-3078851883/10000000000 : ℚ), (53599548769/500000000000 : ℚ), 2⟩,
    ⟨(409448996171/1000000000000 : ℚ), (-3280692857/10000000000 : ℚ), (7213891143/62500000000 : ℚ), 2⟩,
    ⟨(412879739659/1000000000000 : ℚ), (-860803667/2500000000 : ℚ), (24420871417/200000000000 : ℚ), 2⟩,
    ⟨(207832421571/500000000000 : ℚ), (-223107001/625000000 : ℚ), (63672341401/500000000000 : ℚ), 2⟩,
    ⟨(8355549691/20000000000 : ℚ), (-732523929/2000000000 : ℚ), (1049730363/8000000000 : ℚ), 2⟩,
    ⟨(419197317993/1000000000000 : ℚ), (-3723652563/10000000000 : ℚ), (66885216509/500000000000 : ℚ), 2⟩,
    ⟨(209955334849/500000000000 : ℚ), (-3753903307/10000000000 : ℚ), (5401584537/40000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1878836169/5000000000 : ℚ), (33799473977/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (35924548081/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control521.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control521.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate521

namespace DiagonalRamsey.JointInheritedCertificate547
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280926131197/1000000000000 : ℚ), (12868654400681/10000000000 : ℚ), (-72436816075249/200000000000 : ℚ), 12⟩,
    ⟨(281643530031/1000000000000 : ℚ), (56251418859/400000000 : ℚ), (-320198785913/8000000000 : ℚ), 9⟩,
    ⟨(70767854689/250000000000 : ℚ), (246375632613/5000000000 : ℚ), (-3562994488399/250000000000 : ℚ), 7⟩,
    ⟨(285196046023/1000000000000 : ℚ), (9705300087/400000000 : ℚ), (-71511217817/10000000000 : ℚ), 6⟩,
    ⟨(287996950511/1000000000000 : ℚ), (70291243067/5000000000 : ℚ), (-845754133979/200000000000 : ℚ), 6⟩,
    ⟨(291447157977/1000000000000 : ℚ), (11184549123/1250000000 : ℚ), (-1374640427631/500000000000 : ℚ), 5⟩,
    ⟨(147756720519/500000000000 : ℚ), (6045292373/1000000000 : ℚ), (-1898147882201/1000000000000 : ℚ), 5⟩,
    ⟨(150078319583/500000000000 : ℚ), (42503119923/10000000000 : ℚ), (-1363930679753/1000000000000 : ℚ), 4⟩,
    ⟨(305332035823/1000000000000 : ℚ), (15347520623/5000000000 : ℚ), (-503348462869/500000000000 : ℚ), 4⟩,
    ⟨(310989789111/1000000000000 : ℚ), (22554712797/10000000000 : ℚ), (-151201854997/200000000000 : ℚ), 4⟩,
    ⟨(317075411773/1000000000000 : ℚ), (16732261193/10000000000 : ℚ), (-11465571803/20000000000 : ℚ), 4⟩,
    ⟨(64706059187/200000000000 : ℚ), (6220832273/5000000000 : ℚ), (-435928905923/1000000000000 : ℚ), 4⟩,
    ⟨(10321633673/31250000000 : ℚ), (920091287/1000000000 : ℚ), (-165020811821/500000000000 : ℚ), 3⟩,
    ⟨(67459246999/200000000000 : ℚ), (6701712913/10000000000 : ℚ), (-30832571853/125000000000 : ℚ), 3⟩,
    ⟨(172237358187/500000000000 : ℚ), (4739890587/10000000000 : ℚ), (-22476827153/125000000000 : ℚ), 3⟩,
    ⟨(351758588973/1000000000000 : ℚ), (158811037/500000000 : ℚ), (-125402427319/1000000000000 : ℚ), 3⟩,
    ⟨(89769426279/250000000000 : ℚ), (1913390903/10000000000 : ℚ), (-40267571813/500000000000 : ℚ), 3⟩,
    ⟨(183180788857/500000000000 : ℚ), (881935941/10000000000 : ℚ), (-21566990723/500000000000 : ℚ), 3⟩,
    ⟨(373540059093/1000000000000 : ℚ), (15683913/5000000000 : ℚ), (-5837869217/500000000000 : ℚ), 3⟩,
    ⟨(47568002069/125000000000 : ℚ), (-84447257/1250000000 : ℚ), (14972835243/1000000000000 : ℚ), 3⟩,
    ⟨(387305998153/1000000000000 : ℚ), (-158346051/1250000000 : ℚ), (37665594781/1000000000000 : ℚ), 3⟩,
    ⟨(98440220579/250000000000 : ℚ), (-881635823/5000000000 : ℚ), (57052487839/1000000000000 : ℚ), 3⟩,
    ⟨(199923252489/500000000000 : ℚ), (-68161219/312500000 : ℚ), (36816078929/500000000000 : ℚ), 3⟩,
    ⟨(202752129133/500000000000 : ℚ), (-2532774079/10000000000 : ℚ), (4389464353/50000000000 : ℚ), 3⟩,
    ⟨(410679654923/1000000000000 : ℚ), (-2827641311/10000000000 : ℚ), (99821555759/1000000000000 : ℚ), 3⟩,
    ⟨(8306457061/20000000000 : ℚ), (-3073124749/10000000000 : ℚ), (27489849487/250000000000 : ℚ), 2⟩,
    ⟨(419389136111/1000000000000 : ℚ), (-3274910763/10000000000 : ℚ), (14797582867/125000000000 : ℚ), 2⟩,
    ⟨(211419671789/500000000000 : ℚ), (-3437364429/10000000000 : ℚ), (125221597403/1000000000000 : ℚ), 2⟩,
    ⟨(85128049613/200000000000 : ℚ), (-1781896659/5000000000 : ℚ), (130585104199/1000000000000 : ℚ), 2⟩,
    ⟨(106941218833/250000000000 : ℚ), (-914160453/2500000000 : ℚ), (26909385589/200000000000 : ℚ), 2⟩,
    ⟨(214596382029/500000000000 : ℚ), (-3717631723/10000000000 : ℚ), (137160203249/1000000000000 : ℚ), 2⟩,
    ⟨(107477540723/250000000000 : ℚ), (-936964979/2500000000 : ℚ), (138458658079/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3751626079/10000000000 : ℚ), (138620586163/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (36327157833/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control547.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control547.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate547

namespace DiagonalRamsey.JointInheritedCertificate548
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144121062323/500000000000 : ℚ), (1297051805523/1000000000 : ℚ), (-374552749334443/1000000000000 : ℚ), 12⟩,
    ⟨(288972439917/1000000000000 : ℚ), (1417545263089/10000000000 : ℚ), (-8278425466971/200000000000 : ℚ), 9⟩,
    ⟨(290426037123/1000000000000 : ℚ), (496763256887/10000000000 : ℚ), (-14739152659753/1000000000000 : ℚ), 7⟩,
    ⟨(292588917329/1000000000000 : ℚ), (244648278899/10000000000 : ℚ), (-184895676539/25000000000 : ℚ), 6⟩,
    ⟨(59088050163/200000000000 : ℚ), (17722183509/1250000000 : ℚ), (-546712954579/125000000000 : ℚ), 6⟩,
    ⟨(298952577683/1000000000000 : ℚ), (90256612881/10000000000 : ℚ), (-355464904371/125000000000 : ℚ), 5⟩,
    ⟨(303092072303/1000000000000 : ℚ), (30497662621/5000000000 : ℚ), (-1963554835139/1000000000000 : ℚ), 5⟩,
    ⟨(7695471727/25000000000 : ℚ), (21448518287/5000000000 : ℚ), (-705566916741/500000000000 : ℚ), 4⟩,
    ⟨(156543723189/500000000000 : ℚ), (3099042963/1000000000 : ℚ), (-52087258533/50000000000 : ℚ), 4⟩,
    ⟨(63769412983/200000000000 : ℚ), (22781695951/10000000000 : ℚ), (-782545893661/1000000000000 : ℚ), 4⟩,
    ⟨(325042256419/1000000000000 : ℚ), (16910084649/10000000000 : ℚ), (-118725756937/200000000000 : ℚ), 4⟩,
    ⟨(331613357807/1000000000000 : ℚ), (12583199373/10000000000 : ℚ), (-451646572007/1000000000000 : ℚ), 4⟩,
    ⟨(338497085781/1000000000000 : ℚ), (465754517/500000000 : ℚ), (-342204930343/1000000000000 : ℚ), 3⟩,
    ⟨(172813573139/500000000000 : ℚ), (6794920283/10000000000 : ℚ), (-256041364063/1000000000000 : ℚ), 3⟩,
    ⟨(352934872917/1000000000000 : ℚ), (4816811007/10000000000 : ℚ), (-186980278767/1000000000000 : ℚ), 3⟩,
    ⟨(360349888297/1000000000000 : ℚ), (324035969/1000000000 : ℚ), (-26155938447/200000000000 : ℚ), 3⟩,
    ⟨(73560156353/200000000000 : ℚ), (1967417901/10000000000 : ℚ), (-84451434299/1000000000000 : ℚ), 3⟩,
    ⟨(75043159429/200000000000 : ℚ), (115989149/1250000000 : ℚ), (-2292251323/50000000000 : ℚ), 3⟩,
    ⟨(47815440473/125000000000 : ℚ), (17726847/2500000000 : ℚ), (-6692252263/500000000000 : ℚ), 3⟩,
    ⟨(389653584281/1000000000000 : ℚ), (-320601797/5000000000 : ℚ), (14102856733/1000000000000 : ℚ), 3⟩,
    ⟨(387243469/976562500 : ℚ), (-123654627/1000000000 : ℚ), (2343804153/62500000000 : ℚ), 3⟩,
    ⟨(100777103411/250000000000 : ℚ), (-217048793/1250000000 : ℚ), (57482468541/1000000000000 : ℚ), 3⟩,
    ⟨(409303605147/1000000000000 : ℚ), (-215696453/1000000000 : ℚ), (74564128049/1000000000000 : ℚ), 3⟩,
    ⟨(83012644737/200000000000 : ℚ), (-1255368247/5000000000 : ℚ), (44572217599/500000000000 : ℚ), 3⟩,
    ⟨(210165900491/500000000000 : ℚ), (-2807328871/10000000000 : ℚ), (5076598549/50000000000 : ℚ), 3⟩,
    ⟨(425058597759/1000000000000 : ℚ), (-122167339/400000000 : ℚ), (22393144807/200000000000 : ℚ), 2⟩,
    ⟨(21459904619/50000000000 : ℚ), (-101782753/312500000 : ℚ), (60315120457/500000000000 : ℚ), 2⟩,
    ⟨(432710419247/1000000000000 : ℚ), (-1710167963/5000000000 : ℚ), (127666972659/1000000000000 : ℚ), 2⟩,
    ⟨(217780876367/500000000000 : ℚ), (-709478329/2000000000 : ℚ), (66591403551/500000000000 : ℚ), 2⟩,
    ⟨(437724632939/1000000000000 : ℚ), (-728137493/2000000000 : ℚ), (137256459073/1000000000000 : ℚ), 2⟩,
    ⟨(87835646029/200000000000 : ℚ), (-3701965027/10000000000 : ℚ), (69971584493/500000000000 : ℚ), 2⟩,
    ⟨(54988568177/125000000000 : ℚ), (-933083483/2500000000 : ℚ), (70639006211/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-186805877/500000000 : ℚ), (141444473883/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (35751580629/100000000000 : ℚ)
  μ := (11/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control548.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control548.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate548

namespace DiagonalRamsey.JointInheritedCertificate549
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(75333913879/125000000000 : ℚ), (5219201934221/2500000000 : ℚ), (-314917299572901/250000000000 : ℚ), 12⟩,
    ⟨(301810464993/500000000000 : ℚ), (2291989778929/10000000000 : ℚ), (-6964533022209/50000000000 : ℚ), 9⟩,
    ⟨(121102204509/200000000000 : ℚ), (808685698139/10000000000 : ℚ), (-1241530195231/25000000000 : ℚ), 7⟩,
    ⟨(152080846521/250000000000 : ℚ), (401622358211/10000000000 : ℚ), (-6242109108939/250000000000 : ℚ), 6⟩,
    ⟨(122406187201/200000000000 : ℚ), (235022542517/10000000000 : ℚ), (-740399665377/50000000000 : ℚ), 6⟩,
    ⟨(308298983287/500000000000 : ℚ), (75639887001/5000000000 : ℚ), (-9666071663777/1000000000000 : ℚ), 5⟩,
    ⟨(621980494793/1000000000000 : ℚ), (103524517043/10000000000 : ℚ), (-6710043838531/1000000000000 : ℚ), 5⟩,
    ⟨(62812668397/100000000000 : ℚ), (3693072237/500000000 : ℚ), (-971358260927/200000000000 : ℚ), 4⟩,
    ⟨(126995468589/200000000000 : ℚ), (27131974063/5000000000 : ℚ), (-361965016999/100000000000 : ℚ), 4⟩,
    ⟨(321233248063/500000000000 : ℚ), (40699724657/10000000000 : ℚ), (-550727056887/200000000000 : ℚ), 4⟩,
    ⟨(5204176151/8000000000 : ℚ), (15482307123/5000000000 : ℚ), (-2124514729287/1000000000000 : ℚ), 4⟩,
    ⟨(82383291513/125000000000 : ℚ), (23772273299/10000000000 : ℚ), (-330747891879/200000000000 : ℚ), 3⟩,
    ⟨(334008574703/500000000000 : ℚ), (9165860419/5000000000 : ℚ), (-646430706723/500000000000 : ℚ), 3⟩,
    ⟨(169322067379/250000000000 : ℚ), (2827072701/2000000000 : ℚ), (-1010683188787/1000000000000 : ℚ), 3⟩,
    ⟨(686790406481/1000000000000 : ℚ), (2169137689/2000000000 : ℚ), (-786380926407/1000000000000 : ℚ), 3⟩,
    ⟨(696432049527/1000000000000 : ℚ), (1646288747/2000000000 : ℚ), (-605625792019/1000000000000 : ℚ), 3⟩,
    ⟨(706120344361/1000000000000 : ℚ), (766259271/1250000000 : ℚ), (-229148946733/500000000000 : ℚ), 3⟩,
    ⟨(357880993703/500000000000 : ℚ), (553095567/1250000000 : ℚ), (-67417419543/200000000000 : ℚ), 3⟩,
    ⟨(725264124371/1000000000000 : ℚ), (1514974061/5000000000 : ℚ), (-236608400857/1000000000000 : ℚ), 3⟩,
    ⟨(367267622241/500000000000 : ℚ), (940948797/5000000000 : ℚ), (-1193957897/7812500000 : ℚ), 3⟩,
    ⟨(743486061783/1000000000000 : ℚ), (932463539/10000000000 : ℚ), (-41336427981/500000000000 : ℚ), 2⟩,
    ⟨(188007593753/250000000000 : ℚ), (3620417/250000000 : ℚ), (-4756677489/200000000000 : ℚ), 2⟩,
    ⟨(760085897761/1000000000000 : ℚ), (-509502851/10000000000 : ℚ), (5136342581/200000000000 : ℚ), 2⟩,
    ⟨(767575050943/1000000000000 : ℚ), (-263166183/2500000000 : ℚ), (6716645443/100000000000 : ℚ), 2⟩,
    ⟨(387212854959/500000000000 : ℚ), (-1502035013/10000000000 : ℚ), (101810506341/1000000000000 : ℚ), 2⟩,
    ⟨(156114379819/200000000000 : ℚ), (-467813093/2500000000 : ℚ), (130515565979/1000000000000 : ℚ), 2⟩,
    ⟨(785954427313/1000000000000 : ℚ), (-54275387/250000000 : ℚ), (30798793909/200000000000 : ℚ), 2⟩,
    ⟨(790521457883/1000000000000 : ℚ), (-2409663531/10000000000 : ℚ), (86402295051/500000000000 : ℚ), 2⟩,
    ⟨(198557251951/250000000000 : ℚ), (-2593605861/10000000000 : ℚ), (187379463389/1000000000000 : ℚ), 2⟩,
    ⟨(797041371343/1000000000000 : ℚ), (-2727638899/10000000000 : ℚ), (39608699109/200000000000 : ℚ), 2⟩,
    ⟨(798931463901/1000000000000 : ℚ), (-351897039/1250000000 : ℚ), (205028830693/1000000000000 : ℚ), 2⟩,
    ⟨(99985135357/125000000000 : ℚ), (-114336381/400000000 : ℚ), (208484916993/1000000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1431894407/5000000000 : ℚ), (104457614071/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (31143124831/250000000000 : ℚ)
  μ := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control549.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control549.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate549

namespace DiagonalRamsey.JointInheritedCertificate550
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32402080157/125000000000 : ℚ), (12572693263813/10000000000 : ℚ), (-163261115919753/500000000000 : ℚ), 12⟩,
    ⟨(64973535769/250000000000 : ℚ), (1373569710497/10000000000 : ℚ), (-36082676898269/1000000000000 : ℚ), 9⟩,
    ⟨(261242622003/1000000000000 : ℚ), (240546828691/5000000000 : ℚ), (-8029602911/625000000 : ℚ), 7⟩,
    ⟨(32906136431/125000000000 : ℚ), (236774774747/10000000000 : ℚ), (-805701383601/125000000000 : ℚ), 6⟩,
    ⟨(265894228013/1000000000000 : ℚ), (137109494019/10000000000 : ℚ), (-3810933392039/1000000000000 : ℚ), 6⟩,
    ⟨(269152557587/1000000000000 : ℚ), (43604207597/5000000000 : ℚ), (-247703867333/100000000000 : ℚ), 5⟩,
    ⟨(10919708027/40000000000 : ℚ), (29437925087/5000000000 : ℚ), (-1709618607133/1000000000000 : ℚ), 5⟩,
    ⟨(277377674601/1000000000000 : ℚ), (2067869499/500000000 : ℚ), (-1227896917757/1000000000000 : ℚ), 4⟩,
    ⟨(282265249667/1000000000000 : ℚ), (3729438037/1250000000 : ℚ), (-452859750873/500000000000 : ℚ), 4⟩,
    ⟨(57521671171/200000000000 : ℚ), (21893845773/10000000000 : ℚ), (-679584912761/1000000000000 : ℚ), 4⟩,
    ⟨(293355536131/1000000000000 : ℚ), (4053536757/2500000000 : ℚ), (-64338036759/125000000000 : ℚ), 4⟩,
    ⟨(149725721003/500000000000 : ℚ), (3007227151/2500000000 : ℚ), (-195362731707/500000000000 : ℚ), 4⟩,
    ⟨(19114835411/62500000000 : ℚ), (8867568949/10000000000 : ℚ), (-147550682329/500000000000 : ℚ), 3⟩,
    ⟨(39056476237/125000000000 : ℚ), (6429227587/10000000000 : ℚ), (-219758934617/1000000000000 : ℚ), 3⟩,
    ⟨(15961553563/50000000000 : ℚ), (2257331327/5000000000 : ℚ), (-159316392041/1000000000000 : ℚ), 3⟩,
    ⟨(81527465669/250000000000 : ℚ), (2988071397/10000000000 : ℚ), (-2751945643/25000000000 : ℚ), 3⟩,
    ⟨(166510968811/500000000000 : ℚ), (175457067/1000000000 : ℚ), (-13888109947/200000000000 : ℚ), 3⟩,
    ⟨(169950364519/500000000000 : ℚ), (746460071/10000000000 : ℚ), (-35532319973/1000000000000 : ℚ), 3⟩,
    ⟨(173339995201/500000000000 : ℚ), (-42720291/5000000000 : ℚ), (-6981875583/1000000000000 : ℚ), 3⟩,
    ⟨(176647216861/500000000000 : ℚ), (-388704913/5000000000 : ℚ), (538450291/31250000000 : ℚ), 3⟩,
    ⟨(359680358291/1000000000000 : ℚ), (-1356559927/10000000000 : ℚ), (37872228441/1000000000000 : ℚ), 3⟩,
    ⟨(365776264167/1000000000000 : ℚ), (-1843375037/10000000000 : ℚ), (55527432079/1000000000000 : ℚ), 3⟩,
    ⟨(371523444443/1000000000000 : ℚ), (-1126734767/5000000000 : ℚ), (70643487233/1000000000000 : ℚ), 3⟩,
    ⟨(37686655063/100000000000 : ℚ), (-649706811/2500000000 : ℚ), (83565180841/1000000000000 : ℚ), 3⟩,
    ⟨(381754125697/1000000000000 : ℚ), (-5641969/19531250 : ℚ), (18911792191/200000000000 : ℚ), 3⟩,
    ⟨(193069549811/500000000000 : ℚ), (-3130191043/10000000000 : ℚ), (51915390977/500000000000 : ℚ), 3⟩,
    ⟨(389979242711/1000000000000 : ℚ), (-3328844627/10000000000 : ℚ), (27884838299/250000000000 : ℚ), 2⟩,
    ⟨(78647514457/200000000000 : ℚ), (-697774961/2000000000 : ℚ), (117806066603/1000000000000 : ℚ), 2⟩,
    ⟨(7917654177/20000000000 : ℚ), (-3613481891/10000000000 : ℚ), (15340308077/125000000000 : ℚ), 2⟩,
    ⟨(79577835659/200000000000 : ℚ), (-463128733/1250000000 : ℚ), (63177916681/500000000000 : ℚ), 2⟩,
    ⟨(199618828611/500000000000 : ℚ), (-941295817/2500000000 : ℚ), (128753315869/1000000000000 : ℚ), 2⟩,
    ⟨(199957579521/500000000000 : ℚ), (-3795002193/10000000000 : ℚ), (16243101031/125000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-759743523/2000000000 : ℚ), (16261676171/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (47547776489/125000000000 : ℚ)
  μ := (2/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control550.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control550.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate550

namespace DiagonalRamsey.JointInheritedCertificate551
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(273638606639/1000000000000 : ℚ), (12766875402139/10000000000 : ℚ), (-87500794485161/250000000000 : ℚ), 12⟩,
    ⟨(137171476017/500000000000 : ℚ), (1395034338877/10000000000 : ℚ), (-38678295073117/1000000000000 : ℚ), 9⟩,
    ⟨(34468107449/125000000000 : ℚ), (97748373391/2000000000 : ℚ), (-3443041721191/250000000000 : ℚ), 7⟩,
    ⟨(277830828177/1000000000000 : ℚ), (240617647569/10000000000 : ℚ), (-276403975603/40000000000 : ℚ), 6⟩,
    ⟨(70145192193/250000000000 : ℚ), (69693869237/5000000000 : ℚ), (-408600666183/100000000000 : ℚ), 6⟩,
    ⟨(56793639589/200000000000 : ℚ), (88696059187/10000000000 : ℚ), (-2656245915919/1000000000000 : ℚ), 5⟩,
    ⟨(143980246451/500000000000 : ℚ), (29955104201/5000000000 : ℚ), (-1833704948107/1000000000000 : ℚ), 5⟩,
    ⟨(14625960283/50000000000 : ℚ), (10527191167/2500000000 : ℚ), (-1317416732323/1000000000000 : ℚ), 4⟩,
    ⟨(297600433323/1000000000000 : ℚ), (15199565911/5000000000 : ℚ), (-194431023763/200000000000 : ℚ), 4⟩,
    ⟨(30315524089/100000000000 : ℚ), (2790894013/1250000000 : ℚ), (-182462958957/250000000000 : ℚ), 4⟩,
    ⟨(309130132529/1000000000000 : ℚ), (16553820677/10000000000 : ℚ), (-55321580209/100000000000 : ℚ), 4⟩,
    ⟨(157733783383/500000000000 : ℚ), (6149742447/5000000000 : ℚ), (-10510765839/25000000000 : ℚ), 4⟩,
    ⟨(161053255323/500000000000 : ℚ), (4543035679/5000000000 : ℚ), (-63609243951/200000000000 : ℚ), 3⟩,
    ⟨(32898302751/100000000000 : ℚ), (1651957183/2500000000 : ℚ), (-237408049277/1000000000000 : ℚ), 3⟩,
    ⟨(336030892741/1000000000000 : ℚ), (466228561/1000000000 : ℚ), (-86373153667/500000000000 : ℚ), 3⟩,
    ⟨(68636446309/200000000000 : ℚ), (48615523/156250000 : ℚ), (-120098169821/1000000000000 : ℚ), 3⟩,
    ⟨(175184086309/500000000000 : ℚ), (1858675027/10000000000 : ℚ), (-19168137689/250000000000 : ℚ), 3⟩,
    ⟨(178759755711/500000000000 : ℚ), (417635909/5000000000 : ℚ), (-20230621391/500000000000 : ℚ), 3⟩,
    ⟨(364567376653/1000000000000 : ℚ), (-4427287/5000000000 : ℚ), (-9992974219/1000000000000 : ℚ), 3⟩,
    ⟨(371443893517/1000000000000 : ℚ), (-1110359/15625000 : ℚ), (15826659897/1000000000000 : ℚ), 3⟩,
    ⟨(378082837397/1000000000000 : ℚ), (-1297661057/10000000000 : ℚ), (37822048627/1000000000000 : ℚ), 3⟩,
    ⟨(192210135817/500000000000 : ℚ), (-71632639/400000000 : ℚ), (7077565683/125000000000 : ℚ), 3⟩,
    ⟨(390395163273/1000000000000 : ℚ), (-17648069/80000000 : ℚ), (72703215703/1000000000000 : ℚ), 3⟩,
    ⟨(395949970841/1000000000000 : ℚ), (-2555458833/10000000000 : ℚ), (345764549/4000000000 : ℚ), 3⟩,
    ⟨(401031198503/1000000000000 : ℚ), (-2848593153/10000000000 : ℚ), (98121265999/1000000000000 : ℚ), 3⟩,
    ⟨(405589911261/1000000000000 : ℚ), (-3092698113/10000000000 : ℚ), (107965639941/1000000000000 : ℚ), 2⟩,
    ⟨(204791103109/500000000000 : ℚ), (-3293398879/10000000000 : ℚ), (929164311/8000000000 : ℚ), 2⟩,
    ⟨(412969635391/1000000000000 : ℚ), (-345501259/1000000000 : ℚ), (122792106933/1000000000000 : ℚ), 2⟩,
    ⟨(207859787993/500000000000 : ℚ), (-3580809853/10000000000 : ℚ), (128004341851/1000000000000 : ℚ), 2⟩,
    ⟨(417805544571/1000000000000 : ℚ), (-3673207331/10000000000 : ℚ), (131855078739/1000000000000 : ℚ), 2⟩,
    ⟨(419207452129/1000000000000 : ℚ), (-233369193/625000000 : ℚ), (67197695089/500000000000 : ℚ), 2⟩,
    ⟨(104977949381/250000000000 : ℚ), (-470499163/1250000000 : ℚ), (33914421187/250000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-470967733/1250000000 : ℚ), (16976888467/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (369007415107/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control551.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control551.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate551

namespace DiagonalRamsey.JointInheritedCertificate577
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(34450010339/125000000000 : ℚ), (12638693508177/10000000000 : ℚ), (-348959833220773/1000000000000 : ℚ), 12⟩,
    ⟨(69073747189/250000000000 : ℚ), (34532184861/250000000 : ℚ), (-38561656244861/1000000000000 : ℚ), 9⟩,
    ⟨(277678108517/1000000000000 : ℚ), (24202272093/500000000 : ℚ), (-13729668210959/1000000000000 : ℚ), 7⟩,
    ⟨(279736121797/1000000000000 : ℚ), (2383677137/100000000 : ℚ), (-6888031746723/1000000000000 : ℚ), 7⟩,
    ⟨(141224604401/500000000000 : ℚ), (138118527421/10000000000 : ℚ), (-4072352331963/1000000000000 : ℚ), 6⟩,
    ⟨(285791241023/1000000000000 : ℚ), (17581438147/2000000000 : ℚ), (-2646856554101/1000000000000 : ℚ), 5⟩,
    ⟨(289730032861/1000000000000 : ℚ), (29693505863/5000000000 : ℚ), (-456693833721/250000000000 : ℚ), 5⟩,
    ⟨(147113825799/500000000000 : ℚ), (41744992247/10000000000 : ℚ), (-164004707517/125000000000 : ℚ), 5⟩,
    ⟨(149620391353/500000000000 : ℚ), (30136799453/10000000000 : ℚ), (-241954998011/250000000000 : ℚ), 4⟩,
    ⟨(152360573497/500000000000 : ℚ), (11066147649/5000000000 : ℚ), (-29050268059/40000000000 : ℚ), 4⟩,
    ⟨(310615965557/1000000000000 : ℚ), (16405454501/10000000000 : ℚ), (-11003353259/20000000000 : ℚ), 4⟩,
    ⟨(316868468069/1000000000000 : ℚ), (6092046771/5000000000 : ℚ), (-417801305649/1000000000000 : ℚ), 4⟩,
    ⟨(161709219757/500000000000 : ℚ), (4497327161/5000000000 : ℚ), (-6314946989/20000000000 : ℚ), 3⟩,
    ⟨(165101400043/500000000000 : ℚ), (3267112321/5000000000 : ℚ), (-235376765807/1000000000000 : ℚ), 3⟩,
    ⟨(84289053171/250000000000 : ℚ), (115054401/250000000 : ℚ), (-170936571967/1000000000000 : ℚ), 3⟩,
    ⟨(344211712143/1000000000000 : ℚ), (3061687949/10000000000 : ℚ), (-4739013879/40000000000 : ℚ), 3⟩,
    ⟨(351301350147/1000000000000 : ℚ), (908559611/5000000000 : ℚ), (-7520988453/100000000000 : ℚ), 3⟩,
    ⟨(358356849607/1000000000000 : ℚ), (400095659/5000000000 : ℚ), (-7827501473/200000000000 : ℚ), 3⟩,
    ⟨(91327565551/250000000000 : ℚ), (-38725529/10000000000 : ℚ), (-175817443/20000000000 : ℚ), 3⟩,
    ⟨(46511827847/125000000000 : ℚ), (-184066213/2500000000 : ℚ), (846080387/50000000000 : ℚ), 3⟩,
    ⟨(378644594221/1000000000000 : ℚ), (-1319822471/10000000000 : ℚ), (19411140811/500000000000 : ℚ), 3⟩,
    ⟨(384897096733/1000000000000 : ℚ), (-45252771/250000000 : ℚ), (1798031047/31250000000 : ℚ), 3⟩,
    ⟨(12212247353/31250000000 : ℚ), (-2222929021/10000000000 : ℚ), (73545769981/1000000000000 : ℚ), 3⟩,
    ⟨(12383508737/31250000000 : ℚ), (-321301309/1250000000 : ℚ), (87218808199/1000000000000 : ℚ), 3⟩,
    ⟨(401285410693/1000000000000 : ℚ), (-2861916193/10000000000 : ℚ), (9884246153/100000000000 : ℚ), 3⟩,
    ⟨(40578302943/100000000000 : ℚ), (-776170621/2500000000 : ℚ), (10863828799/100000000000 : ℚ), 3⟩,
    ⟨(102430455317/250000000000 : ℚ), (-1652147887/5000000000 : ℚ), (23355438287/200000000000 : ℚ), 3⟩,
    ⟨(25816490843/62500000000 : ℚ), (-3465043289/10000000000 : ℚ), (123390018609/1000000000000 : ℚ), 3⟩,
    ⟨(207888470247/500000000000 : ℚ), (-112192897/312500000 : ℚ), (1285755321/10000000000 : ℚ), 3⟩,
    ⟨(208917476887/500000000000 : ℚ), (-3682083479/10000000000 : ℚ), (132406384699/1000000000000 : ℚ), 2⟩,
    ⟨(83843614707/200000000000 : ℚ), (-3742465367/10000000000 : ℚ), (67466757109/500000000000 : ℚ), 2⟩,
    ⟨(209956489789/500000000000 : ℚ), (-3772394599/10000000000 : ℚ), (68094620019/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3776123627/10000000000 : ℚ), (27269168599/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (94701768887/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control577.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control577.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate577

namespace DiagonalRamsey.JointInheritedCertificate651
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(516197941199/1000000000000 : ℚ), (16285825614233/10000000000 : ℚ), (-841739327575837/1000000000000 : ℚ), 12⟩,
    ⟨(64635308123/125000000000 : ℚ), (893175807289/5000000000 : ℚ), (-18608676987317/200000000000 : ℚ), 9⟩,
    ⟨(518842994107/1000000000000 : ℚ), (629342015699/10000000000 : ℚ), (-33148072742737/1000000000000 : ℚ), 8⟩,
    ⟨(521462573709/1000000000000 : ℚ), (62385276297/2000000000 : ℚ), (-16646766440807/1000000000000 : ℚ), 7⟩,
    ⟨(524915975807/1000000000000 : ℚ), (18207204203/1000000000 : ℚ), (-1971325783153/200000000000 : ℚ), 6⟩,
    ⟨(529169942251/1000000000000 : ℚ), (58416092749/5000000000 : ℚ), (-1284007263673/200000000000 : ℚ), 6⟩,
    ⟨(534183505019/1000000000000 : ℚ), (7964840741/1000000000 : ℚ), (-4444080341533/1000000000000 : ℚ), 5⟩,
    ⟨(539908380761/1000000000000 : ℚ), (5656418333/1000000000 : ℚ), (-3204967032541/1000000000000 : ℚ), 5⟩,
    ⟨(546289435793/1000000000000 : ℚ), (41320634573/10000000000 : ℚ), (-1188742563233/500000000000 : ℚ), 4⟩,
    ⟨(553265217067/1000000000000 : ℚ), (6154832119/2000000000 : ℚ), (-359585225201/200000000000 : ℚ), 4⟩,
    ⟨(560768543997/1000000000000 : ℚ), (4641365253/2000000000 : ℚ), (-1376593005053/1000000000000 : ℚ), 4⟩,
    ⟨(568727155443/1000000000000 : ℚ), (4404090099/2500000000 : ℚ), (-265249835581/250000000000 : ℚ), 4⟩,
    ⟨(72133050703/125000000000 : ℚ), (3346673711/2500000000 : ℚ), (-409387117787/500000000000 : ℚ), 4⟩,
    ⟨(292850001133/500000000000 : ℚ), (5061333487/5000000000 : ℚ), (-157268788623/250000000000 : ℚ), 3⟩,
    ⟨(594550779851/1000000000000 : ℚ), (3780836581/5000000000 : ℚ), (-238996220537/500000000000 : ℚ), 3⟩,
    ⟨(75441437569/125000000000 : ℚ), (1104782973/2000000000 : ℚ), (-355957660067/1000000000000 : ℚ), 3⟩,
    ⟨(612555675121/1000000000000 : ℚ), (77662363/200000000 : ℚ), (-256216116747/1000000000000 : ℚ), 3⟩,
    ⟨(621536395823/1000000000000 : ℚ), (509728561/2000000000 : ℚ), (-21736506467/125000000000 : ℚ), 3⟩,
    ⟨(630387173407/1000000000000 : ℚ), (1454190949/10000000000 : ℚ), (-105397669093/1000000000000 : ℚ), 3⟩,
    ⟨(639022770049/1000000000000 : ℚ), (550477081/10000000000 : ℚ), (-48048821361/1000000000000 : ℚ), 3⟩,
    ⟨(647360020231/1000000000000 : ℚ), (-199649283/10000000000 : ℚ), (191186687/1000000000000 : ℚ), 3⟩,
    ⟨(163829657919/250000000000 : ℚ), (-16490411/200000000 : ℚ), (40886166531/1000000000000 : ℚ), 3⟩,
    ⟨(331410979303/500000000000 : ℚ), (-1345950881/10000000000 : ℚ), (75248337297/1000000000000 : ℚ), 3⟩,
    ⟨(669797739881/1000000000000 : ℚ), (-1780858533/10000000000 : ℚ), (26056021561/250000000000 : ℚ), 3⟩,
    ⟨(676178794913/1000000000000 : ℚ), (-2142428033/10000000000 : ℚ), (64277787239/500000000000 : ℚ), 3⟩,
    ⟨(340951835327/500000000000 : ℚ), (-2440954089/10000000000 : ℚ), (14882562879/100000000000 : ℚ), 3⟩,
    ⟨(343458616711/500000000000 : ℚ), (-1342230743/5000000000 : ℚ), (165490867177/1000000000000 : ℚ), 3⟩,
    ⟨(345585599933/500000000000 : ℚ), (-2879164403/10000000000 : ℚ), (22363298607/125000000000 : ℚ), 3⟩,
    ⟨(138924920393/200000000000 : ℚ), (-605961633/2000000000 : ℚ), (189344279277/1000000000000 : ℚ), 3⟩,
    ⟨(697244181567/1000000000000 : ℚ), (-3139922677/10000000000 : ℚ), (197007450897/1000000000000 : ℚ), 3⟩,
    ⟨(699004710689/1000000000000 : ℚ), (-1606003633/5000000000 : ℚ), (202039830099/1000000000000 : ℚ), 3⟩,
    ⟨(349944617237/500000000000 : ℚ), (-3247660029/10000000000 : ℚ), (20453354909/100000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-1626049279/5000000000 : ℚ), (102422110771/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (115114906339/500000000000 : ℚ)
  μ := (7/10 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control651.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control651.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate651

namespace DiagonalRamsey.JointInheritedCertificate666
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(519289001457/1000000000000 : ℚ), (8034500778737/5000000000 : ℚ), (-835482304312557/1000000000000 : ℚ), 12⟩,
    ⟨(65019831239/125000000000 : ℚ), (88140563227/500000000 : ℚ), (-11543569920693/125000000000 : ℚ), 9⟩,
    ⟨(32618098227/62500000000 : ℚ), (310579797643/5000000000 : ℚ), (-16449113362927/500000000000 : ℚ), 8⟩,
    ⟨(262232548447/500000000000 : ℚ), (4811368697/156250000 : ℚ), (-8259760723067/500000000000 : ℚ), 7⟩,
    ⟨(263930210991/500000000000 : ℚ), (179768183661/10000000000 : ℚ), (-1955968473867/200000000000 : ℚ), 6⟩,
    ⟨(26602142403/50000000000 : ℚ), (115369505199/10000000000 : ℚ), (-6368797677277/1000000000000 : ℚ), 6⟩,
    ⟨(268486048039/500000000000 : ℚ), (78658239853/10000000000 : ℚ), (-6886784223/1562500000 : ℚ), 5⟩,
    ⟨(542600694683/1000000000000 : ℚ), (27931268727/5000000000 : ℚ), (-158882916437/50000000000 : ℚ), 5⟩,
    ⟨(274437218697/500000000000 : ℚ), (20403029253/5000000000 : ℚ), (-147271982641/62500000000 : ℚ), 5⟩,
    ⟨(277866452319/500000000000 : ℚ), (30386490133/10000000000 : ℚ), (-44528242607/25000000000 : ℚ), 4⟩,
    ⟨(140777511407/250000000000 : ℚ), (4581670001/2000000000 : ℚ), (-681480714387/500000000000 : ℚ), 4⟩,
    ⟨(285467407231/500000000000 : ℚ), (17382389471/10000000000 : ℚ), (-524875054529/500000000000 : ℚ), 4⟩,
    ⟨(579131854339/1000000000000 : ℚ), (13200488923/10000000000 : ℚ), (-202341233689/250000000000 : ℚ), 4⟩,
    ⟨(146905555821/250000000000 : ℚ), (9972541727/10000000000 : ℚ), (-77639715641/125000000000 : ℚ), 4⟩,
    ⟨(596324154403/1000000000000 : ℚ), (7439271329/10000000000 : ℚ), (-29450098959/62500000000 : ℚ), 3⟩,
    ⟨(302576921671/500000000000 : ℚ), (5423131283/10000000000 : ℚ), (-350118518611/1000000000000 : ℚ), 3⟩,
    ⟨(61402625537/100000000000 : ℚ), (3799408837/10000000000 : ℚ), (-125581667299/500000000000 : ℚ), 3⟩,
    ⟨(62285594431/100000000000 : ℚ), (1239284109/5000000000 : ℚ), (-33899159087/200000000000 : ℚ), 3⟩,
    ⟨(631557875429/1000000000000 : ℚ), (1395106711/10000000000 : ℚ), (-101554071819/1000000000000 : ℚ), 3⟩,
    ⟨(320024122187/500000000000 : ℚ), (500320213/10000000000 : ℚ), (-2792081833/62500000000 : ℚ), 3⟩,
    ⟨(648245284251/1000000000000 : ℚ), (-121255383/5000000000 : ℚ), (63372767/20000000000 : ℚ), 3⟩,
    ⟨(131214010617/200000000000 : ℚ), (-6891161/80000000 : ℚ), (21762229581/500000000000 : ℚ), 3⟩,
    ⟨(331723597037/500000000000 : ℚ), (-275580283/2000000000 : ℚ), (38798877959/500000000000 : ℚ), 3⟩,
    ⟨(335152830659/500000000000 : ℚ), (-226094937/1250000000 : ℚ), (2658203991/25000000000 : ℚ), 3⟩,
    ⟨(676579404029/1000000000000 : ℚ), (-2167008097/10000000000 : ℚ), (32613118973/250000000000 : ℚ), 3⟩,
    ⟨(341104001317/500000000000 : ℚ), (-2462828337/10000000000 : ℚ), (150549250767/1000000000000 : ℚ), 3⟩,
    ⟨(171784312663/250000000000 : ℚ), (-13520781/50000000 : ℚ), (835358323/5000000000 : ℚ), 3⟩,
    ⟨(69131967673/100000000000 : ℚ), (-45267759/156250000 : ℚ), (180372061263/1000000000000 : ℚ), 3⟩,
    ⟨(347357500909/500000000000 : ℚ), (-3046461279/10000000000 : ℚ), (95360171473/500000000000 : ℚ), 3⟩,
    ⟨(17432263177/25000000000 : ℚ), (-3155619871/10000000000 : ℚ), (198317737239/1000000000000 : ℚ), 3⟩,
    ⟨(873776811/1250000000 : ℚ), (-3227082729/10000000000 : ℚ), (40661387577/200000000000 : ℚ), 3⟩,
    ⟨(139978219451/200000000000 : ℚ), (-1631214613/5000000000 : ℚ), (102889634077/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-1633414843/5000000000 : ℚ), (103043638207/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (237644549207/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control666.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control666.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate666

namespace DiagonalRamsey.JointInheritedCertificate667
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2423787851/3906250000 : ℚ), (4833699190671/2500000000 : ℚ), (-600478224367707/500000000000 : ℚ), 12⟩,
    ⟨(77669195019/125000000000 : ℚ), (2124123416991/10000000000 : ℚ), (-16597276274527/125000000000 : ℚ), 9⟩,
    ⟨(623072981201/1000000000000 : ℚ), (187530243801/2500000000 : ℚ), (-11831191609031/250000000000 : ℚ), 8⟩,
    ⟨(625631394039/1000000000000 : ℚ), (2983071533/80000000 : ℚ), (-95130042527/4000000000 : ℚ), 7⟩,
    ⟨(629004159751/1000000000000 : ℚ), (218396146059/10000000000 : ℚ), (-2819102686493/200000000000 : ℚ), 6⟩,
    ⟨(633158796759/1000000000000 : ℚ), (70340945457/5000000000 : ℚ), (-4596616976477/500000000000 : ℚ), 6⟩,
    ⟨(638055293639/1000000000000 : ℚ), (12040546639/1250000000 : ℚ), (-255000933503/40000000000 : ℚ), 5⟩,
    ⟨(40227905903/62500000000 : ℚ), (68743692193/10000000000 : ℚ), (-921645845387/200000000000 : ℚ), 5⟩,
    ⟨(649878552867/1000000000000 : ℚ), (50501696073/10000000000 : ℚ), (-3428863759199/1000000000000 : ℚ), 5⟩,
    ⟨(131338290153/200000000000 : ℚ), (37860772901/10000000000 : ℚ), (-2603357076163/1000000000000 : ℚ), 4⟩,
    ⟨(166004894053/250000000000 : ℚ), (28777243883/10000000000 : ℚ), (-2003731686677/1000000000000 : ℚ), 4⟩,
    ⟨(335896177677/500000000000 : ℚ), (1378625199/625000000 : ℚ), (-311019561261/200000000000 : ℚ), 4⟩,
    ⟨(339967466039/500000000000 : ℚ), (16969096137/10000000000 : ℚ), (-302815824709/250000000000 : ℚ), 4⟩,
    ⟨(17209222223/25000000000 : ℚ), (3259822801/2500000000 : ℚ), (-942482052093/1000000000000 : ℚ), 3⟩,
    ⟨(139402600453/200000000000 : ℚ), (9955069813/10000000000 : ℚ), (-182224329057/250000000000 : ℚ), 3⟩,
    ⟨(28231360983/40000000000 : ℚ), (7501472451/10000000000 : ℚ), (-11136879681/20000000000 : ℚ), 3⟩,
    ⟨(22331171441/31250000000 : ℚ), (1381819093/2500000000 : ℚ), (-41666915933/100000000000 : ℚ), 3⟩,
    ⟨(723368508423/1000000000000 : ℚ), (19618561/50000000 : ℚ), (-150699174139/500000000000 : ℚ), 3⟩,
    ⟨(732012621767/1000000000000 : ℚ), (522205481/2000000000 : ℚ), (-102946130001/500000000000 : ℚ), 3⟩,
    ⟨(740446578609/1000000000000 : ℚ), (764880747/5000000000 : ℚ), (-126298530441/1000000000000 : ℚ), 3⟩,
    ⟨(374294577667/500000000000 : ℚ), (126987901/2000000000 : ℚ), (-59686339577/1000000000000 : ℚ), 3⟩,
    ⟨(30254477379/40000000000 : ℚ), (-107876747/10000000000 : ℚ), (-949403611/250000000000 : ℚ), 3⟩,
    ⟨(381845029961/500000000000 : ℚ), (-181331417/2500000000 : ℚ), (8625123047/200000000000 : ℚ), 3⟩,
    ⟨(770502957821/1000000000000 : ℚ), (-619087557/5000000000 : ℚ), (82463025769/1000000000000 : ℚ), 3⟩,
    ⟨(776735016239/1000000000000 : ℚ), (-1662702567/10000000000 : ℚ), (115303213159/1000000000000 : ℚ), 3⟩,
    ⟨(97790777131/125000000000 : ℚ), (-2011695467/10000000000 : ℚ), (2850139149/20000000000 : ℚ), 3⟩,
    ⟨(98402839241/125000000000 : ℚ), (-459036869/2000000000 : ℚ), (3295072819/20000000000 : ℚ), 3⟩,
    ⟨(98922168867/125000000000 : ℚ), (-504196953/2000000000 : ℚ), (2852744079/15625000000 : ℚ), 3⟩,
    ⟨(99343764581/125000000000 : ℚ), (-539019963/2000000000 : ℚ), (196383831209/1000000000000 : ℚ), 3⟩,
    ⟨(398654264743/500000000000 : ℚ), (-2822018273/10000000000 : ℚ), (51621705121/250000000000 : ℚ), 3⟩,
    ⟨(159805590107/200000000000 : ℚ), (-2904932131/10000000000 : ℚ), (213104714437/1000000000000 : ℚ), 3⟩,
    ⟨(24996619401/31250000000 : ℚ), (-2945888971/10000000000 : ℚ), (5409476153/25000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-2950985363/10000000000 : ℚ), (6774585311/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (4930629837/31250000000 : ℚ)
  μ := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control667.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control667.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate667

namespace DiagonalRamsey.JointInheritedCertificate724
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(630436323183/1000000000000 : ℚ), (9243949155617/5000000000 : ℚ), (-291669035308763/250000000000 : ℚ), 13⟩,
    ⟨(126250465317/200000000000 : ℚ), (1015893874261/5000000000 : ℚ), (-4030498450371/31250000000 : ℚ), 10⟩,
    ⟨(632876474829/1000000000000 : ℚ), (358917681357/5000000000 : ℚ), (-22980376729241/500000000000 : ℚ), 8⟩,
    ⟨(635293126481/1000000000000 : ℚ), (89249753487/2500000000 : ℚ), (-2886282916123/125000000000 : ℚ), 7⟩,
    ⟨(79809875983/125000000000 : ℚ), (104589678231/5000000000 : ℚ), (-3419929368199/250000000000 : ℚ), 6⟩,
    ⟨(642403437199/1000000000000 : ℚ), (134789175899/10000000000 : ℚ), (-8917382387379/1000000000000 : ℚ), 6⟩,
    ⟨(323514310043/500000000000 : ℚ), (92308660457/10000000000 : ℚ), (-1235933227297/200000000000 : ℚ), 5⟩,
    ⟨(130462002697/200000000000 : ℚ), (4117553689/625000000 : ℚ), (-1115845159689/250000000000 : ℚ), 5⟩,
    ⟨(65819675469/100000000000 : ℚ), (24195577379/5000000000 : ℚ), (-1658888273743/500000000000 : ℚ), 5⟩,
    ⟨(664632151167/1000000000000 : ℚ), (36264030501/10000000000 : ℚ), (-2515947791231/1000000000000 : ℚ), 4⟩,
    ⟨(20986069579/31250000000 : ℚ), (13772063643/5000000000 : ℚ), (-483391877907/250000000000 : ℚ), 4⟩,
    ⟨(135779263481/200000000000 : ℚ), (5272421207/2500000000 : ℚ), (-149788147523/100000000000 : ℚ), 4⟩,
    ⟨(85823464431/125000000000 : ℚ), (8099088493/5000000000 : ℚ), (-582006962143/500000000000 : ℚ), 4⟩,
    ⟨(69455434829/100000000000 : ℚ), (12418431329/10000000000 : ℚ), (-225766384627/250000000000 : ℚ), 4⟩,
    ⟨(702719492901/1000000000000 : ℚ), (4725090837/5000000000 : ℚ), (-173935972633/250000000000 : ℚ), 4⟩,
    ⟨(177751128619/250000000000 : ℚ), (3543740261/5000000000 : ℚ), (-132192822881/250000000000 : ℚ), 3⟩,
    ⟨(719329623727/1000000000000 : ℚ), (2592692641/5000000000 : ℚ), (-392767624867/1000000000000 : ℚ), 3⟩,
    ⟨(727614645301/1000000000000 : ℚ), (454949451/1250000000 : ℚ), (-280954690391/1000000000000 : ℚ), 3⟩,
    ⟨(735779789913/1000000000000 : ℚ), (2373597451/10000000000 : ℚ), (-94168586381/500000000000 : ℚ), 3⟩,
    ⟨(148749284551/200000000000 : ℚ), (665157417/5000000000 : ℚ), (-22234024767/200000000000 : ℚ), 3⟩,
    ⟨(375718910399/500000000000 : ℚ), (58319213/1250000000 : ℚ), (-46604118501/1000000000000 : ℚ), 3⟩,
    ⟨(379389955837/500000000000 : ℚ), (-62694203/2500000000 : ℚ), (3778170929/500000000000 : ℚ), 3⟩,
    ⟨(191425496759/250000000000 : ℚ), (-169456771/2000000000 : ℚ), (53020464631/1000000000000 : ℚ), 3⟩,
    ⟨(96517172939/125000000000 : ℚ), (-1342937613/10000000000 : ℚ), (91129446203/1000000000000 : ℚ), 3⟩,
    ⟨(389012062359/500000000000 : ℚ), (-1753393043/10000000000 : ℚ), (122941180851/1000000000000 : ℚ), 3⟩,
    ⟨(783305518117/1000000000000 : ℚ), (-2090948507/10000000000 : ℚ), (74645873773/500000000000 : ℚ), 3⟩,
    ⟨(787930701003/1000000000000 : ℚ), (-59131227/250000000 : ℚ), (170840570083/1000000000000 : ℚ), 3⟩,
    ⟨(395927565169/500000000000 : ℚ), (-103352291/400000000 : ℚ), (94051960051/500000000000 : ℚ), 3⟩,
    ⟨(795041011721/1000000000000 : ℚ), (-1376195257/5000000000 : ℚ), (20147992197/100000000000 : ℚ), 3⟩,
    ⟨(797457663373/1000000000000 : ℚ), (-575061773/2000000000 : ℚ), (211267203781/1000000000000 : ℚ), 3⟩,
    ⟨(399540905809/500000000000 : ℚ), (-2955625463/10000000000 : ℚ), (217678610383/1000000000000 : ℚ), 3⟩,
    ⟨(799897815019/1000000000000 : ℚ), (-1497652129/5000000000 : ℚ), (110425443281/500000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-3000241853/10000000000 : ℚ), (110622934477/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (176162440509/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control724.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control724.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate724

namespace DiagonalRamsey.JointInheritedCertificate805
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(547381614601/1000000000000 : ℚ), (14117626520149/10000000000 : ℚ), (-386771849194729/500000000000 : ℚ), 13⟩,
    ⟨(274058035483/500000000000 : ℚ), (775250054481/5000000000 : ℚ), (-42736193013701/500000000000 : ℚ), 10⟩,
    ⟨(549577910479/1000000000000 : ℚ), (68391871167/1250000000 : ℚ), (-30427087444763/1000000000000 : ℚ), 9⟩,
    ⟨(275876527413/500000000000 : ℚ), (271620746821/10000000000 : ℚ), (-3052412869707/200000000000 : ℚ), 8⟩,
    ⟨(27731027809/50000000000 : ℚ), (158768578807/10000000000 : ℚ), (-4510949652539/500000000000 : ℚ), 7⟩,
    ⟨(558152798933/1000000000000 : ℚ), (20396685017/2000000000 : ℚ), (-5863767495513/1000000000000 : ℚ), 6⟩,
    ⟨(281157882829/500000000000 : ℚ), (34780031767/5000000000 : ℚ), (-506004407707/125000000000 : ℚ), 6⟩,
    ⟨(567069364709/1000000000000 : ℚ), (12347605113/2500000000 : ℚ), (-581903089179/200000000000 : ℚ), 6⟩,
    ⟨(71545977041/125000000000 : ℚ), (18021108607/5000000000 : ℚ), (-2149328327671/1000000000000 : ℚ), 5⟩,
    ⟨(578160093531/1000000000000 : ℚ), (26785604741/10000000000 : ℚ), (-323403767039/200000000000 : ℚ), 5⟩,
    ⟨(584390413521/1000000000000 : ℚ), (5031957627/2500000000 : ℚ), (-38442177757/31250000000 : ℚ), 5⟩,
    ⟨(4617177929/7812500000 : ℚ), (949834679/625000000 : ℚ), (-940480424401/1000000000000 : ℚ), 5⟩,
    ⟨(597921535569/1000000000000 : ℚ), (11457998349/10000000000 : ℚ), (-143651321441/200000000000 : ℚ), 4⟩,
    ⟨(151273006381/250000000000 : ℚ), (8565488229/10000000000 : ℚ), (-544318096667/1000000000000 : ℚ), 4⟩,
    ⟨(612441189039/1000000000000 : ℚ), (6290767313/10000000000 : ℚ), (-405875796431/1000000000000 : ℚ), 4⟩,
    ⟨(154974562413/250000000000 : ℚ), (279799531/625000000 : ℚ), (-294130028647/1000000000000 : ℚ), 4⟩,
    ⟨(39211961987/62500000000 : ℚ), (3013103649/10000000000 : ℚ), (-2028669391/10000000000 : ℚ), 4⟩,
    ⟨(158712113101/250000000000 : ℚ), (910140267/5000000000 : ℚ), (-63799803383/500000000000 : ℚ), 4⟩,
    ⟨(642197615919/1000000000000 : ℚ), (33605217/400000000 : ℚ), (-65025153527/1000000000000 : ℚ), 4⟩,
    ⟨(5194944847/8000000000 : ℚ), (14658149/5000000000 : ℚ), (-395992779/31250000000 : ℚ), 4⟩,
    ⟨(164072716633/250000000000 : ℚ), (-20152643/312500000 : ℚ), (15668270617/500000000000 : ℚ), 4⟩,
    ⟨(331449613961/500000000000 : ℚ), (-603733303/5000000000 : ℚ), (8555028869/125000000000 : ℚ), 3⟩,
    ⟨(83641193489/125000000000 : ℚ), (-167769843/1000000000 : ℚ), (99755576339/1000000000000 : ℚ), 3⟩,
    ⟨(134984365023/200000000000 : ℚ), (-1035268629/5000000000 : ℚ), (126153452527/1000000000000 : ℚ), 3⟩,
    ⟨(136044055347/200000000000 : ℚ), (-599410973/2500000000 : ℚ), (148315985097/1000000000000 : ℚ), 3⟩,
    ⟨(342486937893/500000000000 : ℚ), (-2668121739/10000000000 : ℚ), (166777915049/1000000000000 : ℚ), 3⟩,
    ⟨(68913684251/100000000000 : ℚ), (-36113271/125000000 : ℚ), (90978611741/500000000000 : ℚ), 3⟩,
    ⟨(43291817829/62500000000 : ℚ), (-76648693/250000000 : ℚ), (48544514849/250000000000 : ℚ), 3⟩,
    ⟨(695536586617/1000000000000 : ℚ), (-160148029/500000000 : ℚ), (20368802517/100000000000 : ℚ), 3⟩,
    ⟨(139542346193/200000000000 : ℚ), (-206450267/625000000 : ℚ), (105335593471/500000000000 : ℚ), 3⟩,
    ⟨(349586785239/500000000000 : ℚ), (-3368872461/10000000000 : ℚ), (215257717053/1000000000000 : ℚ), 3⟩,
    ⟨(699908026843/1000000000000 : ℚ), (-3401365569/10000000000 : ℚ), (217530740481/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-17027057/50000000 : ℚ), (108906965019/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (301556991799/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control805.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control805.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate805
