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

-- Control704
namespace DiagonalRamsey.JointInheritedCertificate704
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(239570192239/1000000000000 : ℚ), (5095321649061/10000000000 : ℚ), (-244797698171/2000000000 : ℚ), 11⟩,
    ⟨(48145706339/200000000000 : ℚ), (67637986769/1250000000 : ℚ), (-13196066248721/1000000000000 : ℚ), 8⟩,
    ⟨(243000696273/1000000000000 : ℚ), (179314942023/10000000000 : ℚ), (-4459094074419/1000000000000 : ℚ), 7⟩,
    ⟨(123149683981/500000000000 : ℚ), (40371218481/5000000000 : ℚ), (-1025520311313/500000000000 : ℚ), 6⟩,
    ⟨(250497780657/1000000000000 : ℚ), (40754067533/10000000000 : ℚ), (-1059077617019/1000000000000 : ℚ), 5⟩,
    ⟨(51086918343/200000000000 : ℚ), (20841497953/10000000000 : ℚ), (-138992285661/250000000000 : ℚ), 5⟩,
    ⟨(52184016451/200000000000 : ℚ), (4793720111/5000000000 : ℚ), (-265722893247/1000000000000 : ℚ), 4⟩,
    ⟨(16671465497/62500000000 : ℚ), (1326142873/5000000000 : ℚ), (-41457480647/500000000000 : ℚ), 4⟩,
    ⟨(272680900127/1000000000000 : ℚ), (-948325709/5000000000 : ℚ), (1984329989/50000000000 : ℚ), 4⟩,
    ⟨(278504265823/1000000000000 : ℚ), (-2509568897/5000000000 : ℚ), (125691804519/1000000000000 : ℚ), 4⟩,
    ⟨(283989756363/1000000000000 : ℚ), (-7229903647/10000000000 : ℚ), (187843415857/1000000000000 : ℚ), 4⟩,
    ⟨(288926567421/1000000000000 : ℚ), (-1102514329/1250000000 : ℚ), (233383506849/1000000000000 : ℚ), 4⟩,
    ⟨(73281245029/250000000000 : ℚ), (-9960054087/10000000000 : ℚ), (133276423207/500000000000 : ℚ), 4⟩,
    ⟨(59284730361/200000000000 : ℚ), (-1075067387/1000000000 : ℚ), (18116002379/62500000000 : ℚ), 3⟩,
    ⟨(298695816383/1000000000000 : ℚ), (-11251144131/10000000000 : ℚ), (9523356057/31250000000 : ℚ), 3⟩,
    ⟨(299854155839/1000000000000 : ℚ), (-2873534243/2500000000 : ℚ), (31201948681/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-11524188827/10000000000 : ℚ), (312920823149/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (182148784023/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control704.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control704.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate704

-- Control705
namespace DiagonalRamsey.JointInheritedCertificate705
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43838442541/1000000000000 : ℚ), (222697460577/1000000000 : ℚ), (-1960740924333/200000000000 : ℚ), 10⟩,
    ⟨(22151456707/500000000000 : ℚ), (101727576203/5000000000 : ℚ), (-457701681497/500000000000 : ℚ), 7⟩,
    ⟨(70564287/1562500000 : ℚ), (21827945099/5000000000 : ℚ), (-202748989517/1000000000000 : ℚ), 6⟩,
    ⟨(46282475561/1000000000000 : ℚ), (115499909/5000000000 : ℚ), (-2339212131/500000000000 : ℚ), 5⟩,
    ⟨(47496196443/1000000000000 : ℚ), (-17460670353/10000000000 : ℚ), (78140405887/1000000000000 : ℚ), 5⟩,
    ⟨(12154382081/250000000000 : ℚ), (-6561418901/2500000000 : ℚ), (30079819121/250000000000 : ℚ), 4⟩,
    ⟨(4947575859/100000000000 : ℚ), (-30884061289/10000000000 : ℚ), (35765021139/250000000000 : ℚ), 4⟩,
    ⟨(6242528683/125000000000 : ℚ), (-16478505869/5000000000 : ℚ), (153363358001/1000000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-33206949019/10000000000 : ℚ), (154612295729/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (551416901291/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control705.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control705.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate705

-- Control706
namespace DiagonalRamsey.JointInheritedCertificate706
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21947297703/250000000000 : ℚ), (90028480049/400000000 : ℚ), (-19840518711383/1000000000000 : ℚ), 10⟩,
    ⟨(88709666721/1000000000000 : ℚ), (8235436349/400000000 : ℚ), (-185409505537/100000000000 : ℚ), 7⟩,
    ⟨(45205242213/500000000000 : ℚ), (8882660863/2000000000 : ℚ), (-206135747361/500000000000 : ℚ), 6⟩,
    ⟨(1852654197/20000000000 : ℚ), (280239949/5000000000 : ℚ), (-11876655033/1000000000000 : ℚ), 5⟩,
    ⟨(23759507329/250000000000 : ℚ), (-1727945443/1000000000 : ℚ), (155252124607/1000000000000 : ℚ), 5⟩,
    ⟨(4863012737/50000000000 : ℚ), (-26119935921/10000000000 : ℚ), (240174260433/1000000000000 : ℚ), 4⟩,
    ⟨(49480536223/500000000000 : ℚ), (-15389307061/5000000000 : ℚ), (4466609469/15625000000 : ℚ), 4⟩,
    ⟨(19976309671/200000000000 : ℚ), (-16429029421/5000000000 : ℚ), (76633805411/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-33108665609/10000000000 : ℚ), (154519900799/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (436777013249/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control706.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control706.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate706

-- Control707
namespace DiagonalRamsey.JointInheritedCertificate707
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131770480819/1000000000000 : ℚ), (371863689641/400000000 : ℚ), (-30670062511441/250000000000 : ℚ), 12⟩,
    ⟨(33029977637/250000000000 : ℚ), (492451639717/5000000000 : ℚ), (-13103127073/1000000000 : ℚ), 9⟩,
    ⟨(66402670809/500000000000 : ℚ), (10077550069/312500000 : ℚ), (-541989376533/125000000000 : ℚ), 7⟩,
    ⟨(8362527081/62500000000 : ℚ), (70518879989/5000000000 : ℚ), (-959581821169/500000000000 : ℚ), 7⟩,
    ⟨(527605253/3906250000 : ℚ), (13065993/1953125 : ℚ), (-923218610937/1000000000000 : ℚ), 6⟩,
    ⟨(136556204707/1000000000000 : ℚ), (14824505533/5000000000 : ℚ), (-20883844347/50000000000 : ℚ), 5⟩,
    ⟨(138210981691/1000000000000 : ℚ), (8377458593/10000000000 : ℚ), (-31403273793/250000000000 : ℚ), 5⟩,
    ⟨(139967683567/1000000000000 : ℚ), (-610447029/1250000000 : ℚ), (29370891069/500000000000 : ℚ), 5⟩,
    ⟨(141758801267/1000000000000 : ℚ), (-13691320137/10000000000 : ℚ), (182760322683/1000000000000 : ℚ), 5⟩,
    ⟨(143515503143/1000000000000 : ℚ), (-19816803723/10000000000 : ℚ), (54021026127/200000000000 : ℚ), 4⟩,
    ⟨(145170280127/1000000000000 : ℚ), (-12105760901/5000000000 : ℚ), (333525252971/1000000000000 : ℚ), 4⟩,
    ⟨(146659540067/1000000000000 : ℚ), (-27413530267/10000000000 : ℚ), (380240048507/1000000000000 : ℚ), 4⟩,
    ⟨(147926051539/1000000000000 : ℚ), (-14868102793/5000000000 : ℚ), (414448066697/1000000000000 : ℚ), 4⟩,
    ⟨(148921143217/1000000000000 : ℚ), (-6272711189/2000000000 : ℚ), (438600512097/1000000000000 : ℚ), 4⟩,
    ⟨(74803287143/500000000000 : ℚ), (-6480352579/2000000000 : ℚ), (227048418677/500000000000 : ℚ), 4⟩,
    ⟨(29991200803/200000000000 : ℚ), (-32908333911/10000000000 : ℚ), (461684281143/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-824277563/250000000 : ℚ), (462625672113/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (170576426989/500000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control707.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control707.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate707

-- Control709
namespace DiagonalRamsey.JointInheritedCertificate709
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48510825627/200000000000 : ℚ), (1460313624887/1250000000 : ℚ), (-283802657539613/1000000000000 : ℚ), 13⟩,
    ⟨(15191949849/62500000000 : ℚ), (319576995621/2500000000 : ℚ), (-15672724824617/500000000000 : ℚ), 10⟩,
    ⟨(244100356821/1000000000000 : ℚ), (17943607723/400000000 : ℚ), (-222974830049/20000000000 : ℚ), 8⟩,
    ⟨(245631694479/1000000000000 : ℚ), (13824003619/625000000 : ℚ), (-279208780651/50000000000 : ℚ), 7⟩,
    ⟨(12382523147/50000000000 : ℚ), (32067100483/2500000000 : ℚ), (-658808896529/200000000000 : ℚ), 6⟩,
    ⟨(250137220359/1000000000000 : ℚ), (81653224827/10000000000 : ℚ), (-1067293198803/500000000000 : ℚ), 6⟩,
    ⟨(50613603581/200000000000 : ℚ), (55123730917/10000000000 : ℚ), (-1467523282393/1000000000000 : ℚ), 5⟩,
    ⟨(256414630393/1000000000000 : ℚ), (7735275201/2000000000 : ℚ), (-1048798147447/1000000000000 : ℚ), 5⟩,
    ⟨(260144828117/1000000000000 : ℚ), (69568507/25000000 : ℚ), (-768755202611/1000000000000 : ℚ), 5⟩,
    ⟨(64507492/244140625 : ℚ), (2540787713/1250000000 : ℚ), (-143049408539/250000000000 : ℚ), 5⟩,
    ⟨(16788058483/62500000000 : ℚ), (11675193/7812500 : ℚ), (-107221507173/250000000000 : ℚ), 4⟩,
    ⟨(17078833227/62500000000 : ℚ), (10965096857/10000000000 : ℚ), (-321129394437/1000000000000 : ℚ), 4⟩,
    ⟨(27813506983/100000000000 : ℚ), (3974631149/5000000000 : ℚ), (-238020881377/1000000000000 : ℚ), 4⟩,
    ⟨(283183213557/1000000000000 : ℚ), (1403817107/2500000000 : ℚ), (-172542328717/1000000000000 : ℚ), 4⟩,
    ⟨(288357146431/1000000000000 : ℚ), (3776470693/10000000000 : ℚ), (-30003689481/250000000000 : ℚ), 4⟩,
    ⟨(293607040649/1000000000000 : ℚ), (2305426629/10000000000 : ℚ), (-19306131507/250000000000 : ℚ), 4⟩,
    ⟨(14944116843/50000000000 : ℚ), (1112934911/10000000000 : ℚ), (-41908271219/1000000000000 : ℚ), 4⟩,
    ⟨(152066115539/500000000000 : ℚ), (67615793/5000000000 : ℚ), (-12437658921/1000000000000 : ℚ), 3⟩,
    ⟨(19331635247/62500000000 : ℚ), (-337044423/5000000000 : ℚ), (6189995713/500000000000 : ℚ), 3⟩,
    ⟨(314354307679/1000000000000 : ℚ), (-168664671/1250000000 : ℚ), (2089466121/62500000000 : ℚ), 3⟩,
    ⟨(79807011469/250000000000 : ℚ), (-958060049/5000000000 : ℚ), (12846058391/250000000000 : ℚ), 3⟩,
    ⟨(323880441781/1000000000000 : ℚ), (-2393912401/10000000000 : ℚ), (66745683249/1000000000000 : ℚ), 3⟩,
    ⟨(82066672569/250000000000 : ℚ), (-1398753117/5000000000 : ℚ), (3995214697/50000000000 : ℚ), 3⟩,
    ⟨(20771534337/62500000000 : ℚ), (-125530941/400000000 : ℚ), (91158989557/1000000000000 : ℚ), 3⟩,
    ⟨(84018686779/250000000000 : ℚ), (-3424980753/10000000000 : ℚ), (100740330939/1000000000000 : ℚ), 3⟩,
    ⟨(84855339901/250000000000 : ℚ), (-916098963/2500000000 : ℚ), (54413044249/500000000000 : ℚ), 3⟩,
    ⟨(342352157149/1000000000000 : ℚ), (-772346903/2000000000 : ℚ), (115552836067/1000000000000 : ℚ), 3⟩,
    ⟨(344838914569/1000000000000 : ℚ), (-3926749/9765625 : ℚ), (12102466833/100000000000 : ℚ), 3⟩,
    ⟨(34685768303/100000000000 : ℚ), (-4145183893/10000000000 : ℚ), (62659892671/500000000000 : ℚ), 3⟩,
    ⟨(21774313793/62500000000 : ℚ), (-4236538237/10000000000 : ℚ), (128495445171/1000000000000 : ℚ), 3⟩,
    ⟨(87354544981/250000000000 : ℚ), (-171864699/400000000 : ℚ), (65295811277/500000000000 : ℚ), 3⟩,
    ⟨(349935249373/1000000000000 : ℚ), (-2163207823/5000000000 : ℚ), (131633594099/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1082532309/2500000000 : ℚ), (26352711547/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (240503191959/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control709.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control709.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate709

-- Control710
namespace DiagonalRamsey.JointInheritedCertificate710
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(543977165591/1000000000000 : ℚ), (9028445666467/5000000000 : ℚ), (-491630744536477/500000000000 : ℚ), 13⟩,
    ⟨(544728005429/1000000000000 : ℚ), (1982895677657/10000000000 : ℚ), (-108650649987429/1000000000000 : ℚ), 10⟩,
    ⟨(546222454107/1000000000000 : ℚ), (34980655623/500000000 : ℚ), (-61891632743/1600000000 : ℚ), 8⟩,
    ⟨(548446119267/1000000000000 : ℚ), (347268980183/10000000000 : ℚ), (-19405889797059/1000000000000 : ℚ), 7⟩,
    ⟨(275688792899/500000000000 : ℚ), (202964882579/10000000000 : ℚ), (-11473924566647/1000000000000 : ℚ), 6⟩,
    ⟨(22199544883/40000000000 : ℚ), (65182371983/5000000000 : ℚ), (-3729765608121/500000000000 : ℚ), 6⟩,
    ⟨(139811112961/250000000000 : ℚ), (44459238419/5000000000 : ℚ), (-5151452724107/1000000000000 : ℚ), 5⟩,
    ⟨(564104089139/1000000000000 : ℚ), (31570381929/5000000000 : ℚ), (-3704166437379/1000000000000 : ℚ), 5⟩,
    ⟨(142380183249/250000000000 : ℚ), (11521110197/2500000000 : ℚ), (-1368882552333/500000000000 : ℚ), 5⟩,
    ⟨(143860554543/250000000000 : ℚ), (3425858419/1000000000 : ℚ), (-2061005053613/1000000000000 : ℚ), 5⟩,
    ⟨(58181151753/100000000000 : ℚ), (12877197507/5000000000 : ℚ), (-1569100687389/1000000000000 : ℚ), 4⟩,
    ⟨(117713458247/200000000000 : ℚ), (9728759573/5000000000 : ℚ), (-600367256687/500000000000 : ℚ), 4⟩,
    ⟨(148911119373/250000000000 : ℚ), (14682466899/10000000000 : ℚ), (-459043543903/500000000000 : ℚ), 4⟩,
    ⟨(602974919129/1000000000000 : ℚ), (10989153011/10000000000 : ℚ), (-43550361973/62500000000 : ℚ), 4⟩,
    ⟨(305244009993/500000000000 : ℚ), (808481989/1000000000 : ℚ), (-260318299623/500000000000 : ℚ), 4⟩,
    ⟨(123622284959/200000000000 : ℚ), (360549397/625000000 : ℚ), (-378396731633/1000000000000 : ℚ), 4⟩,
    ⟨(625771715999/1000000000000 : ℚ), (3899945959/10000000000 : ℚ), (-262190465087/1000000000000 : ℚ), 3⟩,
    ⟨(79174390101/125000000000 : ℚ), (1188425181/5000000000 : ℚ), (-83158652071/500000000000 : ℚ), 3⟩,
    ⟨(128181644333/200000000000 : ℚ), (1125201009/10000000000 : ℚ), (-86581811047/1000000000000 : ℚ), 3⟩,
    ⟨(324119331651/500000000000 : ℚ), (89680577/10000000000 : ℚ), (-19844832317/1000000000000 : ℚ), 3⟩,
    ⟨(655315849559/1000000000000 : ℚ), (-385733629/5000000000 : ℚ), (36275635141/1000000000000 : ℚ), 3⟩,
    ⟨(662071623263/1000000000000 : ℚ), (-1490128623/10000000000 : ℚ), (5225516567/62500000000 : ℚ), 3⟩,
    ⟨(668440922621/1000000000000 : ℚ), (-2090880371/10000000000 : ℚ), (123570036261/1000000000000 : ℚ), 3⟩,
    ⟨(337181203899/500000000000 : ℚ), (-2592798499/10000000000 : ℚ), (307160977/1953125000 : ℚ), 3⟩,
    ⟨(135955810331/200000000000 : ℚ), (-376344447/1250000000 : ℚ), (4639085439/25000000000 : ℚ), 3⟩,
    ⟨(13692773779/20000000000 : ℚ), (-839091207/2500000000 : ℚ), (209140130947/1000000000000 : ℚ), 3⟩,
    ⟨(688894518719/1000000000000 : ℚ), (-3638675553/10000000000 : ℚ), (228527650291/1000000000000 : ℚ), 3⟩,
    ⟨(173126388749/250000000000 : ℚ), (-3864690179/10000000000 : ℚ), (61034531147/250000000000 : ℚ), 3⟩,
    ⟨(695437021527/1000000000000 : ℚ), (-25248441/62500000 : ℚ), (51257326987/200000000000 : ℚ), 3⟩,
    ⟨(697660686687/1000000000000 : ℚ), (-4167825713/10000000000 : ℚ), (265207621833/1000000000000 : ℚ), 3⟩,
    ⟨(139831027073/200000000000 : ℚ), (-4251722617/10000000000 : ℚ), (271067026633/1000000000000 : ℚ), 3⟩,
    ⟨(699905975203/1000000000000 : ℚ), (-4293234311/10000000000 : ℚ), (273970893869/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-4298403021/10000000000 : ℚ), (274332679211/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (205548725017/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control710.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control710.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate710

-- Control711
namespace DiagonalRamsey.JointInheritedCertificate711
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(645409110407/1000000000000 : ℚ), (5406942202277/2500000000 : ℚ), (-69854200583031/50000000000 : ℚ), 13⟩,
    ⟨(129230611839/200000000000 : ℚ), (594501043437/2500000000 : ℚ), (-19302877031817/125000000000 : ℚ), 10⟩,
    ⟨(80954224017/125000000000 : ℚ), (840668337019/10000000000 : ℚ), (-55011160863303/1000000000000 : ℚ), 8⟩,
    ⟨(162459262241/250000000000 : ℚ), (26146274087/625000000 : ℚ), (-22098788367/800000000 : ℚ), 7⟩,
    ⟨(652741611111/1000000000000 : ℚ), (122624028733/5000000000 : ℚ), (-8177154579277/500000000000 : ℚ), 6⟩,
    ⟨(131263901211/200000000000 : ℚ), (79043899227/5000000000 : ℚ), (-10651451808319/1000000000000 : ℚ), 6⟩,
    ⟨(660536276713/1000000000000 : ℚ), (108280173617/10000000000 : ℚ), (-7373122074699/1000000000000 : ℚ), 5⟩,
    ⟨(665351313277/1000000000000 : ℚ), (77269572487/10000000000 : ℚ), (-1329496342197/250000000000 : ℚ), 5⟩,
    ⟨(670718244313/1000000000000 : ℚ), (14182299639/2500000000 : ℚ), (-986565040179/250000000000 : ℚ), 5⟩,
    ⟨(338292691671/500000000000 : ℚ), (42473526703/10000000000 : ℚ), (-2986220197557/1000000000000 : ℚ), 4⟩,
    ⟨(42681014163/62500000000 : ℚ), (16106536097/5000000000 : ℚ), (-572244769923/250000000000 : ℚ), 4⟩,
    ⟨(17239749931/25000000000 : ℚ), (384540813/156250000 : ℚ), (-883704598909/500000000000 : ℚ), 4⟩,
    ⟨(696602230567/1000000000000 : ℚ), (1884309187/1000000000 : ℚ), (-1367767722693/1000000000000 : ℚ), 4⟩,
    ⟨(14077307899/20000000000 : ℚ), (179771771/125000000 : ℚ), (-1055443832581/1000000000000 : ℚ), 4⟩,
    ⟨(142261908429/200000000000 : ℚ), (1087450607/1000000000 : ℚ), (-403665597379/500000000000 : ℚ), 4⟩,
    ⟨(143772596189/200000000000 : ℚ), (8079803859/10000000000 : ℚ), (-303763210563/500000000000 : ℚ), 3⟩,
    ⟨(145290593521/200000000000 : ℚ), (728440913/1250000000 : ℚ), (-11119846263/25000000000 : ℚ), 3⟩,
    ⟨(146801281281/200000000000 : ℚ), (499400081/1250000000 : ℚ), (-155507051177/500000000000 : ℚ), 3⟩,
    ⟨(115851649/156250000 : ℚ), (2492926081/10000000000 : ℚ), (-100101695151/500000000000 : ℚ), 3⟩,
    ⟨(748713717983/1000000000000 : ℚ), (1253606883/10000000000 : ℚ), (-107875926151/1000000000000 : ℚ), 3⟩,
    ⟨(75572595131/100000000000 : ℚ), (4528789/200000000 : ℚ), (-7654766949/250000000000 : ℚ), 3⟩,
    ⟨(381209860971/500000000000 : ℚ), (-627513703/10000000000 : ℚ), (4274493691/125000000000 : ℚ), 3⟩,
    ⟨(768730565207/1000000000000 : ℚ), (-1338393691/10000000000 : ℚ), (2769211067/31250000000 : ℚ), 3⟩,
    ⟨(774597704237/1000000000000 : ℚ), (-385942103/2000000000 : ℚ), (134241524931/1000000000000 : ℚ), 3⟩,
    ⟨(779964635273/1000000000000 : ℚ), (-1209946897/5000000000 : ℚ), (86170264133/500000000000 : ℚ), 3⟩,
    ⟨(784779671837/1000000000000 : ℚ), (-1411709313/5000000000 : ℚ), (101954947131/500000000000 : ℚ), 3⟩,
    ⟨(157799288499/200000000000 : ℚ), (-3151632739/10000000000 : ℚ), (45947177577/200000000000 : ℚ), 3⟩,
    ⟨(792574337439/1000000000000 : ℚ), (-3413369959/10000000000 : ℚ), (125216623339/500000000000 : ℚ), 3⟩,
    ⟨(397739449793/500000000000 : ℚ), (-903851909/2500000000 : ℚ), (266475357833/1000000000000 : ℚ), 3⟩,
    ⟨(398841078207/500000000000 : ℚ), (-1881403523/5000000000 : ℚ), (69554204431/250000000000 : ℚ), 3⟩,
    ⟨(159832577871/200000000000 : ℚ), (-964790711/2500000000 : ℚ), (285910055363/1000000000000 : ℚ), 3⟩,
    ⟨(799906838143/1000000000000 : ℚ), (-488347317/1250000000 : ℚ), (289717092727/1000000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-489088051/1250000000 : ℚ), (18136945929/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (31980690327/250000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control711.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control711.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate711

-- Control712
namespace DiagonalRamsey.JointInheritedCertificate712
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62418128613/250000000000 : ℚ), (2576143813681/2000000000 : ℚ), (-322048247450797/1000000000000 : ℚ), 13⟩,
    ⟨(250155327581/1000000000000 : ℚ), (352583861941/2500000000 : ℚ), (-35562358559983/1000000000000 : ℚ), 10⟩,
    ⟨(125558152043/500000000000 : ℚ), (247662087263/5000000000 : ℚ), (-12643350905879/1000000000000 : ℚ), 8⟩,
    ⟨(126273094619/500000000000 : ℚ), (244420227483/10000000000 : ℚ), (-6328757709629/1000000000000 : ℚ), 7⟩,
    ⟨(12721560623/50000000000 : ℚ), (28367246099/2000000000 : ℚ), (-14919866833/4000000000 : ℚ), 7⟩,
    ⟨(64188304987/250000000000 : ℚ), (90328536249/10000000000 : ℚ), (-2414258525231/1000000000000 : ℚ), 6⟩,
    ⟨(129744924751/500000000000 : ℚ), (60986688091/10000000000 : ℚ), (-414330352849/250000000000 : ℚ), 6⟩,
    ⟨(131307372941/500000000000 : ℚ), (42776356897/10000000000 : ℚ), (-591100832721/500000000000 : ℚ), 5⟩,
    ⟨(266097814629/1000000000000 : ℚ), (7687650269/2500000000 : ℚ), (-864462633883/1000000000000 : ℚ), 5⟩,
    ⟨(53981102377/200000000000 : ℚ), (22425715711/10000000000 : ℚ), (-40091692189/62500000000 : ℚ), 5⟩,
    ⟨(54800233489/200000000000 : ℚ), (16445079229/10000000000 : ℚ), (-478899065849/1000000000000 : ℚ), 4⟩,
    ⟨(69586334477/250000000000 : ℚ), (6008874647/5000000000 : ℚ), (-44585302621/125000000000 : ℚ), 4⟩,
    ⟨(35362023317/125000000000 : ℚ), (8657990021/10000000000 : ℚ), (-262439453099/1000000000000 : ℚ), 4⟩,
    ⟨(28760988617/100000000000 : ℚ), (3027303001/5000000000 : ℚ), (-37641050849/200000000000 : ℚ), 4⟩,
    ⟨(58488208261/200000000000 : ℚ), (2000557929/5000000000 : ℚ), (-128669345921/1000000000000 : ℚ), 4⟩,
    ⟨(74335781319/250000000000 : ℚ), (1178217081/5000000000 : ℚ), (-80184064427/1000000000000 : ℚ), 4⟩,
    ⟨(18891808021/62500000000 : ℚ), (255433921/2500000000 : ℚ), (-4018010267/100000000000 : ℚ), 4⟩,
    ⟨(76792753077/250000000000 : ℚ), (-18419911/2500000000 : ℚ), (-1702195909/250000000000 : ℚ), 4⟩,
    ⟨(312002167443/1000000000000 : ℚ), (-122663463/1250000000 : ℚ), (21284164897/1000000000000 : ℚ), 3⟩,
    ⟨(316715867077/1000000000000 : ℚ), (-869616159/5000000000 : ℚ), (1409557241/31250000000 : ℚ), 3⟩,
    ⟨(64253343141/200000000000 : ℚ), (-2375981001/10000000000 : ℚ), (65414396107/1000000000000 : ℚ), 3⟩,
    ⟨(325610886167/1000000000000 : ℚ), (-116525971/400000000 : ℚ), (82786244411/1000000000000 : ℚ), 3⟩,
    ⟨(329706541727/1000000000000 : ℚ), (-673444521/2000000000 : ℚ), (97662769309/1000000000000 : ℚ), 3⟩,
    ⟨(41689279873/125000000000 : ℚ), (-937715991/2500000000 : ℚ), (110383630333/1000000000000 : ℚ), 3⟩,
    ⟨(33699730773/100000000000 : ℚ), (-2036919147/5000000000 : ℚ), (121210809947/1000000000000 : ℚ), 3⟩,
    ⟨(34012220411/100000000000 : ℚ), (-1085921379/2500000000 : ℚ), (130346290619/1000000000000 : ℚ), 3⟩,
    ⟨(1339292319/3906250000 : ℚ), (-182648643/400000000 : ℚ), (137945220271/1000000000000 : ℚ), 3⟩,
    ⟨(345180841153/1000000000000 : ℚ), (-593234849/1250000000 : ℚ), (2882516379/20000000000 : ℚ), 3⟩,
    ⟨(555305383/1600000000 : ℚ), (-4886034751/10000000000 : ℚ), (18622108351/125000000000 : ℚ), 3⟩,
    ⟨(174247874763/500000000000 : ℚ), (-997832057/2000000000 : ℚ), (30512668627/200000000000 : ℚ), 3⟩,
    ⟨(349456726031/1000000000000 : ℚ), (-2528497363/5000000000 : ℚ), (154930594629/1000000000000 : ℚ), 3⟩,
    ⟨(349939539161/1000000000000 : ℚ), (-5090643513/10000000000 : ℚ), (15610728531/100000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5094837181/10000000000 : ℚ), (78127025503/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (229389976153/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control712.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control712.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate712
