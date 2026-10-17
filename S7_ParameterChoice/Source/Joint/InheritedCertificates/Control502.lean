import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate502
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(153274437407/500000000000 : ℚ), (15481317126043/10000000000 : ℚ), (-475356408027529/1000000000000 : ℚ), 12⟩,
    ⟨(307239214917/1000000000000 : ℚ), (1693659985723/10000000000 : ℚ), (-26261072988357/500000000000 : ℚ), 9⟩,
    ⟨(308613246771/1000000000000 : ℚ), (594315495227/10000000000 : ℚ), (-2336909898051/125000000000 : ℚ), 7⟩,
    ⟨(310657737697/1000000000000 : ℚ), (293103393691/10000000000 : ℚ), (-9375472008163/1000000000000 : ℚ), 6⟩,
    ⟨(313352998131/1000000000000 : ℚ), (170085189173/10000000000 : ℚ), (-173124384493/31250000000 : ℚ), 6⟩,
    ⟨(7916826781/25000000000 : ℚ), (10840316533/1000000000 : ℚ), (-89956716029/25000000000 : ℚ), 5⟩,
    ⟨(320585982907/1000000000000 : ℚ), (9165511229/1250000000 : ℚ), (-2481298479769/1000000000000 : ℚ), 5⟩,
    ⟨(81263512413/250000000000 : ℚ), (51595255441/10000000000 : ℚ), (-14242417679/8000000000 : ℚ), 4⟩,
    ⟨(330034241551/1000000000000 : ℚ), (232983451/62500000 : ℚ), (-81976085671/62500000000 : ℚ), 4⟩,
    ⟨(335478596633/1000000000000 : ℚ), (27389743907/10000000000 : ℚ), (-982793472391/1000000000000 : ℚ), 4⟩,
    ⟨(170667341391/500000000000 : ℚ), (20305221687/10000000000 : ℚ), (-743180573991/1000000000000 : ℚ), 4⟩,
    ⟨(10860815709/31250000000 : ℚ), (15075655083/10000000000 : ℚ), (-281572895761/500000000000 : ℚ), 3⟩,
    ⟨(354053036981/1000000000000 : ℚ), (694948583/625000000 : ℚ), (-16976752509/40000000000 : ℚ), 3⟩,
    ⟨(360792820327/1000000000000 : ℚ), (4031647157/5000000000 : ℚ), (-315242310707/1000000000000 : ℚ), 3⟩,
    ⟨(11490642029/31250000000 : ℚ), (5661062157/10000000000 : ℚ), (-227776628869/1000000000000 : ℚ), 3⟩,
    ⟨(18735484281/50000000000 : ℚ), (1871949633/5000000000 : ℚ), (-156636101059/1000000000000 : ℚ), 3⟩,
    ⟨(381752740547/1000000000000 : ℚ), (1096913467/5000000000 : ℚ), (-612664417/6250000000 : ℚ), 3⟩,
    ⟨(388761881239/1000000000000 : ℚ), (926514511/10000000000 : ℚ), (-49215977197/1000000000000 : ℚ), 3⟩,
    ⟨(4945870073/12500000000 : ℚ), (-119417237/10000000000 : ℚ), (-4101505613/500000000000 : ℚ), 3⟩,
    ⟨(201204694593/500000000000 : ℚ), (-3957351/40000000 : ℚ), (26502873311/1000000000000 : ℚ), 3⟩,
    ⟨(408916323479/1000000000000 : ℚ), (-1717224573/10000000000 : ℚ), (56025206763/1000000000000 : ℚ), 3⟩,
    ⟨(83025548677/200000000000 : ℚ), (-1164401749/5000000000 : ℚ), (20304950827/250000000000 : ℚ), 3⟩,
    ⟨(210491914767/500000000000 : ℚ), (-2843725879/10000000000 : ℚ), (25685941353/250000000000 : ℚ), 3⟩,
    ⟨(53303523077/125000000000 : ℚ), (-1638552369/5000000000 : ℚ), (60552230657/500000000000 : ℚ), 2⟩,
    ⟨(86281675303/200000000000 : ℚ), (-3640615241/10000000000 : ℚ), (34173719253/250000000000 : ℚ), 2⟩,
    ⟨(21793822163/50000000000 : ℚ), (-3943293633/10000000000 : ℚ), (149819520641/1000000000000 : ℚ), 2⟩,
    ⟨(439789354927/1000000000000 : ℚ), (-131003861/312500000 : ℚ), (160713644963/1000000000000 : ℚ), 2⟩,
    ⟨(110777357009/250000000000 : ℚ), (-549058699/1250000000 : ℚ), (169557647139/1000000000000 : ℚ), 2⟩,
    ⟨(44580468847/100000000000 : ℚ), (-4548398797/10000000000 : ℚ), (88243950317/500000000000 : ℚ), 2⟩,
    ⟨(111962294849/250000000000 : ℚ), (-4662917897/10000000000 : ℚ), (181604868799/1000000000000 : ℚ), 2⟩,
    ⟨(359378569/800000000 : ℚ), (-4738145313/10000000000 : ℚ), (184979075031/1000000000000 : ℚ), 2⟩,
    ⟨(449913551353/1000000000000 : ℚ), (-2387715373/5000000000 : ℚ), (186655308271/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2390038107/5000000000 : ℚ), (186864334271/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (5994709181/20000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control502.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control502.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate502
