import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate683
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252027103761/1000000000000 : ℚ), (359514955429/250000000 : ℚ), (-181461575258061/500000000000 : ℚ), 13⟩,
    ⟨(252498585733/1000000000000 : ℚ), (1574878605991/10000000000 : ℚ), (-40073173210297/1000000000000 : ℚ), 10⟩,
    ⟨(126718504523/500000000000 : ℚ), (553250240087/10000000000 : ℚ), (-17806277367/1250000000 : ℚ), 8⟩,
    ⟨(63708334043/250000000000 : ℚ), (273067738941/10000000000 : ℚ), (-3564454146921/500000000000 : ℚ), 7⟩,
    ⟨(128337059859/500000000000 : ℚ), (79244363139/5000000000 : ℚ), (-2100124622759/500000000000 : ℚ), 6⟩,
    ⟨(25894163193/100000000000 : ℚ), (78861769/7812500 : ℚ), (-543507317271/200000000000 : ℚ), 6⟩,
    ⟨(65403508857/250000000000 : ℚ), (68151369569/10000000000 : ℚ), (-932260254419/500000000000 : ℚ), 5⟩,
    ⟨(52933118701/200000000000 : ℚ), (5974092089/1250000000 : ℚ), (-1329093085651/1000000000000 : ℚ), 5⟩,
    ⟨(268066917987/1000000000000 : ℚ), (34343013083/10000000000 : ℚ), (-971022665141/1000000000000 : ℚ), 5⟩,
    ⟨(135892626131/500000000000 : ℚ), (6257111873/2500000000 : ℚ), (-719721315129/1000000000000 : ℚ), 5⟩,
    ⟨(275784786737/1000000000000 : ℚ), (18333833339/10000000000 : ℚ), (-4292138489/8000000000 : ℚ), 4⟩,
    ⟨(280027003709/1000000000000 : ℚ), (2675132263/2000000000 : ℚ), (-199393080549/500000000000 : ℚ), 4⟩,
    ⟨(28447104831/100000000000 : ℚ), (961127181/1000000000 : ℚ), (-292579077881/1000000000000 : ℚ), 4⟩,
    ⟨(7226853049/25000000000 : ℚ), (418309069/625000000 : ℚ), (-104460098737/500000000000 : ℚ), 4⟩,
    ⟨(18361993409/62500000000 : ℚ), (219496251/500000000 : ℚ), (-141825036609/1000000000000 : ℚ), 4⟩,
    ⟨(298578931333/1000000000000 : ℚ), (1272254693/5000000000 : ℚ), (-87183005789/1000000000000 : ℚ), 4⟩,
    ⟨(303389130547/1000000000000 : ℚ), (1046210957/10000000000 : ℚ), (-42098759593/1000000000000 : ℚ), 3⟩,
    ⟨(38522020917/125000000000 : ℚ), (-1472243/80000000 : ℚ), (-561132091/125000000000 : ℚ), 3⟩,
    ⟨(3911174249/12500000000 : ℚ), (-1203812467/10000000000 : ℚ), (543443733/20000000000 : ℚ), 3⟩,
    ⟨(317497013571/1000000000000 : ℚ), (-256967681/1250000000 : ℚ), (54019811453/1000000000000 : ℚ), 3⟩,
    ⟨(321941058171/1000000000000 : ℚ), (-346467443/1250000000 : ℚ), (1922704223/25000000000 : ℚ), 3⟩,
    ⟨(326183275143/1000000000000 : ℚ), (-421997181/1250000000 : ℚ), (24121690091/250000000000 : ℚ), 3⟩,
    ⟨(165091404809/500000000000 : ℚ), (-2429319/6250000 : ℚ), (14156622343/125000000000 : ℚ), 3⟩,
    ⟨(333901143893/1000000000000 : ℚ), (-172748693/400000000 : ℚ), (127589592267/1000000000000 : ℚ), 3⟩,
    ⟨(2698419747/8000000000 : ℚ), (-4682334287/10000000000 : ℚ), (4368495397/31250000000 : ℚ), 3⟩,
    ⟨(85088506613/250000000000 : ℚ), (-623275873/1250000000 : ℚ), (75043706747/500000000000 : ℚ), 3⟩,
    ⟨(6860528599/20000000000 : ℚ), (-40912851/78125000 : ℚ), (31730232481/200000000000 : ℚ), 3⟩,
    ⟨(172646971081/500000000000 : ℚ), (-5439232901/10000000000 : ℚ), (5175511889/31250000000 : ℚ), 3⟩,
    ⟨(86783681427/250000000000 : ℚ), (-5597137377/10000000000 : ℚ), (17108317513/100000000000 : ℚ), 3⟩,
    ⟨(174265526417/500000000000 : ℚ), (-2856666823/5000000000 : ℚ), (175124828607/1000000000000 : ℚ), 3⟩,
    ⟨(349469476147/1000000000000 : ℚ), (-2894885593/5000000000 : ℚ), (11112030663/62500000000 : ℚ), 3⟩,
    ⟨(349940958119/1000000000000 : ℚ), (-5827689061/10000000000 : ℚ), (179118497213/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2916207431/5000000000 : ℚ), (22410485787/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (104594529787/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control683.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control683.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate683
