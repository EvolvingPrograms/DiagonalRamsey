import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate457
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13970418553/62500000000 : ℚ), (13164044173457/10000000000 : ℚ), (-73707572368693/250000000000 : ℚ), 12⟩,
    ⟨(56033833341/250000000000 : ℚ), (89842262123/625000000 : ℚ), (-8144710536737/250000000000 : ℚ), 9⟩,
    ⟨(45069348979/200000000000 : ℚ), (251557951581/5000000000 : ℚ), (-5799274094447/500000000000 : ℚ), 7⟩,
    ⟨(45429852977/200000000000 : ℚ), (247396612367/10000000000 : ℚ), (-1454509054803/250000000000 : ℚ), 6⟩,
    ⟨(229525534081/1000000000000 : ℚ), (71557923871/5000000000 : ℚ), (-343896920501/100000000000 : ℚ), 6⟩,
    ⟨(3632072933/15625000000 : ℚ), (90924444169/10000000000 : ℚ), (-2234416056121/1000000000000 : ℚ), 5⟩,
    ⟨(5897561897/25000000000 : ℚ), (61304070297/10000000000 : ℚ), (-1541335535319/1000000000000 : ℚ), 5⟩,
    ⟨(29980216881/125000000000 : ℚ), (5374634709/1250000000 : ℚ), (-276550454273/250000000000 : ℚ), 4⟩,
    ⟨(48846501599/200000000000 : ℚ), (30961213017/10000000000 : ℚ), (-12736014061/15625000000 : ℚ), 4⟩,
    ⟨(249032509179/1000000000000 : ℚ), (4533572823/2000000000 : ℚ), (-610707097249/1000000000000 : ℚ), 4⟩,
    ⟨(63548877991/250000000000 : ℚ), (2092228489/1250000000 : ℚ), (-28849813139/62500000000 : ℚ), 4⟩,
    ⟨(259671793811/1000000000000 : ℚ), (12368357629/10000000000 : ℚ), (-174699582527/500000000000 : ℚ), 3⟩,
    ⟨(66352153783/250000000000 : ℚ), (9067457833/10000000000 : ℚ), (-52557217737/200000000000 : ℚ), 3⟩,
    ⟨(271350727201/1000000000000 : ℚ), (3260330987/5000000000 : ℚ), (-194470467447/1000000000000 : ℚ), 3⟩,
    ⟨(277440904231/1000000000000 : ℚ), (4519878993/10000000000 : ℚ), (-139595433181/1000000000000 : ℚ), 3⟩,
    ⟨(35452561811/125000000000 : ℚ), (730838019/2500000000 : ℚ), (-47413347849/500000000000 : ℚ), 3⟩,
    ⟨(14491499257/50000000000 : ℚ), (1632113089/10000000000 : ℚ), (-1806792821/31250000000 : ℚ), 3⟩,
    ⟨(296009575397/1000000000000 : ℚ), (143902059/2500000000 : ℚ), (-3360043587/125000000000 : ℚ), 3⟩,
    ⟨(302099752427/1000000000000 : ℚ), (-148682799/5000000000 : ℚ), (-156209691/200000000000 : ℚ), 3⟩,
    ⟨(308041864497/1000000000000 : ℚ), (-256134729/2500000000 : ℚ), (4279501623/200000000000 : ℚ), 3⟩,
    ⟨(313778685817/1000000000000 : ℚ), (-408519229/2500000000 : ℚ), (20172395071/500000000000 : ℚ), 3⟩,
    ⟨(19953435479/62500000000 : ℚ), (-2147233933/10000000000 : ℚ), (11316861613/200000000000 : ℚ), 2⟩,
    ⟨(324417970449/1000000000000 : ℚ), (-322523981/1250000000 : ℚ), (7051653577/100000000000 : ℚ), 2⟩,
    ⟨(329217971633/1000000000000 : ℚ), (-2945355239/10000000000 : ℚ), (4122470257/50000000000 : ℚ), 2⟩,
    ⟨(16680437229/50000000000 : ℚ), (-1626138811/5000000000 : ℚ), (92620341509/1000000000000 : ℚ), 2⟩,
    ⟨(84387000937/250000000000 : ℚ), (-877083099/2500000000 : ℚ), (50606211727/500000000000 : ℚ), 2⟩,
    ⟨(85249452979/250000000000 : ℚ), (-743840789/2000000000 : ℚ), (3386449501/31250000000 : ℚ), 2⟩,
    ⟨(343924945547/1000000000000 : ℚ), (-3889249641/10000000000 : ℚ), (114189602599/1000000000000 : ℚ), 2⟩,
    ⟨(346301214743/1000000000000 : ℚ), (-2010883649/5000000000 : ℚ), (29690716453/250000000000 : ℚ), 2⟩,
    ⟨(348103734733/1000000000000 : ℚ), (-4119191791/10000000000 : ℚ), (30536357339/250000000000 : ℚ), 2⟩,
    ⟨(43664393283/125000000000 : ℚ), (-4183237027/10000000000 : ℚ), (124378735863/1000000000000 : ℚ), 2⟩,
    ⟨(17496189139/50000000000 : ℚ), (-1053748577/2500000000 : ℚ), (125489030817/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-2109475837/5000000000 : ℚ), (62813761761/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (46019442979/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control457.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control457.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate457
