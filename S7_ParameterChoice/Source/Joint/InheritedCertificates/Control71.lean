import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate71
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(310767962559/1000000000000 : ℚ), (891331577469/200000000 : ℚ), (-1386355985135117/1000000000000 : ℚ), 13⟩,
    ⟨(155558151371/500000000000 : ℚ), (2457704701229/5000000000 : ℚ), (-76935280191587/500000000000 : ℚ), 9⟩,
    ⟨(311812143927/1000000000000 : ℚ), (1748591143881/10000000000 : ℚ), (-27635887019831/500000000000 : ℚ), 8⟩,
    ⟨(312853809771/1000000000000 : ℚ), (219632073119/2500000000 : ℚ), (-3513357789877/125000000000 : ℚ), 7⟩,
    ⟨(314238790809/1000000000000 : ℚ), (521865871239/10000000000 : ℚ), (-8463976137333/500000000000 : ℚ), 6⟩,
    ⟨(157981875251/500000000000 : ℚ), (342217509153/10000000000 : ℚ), (-2817318740291/250000000000 : ℚ), 6⟩,
    ⟨(31802453327/100000000000 : ℚ), (11975630887/500000000 : ℚ), (-4007383585701/500000000000 : ℚ), 5⟩,
    ⟨(320416174507/1000000000000 : ℚ), (17552656077/1000000000 : ℚ), (-5972932308647/1000000000000 : ℚ), 5⟩,
    ⟨(323132912539/1000000000000 : ℚ), (66552708979/5000000000 : ℚ), (-4608409641889/1000000000000 : ℚ), 5⟩,
    ⟨(326168202507/1000000000000 : ℚ), (51813115173/5000000000 : ℚ), (-730339782689/200000000000 : ℚ), 4⟩,
    ⟨(82378683033/250000000000 : ℚ), (41185981681/5000000000 : ℚ), (-2955134134299/1000000000000 : ℚ), 4⟩,
    ⟨(33316443933/100000000000 : ℚ), (16646836169/2500000000 : ℚ), (-2432302740293/1000000000000 : ℚ), 4⟩,
    ⟨(168554265819/500000000000 : ℚ), (13644095649/2500000000 : ℚ), (-2029903917279/1000000000000 : ℚ), 4⟩,
    ⟨(34133750739/100000000000 : ℚ), (45249386383/10000000000 : ℚ), (-1713612455101/1000000000000 : ℚ), 3⟩,
    ⟨(69168235723/200000000000 : ℚ), (7576150497/2000000000 : ℚ), (-730256747151/500000000000 : ℚ), 3⟩,
    ⟨(175304347787/500000000000 : ℚ), (31972487687/10000000000 : ℚ), (-627417938319/500000000000 : ℚ), 3⟩,
    ⟨(355628572901/1000000000000 : ℚ), (13586921901/5000000000 : ℚ), (-542718594107/500000000000 : ℚ), 3⟩,
    ⟨(360888717271/1000000000000 : ℚ), (23232177543/10000000000 : ℚ), (-236066080847/250000000000 : ℚ), 3⟩,
    ⟨(366376456537/1000000000000 : ℚ), (19961908649/10000000000 : ℚ), (-825379916299/1000000000000 : ℚ), 3⟩,
    ⟨(372078570253/1000000000000 : ℚ), (17224344857/10000000000 : ℚ), (-724328829873/1000000000000 : ℚ), 3⟩,
    ⟨(377981321529/1000000000000 : ℚ), (14914236631/10000000000 : ℚ), (-127543085659/200000000000 : ℚ), 2⟩,
    ⟨(384070490119/1000000000000 : ℚ), (6475307529/5000000000 : ℚ), (-562915129419/1000000000000 : ℚ), 2⟩,
    ⟨(390331406683/1000000000000 : ℚ), (11270422897/10000000000 : ℚ), (-124468402723/250000000000 : ℚ), 2⟩,
    ⟨(634798381/1600000000 : ℚ), (4912003629/5000000000 : ℚ), (-4409644967/10000000000 : ℚ), 2⟩,
    ⟨(50413471741/125000000000 : ℚ), (8571877673/10000000000 : ℚ), (-97721708899/250000000000 : ℚ), 2⟩,
    ⟨(102497990851/250000000000 : ℚ), (1870584941/2500000000 : ℚ), (-86647536183/250000000000 : ℚ), 2⟩,
    ⟨(208392726877/500000000000 : ℚ), (6529744683/10000000000 : ℚ), (-61443771999/200000000000 : ℚ), 2⟩,
    ⟨(84734375773/200000000000 : ℚ), (711647259/1250000000 : ℚ), (-68017663507/250000000000 : ℚ), 2⟩,
    ⟨(86126929747/200000000000 : ℚ), (4955467057/10000000000 : ℚ), (-240564801247/1000000000000 : ℚ), 2⟩,
    ⟨(437656989443/1000000000000 : ℚ), (134450633/312500000 : ℚ), (-10610895607/50000000000 : ℚ), 2⟩,
    ⟨(88944396711/200000000000 : ℚ), (3722240529/10000000000 : ℚ), (-46656284697/250000000000 : ℚ), 2⟩,
    ⟨(1411914409/3125000000 : ℚ), (1602533573/5000000000 : ℚ), (-163445483969/1000000000000 : ℚ), 2⟩,
    ⟨(458911789477/1000000000000 : ℚ), (2742615899/10000000000 : ℚ), (-35597555057/250000000000 : ℚ), 2⟩,
    ⟨(466002416803/1000000000000 : ℚ), (1163947019/5000000000 : ℚ), (-7700855551/62500000000 : ℚ), 2⟩,
    ⟨(236533705457/500000000000 : ℚ), (97748643/500000000 : ℚ), (-52852967631/500000000000 : ℚ), 2⟩,
    ⟨(240044875811/500000000000 : ℚ), (161880507/1000000000 : ℚ), (-89686772693/1000000000000 : ℚ), 2⟩,
    ⟨(487052521493/1000000000000 : ℚ), (657538603/5000000000 : ℚ), (-75000966829/1000000000000 : ℚ), 2⟩,
    ⟨(123484736651/250000000000 : ℚ), (260022423/2500000000 : ℚ), (-15378576407/250000000000 : ℚ), 2⟩,
    ⟨(250366218477/500000000000 : ℚ), (790658819/10000000000 : ℚ), (-24555186369/500000000000 : ℚ), 2⟩,
    ⟨(50741662643/100000000000 : ℚ), (564036243/10000000000 : ℚ), (-37687884947/1000000000000 : ℚ), 2⟩,
    ⟨(513975412233/1000000000000 : ℚ), (7156851/200000000 : ℚ), (-27158483327/1000000000000 : ℚ), 2⟩,
    ⟨(20815719747/40000000000 : ℚ), (34002437/2000000000 : ℚ), (-348897839/20000000000 : ℚ), 2⟩,
    ⟨(526653910239/1000000000000 : ℚ), (-1252377/10000000000 : ℚ), (-132490273/15625000000 : ℚ), 2⟩,
    ⟨(532743078829/1000000000000 : ℚ), (-157518941/10000000000 : ℚ), (-20245243/100000000000 : ℚ), 2⟩,
    ⟨(107729166021/200000000000 : ℚ), (-300157709/10000000000 : ℚ), (1859554477/250000000000 : ℚ), 2⟩,
    ⟨(544347943821/1000000000000 : ℚ), (-86073663/2000000000 : ℚ), (7244371281/500000000000 : ℚ), 2⟩,
    ⟨(549835683087/1000000000000 : ℚ), (-549202637/10000000000 : ℚ), (5247447947/250000000000 : ℚ), 2⟩,
    ⟨(555095827457/1000000000000 : ℚ), (-657584119/10000000000 : ℚ), (26977269269/1000000000000 : ℚ), 2⟩,
    ⟨(35007231549/62500000000 : ℚ), (-189081041/2500000000 : ℚ), (812072153/25000000000 : ℚ), 2⟩,
    ⟨(564883221743/1000000000000 : ℚ), (-846136083/10000000000 : ℚ), (7506930667/200000000000 : ℚ), 2⟩,
    ⟨(71173361621/125000000000 : ℚ), (-46382349/500000000 : ℚ), (4215730427/100000000000 : ℚ), 2⟩,
    ⟨(7170198359/12500000000 : ℚ), (-250351977/2500000000 : ℚ), (23186329663/500000000000 : ℚ), 1⟩,
    ⟨(144389990257/250000000000 : ℚ), (-533951269/5000000000 : ℚ), (50199938891/1000000000000 : ℚ), 1⟩,
    ⟨(290604834113/500000000000 : ℚ), (-563777289/5000000000 : ℚ), (53656033861/1000000000000 : ℚ), 1⟩,
    ⟨(584556197851/1000000000000 : ℚ), (-236146823/2000000000 : ℚ), (56755738733/1000000000000 : ℚ), 1⟩,
    ⟨(587591487819/1000000000000 : ℚ), (-1227763027/10000000000 : ℚ), (2975597593/50000000000 : ℚ), 1⟩,
    ⟨(590308225851/1000000000000 : ℚ), (-317229899/2500000000 : ℚ), (61935847723/1000000000000 : ℚ), 1⟩,
    ⟨(37043741693/62500000000 : ℚ), (-1304442421/10000000000 : ℚ), (64037024147/1000000000000 : ℚ), 1⟩,
    ⟨(4646567577/7812500000 : ℚ), (-333633429/2500000000 : ℚ), (32911813623/500000000000 : ℚ), 1⟩,
    ⟨(149121402387/250000000000 : ℚ), (-1359362063/10000000000 : ℚ), (13460491277/200000000000 : ℚ), 1⟩,
    ⟨(597870590587/1000000000000 : ℚ), (-344766169/2500000000 : ℚ), (4279940683/62500000000 : ℚ), 1⟩,
    ⟨(598912256431/1000000000000 : ℚ), (-1393749227/10000000000 : ℚ), (69357760863/1000000000000 : ℚ), 1⟩,
    ⟨(119921619523/200000000000 : ℚ), (-43859227/312500000 : ℚ), (69941801743/1000000000000 : ℚ), 1⟩,
    ⟨(599956437799/1000000000000 : ℚ), (-352088813/2500000000 : ℚ), (70233295217/1000000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-1408962141/10000000000 : ℚ), (8783713403/125000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (101899652323/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control71.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control71.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate71
