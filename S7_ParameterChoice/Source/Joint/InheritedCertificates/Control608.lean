import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate608
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1624057744721/7466776298402 : ℚ), (835026096279/2000000000 : ℚ), (-91059570192549/1000000000000 : ℚ)⟩,
  ⟨(1624057744721/7466776298402 : ℚ), (6497035293803/29552661708400 : ℚ), (220871166097/5000000000 : ℚ), (-9856682956499/1000000000000 : ℚ)⟩,
  ⟨(6497035293803/29552661708400 : ℚ), (298499747219/1334498195400 : ℚ), (14621571511/1000000000 : ℚ), (-419955957837/125000000000 : ℚ)⟩,
  ⟨(298499747219/1334498195400 : ℚ), (246036892653/1075132221700 : ℚ), (33072911693/5000000000 : ℚ), (-784324589691/500000000000 : ℚ)⟩,
  ⟨(246036892653/1075132221700 : ℚ), (46836803369/199187980500 : ℚ), (6778371347/2000000000 : ℚ), (-830538501423/1000000000000 : ℚ)⟩,
  ⟨(46836803369/199187980500 : ℚ), (43296066519/178670400140 : ℚ), (3591363659/2000000000 : ℚ), (-455844074471/1000000000000 : ℚ)⟩,
  ⟨(43296066519/178670400140 : ℚ), (68314088339/273122872700 : ℚ), (563956143/625000000 : ℚ), (-59840935469/250000000000 : ℚ)⟩,
  ⟨(68314088339/273122872700 : ℚ), (4593143899/17786746480 : ℚ), (1780420417/5000000000 : ℚ), (-51367782599/500000000000 : ℚ)⟩,
  ⟨(4593143899/17786746480 : ℚ), (64619015353/242612441400 : ℚ), (1745769/5000000000 : ℚ), (-5436343609/500000000000 : ℚ)⟩,
  ⟨(64619015353/242612441400 : ℚ), (9363878869/34156399360 : ℚ), (-605658219/2500000000 : ℚ), (10749265627/200000000000 : ℚ)⟩,
  ⟨(9363878869/34156399360 : ℚ), (34380783259/122205927500 : ℚ), (-1032613211/2500000000 : ℚ), (1257071531/12500000000 : ℚ)⟩,
  ⟨(34380783259/122205927500 : ℚ), (6270128613/21799042700 : ℚ), (-5352512119/10000000000 : ℚ), (134946505739/1000000000000 : ℚ)⟩,
  ⟨(6270128613/21799042700 : ℚ), (440916289/1505858770 : ℚ), (-6224473827/10000000000 : ℚ), (160027020191/1000000000000 : ℚ)⟩,
  ⟨(440916289/1505858770 : ℚ), (11275069341/38009382400 : ℚ), (-1365363467/2000000000 : ℚ), (177663671751/1000000000000 : ℚ)⟩,
  ⟨(11275069341/38009382400 : ℚ), (1376709573/4604343925 : ℚ), (-7206911159/10000000000 : ℚ), (47234685273/250000000000 : ℚ)⟩,
  ⟨(1376709573/4604343925 : ℚ), (34127909/113797620 : ℚ), (-1847771229/2500000000 : ℚ), (24305697423/125000000000 : ℚ)⟩,
  ⟨(34127909/113797620 : ℚ), (3/10 : ℚ), (-185346111/250000000 : ℚ), (48782034391/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (64653889/250000000 : ℚ), (-3/10 : ℚ), (68178201091/250000000000 : ℚ)⟩,
  ⟨(64653889/250000000 : ℚ), (652228771/2500000000 : ℚ), (-34127909/113797620 : ℚ), (387889072637102521/1422470250000000000 : ℚ)⟩,
  ⟨(652228771/2500000000 : ℚ), (2793088841/10000000000 : ℚ), (-1376709573/4604343925 : ℚ), (6272330796542577777/23021719625000000000 : ℚ)⟩,
  ⟨(2793088841/10000000000 : ℚ), (634636533/2000000000 : ℚ), (-11275069341/38009382400 : ℚ), (103306718961252539589/380093824000000000000 : ℚ)⟩,
  ⟨(634636533/2000000000 : ℚ), (3775526173/10000000000 : ℚ), (-440916289/1505858770 : ℚ), (40744719071373762477/150585877000000000000 : ℚ)⟩,
  ⟨(3775526173/10000000000 : ℚ), (4647487881/10000000000 : ℚ), (-6270128613/21799042700 : ℚ), (29278696574715699803/108995213500000000000 : ℚ)⟩,
  ⟨(4647487881/10000000000 : ℚ), (1467386789/2500000000 : ℚ), (-34380783259/122205927500 : ℚ), (81174225625668965851/305514818750000000000 : ℚ)⟩,
  ⟨(1467386789/2500000000 : ℚ), (1894341781/2500000000 : ℚ), (-9363878869/34156399360 : ℚ), (22327839593551385673/85390998400000000000 : ℚ)⟩,
  ⟨(1894341781/2500000000 : ℚ), (5001745769/5000000000 : ℚ), (-64619015353/242612441400 : ℚ), (310018640686126021331/1213062207000000000000 : ℚ)⟩,
  ⟨(5001745769/5000000000 : ℚ), (6780420417/5000000000 : ℚ), (-4593143899/17786746480 : ℚ), (110033947038584504339/444668662000000000000 : ℚ)⟩,
  ⟨(6780420417/5000000000 : ℚ), (1188956143/625000000 : ℚ), (-68314088339/273122872700 : ℚ), (32290107586581769589/136561436350000000000 : ℚ)⟩,
  ⟨(1188956143/625000000 : ℚ), (5591363659/2000000000 : ℚ), (-43296066519/178670400140 : ℚ), (494952290860126096057/2233380001750000000000 : ℚ)⟩,
  ⟨(5591363659/2000000000 : ℚ), (8778371347/2000000000 : ℚ), (-46836803369/199187980500 : ℚ), (4014213951380758777/19918798050000000000 : ℚ)⟩,
  ⟨(8778371347/2000000000 : ℚ), (38072911693/5000000000 : ℚ), (-246036892653/1075132221700 : ℚ), (467407250356766013291/2687830554250000000000 : ℚ)⟩,
  ⟨(38072911693/5000000000 : ℚ), (15621571511/1000000000 : ℚ), (-298499747219/1334498195400 : ℚ), (897957020746959895553/6672490977000000000000 : ℚ)⟩,
  ⟨(15621571511/1000000000 : ℚ), (32/1 : ℚ), (-6497035293803/29552661708400 : ℚ), (11036853082814106682433/147763308542000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (76532652441/200000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(54303004819/250000000000 : ℚ), (835026096279/2000000000 : ℚ), (-91059570192549/1000000000000 : ℚ), 11⟩,
    ⟨(8751957117/40000000000 : ℚ), (220871166097/5000000000 : ℚ), (-9856682956499/1000000000000 : ℚ), 7⟩,
    ⟨(44382352243/200000000000 : ℚ), (14621571511/1000000000 : ℚ), (-419955957837/125000000000 : ℚ), 6⟩,
    ⟨(113215447353/500000000000 : ℚ), (33072911693/5000000000 : ℚ), (-784324589691/500000000000 : ℚ), 5⟩,
    ⟨(46436532127/200000000000 : ℚ), (6778371347/2000000000 : ℚ), (-830538501423/1000000000000 : ℚ), 4⟩,
    ⟨(238946021861/1000000000000 : ℚ), (3591363659/2000000000 : ℚ), (-455844074471/1000000000000 : ℚ), 4⟩,
    ⟨(49292213241/200000000000 : ℚ), (563956143/625000000 : ℚ), (-59840935469/250000000000 : ℚ), 4⟩,
    ⟨(254438994729/1000000000000 : ℚ), (1780420417/5000000000 : ℚ), (-51367782599/500000000000 : ℚ), 3⟩,
    ⟨(262573220113/1000000000000 : ℚ), (1745769/5000000000 : ℚ), (-5436343609/500000000000 : ℚ), 3⟩,
    ⟨(67637787159/250000000000 : ℚ), (-605658219/2500000000 : ℚ), (10749265627/200000000000 : ℚ), 3⟩,
    ⟨(278066192981/1000000000000 : ℚ), (-1032613211/2500000000 : ℚ), (1257071531/12500000000 : ℚ), 3⟩,
    ⟨(284829554207/1000000000000 : ℚ), (-5352512119/10000000000 : ℚ), (134946505739/1000000000000 : ℚ), 3⟩,
    ⟨(58116264027/200000000000 : ℚ), (-6224473827/10000000000 : ℚ), (160027020191/1000000000000 : ℚ), 3⟩,
    ⟨(295100453627/1000000000000 : ℚ), (-1365363467/2000000000 : ℚ), (177663671751/1000000000000 : ℚ), 3⟩,
    ⟨(74553321729/250000000000 : ℚ), (-7206911159/10000000000 : ℚ), (47234685273/250000000000 : ℚ), 3⟩,
    ⟨(149900097783/500000000000 : ℚ), (-1847771229/2500000000 : ℚ), (24305697423/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-185346111/250000000 : ℚ), (48782034391/250000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control608.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control608.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate608
