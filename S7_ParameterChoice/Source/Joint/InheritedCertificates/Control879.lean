import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate879
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1982226963517/15785087826925 : ℚ), (696181975973/10000000000 : ℚ), (-1096268734767/125000000000 : ℚ)⟩,
  ⟨(1982226963517/15785087826925 : ℚ), (158851789919/1238366096650 : ℚ), (4048653931/625000000 : ℚ), (-210310506017/250000000000 : ℚ)⟩,
  ⟨(158851789919/1238366096650 : ℚ), (44064671957/332927357350 : ℚ), (1524381903/1000000000 : ℚ), (-25729358049/125000000000 : ℚ)⟩,
  ⟨(44064671957/332927357350 : ℚ), (73418342837/535201696000 : ℚ), (15052537/78125000 : ℚ), (-7394044141/250000000000 : ℚ)⟩,
  ⟨(73418342837/535201696000 : ℚ), (3720871807/26202583180 : ℚ), (-53520191/156250000 : ℚ), (43842166273/1000000000000 : ℚ)⟩,
  ⟨(3720871807/26202583180 : ℚ), (1664315808/11392629775 : ℚ), (-3022775271/5000000000 : ℚ), (81050884343/1000000000000 : ℚ)⟩,
  ⟨(1664315808/11392629775 : ℚ), (4511138129/30315391050 : ℚ), (-1482533223/2000000000 : ℚ), (101022674039/1000000000000 : ℚ)⟩,
  ⟨(4511138129/30315391050 : ℚ), (1092436077/7288759600 : ℚ), (-501185871/625000000 : ℚ), (110044950297/1000000000000 : ℚ)⟩,
  ⟨(1092436077/7288759600 : ℚ), (3/20 : ℚ), (-2022965383/2500000000 : ℚ), (55568693187/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (477034617/2500000000 : ℚ), (-3/20 : ℚ), (69879731697/500000000000 : ℚ)⟩,
  ⟨(477034617/2500000000 : ℚ), (123814129/625000000 : ℚ), (-1092436077/7288759600 : ℚ), (509252811043936347/3644379800000000000 : ℚ)⟩,
  ⟨(123814129/625000000 : ℚ), (517466777/2000000000 : ℚ), (-4511138129/30315391050 : ℚ), (84594478450333761349/606307821000000000000 : ℚ)⟩,
  ⟨(517466777/2000000000 : ℚ), (1977224729/5000000000 : ℚ), (-1664315808/11392629775 : ℚ), (63261119709791452769/455705191000000000000 : ℚ)⟩,
  ⟨(1977224729/5000000000 : ℚ), (102729809/156250000 : ℚ), (-3720871807/26202583180 : ℚ), (179757124442894010567/1310129159000000000000 : ℚ)⟩,
  ⟨(102729809/156250000 : ℚ), (93177537/78125000 : ℚ), (-73418342837/535201696000 : ℚ), (5604282554747607739/41812632500000000000 : ℚ)⟩,
  ⟨(93177537/78125000 : ℚ), (2524381903/1000000000 : ℚ), (-44064671957/332927357350 : ℚ), (213540014986791098449/1664636786750000000000 : ℚ)⟩,
  ⟨(2524381903/1000000000 : ℚ), (4673653931/625000000 : ℚ), (-158851789919/1238366096650 : ℚ), (6702003034820106439/56805784250000000000 : ℚ)⟩,
  ⟨(4673653931/625000000 : ℚ), (32/1 : ℚ), (-1982226963517/15785087826925 : ℚ), (15437093106671383480923/157850878269250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (359948807437/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(62614233783/500000000000 : ℚ), (696181975973/10000000000 : ℚ), (-1096268734767/125000000000 : ℚ), 11⟩,
    ⟨(63547898313/500000000000 : ℚ), (4048653931/625000000 : ℚ), (-210310506017/250000000000 : ℚ), 8⟩,
    ⟨(130546170823/1000000000000 : ℚ), (1524381903/1000000000 : ℚ), (-25729358049/125000000000 : ℚ), 7⟩,
    ⟨(27010860393/200000000000 : ℚ), (15052537/78125000 : ℚ), (-7394044141/250000000000 : ℚ), 6⟩,
    ⟨(2798677359/20000000000 : ℚ), (-53520191/156250000 : ℚ), (43842166273/1000000000000 : ℚ), 5⟩,
    ⟨(36110499773/250000000000 : ℚ), (-3022775271/5000000000 : ℚ), (81050884343/1000000000000 : ℚ), 5⟩,
    ⟨(147892373289/1000000000000 : ℚ), (-1482533223/2000000000 : ℚ), (101022674039/1000000000000 : ℚ), 5⟩,
    ⟨(149759702349/1000000000000 : ℚ), (-501185871/625000000 : ℚ), (110044950297/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-2022965383/2500000000 : ℚ), (55568693187/500000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control879.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control879.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate879
