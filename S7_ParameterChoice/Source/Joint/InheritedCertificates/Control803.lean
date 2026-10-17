import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate803
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (17214608643077/191309534458400 : ℚ), (526048260057/2500000000 : ℚ), (-9483763144997/500000000000 : ℚ)⟩,
  ⟨(17214608643077/191309534458400 : ℚ), (1379657011119/15145902918700 : ℚ), (47774423911/2500000000 : ℚ), (-1752917646917/1000000000000 : ℚ)⟩,
  ⟨(1379657011119/15145902918700 : ℚ), (382837666651/4126945509900 : ℚ), (39638666457/10000000000 : ℚ), (-186630317899/500000000000 : ℚ)⟩,
  ⟨(382837666651/4126945509900 : ℚ), (10640067321/112303182340 : ℚ), (-815394321/5000000000 : ℚ), (9577030853/1000000000000 : ℚ)⟩,
  ⟨(10640067321/112303182340 : ℚ), (8102540241/83770712290 : ℚ), (-18476265993/10000000000 : ℚ), (42294510167/250000000000 : ℚ)⟩,
  ⟨(8102540241/83770712290 : ℚ), (43607904957/443185060000 : ℚ), (-13426668611/5000000000 : ℚ), (125101721539/500000000000 : ℚ)⟩,
  ⟨(43607904957/443185060000 : ℚ), (19755157269/198522133300 : ℚ), (-15642593911/5000000000 : ℚ), (58762269607/200000000000 : ℚ)⟩,
  ⟨(19755157269/198522133300 : ℚ), (1197672571/11982643850 : ℚ), (-6654081831/2000000000 : ℚ), (39195813163/125000000000 : ℚ)⟩,
  ⟨(1197672571/11982643850 : ℚ), (1/10 : ℚ), (-2094378877/625000000 : ℚ), (157980925223/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (405621123/2500000000 : ℚ), (-2/5 : ℚ), (190430615063/500000000000 : ℚ)⟩,
  ⟨(405621123/2500000000 : ℚ), (1345918169/8000000000 : ℚ), (-2395345142/5991321925 : ℚ), (45633403932578892299/119826438500000000000 : ℚ)⟩,
  ⟨(1345918169/8000000000 : ℚ), (4357406089/20000000000 : ℚ), (-19755157269/49630533325 : ℚ), (755443041142756052537/1985221333000000000000 : ℚ)⟩,
  ⟨(4357406089/20000000000 : ℚ), (6573331389/20000000000 : ℚ), (-43607904957/110796265000 : ℚ), (841081350126026868673/2215925300000000000000 : ℚ)⟩,
  ⟨(6573331389/20000000000 : ℚ), (21523734007/40000000000 : ℚ), (-16205080482/41885356145 : ℚ), (1580592853170735748921/4188535614500000000000 : ℚ)⟩,
  ⟨(21523734007/40000000000 : ℚ), (19184605679/20000000000 : ℚ), (-10640067321/28075795585 : ℚ), (2095031511622002396391/5615159117000000000000 : ℚ)⟩,
  ⟨(19184605679/20000000000 : ℚ), (79638666457/40000000000 : ℚ), (-382837666651/1031736377475 : ℚ), (3016883638461077638301/8253891019800000000000 : ℚ)⟩,
  ⟨(79638666457/40000000000 : ℚ), (57774423911/10000000000 : ℚ), (-1379657011119/3786475729675 : ℚ), (53340351001880122299157/151459029187000000000000 : ℚ)⟩,
  ⟨(57774423911/10000000000 : ℚ), (32/1 : ℚ), (-17214608643077/47827383614600 : ℚ), (31237889953616390670453/95654767229200000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (15261220943/31250000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(89840288729/1000000000000 : ℚ), (526048260057/2500000000 : ℚ), (-9483763144997/500000000000 : ℚ), 11⟩,
    ⟨(90606148659/1000000000000 : ℚ), (47774423911/2500000000 : ℚ), (-1752917646917/1000000000000 : ℚ), 8⟩,
    ⟨(92021273287/1000000000000 : ℚ), (39638666457/10000000000 : ℚ), (-186630317899/500000000000 : ℚ), 6⟩,
    ⟨(93870222717/1000000000000 : ℚ), (-815394321/5000000000 : ℚ), (9577030853/1000000000000 : ℚ), 6⟩,
    ⟨(47935755579/500000000000 : ℚ), (-18476265993/10000000000 : ℚ), (42294510167/250000000000 : ℚ), 5⟩,
    ⟨(24430115147/250000000000 : ℚ), (-13426668611/5000000000 : ℚ), (125101721539/500000000000 : ℚ), 5⟩,
    ⟨(1548993519/15625000000 : ℚ), (-15642593911/5000000000 : ℚ), (58762269607/200000000000 : ℚ), 5⟩,
    ⟨(49950722573/500000000000 : ℚ), (-6654081831/2000000000 : ℚ), (39195813163/125000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-2094378877/625000000 : ℚ), (157980925223/500000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control803.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control803.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate803
