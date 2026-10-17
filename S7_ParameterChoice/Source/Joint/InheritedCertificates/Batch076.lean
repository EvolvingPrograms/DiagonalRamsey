import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control655
namespace DiagonalRamsey.JointInheritedCertificate655
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62573098829/250000000000 : ℚ), (727616565141/500000000 : ℚ), (-22796344275267/62500000000 : ℚ), 13⟩,
    ⟨(250772225349/1000000000000 : ℚ), (796724566869/5000000000 : ℚ), (-20138044263899/500000000000 : ℚ), 9⟩,
    ⟨(251727264389/1000000000000 : ℚ), (559672169431/10000000000 : ℚ), (-1789836928129/125000000000 : ℚ), 8⟩,
    ⟨(31643539361/125000000000 : ℚ), (276189789949/10000000000 : ℚ), (-7166966498169/1000000000000 : ℚ), 7⟩,
    ⟨(255021691353/1000000000000 : ℚ), (160279047513/10000000000 : ℚ), (-211182101249/50000000000 : ℚ), 6⟩,
    ⟨(51465870429/200000000000 : ℚ), (51037775501/5000000000 : ℚ), (-2733496196513/1000000000000 : ℚ), 6⟩,
    ⟨(260049073229/1000000000000 : ℚ), (68916287401/10000000000 : ℚ), (-1876194986209/1000000000000 : ℚ), 5⟩,
    ⟨(263154662203/1000000000000 : ℚ), (24167240781/5000000000 : ℚ), (-1338068848139/1000000000000 : ℚ), 5⟩,
    ⟨(266616210549/1000000000000 : ℚ), (17370443939/5000000000 : ℚ), (-489092284909/500000000000 : ℚ), 5⟩,
    ⟨(270400381663/1000000000000 : ℚ), (25329259647/10000000000 : ℚ), (-725601182053/1000000000000 : ℚ), 4⟩,
    ⟨(27447073191/100000000000 : ℚ), (4641690851/2500000000 : ℚ), (-541453673323/1000000000000 : ℚ), 4⟩,
    ⟨(278788061591/1000000000000 : ℚ), (13559698623/10000000000 : ℚ), (-100751152967/250000000000 : ℚ), 4⟩,
    ⟨(14165539623/50000000000 : ℚ), (9759209517/10000000000 : ℚ), (-296235730523/1000000000000 : ℚ), 4⟩,
    ⟨(287995368149/1000000000000 : ℚ), (6813653587/10000000000 : ℚ), (-53031652873/250000000000 : ℚ), 4⟩,
    ⟨(292796673631/1000000000000 : ℚ), (4489707713/10000000000 : ℚ), (-144663220893/1000000000000 : ℚ), 4⟩,
    ⟨(297668469711/1000000000000 : ℚ), (82123231/312500000 : ℚ), (-89714819291/1000000000000 : ℚ), 4⟩,
    ⟨(37820479791/125000000000 : ℚ), (558342707/5000000000 : ℚ), (-22186002063/500000000000 : ℚ), 3⟩,
    ⟨(38429454301/125000000000 : ℚ), (-61979987/5000000000 : ℚ), (-654153947/100000000000 : ℚ), 3⟩,
    ⟨(31223693989/100000000000 : ℚ), (-1152185649/10000000000 : ℚ), (6327469831/250000000000 : ℚ), 3⟩,
    ⟨(158460757789/500000000000 : ℚ), (-2011028891/10000000000 : ℚ), (52322382721/1000000000000 : ℚ), 3⟩,
    ⟨(20090265403/62500000000 : ℚ), (-2732728659/10000000000 : ℚ), (7535424581/100000000000 : ℚ), 3⟩,
    ⟨(325761576129/1000000000000 : ℚ), (-668338263/2000000000 : ℚ), (1188223939/12500000000 : ℚ), 3⟩,
    ⟨(2638655411/8000000000 : ℚ), (-3856549589/10000000000 : ℚ), (6995813801/62500000000 : ℚ), 3⟩,
    ⟨(33361609749/100000000000 : ℚ), (-4291617601/10000000000 : ℚ), (126364050549/1000000000000 : ℚ), 3⟩,
    ⟨(84269411459/250000000000 : ℚ), (-4657935461/10000000000 : ℚ), (34661898423/250000000000 : ℚ), 3⟩,
    ⟨(34018323481/100000000000 : ℚ), (-2482014803/5000000000 : ℚ), (149012355047/1000000000000 : ℚ), 3⟩,
    ⟨(171451477947/500000000000 : ℚ), (-5216472527/10000000000 : ℚ), (39408513943/250000000000 : ℚ), 3⟩,
    ⟨(172605308343/500000000000 : ℚ), (-1355074527/2500000000 : ℚ), (164646638421/1000000000000 : ℚ), 3⟩,
    ⟨(347083993151/1000000000000 : ℚ), (-5579310761/10000000000 : ℚ), (42537682903/250000000000 : ℚ), 3⟩,
    ⟨(6970100873/20000000000 : ℚ), (-2848157209/5000000000 : ℚ), (43555004707/250000000000 : ℚ), 3⟩,
    ⟨(34946008269/100000000000 : ℚ), (-288663957/500000000 : ℚ), (17690594297/100000000000 : ℚ), 3⟩,
    ⟨(349939912723/1000000000000 : ℚ), (-5811457327/10000000000 : ℚ), (178241032857/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2908107757/5000000000 : ℚ), (178407555093/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (204368412017/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control655.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control655.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate655

-- Control656
namespace DiagonalRamsey.JointInheritedCertificate656
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(110670605459/500000000000 : ℚ), (1011450300103/2500000000 : ℚ), (-4494586226633/50000000000 : ℚ), 11⟩,
    ⟨(222848969793/1000000000000 : ℚ), (214222121273/5000000000 : ℚ), (-388966322001/40000000000 : ℚ), 8⟩,
    ⟨(225806545217/1000000000000 : ℚ), (70949688833/5000000000 : ℚ), (-1655010987889/500000000000 : ℚ), 6⟩,
    ⟨(230100279223/1000000000000 : ℚ), (64177564347/10000000000 : ℚ), (-770978076359/500000000000 : ℚ), 5⟩,
    ⟨(235565166023/1000000000000 : ℚ), (8206691193/2500000000 : ℚ), (-406692644769/500000000000 : ℚ), 5⟩,
    ⟨(6049779827/25000000000 : ℚ), (17315005647/10000000000 : ℚ), (-221812217121/500000000000 : ℚ), 4⟩,
    ⟨(12456570589/50000000000 : ℚ), (8606120717/10000000000 : ℚ), (-230081538927/1000000000000 : ℚ), 4⟩,
    ⟨(256711427521/1000000000000 : ℚ), (1636980813/5000000000 : ℚ), (-95385500611/1000000000000 : ℚ), 4⟩,
    ⟨(264439944549/1000000000000 : ℚ), (-202493299/10000000000 : ℚ), (-195486539/40000000000 : ℚ), 3⟩,
    ⟨(27201996029/100000000000 : ℚ), (-1287860987/5000000000 : ℚ), (58721472663/1000000000000 : ℚ), 3⟩,
    ⟨(27916017899/100000000000 : ℚ), (-1061919401/2500000000 : ℚ), (26193330911/250000000000 : ℚ), 3⟩,
    ⟨(285586206047/1000000000000 : ℚ), (-544494939/1000000000 : ℚ), (17321031761/125000000000 : ℚ), 3⟩,
    ⟨(291051092847/1000000000000 : ℚ), (-1574949857/2500000000 : ℚ), (81604666751/500000000000 : ℚ), 3⟩,
    ⟨(295344826853/1000000000000 : ℚ), (-6890679503/10000000000 : ℚ), (90265782249/500000000000 : ℚ), 3⟩,
    ⟨(298302402277/1000000000000 : ℚ), (-3631862077/5000000000 : ℚ), (191603784999/1000000000000 : ℚ), 3⟩,
    ⟨(585566721/1953125000 : ℚ), (-7444541641/10000000000 : ℚ), (197011170321/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-3733444659/5000000000 : ℚ), (39536277669/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (12836194813/31250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control656.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control656.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate656

-- Control657
namespace DiagonalRamsey.JointInheritedCertificate657
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(260321783953/1000000000000 : ℚ), (2087230772123/5000000000 : ℚ), (-54536599740621/500000000000 : ℚ), 11⟩,
    ⟨(262040767017/1000000000000 : ℚ), (442485347381/10000000000 : ℚ), (-2950863891153/250000000000 : ℚ), 8⟩,
    ⟨(66353168397/250000000000 : ℚ), (73389824641/5000000000 : ℚ), (-4021211339683/1000000000000 : ℚ), 6⟩,
    ⟨(270307923189/1000000000000 : ℚ), (66544528147/10000000000 : ℚ), (-1876301626883/1000000000000 : ℚ), 5⟩,
    ⟨(276538394123/1000000000000 : ℚ), (4271325161/1250000000 : ℚ), (-992745902819/1000000000000 : ℚ), 5⟩,
    ⟨(141932326443/500000000000 : ℚ), (3630374117/2000000000 : ℚ), (-544635911777/1000000000000 : ℚ), 4⟩,
    ⟨(146002577731/500000000000 : ℚ), (4580809509/5000000000 : ℚ), (-143072334939/500000000000 : ℚ), 4⟩,
    ⟨(150323533451/500000000000 : ℚ), (1831060523/5000000000 : ℚ), (-61687739727/500000000000 : ℚ), 4⟩,
    ⟨(309458283397/1000000000000 : ℚ), (16366243/2000000000 : ℚ), (-14263470873/1000000000000 : ℚ), 3⟩,
    ⟨(318100194837/1000000000000 : ℚ), (-294681539/1250000000 : ℚ), (62219006687/1000000000000 : ℚ), 3⟩,
    ⟨(326240697413/1000000000000 : ℚ), (-4071963237/10000000000 : ℚ), (117425288719/1000000000000 : ℚ), 3⟩,
    ⟨(20847934761/62500000000 : ℚ), (-132418251/250000000 : ℚ), (19726961147/125000000000 : ℚ), 3⟩,
    ⟨(33979742711/100000000000 : ℚ), (-6169207219/10000000000 : ℚ), (37436709527/200000000000 : ℚ), 3⟩,
    ⟨(344692676711/1000000000000 : ℚ), (-6771094679/10000000000 : ℚ), (207780190201/1000000000000 : ℚ), 3⟩,
    ⟨(174032291641/500000000000 : ℚ), (-7150531259/10000000000 : ℚ), (883689297/4000000000 : ℚ), 3⟩,
    ⟨(69956713269/200000000000 : ℚ), (-3667140463/5000000000 : ℚ), (56833425939/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1471396647/2000000000 : ℚ), (228128038709/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (372328925239/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control657.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control657.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate657

-- Control658
namespace DiagonalRamsey.JointInheritedCertificate658
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39058363013/250000000000 : ℚ), (9673433471/19531250 : ℚ), (-15522149528271/200000000000 : ℚ), 11⟩,
    ⟨(157072384381/1000000000000 : ℚ), (131251002883/2500000000 : ℚ), (-8365289222603/1000000000000 : ℚ), 8⟩,
    ⟨(7935900467/50000000000 : ℚ), (86756575677/5000000000 : ℚ), (-2824865631313/1000000000000 : ℚ), 7⟩,
    ⟨(80553543243/500000000000 : ℚ), (15568448327/2000000000 : ℚ), (-32436154203/25000000000 : ℚ), 6⟩,
    ⟨(82073902461/500000000000 : ℚ), (7813772463/2000000000 : ℚ), (-166957021769/250000000000 : ℚ), 5⟩,
    ⟨(33544662309/200000000000 : ℚ), (1235813451/625000000 : ℚ), (-87017797871/250000000000 : ℚ), 5⟩,
    ⟨(4292405041/25000000000 : ℚ), (1773305171/2000000000 : ℚ), (-163193423377/1000000000000 : ℚ), 4⟩,
    ⟨(17591379927/100000000000 : ℚ), (2138725923/10000000000 : ℚ), (-5796924151/125000000000 : ℚ), 4⟩,
    ⟨(90107012261/500000000000 : ℚ), (-1141518327/5000000000 : ℚ), (3229810629/100000000000 : ℚ), 4⟩,
    ⟨(184431622151/1000000000000 : ℚ), (-5326865481/10000000000 : ℚ), (17552071751/200000000000 : ℚ), 4⟩,
    ⟨(188404512247/1000000000000 : ℚ), (-7489208137/10000000000 : ℚ), (25610501183/200000000000 : ℚ), 4⟩,
    ⟨(19198001887/100000000000 : ℚ), (-9050014601/10000000000 : ℚ), (19716112011/125000000000 : ℚ), 3⟩,
    ⟨(97510368653/500000000000 : ℚ), (-5086234449/5000000000 : ℚ), (179444350773/1000000000000 : ℚ), 3⟩,
    ⟨(49352453613/250000000000 : ℚ), (-2738254881/2500000000 : ℚ), (97379186951/500000000000 : ℚ), 3⟩,
    ⟨(199055439411/1000000000000 : ℚ), (-11448063709/10000000000 : ℚ), (102285664073/500000000000 : ℚ), 3⟩,
    ⟨(9994718587/50000000000 : ℚ), (-2922174333/2500000000 : ℚ), (209371312591/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-2343694017/2000000000 : ℚ), (104983305151/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (444259493291/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control658.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control658.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate658

-- Control659
namespace DiagonalRamsey.JointInheritedCertificate659
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236916555159/1000000000000 : ℚ), (5212259628509/10000000000 : ℚ), (-6191983225451/50000000000 : ℚ), 11⟩,
    ⟨(4762515209/20000000000 : ℚ), (553341390913/10000000000 : ℚ), (-1669784614471/125000000000 : ℚ), 8⟩,
    ⟨(240497701949/1000000000000 : ℚ), (36675623853/2000000000 : ℚ), (-4518953374373/1000000000000 : ℚ), 7⟩,
    ⟨(9757649091/40000000000 : ℚ), (10329909037/1250000000 : ℚ), (-416524607301/200000000000 : ℚ), 6⟩,
    ⟨(124162001841/500000000000 : ℚ), (8360587597/2000000000 : ℚ), (-539469936531/500000000000 : ℚ), 5⟩,
    ⟨(253477603529/1000000000000 : ℚ), (21485081407/10000000000 : ℚ), (-569816036919/1000000000000 : ℚ), 5⟩,
    ⟨(129601988433/500000000000 : ℚ), (5005829557/5000000000 : ℚ), (-276033678639/1000000000000 : ℚ), 4⟩,
    ⟨(2122264499/8000000000 : ℚ), (117879851/400000000 : ℚ), (-18188316741/200000000000 : ℚ), 4⟩,
    ⟨(27148124421/100000000000 : ℚ), (-841739789/5000000000 : ℚ), (33237584461/1000000000000 : ℚ), 4⟩,
    ⟨(6939008243/25000000000 : ℚ), (-151868741/312500000 : ℚ), (60191441721/500000000000 : ℚ), 4⟩,
    ⟨(17705418941/62500000000 : ℚ), (-7107266873/10000000000 : ℚ), (183380002053/1000000000000 : ℚ), 3⟩,
    ⟨(36055037863/125000000000 : ℚ), (-4361449719/5000000000 : ℚ), (114775711489/500000000000 : ℚ), 3⟩,
    ⟨(29282307931/100000000000 : ℚ), (-9880387593/10000000000 : ℚ), (263185486383/1000000000000 : ℚ), 3⟩,
    ⟨(296266604637/1000000000000 : ℚ), (-2670687181/2500000000 : ℚ), (286816225649/1000000000000 : ℚ), 3⟩,
    ⟨(37329818267/125000000000 : ℚ), (-2238085453/2000000000 : ℚ), (18869786877/62500000000 : ℚ), 3⟩,
    ⟨(149923875713/500000000000 : ℚ), (-11436847643/10000000000 : ℚ), (77322617791/250000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2293463971/2000000000 : ℚ), (310204405403/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (69637061251/200000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control659.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control659.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate659

-- Control660
namespace DiagonalRamsey.JointInheritedCertificate660
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43509960053/1000000000000 : ℚ), (566497871863/2500000000 : ℚ), (-1237903696533/125000000000 : ℚ), 10⟩,
    ⟨(10999798153/250000000000 : ℚ), (51832929067/2500000000 : ℚ), (-927251263933/1000000000000 : ℚ), 7⟩,
    ⟨(44903176507/1000000000000 : ℚ), (224462379/50000000 : ℚ), (-3242242601/15625000000 : ℚ), 6⟩,
    ⟨(9216857677/200000000000 : ℚ), (31790809/400000000 : ℚ), (-7396031327/1000000000000 : ℚ), 5⟩,
    ⟨(47362714669/1000000000000 : ℚ), (-4288611691/2500000000 : ℚ), (38161624117/500000000000 : ℚ), 4⟩,
    ⟨(48543826547/1000000000000 : ℚ), (-3257453357/1250000000 : ℚ), (118984664909/1000000000000 : ℚ), 4⟩,
    ⟨(24723905221/500000000000 : ℚ), (-15378490099/5000000000 : ℚ), (70995092831/500000000000 : ℚ), 4⟩,
    ⟨(49937043001/1000000000000 : ℚ), (-32854423619/10000000000 : ℚ), (30482375041/200000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-3310720581/1000000000 : ℚ), (76837494289/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (530648554761/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control660.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control660.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate660

-- Control661
namespace DiagonalRamsey.JointInheritedCertificate661
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(87133655243/1000000000000 : ℚ), (2289370017487/10000000000 : ℚ), (-4007119124199/200000000000 : ℚ), 10⟩,
    ⟨(88103546771/1000000000000 : ℚ), (209713935633/10000000000 : ℚ), (-938612659161/500000000000 : ℚ), 7⟩,
    ⟨(17979134527/200000000000 : ℚ), (45627400157/10000000000 : ℚ), (-421495996523/1000000000000 : ℚ), 6⟩,
    ⟨(46118598959/500000000000 : ℚ), (222025427/2000000000 : ℚ), (-17113474731/1000000000000 : ℚ), 5⟩,
    ⟨(4738582331/50000000000 : ℚ), (-8491526493/5000000000 : ℚ), (151773799283/1000000000000 : ℚ), 4⟩,
    ⟨(97113171903/1000000000000 : ℚ), (-12970549807/5000000000 : ℚ), (237635661239/1000000000000 : ℚ), 4⟩,
    ⟨(98905297767/1000000000000 : ℚ), (-15328598653/5000000000 : ℚ), (283838658687/1000000000000 : ℚ), 4⟩,
    ⟨(19975037859/200000000000 : ℚ), (-16380205957/5000000000 : ℚ), (304740526933/1000000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16506887801/5000000000 : ℚ), (153636289479/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (2623219461/6250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control661.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control661.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate661

-- Control662
namespace DiagonalRamsey.JointInheritedCertificate662
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127894932801/250000000000 : ℚ), (7590719251509/5000000000 : ℚ), (-777671969481017/1000000000000 : ℚ), 12⟩,
    ⟨(512486479531/1000000000000 : ℚ), (1664861363193/10000000000 : ℚ), (-2686427395587/31250000000 : ℚ), 9⟩,
    ⟨(514291243703/1000000000000 : ℚ), (293188732643/5000000000 : ℚ), (-3062950121331/100000000000 : ℚ), 8⟩,
    ⟨(103395328571/200000000000 : ℚ), (72636805961/2500000000 : ℚ), (-15384238918361/1000000000000 : ℚ), 7⟩,
    ⟨(130129203781/250000000000 : ℚ), (169547245419/10000000000 : ℚ), (-1822188372027/200000000000 : ℚ), 6⟩,
    ⟨(524877666717/1000000000000 : ℚ), (27192697429/2500000000 : ℚ), (-1483979923343/250000000000 : ℚ), 6⟩,
    ⟨(66252150031/125000000000 : ℚ), (74140932019/10000000000 : ℚ), (-4110349998523/1000000000000 : ℚ), 5⟩,
    ⟨(535885919201/1000000000000 : ℚ), (52649215313/10000000000 : ℚ), (-185345842047/62500000000 : ℚ), 5⟩,
    ⟨(542427304603/1000000000000 : ℚ), (38462331293/10000000000 : ℚ), (-550253502209/250000000000 : ℚ), 4⟩,
    ⟨(274789179669/500000000000 : ℚ), (28650671863/10000000000 : ℚ), (-83277246923/50000000000 : ℚ), 4⟩,
    ⟨(557270214839/1000000000000 : ℚ), (4322680941/2000000000 : ℚ), (-63812871507/50000000000 : ℚ), 4⟩,
    ⟨(141357198583/250000000000 : ℚ), (8208343647/5000000000 : ℚ), (-24616520851/25000000000 : ℚ), 4⟩,
    ⟨(286987763119/500000000000 : ℚ), (12486590469/10000000000 : ℚ), (-190212207991/250000000000 : ℚ), 4⟩,
    ⟨(116565620171/200000000000 : ℚ), (4727518879/5000000000 : ℚ), (-117113182773/200000000000 : ℚ), 3⟩,
    ⟨(147975315763/250000000000 : ℚ), (7077468197/10000000000 : ℚ), (-222980833037/500000000000 : ℚ), 3⟩,
    ⟨(150276908329/250000000000 : ℚ), (5186468843/10000000000 : ℚ), (-66639275831/200000000000 : ℚ), 3⟩,
    ⟨(152589637317/250000000000 : ℚ), (916122169/2500000000 : ℚ), (-3012872789/12500000000 : ℚ), 3⟩,
    ⟨(154891229883/250000000000 : ℚ), (2427167291/10000000000 : ℚ), (-82478794141/500000000000 : ℚ), 3⟩,
    ⟨(628638081729/1000000000000 : ℚ), (1412813937/10000000000 : ℚ), (-5083254549/50000000000 : ℚ), 3⟩,
    ⟨(318745328173/500000000000 : ℚ), (575578241/10000000000 : ℚ), (-190126987/3906250000 : ℚ), 3⟩,
    ⟨(161509347063/250000000000 : ℚ), (-119093563/10000000000 : ℚ), (-320163/78125000 : ℚ), 3⟩,
    ⟨(130839193549/200000000000 : ℚ), (-697548347/10000000000 : ℚ), (16751569279/500000000000 : ℚ), 3⟩,
    ⟨(330943911623/500000000000 : ℚ), (-23601361/200000000 : ℚ), (32625692389/500000000000 : ℚ), 3⟩,
    ⟨(669038877981/1000000000000 : ℚ), (-316476077/2000000000 : ℚ), (23005336261/250000000000 : ℚ), 3⟩,
    ⟨(675580263383/1000000000000 : ℚ), (-191674079/1000000000 : ℚ), (5724954179/50000000000 : ℚ), 3⟩,
    ⟨(10647640349/15625000000 : ℚ), (-2192717879/10000000000 : ℚ), (13322349023/100000000000 : ℚ), 3⟩,
    ⟨(686588515867/1000000000000 : ℚ), (-604442551/2500000000 : ℚ), (148616861151/1000000000000 : ℚ), 3⟩,
    ⟨(34547468373/50000000000 : ℚ), (-519534693/2000000000 : ℚ), (161007686839/1000000000000 : ℚ), 3⟩,
    ⟨(694489539729/1000000000000 : ℚ), (-1368419129/5000000000 : ℚ), (170647727641/1000000000000 : ℚ), 3⟩,
    ⟨(697174938881/1000000000000 : ℚ), (-2838545613/10000000000 : ℚ), (177724781007/1000000000000 : ℚ), 3⟩,
    ⟨(698979703053/1000000000000 : ℚ), (-726279687/2500000000 : ℚ), (45593019883/250000000000 : ℚ), 3⟩,
    ⟨(34994322569/50000000000 : ℚ), (-2938043207/10000000000 : ℚ), (92337461223/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-294214197/1000000000 : ℚ), (924809063/5000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (255209852093/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control662.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control662.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate662
