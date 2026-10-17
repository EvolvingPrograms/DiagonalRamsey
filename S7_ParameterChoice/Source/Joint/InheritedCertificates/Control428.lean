import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate428
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(138469671469/500000000000 : ℚ), (11916449058333/10000000000 : ℚ), (-41341331475383/125000000000 : ℚ), 12⟩,
    ⟨(69443043777/250000000000 : ℚ), (1300153785261/10000000000 : ℚ), (-36560966953093/1000000000000 : ℚ), 9⟩,
    ⟨(139714909409/500000000000 : ℚ), (454616527521/10000000000 : ℚ), (-6513636293529/500000000000 : ℚ), 7⟩,
    ⟨(140948155027/500000000000 : ℚ), (223370452917/10000000000 : ℚ), (-6543346568023/1000000000000 : ℚ), 6⟩,
    ⟨(71286973789/250000000000 : ℚ), (12916276299/1000000000 : ℚ), (-242180674993/62500000000 : ℚ), 5⟩,
    ⟨(4518019681/15625000000 : ℚ), (41036146473/5000000000 : ℚ), (-630984016601/250000000000 : ℚ), 5⟩,
    ⟨(146936914743/500000000000 : ℚ), (55387801271/10000000000 : ℚ), (-1746741757737/1000000000000 : ℚ), 5⟩,
    ⟨(74816035799/250000000000 : ℚ), (38924996879/10000000000 : ℚ), (-78682754011/62500000000 : ℚ), 4⟩,
    ⟨(61054457809/200000000000 : ℚ), (14061950289/5000000000 : ℚ), (-186541457569/200000000000 : ℚ), 4⟩,
    ⟨(38980050663/125000000000 : ℚ), (10349331417/5000000000 : ℚ), (-7037732223/10000000000 : ℚ), 4⟩,
    ⟨(19931577339/62500000000 : ℚ), (962692069/625000000 : ℚ), (-67110653299/125000000000 : ℚ), 3⟩,
    ⟨(40799843401/125000000000 : ℚ), (11512177957/10000000000 : ℚ), (-102857241839/250000000000 : ℚ), 3⟩,
    ⟨(167124384031/500000000000 : ℚ), (4290962733/5000000000 : ℚ), (-31469567827/100000000000 : ℚ), 3⟩,
    ⟨(342379699993/1000000000000 : ℚ), (253147049/400000000 : ℚ), (-47701639199/200000000000 : ℚ), 3⟩,
    ⟨(175356618841/500000000000 : ℚ), (456486497/1000000000 : ℚ), (-35483058213/200000000000 : ℚ), 3⟩,
    ⟨(179584562303/500000000000 : ℚ), (3162803633/10000000000 : ℚ), (-63836635977/500000000000 : ℚ), 3⟩,
    ⟨(7353318519/20000000000 : ℚ), (508350691/2500000000 : ℚ), (-1732913139/20000000000 : ℚ), 3⟩,
    ⟨(376121812873/1000000000000 : ℚ), (556592961/5000000000 : ℚ), (-10487133029/200000000000 : ℚ), 3⟩,
    ⟨(192227675281/500000000000 : ℚ), (178052699/5000000000 : ℚ), (-11826877867/500000000000 : ℚ), 3⟩,
    ⟨(392586282493/1000000000000 : ℚ), (-10870501/400000000 : ℚ), (733677627/1000000000000 : ℚ), 2⟩,
    ⟨(400436303347/1000000000000 : ℚ), (-795741287/10000000000 : ℚ), (21505311721/1000000000000 : ℚ), 2⟩,
    ⟨(407929813131/1000000000000 : ℚ), (-308736457/2500000000 : ℚ), (2453366153/62500000000 : ℚ), 2⟩,
    ⟨(414994645251/1000000000000 : ℚ), (-1603937339/10000000000 : ℚ), (54434116013/1000000000000 : ℚ), 2⟩,
    ⟨(42156276151/100000000000 : ℚ), (-956943811/5000000000 : ℚ), (33698534339/500000000000 : ℚ), 2⟩,
    ⟨(427570907359/1000000000000 : ℚ), (-434682123/2000000000 : ℚ), (78414486723/1000000000000 : ℚ), 2⟩,
    ⟨(432961221069/1000000000000 : ℚ), (-298645481/1250000000 : ℚ), (876969353/10000000000 : ℚ), 2⟩,
    ⟨(109420447743/250000000000 : ℚ), (-2566287967/10000000000 : ℚ), (19081423623/200000000000 : ℚ), 2⟩,
    ⟨(441687155399/1000000000000 : ℚ), (-677182557/2500000000 : ℚ), (50834926833/500000000000 : ℚ), 2⟩,
    ⟨(444938740501/1000000000000 : ℚ), (-70487079/250000000 : ℚ), (53289780209/500000000000 : ℚ), 2⟩,
    ⟨(447405231737/1000000000000 : ℚ), (-580151957/2000000000 : ℚ), (110205848629/1000000000000 : ℚ), 2⟩,
    ⟨(56132859431/125000000000 : ℚ), (-2954120029/10000000000 : ℚ), (112597622751/1000000000000 : ℚ), 2⟩,
    ⟨(449895707617/1000000000000 : ℚ), (-1490279113/5000000000 : ℚ), (56892981647/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-745962947/2500000000 : ℚ), (113934156389/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (8692019693/25000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control428.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control428.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate428
