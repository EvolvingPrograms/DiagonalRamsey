import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate70
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (120408400824621/988512935001400 : ℚ), (11056616976617/10000000000 : ℚ), (-4215618244203/31250000000 : ℚ)⟩,
  ⟨(120408400824621/988512935001400 : ℚ), (9634337742411/78578270106200 : ℚ), (1171487626603/10000000000 : ℚ), (-115931063919/8000000000 : ℚ)⟩,
  ⟨(9634337742411/78578270106200 : ℚ), (664106727162/5359210789675 : ℚ), (385704925541/10000000000 : ℚ), (-607130655933/125000000000 : ℚ)⟩,
  ⟨(664106727162/5359210789675 : ℚ), (1095407409121/8715555325300 : ℚ), (85668246977/5000000000 : ℚ), (-4298082693/1953125000 : ℚ)⟩,
  ⟨(1095407409121/8715555325300 : ℚ), (139177746699/1088719030850 : ℚ), (84180940701/10000000000 : ℚ), (-221042185939/200000000000 : ℚ)⟩,
  ⟨(139177746699/1088719030850 : ℚ), (40281341462/309161467675 : ℚ), (40632179467/10000000000 : ℚ), (-548499942899/1000000000000 : ℚ)⟩,
  ⟨(40281341462/309161467675 : ℚ), (16994874511/127821618600 : ℚ), (15899262053/10000000000 : ℚ), (-226249211203/1000000000000 : ℚ)⟩,
  ⟨(16994874511/127821618600 : ℚ), (137598897127/1013768528600 : ℚ), (560667821/10000000000 : ℚ), (-22310717071/1000000000000 : ℚ)⟩,
  ⟨(137598897127/1013768528600 : ℚ), (48591068177/350831967600 : ℚ), (-1915403493/2000000000 : ℚ), (14411022507/125000000000 : ℚ)⟩,
  ⟨(48591068177/350831967600 : ℚ), (1178525359/8348402940 : ℚ), (-16593656817/10000000000 : ℚ), (21247031641/100000000000 : ℚ)⟩,
  ⟨(1178525359/8348402940 : ℚ), (52136582397/363008645200 : ℚ), (-21602698581/10000000000 : ℚ), (5663636759/20000000000 : ℚ)⟩,
  ⟨(52136582397/363008645200 : ℚ), (19084463849/130916994200 : ℚ), (-25232785033/10000000000 : ℚ), (335318420347/1000000000000 : ℚ)⟩,
  ⟨(19084463849/130916994200 : ℚ), (26917077483/182438472700 : ℚ), (-27851124917/10000000000 : ℚ), (74697469609/200000000000 : ℚ)⟩,
  ⟨(26917077483/182438472700 : ℚ), (17243189219/115841266500 : ℚ), (-7418877411/2500000000 : ℚ), (50050553191/125000000000 : ℚ)⟩,
  ⟨(17243189219/115841266500 : ℚ), (421597272/2817049495 : ℚ), (-30833922309/10000000000 : ℚ), (417647614747/1000000000000 : ℚ)⟩,
  ⟨(421597272/2817049495 : ℚ), (522794553/3486090950 : ℚ), (-1962333263/625000000 : ℚ), (426079560187/1000000000000 : ℚ)⟩,
  ⟨(522794553/3486090950 : ℚ), (3/20 : ℚ), (-31467054027/10000000000 : ℚ), (427125149293/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8532945973/40000000000 : ℚ), (-3/5 : ℚ), (69389917361/125000000000 : ℚ)⟩,
  ⟨(8532945973/40000000000 : ℚ), (537666737/2500000000 : ℚ), (-1045589106/1743045475 : ℚ), (7740379540161978821/13944363800000000000 : ℚ)⟩,
  ⟨(537666737/2500000000 : ℚ), (9166077691/40000000000 : ℚ), (-1686389088/2817049495 : ℚ), (312594667431511359593/563409899000000000000 : ℚ)⟩,
  ⟨(9166077691/40000000000 : ℚ), (2581122589/10000000000 : ℚ), (-17243189219/28960316625 : ℚ), (160465174612983296021/289603166250000000000 : ℚ)⟩,
  ⟨(2581122589/10000000000 : ℚ), (12148875083/40000000000 : ℚ), (-26917077483/45609618175 : ℚ), (252099206360357591201/456096181750000000000 : ℚ)⟩,
  ⟨(12148875083/40000000000 : ℚ), (14767214967/40000000000 : ℚ), (-19084463849/32729248550 : ℚ), (720813177105336837857/1309169942000000000000 : ℚ)⟩,
  ⟨(14767214967/40000000000 : ℚ), (18397301419/40000000000 : ℚ), (-52136582397/90752161300 : ℚ), (1987146974708892974743/3630086452000000000000 : ℚ)⟩,
  ⟨(18397301419/40000000000 : ℚ), (23406343183/40000000000 : ℚ), (-1178525359/2087100735 : ℚ), (45322847144422020151/83484029400000000000 : ℚ)⟩,
  ⟨(23406343183/40000000000 : ℚ), (6084596507/8000000000 : ℚ), (-48591068177/87707991900 : ℚ), (1882753009006560870551/3508319676000000000000 : ℚ)⟩,
  ⟨(6084596507/8000000000 : ℚ), (40560667821/40000000000 : ℚ), (-137598897127/253442132150 : ℚ), (5354924130733412532961/10137685286000000000000 : ℚ)⟩,
  ⟨(40560667821/40000000000 : ℚ), (55899262053/40000000000 : ℚ), (-16994874511/31955404650 : ℚ), (8810740533584427991/17042882480000000000 : ℚ)⟩,
  ⟨(55899262053/40000000000 : ℚ), (80632179467/40000000000 : ℚ), (-161125365848/309161467675 : ℚ), (6208887521089627271423/12366458707000000000000 : ℚ)⟩,
  ⟨(80632179467/40000000000 : ℚ), (124180940701/40000000000 : ℚ), (-278355493398/544359515425 : ℚ), (10501163574207277270183/21774380617000000000000 : ℚ)⟩,
  ⟨(124180940701/40000000000 : ℚ), (105668246977/20000000000 : ℚ), (-1095407409121/2178888831325 : ℚ), (374560872421327697981/822222200500000000000 : ℚ)⟩,
  ⟨(105668246977/20000000000 : ℚ), (425704925541/40000000000 : ℚ), (-2656426908648/5359210789675 : ℚ), (224142118762889199333/535921078967500000000 : ℚ)⟩,
  ⟨(425704925541/40000000000 : ℚ), (1211487626603/40000000000 : ℚ), (-9634337742411/19644567526550 : ℚ), (284802897537308667212583/785782701062000000000000 : ℚ)⟩,
  ⟨(1211487626603/40000000000 : ℚ), (32/1 : ℚ), (-120408400824621/247128233750350 : ℚ), (2624092422575808643884213/9885129350014000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (173482030227/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(12170757517/100000000000 : ℚ), (11056616976617/10000000000 : ℚ), (-4215618244203/31250000000 : ℚ), 10⟩,
    ⟨(24449978831/200000000000 : ℚ), (1171487626603/10000000000 : ℚ), (-115931063919/8000000000 : ℚ), 7⟩,
    ⟨(12331369111/100000000000 : ℚ), (385704925541/10000000000 : ℚ), (-607130655933/125000000000 : ℚ), 6⟩,
    ⟨(31214521229/250000000000 : ℚ), (85668246977/5000000000 : ℚ), (-4298082693/1953125000 : ℚ), 5⟩,
    ⟨(15852965673/125000000000 : ℚ), (84180940701/10000000000 : ℚ), (-221042185939/200000000000 : ℚ), 4⟩,
    ⟨(129135074053/1000000000000 : ℚ), (40632179467/10000000000 : ℚ), (-548499942899/1000000000000 : ℚ), 4⟩,
    ⟨(131703307091/1000000000000 : ℚ), (15899262053/10000000000 : ℚ), (-226249211203/1000000000000 : ℚ), 3⟩,
    ⟨(134429728741/1000000000000 : ℚ), (560667821/10000000000 : ℚ), (-22310717071/1000000000000 : ℚ), 3⟩,
    ⟨(2744191283/20000000000 : ℚ), (-1915403493/2000000000 : ℚ), (14411022507/125000000000 : ℚ), 3⟩,
    ⟨(139935985801/1000000000000 : ℚ), (-16593656817/10000000000 : ℚ), (21247031641/100000000000 : ℚ), 3⟩,
    ⟨(71252109419/500000000000 : ℚ), (-21602698581/10000000000 : ℚ), (5663636759/20000000000 : ℚ), 3⟩,
    ⟨(36203891877/250000000000 : ℚ), (-25232785033/10000000000 : ℚ), (335318420347/1000000000000 : ℚ), 3⟩,
    ⟨(18347650997/125000000000 : ℚ), (-27851124917/10000000000 : ℚ), (74697469609/200000000000 : ℚ), 3⟩,
    ⟨(148325601781/1000000000000 : ℚ), (-7418877411/2500000000 : ℚ), (50050553191/125000000000 : ℚ), 2⟩,
    ⟨(149389398737/1000000000000 : ℚ), (-30833922309/10000000000 : ℚ), (417647614747/1000000000000 : ℚ), 2⟩,
    ⟨(74965858861/500000000000 : ℚ), (-1962333263/625000000 : ℚ), (426079560187/1000000000000 : ℚ), 2⟩,
    ⟨(3/20 : ℚ), (-31467054027/10000000000 : ℚ), (427125149293/1000000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control70.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control70.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate70
