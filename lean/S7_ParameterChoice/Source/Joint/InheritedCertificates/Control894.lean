import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate894
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1857605801947/22295718430800 : ℚ), (491698026779/10000000000 : ℚ), (-2055152983837/500000000000 : ℚ)⟩,
  ⟨(1857605801947/22295718430800 : ℚ), (297787824029/3496782255400 : ℚ), (45783658163/10000000000 : ℚ), (-19754718189/50000000000 : ℚ)⟩,
  ⟨(297787824029/3496782255400 : ℚ), (41335071337/469997083400 : ℚ), (10815835609/10000000000 : ℚ), (-97306539751/1000000000000 : ℚ)⟩,
  ⟨(41335071337/469997083400 : ℚ), (3449331191/37803955050 : ℚ), (1415893941/10000000000 : ℚ), (-14636397077/1000000000000 : ℚ)⟩,
  ⟨(3449331191/37803955050 : ℚ), (350447969/3706929504 : ℚ), (-591125391/2500000000 : ℚ), (19856914833/1000000000000 : ℚ)⟩,
  ⟨(350447969/3706929504 : ℚ), (3142108561/32283884800 : ℚ), (-1054491579/2500000000 : ℚ), (37379313283/1000000000000 : ℚ)⟩,
  ⟨(3142108561/32283884800 : ℚ), (852928601/8599364300 : ℚ), (-259324143/500000000 : ℚ), (23402819483/500000000000 : ℚ)⟩,
  ⟨(852928601/8599364300 : ℚ), (103331161/1034162400 : ℚ), (-224658043/400000000 : ℚ), (51070281971/1000000000000 : ℚ)⟩,
  ⟨(103331161/1034162400 : ℚ), (1/10 : ℚ), (-1133631839/2000000000 : ℚ), (3224183611/62500000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (266368161/1400000000 : ℚ), (-7/100 : ℚ), (32452672913/500000000000 : ℚ)⟩,
  ⟨(266368161/1400000000 : ℚ), (55341957/280000000 : ℚ), (-723318127/10341624000 : ℚ), (223704456812870943/3447208000000000000 : ℚ)⟩,
  ⟨(55341957/280000000 : ℚ), (90675857/350000000 : ℚ), (-5970500207/85993643000 : ℚ), (2785894022369407139/42996821500000000000 : ℚ)⟩,
  ⟨(90675857/350000000 : ℚ), (695508421/1750000000 : ℚ), (-21994759927/322838848000 : ℚ), (5202236573700396677/80709712000000000000 : ℚ)⟩,
  ⟨(695508421/1750000000 : ℚ), (1158874609/1750000000 : ℚ), (-2453135783/37069295040 : ℚ), (14753642792046911327/231683094000000000000 : ℚ)⟩,
  ⟨(1158874609/1750000000 : ℚ), (1202270563/1000000000 : ℚ), (-24145318337/378039550500 : ℚ), (9398427399564247937/151215820200000000000 : ℚ)⟩,
  ⟨(1202270563/1000000000 : ℚ), (17815835609/7000000000 : ℚ), (-289345499359/4699970834000 : ℚ), (21467764387624478223/361536218000000000000 : ℚ)⟩,
  ⟨(17815835609/7000000000 : ℚ), (52783658163/7000000000 : ℚ), (-297787824029/4995403222000 : ℚ), (1902741103905768704607/34967822554000000000000 : ℚ)⟩,
  ⟨(52783658163/7000000000 : ℚ), (32/1 : ℚ), (-13003240613629/222957184308000 : ℚ), (3320700922408822759707/74319061436000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (207289823061/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(83079392451/1000000000000 : ℚ), (491698026779/10000000000 : ℚ), (-2055152983837/500000000000 : ℚ), 11⟩,
    ⟨(84354902647/1000000000000 : ℚ), (45783658163/10000000000 : ℚ), (-19754718189/50000000000 : ℚ), 8⟩,
    ⟨(86711738173/1000000000000 : ℚ), (10815835609/10000000000 : ℚ), (-97306539751/1000000000000 : ℚ), 7⟩,
    ⟨(89791092187/1000000000000 : ℚ), (1415893941/10000000000 : ℚ), (-14636397077/1000000000000 : ℚ), 6⟩,
    ⟨(46562080477/500000000000 : ℚ), (-591125391/2500000000 : ℚ), (19856914833/1000000000000 : ℚ), 6⟩,
    ⟨(96203514967/1000000000000 : ℚ), (-1054491579/2500000000 : ℚ), (37379313283/1000000000000 : ℚ), 6⟩,
    ⟨(49280175247/500000000000 : ℚ), (-259324143/500000000 : ℚ), (23402819483/500000000000 : ℚ), 6⟩,
    ⟨(9983586069/100000000000 : ℚ), (-224658043/400000000 : ℚ), (51070281971/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1133631839/2000000000 : ℚ), (3224183611/62500000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control894.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control894.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate894
