import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate897
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2479858318031/28668569661250 : ℚ), (25274621161/400000000 : ℚ), (-27399195023/5000000000 : ℚ)⟩,
  ⟨(2479858318031/28668569661250 : ℚ), (26497976069/301135640020 : ℚ), (292470679/50000000 : ℚ), (-260061184269/500000000000 : ℚ)⟩,
  ⟨(26497976069/301135640020 : ℚ), (6486380229/71872014800 : ℚ), (13323789797/10000000000 : ℚ), (-122652727503/1000000000000 : ℚ)⟩,
  ⟨(6486380229/71872014800 : ℚ), (45949222781/494527960800 : ℚ), (1105547281/10000000000 : ℚ), (-1238426361/100000000000 : ℚ)⟩,
  ⟨(45949222781/494527960800 : ℚ), (1165489999/12193606785 : ℚ), (-3839732327/10000000000 : ℚ), (33564959171/1000000000000 : ℚ)⟩,
  ⟨(1165489999/12193606785 : ℚ), (1566432884/16010433575 : ℚ), (-1569613421/2500000000 : ℚ), (56874759151/1000000000000 : ℚ)⟩,
  ⟨(1566432884/16010433575 : ℚ), (1134073439/11415982640 : ℚ), (-755928837/1000000000 : ℚ), (69406222223/1000000000000 : ℚ)⟩,
  ⟨(1134073439/11415982640 : ℚ), (687132981/6875906600 : ℚ), (-4065043751/5000000000 : ℚ), (37538294709/500000000000 : ℚ)⟩,
  ⟨(687132981/6875906600 : ℚ), (1/10 : ℚ), (-1024855821/1250000000 : ℚ), (75763722399/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (225144179/1250000000 : ℚ), (-1/10 : ℚ), (93775256719/1000000000000 : ℚ)⟩,
  ⟨(225144179/1250000000 : ℚ), (934956249/5000000000 : ℚ), (-687132981/6875906600 : ℚ), (3223537357903530063/34379533000000000000 : ℚ)⟩,
  ⟨(934956249/5000000000 : ℚ), (244071163/1000000000 : ℚ), (-1134073439/11415982640 : ℚ), (26728371279747244143/285399566000000000000 : ℚ)⟩,
  ⟨(244071163/1000000000 : ℚ), (930386579/2500000000 : ℚ), (-1566432884/16010433575 : ℚ), (59741792254094177169/640417343000000000000 : ℚ)⟩,
  ⟨(930386579/2500000000 : ℚ), (6160267673/10000000000 : ℚ), (-1165489999/12193606785 : ℚ), (225450190058040761587/2438721357000000000000 : ℚ)⟩,
  ⟨(6160267673/10000000000 : ℚ), (11105547281/10000000000 : ℚ), (-45949222781/494527960800 : ℚ), (449047619828968343581/4945279608000000000000 : ℚ)⟩,
  ⟨(11105547281/10000000000 : ℚ), (23323789797/10000000000 : ℚ), (-6486380229/71872014800 : ℚ), (63133982541052893069/718720148000000000000 : ℚ)⟩,
  ⟨(23323789797/10000000000 : ℚ), (342470679/50000000 : ℚ), (-26497976069/301135640020 : ℚ), (621705369777866883231/7528391000500000000000 : ℚ)⟩,
  ⟨(342470679/50000000 : ℚ), (32/1 : ℚ), (-2479858318031/28668569661250 : ℚ), (829764354076596777291/11467427864500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (401478176019/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(86308767127/1000000000000 : ℚ), (25274621161/400000000 : ℚ), (-27399195023/5000000000 : ℚ), 12⟩,
    ⟨(43670420209/500000000000 : ℚ), (292470679/50000000 : ℚ), (-260061184269/500000000000 : ℚ), 9⟩,
    ⟨(89247863197/1000000000000 : ℚ), (13323789797/10000000000 : ℚ), (-122652727503/1000000000000 : ℚ), 7⟩,
    ⟨(18347901707/200000000000 : ℚ), (1105547281/10000000000 : ℚ), (-1238426361/100000000000 : ℚ), 7⟩,
    ⟨(94436446013/1000000000000 : ℚ), (-3839732327/10000000000 : ℚ), (33564959171/1000000000000 : ℚ), 6⟩,
    ⟨(96928091351/1000000000000 : ℚ), (-1569613421/2500000000 : ℚ), (56874759151/1000000000000 : ℚ), 6⟩,
    ⟨(9883511413/100000000000 : ℚ), (-755928837/1000000000 : ℚ), (69406222223/1000000000000 : ℚ), 6⟩,
    ⟨(99867187421/1000000000000 : ℚ), (-4065043751/5000000000 : ℚ), (37538294709/500000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1024855821/1250000000 : ℚ), (75763722399/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control897.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control897.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate897
