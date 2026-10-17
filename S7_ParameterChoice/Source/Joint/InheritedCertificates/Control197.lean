import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate197
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7528968657/31250000000 : ℚ), (44251319087/40000000 : ℚ), (-267253846784687/1000000000000 : ℚ), 11⟩,
    ⟨(4836737731/20000000000 : ℚ), (1203572935851/10000000000 : ℚ), (-1477634210551/50000000000 : ℚ), 8⟩,
    ⟨(243647902869/1000000000000 : ℚ), (41921933073/1000000000 : ℚ), (-2107296206817/200000000000 : ℚ), 7⟩,
    ⟨(49268520981/200000000000 : ℚ), (205105725287/10000000000 : ℚ), (-1059435882559/200000000000 : ℚ), 6⟩,
    ⟨(124947520601/500000000000 : ℚ), (29524468521/2500000000 : ℚ), (-785230324739/250000000000 : ℚ), 5⟩,
    ⟨(127135499929/500000000000 : ℚ), (3737070367/500000000 : ℚ), (-2049241802939/1000000000000 : ℚ), 4⟩,
    ⟨(129714168999/500000000000 : ℚ), (5026103583/1000000000 : ℚ), (-710582278979/500000000000 : ℚ), 4⟩,
    ⟨(132658693819/500000000000 : ℚ), (17608927019/5000000000 : ℚ), (-256723152917/250000000000 : ℚ), 4⟩,
    ⟨(271881434009/1000000000000 : ℚ), (6347421851/2500000000 : ℚ), (-190793847801/250000000000 : ℚ), 3⟩,
    ⟨(279057261757/1000000000000 : ℚ), (18662540711/10000000000 : ℚ), (-578039418773/1000000000000 : ℚ), 3⟩,
    ⟨(143387881869/500000000000 : ℚ), (13885576831/10000000000 : ℚ), (-13844103119/31250000000 : ℚ), 3⟩,
    ⟨(147481303279/500000000000 : ℚ), (10390505767/10000000000 : ℚ), (-341434108419/1000000000000 : ℚ), 3⟩,
    ⟨(303538946447/1000000000000 : ℚ), (3884422143/5000000000 : ℚ), (-8219998919/31250000000 : ℚ), 3⟩,
    ⟨(312422188561/1000000000000 : ℚ), (230412539/400000000 : ℚ), (-40244731711/200000000000 : ℚ), 3⟩,
    ⟨(40190847803/125000000000 : ℚ), (4193278969/10000000000 : ℚ), (-9473966449/62500000000 : ℚ), 2⟩,
    ⟨(330765045821/1000000000000 : ℚ), (118050561/400000000 : ℚ), (-111098084959/1000000000000 : ℚ), 2⟩,
    ⟨(340048009223/1000000000000 : ℚ), (1953279059/10000000000 : ℚ), (-9705175537/125000000000 : ℚ), 2⟩,
    ⟨(349286272619/1000000000000 : ℚ), (1141828559/10000000000 : ℚ), (-49685346741/1000000000000 : ℚ), 2⟩,
    ⟨(179195433241/500000000000 : ℚ), (59420121/1250000000 : ℚ), (-26111883187/1000000000000 : ℚ), 2⟩,
    ⟨(367274108597/1000000000000 : ℚ), (-76618139/10000000000 : ℚ), (-6090619857/1000000000000 : ℚ), 2⟩,
    ⟨(75170089697/200000000000 : ℚ), (-268393303/5000000000 : ℚ), (5501475249/500000000000 : ℚ), 2⟩,
    ⟨(192018645653/500000000000 : ℚ), (-461100357/5000000000 : ℚ), (25643287303/1000000000000 : ℚ), 2⟩,
    ⟨(391755793287/1000000000000 : ℚ), (-62290503/500000000 : ℚ), (763874407/20000000000 : ℚ), 2⟩,
    ⟨(79786324207/200000000000 : ℚ), (-758760201/5000000000 : ℚ), (3058379499/62500000000 : ℚ), 2⟩,
    ⟨(202747833703/500000000000 : ℚ), (-13959601/80000000 : ℚ), (29040290087/500000000000 : ℚ), 2⟩,
    ⟨(82276943409/200000000000 : ℚ), (-193397529/1000000000 : ℚ), (65800473901/1000000000000 : ℚ), 2⟩,
    ⟨(208271027593/500000000000 : ℚ), (-208912621/1000000000 : ℚ), (72222759429/1000000000000 : ℚ), 2⟩,
    ⟨(420918013841/1000000000000 : ℚ), (-1106938969/5000000000 : ℚ), (77446268697/1000000000000 : ℚ), 2⟩,
    ⟨(424470450139/1000000000000 : ℚ), (-4621727/20000000 : ℚ), (81545682933/1000000000000 : ℚ), 2⟩,
    ⟨(213582576087/500000000000 : ℚ), (-2382029633/10000000000 : ℚ), (21144004593/250000000000 : ℚ), 2⟩,
    ⟨(428976168493/1000000000000 : ℚ), (-2428748589/10000000000 : ℚ), (8657590663/100000000000 : ℚ), 2⟩,
    ⟨(21494302901/50000000000 : ℚ), (-2451895191/10000000000 : ℚ), (43784946059/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-49095573/200000000 : ℚ), (43846932219/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (157829464287/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control197.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control197.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate197
