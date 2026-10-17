import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate637
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(132393776639/500000000000 : ℚ), (13797185903837/10000000000 : ℚ), (-365888489414577/1000000000000 : ℚ), 12⟩,
    ⟨(26534199837/100000000000 : ℚ), (754993530927/5000000000 : ℚ), (-4041336596151/100000000000 : ℚ), 9⟩,
    ⟨(133222774473/500000000000 : ℚ), (265024668981/5000000000 : ℚ), (-1437520833363/100000000000 : ℚ), 8⟩,
    ⟨(268087577209/1000000000000 : ℚ), (52289524547/2000000000 : ℚ), (-7201242900219/1000000000000 : ℚ), 7⟩,
    ⟨(27025226953/100000000000 : ℚ), (151687121679/10000000000 : ℚ), (-1062196060879/250000000000 : ℚ), 6⟩,
    ⟨(136459389369/500000000000 : ℚ), (48306731483/5000000000 : ℚ), (-2754032323973/1000000000000 : ℚ), 6⟩,
    ⟨(69015356223/250000000000 : ℚ), (65265456847/10000000000 : ℚ), (-236762512011/125000000000 : ℚ), 5⟩,
    ⟨(279649942593/1000000000000 : ℚ), (2291394309/500000000 : ℚ), (-67717084661/50000000000 : ℚ), 5⟩,
    ⟨(70912443113/250000000000 : ℚ), (33004715779/10000000000 : ℚ), (-993385133411/1000000000000 : ℚ), 5⟩,
    ⟨(288022393921/1000000000000 : ℚ), (24137573751/10000000000 : ℚ), (-740068499657/1000000000000 : ℚ), 4⟩,
    ⟨(146362848133/500000000000 : ℚ), (4443706373/2500000000 : ℚ), (-555405661221/1000000000000 : ℚ), 4⟩,
    ⟨(148857192057/500000000000 : ℚ), (13070402721/10000000000 : ℚ), (-208294128083/500000000000 : ℚ), 4⟩,
    ⟨(302940413673/1000000000000 : ℚ), (9504907249/10000000000 : ℚ), (-61910841471/200000000000 : ℚ), 4⟩,
    ⟨(308353455423/1000000000000 : ℚ), (6745717481/10000000000 : ℚ), (-112627403807/500000000000 : ℚ), 4⟩,
    ⟨(78475344703/250000000000 : ℚ), (182889569/400000000 : ℚ), (-157657034459/1000000000000 : ℚ), 3⟩,
    ⟨(63906150861/200000000000 : ℚ), (354227593/1250000000 : ℚ), (-102616943309/1000000000000 : ℚ), 3⟩,
    ⟨(162593683969/500000000000 : ℚ), (1424992181/10000000000 : ℚ), (-57215628099/1000000000000 : ℚ), 3⟩,
    ⟨(330816743431/1000000000000 : ℚ), (135170057/5000000000 : ℚ), (-19352772033/1000000000000 : ℚ), 3⟩,
    ⟨(16818233341/50000000000 : ℚ), (-171259183/2500000000 : ℚ), (6255199253/500000000000 : ℚ), 3⟩,
    ⟨(34177770857/100000000000 : ℚ), (-185215357/1250000000 : ℚ), (1580735851/40000000000 : ℚ), 3⟩,
    ⟨(347003738129/1000000000000 : ℚ), (-1075054451/5000000000 : ℚ), (62533137541/1000000000000 : ℚ), 3⟩,
    ⟨(351992425977/1000000000000 : ℚ), (-2713196623/10000000000 : ℚ), (82210195721/1000000000000 : ℚ), 3⟩,
    ⟨(178347864161/500000000000 : ℚ), (-637709027/2000000000 : ℚ), (9905196071/100000000000 : ℚ), 3⟩,
    ⟨(361068349791/1000000000000 : ℚ), (-3589645293/10000000000 : ℚ), (113445403843/1000000000000 : ℚ), 3⟩,
    ⟨(7301363593/20000000000 : ℚ), (-3926905503/10000000000 : ℚ), (125689373603/1000000000000 : ℚ), 3⟩,
    ⟨(7373133947/20000000000 : ℚ), (-26302303/62500000 : ℚ), (68007316249/500000000000 : ℚ), 3⟩,
    ⟨(74359868701/200000000000 : ℚ), (-1110059553/2500000000 : ℚ), (144598761189/1000000000000 : ℚ), 3⟩,
    ⟨(374465852713/1000000000000 : ℚ), (-289204401/625000000 : ℚ), (75788676679/500000000000 : ℚ), 3⟩,
    ⟨(188315272517/500000000000 : ℚ), (-2386531347/5000000000 : ℚ), (157052462063/1000000000000 : ℚ), 3⟩,
    ⟨(378272573297/1000000000000 : ℚ), (-4880269121/10000000000 : ℚ), (80549473291/500000000000 : ℚ), 3⟩,
    ⟨(11855503871/31250000000 : ℚ), (-990151227/2000000000 : ℚ), (163769154977/1000000000000 : ℚ), 3⟩,
    ⟨(75986113793/200000000000 : ℚ), (-4985711123/10000000000 : ℚ), (41274057857/250000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-1247516783/2500000000 : ℚ), (165261744629/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (39899594029/100000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control637.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control637.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate637
