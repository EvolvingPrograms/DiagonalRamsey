import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate710
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(543977165591/1000000000000 : ℚ), (9028445666467/5000000000 : ℚ), (-491630744536477/500000000000 : ℚ), 13⟩,
    ⟨(544728005429/1000000000000 : ℚ), (1982895677657/10000000000 : ℚ), (-108650649987429/1000000000000 : ℚ), 10⟩,
    ⟨(546222454107/1000000000000 : ℚ), (34980655623/500000000 : ℚ), (-61891632743/1600000000 : ℚ), 8⟩,
    ⟨(548446119267/1000000000000 : ℚ), (347268980183/10000000000 : ℚ), (-19405889797059/1000000000000 : ℚ), 7⟩,
    ⟨(275688792899/500000000000 : ℚ), (202964882579/10000000000 : ℚ), (-11473924566647/1000000000000 : ℚ), 6⟩,
    ⟨(22199544883/40000000000 : ℚ), (65182371983/5000000000 : ℚ), (-3729765608121/500000000000 : ℚ), 6⟩,
    ⟨(139811112961/250000000000 : ℚ), (44459238419/5000000000 : ℚ), (-5151452724107/1000000000000 : ℚ), 5⟩,
    ⟨(564104089139/1000000000000 : ℚ), (31570381929/5000000000 : ℚ), (-3704166437379/1000000000000 : ℚ), 5⟩,
    ⟨(142380183249/250000000000 : ℚ), (11521110197/2500000000 : ℚ), (-1368882552333/500000000000 : ℚ), 5⟩,
    ⟨(143860554543/250000000000 : ℚ), (3425858419/1000000000 : ℚ), (-2061005053613/1000000000000 : ℚ), 5⟩,
    ⟨(58181151753/100000000000 : ℚ), (12877197507/5000000000 : ℚ), (-1569100687389/1000000000000 : ℚ), 4⟩,
    ⟨(117713458247/200000000000 : ℚ), (9728759573/5000000000 : ℚ), (-600367256687/500000000000 : ℚ), 4⟩,
    ⟨(148911119373/250000000000 : ℚ), (14682466899/10000000000 : ℚ), (-459043543903/500000000000 : ℚ), 4⟩,
    ⟨(602974919129/1000000000000 : ℚ), (10989153011/10000000000 : ℚ), (-43550361973/62500000000 : ℚ), 4⟩,
    ⟨(305244009993/500000000000 : ℚ), (808481989/1000000000 : ℚ), (-260318299623/500000000000 : ℚ), 4⟩,
    ⟨(123622284959/200000000000 : ℚ), (360549397/625000000 : ℚ), (-378396731633/1000000000000 : ℚ), 4⟩,
    ⟨(625771715999/1000000000000 : ℚ), (3899945959/10000000000 : ℚ), (-262190465087/1000000000000 : ℚ), 3⟩,
    ⟨(79174390101/125000000000 : ℚ), (1188425181/5000000000 : ℚ), (-83158652071/500000000000 : ℚ), 3⟩,
    ⟨(128181644333/200000000000 : ℚ), (1125201009/10000000000 : ℚ), (-86581811047/1000000000000 : ℚ), 3⟩,
    ⟨(324119331651/500000000000 : ℚ), (89680577/10000000000 : ℚ), (-19844832317/1000000000000 : ℚ), 3⟩,
    ⟨(655315849559/1000000000000 : ℚ), (-385733629/5000000000 : ℚ), (36275635141/1000000000000 : ℚ), 3⟩,
    ⟨(662071623263/1000000000000 : ℚ), (-1490128623/10000000000 : ℚ), (5225516567/62500000000 : ℚ), 3⟩,
    ⟨(668440922621/1000000000000 : ℚ), (-2090880371/10000000000 : ℚ), (123570036261/1000000000000 : ℚ), 3⟩,
    ⟨(337181203899/500000000000 : ℚ), (-2592798499/10000000000 : ℚ), (307160977/1953125000 : ℚ), 3⟩,
    ⟨(135955810331/200000000000 : ℚ), (-376344447/1250000000 : ℚ), (4639085439/25000000000 : ℚ), 3⟩,
    ⟨(13692773779/20000000000 : ℚ), (-839091207/2500000000 : ℚ), (209140130947/1000000000000 : ℚ), 3⟩,
    ⟨(688894518719/1000000000000 : ℚ), (-3638675553/10000000000 : ℚ), (228527650291/1000000000000 : ℚ), 3⟩,
    ⟨(173126388749/250000000000 : ℚ), (-3864690179/10000000000 : ℚ), (61034531147/250000000000 : ℚ), 3⟩,
    ⟨(695437021527/1000000000000 : ℚ), (-25248441/62500000 : ℚ), (51257326987/200000000000 : ℚ), 3⟩,
    ⟨(697660686687/1000000000000 : ℚ), (-4167825713/10000000000 : ℚ), (265207621833/1000000000000 : ℚ), 3⟩,
    ⟨(139831027073/200000000000 : ℚ), (-4251722617/10000000000 : ℚ), (271067026633/1000000000000 : ℚ), 3⟩,
    ⟨(699905975203/1000000000000 : ℚ), (-4293234311/10000000000 : ℚ), (273970893869/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-4298403021/10000000000 : ℚ), (274332679211/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (205548725017/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control710.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control710.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate710
