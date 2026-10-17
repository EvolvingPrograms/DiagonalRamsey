import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate437
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(34568447183/125000000000 : ℚ), (12600859849389/10000000000 : ℚ), (-69838225766263/200000000000 : ℚ), 12⟩,
    ⟨(6933354281/25000000000 : ℚ), (275122533321/2000000000 : ℚ), (-38597148413627/1000000000000 : ℚ), 9⟩,
    ⟨(34862472933/125000000000 : ℚ), (24068014031/500000000 : ℚ), (-6874750286407/500000000000 : ℚ), 7⟩,
    ⟨(140614668217/500000000000 : ℚ), (47338792553/2000000000 : ℚ), (-6903554722743/1000000000000 : ℚ), 6⟩,
    ⟨(142150197641/500000000000 : ℚ), (17120614127/1250000000 : ℚ), (-4086106125633/1000000000000 : ℚ), 6⟩,
    ⟨(9002605751/31250000000 : ℚ), (5442558389/625000000 : ℚ), (-531943490031/200000000000 : ℚ), 5⟩,
    ⟨(146270935217/500000000000 : ℚ), (29395561863/5000000000 : ℚ), (-367824665577/200000000000 : ℚ), 5⟩,
    ⟨(74408229207/250000000000 : ℚ), (20661212337/5000000000 : ℚ), (-4137694693/3125000000 : ℚ), 4⟩,
    ⟨(151653746827/500000000000 : ℚ), (7462569601/2500000000 : ℚ), (-195924964967/200000000000 : ℚ), 4⟩,
    ⟨(154755475817/500000000000 : ℚ), (10977808201/5000000000 : ℚ), (-737901771279/1000000000000 : ℚ), 4⟩,
    ⟨(316183548077/1000000000000 : ℚ), (16319211441/10000000000 : ℚ), (-561689200271/1000000000000 : ℚ), 3⟩,
    ⟨(40407627779/125000000000 : ℚ), (97386929/80000000 : ℚ), (-107305450679/250000000000 : ℚ), 3⟩,
    ⟨(330675214153/1000000000000 : ℚ), (22619137/25000000 : ℚ), (-327081155541/1000000000000 : ℚ), 3⟩,
    ⟨(2114717007/6250000000 : ℚ), (6641451371/10000000000 : ℚ), (-9865335937/40000000000 : ℚ), 3⟩,
    ⟨(173112792641/500000000000 : ℚ), (237792687/500000000 : ℚ), (-91061385077/500000000000 : ℚ), 3⟩,
    ⟨(70842401183/200000000000 : ℚ), (1627689463/5000000000 : ℚ), (-12959637509/100000000000 : ℚ), 3⟩,
    ⟨(362237069423/1000000000000 : ℚ), (2045441637/10000000000 : ℚ), (-43135180069/500000000000 : ℚ), 3⟩,
    ⟨(46277936257/125000000000 : ℚ), (1058607461/10000000000 : ℚ), (-50141905987/1000000000000 : ℚ), 3⟩,
    ⟨(189047177109/500000000000 : ℚ), (30740847/1250000000 : ℚ), (-789752207/40000000000 : ℚ), 3⟩,
    ⟨(77154772237/200000000000 : ℚ), (-428683937/10000000000 : ℚ), (1503819783/250000000000 : ℚ), 2⟩,
    ⟨(196594026553/500000000000 : ℚ), (-992175683/10000000000 : ℚ), (13978725187/500000000000 : ℚ), 2⟩,
    ⟨(400265527261/1000000000000 : ℚ), (-1464902263/10000000000 : ℚ), (46708390907/1000000000000 : ℚ), 2⟩,
    ⟨(50867265463/125000000000 : ℚ), (-1862375239/10000000000 : ℚ), (2509923987/40000000000 : ℚ), 2⟩,
    ⟨(103285395421/250000000000 : ℚ), (-2196499543/10000000000 : ℚ), (76446903379/1000000000000 : ℚ), 2⟩,
    ⟨(41881615851/100000000000 : ℚ), (-495291301/2000000000 : ℚ), (88091442513/1000000000000 : ℚ), 2⟩,
    ⟨(52988400613/125000000000 : ℚ), (-2709343061/10000000000 : ℚ), (2447592533/25000000000 : ℚ), 2⟩,
    ⟨(214182845653/500000000000 : ℚ), (-2900639269/10000000000 : ℚ), (53027557213/500000000000 : ℚ), 2⟩,
    ⟨(54018585007/125000000000 : ℚ), (-3054552727/10000000000 : ℚ), (225354239/2000000000 : ℚ), 2⟩,
    ⟨(54402467363/125000000000 : ℚ), (-3174272911/10000000000 : ℚ), (117869079373/1000000000000 : ℚ), 2⟩,
    ⟨(700078867/1600000000 : ℚ), (-3262158087/10000000000 : ℚ), (7606512799/62500000000 : ℚ), 2⟩,
    ⟨(219557452049/500000000000 : ℚ), (-1659935127/5000000000 : ℚ), (124233900391/1000000000000 : ℚ), 2⟩,
    ⟨(219950748937/500000000000 : ℚ), (-3348468649/10000000000 : ℚ), (125490821589/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3352031507/10000000000 : ℚ), (3926486557/31250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (34059495089/100000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control437.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control437.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate437
