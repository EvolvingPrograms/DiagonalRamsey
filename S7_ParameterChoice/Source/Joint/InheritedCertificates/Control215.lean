import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate215
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(266005039809/1000000000000 : ℚ), (6640105430149/5000000000 : ℚ), (-354062391568091/1000000000000 : ℚ), 11⟩,
    ⟨(4169412003/15625000000 : ℚ), (1448160251397/10000000000 : ℚ), (-7828315251161/200000000000 : ℚ), 8⟩,
    ⟨(268508961029/1000000000000 : ℚ), (316243299/6250000 : ℚ), (-2789557426349/200000000000 : ℚ), 7⟩,
    ⟨(270988768119/1000000000000 : ℚ), (49680598561/2000000000 : ℚ), (-3503240342701/500000000000 : ℚ), 6⟩,
    ⟨(54851581513/200000000000 : ℚ), (143513410533/10000000000 : ℚ), (-4149791117341/1000000000000 : ℚ), 5⟩,
    ⟨(139142447883/500000000000 : ℚ), (9111366811/1000000000 : ℚ), (-2703536534943/1000000000000 : ℚ), 5⟩,
    ⟨(452849521/1600000000 : ℚ), (61440359649/10000000000 : ℚ), (-1871509189447/1000000000000 : ℚ), 4⟩,
    ⟨(144225182519/500000000000 : ℚ), (2696689053/625000000 : ℚ), (-1349261871019/1000000000000 : ℚ), 4⟩,
    ⟨(73622736771/250000000000 : ℚ), (15577090547/5000000000 : ℚ), (-500001557973/500000000000 : ℚ), 4⟩,
    ⟨(301094522653/1000000000000 : ℚ), (4583217799/2000000000 : ℚ), (-75487578559/100000000000 : ℚ), 3⟩,
    ⟨(61639499141/200000000000 : ℚ), (17045208661/10000000000 : ℚ), (-115231267157/200000000000 : ℚ), 3⟩,
    ⟨(12629258429/40000000000 : ℚ), (12734631447/10000000000 : ℚ), (-220887827509/500000000000 : ℚ), 3⟩,
    ⟨(40452982689/125000000000 : ℚ), (2372575757/2500000000 : ℚ), (-169064267031/500000000000 : ℚ), 3⟩,
    ⟨(331798689931/1000000000000 : ℚ), (3498399519/5000000000 : ℚ), (-128230838323/500000000000 : ℚ), 3⟩,
    ⟨(340177217917/1000000000000 : ℚ), (1261414497/2500000000 : ℚ), (-11933787377/62500000000 : ℚ), 3⟩,
    ⟨(69735751133/200000000000 : ℚ), (1747532159/5000000000 : ℚ), (-137559306943/1000000000000 : ℚ), 2⟩,
    ⟨(178610714359/500000000000 : ℚ), (561537449/2500000000 : ℚ), (-93497529917/1000000000000 : ℚ), 2⟩,
    ⟨(73144593293/200000000000 : ℚ), (1228532421/10000000000 : ℚ), (-14181792407/250000000000 : ℚ), 2⟩,
    ⟨(374101494451/1000000000000 : ℚ), (195601667/5000000000 : ℚ), (-12881668749/500000000000 : ℚ), 2⟩,
    ⟨(382276322871/1000000000000 : ℚ), (-303378953/10000000000 : ℚ), (497730479/1000000000000 : ℚ), 2⟩,
    ⟨(195084361829/500000000000 : ℚ), (-110401321/1250000000 : ℚ), (22886899817/1000000000000 : ℚ), 2⟩,
    ⟨(198851344339/500000000000 : ℚ), (-1369403501/10000000000 : ℚ), (42036050841/1000000000000 : ℚ), 2⟩,
    ⟨(404805661729/1000000000000 : ℚ), (-1778025907/10000000000 : ℚ), (7303698619/125000000000 : ℚ), 2⟩,
    ⟨(411409237299/1000000000000 : ℚ), (-2121396201/10000000000 : ℚ), (72441002967/1000000000000 : ℚ), 2⟩,
    ⟨(26090613709/62500000000 : ℚ), (-2409006453/10000000000 : ℚ), (84359236697/1000000000000 : ℚ), 2⟩,
    ⟨(211434616879/500000000000 : ℚ), (-662047393/2500000000 : ℚ), (23601996953/250000000000 : ℚ), 2⟩,
    ⟨(427615288617/1000000000000 : ℚ), (-2844606209/10000000000 : ℚ), (6422499823/62500000000 : ℚ), 2⟩,
    ⟨(215821138409/500000000000 : ℚ), (-3002602551/10000000000 : ℚ), (54773860027/500000000000 : ℚ), 2⟩,
    ⟨(434911416263/1000000000000 : ℚ), (-312547381/1000000000 : ℚ), (22974264091/200000000000 : ℚ), 2⟩,
    ⟨(437391223353/1000000000000 : ℚ), (-1607828653/5000000000 : ℚ), (118804633289/1000000000000 : ℚ), 2⟩,
    ⟨(43905781619/100000000000 : ℚ), (-1637435737/5000000000 : ℚ), (6069976403/50000000000 : ℚ), 2⟩,
    ⟨(219947572287/500000000000 : ℚ), (-3304211943/10000000000 : ℚ), (122688970771/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-661573429/2000000000 : ℚ), (61424890261/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (283617450533/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control215.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control215.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate215
