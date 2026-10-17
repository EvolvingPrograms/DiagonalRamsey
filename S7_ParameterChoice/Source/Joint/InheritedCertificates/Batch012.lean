import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control109
namespace DiagonalRamsey.JointInheritedCertificate109
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9168276233/40000000000 : ℚ), (847045600903/1250000000 : ℚ), (-3120835506897/20000000000 : ℚ), 10⟩,
    ⟨(230750681361/1000000000000 : ℚ), (729345538249/10000000000 : ℚ), (-17268289192261/1000000000000 : ℚ), 7⟩,
    ⟨(233823365031/1000000000000 : ℚ), (250364826567/10000000000 : ℚ), (-770809874641/125000000000 : ℚ), 6⟩,
    ⟨(59598841303/250000000000 : ℚ), (120544063551/10000000000 : ℚ), (-1553945937901/500000000000 : ℚ), 5⟩,
    ⟨(244422651041/1000000000000 : ℚ), (68298326249/10000000000 : ℚ), (-1849278974787/1000000000000 : ℚ), 4⟩,
    ⟨(251847176463/1000000000000 : ℚ), (42572223339/10000000000 : ℚ), (-12122165233/10000000000 : ℚ), 4⟩,
    ⟨(260597439239/1000000000000 : ℚ), (14122511607/5000000000 : ℚ), (-169166402691/200000000000 : ℚ), 3⟩,
    ⟨(135294584777/500000000000 : ℚ), (19573865561/10000000000 : ℚ), (-123190839511/200000000000 : ℚ), 3⟩,
    ⟨(281726141583/1000000000000 : ℚ), (109375171/78125000 : ℚ), (-462293428581/1000000000000 : ℚ), 3⟩,
    ⟨(293901100199/1000000000000 : ℚ), (2562177039/2500000000 : ℚ), (-14179949993/40000000000 : ℚ), 3⟩,
    ⟨(306996793893/1000000000000 : ℚ), (7630161933/10000000000 : ℚ), (-275941349369/1000000000000 : ℚ), 2⟩,
    ⟨(160443551989/500000000000 : ℚ), (2873375229/5000000000 : ℚ), (-216893322311/1000000000000 : ℚ), 2⟩,
    ⟨(335438259173/1000000000000 : ℚ), (871496051/2000000000 : ℚ), (-171358725929/1000000000000 : ℚ), 2⟩,
    ⟨(350510123899/1000000000000 : ℚ), (3310259277/10000000000 : ℚ), (-135481463071/1000000000000 : ℚ), 2⟩,
    ⟨(18297877393/50000000000 : ℚ), (1252921769/5000000000 : ℚ), (-53346480559/500000000000 : ℚ), 2⟩,
    ⟨(4770397049/12500000000 : ℚ), (1877634187/10000000000 : ℚ), (-83231257493/1000000000000 : ℚ), 2⟩,
    ⟨(49672727601/125000000000 : ℚ), (1379859677/10000000000 : ℚ), (-997771127/15625000000 : ℚ), 2⟩,
    ⟨(413056036867/1000000000000 : ℚ), (245101849/2500000000 : ℚ), (-47681452699/1000000000000 : ℚ), 2⟩,
    ⟨(107125865207/250000000000 : ℚ), (328169377/5000000000 : ℚ), (-8513249497/250000000000 : ℚ), 2⟩,
    ⟨(88715065111/200000000000 : ℚ), (78201453/2000000000 : ℚ), (-11244516399/500000000000 : ℚ), 2⟩,
    ⟨(1832505923/4000000000 : ℚ), (172163251/10000000000 : ℚ), (-12626378413/1000000000000 : ℚ), 2⟩,
    ⟨(236008395417/500000000000 : ℚ), (-9318167/10000000000 : ℚ), (-2094488971/500000000000 : ℚ), 2⟩,
    ⟨(30319530283/62500000000 : ℚ), (-160306123/10000000000 : ℚ), (3034836793/1000000000000 : ℚ), 2⟩,
    ⟨(62160930393/125000000000 : ℚ), (-286017153/10000000000 : ℚ), (9208446381/1000000000000 : ℚ), 2⟩,
    ⟨(254212207587/500000000000 : ℚ), (-39043959/1000000000 : ℚ), (7229260711/500000000000 : ℚ), 2⟩,
    ⟨(518416145489/1000000000000 : ℚ), (-476635679/10000000000 : ℚ), (9441725661/500000000000 : ℚ), 2⟩,
    ⟨(65895801033/125000000000 : ℚ), (-21878349/400000000 : ℚ), (11279773329/500000000000 : ℚ), 2⟩,
    ⟨(267295466843/500000000000 : ℚ), (-301605083/5000000000 : ℚ), (25545630631/1000000000000 : ℚ), 2⟩,
    ⟨(135154554879/250000000000 : ℚ), (-323376743/5000000000 : ℚ), (13943223799/500000000000 : ℚ), 2⟩,
    ⟨(34074388731/62500000000 : ℚ), (-21206139/312500000 : ℚ), (29615177589/1000000000000 : ℚ), 2⟩,
    ⟨(274131451683/500000000000 : ℚ), (-699449517/10000000000 : ℚ), (30755259223/1000000000000 : ℚ), 2⟩,
    ⟨(549806678903/1000000000000 : ℚ), (-709765769/10000000000 : ℚ), (1957603499/62500000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-177762547/2500000000 : ℚ), (6278457319/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (19298640563/62500000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control109.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control109.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate109

-- Control110
namespace DiagonalRamsey.JointInheritedCertificate110
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(64785467019/250000000000 : ℚ), (721292120107/1000000000 : ℚ), (-18773940280883/100000000000 : ℚ), 10⟩,
    ⟨(260782204027/1000000000000 : ℚ), (388735221343/5000000000 : ℚ), (-10387916361611/500000000000 : ℚ), 7⟩,
    ⟨(132023539299/500000000000 : ℚ), (53484141137/2000000000 : ℚ), (-3709427499651/500000000000 : ℚ), 6⟩,
    ⟨(134452524631/500000000000 : ℚ), (129046859459/10000000000 : ℚ), (-934748797761/250000000000 : ℚ), 5⟩,
    ⟨(137654665553/500000000000 : ℚ), (73288543779/10000000000 : ℚ), (-444953629951/200000000000 : ℚ), 4⟩,
    ⟨(141599123697/500000000000 : ℚ), (2289579301/500000000 : ℚ), (-729184832667/500000000000 : ℚ), 4⟩,
    ⟨(5849916471/20000000000 : ℚ), (1903299833/625000000 : ℚ), (-1017653229733/1000000000000 : ℚ), 3⟩,
    ⟨(303112518833/1000000000000 : ℚ), (21153404877/10000000000 : ℚ), (-46324581173/62500000000 : ℚ), 3⟩,
    ⟨(62989217733/200000000000 : ℚ), (15165572897/10000000000 : ℚ), (-69556685653/125000000000 : ℚ), 3⟩,
    ⟨(327882569297/1000000000000 : ℚ), (695577077/625000000 : ℚ), (-426917158993/1000000000000 : ℚ), 3⟩,
    ⟨(42724671919/125000000000 : ℚ), (1661556579/2000000000 : ℚ), (-41572092373/125000000000 : ℚ), 2⟩,
    ⟨(178278249819/500000000000 : ℚ), (3138052627/5000000000 : ℚ), (-261726873031/1000000000000 : ℚ), 2⟩,
    ⟨(186008901861/500000000000 : ℚ), (298513193/625000000 : ℚ), (-103575922633/500000000000 : ℚ), 2⟩,
    ⟨(388032386793/1000000000000 : ℚ), (28476893/78125000 : ℚ), (-164210126771/1000000000000 : ℚ), 2⟩,
    ⟨(404446019661/1000000000000 : ℚ), (694007153/2500000000 : ℚ), (-129808994479/1000000000000 : ℚ), 2⟩,
    ⟨(42110063007/100000000000 : ℚ), (131095817/625000000 : ℚ), (-12728248699/125000000000 : ℚ), 2⟩,
    ⟨(437835825017/1000000000000 : ℚ), (390058657/2500000000 : ℚ), (-39383851681/500000000000 : ℚ), 2⟩,
    ⟨(227245217713/500000000000 : ℚ), (1129468017/10000000000 : ℚ), (-59560769059/1000000000000 : ℚ), 2⟩,
    ⟨(235452034147/500000000000 : ℚ), (156085257/2000000000 : ℚ), (-8683915759/200000000000 : ℚ), 2⟩,
    ⟨(97383730273/200000000000 : ℚ), (495074459/10000000000 : ℚ), (-29760139439/1000000000000 : ℚ), 2⟩,
    ⟨(502379955449/1000000000000 : ℚ), (1040469/40000000 : ℚ), (-18142554889/1000000000000 : ℚ), 2⟩,
    ⟨(64642384967/125000000000 : ℚ), (65633291/10000000000 : ℚ), (-514485457/62500000000 : ℚ), 2⟩,
    ⟨(53105388579/100000000000 : ℚ), (-95859249/10000000000 : ℚ), (22976417/100000000000 : ℚ), 2⟩,
    ⟨(543990366423/1000000000000 : ℚ), (-46010403/2000000000 : ℚ), (930175197/125000000000 : ℚ), 2⟩,
    ⟨(277911968127/500000000000 : ℚ), (-170651977/5000000000 : ℚ), (6779110241/500000000000 : ℚ), 2⟩,
    ⟨(566440631537/1000000000000 : ℚ), (-108241847/2500000000 : ℚ), (584409791/31250000000 : ℚ), 2⟩,
    ⟨(287869103847/500000000000 : ℚ), (-507622613/10000000000 : ℚ), (22964210053/1000000000000 : ℚ), 2⟩,
    ⟨(291813561991/500000000000 : ℚ), (-113449553/2000000000 : ℚ), (6605090681/250000000000 : ℚ), 2⟩,
    ⟨(23601256233/40000000000 : ℚ), (-122668419/2000000000 : ℚ), (14562603327/500000000000 : ℚ), 2⟩,
    ⟨(594889376489/1000000000000 : ℚ), (-323507513/5000000000 : ℚ), (3112015071/100000000000 : ℚ), 2⟩,
    ⟨(29907712553/50000000000 : ℚ), (-13380989/200000000 : ℚ), (6486907881/200000000000 : ℚ), 2⟩,
    ⟨(149948646753/250000000000 : ℚ), (-339972497/5000000000 : ℚ), (16543576511/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-42581331/625000000 : ℚ), (4146064651/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (292552673833/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control110.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control110.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate110

-- Control111
namespace DiagonalRamsey.JointInheritedCertificate111
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1273894067/31250000000 : ℚ), (260915664147/250000000 : ℚ), (-42646603098251/1000000000000 : ℚ), 11⟩,
    ⟨(40941637291/1000000000000 : ℚ), (1104663943989/10000000000 : ℚ), (-571843365531/125000000000 : ℚ), 7⟩,
    ⟨(10322222133/250000000000 : ℚ), (362703462721/10000000000 : ℚ), (-1528361439181/1000000000000 : ℚ), 6⟩,
    ⟨(8358603839/200000000000 : ℚ), (80101787659/5000000000 : ℚ), (-344130948641/500000000000 : ℚ), 5⟩,
    ⟨(21217327911/500000000000 : ℚ), (77810395397/10000000000 : ℚ), (-341693701057/1000000000000 : ℚ), 4⟩,
    ⟨(43189140677/1000000000000 : ℚ), (1829540717/500000000 : ℚ), (-165417094123/1000000000000 : ℚ), 4⟩,
    ⟨(44027479331/1000000000000 : ℚ), (164236819/125000000 : ℚ), (-1581107521/25000000000 : ℚ), 4⟩,
    ⟨(22458727449/500000000000 : ℚ), (-359997359/2500000000 : ℚ), (770172731/500000000000 : ℚ), 3⟩,
    ⟨(22912433059/500000000000 : ℚ), (-555212831/500000000 : ℚ), (11340057721/250000000000 : ℚ), 3⟩,
    ⟨(23357420843/500000000000 : ℚ), (-17816241423/10000000000 : ℚ), (19100311399/250000000000 : ℚ), 3⟩,
    ⟨(2377659017/50000000000 : ℚ), (-11312790351/5000000000 : ℚ), (49530749843/500000000000 : ℚ), 3⟩,
    ⟨(9661533039/200000000000 : ℚ), (-26123953143/10000000000 : ℚ), (115825273989/1000000000000 : ℚ), 3⟩,
    ⟨(24474650911/500000000000 : ℚ), (-28656089523/10000000000 : ℚ), (64068402473/500000000000 : ℚ), 3⟩,
    ⟨(9890686497/200000000000 : ℚ), (-760642209/250000000 : ℚ), (2138167999/15625000000 : ℚ), 3⟩,
    ⟨(24900341863/500000000000 : ℚ), (-7887971283/2500000000 : ℚ), (142431534363/1000000000000 : ℚ), 3⟩,
    ⟨(49977710873/1000000000000 : ℚ), (-32100411381/10000000000 : ℚ), (14516806361/100000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-16084164303/5000000000 : ℚ), (36376893499/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (335137036111/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control111.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control111.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate111

-- Control112
namespace DiagonalRamsey.JointInheritedCertificate112
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(81764432727/1000000000000 : ℚ), (662666270289/625000000 : ℚ), (-43448398175377/500000000000 : ℚ), 11⟩,
    ⟨(20528494597/250000000000 : ℚ), (1122787383139/10000000000 : ℚ), (-466201289309/50000000000 : ℚ), 7⟩,
    ⟨(41399818433/500000000000 : ℚ), (73801482753/2000000000 : ℚ), (-3117030727071/1000000000000 : ℚ), 6⟩,
    ⟨(8379505869/100000000000 : ℚ), (163267322499/10000000000 : ℚ), (-702742827529/500000000000 : ℚ), 5⟩,
    ⟨(42530995179/500000000000 : ℚ), (79557679011/10000000000 : ℚ), (-27983293697/40000000000 : ℚ), 4⟩,
    ⟨(86551744397/1000000000000 : ℚ), (9422050247/2500000000 : ℚ), (-2725593719/8000000000 : ℚ), 4⟩,
    ⟨(44103535197/500000000000 : ℚ), (6938905539/5000000000 : ℚ), (-132839785481/1000000000000 : ℚ), 4⟩,
    ⟨(89964355099/1000000000000 : ℚ), (-57030769/625000000 : ℚ), (-591312737/500000000000 : ℚ), 3⟩,
    ⟨(91756067047/1000000000000 : ℚ), (-1070638261/1000000000 : ℚ), (43874316503/500000000000 : ℚ), 3⟩,
    ⟨(11689168969/125000000000 : ℚ), (-17499607097/10000000000 : ℚ), (37661719293/250000000000 : ℚ), 3⟩,
    ⟨(23792169437/250000000000 : ℚ), (-447206981/200000000 : ℚ), (19648736917/100000000000 : ℚ), 3⟩,
    ⟨(96658431787/1000000000000 : ℚ), (-12945624793/5000000000 : ℚ), (7198291159/31250000000 : ℚ), 3⟩,
    ⟨(19585072691/200000000000 : ℚ), (-7110943489/2500000000 : ℚ), (255175569897/1000000000000 : ℚ), 3⟩,
    ⟨(98920785279/1000000000000 : ℚ), (-15112909917/5000000000 : ℚ), (17044597891/62500000000 : ℚ), 3⟩,
    ⟨(99606443757/1000000000000 : ℚ), (-3135910263/1000000000 : ℚ), (141981269019/500000000000 : ℚ), 3⟩,
    ⟨(49977994709/500000000000 : ℚ), (-7977708741/2500000000 : ℚ), (289467741897/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-15989568893/5000000000 : ℚ), (145075309857/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (65150209393/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control112.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control112.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate112

-- Control113
namespace DiagonalRamsey.JointInheritedCertificate113
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62801842771/250000000000 : ℚ), (4796298906139/5000000000 : ℚ), (-30223281620371/125000000000 : ℚ), 11⟩,
    ⟨(50480930727/200000000000 : ℚ), (1039865474947/10000000000 : ℚ), (-2674695846861/100000000000 : ℚ), 8⟩,
    ⟨(254787688251/1000000000000 : ℚ), (72089137857/2000000000 : ℚ), (-596488080127/62500000000 : ℚ), 6⟩,
    ⟨(258333525007/1000000000000 : ℚ), (87711989569/5000000000 : ℚ), (-4804150399611/1000000000000 : ℚ), 5⟩,
    ⟨(65752003889/250000000000 : ℚ), (100485332373/10000000000 : ℚ), (-8917632939/3125000000 : ℚ), 5⟩,
    ⟨(268766141999/1000000000000 : ℚ), (63295578061/10000000000 : ℚ), (-933124409267/500000000000 : ℚ), 4⟩,
    ⟨(27555245043/100000000000 : ℚ), (42397500269/10000000000 : ℚ), (-1298280770541/1000000000000 : ℚ), 4⟩,
    ⟨(283301584989/1000000000000 : ℚ), (2962448027/1000000000 : ℚ), (-470921140679/500000000000 : ℚ), 3⟩,
    ⟨(11677556691/40000000000 : ℚ), (21328039541/10000000000 : ℚ), (-351759857029/500000000000 : ℚ), 3⟩,
    ⟨(9418164533/31250000000 : ℚ), (3921066949/2500000000 : ℚ), (-536288929061/1000000000000 : ℚ), 3⟩,
    ⟨(311537693361/1000000000000 : ℚ), (11702136577/10000000000 : ℚ), (-414386619663/1000000000000 : ℚ), 3⟩,
    ⟨(322310390233/1000000000000 : ℚ), (8807472227/10000000000 : ℚ), (-322740599457/1000000000000 : ℚ), 2⟩,
    ⟨(333595608713/1000000000000 : ℚ), (665026151/1000000000 : ℚ), (-252059721109/1000000000000 : ℚ), 2⟩,
    ⟨(172642332989/500000000000 : ℚ), (5008167931/10000000000 : ℚ), (-98183626769/500000000000 : ℚ), 2⟩,
    ⟨(5582265469/15625000000 : ℚ), (1867540219/5000000000 : ℚ), (-592502379/3906250000 : ℚ), 2⟩,
    ⟨(369421203757/1000000000000 : ℚ), (1366106189/5000000000 : ℚ), (-57633267151/500000000000 : ℚ), 2⟩,
    ⟨(381636236219/1000000000000 : ℚ), (1931144367/10000000000 : ℚ), (-42600954869/500000000000 : ℚ), 2⟩,
    ⟨(9844811249/25000000000 : ℚ), (160437539/1250000000 : ℚ), (-12020952279/200000000000 : ℚ), 2⟩,
    ⟨(202886386999/500000000000 : ℚ), (94307447/1250000000 : ℚ), (-304406499/7812500000 : ℚ), 2⟩,
    ⟨(417461831263/1000000000000 : ℚ), (159283377/5000000000 : ℚ), (-4205744591/200000000000 : ℚ), 2⟩,
    ⟨(428747049743/1000000000000 : ℚ), (-43039817/10000000000 : ℚ), (-1146771951/200000000000 : ℚ), 2⟩,
    ⟨(87903949323/200000000000 : ℚ), (-172249863/5000000000 : ℚ), (7350069469/1000000000000 : ℚ), 2⟩,
    ⟨(11241904373/25000000000 : ℚ), (-18641181/312500000 : ℚ), (115952089/6250000000 : ℚ), 2⟩,
    ⟨(459118522701/1000000000000 : ℚ), (-403631873/5000000000 : ℚ), (14063466243/500000000000 : ℚ), 2⟩,
    ⟨(467755854987/1000000000000 : ℚ), (-983009877/10000000000 : ℚ), (4533821771/125000000000 : ℚ), 2⟩,
    ⟨(475504989547/1000000000000 : ℚ), (-1128588333/10000000000 : ℚ), (43135804677/1000000000000 : ℚ), 2⟩,
    ⟨(241145648989/500000000000 : ℚ), (-1247722251/10000000000 : ℚ), (48840688563/1000000000000 : ℚ), 2⟩,
    ⟨(24402471221/50000000000 : ℚ), (-1343267081/10000000000 : ℚ), (26738003841/500000000000 : ℚ), 2⟩,
    ⟨(492723914969/1000000000000 : ℚ), (-708693423/5000000000 : ℚ), (57110626439/1000000000000 : ℚ), 2⟩,
    ⟨(19850790069/40000000000 : ℚ), (-294336451/2000000000 : ℚ), (1195909391/20000000000 : ℚ), 2⟩,
    ⟨(498652786341/1000000000000 : ℚ), (-150728227/1000000000 : ℚ), (15391604627/250000000000 : ℚ), 2⟩,
    ⟨(124962517223/250000000000 : ℚ), (-381226747/2500000000 : ℚ), (7805791667/125000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2982621/19531250 : ℚ), (2502242603/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (280047162999/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control113.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control113.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate113

-- Control114
namespace DiagonalRamsey.JointInheritedCertificate114
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6598460221/25000000000 : ℚ), (4896746726913/5000000000 : ℚ), (-64835956127561/250000000000 : ℚ), 11⟩,
    ⟨(132585336169/500000000000 : ℚ), (531020358201/5000000000 : ℚ), (-1147573506669/40000000000 : ℚ), 8⟩,
    ⟨(133811665981/500000000000 : ℚ), (14732999163/400000000 : ℚ), (-511849480171/50000000000 : ℚ), 6⟩,
    ⟨(271272767259/1000000000000 : ℚ), (179366672233/10000000000 : ℚ), (-1288296083049/250000000000 : ℚ), 5⟩,
    ⟨(276083832173/1000000000000 : ℚ), (4112411421/400000000 : ℚ), (-612215031421/200000000000 : ℚ), 5⟩,
    ⟨(141005096759/500000000000 : ℚ), (64803936149/10000000000 : ℚ), (-1001013355883/500000000000 : ℚ), 4⟩,
    ⟨(57798955439/200000000000 : ℚ), (8687691429/2000000000 : ℚ), (-69643522089/50000000000 : ℚ), 4⟩,
    ⟨(59394063569/200000000000 : ℚ), (1898396983/625000000 : ℚ), (-1010613775777/1000000000000 : ℚ), 3⟩,
    ⟨(76465001663/250000000000 : ℚ), (10942703813/5000000000 : ℚ), (-151011935519/200000000000 : ℚ), 3⟩,
    ⟨(315578231053/1000000000000 : ℚ), (3221707241/2000000000 : ℚ), (-575769034913/1000000000000 : ℚ), 3⟩,
    ⟨(163015699617/500000000000 : ℚ), (6015602287/5000000000 : ℚ), (-4451072563/10000000000 : ℚ), 3⟩,
    ⟨(2633740949/7812500000 : ℚ), (9066626327/10000000000 : ℚ), (-346907037683/1000000000000 : ℚ), 2⟩,
    ⟨(87183444909/250000000000 : ℚ), (3428493921/5000000000 : ℚ), (-135600873059/500000000000 : ℚ), 2⟩,
    ⟨(360764355523/1000000000000 : ℚ), (5174915237/10000000000 : ℚ), (-42315939657/200000000000 : ℚ), 2⟩,
    ⟨(373094708111/1000000000000 : ℚ), (3870925793/10000000000 : ℚ), (-163768033881/1000000000000 : ℚ), 2⟩,
    ⟨(385606089363/1000000000000 : ℚ), (1421953717/5000000000 : ℚ), (-124833841791/1000000000000 : ℚ), 2⟩,
    ⟨(398178007839/1000000000000 : ℚ), (2023795791/10000000000 : ℚ), (-11589135451/125000000000 : ℚ), 2⟩,
    ⟨(410689389091/1000000000000 : ℚ), (1361025767/10000000000 : ℚ), (-65922091789/1000000000000 : ℚ), 2⟩,
    ⟨(423019741679/1000000000000 : ℚ), (819901283/10000000000 : ℚ), (-43374995763/1000000000000 : ℚ), 2⟩,
    ⟨(217525158783/500000000000 : ℚ), (46789007/1250000000 : ℚ), (-4852966499/200000000000 : ℚ), 2⟩,
    ⟨(446665255731/1000000000000 : ℚ), (4899823/10000000000 : ℚ), (-1596830481/200000000000 : ℚ), 2⟩,
    ⟨(28609543623/62500000000 : ℚ), (-302855961/10000000000 : ℚ), (5929193213/1000000000000 : ℚ), 2⟩,
    ⟨(468205866149/1000000000000 : ℚ), (-559955169/10000000000 : ℚ), (17829810573/1000000000000 : ℚ), 2⟩,
    ⟨(9558481811/20000000000 : ℚ), (-96849723/1250000000 : ℚ), (2799152727/100000000000 : ℚ), 2⟩,
    ⟨(486813779357/1000000000000 : ℚ), (-953836699/10000000000 : ℚ), (36626659043/1000000000000 : ℚ), 2⟩,
    ⟨(494789320007/1000000000000 : ℚ), (-275511517/2500000000 : ℚ), (5487508273/125000000000 : ℚ), 2⟩,
    ⟨(125443475921/250000000000 : ℚ), (-244652107/2000000000 : ℚ), (6242439889/125000000000 : ℚ), 2⟩,
    ⟨(50770026503/100000000000 : ℚ), (-330105639/2500000000 : ℚ), (54843400597/1000000000000 : ℚ), 2⟩,
    ⟨(512511329943/1000000000000 : ℚ), (-348940773/2500000000 : ℚ), (29343221391/500000000000 : ℚ), 2⟩,
    ⟨(516160765241/1000000000000 : ℚ), (-725466499/5000000000 : ℚ), (61523979507/1000000000000 : ℚ), 2⟩,
    ⟨(103722684973/200000000000 : ℚ), (-743548483/5000000000 : ℚ), (15848760463/250000000000 : ℚ), 2⟩,
    ⟨(259922844181/500000000000 : ℚ), (-47031189/312500000 : ℚ), (64324517121/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1507227297/10000000000 : ℚ), (64440420873/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (272556098911/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control114.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control114.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate114

-- Control115
namespace DiagonalRamsey.JointInheritedCertificate115
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(283496830363/1000000000000 : ℚ), (40592724140993/10000000000 : ℚ), (-1151938774074527/1000000000000 : ℚ), 13⟩,
    ⟨(283817796753/1000000000000 : ℚ), (895376164289/2000000000 : ℚ), (-15981599897303/125000000000 : ℚ), 10⟩,
    ⟨(142229478149/500000000000 : ℚ), (796232751543/5000000000 : ℚ), (-22962966306079/500000000000 : ℚ), 8⟩,
    ⟨(142709382193/500000000000 : ℚ), (800011859993/10000000000 : ℚ), (-23354258321333/1000000000000 : ℚ), 7⟩,
    ⟨(143347454379/500000000000 : ℚ), (475174716909/10000000000 : ℚ), (-879094843711/62500000000 : ℚ), 6⟩,
    ⟨(288284315069/1000000000000 : ℚ), (155781534739/5000000000 : ℚ), (-1872717179539/200000000000 : ℚ), 6⟩,
    ⟨(2901831543/10000000000 : ℚ), (109015179093/5000000000 : ℚ), (-6659292159847/1000000000000 : ℚ), 5⟩,
    ⟨(292386851981/1000000000000 : ℚ), (998506893/62500000 : ℚ), (-496260898093/100000000000 : ℚ), 5⟩,
    ⟨(294890099211/1000000000000 : ℚ), (121131511441/10000000000 : ℚ), (-3828699766119/1000000000000 : ℚ), 5⟩,
    ⟨(5953737309/20000000000 : ℚ), (94287925313/10000000000 : ℚ), (-1516817211607/500000000000 : ℚ), 4⟩,
    ⟨(300770413041/1000000000000 : ℚ), (37467115819/5000000000 : ℚ), (-1227358182173/500000000000 : ℚ), 4⟩,
    ⟨(38016664181/125000000000 : ℚ), (12112217487/2000000000 : ℚ), (-2020145190723/1000000000000 : ℚ), 4⟩,
    ⟨(6155349303/20000000000 : ℚ), (49623929679/10000000000 : ℚ), (-1685633450249/1000000000000 : ℚ), 4⟩,
    ⟨(155832056579/500000000000 : ℚ), (41130399457/10000000000 : ℚ), (-355665185773/250000000000 : ℚ), 4⟩,
    ⟨(39476733763/125000000000 : ℚ), (34419734359/10000000000 : ℚ), (-37880864361/31250000000 : ℚ), 3⟩,
    ⟨(320206738861/1000000000000 : ℚ), (3629808337/1250000000 : ℚ), (-1041110562737/1000000000000 : ℚ), 3⟩,
    ⟨(20302008539/62500000000 : ℚ), (385425441/156250000 : ℚ), (-900171875591/1000000000000 : ℚ), 3⟩,
    ⟨(329678920403/1000000000000 : ℚ), (21075994599/10000000000 : ℚ), (-782680939139/1000000000000 : ℚ), 3⟩,
    ⟨(20920963367/62500000000 : ℚ), (1130988347/625000000 : ℚ), (-136741011713/200000000000 : ℚ), 3⟩,
    ⟨(42498679437/125000000000 : ℚ), (15600430411/10000000000 : ℚ), (-599543106849/1000000000000 : ℚ), 3⟩,
    ⟨(86357081969/250000000000 : ℚ), (6747021487/5000000000 : ℚ), (-527374273577/1000000000000 : ℚ), 3⟩,
    ⟨(87759747061/250000000000 : ℚ), (11702957367/10000000000 : ℚ), (-465018388237/1000000000000 : ℚ), 3⟩,
    ⟨(356807900029/1000000000000 : ℚ), (10169787841/10000000000 : ℚ), (-410769078043/1000000000000 : ℚ), 3⟩,
    ⟨(72544233083/200000000000 : ℚ), (69135563/78125000 : ℚ), (-141904499/390625000 : ℚ), 2⟩,
    ⟨(368764538829/1000000000000 : ℚ), (3852859449/5000000000 : ℚ), (-64291448701/200000000000 : ℚ), 2⟩,
    ⟨(74984692251/200000000000 : ℚ), (6710053617/10000000000 : ℚ), (-142220937517/500000000000 : ℚ), 2⟩,
    ⟨(381183095309/1000000000000 : ℚ), (5839023937/10000000000 : ℚ), (-50303791579/200000000000 : ℚ), 2⟩,
    ⟨(77505672197/200000000000 : ℚ), (5073606329/10000000000 : ℚ), (-222105333621/1000000000000 : ℚ), 2⟩,
    ⟨(196971985991/500000000000 : ℚ), (4398181963/10000000000 : ℚ), (-195718856157/1000000000000 : ℚ), 2⟩,
    ⟨(400414472531/1000000000000 : ℚ), (189992243/500000000 : ℚ), (-85979116391/500000000000 : ℚ), 2⟩,
    ⟨(406924274629/1000000000000 : ℚ), (408483417/1250000000 : ℚ), (-18810926251/125000000000 : ℚ), 2⟩,
    ⟨(413457695593/1000000000000 : ℚ), (2793283301/10000000000 : ℚ), (-32755842493/250000000000 : ℚ), 2⟩,
    ⟨(656248431/1562500000 : ℚ), (296070093/1250000000 : ℚ), (-56663255669/500000000000 : ℚ), 2⟩,
    ⟨(106633104201/250000000000 : ℚ), (198734233/1000000000 : ℚ), (-48596503191/500000000000 : ℚ), 2⟩,
    ⟨(216521109451/500000000000 : ℚ), (205529811/1250000000 : ℚ), (-5153042777/62500000000 : ℚ), 2⟩,
    ⟨(439512719451/1000000000000 : ℚ), (1334661263/10000000000 : ℚ), (-430900639/6250000000 : ℚ), 2⟩,
    ⟨(27870520653/62500000000 : ℚ), (1054690067/10000000000 : ℚ), (-7068818079/125000000000 : ℚ), 2⟩,
    ⟨(113068399031/250000000000 : ℚ), (400481293/5000000000 : ℚ), (-22578380577/500000000000 : ℚ), 2⟩,
    ⟨(229266615089/500000000000 : ℚ), (114117127/2000000000 : ℚ), (-34666286739/1000000000000 : ℚ), 2⟩,
    ⟨(116173038151/250000000000 : ℚ), (361061949/10000000000 : ℚ), (-24995230587/1000000000000 : ℚ), 2⟩,
    ⟨(235367763009/500000000000 : ℚ), (42557443/2500000000 : ℚ), (-1607044189/100000000000 : ℚ), 2⟩,
    ⟨(119162197851/250000000000 : ℚ), (-757443/2000000000 : ℚ), (-1565596199/200000000000 : ℚ), 2⟩,
    ⟨(120604425797/250000000000 : ℚ), (-162621573/10000000000 : ℚ), (-42367823/200000000000 : ℚ), 2⟩,
    ⟨(488028363557/1000000000000 : ℚ), (-76924233/2500000000 : ℚ), (273085527/40000000000 : ℚ), 2⟩,
    ⟨(493467255937/1000000000000 : ℚ), (-440257203/10000000000 : ℚ), (6666080053/500000000000 : ℚ), 2⟩,
    ⟨(498721277561/1000000000000 : ℚ), (-561391159/10000000000 : ℚ), (19341260887/1000000000000 : ℚ), 2⟩,
    ⟨(50377777103/100000000000 : ℚ), (-67205319/1000000000 : ℚ), (24887954977/1000000000000 : ℚ), 2⟩,
    ⟨(508624554809/1000000000000 : ℚ), (-193270219/2500000000 : ℚ), (30001796111/1000000000000 : ℚ), 2⟩,
    ⟨(513249952571/1000000000000 : ℚ), (-216302477/2500000000 : ℚ), (3470885593/100000000000 : ℚ), 2⟩,
    ⟨(32352676333/62500000000 : ℚ), (-949086779/10000000000 : ℚ), (4879016751/125000000000 : ℚ), 2⟩,
    ⟨(20871703131/40000000000 : ℚ), (-512639807/5000000000 : ℚ), (8598382281/200000000000 : ℚ), 2⟩,
    ⟨(262844613141/500000000000 : ℚ), (-273571853/2500000000 : ℚ), (46606054497/1000000000000 : ℚ), 2⟩,
    ⟨(105864675597/200000000000 : ℚ), (-1156547951/10000000000 : ℚ), (49890277411/1000000000000 : ℚ), 2⟩,
    ⟨(66585784799/125000000000 : ℚ), (-151555569/1250000000 : ℚ), (26429184373/500000000000 : ℚ), 2⟩,
    ⟨(535769825983/1000000000000 : ℚ), (-631155931/5000000000 : ℚ), (55522387003/1000000000000 : ℚ), 2⟩,
    ⟨(538566592221/1000000000000 : ℚ), (-653220397/5000000000 : ℚ), (57892829027/1000000000000 : ℚ), 2⟩,
    ⟨(135267459863/250000000000 : ℚ), (-1345082739/10000000000 : ℚ), (59978775033/1000000000000 : ℚ), 2⟩,
    ⟨(543273537133/1000000000000 : ℚ), (-1378453141/10000000000 : ℚ), (3089400639/50000000000 : ℚ), 2⟩,
    ⟨(136293094091/250000000000 : ℚ), (-1406734511/10000000000 : ℚ), (12665428607/200000000000 : ℚ), 2⟩,
    ⟨(21870471307/40000000000 : ℚ), (-44689967/312500000 : ℚ), (32300834153/500000000000 : ℚ), 2⟩,
    ⟨(274018963523/500000000000 : ℚ), (-724305097/5000000000 : ℚ), (65616066719/1000000000000 : ℚ), 2⟩,
    ⟨(109799547027/200000000000 : ℚ), (-1462425339/10000000000 : ℚ), (2654954049/40000000000 : ℚ), 2⟩,
    ⟨(549638894679/1000000000000 : ℚ), (-367899021/2500000000 : ℚ), (1671940419/25000000000 : ℚ), 2⟩,
    ⟨(549959861069/1000000000000 : ℚ), (-738084857/5000000000 : ℚ), (67129074649/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-369185217/2500000000 : ℚ), (16790121733/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (260960961167/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control115.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control115.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate115

-- Control116
namespace DiagonalRamsey.JointInheritedCertificate116
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(159099809893/500000000000 : ℚ), (43091455897243/10000000000 : ℚ), (-274492458909259/200000000000 : ℚ), 13⟩,
    ⟨(318539009561/1000000000000 : ℚ), (2377040729067/5000000000 : ℚ), (-76164558526157/500000000000 : ℚ), 10⟩,
    ⟨(319216971491/1000000000000 : ℚ), (105746549023/625000000 : ℚ), (-1367962221719/25000000000 : ℚ), 8⟩,
    ⟨(320231872307/1000000000000 : ℚ), (21263214001/250000000 : ℚ), (-1739112350319/62500000000 : ℚ), 7⟩,
    ⟨(20098829189/62500000000 : ℚ), (505543849929/10000000000 : ℚ), (-13092876883/781250000 : ℚ), 6⟩,
    ⟨(5050967263/15625000000 : ℚ), (165867641211/5000000000 : ℚ), (-11156865289551/1000000000000 : ℚ), 6⟩,
    ⟨(162634868463/500000000000 : ℚ), (2904245467/125000000 : ℚ), (-1983728405899/250000000000 : ℚ), 5⟩,
    ⟨(40949990783/125000000000 : ℚ), (85196883339/5000000000 : ℚ), (-5913473053599/1000000000000 : ℚ), 5⟩,
    ⟨(66049371843/200000000000 : ℚ), (25861776147/2000000000 : ℚ), (-570318653063/125000000000 : ℚ), 5⟩,
    ⟨(333204159087/1000000000000 : ℚ), (50372764889/5000000000 : ℚ), (-225958987589/62500000000 : ℚ), 4⟩,
    ⟨(84116175371/250000000000 : ℚ), (40070705881/5000000000 : ℚ), (-1462835854843/500000000000 : ℚ), 4⟩,
    ⟨(170010315737/500000000000 : ℚ), (32415700487/5000000000 : ℚ), (-2407987426563/1000000000000 : ℚ), 4⟩,
    ⟨(343863382511/1000000000000 : ℚ), (6646854191/1250000000 : ℚ), (-502381332829/250000000000 : ℚ), 4⟩,
    ⟨(347983697071/1000000000000 : ℚ), (44117451683/10000000000 : ℚ), (-848152608423/500000000000 : ℚ), 4⟩,
    ⟨(70474329791/200000000000 : ℚ), (36957160287/10000000000 : ℚ), (-180705355257/125000000000 : ℚ), 3⟩,
    ⟨(178508333601/500000000000 : ℚ), (124848139/40000000 : ℚ), (-1241926029359/1000000000000 : ℚ), 3⟩,
    ⟨(361907561557/1000000000000 : ℚ), (13271296441/5000000000 : ℚ), (-537062451001/500000000000 : ℚ), 3⟩,
    ⟨(91758137357/250000000000 : ℚ), (11352132407/5000000000 : ℚ), (-934267866517/1000000000000 : ℚ), 3⟩,
    ⟨(93094821067/250000000000 : ℚ), (9758683297/5000000000 : ℚ), (-816477795247/1000000000000 : ℚ), 3⟩,
    ⟨(377934885327/1000000000000 : ℚ), (421189601/250000000 : ℚ), (-716344858691/1000000000000 : ℚ), 3⟩,
    ⟨(383685968673/1000000000000 : ℚ), (14592965849/10000000000 : ℚ), (-315254015823/500000000000 : ℚ), 3⟩,
    ⟨(97404669861/250000000000 : ℚ), (3168764927/2500000000 : ℚ), (-11127390707/20000000000 : ℚ), 3⟩,
    ⟨(19785936261/50000000000 : ℚ), (110327503/100000000 : ℚ), (-122974014151/250000000000 : ℚ), 3⟩,
    ⟨(50246426307/125000000000 : ℚ), (1202237273/1250000000 : ℚ), (-27217366339/62500000000 : ℚ), 2⟩,
    ⟨(204180835943/500000000000 : ℚ), (8392202857/10000000000 : ℚ), (-77165460921/200000000000 : ℚ), 2⟩,
    ⟨(41487411481/100000000000 : ℚ), (1831228229/2500000000 : ℚ), (-85476157031/250000000000 : ℚ), 2⟩,
    ⟨(421493050183/1000000000000 : ℚ), (3195565991/5000000000 : ℚ), (-75715743099/250000000000 : ℚ), 2⟩,
    ⟨(428202532409/1000000000000 : ℚ), (5570549889/10000000000 : ℚ), (-16750444841/62500000000 : ℚ), 2⟩,
    ⟨(1359332493/3125000000 : ℚ), (2423240791/5000000000 : ℚ), (-59190542327/250000000000 : ℚ), 2⟩,
    ⟨(441828303307/1000000000000 : ℚ), (4205131511/10000000000 : ℚ), (-208649544607/1000000000000 : ℚ), 2⟩,
    ⟨(448711766303/1000000000000 : ℚ), (1817512571/5000000000 : ℚ), (-91634184107/500000000000 : ℚ), 2⟩,
    ⟨(455620203881/1000000000000 : ℚ), (625313147/2000000000 : ℚ), (-160280936377/1000000000000 : ℚ), 2⟩,
    ⟨(46253697301/100000000000 : ℚ), (2671685879/10000000000 : ℚ), (-34850314053/250000000000 : ℚ), 2⟩,
    ⟨(469445410589/1000000000000 : ℚ), (452714291/2000000000 : ℚ), (-120385942971/1000000000000 : ℚ), 2⟩,
    ⟨(29770554599/62500000000 : ℚ), (59263793/312500000 : ℚ), (-103026933407/1000000000000 : ℚ), 2⟩,
    ⟨(120792694783/250000000000 : ℚ), (1565370671/10000000000 : ℚ), (-1089320173/12500000000 : ℚ), 2⟩,
    ⟨(244977322241/500000000000 : ℚ), (1266147497/10000000000 : ℚ), (-14517611481/200000000000 : ℚ), 2⟩,
    ⟨(496664126709/1000000000000 : ℚ), (497578449/5000000000 : ℚ), (-29610568713/500000000000 : ℚ), 2⟩,
    ⟨(251641531041/500000000000 : ℚ), (749285783/10000000000 : ℚ), (-46929336511/1000000000000 : ℚ), 2⟩,
    ⟨(254897752503/500000000000 : ℚ), (262922433/5000000000 : ℚ), (-17806057077/500000000000 : ℚ), 2⟩,
    ⟨(103237153287/200000000000 : ℚ), (322504227/10000000000 : ℚ), (-12590861703/500000000000 : ℚ), 2⟩,
    ⟨(522438451671/1000000000000 : ℚ), (68619937/5000000000 : ℚ), (-972586927/62500000000 : ℚ), 2⟩,
    ⟨(528538497447/1000000000000 : ℚ), (-31710753/10000000000 : ℚ), (-1670948273/250000000000 : ℚ), 2⟩,
    ⟨(267235604109/500000000000 : ℚ), (-92942989/5000000000 : ℚ), (755111783/500000000000 : ℚ), 2⟩,
    ⟨(108044458313/200000000000 : ℚ), (-163315549/5000000000 : ℚ), (1814544801/200000000000 : ℚ), 2⟩,
    ⟨(545777892623/1000000000000 : ℚ), (-227562331/5000000000 : ℚ), (16049600079/1000000000000 : ℚ), 2⟩,
    ⟨(68890578433/125000000000 : ℚ), (-286200333/5000000000 : ℚ), (11240674571/500000000000 : ℚ), 2⟩,
    ⟨(278124807667/500000000000 : ℚ), (-169841837/2500000000 : ℚ), (14201868661/500000000000 : ℚ), 2⟩,
    ⟨(561140509689/1000000000000 : ℚ), (-388411579/5000000000 : ℚ), (33848367599/1000000000000 : ℚ), 2⟩,
    ⟨(565785527937/1000000000000 : ℚ), (-216367587/2500000000 : ℚ), (303462237/7812500000 : ℚ), 2⟩,
    ⟨(570173479821/1000000000000 : ℚ), (-945926563/10000000000 : ℚ), (43412801233/1000000000000 : ℚ), 2⟩,
    ⟨(28714689719/50000000000 : ℚ), (-1018734753/10000000000 : ℚ), (47579042207/1000000000000 : ℚ), 2⟩,
    ⟨(578136545417/1000000000000 : ℚ), (-1084371637/10000000000 : ℚ), (6420133853/125000000000 : ℚ), 2⟩,
    ⟨(36355779713/62500000000 : ℚ), (-285813739/2500000000 : ℚ), (3423484271/62500000000 : ℚ), 2⟩,
    ⟨(116990603561/200000000000 : ℚ), (-1195749679/10000000000 : ℚ), (57837846869/1000000000000 : ℚ), 2⟩,
    ⟨(146977579419/250000000000 : ℚ), (-1242173299/10000000000 : ℚ), (12112049527/200000000000 : ℚ), 2⟩,
    ⟨(590557250627/1000000000000 : ℚ), (-320700089/2500000000 : ℚ), (2518164487/40000000000 : ℚ), 2⟩,
    ⟨(118577487993/200000000000 : ℚ), (-1317866273/10000000000 : ℚ), (6502902833/100000000000 : ℚ), 2⟩,
    ⟨(29744763603/50000000000 : ℚ), (-673785297/5000000000 : ℚ), (66793134491/1000000000000 : ℚ), 2⟩,
    ⟨(596575909867/1000000000000 : ℚ), (-171509961/1250000000 : ℚ), (68253223949/1000000000000 : ℚ), 2⟩,
    ⟨(74740663073/125000000000 : ℚ), (-1391528979/10000000000 : ℚ), (34707415869/500000000000 : ℚ), 2⟩,
    ⟨(2994701027/5000000000 : ℚ), (-1406024739/10000000000 : ℚ), (4392644037/62500000000 : ℚ), 2⟩,
    ⟨(59961816733/100000000000 : ℚ), (-35391137/250000000 : ℚ), (70858855239/1000000000000 : ℚ), 2⟩,
    ⟨(299978778553/500000000000 : ℚ), (-1420442989/10000000000 : ℚ), (8893325501/125000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-355260519/2500000000 : ℚ), (71182547943/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (240489986137/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control116.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control116.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate116
