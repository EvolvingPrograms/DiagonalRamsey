import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate713
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (13218816695373/73430073703025 : ℚ), (3284428775767/10000000000 : ℚ), (-741140846573/12500000000 : ℚ)⟩,
  ⟨(13218816695373/73430073703025 : ℚ), (528828629623/2905566420200 : ℚ), (173612913823/5000000000 : ℚ), (-1604000236087/250000000000 : ℚ)⟩,
  ⟨(528828629623/2905566420200 : ℚ), (1166335575203/6295765580200 : ℚ), (11478051403/1000000000 : ℚ), (-546342976841/250000000000 : ℚ)⟩,
  ⟨(1166335575203/6295765580200 : ℚ), (480784704577/2535279422600 : ℚ), (12955714557/2500000000 : ℚ), (-1019036332161/1000000000000 : ℚ)⟩,
  ⟨(480784704577/2535279422600 : ℚ), (48835727419/250467685220 : ℚ), (13235032001/5000000000 : ℚ), (-8410181681/15625000000 : ℚ)⟩,
  ⟨(48835727419/250467685220 : ℚ), (23530836289/117026144200 : ℚ), (13946679741/10000000000 : ℚ), (-294072990489/1000000000000 : ℚ)⟩,
  ⟨(23530836289/117026144200 : ℚ), (89211089719/429541622800 : ℚ), (6925111089/10000000000 : ℚ), (-30577594551/200000000000 : ℚ)⟩,
  ⟨(89211089719/429541622800 : ℚ), (1201541491/5599748406 : ℚ), (2629694861/10000000000 : ℚ), (-15919220759/250000000000 : ℚ)⟩,
  ⟨(1201541491/5599748406 : ℚ), (42343625449/191208396500 : ℚ), (-85089671/5000000000 : ℚ), (-1799904243/500000000000 : ℚ)⟩,
  ⟨(42343625449/191208396500 : ℚ), (30749483347/134824771900 : ℚ), (-2082263307/10000000000 : ℚ), (38743816963/1000000000000 : ℚ)⟩,
  ⟨(30749483347/134824771900 : ℚ), (5658571147/24164655650 : ℚ), (-1715255513/5000000000 : ℚ), (6949330031/100000000000 : ℚ)⟩,
  ⟨(5658571147/24164655650 : ℚ), (16549854421/69098803200 : ℚ), (-1099274313/2500000000 : ℚ), (46063792449/500000000000 : ℚ)⟩,
  ⟨(16549854421/69098803200 : ℚ), (2915413431/11953647275 : ℚ), (-1272021321/2500000000 : ℚ), (108677439319/1000000000000 : ℚ)⟩,
  ⟨(2915413431/11953647275 : ℚ), (34569964/139874875 : ℚ), (-222649247/400000000 : ℚ), (120339093043/1000000000000 : ℚ)⟩,
  ⟨(34569964/139874875 : ℚ), (3650664613/14652256700 : ℚ), (-1173672181/2000000000 : ℚ), (127806205267/1000000000000 : ℚ)⟩,
  ⟨(3650664613/14652256700 : ℚ), (113166322/452818875 : ℚ), (-375930217/625000000 : ℚ), (3286421747/25000000000 : ℚ)⟩,
  ⟨(113166322/452818875 : ℚ), (1/4 : ℚ), (-6032996227/10000000000 : ℚ), (2061086487/15625000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1967003773/8000000000 : ℚ), (-1/5 : ℚ), (181084629493/1000000000000 : ℚ)⟩,
  ⟨(1967003773/8000000000 : ℚ), (124069783/500000000 : ℚ), (-452665288/2264094375 : ℚ), (409954927757999933/2264094375000000000 : ℚ)⟩,
  ⟨(124069783/500000000 : ℚ), (426327819/1600000000 : ℚ), (-3650664613/18315320875 : ℚ), (3313549085756700703/18315320875000000000 : ℚ)⟩,
  ⟨(426327819/1600000000 : ℚ), (97350753/320000000 : ℚ), (-138279856/699374375 : ℚ), (201967565307681797/1118999000000000000 : ℚ)⟩,
  ⟨(97350753/320000000 : ℚ), (727978679/2000000000 : ℚ), (-11661653724/59768236375 : ℚ), (85921412146593490613/478145891000000000000 : ℚ)⟩,
  ⟨(727978679/2000000000 : ℚ), (900725687/2000000000 : ℚ), (-16549854421/86373504000 : ℚ), (30821643638500697411/172747008000000000000 : ℚ)⟩,
  ⟨(900725687/2000000000 : ℚ), (2284744487/4000000000 : ℚ), (-11317142294/60411639125 : ℚ), (42649595184542915693/241646556500000000000 : ℚ)⟩,
  ⟨(2284744487/4000000000 : ℚ), (5917736693/8000000000 : ℚ), (-30749483347/168530964875 : ℚ), (58550902184763152217/337061929750000000000 : ℚ)⟩,
  ⟨(5917736693/8000000000 : ℚ), (3914910329/4000000000 : ℚ), (-42343625449/239010495625 : ℚ), (7378633118000981783/43456453750000000000 : ℚ)⟩,
  ⟨(3914910329/4000000000 : ℚ), (10629694861/8000000000 : ℚ), (-2403082982/13999371015 : ℚ), (230156854234052083621/1399937101500000000000 : ℚ)⟩,
  ⟨(10629694861/8000000000 : ℚ), (14925111089/8000000000 : ℚ), (-89211089719/536927028500 : ℚ), (674767945188971925851/4295416228000000000000 : ℚ)⟩,
  ⟨(14925111089/8000000000 : ℚ), (21946679741/8000000000 : ℚ), (-23530836289/146282680250 : ℚ), (24611635167096356573/167180206000000000000 : ℚ)⟩,
  ⟨(21946679741/8000000000 : ℚ), (17235032001/4000000000 : ℚ), (-48835727419/313084606525 : ℚ), (838060643621341149383/6261692130500000000000 : ℚ)⟩,
  ⟨(17235032001/4000000000 : ℚ), (14955714557/2000000000 : ℚ), (-480784704577/3169099278250 : ℚ), (292649678200511480717/2535279422600000000000 : ℚ)⟩,
  ⟨(14955714557/2000000000 : ℚ), (12278051403/800000000 : ℚ), (-1166335575203/7869706975250 : ℚ), (2808694555858560236081/31478827901000000000000 : ℚ)⟩,
  ⟨(12278051403/800000000 : ℚ), (32/1 : ℚ), (-528828629623/3631958025250 : ℚ), (716209341019895063581/14527832101000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (127531412243/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(179770977809/1000000000000 : ℚ), (3284428775767/10000000000 : ℚ), (-741140846573/12500000000 : ℚ), 11⟩,
    ⟨(181117151997/1000000000000 : ℚ), (173612913823/5000000000 : ℚ), (-1604000236087/250000000000 : ℚ), 8⟩,
    ⟨(36751553531/200000000000 : ℚ), (11478051403/1000000000 : ℚ), (-546342976841/250000000000 : ℚ), 6⟩,
    ⟨(187591347403/1000000000000 : ℚ), (12955714557/2500000000 : ℚ), (-1019036332161/1000000000000 : ℚ), 5⟩,
    ⟨(192470568921/1000000000000 : ℚ), (13235032001/5000000000 : ℚ), (-8410181681/15625000000 : ℚ), 5⟩,
    ⟨(3096998851/15625000000 : ℚ), (13946679741/10000000000 : ℚ), (-294072990489/1000000000000 : ℚ), 4⟩,
    ⟨(204582936597/1000000000000 : ℚ), (6925111089/10000000000 : ℚ), (-30577594551/200000000000 : ℚ), 4⟩,
    ⟨(105675305629/500000000000 : ℚ), (2629694861/10000000000 : ℚ), (-15919220759/250000000000 : ℚ), 4⟩,
    ⟨(218250872503/1000000000000 : ℚ), (-85089671/5000000000 : ℚ), (-1799904243/500000000000 : ℚ), 4⟩,
    ⟨(225018547163/1000000000000 : ℚ), (-2082263307/10000000000 : ℚ), (38743816963/1000000000000 : ℚ), 3⟩,
    ⟨(231393557297/1000000000000 : ℚ), (-1715255513/5000000000 : ℚ), (6949330031/100000000000 : ℚ), 3⟩,
    ⟨(237130914839/1000000000000 : ℚ), (-1099274313/2500000000 : ℚ), (46063792449/500000000000 : ℚ), 3⟩,
    ⟨(242010136357/1000000000000 : ℚ), (-1272021321/2500000000 : ℚ), (108677439319/1000000000000 : ℚ), 3⟩,
    ⟨(49168743221/200000000000 : ℚ), (-222649247/400000000 : ℚ), (120339093043/1000000000000 : ℚ), 3⟩,
    ⟨(248484331763/1000000000000 : ℚ), (-1173672181/2000000000 : ℚ), (127806205267/1000000000000 : ℚ), 3⟩,
    ⟨(249830505951/1000000000000 : ℚ), (-375930217/625000000 : ℚ), (3286421747/25000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6032996227/10000000000 : ℚ), (2061086487/15625000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control713.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control713.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate713
