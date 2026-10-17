import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate343
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(266163677941/1000000000000 : ℚ), (12033635272737/10000000000 : ℚ), (-12840713535793/40000000000 : ℚ), 12⟩,
    ⟨(133500121449/500000000000 : ℚ), (82016423517/625000000 : ℚ), (-17744401157337/500000000000 : ℚ), 8⟩,
    ⟨(67166329059/250000000000 : ℚ), (458527197313/10000000000 : ℚ), (-6323176799109/500000000000 : ℚ), 7⟩,
    ⟨(67785715597/250000000000 : ℚ), (112557779227/5000000000 : ℚ), (-6352864410941/1000000000000 : ℚ), 6⟩,
    ⟨(274409021229/1000000000000 : ℚ), (65033923009/5000000000 : ℚ), (-376276733027/100000000000 : ℚ), 5⟩,
    ⟨(34804042233/125000000000 : ℚ), (82583342421/10000000000 : ℚ), (-1225732661499/500000000000 : ℚ), 5⟩,
    ⟨(70793516389/250000000000 : ℚ), (55692397959/10000000000 : ℚ), (-1697062961619/1000000000000 : ℚ), 4⟩,
    ⟨(144294269437/500000000000 : ℚ), (9778395579/2500000000 : ℚ), (-305882250743/250000000000 : ℚ), 4⟩,
    ⟨(7365590337/25000000000 : ℚ), (3530524543/1250000000 : ℚ), (-18136808287/20000000000 : ℚ), 4⟩,
    ⟨(301221168307/1000000000000 : ℚ), (10388727919/5000000000 : ℚ), (-684567929529/1000000000000 : ℚ), 3⟩,
    ⟨(61663533059/200000000000 : ℚ), (1932007373/1250000000 : ℚ), (-65313735853/125000000000 : ℚ), 3⟩,
    ⟨(315844761299/1000000000000 : ℚ), (72180179/62500000 : ℚ), (-200328852987/500000000000 : ℚ), 3⟩,
    ⟨(32372996627/100000000000 : ℚ), (86080691/100000000 : ℚ), (-306676438587/1000000000000 : ℚ), 3⟩,
    ⟨(331897341373/1000000000000 : ℚ), (6347940859/10000000000 : ℚ), (-58157473951/250000000000 : ℚ), 3⟩,
    ⟨(340268230321/1000000000000 : ℚ), (1144880403/2500000000 : ℚ), (-5413374719/31250000000 : ℚ), 3⟩,
    ⟨(348762016879/1000000000000 : ℚ), (3174275183/10000000000 : ℚ), (-15604777679/125000000000 : ℚ), 3⟩,
    ⟨(357296901237/1000000000000 : ℚ), (204257911/1000000000 : ℚ), (-42451466369/500000000000 : ℚ), 3⟩,
    ⟨(182895343897/500000000000 : ℚ), (1120622601/10000000000 : ℚ), (-5158256033/100000000000 : ℚ), 2⟩,
    ⟨(187080788371/500000000000 : ℚ), (90537579/2500000000 : ℚ), (-11764976009/500000000000 : ℚ), 2⟩,
    ⟨(76465790369/200000000000 : ℚ), (-266887853/10000000000 : ℚ), (128268699/500000000000 : ℚ), 2⟩,
    ⟨(24388384801/62500000000 : ℚ), (-791889747/10000000000 : ℚ), (20531125207/1000000000000 : ℚ), 2⟩,
    ⟨(19887062641/50000000000 : ℚ), (-246402353/2000000000 : ℚ), (9466894227/250000000000 : ℚ), 2⟩,
    ⟨(25302359363/62500000000 : ℚ), (-1601836099/10000000000 : ℚ), (52705877859/1000000000000 : ℚ), 2⟩,
    ⟨(82287060927/200000000000 : ℚ), (-1912543277/10000000000 : ℚ), (13077071437/200000000000 : ℚ), 2⟩,
    ⟨(208735189621/500000000000 : ℚ), (-1086374511/5000000000 : ℚ), (15233717111/200000000000 : ℚ), 2⟩,
    ⟨(422884852559/1000000000000 : ℚ), (-1194554551/5000000000 : ℚ), (85258867697/1000000000000 : ℚ), 2⟩,
    ⟨(427626580251/1000000000000 : ℚ), (-2566760953/10000000000 : ℚ), (46406600619/500000000000 : ℚ), 2⟩,
    ⟨(431649896887/1000000000000 : ℚ), (-2709648389/10000000000 : ℚ), (98951961239/1000000000000 : ℚ), 2⟩,
    ⟨(27182253483/62500000000 : ℚ), (-1410380449/5000000000 : ℚ), (51883081207/500000000000 : ℚ), 2⟩,
    ⟨(437393601879/1000000000000 : ℚ), (-1451154559/5000000000 : ℚ), (107322880093/1000000000000 : ℚ), 2⟩,
    ⟨(439058675217/1000000000000 : ℚ), (-2955851289/10000000000 : ℚ), (109669224187/1000000000000 : ℚ), 2⟩,
    ⟨(17595809607/40000000000 : ℚ), (-372797587/1250000000 : ℚ), (6927195547/62500000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2985685671/10000000000 : ℚ), (27745132583/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (83264618419/250000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control343.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control343.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate343
