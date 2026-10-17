import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate795
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2638432210843/19600956715690 : ℚ), (269568748473/1250000000 : ℚ), (-29080904081841/1000000000000 : ℚ)⟩,
  ⟨(2638432210843/19600956715690 : ℚ), (105709067117/775505115450 : ℚ), (39290863243/2000000000 : ℚ), (-2696581973411/1000000000000 : ℚ)⟩,
  ⟨(105709067117/775505115450 : ℚ), (293118109631/2110547489500 : ℚ), (66165269/16000000 : ℚ), (-582400631071/1000000000000 : ℚ)⟩,
  ⟨(293118109631/2110547489500 : ℚ), (122008398599/859680841500 : ℚ), (-171531333/2000000000 : ℚ), (3835588191/1000000000000 : ℚ)⟩,
  ⟨(122008398599/859680841500 : ℚ), (3090080633/21316276520 : ℚ), (-3610254699/2000000000 : ℚ), (247852385389/1000000000000 : ℚ)⟩,
  ⟨(3090080633/21316276520 : ℚ), (33184267061/224923664950 : ℚ), (-26577784103/10000000000 : ℚ), (371455610709/1000000000000 : ℚ)⟩,
  ⟨(33184267061/224923664950 : ℚ), (15007571879/100554186200 : ℚ), (-15538128701/5000000000 : ℚ), (437824144831/1000000000000 : ℚ)⟩,
  ⟨(15007571879/100554186200 : ℚ), (3636878527/24258130900 : ℚ), (-16543670563/5000000000 : ℚ), (467839288589/1000000000000 : ℚ)⟩,
  ⟨(3636878527/24258130900 : ℚ), (3/20 : ℚ), (-6665984487/2000000000 : ℚ), (117869041779/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1334015513/8000000000 : ℚ), (-3/5 : ℚ), (571527330591/1000000000000 : ℚ)⟩,
  ⟨(1334015513/8000000000 : ℚ), (3456329437/20000000000 : ℚ), (-3636878527/6064532725 : ℚ), (138629567650874981599/242581309000000000000 : ℚ)⟩,
  ⟨(3456329437/20000000000 : ℚ), (4461871299/20000000000 : ℚ), (-15007571879/25138546550 : ℚ), (143543553572775154241/251385465500000000000 : ℚ)⟩,
  ⟨(4461871299/20000000000 : ℚ), (13422215897/40000000000 : ℚ), (-66368534122/112461832475 : ℚ), (102471837611642811857/179938931960000000000 : ℚ)⟩,
  ⟨(13422215897/40000000000 : ℚ), (4389745301/8000000000 : ℚ), (-3090080633/5329069130 : ℚ), (603281172615247976639/1065813826000000000000 : ℚ)⟩,
  ⟨(4389745301/8000000000 : ℚ), (7828468667/8000000000 : ℚ), (-122008398599/214920210375 : ℚ), (480866844455245441493/859680841500000000000 : ℚ)⟩,
  ⟨(7828468667/8000000000 : ℚ), (130165269/64000000 : ℚ), (-293118109631/527636872375 : ℚ), (1155428159515548112433/2110547489500000000000 : ℚ)⟩,
  ⟨(130165269/64000000 : ℚ), (47290863243/8000000000 : ℚ), (-211418134234/387752557725 : ℚ), (209396617270303207649/397694931000000000000 : ℚ)⟩,
  ⟨(47290863243/8000000000 : ℚ), (32/1 : ℚ), (-5276864421686/9800478357845 : ℚ), (953128188831229390540591/1960095671569000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (94037295239/250000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(26877602491/200000000000 : ℚ), (269568748473/1250000000 : ℚ), (-29080904081841/1000000000000 : ℚ), 11⟩,
    ⟨(135564876183/1000000000000 : ℚ), (39290863243/2000000000 : ℚ), (-2696581973411/1000000000000 : ℚ), 7⟩,
    ⟨(68869718403/500000000000 : ℚ), (66165269/16000000 : ℚ), (-582400631071/1000000000000 : ℚ), 6⟩,
    ⟨(140580637181/1000000000000 : ℚ), (-171531333/2000000000 : ℚ), (3835588191/1000000000000 : ℚ), 5⟩,
    ⟨(71827965153/500000000000 : ℚ), (-3610254699/2000000000 : ℚ), (247852385389/1000000000000 : ℚ), 5⟩,
    ⟨(146497130681/1000000000000 : ℚ), (-26577784103/10000000000 : ℚ), (371455610709/1000000000000 : ℚ), 5⟩,
    ⟨(18583961413/125000000000 : ℚ), (-15538128701/5000000000 : ℚ), (437824144831/1000000000000 : ℚ), 5⟩,
    ⟨(18731069379/125000000000 : ℚ), (-16543670563/5000000000 : ℚ), (467839288589/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6665984487/2000000000 : ℚ), (117869041779/250000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control795.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control795.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate795
