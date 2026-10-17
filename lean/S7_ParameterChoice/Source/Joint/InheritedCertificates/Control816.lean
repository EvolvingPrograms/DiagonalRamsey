import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate816
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (852266093307/18868362985210 : ℚ), (2075130979279/10000000000 : ℚ), (-4694742932179/500000000000 : ℚ)⟩,
  ⟨(852266093307/18868362985210 : ℚ), (227709475501/4982320770300 : ℚ), (94147340379/5000000000 : ℚ), (-108353116411/125000000000 : ℚ)⟩,
  ⟨(227709475501/4982320770300 : ℚ), (94824891511/2038761788750 : ℚ), (38825057649/10000000000 : ℚ), (-36739300957/200000000000 : ℚ)⟩,
  ⟨(94824891511/2038761788750 : ℚ), (19784830433/416826592225 : ℚ), (-975089063/5000000000 : ℚ), (5953278237/1000000000000 : ℚ)⟩,
  ⟨(19784830433/416826592225 : ℚ), (40228832861/830836971200 : ℚ), (-3724648363/2000000000 : ℚ), (85092599969/1000000000000 : ℚ)⟩,
  ⟨(40228832861/830836971200 : ℚ), (7225815207/146786180000 : ℚ), (-26931611527/10000000000 : ℚ), (12532143283/100000000000 : ℚ)⟩,
  ⟨(7225815207/146786180000 : ℚ), (36400589/731460710 : ℚ), (-31335196927/10000000000 : ℚ), (146998878451/1000000000000 : ℚ)⟩,
  ⟨(36400589/731460710 : ℚ), (198674083/3975375450 : ℚ), (-8327535211/2500000000 : ℚ), (156827037481/1000000000000 : ℚ)⟩,
  ⟨(198674083/3975375450 : ℚ), (1/20 : ℚ), (-33548663371/10000000000 : ℚ), (158019081979/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6451336629/40000000000 : ℚ), (-1/5 : ℚ), (47568941281/250000000000 : ℚ)⟩,
  ⟨(6451336629/40000000000 : ℚ), (1672464789/10000000000 : ℚ), (-397348166/1987687725 : ℚ), (201695071471984703/1060100120000000000 : ℚ)⟩,
  ⟨(1672464789/10000000000 : ℚ), (8664803073/40000000000 : ℚ), (-72801178/365730355 : ℚ), (13906429754359315991/73146071000000000000 : ℚ)⟩,
  ⟨(8664803073/40000000000 : ℚ), (13068388473/40000000000 : ℚ), (-7225815207/36696545000 : ℚ), (278384304131609802911/1467861800000000000000 : ℚ)⟩,
  ⟨(13068388473/40000000000 : ℚ), (4275351637/8000000000 : ℚ), (-40228832861/207709242800 : ℚ), (1566942812432150456213/8308369712000000000000 : ℚ)⟩,
  ⟨(4275351637/8000000000 : ℚ), (19024910937/20000000000 : ℚ), (-79139321732/416826592225 : ℚ), (3110496482335615802061/16673063689000000000000 : ℚ)⟩,
  ⟨(19024910937/20000000000 : ℚ), (78825057649/40000000000 : ℚ), (-189649783022/1019380894375 : ℚ), (7458886786177700751903/40775235775000000000000 : ℚ)⟩,
  ⟨(78825057649/40000000000 : ℚ), (114147340379/20000000000 : ℚ), (-227709475501/1245580192575 : ℚ), (4398431710685844899147/24911603851500000000000 : ℚ)⟩,
  ⟨(114147340379/20000000000 : ℚ), (32/1 : ℚ), (-1704532186614/9434181492605 : ℚ), (77530353026680993460503/471709074630250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (624384144573/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(9020042747/200000000000 : ℚ), (2075130979279/10000000000 : ℚ), (-4694742932179/500000000000 : ℚ), 11⟩,
    ⟨(45469569701/1000000000000 : ℚ), (94147340379/5000000000 : ℚ), (-108353116411/125000000000 : ℚ), 8⟩,
    ⟨(23076025267/500000000000 : ℚ), (38825057649/10000000000 : ℚ), (-36739300957/200000000000 : ℚ), 7⟩,
    ⟨(9408750943/200000000000 : ℚ), (-975089063/5000000000 : ℚ), (5953278237/1000000000000 : ℚ), 6⟩,
    ⟨(24004464183/500000000000 : ℚ), (-3724648363/2000000000 : ℚ), (85092599969/1000000000000 : ℚ), 5⟩,
    ⟨(48900632547/1000000000000 : ℚ), (-26931611527/10000000000 : ℚ), (12532143283/100000000000 : ℚ), 5⟩,
    ⟨(49583113381/1000000000000 : ℚ), (-31335196927/10000000000 : ℚ), (146998878451/1000000000000 : ℚ), 5⟩,
    ⟨(24976234673/500000000000 : ℚ), (-8327535211/2500000000 : ℚ), (156827037481/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-33548663371/10000000000 : ℚ), (158019081979/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control816.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control816.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate816
