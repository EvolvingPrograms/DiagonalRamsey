import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate262
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(327744016733/1000000000000 : ℚ), (2439715144023/2000000000 : ℚ), (-100186141614067/250000000000 : ℚ), 11⟩,
    ⟨(20550849693/62500000000 : ℚ), (1329891123997/10000000000 : ℚ), (-553950327329/12500000000 : ℚ), 8⟩,
    ⟨(82735612793/250000000000 : ℚ), (464582923613/10000000000 : ℚ), (-15801722155269/1000000000000 : ℚ), 7⟩,
    ⟨(334110082939/1000000000000 : ℚ), (228081689849/10000000000 : ℚ), (-397285524393/50000000000 : ℚ), 6⟩,
    ⟨(169142992181/500000000000 : ℚ), (65909950701/5000000000 : ℚ), (-4712745199809/1000000000000 : ℚ), 5⟩,
    ⟨(343429939229/1000000000000 : ℚ), (83758496407/10000000000 : ℚ), (-3076176071329/1000000000000 : ℚ), 5⟩,
    ⟨(349492408441/1000000000000 : ℚ), (56562475851/10000000000 : ℚ), (-2134851019273/1000000000000 : ℚ), 4⟩,
    ⟨(356415007107/1000000000000 : ℚ), (19906132769/5000000000 : ℚ), (-193024262167/125000000000 : ℚ), 4⟩,
    ⟨(5689547919/15625000000 : ℚ), (7210978573/2500000000 : ℚ), (-1149382374189/1000000000000 : ℚ), 4⟩,
    ⟨(372566277697/1000000000000 : ℚ), (10660136667/5000000000 : ℚ), (-872480775001/1000000000000 : ℚ), 3⟩,
    ⟨(47704925507/125000000000 : ℚ), (3991922463/2500000000 : ℚ), (-13415816167/20000000000 : ℚ), 3⟩,
    ⟨(391263066727/1000000000000 : ℚ), (3011400081/2500000000 : ℚ), (-103866226097/200000000000 : ℚ), 3⟩,
    ⟨(401344584579/1000000000000 : ℚ), (455031877/500000000 : ℚ), (-201349611949/500000000000 : ℚ), 3⟩,
    ⟨(205893433541/500000000000 : ℚ), (6843386343/10000000000 : ℚ), (-38872911867/125000000000 : ℚ), 3⟩,
    ⟨(105622337337/250000000000 : ℚ), (2541292943/5000000000 : ℚ), (-237574357043/1000000000000 : ℚ), 3⟩,
    ⟨(216674480311/500000000000 : ℚ), (73762381/200000000 : ℚ), (-177932198477/1000000000000 : ℚ), 2⟩,
    ⟨(444261116911/1000000000000 : ℚ), (160578787/625000000 : ℚ), (-128857900939/1000000000000 : ℚ), 2⟩,
    ⟨(91024145637/200000000000 : ℚ), (41535161/250000000 : ℚ), (-11006058283/125000000000 : ℚ), 2⟩,
    ⟨(465823210451/1000000000000 : ℚ), (183542541/2000000000 : ℚ), (-26907548437/500000000000 : ℚ), 2⟩,
    ⟨(238132746477/500000000000 : ℚ), (151839463/5000000000 : ℚ), (-6224959749/250000000000 : ℚ), 2⟩,
    ⟨(243173505403/500000000000 : ℚ), (-25805981/1250000000 : ℚ), (-88302041/250000000000 : ℚ), 2⟩,
    ⟨(495970673477/1000000000000 : ℚ), (-632111869/10000000000 : ℚ), (20549324873/1000000000000 : ℚ), 2⟩,
    ⟨(126260949959/250000000000 : ℚ), (-98813423/1000000000 : ℚ), (19182735933/500000000000 : ℚ), 2⟩,
    ⟨(513479010717/1000000000000 : ℚ), (-1285897311/10000000000 : ℚ), (13381831051/250000000000 : ℚ), 2⟩,
    ⟨(260597535213/500000000000 : ℚ), (-153418931/1000000000 : ℚ), (66371013641/1000000000000 : ℚ), 2⟩,
    ⟨(132029417273/250000000000 : ℚ), (-434953483/2500000000 : ℚ), (77158363421/1000000000000 : ℚ), 2⟩,
    ⟨(8346564661/15625000000 : ℚ), (-381607003/2000000000 : ℚ), (17218575717/200000000000 : ℚ), 2⟩,
    ⟨(539324093171/1000000000000 : ℚ), (-510725757/2500000000 : ℚ), (23332913063/250000000000 : ℚ), 2⟩,
    ⟨(271749997297/500000000000 : ℚ), (-536873857/2500000000 : ℚ), (49497131899/500000000000 : ℚ), 2⟩,
    ⟨(546667626361/1000000000000 : ℚ), (-1112046377/5000000000 : ℚ), (20633879887/200000000000 : ℚ), 2⟩,
    ⟨(109759296489/200000000000 : ℚ), (-284288179/1250000000 : ℚ), (13239961391/125000000000 : ℚ), 2⟩,
    ⟨(549866060799/1000000000000 : ℚ), (-459832287/2000000000 : ℚ), (107285106887/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2302256829/10000000000 : ℚ), (107455332819/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (279509834173/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control262.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control262.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate262
