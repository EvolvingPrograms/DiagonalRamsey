import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate891
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (25188894552/294856283173 : ℚ), (81244113559/1250000000 : ℚ), (-43499947147/7812500000 : ℚ)⟩,
  ⟨(25188894552/294856283173 : ℚ), (201881201879/2319441965550 : ℚ), (30120171063/5000000000 : ℚ), (-8284598819/15625000000 : ℚ)⟩,
  ⟨(201881201879/2319441965550 : ℚ), (112054146121/1252373548900 : ℚ), (2770300563/2000000000 : ℚ), (-63225960329/500000000000 : ℚ)⟩,
  ⟨(112054146121/1252373548900 : ℚ), (3337579671/36139890050 : ℚ), (663883663/5000000000 : ℚ), (-14397774537/1000000000000 : ℚ)⟩,
  ⟨(3337579671/36139890050 : ℚ), (23723761401/249119336200 : ℚ), (-3731817281/10000000000 : ℚ), (32328340857/1000000000000 : ℚ)⟩,
  ⟨(23723761401/249119336200 : ℚ), (12761496511/130664431100 : ℚ), (-6223010643/10000000000 : ℚ), (28026051129/500000000000 : ℚ)⟩,
  ⟨(12761496511/130664431100 : ℚ), (721947831/7271222075 : ℚ), (-3764827477/5000000000 : ℚ), (68813598769/1000000000000 : ℚ)⟩,
  ⟨(721947831/7271222075 : ℚ), (699889853/7003931200 : ℚ), (-101391909/125000000 : ℚ), (74589181417/1000000000000 : ℚ)⟩,
  ⟨(699889853/7003931200 : ℚ), (1/10 : ℚ), (-255668501/312500000 : ℚ), (7528907127/100000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (56831499/312500000 : ℚ), (-1/10 : ℚ), (1869503019/20000000000 : ℚ)⟩,
  ⟨(56831499/312500000 : ℚ), (23608091/125000000 : ℚ), (-699889853/7003931200 : ℚ), (102281562754029921/1094364250000000000 : ℚ)⟩,
  ⟨(23608091/125000000 : ℚ), (1235172523/5000000000 : ℚ), (-721947831/7271222075 : ℚ), (2088323025253769687/22372991000000000000 : ℚ)⟩,
  ⟨(1235172523/5000000000 : ℚ), (3776989357/10000000000 : ℚ), (-12761496511/130664431100 : ℚ), (24288039407289117533/261328862200000000000 : ℚ)⟩,
  ⟨(3776989357/10000000000 : ℚ), (6268182719/10000000000 : ℚ), (-23723761401/249119336200 : ℚ), (229241019390859220553/2491193362000000000000 : ℚ)⟩,
  ⟨(6268182719/10000000000 : ℚ), (5663883663/5000000000 : ℚ), (-3337579671/36139890050 : ℚ), (13041594423102773271/144559560200000000000 : ℚ)⟩,
  ⟨(5663883663/5000000000 : ℚ), (4770300563/2000000000 : ℚ), (-112054146121/1252373548900 : ℚ), (1089009375240645998853/12523735489000000000000 : ℚ)⟩,
  ⟨(4770300563/2000000000 : ℚ), (35120171063/5000000000 : ℚ), (-201881201879/2319441965550 : ℚ), (941095570463455048033/11597209827750000000000 : ℚ)⟩,
  ⟨(35120171063/5000000000 : ℚ), (32/1 : ℚ), (-25188894552/294856283173 : ℚ), (160864313503412233619/2303564712289062500000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (791045004883/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(85220301917/1000000000000 : ℚ), (81244113559/1250000000 : ℚ), (-43499947147/7812500000 : ℚ), 11⟩,
    ⟨(17266885191/200000000000 : ℚ), (30120171063/5000000000 : ℚ), (-8284598819/15625000000 : ℚ), 8⟩,
    ⟨(11049132343/125000000000 : ℚ), (2770300563/2000000000 : ℚ), (-63225960329/500000000000 : ℚ), 7⟩,
    ⟨(18216558421/200000000000 : ℚ), (663883663/5000000000 : ℚ), (-14397774537/1000000000000 : ℚ), 6⟩,
    ⟨(23498534629/250000000000 : ℚ), (-3731817281/10000000000 : ℚ), (32328340857/1000000000000 : ℚ), 6⟩,
    ⟨(96683871877/1000000000000 : ℚ), (-6223010643/10000000000 : ℚ), (28026051129/500000000000 : ℚ), 6⟩,
    ⟨(49371252333/500000000000 : ℚ), (-3764827477/5000000000 : ℚ), (68813598769/1000000000000 : ℚ), 6⟩,
    ⟨(99856628703/1000000000000 : ℚ), (-101391909/125000000 : ℚ), (74589181417/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-255668501/312500000 : ℚ), (7528907127/100000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control891.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control891.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate891
