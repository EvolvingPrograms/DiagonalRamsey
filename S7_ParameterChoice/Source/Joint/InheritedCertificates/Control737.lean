import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate737
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8777397799951/198345158024900 : ℚ), (2182430469081/10000000000 : ℚ), (-604878677139/62500000000 : ℚ)⟩,
  ⟨(8777397799951/198345158024900 : ℚ), (175926333027/3919159756325 : ℚ), (1554522569/78125000 : ℚ), (-900661034273/1000000000000 : ℚ)⟩,
  ⟨(175926333027/3919159756325 : ℚ), (48881479968/1066132790125 : ℚ), (42212498579/10000000000 : ℚ), (-39391140433/200000000000 : ℚ)⟩,
  ⟨(48881479968/1066132790125 : ℚ), (20428509499/434791417950 : ℚ), (-216406513/5000000000 : ℚ), (-1429782293/1000000000000 : ℚ)⟩,
  ⟨(20428509499/434791417950 : ℚ), (8319748943/172896534640 : ℚ), (-1114029359/625000000 : ℚ), (80284255703/1000000000000 : ℚ)⟩,
  ⟨(8319748943/172896534640 : ℚ), (5606887567/114239674975 : ℚ), (-6617324119/2500000000 : ℚ), (60941500209/500000000000 : ℚ)⟩,
  ⟨(5606887567/114239674975 : ℚ), (2541090576/51108555575 : ℚ), (-1241555339/400000000 : ℚ), (72155275343/500000000000 : ℚ)⟩,
  ⟨(2541090576/51108555575 : ℚ), (1232357333/24661122600 : ℚ), (-16541612849/5000000000 : ℚ), (15447491299/100000000000 : ℚ)⟩,
  ⟨(1232357333/24661122600 : ℚ), (1/20 : ℚ), (-8332459231/2500000000 : ℚ), (155707270323/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1667540769/10000000000 : ℚ), (-1/5 : ℚ), (189058085703/1000000000000 : ℚ)⟩,
  ⟨(1667540769/10000000000 : ℚ), (3458387151/20000000000 : ℚ), (-1232357333/6165280650 : ℚ), (7769864201747147051/41101871000000000000 : ℚ)⟩,
  ⟨(3458387151/20000000000 : ℚ), (358444661/1600000000 : ℚ), (-10164362304/51108555575 : ℚ), (193052093500116444289/1022171111500000000000 : ℚ)⟩,
  ⟨(358444661/1600000000 : ℚ), (3382675881/10000000000 : ℚ), (-22427550268/114239674975 : ℚ), (430207753777559555007/2284793499500000000000 : ℚ)⟩,
  ⟨(3382675881/10000000000 : ℚ), (1385970641/2500000000 : ℚ), (-8319748943/43224133660 : ℚ), (404129425474780112409/2161206683000000000000 : ℚ)⟩,
  ⟨(1385970641/2500000000 : ℚ), (19783593487/20000000000 : ℚ), (-40857018998/217395708975 : ℚ), (320832833696694136973/1739165671800000000000 : ℚ)⟩,
  ⟨(19783593487/20000000000 : ℚ), (82212498579/40000000000 : ℚ), (-195525919872/1066132790125 : ℚ), (7675437118426469737063/42645311605000000000000 : ℚ)⟩,
  ⟨(82212498579/40000000000 : ℚ), (1867022569/312500000 : ℚ), (-703705332108/3919159756325 : ℚ), (26977339147811646076787/156766390253000000000000 : ℚ)⟩,
  ⟨(1867022569/312500000 : ℚ), (32/1 : ℚ), (-8777397799951/49586289506225 : ℚ), (62239044274250161034651/396690316049800000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (71528080367/125000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(44171291987/1000000000000 : ℚ), (2182430469081/10000000000 : ℚ), (-604878677139/62500000000 : ℚ), 10⟩,
    ⟨(8922134397/200000000000 : ℚ), (1554522569/78125000 : ℚ), (-900661034273/1000000000000 : ℚ), 7⟩,
    ⟨(22711270179/500000000000 : ℚ), (42212498579/10000000000 : ℚ), (-39391140433/200000000000 : ℚ), 6⟩,
    ⟨(23241648753/500000000000 : ℚ), (-216406513/5000000000 : ℚ), (-1429782293/1000000000000 : ℚ), 5⟩,
    ⟨(4763145277/100000000000 : ℚ), (-1114029359/625000000 : ℚ), (80284255703/1000000000000 : ℚ), 5⟩,
    ⟨(24346104959/500000000000 : ℚ), (-6617324119/2500000000 : ℚ), (60941500209/500000000000 : ℚ), 5⟩,
    ⟨(49504078291/1000000000000 : ℚ), (-1241555339/400000000 : ℚ), (72155275343/500000000000 : ℚ), 4⟩,
    ⟨(3121466143/62500000000 : ℚ), (-16541612849/5000000000 : ℚ), (15447491299/100000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-8332459231/2500000000 : ℚ), (155707270323/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control737.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control737.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate737
