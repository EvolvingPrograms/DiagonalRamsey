import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate341
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(77524175689/250000000000 : ℚ), (5804963898697/5000000000 : ℚ), (-90216829785073/250000000000 : ℚ), 11⟩,
    ⟨(77776708849/250000000000 : ℚ), (1265693004091/10000000000 : ℚ), (-39903739560933/1000000000000 : ℚ), 8⟩,
    ⟨(78279343137/250000000000 : ℚ), (8842603647/200000000 : ℚ), (-222290514583/15625000000 : ℚ), 7⟩,
    ⟨(158054475819/500000000000 : ℚ), (108516822857/5000000000 : ℚ), (-894024774873/125000000000 : ℚ), 6⟩,
    ⟨(160026381063/500000000000 : ℚ), (125410241981/10000000000 : ℚ), (-4240832750419/1000000000000 : ℚ), 5⟩,
    ⟨(324910822959/1000000000000 : ℚ), (9957714999/1250000000 : ℚ), (-1383501146327/500000000000 : ℚ), 5⟩,
    ⟨(165318174179/500000000000 : ℚ), (53771901301/10000000000 : ℚ), (-959610871257/500000000000 : ℚ), 4⟩,
    ⟨(337174198381/1000000000000 : ℚ), (37823907831/10000000000 : ℚ), (-1387202407309/1000000000000 : ℚ), 4⟩,
    ⟨(8611535249/25000000000 : ℚ), (13689404627/5000000000 : ℚ), (-64470502887/62500000000 : ℚ), 4⟩,
    ⟨(2753342213/7812500000 : ℚ), (20212229497/10000000000 : ℚ), (-156403970679/200000000000 : ℚ), 3⟩,
    ⟨(360996657569/1000000000000 : ℚ), (7555992723/5000000000 : ℚ), (-600229489771/1000000000000 : ℚ), 3⟩,
    ⟨(2960683601/8000000000 : ℚ), (11373266577/10000000000 : ℚ), (-463662829063/1000000000000 : ℚ), 3⟩,
    ⟨(94901662723/250000000000 : ℚ), (428230149/500000000 : ℚ), (-44806425637/125000000000 : ℚ), 3⟩,
    ⟨(778937131/2000000000 : ℚ), (256422637/400000000 : ℚ), (-137835544561/500000000000 : ℚ), 3⟩,
    ⟨(399576218321/1000000000000 : ℚ), (4729144221/10000000000 : ℚ), (-104685947243/500000000000 : ℚ), 3⟩,
    ⟨(204916133567/500000000000 : ℚ), (1698259681/5000000000 : ℚ), (-155466757739/1000000000000 : ℚ), 3⟩,
    ⟨(420137940581/1000000000000 : ℚ), (145397719/625000000 : ℚ), (-111076471071/1000000000000 : ℚ), 2⟩,
    ⟨(430393989393/1000000000000 : ℚ), (145720949/1000000000 : ℚ), (-14825730161/200000000000 : ℚ), 2⟩,
    ⟨(88100328443/200000000000 : ℚ), (372246841/5000000000 : ℚ), (-43104071043/1000000000000 : ℚ), 2⟩,
    ⟨(450363556823/1000000000000 : ℚ), (7770043/500000000 : ℚ), (-16871564839/1000000000000 : ℚ), 2⟩,
    ⟨(459884757589/1000000000000 : ℚ), (-83639509/2500000000 : ℚ), (542216873/100000000000 : ℚ), 2⟩,
    ⟨(93794710029/200000000000 : ℚ), (-148773413/2000000000 : ℚ), (24427775659/1000000000000 : ℚ), 2⟩,
    ⟨(477542404451/1000000000000 : ℚ), (-543304833/5000000000 : ℚ), (20322808213/500000000000 : ℚ), 2⟩,
    ⟨(242754398877/500000000000 : ℚ), (-1373596273/10000000000 : ℚ), (27231445861/500000000000 : ℚ), 2⟩,
    ⟨(492796009333/1000000000000 : ℚ), (-1613168523/10000000000 : ℚ), (66180388341/1000000000000 : ℚ), 2⟩,
    ⟨(499333859357/1000000000000 : ℚ), (-28309063/156250000 : ℚ), (118800031/1562500000 : ℚ), 2⟩,
    ⟨(101011876951/200000000000 : ℚ), (-15425157/78125000 : ℚ), (84199272743/1000000000000 : ℚ), 2⟩,
    ⟨(509917445589/1000000000000 : ℚ), (-263115623/1250000000 : ℚ), (90821978767/1000000000000 : ℚ), 2⟩,
    ⟨(128465314019/250000000000 : ℚ), (-551551799/2500000000 : ℚ), (96006375171/1000000000000 : ℚ), 2⟩,
    ⟨(516852835167/1000000000000 : ℚ), (-2280423501/10000000000 : ℚ), (99831110199/1000000000000 : ℚ), 2⟩,
    ⟨(259431686159/500000000000 : ℚ), (-1164547999/5000000000 : ℚ), (102351638987/1000000000000 : ℚ), 2⟩,
    ⟨(259936752479/500000000000 : ℚ), (-147074739/625000000 : ℚ), (103603305961/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1178098671/5000000000 : ℚ), (1037593659/10000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (31336515049/100000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control341.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control341.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate341
