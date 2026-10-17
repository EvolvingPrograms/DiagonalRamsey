import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate557
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69689646143/250000000000 : ℚ), (2695759587219/2000000000 : ℚ), (-5881225861597/15625000000 : ℚ), 12⟩,
    ⟨(279438290731/1000000000000 : ℚ), (1473533636601/10000000000 : ℚ), (-2079561315641/50000000000 : ℚ), 9⟩,
    ⟨(280791157107/1000000000000 : ℚ), (258284189389/5000000000 : ℚ), (-3701627074499/250000000000 : ℚ), 7⟩,
    ⟨(282804154857/1000000000000 : ℚ), (203587697/8000000 : ℚ), (-7426867350117/1000000000000 : ℚ), 7⟩,
    ⟨(285457897713/1000000000000 : ℚ), (147511497451/10000000000 : ℚ), (-2194889225059/500000000000 : ℚ), 6⟩,
    ⟨(7218170717/25000000000 : ℚ), (93914102577/10000000000 : ℚ), (-2852196425097/1000000000000 : ℚ), 5⟩,
    ⟨(58515893233/200000000000 : ℚ), (12691702587/2000000000 : ℚ), (-983819729103/500000000000 : ℚ), 5⟩,
    ⟨(59395741433/200000000000 : ℚ), (11152723111/2500000000 : ℚ), (-282487879847/200000000000 : ℚ), 4⟩,
    ⟨(301882184583/1000000000000 : ℚ), (32203443357/10000000000 : ℚ), (-260292565781/250000000000 : ℚ), 4⟩,
    ⟨(1228970701/4000000000 : ℚ), (23643443817/10000000000 : ℚ), (-195157346011/250000000000 : ℚ), 4⟩,
    ⟨(313008554713/1000000000000 : ℚ), (3503188797/2000000000 : ℚ), (-590712629449/1000000000000 : ℚ), 4⟩,
    ⟨(319124294399/1000000000000 : ℚ), (1624604067/1250000000 : ℚ), (-447957684167/1000000000000 : ℚ), 4⟩,
    ⟨(40691374549/125000000000 : ℚ), (383224093/400000000 : ℚ), (-337899463759/1000000000000 : ℚ), 3⟩,
    ⟨(6643339213/20000000000 : ℚ), (6943829409/10000000000 : ℚ), (-251230126029/1000000000000 : ℚ), 3⟩,
    ⟨(338968279209/1000000000000 : ℚ), (974448749/2000000000 : ℚ), (-181744049003/1000000000000 : ℚ), 3⟩,
    ⟨(345869451653/1000000000000 : ℚ), (1609839941/5000000000 : ℚ), (-62589427243/500000000000 : ℚ), 3⟩,
    ⟨(4410050199/12500000000 : ℚ), (1883932963/10000000000 : ℚ), (-39266129211/500000000000 : ℚ), 3⟩,
    ⟨(71941037673/200000000000 : ℚ), (99001887/1250000000 : ℚ), (-19821950431/500000000000 : ℚ), 3⟩,
    ⟨(91626626731/250000000000 : ℚ), (-109144097/10000000000 : ℚ), (-277234779/40000000000 : ℚ), 3⟩,
    ⟨(186571235591/500000000000 : ℚ), (-214682683/2500000000 : ℚ), (10392212689/500000000000 : ℚ), 3⟩,
    ⟨(15181966927/40000000000 : ℚ), (-1486059007/10000000000 : ℚ), (44389147253/1000000000000 : ℚ), 3⟩,
    ⟨(385664912861/1000000000000 : ℚ), (-503324643/2500000000 : ℚ), (12911697033/200000000000 : ℚ), 3⟩,
    ⟨(391430792323/1000000000000 : ℚ), (-2457364831/10000000000 : ℚ), (16362065703/200000000000 : ℚ), 3⟩,
    ⟨(396791282991/1000000000000 : ℚ), (-566250379/2000000000 : ℚ), (96544085289/1000000000000 : ℚ), 3⟩,
    ⟨(401694760409/1000000000000 : ℚ), (-3144986987/10000000000 : ℚ), (109068713153/1000000000000 : ℚ), 3⟩,
    ⟨(1586304693/3906250000 : ℚ), (-85158071/250000000 : ℚ), (934556767/7812500000 : ℚ), 3⟩,
    ⟨(204973319447/500000000000 : ℚ), (-3621245441/10000000000 : ℚ), (6419607469/50000000000 : ℚ), 3⟩,
    ⟨(413215569861/1000000000000 : ℚ), (-1897174571/5000000000 : ℚ), (67758274803/500000000000 : ℚ), 2⟩,
    ⟨(103967328179/250000000000 : ℚ), (-785822907/2000000000 : ℚ), (551183739/3906250000 : ℚ), 2⟩,
    ⟨(208941155233/500000000000 : ℚ), (-4028113277/10000000000 : ℚ), (14523000993/100000000000 : ℚ), 2⟩,
    ⟨(209617588421/500000000000 : ℚ), (-4093156431/10000000000 : ℚ), (147952434767/1000000000000 : ℚ), 2⟩,
    ⟨(419914883001/1000000000000 : ℚ), (-825079501/2000000000 : ℚ), (74652594053/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2064707321/5000000000 : ℚ), (2335529543/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (89371743141/250000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control557.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control557.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate557
