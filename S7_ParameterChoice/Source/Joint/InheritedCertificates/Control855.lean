import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate855
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (16320965550631/177642779421700 : ℚ), (487992544953/2500000000 : ℚ), (-718348794091/40000000000 : ℚ)⟩,
  ⟨(16320965550631/177642779421700 : ℚ), (1307838560141/14097012005500 : ℚ), (35108477119/2000000000 : ℚ), (-409438575411/250000000000 : ℚ)⟩,
  ⟨(1307838560141/14097012005500 : ℚ), (181361475943/1926664917200 : ℚ), (1728613277/500000000 : ℚ), (-329915741503/1000000000000 : ℚ)⟩,
  ⟨(181361475943/1926664917200 : ℚ), (151106483899/1578343296400 : ℚ), (-990258201/2500000000 : ℚ), (32807210383/1000000000000 : ℚ)⟩,
  ⟨(151106483899/1578343296400 : ℚ), (38350322027/393973544550 : ℚ), (-2468058221/1250000000 : ℚ), (91956847141/500000000000 : ℚ)⟩,
  ⟨(38350322027/393973544550 : ℚ), (41324871761/418692145500 : ℚ), (-27623936659/10000000000 : ℚ), (8144198073/31250000000 : ℚ)⟩,
  ⟨(41324871761/418692145500 : ℚ), (18753806921/188284401200 : ℚ), (-15905429057/5000000000 : ℚ), (301939210097/1000000000000 : ℚ)⟩,
  ⟨(18753806921/188284401200 : ℚ), (1138095743/11385518150 : ℚ), (-16846851063/5000000000 : ℚ), (160346508509/500000000000 : ℚ)⟩,
  ⟨(1138095743/11385518150 : ℚ), (1/10 : ℚ), (-33921412489/10000000000 : ℚ), (40371151063/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6078587511/40000000000 : ℚ), (-2/5 : ℚ), (191877541807/500000000000 : ℚ)⟩,
  ⟨(6078587511/40000000000 : ℚ), (3153148937/20000000000 : ℚ), (-2276191486/5692759075 : ℚ), (43689732422856329149/113855181500000000000 : ℚ)⟩,
  ⟨(3153148937/20000000000 : ℚ), (4094570943/20000000000 : ℚ), (-18753806921/47071100300 : ℚ), (72208201949786418217/188284401200000000000 : ℚ)⟩,
  ⟨(4094570943/20000000000 : ℚ), (12376063341/40000000000 : ℚ), (-41324871761/104673036375 : ℚ), (178067888348051734709/465213495000000000000 : ℚ)⟩,
  ⟨(12376063341/40000000000 : ℚ), (2531941779/5000000000 : ℚ), (-76700644054/196986772275 : ℚ), (100091837393451213393/262649029700000000000 : ℚ)⟩,
  ⟨(2531941779/5000000000 : ℚ), (9009741799/10000000000 : ℚ), (-151106483899/394585824100 : ℚ), (372720751384680527651/986464560250000000000 : ℚ)⟩,
  ⟨(9009741799/10000000000 : ℚ), (3728613277/2000000000 : ℚ), (-181361475943/481666229300 : ℚ), (448010330930573557419/1204165573250000000000 : ℚ)⟩,
  ⟨(3728613277/2000000000 : ℚ), (43108477119/8000000000 : ℚ), (-1307838560141/3524253001375 : ℚ), (2040808908102946227939/5638804802200000000000 : ℚ)⟩,
  ⟨(43108477119/8000000000 : ℚ), (32/1 : ℚ), (-16320965550631/44410694855425 : ℚ), (608507588457964320767697/1776427794217000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (531786063291/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(91759383943/1000000000000 : ℚ), (487992544953/2500000000 : ℚ), (-718348794091/40000000000 : ℚ), 11⟩,
    ⟨(92380578529/1000000000000 : ℚ), (35108477119/2000000000 : ℚ), (-409438575411/250000000000 : ℚ), 8⟩,
    ⟨(11691049557/125000000000 : ℚ), (1728613277/500000000 : ℚ), (-329915741503/1000000000000 : ℚ), 7⟩,
    ⟨(95028092851/1000000000000 : ℚ), (-990258201/2500000000 : ℚ), (32807210383/1000000000000 : ℚ), 6⟩,
    ⟨(96651352531/1000000000000 : ℚ), (-2468058221/1250000000 : ℚ), (91956847141/500000000000 : ℚ), 6⟩,
    ⟨(3926041957/40000000000 : ℚ), (-27623936659/10000000000 : ℚ), (8144198073/31250000000 : ℚ), 6⟩,
    ⟨(24824716713/250000000000 : ℚ), (-15905429057/5000000000 : ℚ), (301939210097/1000000000000 : ℚ), 5⟩,
    ⟨(49960030719/500000000000 : ℚ), (-16846851063/5000000000 : ℚ), (160346508509/500000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-33921412489/10000000000 : ℚ), (40371151063/125000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control855.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control855.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate855
