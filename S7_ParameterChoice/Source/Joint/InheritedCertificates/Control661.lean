import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate661
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (18158370302673/207965608185400 : ℚ), (2289370017487/10000000000 : ℚ), (-4007119124199/200000000000 : ℚ)⟩,
  ⟨(18158370302673/207965608185400 : ℚ), (1455729321799/16408653547600 : ℚ), (209713935633/10000000000 : ℚ), (-938612659161/500000000000 : ℚ)⟩,
  ⟨(1455729321799/16408653547600 : ℚ), (50547815224/556465912775 : ℚ), (45627400157/10000000000 : ℚ), (-421495996523/1000000000000 : ℚ)⟩,
  ⟨(50547815224/556465912775 : ℚ), (84443637007/904659006050 : ℚ), (222025427/2000000000 : ℚ), (-17113474731/1000000000000 : ℚ)⟩,
  ⟨(84443637007/904659006050 : ℚ), (21465465489/223951165700 : ℚ), (-8491526493/5000000000 : ℚ), (151773799283/1000000000000 : ℚ)⟩,
  ⟨(21465465489/223951165700 : ℚ), (5775374681/58951221150 : ℚ), (-12970549807/5000000000 : ℚ), (237635661239/1000000000000 : ℚ)⟩,
  ⟨(5775374681/58951221150 : ℚ), (10450934123/105160730400 : ℚ), (-15328598653/5000000000 : ℚ), (283838658687/1000000000000 : ℚ)⟩,
  ⟨(10450934123/105160730400 : ℚ), (101282081/1013454752 : ℚ), (-16380205957/5000000000 : ℚ), (304740526933/1000000000000 : ℚ)⟩,
  ⟨(101282081/1013454752 : ℚ), (1/10 : ℚ), (-16506887801/5000000000 : ℚ), (153636289479/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3493112199/20000000000 : ℚ), (-2/5 : ℚ), (188567411469/500000000000 : ℚ)⟩,
  ⟨(3493112199/20000000000 : ℚ), (3619794043/20000000000 : ℚ), (-101282081/253363688 : ℚ), (47770598730065191527/126681844000000000000 : ℚ)⟩,
  ⟨(3619794043/20000000000 : ℚ), (4671401347/20000000000 : ℚ), (-10450934123/26290182600 : ℚ), (39612782211199317721/105160730400000000000 : ℚ)⟩,
  ⟨(4671401347/20000000000 : ℚ), (7029450193/20000000000 : ℚ), (-11550749362/29475610575 : ℚ), (442569083040546493829/1179024423000000000000 : ℚ)⟩,
  ⟨(7029450193/20000000000 : ℚ), (11508473507/20000000000 : ℚ), (-21465465489/55987791425 : ℚ), (833968674512615341777/2239511657000000000000 : ℚ)⟩,
  ⟨(11508473507/20000000000 : ℚ), (8222025427/8000000000 : ℚ), (-168887274014/452329503025 : ℚ), (6633340125394956747439/18093180121000000000000 : ℚ)⟩,
  ⟨(8222025427/8000000000 : ℚ), (85627400157/40000000000 : ℚ), (-202191260896/556465912775 : ℚ), (7931185827543001509419/22258636511000000000000 : ℚ)⟩,
  ⟨(85627400157/40000000000 : ℚ), (249713935633/40000000000 : ℚ), (-1455729321799/4102163386900 : ℚ), (11097699874299596794499/32817307095200000000000 : ℚ)⟩,
  ⟨(249713935633/40000000000 : ℚ), (32/1 : ℚ), (-18158370302673/51991402046350 : ℚ), (630415062703205811918021/2079656081854000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (2623219461/6250000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(87133655243/1000000000000 : ℚ), (2289370017487/10000000000 : ℚ), (-4007119124199/200000000000 : ℚ), 10⟩,
    ⟨(88103546771/1000000000000 : ℚ), (209713935633/10000000000 : ℚ), (-938612659161/500000000000 : ℚ), 7⟩,
    ⟨(17979134527/200000000000 : ℚ), (45627400157/10000000000 : ℚ), (-421495996523/1000000000000 : ℚ), 6⟩,
    ⟨(46118598959/500000000000 : ℚ), (222025427/2000000000 : ℚ), (-17113474731/1000000000000 : ℚ), 5⟩,
    ⟨(4738582331/50000000000 : ℚ), (-8491526493/5000000000 : ℚ), (151773799283/1000000000000 : ℚ), 4⟩,
    ⟨(97113171903/1000000000000 : ℚ), (-12970549807/5000000000 : ℚ), (237635661239/1000000000000 : ℚ), 4⟩,
    ⟨(98905297767/1000000000000 : ℚ), (-15328598653/5000000000 : ℚ), (283838658687/1000000000000 : ℚ), 4⟩,
    ⟨(19975037859/200000000000 : ℚ), (-16380205957/5000000000 : ℚ), (304740526933/1000000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16506887801/5000000000 : ℚ), (153636289479/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control661.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control661.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate661
