import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate258
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13552101597/50000000000 : ℚ), (2816651881137/2500000000 : ℚ), (-153073881807043/500000000000 : ℚ), 11⟩,
    ⟨(271999491591/1000000000000 : ℚ), (19170587051/156250000 : ℚ), (-8463275215241/250000000000 : ℚ), 8⟩,
    ⟨(17119074377/62500000000 : ℚ), (213961789167/5000000000 : ℚ), (-12069433442331/1000000000000 : ℚ), 7⟩,
    ⟨(138370387173/500000000000 : ℚ), (209685881443/10000000000 : ℚ), (-1213537542131/200000000000 : ℚ), 6⟩,
    ⟨(140239468153/500000000000 : ℚ), (30233151689/2500000000 : ℚ), (-1798845388311/500000000000 : ℚ), 5⟩,
    ⟨(35635459421/125000000000 : ℚ), (38332202759/5000000000 : ℚ), (-2347224536469/1000000000000 : ℚ), 5⟩,
    ⟨(290510645379/1000000000000 : ℚ), (25821223119/5000000000 : ℚ), (-406962903157/250000000000 : ℚ), 4⟩,
    ⟨(296707581651/1000000000000 : ℚ), (36248837439/10000000000 : ℚ), (-588166457351/500000000000 : ℚ), 4⟩,
    ⟨(151807402149/500000000000 : ℚ), (5235998133/2000000000 : ℚ), (-87439212157/100000000000 : ℚ), 4⟩,
    ⟨(311165792993/1000000000000 : ℚ), (482007457/250000000 : ℚ), (-662492074131/1000000000000 : ℚ), 3⟩,
    ⟨(63857565517/200000000000 : ℚ), (2875138781/2000000000 : ℚ), (-50801520303/100000000000 : ℚ), 3⟩,
    ⟨(163951344221/500000000000 : ℚ), (336999593/312500000 : ℚ), (-391879523831/1000000000000 : ℚ), 3⟩,
    ⟨(336927409743/1000000000000 : ℚ), (2021973373/2500000000 : ℚ), (-151160672811/500000000000 : ℚ), 3⟩,
    ⟨(346275078491/1000000000000 : ℚ), (6021296799/10000000000 : ℚ), (-231772141161/1000000000000 : ℚ), 3⟩,
    ⟨(88963917881/250000000000 : ℚ), (2204268377/5000000000 : ℚ), (-175187059287/1000000000000 : ℚ), 3⟩,
    ⟨(182788461247/500000000000 : ℚ), (195641787/625000000 : ℚ), (-25820429891/200000000000 : ℚ), 2⟩,
    ⟨(375345210441/1000000000000 : ℚ), (525850807/2500000000 : ℚ), (-91078558691/1000000000000 : ℚ), 2⟩,
    ⟨(96266615353/250000000000 : ℚ), (634436569/5000000000 : ℚ), (-59362237191/1000000000000 : ℚ), 2⟩,
    ⟨(78929410889/200000000000 : ℚ), (36495477/625000000 : ℚ), (-1633432937/50000000000 : ℚ), 2⟩,
    ⟨(50499340399/125000000000 : ℚ), (4285917/2500000000 : ℚ), (-10042675127/1000000000000 : ℚ), 2⟩,
    ⟨(206509722247/500000000000 : ℚ), (-227442199/5000000000 : ℚ), (9235051817/1000000000000 : ℚ), 2⟩,
    ⟨(421634305351/1000000000000 : ℚ), (-169957699/2000000000 : ℚ), (25711939301/1000000000000 : ℚ), 2⟩,
    ⟨(429756339943/1000000000000 : ℚ), (-1180976499/10000000000 : ℚ), (995199889/25000000000 : ℚ), 2⟩,
    ⟨(437307328637/1000000000000 : ℚ), (-1458720421/10000000000 : ℚ), (51847395479/1000000000000 : ℚ), 2⟩,
    ⟨(88842910257/200000000000 : ℚ), (-1690931707/10000000000 : ℚ), (62081244963/1000000000000 : ℚ), 2⟩,
    ⟨(112602871889/250000000000 : ℚ), (-1883720493/10000000000 : ℚ), (70704226323/1000000000000 : ℚ), 2⟩,
    ⟨(455838457567/1000000000000 : ℚ), (-2041803051/10000000000 : ℚ), (608335251/7812500000 : ℚ), 2⟩,
    ⟨(46044319663/100000000000 : ℚ), (-2168800677/10000000000 : ℚ), (4184247597/50000000000 : ℚ), 2⟩,
    ⟨(46418135859/100000000000 : ℚ), (-28343243/125000000 : ℚ), (88245948437/1000000000000 : ℚ), 2⟩,
    ⟨(58377117863/125000000000 : ℚ), (-2339810939/10000000000 : ℚ), (91614578851/1000000000000 : ℚ), 2⟩,
    ⟨(93784528269/200000000000 : ℚ), (-477457583/2000000000 : ℚ), (46918171803/500000000000 : ℚ), 2⟩,
    ⟨(93976020199/200000000000 : ℚ), (-1205402017/5000000000 : ℚ), (47470095839/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2413733241/10000000000 : ℚ), (9507784681/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (317830864923/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control258.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control258.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate258
