import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate763
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (32317324340859/145053792444200 : ℚ), (162239370487/500000000 : ℚ), (-72473292608221/1000000000000 : ℚ)⟩,
  ⟨(32317324340859/145053792444200 : ℚ), (1723768136693/7661635568800 : ℚ), (42963945107/1250000000 : ℚ), (-7838643926503/1000000000000 : ℚ)⟩,
  ⟨(1723768136693/7661635568800 : ℚ), (1425406311623/6236062223600 : ℚ), (3558202931/312500000 : ℚ), (-333417439553/125000000000 : ℚ)⟩,
  ⟨(1425406311623/6236062223600 : ℚ), (587292713013/2516166150200 : ℚ), (12875467889/2500000000 : ℚ), (-1241933204801/1000000000000 : ℚ)⟩,
  ⟨(587292713013/2516166150200 : ℚ), (297981717141/1245225277600 : ℚ), (13170105027/5000000000 : ℚ), (-163660122947/250000000000 : ℚ)⟩,
  ⟨(297981717141/1245225277600 : ℚ), (86007699703/349591308250 : ℚ), (6943978639/5000000000 : ℚ), (-356658774647/1000000000000 : ℚ)⟩,
  ⟨(86007699703/349591308250 : ℚ), (54218360597/214029611800 : ℚ), (6896131113/10000000000 : ℚ), (-184643375241/1000000000000 : ℚ)⟩,
  ⟨(54218360597/214029611800 : ℚ), (72802309811/279028820600 : ℚ), (2615538877/10000000000 : ℚ), (-76206654047/1000000000000 : ℚ)⟩,
  ⟨(72802309811/279028820600 : ℚ), (25565455123/95213934850 : ℚ), (-174749329/10000000000 : ℚ), (-851086059/250000000000 : ℚ)⟩,
  ⟨(25565455123/95213934850 : ℚ), (308262817/1117681820 : ℚ), (-1039514013/5000000000 : ℚ), (4772656601/100000000000 : ℚ)⟩,
  ⟨(308262817/1117681820 : ℚ), (27130576279/96026482800 : ℚ), (-342024621/1000000000 : ℚ), (1694362081/20000000000 : ℚ)⟩,
  ⟨(27130576279/96026482800 : ℚ), (19774437807/68559675400 : ℚ), (-2190255519/5000000000 : ℚ), (111848680329/1000000000000 : ℚ)⟩,
  ⟨(19774437807/68559675400 : ℚ), (13898449241/47392515700 : ℚ), (-316631737/625000000 : ℚ), (16452889767/125000000000 : ℚ)⟩,
  ⟨(13898449241/47392515700 : ℚ), (4441639451/14962330050 : ℚ), (-5540032949/10000000000 : ℚ), (145521567377/1000000000000 : ℚ)⟩,
  ⟨(4441639451/14962330050 : ℚ), (4338391961/14506452600 : ℚ), (-116785591/200000000 : ℚ), (154404846279/1000000000000 : ℚ)⟩,
  ⟨(4338391961/14506452600 : ℚ), (134431953/448246300 : ℚ), (-1496086019/2500000000 : ℚ), (992145239/6250000000 : ℚ)⟩,
  ⟨(134431953/448246300 : ℚ), (3/10 : ℚ), (-750284241/1250000000 : ℚ), (39820241513/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (249715759/1000000000 : ℚ), (-6/25 : ℚ), (54803187053/250000000000 : ℚ)⟩,
  ⟨(249715759/1000000000 : ℚ), (503913981/2000000000 : ℚ), (-134431953/560307875 : ℚ), (245632313587581173/1120615750000000000 : ℚ)⟩,
  ⟨(503913981/2000000000 : ℚ), (43214409/160000000 : ℚ), (-4338391961/18133065750 : ℚ), (2647726505651191767/12088710500000000000 : ℚ)⟩,
  ⟨(43214409/160000000 : ℚ), (2459967051/8000000000 : ℚ), (-8883278902/37405825125 : ℚ), (21799802604507731193/99748867000000000000 : ℚ)⟩,
  ⟨(2459967051/8000000000 : ℚ), (183368263/500000000 : ℚ), (-13898449241/59240644625 : ℚ), (2578901471472169037/11848128925000000000 : ℚ)⟩,
  ⟨(183368263/500000000 : ℚ), (1809744481/4000000000 : ℚ), (-19774437807/85699594250 : ℚ), (1252165975886301/5790513125000000 : ℚ)⟩,
  ⟨(1809744481/4000000000 : ℚ), (457975379/800000000 : ℚ), (-27130576279/120033103500 : ℚ), (20560317515269370081/96026482800000000000 : ℚ)⟩,
  ⟨(457975379/800000000 : ℚ), (2960485987/4000000000 : ℚ), (-308262817/1397102275 : ℚ), (117932332584368007/558840910000000000 : ℚ)⟩,
  ⟨(2960485987/4000000000 : ℚ), (7825250671/8000000000 : ℚ), (-51130910246/238034837125 : ℚ), (196814684752741367287/952139348500000000000 : ℚ)⟩,
  ⟨(7825250671/8000000000 : ℚ), (10615538877/8000000000 : ℚ), (-72802309811/348786025750 : ℚ), (112039444425600550513/558057641200000000000 : ℚ)⟩,
  ⟨(10615538877/8000000000 : ℚ), (14896131113/8000000000 : ℚ), (-54218360597/267537014750 : ℚ), (412452308942095340023/2140296118000000000000 : ℚ)⟩,
  ⟨(14896131113/8000000000 : ℚ), (10943978639/4000000000 : ℚ), (-172015399406/873978270625 : ℚ), (1271369560802901338113/6991826165000000000000 : ℚ)⟩,
  ⟨(10943978639/4000000000 : ℚ), (17170105027/4000000000 : ℚ), (-297981717141/1556531597000 : ℚ), (1040502938862212066063/6226126388000000000000 : ℚ)⟩,
  ⟨(17170105027/4000000000 : ℚ), (14875467889/2000000000 : ℚ), (-587292713013/3145207687750 : ℚ), (1847956334088746243563/12580830751000000000000 : ℚ)⟩,
  ⟨(14875467889/2000000000 : ℚ), (3808202931/250000000 : ℚ), (-1425406311623/7795077779500 : ℚ), (115103372536929270943/974384722437500000000 : ℚ)⟩,
  ⟨(3808202931/250000000 : ℚ), (32/1 : ℚ), (-1723768136693/9577044461000 : ℚ), (178151585174969315317/2394261115250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (252471503963/500000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(222521644017/1000000000000 : ℚ), (162239370487/500000000 : ℚ), (-72473292608221/1000000000000 : ℚ), 11⟩,
    ⟨(224006775943/1000000000000 : ℚ), (42963945107/1250000000 : ℚ), (-7838643926503/1000000000000 : ℚ), 8⟩,
    ⟨(7091248969/31250000000 : ℚ), (3558202931/312500000 : ℚ), (-333417439553/125000000000 : ℚ), 7⟩,
    ⟨(14446829057/62500000000 : ℚ), (12875467889/2500000000 : ℚ), (-1241933204801/1000000000000 : ℚ), 6⟩,
    ⟨(23653214011/100000000000 : ℚ), (13170105027/5000000000 : ℚ), (-163660122947/250000000000 : ℚ), 5⟩,
    ⟨(242861731727/1000000000000 : ℚ), (6943978639/5000000000 : ℚ), (-356658774647/1000000000000 : ℚ), 5⟩,
    ⟨(49978959421/200000000000 : ℚ), (6896131113/10000000000 : ℚ), (-184643375241/1000000000000 : ℚ), 4⟩,
    ⟨(257361059487/1000000000000 : ℚ), (2615538877/10000000000 : ℚ), (-76206654047/1000000000000 : ℚ), 4⟩,
    ⟨(66243398649/250000000000 : ℚ), (-174749329/10000000000 : ℚ), (-851086059/250000000000 : ℚ), 4⟩,
    ⟨(136219928489/500000000000 : ℚ), (-1039514013/5000000000 : ℚ), (4772656601/100000000000 : ℚ), 4⟩,
    ⟨(69868230589/250000000000 : ℚ), (-342024621/1000000000 : ℚ), (1694362081/20000000000 : ℚ), 4⟩,
    ⟨(71450628493/250000000000 : ℚ), (-2190255519/5000000000 : ℚ), (111848680329/1000000000000 : ℚ), 4⟩,
    ⟨(29118538917/100000000000 : ℚ), (-316631737/625000000 : ℚ), (16452889767/125000000000 : ℚ), 3⟩,
    ⟨(11816587483/40000000000 : ℚ), (-5540032949/10000000000 : ℚ), (145521567377/1000000000000 : ℚ), 3⟩,
    ⟨(14916393907/50000000000 : ℚ), (-116785591/200000000 : ℚ), (154404846279/1000000000000 : ℚ), 3⟩,
    ⟨(149906505033/500000000000 : ℚ), (-1496086019/2500000000 : ℚ), (992145239/6250000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-750284241/1250000000 : ℚ), (39820241513/250000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control763.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control763.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate763
