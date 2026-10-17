import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate291
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (9383414608339/224127705425400 : ℚ), (1234288102107/5000000000 : ℚ), (-5183676819413/500000000000 : ℚ)⟩,
  ⟨(9383414608339/224127705425400 : ℚ), (752805365181/17603093807300 : ℚ), (5682478749/250000000 : ℚ), (-983939030487/1000000000000 : ℚ)⟩,
  ⟨(752805365181/17603093807300 : ℚ), (104851404197/2376250019400 : ℚ), (51268211887/10000000000 : ℚ), (-115566832653/500000000000 : ℚ)⟩,
  ⟨(104851404197/2376250019400 : ℚ), (44019843613/962570857350 : ℚ), (3743211499/10000000000 : ℚ), (-1339428557/62500000000 : ℚ)⟩,
  ⟨(44019843613/962570857350 : ℚ), (5001939911/105663968600 : ℚ), (-969262853/625000000 : ℚ), (33304415157/500000000000 : ℚ)⟩,
  ⟨(5001939911/105663968600 : ℚ), (972403739/19968332260 : ℚ), (-12508981411/5000000000 : ℚ), (111626289513/1000000000000 : ℚ)⟩,
  ⟨(972403739/19968332260 : ℚ), (11006385277/221890834600 : ℚ), (-30010045887/10000000000 : ℚ), (33984095747/250000000000 : ℚ)⟩,
  ⟨(11006385277/221890834600 : ℚ), (444359079/8894316400 : ℚ), (-32228954233/10000000000 : ℚ), (29388553653/200000000000 : ℚ)⟩,
  ⟨(444359079/8894316400 : ℚ), (1/20 : ℚ), (-1299831349/400000000 : ℚ), (74137922751/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (300168651/1600000000 : ℚ), (-1/5 : ℚ), (185796926877/1000000000000 : ℚ)⟩,
  ⟨(300168651/1600000000 : ℚ), (7771045767/40000000000 : ℚ), (-444359079/2223579100 : ℚ), (16522689476298859053/88943164000000000000 : ℚ)⟩,
  ⟨(7771045767/40000000000 : ℚ), (9989954113/40000000000 : ℚ), (-11006385277/55472708650 : ℚ), (411583658604354412149/2218908346000000000000 : ℚ)⟩,
  ⟨(9989954113/40000000000 : ℚ), (7491018589/20000000000 : ℚ), (-972403739/4992083065 : ℚ), (184292486745947922179/998416613000000000000 : ℚ)⟩,
  ⟨(7491018589/20000000000 : ℚ), (1530737147/2500000000 : ℚ), (-5001939911/26415992150 : ℚ), (48222004302271356019/264159921500000000000 : ℚ)⟩,
  ⟨(1530737147/2500000000 : ℚ), (43743211499/40000000000 : ℚ), (-88039687226/481285428675 : ℚ), (343856429240214634171/1925141714700000000000 : ℚ)⟩,
  ⟨(43743211499/40000000000 : ℚ), (91268211887/40000000000 : ℚ), (-104851404197/594062504850 : ℚ), (32618291265820168163/190100001552000000000 : ℚ)⟩,
  ⟨(91268211887/40000000000 : ℚ), (6682478749/1000000000 : ℚ), (-752805365181/4400773451825 : ℚ), (28020523654943925511209/176030938073000000000000 : ℚ)⟩,
  ⟨(6682478749/1000000000 : ℚ), (32/1 : ℚ), (-9383414608339/56031926356350 : ℚ), (151449388357910484237371/1120638527127000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (406772372191/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(8350131307/200000000000 : ℚ), (1234288102107/5000000000 : ℚ), (-5183676819413/500000000000 : ℚ), 9⟩,
    ⟨(42372509011/1000000000000 : ℚ), (5682478749/250000000 : ℚ), (-983939030487/1000000000000 : ℚ), 6⟩,
    ⟨(43521542561/1000000000000 : ℚ), (51268211887/10000000000 : ℚ), (-115566832653/500000000000 : ℚ), 5⟩,
    ⟨(22511413621/500000000000 : ℚ), (3743211499/10000000000 : ℚ), (-1339428557/62500000000 : ℚ), 4⟩,
    ⟨(46647806071/1000000000000 : ℚ), (-969262853/625000000 : ℚ), (33304415157/500000000000 : ℚ), 4⟩,
    ⟨(752329543/15625000000 : ℚ), (-12508981411/5000000000 : ℚ), (111626289513/1000000000000 : ℚ), 3⟩,
    ⟨(49298124301/1000000000000 : ℚ), (-30010045887/10000000000 : ℚ), (33984095747/250000000000 : ℚ), 3⟩,
    ⟨(49919976777/1000000000000 : ℚ), (-32228954233/10000000000 : ℚ), (29388553653/200000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-1299831349/400000000 : ℚ), (74137922751/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control291.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control291.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate291
