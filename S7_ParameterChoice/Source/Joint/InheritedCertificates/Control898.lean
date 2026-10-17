import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate898
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1950193162179/40881002663950 : ℚ), (1795685331533/10000000000 : ℚ), (-8574062322623/1000000000000 : ℚ)⟩,
  ⟨(1950193162179/40881002663950 : ℚ), (156241600633/3257865731925 : ℚ), (6417808999/400000000 : ℚ), (-773289673907/1000000000000 : ℚ)⟩,
  ⟨(156241600633/3257865731925 : ℚ), (173190602859/3582601552000 : ℚ), (15065297849/5000000000 : ℚ), (-1186586171/8000000000 : ℚ)⟩,
  ⟨(173190602859/3582601552000 : ℚ), (18008106424/369051100025 : ℚ), (-2847709911/5000000000 : ℚ), (6216832871/250000000000 : ℚ)⟩,
  ⟨(18008106424/369051100025 : ℚ), (36494124727/741009512300 : ℚ), (-20457463823/10000000000 : ℚ), (4844987859/50000000000 : ℚ)⟩,
  ⟨(36494124727/741009512300 : ℚ), (4910098051/98928600050 : ℚ), (-13933779473/5000000000 : ℚ), (133393881907/1000000000000 : ℚ)⟩,
  ⟨(4910098051/98928600050 : ℚ), (1485456583/29775808800 : ℚ), (-7956175737/2500000000 : ℚ), (153034274111/1000000000000 : ℚ)⟩,
  ⟨(1485456583/29775808800 : ℚ), (270502242/5411269775 : ℚ), (-8402812869/2500000000 : ℚ), (161947013609/1000000000000 : ℚ)⟩,
  ⟨(270502242/5411269775 : ℚ), (1/20 : ℚ), (-33827702267/10000000000 : ℚ), (163029022577/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6172297733/40000000000 : ℚ), (-1/5 : ℚ), (96945255621/500000000000 : ℚ)⟩,
  ⟨(6172297733/40000000000 : ℚ), (1597187131/10000000000 : ℚ), (-1082008968/5411269775 : ℚ), (41966242393020577951/216450791000000000000 : ℚ)⟩,
  ⟨(1597187131/10000000000 : ℚ), (2043824263/10000000000 : ℚ), (-1485456583/7443952200 : ℚ), (14427810420408288271/74439522000000000000 : ℚ)⟩,
  ⟨(2043824263/10000000000 : ℚ), (6066220527/20000000000 : ℚ), (-9820196102/49464300025 : ℚ), (76614470038425251483/395714400200000000000 : ℚ)⟩,
  ⟨(6066220527/20000000000 : ℚ), (19542536177/40000000000 : ℚ), (-36494124727/185252378075 : ℚ), (1431224170824749981819/7410095123000000000000 : ℚ)⟩,
  ⟨(19542536177/40000000000 : ℚ), (17152290089/20000000000 : ℚ), (-72032425696/369051100025 : ℚ), (709533691064630020343/3690511000250000000000 : ℚ)⟩,
  ⟨(17152290089/20000000000 : ℚ), (35065297849/20000000000 : ℚ), (-173190602859/895650388000 : ℚ), (3416064162769745080291/17913007760000000000000 : ℚ)⟩,
  ⟨(35065297849/20000000000 : ℚ), (8017808999/1600000000 : ℚ), (-624966402532/3257865731925 : ℚ), (24500573978420224461461/130314629277000000000000 : ℚ)⟩,
  ⟨(8017808999/1600000000 : ℚ), (32/1 : ℚ), (-3900386324358/20440501331975 : ℚ), (149556669895410756349997/817620053279000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (740019053707/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(23835695779/500000000000 : ℚ), (1795685331533/10000000000 : ℚ), (-8574062322623/1000000000000 : ℚ), 13⟩,
    ⟨(11961731713/250000000000 : ℚ), (6417808999/400000000 : ℚ), (-773289673907/1000000000000 : ℚ), 10⟩,
    ⟨(48171273781/1000000000000 : ℚ), (15065297849/5000000000 : ℚ), (-1186586171/8000000000 : ℚ), 9⟩,
    ⟨(48595053467/1000000000000 : ℚ), (-2847709911/5000000000 : ℚ), (6216832871/250000000000 : ℚ), 8⟩,
    ⟨(24526874647/500000000000 : ℚ), (-20457463823/10000000000 : ℚ), (4844987859/50000000000 : ℚ), 8⟩,
    ⟨(49477528979/1000000000000 : ℚ), (-13933779473/5000000000 : ℚ), (133393881907/1000000000000 : ℚ), 7⟩,
    ⟨(49801875909/1000000000000 : ℚ), (-7956175737/2500000000 : ℚ), (153034274111/1000000000000 : ℚ), 7⟩,
    ⟨(24988705601/500000000000 : ℚ), (-8402812869/2500000000 : ℚ), (161947013609/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-33827702267/10000000000 : ℚ), (163029022577/1000000000000 : ℚ), 7⟩]
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
theorem certOK : JointInheritedControls.control898.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control898.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate898
