import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate700
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (263031164173/1781612267575 : ℚ), (3745670949769/10000000000 : ℚ), (-55440514629267/1000000000000 : ℚ)⟩,
  ⟨(263031164173/1781612267575 : ℚ), (989156851103/6633162812875 : ℚ), (49529985841/1250000000 : ℚ), (-5990655764743/1000000000000 : ℚ)⟩,
  ⟨(989156851103/6633162812875 : ℚ), (1090884171757/7197877500500 : ℚ), (130913374213/10000000000 : ℚ), (-2034028360331/1000000000000 : ℚ)⟩,
  ⟨(1090884171757/7197877500500 : ℚ), (449777712541/2904893946100 : ℚ), (7366824901/1250000000 : ℚ), (-471572094287/500000000000 : ℚ)⟩,
  ⟨(449777712541/2904893946100 : ℚ), (228528357609/1438816794100 : ℚ), (29885659747/10000000000 : ℚ), (-493366476033/1000000000000 : ℚ)⟩,
  ⟨(228528357609/1438816794100 : ℚ), (26446205459/161857621040 : ℚ), (7748745903/5000000000 : ℚ), (-33104764803/125000000000 : ℚ)⟩,
  ⟨(26446205459/161857621040 : ℚ), (27880809569/165619795200 : ℚ), (3702305377/5000000000 : ℚ), (-132607091129/1000000000000 : ℚ)⟩,
  ⟨(27880809569/165619795200 : ℚ), (56407111613/325128868600 : ℚ), (1218008449/5000000000 : ℚ), (-24482331211/500000000000 : ℚ)⟩,
  ⟨(56407111613/325128868600 : ℚ), (796511963/4458726644 : ℚ), (-203817947/2500000000 : ℚ), (7442449191/1000000000000 : ℚ)⟩,
  ⟨(796511963/4458726644 : ℚ), (7244117261/39457620325 : ℚ), (-304463511/1000000000 : ℚ), (47268047341/1000000000000 : ℚ)⟩,
  ⟨(7244117261/39457620325 : ℚ), (10685549759/56791393000 : ℚ), (-4622939923/10000000000 : ℚ), (15248903277/200000000000 : ℚ)⟩,
  ⟨(10685549759/56791393000 : ℚ), (3913772923/20368133975 : ℚ), (-5758767783/10000000000 : ℚ), (97615615903/1000000000000 : ℚ)⟩,
  ⟨(3913772923/20368133975 : ℚ), (11048627557/56534626100 : ℚ), (-3286746571/5000000000 : ℚ), (22654141519/200000000000 : ℚ)⟩,
  ⟨(11048627557/56534626100 : ℚ), (1416621059/7159455180 : ℚ), (-7138839403/10000000000 : ℚ), (7769958447/62500000000 : ℚ)⟩,
  ⟨(1416621059/7159455180 : ℚ), (866380718/4345660675 : ℚ), (-3748406081/5000000000 : ℚ), (131402440447/1000000000000 : ℚ)⟩,
  ⟨(866380718/4345660675 : ℚ), (35819301/179153350 : ℚ), (-7670638589/10000000000 : ℚ), (134867963319/1000000000000 : ℚ)⟩,
  ⟨(35819301/179153350 : ℚ), (1/5 : ℚ), (-7692136991/10000000000 : ℚ), (135297794931/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2307863009/10000000000 : ℚ), (-1/5 : ℚ), (181455055111/1000000000000 : ℚ)⟩,
  ⟨(2307863009/10000000000 : ℚ), (2329361411/10000000000 : ℚ), (-35819301/179153350 : ℚ), (130022628752461359/716613400000000000 : ℚ)⟩,
  ⟨(2329361411/10000000000 : ℚ), (1251593919/5000000000 : ℚ), (-866380718/4345660675 : ℚ), (6303214285496704721/34765285400000000000 : ℚ)⟩,
  ⟨(1251593919/5000000000 : ℚ), (2861160597/10000000000 : ℚ), (-1416621059/7159455180 : ℚ), (7196537463984798387/39774751000000000000 : ℚ)⟩,
  ⟨(2861160597/10000000000 : ℚ), (1713253429/5000000000 : ℚ), (-11048627557/56534626100 : ℚ), (101895369115205838201/565346261000000000000 : ℚ)⟩,
  ⟨(1713253429/5000000000 : ℚ), (4241232217/10000000000 : ℚ), (-3913772923/20368133975 : ℚ), (145926796954777225341/814725359000000000000 : ℚ)⟩,
  ⟨(4241232217/10000000000 : ℚ), (5377060077/10000000000 : ℚ), (-10685549759/56791393000 : ℚ), (100757165951070614493/567913930000000000000 : ℚ)⟩,
  ⟨(5377060077/10000000000 : ℚ), (695536489/1000000000 : ℚ), (-7244117261/39457620325 : ℚ), (276145302044221617393/1578304813000000000000 : ℚ)⟩,
  ⟨(695536489/1000000000 : ℚ), (2296182053/2500000000 : ℚ), (-796511963/4458726644 : ℚ), (191189609070171990151/1114681661000000000000 : ℚ)⟩,
  ⟨(2296182053/2500000000 : ℚ), (6218008449/5000000000 : ℚ), (-56407111613/325128868600 : ℚ), (271140770120091039491/1625644343000000000000 : ℚ)⟩,
  ⟨(6218008449/5000000000 : ℚ), (8702305377/5000000000 : ℚ), (-27880809569/165619795200 : ℚ), (44271840884386056203/276032992000000000000 : ℚ)⟩,
  ⟨(8702305377/5000000000 : ℚ), (12748745903/5000000000 : ℚ), (-26446205459/161857621040 : ℚ), (614128072256151571361/4046440526000000000000 : ℚ)⟩,
  ⟨(12748745903/5000000000 : ℚ), (39885659747/10000000000 : ℚ), (-228528357609/1438816794100 : ℚ), (201636460051115700687/1438816794100000000000 : ℚ)⟩,
  ⟨(39885659747/10000000000 : ℚ), (8616824901/1250000000 : ℚ), (-449777712541/2904893946100 : ℚ), (1803953954912388174457/14524469730500000000000 : ℚ)⟩,
  ⟨(8616824901/1250000000 : ℚ), (140913374213/10000000000 : ℚ), (-1090884171757/7197877500500 : ℚ), (3656649907889295187793/35989387502500000000000 : ℚ)⟩,
  ⟨(140913374213/10000000000 : ℚ), (32/1 : ℚ), (-989156851103/6633162812875 : ℚ), (17860066856091042185291/265326512515000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (31879202309/62500000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(5898035793/40000000000 : ℚ), (3745670949769/10000000000 : ℚ), (-55440514629267/1000000000000 : ℚ), 11⟩,
    ⟨(148458174249/1000000000000 : ℚ), (49529985841/1250000000 : ℚ), (-5990655764743/1000000000000 : ℚ), 8⟩,
    ⟨(150434023913/1000000000000 : ℚ), (130913374213/10000000000 : ℚ), (-2034028360331/1000000000000 : ℚ), 6⟩,
    ⟨(153302513023/1000000000000 : ℚ), (7366824901/1250000000 : ℚ), (-471572094287/500000000000 : ℚ), 6⟩,
    ⟨(156953407151/1000000000000 : ℚ), (29885659747/10000000000 : ℚ), (-493366476033/1000000000000 : ℚ), 5⟩,
    ⟨(40311601121/250000000000 : ℚ), (7748745903/5000000000 : ℚ), (-33104764803/125000000000 : ℚ), 4⟩,
    ⟨(8300826377/50000000000 : ℚ), (3702305377/5000000000 : ℚ), (-132607091129/1000000000000 : ℚ), 4⟩,
    ⟨(171080463167/1000000000000 : ℚ), (1218008449/5000000000 : ℚ), (-24482331211/500000000000 : ℚ), 4⟩,
    ⟨(88121803579/500000000000 : ℚ), (-203817947/2500000000 : ℚ), (7442449191/1000000000000 : ℚ), 4⟩,
    ⟨(36261508557/200000000000 : ℚ), (-304463511/1000000000 : ℚ), (47268047341/1000000000000 : ℚ), 4⟩,
    ⟨(93038832921/500000000000 : ℚ), (-4622939923/10000000000 : ℚ), (15248903277/200000000000 : ℚ), 3⟩,
    ⟨(95185331587/500000000000 : ℚ), (-5758767783/10000000000 : ℚ), (97615615903/1000000000000 : ℚ), 3⟩,
    ⟨(97010778651/500000000000 : ℚ), (-3286746571/5000000000 : ℚ), (22654141519/200000000000 : ℚ), 3⟩,
    ⟨(49222511603/250000000000 : ℚ), (-7138839403/10000000000 : ℚ), (7769958447/62500000000 : ℚ), 3⟩,
    ⟨(198865896077/1000000000000 : ℚ), (-3748406081/5000000000 : ℚ), (131402440447/1000000000000 : ℚ), 3⟩,
    ⟨(399746351/2000000000 : ℚ), (-7670638589/10000000000 : ℚ), (134867963319/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-7692136991/10000000000 : ℚ), (135297794931/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control700.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control700.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate700
