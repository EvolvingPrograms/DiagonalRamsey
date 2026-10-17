import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate908
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (496042282879/5691795149650 : ℚ), (125456417977/2500000000 : ℚ), (-2192137356279/500000000000 : ℚ)⟩,
  ⟨(496042282879/5691795149650 : ℚ), (79497829246/897557928725 : ℚ), (1452564373/312500000 : ℚ), (-207968224763/500000000000 : ℚ)⟩,
  ⟨(79497829246/897557928725 : ℚ), (88186909323/972095852900 : ℚ), (10579742787/10000000000 : ℚ), (-48972566271/500000000000 : ℚ)⟩,
  ⟨(88186909323/972095852900 : ℚ), (18360402053/196881111650 : ℚ), (429392129/5000000000 : ℚ), (-9758223219/1000000000000 : ℚ)⟩,
  ⟨(18360402053/196881111650 : ℚ), (4652739891/48569917775 : ℚ), (-123153519/400000000 : ℚ), (26962580887/1000000000000 : ℚ)⟩,
  ⟨(4652739891/48569917775 : ℚ), (249942738/2551938245 : ℚ), (-2510817343/5000000000 : ℚ), (45573540451/1000000000000 : ℚ)⟩,
  ⟨(249942738/2551938245 : ℚ), (4522090959/45506422700 : ℚ), (-5900791/9765625 : ℚ), (55571249971/1000000000000 : ℚ)⟩,
  ⟨(4522090959/45506422700 : ℚ), (273962213/2741359050 : ℚ), (-6497474211/10000000000 : ℚ), (6009334093/100000000000 : ℚ)⟩,
  ⟨(273962213/2741359050 : ℚ), (1/10 : ℚ), (-409518837/625000000 : ℚ), (15160316339/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (90481163/500000000 : ℚ), (-2/25 : ℚ), (18779562859/250000000000 : ℚ)⟩,
  ⟨(90481163/500000000 : ℚ), (1502525789/8000000000 : ℚ), (-547924426/6853397625 : ℚ), (1029504765137960111/13706795250000000000 : ℚ)⟩,
  ⟨(1502525789/8000000000 : ℚ), (1911709/7812500 : ℚ), (-4522090959/56883028375 : ℚ), (34140888024259152761/455064227000000000000 : ℚ)⟩,
  ⟨(1911709/7812500 : ℚ), (1489182657/4000000000 : ℚ), (-999770952/12759691225 : ℚ), (38148587794300084339/510387649000000000000 : ℚ)⟩,
  ⟨(1489182657/4000000000 : ℚ), (196846481/320000000 : ℚ), (-18610959564/242849588875 : ℚ), (143970360922502419757/1942796711000000000000 : ℚ)⟩,
  ⟨(196846481/320000000 : ℚ), (4429392129/4000000000 : ℚ), (-36720804106/492202779125 : ℚ), (286877484653623335321/3937622233000000000000 : ℚ)⟩,
  ⟨(4429392129/4000000000 : ℚ), (18579742787/8000000000 : ℚ), (-88186909323/1215119816125 : ℚ), (686369520843641952483/9720958529000000000000 : ℚ)⟩,
  ⟨(18579742787/8000000000 : ℚ), (1702564373/250000000 : ℚ), (-317991316984/4487789643625 : ℚ), (47834793326767600633/718046342980000000000 : ℚ)⟩,
  ⟨(1702564373/250000000 : ℚ), (32/1 : ℚ), (-992084565758/14229487874125 : ℚ), (670230945371331244017/11383590299300000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (84468234433/100000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(21741862921/250000000000 : ℚ), (125456417977/2500000000 : ℚ), (-2192137356279/500000000000 : ℚ), 12⟩,
    ⟨(87949871979/1000000000000 : ℚ), (1452564373/312500000 : ℚ), (-207968224763/500000000000 : ℚ), 9⟩,
    ⟨(5610321749/62500000000 : ℚ), (10579742787/10000000000 : ℚ), (-48972566271/500000000000 : ℚ), 8⟩,
    ⟨(92136920383/1000000000000 : ℚ), (429392129/5000000000 : ℚ), (-9758223219/1000000000000 : ℚ), 7⟩,
    ⟨(94704108329/1000000000000 : ℚ), (-123153519/400000000 : ℚ), (26962580887/1000000000000 : ℚ), 7⟩,
    ⟨(12134485091/125000000000 : ℚ), (-2510817343/5000000000 : ℚ), (45573540451/1000000000000 : ℚ), 6⟩,
    ⟨(49445578367/500000000000 : ℚ), (-5900791/9765625 : ℚ), (55571249971/1000000000000 : ℚ), 6⟩,
    ⟨(24968394257/250000000000 : ℚ), (-6497474211/10000000000 : ℚ), (6009334093/100000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-409518837/625000000 : ℚ), (15160316339/250000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control908.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control908.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate908
