import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate886
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (205154230929/2428920576892 : ℚ), (669369039603/10000000000 : ℚ), (-567083130571/100000000000 : ℚ)⟩,
  ⟨(205154230929/2428920576892 : ℚ), (411093857567/4770147078700 : ℚ), (3106944769/500000000 : ℚ), (-108395106497/200000000000 : ℚ)⟩,
  ⟨(411093857567/4770147078700 : ℚ), (114122254657/1285504013800 : ℚ), (14437424593/10000000000 : ℚ), (-65440837459/500000000000 : ℚ)⟩,
  ⟨(114122254657/1285504013800 : ℚ), (5951786893/64802492175 : ℚ), (316476891/2000000000 : ℚ), (-16759420261/1000000000000 : ℚ)⟩,
  ⟨(5951786893/64802492175 : ℚ), (24188313417/254843286400 : ℚ), (-3601814919/10000000000 : ℚ), (30854874883/1000000000000 : ℚ)⟩,
  ⟨(24188313417/254843286400 : ℚ), (2602954887/26693835260 : ℚ), (-6150247783/10000000000 : ℚ), (550431883/10000000000 : ℚ)⟩,
  ⟨(2602954887/26693835260 : ℚ), (1472456123/14837147575 : ℚ), (-3742469773/5000000000 : ℚ), (13611592547/200000000000 : ℚ)⟩,
  ⟨(1472456123/14837147575 : ℚ), (35683087/357104455 : ℚ), (-8078425449/10000000000 : ℚ), (73947787227/1000000000000 : ℚ)⟩,
  ⟨(35683087/357104455 : ℚ), (1/10 : ℚ), (-407492317/500000000 : ℚ), (74661448967/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (92507683/500000000 : ℚ), (-1/10 : ℚ), (93162985567/1000000000000 : ℚ)⟩,
  ⟨(92507683/500000000 : ℚ), (1921574551/10000000000 : ℚ), (-35683087/357104455 : ℚ), (6652771088837137997/71420891000000000000 : ℚ)⟩,
  ⟨(1921574551/10000000000 : ℚ), (1257530227/5000000000 : ℚ), (-1472456123/14837147575 : ℚ), (55204706130951664073/593485903000000000000 : ℚ)⟩,
  ⟨(1257530227/5000000000 : ℚ), (3849752217/10000000000 : ℚ), (-2602954887/26693835260 : ℚ), (24713869353632829059/266938352600000000000 : ℚ)⟩,
  ⟨(3849752217/10000000000 : ℚ), (6398185081/10000000000 : ℚ), (-24188313417/254843286400 : ℚ), (233392883205646886689/2548432864000000000000 : ℚ)⟩,
  ⟨(6398185081/10000000000 : ℚ), (2316476891/2000000000 : ℚ), (-5951786893/64802492175 : ℚ), (232301447942984234953/2592099687000000000000 : ℚ)⟩,
  ⟨(2316476891/2000000000 : ℚ), (24437424593/10000000000 : ℚ), (-114122254657/1285504013800 : ℚ), (1106364808164022720917/12855040138000000000000 : ℚ)⟩,
  ⟨(24437424593/10000000000 : ℚ), (3606944769/500000000 : ℚ), (-411093857567/4770147078700 : ℚ), (760565350456887464953/9540294157400000000000 : ℚ)⟩,
  ⟨(3606944769/500000000 : ℚ), (32/1 : ℚ), (-205154230929/2428920576892 : ℚ), (8177221857516701723269/121446028844600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (779150949953/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(84242055207/1000000000000 : ℚ), (669369039603/10000000000 : ℚ), (-567083130571/100000000000 : ℚ), 11⟩,
    ⟨(85429921493/1000000000000 : ℚ), (3106944769/500000000 : ℚ), (-108395106497/200000000000 : ℚ), 8⟩,
    ⟨(87624812191/1000000000000 : ℚ), (14437424593/10000000000 : ℚ), (-65440837459/500000000000 : ℚ), 7⟩,
    ⟨(9049257509/100000000000 : ℚ), (316476891/2000000000 : ℚ), (-16759420261/1000000000000 : ℚ), 6⟩,
    ⟨(93596619283/1000000000000 : ℚ), (-3601814919/10000000000 : ℚ), (30854874883/1000000000000 : ℚ), 6⟩,
    ⟨(96464382181/1000000000000 : ℚ), (-6150247783/10000000000 : ℚ), (550431883/10000000000 : ℚ), 5⟩,
    ⟨(1233240911/12500000000 : ℚ), (-3742469773/5000000000 : ℚ), (13611592547/200000000000 : ℚ), 5⟩,
    ⟨(49923569583/500000000000 : ℚ), (-8078425449/10000000000 : ℚ), (73947787227/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-407492317/500000000 : ℚ), (74661448967/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control886.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control886.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate886
