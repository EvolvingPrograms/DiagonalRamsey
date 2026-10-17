import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate383
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(35257009141/125000000000 : ℚ), (2426229045889/2000000000 : ℚ), (-42864641161719/125000000000 : ℚ), 12⟩,
    ⟨(141456202703/500000000000 : ℚ), (661729481419/5000000000 : ℚ), (-37909467686861/1000000000000 : ℚ), 8⟩,
    ⟨(142308411507/500000000000 : ℚ), (46271521417/1000000000 : ℚ), (-1688592683407/125000000000 : ℚ), 7⟩,
    ⟨(287152911479/1000000000000 : ℚ), (56831812227/2500000000 : ℚ), (-678594698679/100000000000 : ℚ), 6⟩,
    ⟨(290496246883/1000000000000 : ℚ), (32860458963/2500000000 : ℚ), (-2009599772211/500000000000 : ℚ), 5⟩,
    ⟨(294614631077/1000000000000 : ℚ), (1670378453/200000000 : ℚ), (-2618497746751/1000000000000 : ℚ), 5⟩,
    ⟨(299468401771/1000000000000 : ℚ), (56366971219/10000000000 : ℚ), (-1812699133539/1000000000000 : ℚ), 4⟩,
    ⟨(610021629/2000000000 : ℚ), (39618848037/10000000000 : ℚ), (-261388387553/200000000000 : ℚ), 4⟩,
    ⟨(311188492799/1000000000000 : ℚ), (5726571927/2000000000 : ℚ), (-968742364087/1000000000000 : ℚ), 4⟩,
    ⟨(1271767769/4000000000 : ℚ), (10541142981/5000000000 : ℚ), (-365706039029/500000000000 : ℚ), 4⟩,
    ⟨(162603061721/500000000000 : ℚ), (15698693861/10000000000 : ℚ), (-558415793903/1000000000000 : ℚ), 3⟩,
    ⟨(332911078339/1000000000000 : ℚ), (5872121587/5000000000 : ℚ), (-214189653123/500000000000 : ℚ), 3⟩,
    ⟨(340982604013/1000000000000 : ℚ), (8767017663/10000000000 : ℚ), (-328125285093/1000000000000 : ℚ), 3⟩,
    ⟨(349342967261/1000000000000 : ℚ), (6478375873/10000000000 : ℚ), (-124587500309/500000000000 : ℚ), 3⟩,
    ⟨(178955826607/500000000000 : ℚ), (2343730257/5000000000 : ℚ), (-185876117591/1000000000000 : ℚ), 3⟩,
    ⟨(366606140741/1000000000000 : ℚ), (204022123/625000000 : ℚ), (-67173382703/500000000000 : ℚ), 3⟩,
    ⟨(46917837147/125000000000 : ℚ), (211841953/1000000000 : ℚ), (-22963269649/250000000000 : ℚ), 3⟩,
    ⟨(384037184703/1000000000000 : ℚ), (592542067/5000000000 : ℚ), (-7053516807/125000000000 : ℚ), 3⟩,
    ⟨(6134466729/15625000000 : ℚ), (417508351/10000000000 : ℚ), (-26630916467/1000000000000 : ℚ), 2⟩,
    ⟨(25060389619/62500000000 : ℚ), (-218812551/10000000000 : ℚ), (-694712903/500000000000 : ℚ), 2⟩,
    ⟨(204518879789/500000000000 : ℚ), (-749634667/10000000000 : ℚ), (628251557/31250000000 : ℚ), 2⟩,
    ⟨(16669708579/40000000000 : ℚ), (-37324979/312500000 : ℚ), (4808055259/125000000000 : ℚ), 2⟩,
    ⟨(424006895667/1000000000000 : ℚ), (-156791679/1000000000 : ℚ), (27081860583/500000000000 : ℚ), 2⟩,
    ⟨(430760345117/1000000000000 : ℚ), (-940775377/5000000000 : ℚ), (16891560979/250000000000 : ℚ), 2⟩,
    ⟨(436938023417/1000000000000 : ℚ), (-42881283/200000000 : ℚ), (39477125623/500000000000 : ℚ), 2⟩,
    ⟨(88496087229/200000000000 : ℚ), (-147639421/625000000 : ℚ), (44273263157/500000000000 : ℚ), 2⟩,
    ⟨(11183355171/25000000000 : ℚ), (-635320483/2500000000 : ℚ), (4825610791/50000000000 : ℚ), 2⟩,
    ⟨(225726295517/500000000000 : ℚ), (-1342617797/5000000000 : ℚ), (12872644833/125000000000 : ℚ), 2⟩,
    ⟨(227397963219/500000000000 : ℚ), (-279713849/1000000000 : ℚ), (21610326229/200000000000 : ℚ), 2⟩,
    ⟨(457332014903/1000000000000 : ℚ), (-2879244271/10000000000 : ℚ), (27949032701/250000000000 : ℚ), 2⟩,
    ⟨(459036432511/1000000000000 : ℚ), (-733285457/2500000000 : ℚ), (114265617507/1000000000000 : ℚ), 2⟩,
    ⟨(459892764789/1000000000000 : ℚ), (-2959844123/10000000000 : ℚ), (115492491681/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-592634097/2000000000 : ℚ), (57822743227/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (10398213309/31250000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control383.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control383.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate383
