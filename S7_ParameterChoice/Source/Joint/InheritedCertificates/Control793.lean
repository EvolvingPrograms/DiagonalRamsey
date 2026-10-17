import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate793
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (865897256539/19326315039410 : ℚ), (425215441273/2000000000 : ℚ), (-9543639675639/1000000000000 : ℚ)⟩,
  ⟨(865897256539/19326315039410 : ℚ), (347054169989/7647931473000 : ℚ), (24180712803/1250000000 : ℚ), (-884667110249/1000000000000 : ℚ)⟩,
  ⟨(347054169989/7647931473000 : ℚ), (192751803923/4167846951600 : ℚ), (10121768241/2500000000 : ℚ), (-190558770271/1000000000000 : ℚ)⟩,
  ⟨(192751803923/4167846951600 : ℚ), (80471047183/1702234208400 : ℚ), (-148924569/1250000000 : ℚ), (548258413/250000000000 : ℚ)⟩,
  ⟨(80471047183/1702234208400 : ℚ), (10230068316/211802015075 : ℚ), (-4553434659/2500000000 : ℚ), (16532816167/200000000000 : ℚ)⟩,
  ⟨(10230068316/211802015075 : ℚ), (5512090391/112106570200 : ℚ), (-26685819239/10000000000 : ℚ), (123584354099/1000000000000 : ℚ)⟩,
  ⟨(5512090391/112106570200 : ℚ), (4996177301/100432942950 : ℚ), (-31170082047/10000000000 : ℚ), (145632715663/1000000000000 : ℚ)⟩,
  ⟨(4996177301/100432942950 : ℚ), (302911124/6061328175 : ℚ), (-16589370453/5000000000 : ℚ), (31125014053/200000000000 : ℚ)⟩,
  ⟨(302911124/6061328175 : ℚ), (1/20 : ℚ), (-33421194033/10000000000 : ℚ), (156836714761/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6578805967/40000000000 : ℚ), (-1/5 : ℚ), (47432686149/250000000000 : ℚ)⟩,
  ⟨(6578805967/40000000000 : ℚ), (3410629547/20000000000 : ℚ), (-1211644496/6061328175 : ℚ), (45996725962379015279/242453127000000000000 : ℚ)⟩,
  ⟨(3410629547/20000000000 : ℚ), (8829917953/40000000000 : ℚ), (-9992354602/50216471475 : ℚ), (380758115769654978223/2008658859000000000000 : ℚ)⟩,
  ⟨(8829917953/40000000000 : ℚ), (13314180761/40000000000 : ℚ), (-5512090391/28026642550 : ℚ), (211935148520957180049/1121065702000000000000 : ℚ)⟩,
  ⟨(13314180761/40000000000 : ℚ), (5446565341/10000000000 : ℚ), (-40920273264/211802015075 : ℚ), (227405217746118987943/1210297229000000000000 : ℚ)⟩,
  ⟨(5446565341/10000000000 : ℚ), (4851075431/5000000000 : ℚ), (-80471047183/425558552100 : ℚ), (395037441024551537219/2127792760500000000000 : ℚ)⟩,
  ⟨(4851075431/5000000000 : ℚ), (20121768241/10000000000 : ℚ), (-192751803923/1041961737900 : ℚ), (946478826068350234867/5209808689500000000000 : ℚ)⟩,
  ⟨(20121768241/10000000000 : ℚ), (29180712803/5000000000 : ℚ), (-347054169989/1911982868250 : ℚ), (6679785068123762842783/38239657365000000000000 : ℚ)⟩,
  ⟨(29180712803/5000000000 : ℚ), (32/1 : ℚ), (-1731794513078/9663157519705 : ℚ), (311664405029950496514051/1932631503941000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (301743039759/500000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(1789201007/40000000000 : ℚ), (425215441273/2000000000 : ℚ), (-9543639675639/1000000000000 : ℚ), 11⟩,
    ⟨(11281821679/250000000000 : ℚ), (24180712803/1250000000 : ℚ), (-884667110249/1000000000000 : ℚ), 8⟩,
    ⟨(5732666291/125000000000 : ℚ), (10121768241/2500000000 : ℚ), (-190558770271/1000000000000 : ℚ), 6⟩,
    ⟨(46820404527/1000000000000 : ℚ), (-148924569/1250000000 : ℚ), (548258413/250000000000 : ℚ), 6⟩,
    ⟨(47858498959/1000000000000 : ℚ), (-4553434659/2500000000 : ℚ), (16532816167/200000000000 : ℚ), 5⟩,
    ⟨(24408786579/500000000000 : ℚ), (-26685819239/10000000000 : ℚ), (123584354099/1000000000000 : ℚ), 5⟩,
    ⟨(49551616771/1000000000000 : ℚ), (-31170082047/10000000000 : ℚ), (145632715663/1000000000000 : ℚ), 5⟩,
    ⟨(49948878311/1000000000000 : ℚ), (-16589370453/5000000000 : ℚ), (31125014053/200000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-33421194033/10000000000 : ℚ), (156836714761/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control793.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control793.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate793
