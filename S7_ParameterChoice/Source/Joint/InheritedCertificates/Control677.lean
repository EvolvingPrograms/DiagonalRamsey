import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate677
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(526145678449/1000000000000 : ℚ), (16924533546197/10000000000 : ℚ), (-222882051264163/250000000000 : ℚ), 12⟩,
    ⟨(526982330027/1000000000000 : ℚ), (1857216714233/10000000000 : ℚ), (-98535786333071/1000000000000 : ℚ), 9⟩,
    ⟨(528647575771/1000000000000 : ℚ), (163669022013/2500000000 : ℚ), (-4387099690509/125000000000 : ℚ), 8⟩,
    ⟨(265562689227/500000000000 : ℚ), (324670037069/10000000000 : ℚ), (-550600784443/31250000000 : ℚ), 7⟩,
    ⟨(267195937741/500000000000 : ℚ), (189609359989/10000000000 : ℚ), (-5213695819513/500000000000 : ℚ), 6⟩,
    ⟨(538415608703/1000000000000 : ℚ), (15214874273/1250000000 : ℚ), (-212110161959/31250000000 : ℚ), 6⟩,
    ⟨(271578913683/500000000000 : ℚ), (41500623747/5000000000 : ℚ), (-938944693181/200000000000 : ℚ), 5⟩,
    ⟨(274286430657/500000000000 : ℚ), (58948420207/10000000000 : ℚ), (-3382368913417/1000000000000 : ℚ), 5⟩,
    ⟨(69326070101/125000000000 : ℚ), (21526760091/5000000000 : ℚ), (-626502139051/250000000000 : ℚ), 5⟩,
    ⟨(140301699691/250000000000 : ℚ), (64095527/20000000 : ℚ), (-473061822993/250000000000 : ℚ), 4⟩,
    ⟨(568304030543/1000000000000 : ℚ), (24144435523/10000000000 : ℚ), (-723040085861/500000000000 : ℚ), 4⟩,
    ⟨(143957976481/250000000000 : ℚ), (9150441603/5000000000 : ℚ), (-17373659681/15625000000 : ℚ), 4⟩,
    ⟨(11674358547/20000000000 : ℚ), (13876032593/10000000000 : ℚ), (-855461936959/1000000000000 : ℚ), 4⟩,
    ⟨(295943074063/500000000000 : ℚ), (10458544011/10000000000 : ℚ), (-130929225507/200000000000 : ℚ), 4⟩,
    ⟨(600257903819/1000000000000 : ℚ), (7774958279/10000000000 : ℚ), (-98946509673/200000000000 : ℚ), 3⟩,
    ⟨(304376284923/500000000000 : ℚ), (5637962843/10000000000 : ℚ), (-365584977361/1000000000000 : ℚ), 3⟩,
    ⟨(61728833793/100000000000 : ℚ), (489492897/1250000000 : ℚ), (-260047416513/1000000000000 : ℚ), 3⟩,
    ⟨(625783003957/1000000000000 : ℚ), (314297031/1250000000 : ℚ), (-43238510473/250000000000 : ℚ), 3⟩,
    ⟨(12683095193/20000000000 : ℚ), (682043089/5000000000 : ℚ), (-50251664871/500000000000 : ℚ), 3⟩,
    ⟨(321161490213/500000000000 : ℚ), (413619277/10000000000 : ℚ), (-7970212359/200000000000 : ℚ), 3⟩,
    ⟨(650209001853/1000000000000 : ℚ), (-46978797/1250000000 : ℚ), (5580488689/500000000000 : ℚ), 3⟩,
    ⟨(657736877233/1000000000000 : ℚ), (-51693629/500000000 : ℚ), (27094929971/500000000000 : ℚ), 3⟩,
    ⟨(166208527253/250000000000 : ℚ), (-197914361/1250000000 : ℚ), (45259980477/500000000000 : ℚ), 3⟩,
    ⟨(83929043371/125000000000 : ℚ), (-25523149/125000000 : ℚ), (15144223587/125000000000 : ℚ), 3⟩,
    ⟨(677468046463/1000000000000 : ℚ), (-1211638089/5000000000 : ℚ), (4589914201/31250000000 : ℚ), 3⟩,
    ⟨(68288308041/100000000000 : ℚ), (-1369178953/5000000000 : ℚ), (84153628313/500000000000 : ℚ), 3⟩,
    ⟨(687625299073/1000000000000 : ℚ), (-1497746021/5000000000 : ℚ), (7437072961/40000000000 : ℚ), 3⟩,
    ⟨(345824516147/500000000000 : ℚ), (-640235629/2000000000 : ℚ), (4002226699/20000000000 : ℚ), 3⟩,
    ⟨(347457764661/500000000000 : ℚ), (-1680189003/5000000000 : ℚ), (52787049133/250000000000 : ℚ), 3⟩,
    ⟨(139478666401/200000000000 : ℚ), (-3476781249/10000000000 : ℚ), (109625792259/500000000000 : ℚ), 3⟩,
    ⟨(699058577749/1000000000000 : ℚ), (-444124919/1250000000 : ℚ), (4491466167/20000000000 : ℚ), 3⟩,
    ⟨(699895229327/1000000000000 : ℚ), (-3590701603/10000000000 : ℚ), (113605245493/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-3595395519/10000000000 : ℚ), (56884760131/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (110741162279/500000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control677.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control677.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate677
