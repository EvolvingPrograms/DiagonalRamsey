import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate317
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(64290214879/250000000000 : ℚ), (12739441977671/10000000000 : ℚ), (-164164533829461/500000000000 : ℚ), 12⟩,
    ⟨(257944501951/1000000000000 : ℚ), (694833507691/5000000000 : ℚ), (-36293612236679/1000000000000 : ℚ), 8⟩,
    ⟨(64876059979/250000000000 : ℚ), (242882021461/5000000000 : ℚ), (-6465316957957/500000000000 : ℚ), 7⟩,
    ⟨(261825052281/1000000000000 : ℚ), (238578423143/10000000000 : ℚ), (-1623428213209/250000000000 : ℚ), 6⟩,
    ⟨(52976917671/200000000000 : ℚ), (137889130383/10000000000 : ℚ), (-1922283496789/500000000000 : ℚ), 5⟩,
    ⟨(134326691567/500000000000 : ℚ), (10945701393/1250000000 : ℚ), (-2503349549559/1000000000000 : ℚ), 5⟩,
    ⟨(136547570531/500000000000 : ℚ), (59053008163/10000000000 : ℚ), (-173171517647/100000000000 : ℚ), 4⟩,
    ⟨(278167085583/1000000000000 : ℚ), (41464545677/10000000000 : ℚ), (-249468547971/200000000000 : ℚ), 4⟩,
    ⟨(283820371099/1000000000000 : ℚ), (29925960931/10000000000 : ℚ), (-184676638861/200000000000 : ℚ), 4⟩,
    ⟨(14500027669/50000000000 : ℚ), (21994022827/10000000000 : ℚ), (-695984857521/1000000000000 : ℚ), 3⟩,
    ⟨(296648113891/1000000000000 : ℚ), (8168418479/5000000000 : ℚ), (-530166939791/1000000000000 : ℚ), 3⟩,
    ⟨(9490594781/31250000000 : ℚ), (48718787/40000000 : ℚ), (-101366306629/250000000000 : ℚ), 3⟩,
    ⟨(311085406477/1000000000000 : ℚ), (9048149347/10000000000 : ℚ), (-309264081747/1000000000000 : ℚ), 3⟩,
    ⟨(79684024883/250000000000 : ℚ), (1327839679/2000000000 : ℚ), (-116723480529/500000000000 : ℚ), 3⟩,
    ⟨(326577431799/1000000000000 : ℚ), (4752530399/10000000000 : ℚ), (-34520764731/200000000000 : ℚ), 3⟩,
    ⟨(334533886963/1000000000000 : ℚ), (1625911477/5000000000 : ℚ), (-61510046287/500000000000 : ℚ), 3⟩,
    ⟨(85632210003/250000000000 : ℚ), (2041999793/10000000000 : ℚ), (-41040320113/500000000000 : ℚ), 3⟩,
    ⟨(43810661897/125000000000 : ℚ), (1055350389/10000000000 : ℚ), (-23952447403/500000000000 : ℚ), 2⟩,
    ⟨(89581656861/250000000000 : ℚ), (242781831/10000000000 : ℚ), (-19116011421/1000000000000 : ℚ), 2⟩,
    ⟨(182988660249/500000000000 : ℚ), (-215925647/5000000000 : ℚ), (5309394839/1000000000000 : ℚ), 2⟩,
    ⟨(373363693983/1000000000000 : ℚ), (-995513201/10000000000 : ℚ), (2614158109/100000000000 : ℚ), 2⟩,
    ⟨(95103653271/250000000000 : ℚ), (-1468543187/10000000000 : ℚ), (43966199597/1000000000000 : ℚ), 2⟩,
    ⟨(96765543399/250000000000 : ℚ), (-933212017/5000000000 : ℚ), (59232057447/1000000000000 : ℚ), 2⟩,
    ⟨(393242355877/1000000000000 : ℚ), (-440205227/2000000000 : ℚ), (72285020583/1000000000000 : ℚ), 2⟩,
    ⟨(398895641393/1000000000000 : ℚ), (-1240747893/5000000000 : ℚ), (10424060291/125000000000 : ℚ), 2⟩,
    ⟨(201983792957/500000000000 : ℚ), (-2714897461/10000000000 : ℚ), (92761279791/1000000000000 : ℚ), 2⟩,
    ⟨(204204671921/500000000000 : ℚ), (-1453341477/5000000000 : ℚ), (12568871567/125000000000 : ℚ), 2⟩,
    ⟨(20608906931/50000000000 : ℚ), (-3061036441/10000000000 : ℚ), (106883768979/1000000000000 : ℚ), 2⟩,
    ⟨(207618837347/500000000000 : ℚ), (-3181128861/10000000000 : ℚ), (27962993171/250000000000 : ℚ), 2⟩,
    ⟨(20877924353/50000000000 : ℚ), (-1634652253/5000000000 : ℚ), (23104708463/200000000000 : ℚ), 2⟩,
    ⟨(16764729001/40000000000 : ℚ), (-1663607751/5000000000 : ℚ), (117946167581/1000000000000 : ℚ), 2⟩,
    ⟨(419901867459/1000000000000 : ℚ), (-134236593/400000000 : ℚ), (119150131331/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-52492037/156250000 : ℚ), (29825071647/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (5029832953/15625000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control317.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control317.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate317
