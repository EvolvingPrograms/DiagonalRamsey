import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control320.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control320.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate320
