import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control451.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control451.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate451
