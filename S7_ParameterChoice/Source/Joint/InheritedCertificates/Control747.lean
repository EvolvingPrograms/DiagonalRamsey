import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate747
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8769698889917/197301294615400 : ℚ), (135684494387/625000000 : ℚ), (-4834513149293/500000000000 : ℚ)⟩,
  ⟨(8769698889917/197301294615400 : ℚ), (703044071239/15601587377500 : ℚ), (98969482019/5000000000 : ℚ), (-899327408669/1000000000000 : ℚ)⟩,
  ⟨(703044071239/15601587377500 : ℚ), (16274518444/353868598475 : ℚ), (41923090263/10000000000 : ℚ), (-19628333743/100000000000 : ℚ)⟩,
  ⟨(16274518444/353868598475 : ℚ), (81577014487/1732473628900 : ℚ), (-270570777/5000000000 : ℚ), (-494558051/500000000000 : ℚ)⟩,
  ⟨(81577014487/1732473628900 : ℚ), (41503332269/861356986100 : ℚ), (-17865877843/10000000000 : ℚ), (16117579677/200000000000 : ℚ)⟩,
  ⟨(41503332269/861356986100 : ℚ), (22364940857/455393128000 : ℚ), (-3309930963/1250000000 : ℚ), (61045615327/500000000000 : ℚ)⟩,
  ⟨(22364940857/455393128000 : ℚ), (2533361146/50943330575 : ℚ), (-3879172373/1250000000 : ℚ), (144456171511/1000000000000 : ℚ)⟩,
  ⟨(2533361146/50943330575 : ℚ), (1228524307/24583945300 : ℚ), (-33071112207/10000000000 : ℚ), (30917923219/200000000000 : ℚ)⟩,
  ⟨(1228524307/24583945300 : ℚ), (1/20 : ℚ), (-1665847583/500000000 : ℚ), (77909070201/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (334152417/2000000000 : ℚ), (-1/5 : ℚ), (94616691051/500000000000 : ℚ)⟩,
  ⟨(334152417/2000000000 : ℚ), (6928887793/40000000000 : ℚ), (-1228524307/6145986325 : ℚ), (23258266867225440243/122919726500000000000 : ℚ)⟩,
  ⟨(6928887793/40000000000 : ℚ), (1120827627/5000000000 : ℚ), (-10133444584/50943330575 : ℚ), (385225897126716587297/2037733223000000000000 : ℚ)⟩,
  ⟨(1120827627/5000000000 : ℚ), (1690069037/5000000000 : ℚ), (-22364940857/113848282000 : ℚ), (107297678342870126849/569241410000000000000 : ℚ)⟩,
  ⟨(1690069037/5000000000 : ℚ), (22134122157/40000000000 : ℚ), (-41503332269/215339246525 : ℚ), (806394659527486279359/4306784930500000000000 : ℚ)⟩,
  ⟨(22134122157/40000000000 : ℚ), (19729429223/20000000000 : ℚ), (-81577014487/433118407225 : ℚ), (114349988980838238633/618740581750000000000 : ℚ)⟩,
  ⟨(19729429223/20000000000 : ℚ), (81923090263/40000000000 : ℚ), (-65098073776/353868598475 : ℚ), (182478213791764064737/1011053138500000000000 : ℚ)⟩,
  ⟨(81923090263/40000000000 : ℚ), (118969482019/20000000000 : ℚ), (-703044071239/3900396844375 : ℚ), (26972226510364986347607/156015873775000000000000 : ℚ)⟩,
  ⟨(118969482019/20000000000 : ℚ), (32/1 : ℚ), (-8769698889917/49325323653850 : ℚ), (15613422432849176699791/98650647307700000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (72828497853/125000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(44369173413/1000000000000 : ℚ), (135684494387/625000000 : ℚ), (-4834513149293/500000000000 : ℚ), 10⟩,
    ⟨(44793636701/1000000000000 : ℚ), (98969482019/5000000000 : ℚ), (-899327408669/1000000000000 : ℚ), 7⟩,
    ⟨(4557794259/100000000000 : ℚ), (41923090263/10000000000 : ℚ), (-19628333743/100000000000 : ℚ), 6⟩,
    ⟨(23301343809/500000000000 : ℚ), (-270570777/5000000000 : ℚ), (-494558051/500000000000 : ℚ), 5⟩,
    ⟨(47711863643/1000000000000 : ℚ), (-17865877843/10000000000 : ℚ), (16117579677/200000000000 : ℚ), 5⟩,
    ⟨(48736608671/1000000000000 : ℚ), (-3309930963/1250000000 : ℚ), (61045615327/500000000000 : ℚ), 5⟩,
    ⟨(77376429/1562500000 : ℚ), (-3879172373/1250000000 : ℚ), (144456171511/1000000000000 : ℚ), 5⟩,
    ⟨(6243172231/125000000000 : ℚ), (-33071112207/10000000000 : ℚ), (30917923219/200000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-1665847583/500000000 : ℚ), (77909070201/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control747.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control747.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate747
