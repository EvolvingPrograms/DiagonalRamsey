import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
