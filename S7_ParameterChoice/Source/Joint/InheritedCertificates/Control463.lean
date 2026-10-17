import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate463
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(312330897743/1000000000000 : ℚ), (15760297375263/10000000000 : ℚ), (-493058717223961/1000000000000 : ℚ), 12⟩,
    ⟨(156520768159/500000000000 : ℚ), (1724081208797/10000000000 : ℚ), (-27240366415833/500000000000 : ℚ), 9⟩,
    ⟨(9826749051/31250000000 : ℚ), (604957017017/10000000000 : ℚ), (-37879639273/1953125000 : ℚ), 7⟩,
    ⟨(316560575917/1000000000000 : ℚ), (298343357229/10000000000 : ℚ), (-9727574524011/1000000000000 : ℚ), 6⟩,
    ⟨(39916885833/125000000000 : ℚ), (173129377653/10000000000 : ℚ), (-114985935887/20000000000 : ℚ), 6⟩,
    ⟨(322752781819/1000000000000 : ℚ), (110353017811/10000000000 : ℚ), (-3735317003863/1000000000000 : ℚ), 5⟩,
    ⟨(326780747109/1000000000000 : ℚ), (7465620341/1000000000 : ℚ), (-1288395910503/500000000000 : ℚ), 5⟩,
    ⟨(165690095513/500000000000 : ℚ), (52548107933/10000000000 : ℚ), (-1849733219679/1000000000000 : ℚ), 4⟩,
    ⟨(336506818411/1000000000000 : ℚ), (18991431939/5000000000 : ℚ), (-272727968291/200000000000 : ℚ), 4⟩,
    ⟨(4276390713/12500000000 : ℚ), (27926452629/10000000000 : ℚ), (-1022618479127/1000000000000 : ℚ), 4⟩,
    ⟨(21758720819/62500000000 : ℚ), (4144516329/2000000000 : ℚ), (-774132890727/1000000000000 : ℚ), 4⟩,
    ⟨(354533591011/1000000000000 : ℚ), (770310717/500000000 : ℚ), (-58744646221/100000000000 : ℚ), 3⟩,
    ⟨(361231852487/1000000000000 : ℚ), (2846284177/2500000000 : ℚ), (-44360824813/100000000000 : ℚ), 3⟩,
    ⟨(92042452403/250000000000 : ℚ), (4140125387/5000000000 : ℚ), (-330422809877/1000000000000 : ℚ), 3⟩,
    ⟨(375280646067/1000000000000 : ℚ), (2920124589/5000000000 : ℚ), (-239758256197/1000000000000 : ℚ), 3⟩,
    ⟨(382495880609/1000000000000 : ℚ), (60837217/156250000 : ℚ), (-16602805163/100000000000 : ℚ), 3⟩,
    ⟨(194873013293/500000000000 : ℚ), (1160099983/5000000000 : ℚ), (-105296134963/1000000000000 : ℚ), 3⟩,
    ⟨(396961261129/1000000000000 : ℚ), (1034297603/10000000000 : ℚ), (-13682287053/250000000000 : ℚ), 3⟩,
    ⟨(25254506099/62500000000 : ℚ), (-6643873/2500000000 : ℚ), (-12250005843/1000000000000 : ℚ), 3⟩,
    ⟨(411010054709/1000000000000 : ℚ), (-45428971/500000000 : ℚ), (2960944341/125000000000 : ℚ), 3⟩,
    ⟨(83541663237/200000000000 : ℚ), (-329256809/2000000000 : ℚ), (6781180617/125000000000 : ℚ), 3⟩,
    ⟨(106025593523/250000000000 : ℚ), (-2265864723/10000000000 : ℚ), (8032394799/100000000000 : ℚ), 3⟩,
    ⟨(107532662539/250000000000 : ℚ), (-2787317919/10000000000 : ℚ), (12824160703/125000000000 : ℚ), 2⟩,
    ⟨(87147017757/200000000000 : ℚ), (-80650603/250000000 : ℚ), (121584407743/1000000000000 : ℚ), 2⟩,
    ⟨(44086171617/100000000000 : ℚ), (-89846683/250000000 : ℚ), (137705645953/1000000000000 : ℚ), 2⟩,
    ⟨(445461160087/1000000000000 : ℚ), (-3900047539/10000000000 : ℚ), (151273561519/1000000000000 : ℚ), 2⟩,
    ⟨(449489125377/1000000000000 : ℚ), (-1037919241/2500000000 : ℚ), (40633215741/250000000000 : ℚ), 2⟩,
    ⟨(113226705133/250000000000 : ℚ), (-4354220613/10000000000 : ℚ), (17167131767/100000000000 : ℚ), 2⟩,
    ⟨(455681331279/1000000000000 : ℚ), (-4511822993/10000000000 : ℚ), (178830964301/1000000000000 : ℚ), 2⟩,
    ⟨(114446484391/250000000000 : ℚ), (-4627549059/10000000000 : ℚ), (18411650681/100000000000 : ℚ), 2⟩,
    ⟨(459200370877/1000000000000 : ℚ), (-587944857/1250000000 : ℚ), (93800743797/500000000000 : ℚ), 2⟩,
    ⟨(459911009453/1000000000000 : ℚ), (-1185307227/2500000000 : ℚ), (47333158563/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-4745922147/10000000000 : ℚ), (189548502343/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (285166308361/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control463.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control463.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate463
