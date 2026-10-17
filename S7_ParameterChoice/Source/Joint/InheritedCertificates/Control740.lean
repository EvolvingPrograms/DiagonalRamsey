import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate740
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(91295306143/500000000000 : ℚ), (639659002717/2000000000 : ℚ), (-29314286441981/500000000000 : ℚ), 11⟩,
    ⟨(36776547749/200000000000 : ℚ), (13534769883/400000000 : ℚ), (-3170445456297/500000000000 : ℚ), 8⟩,
    ⟨(186417335969/1000000000000 : ℚ), (22381188241/2000000000 : ℚ), (-2157311605091/1000000000000 : ℚ), 7⟩,
    ⟨(190097000807/1000000000000 : ℚ), (50512414153/10000000000 : ℚ), (-501996173919/500000000000 : ℚ), 6⟩,
    ⟨(194780325803/1000000000000 : ℚ), (12880756301/5000000000 : ℚ), (-264311162699/500000000000 : ℚ), 5⟩,
    ⟨(50071833351/250000000000 : ℚ), (6760212903/5000000000 : ℚ), (-143621521401/500000000000 : ℚ), 5⟩,
    ⟨(206406392397/1000000000000 : ℚ), (6648824983/10000000000 : ℚ), (-73861622189/500000000000 : ℚ), 4⟩,
    ⟨(8516094031/40000000000 : ℚ), (2440495691/10000000000 : ℚ), (-29802866661/500000000000 : ℚ), 4⟩,
    ⟨(109762786251/500000000000 : ℚ), (-152624853/5000000000 : ℚ), (-299400561/1000000000000 : ℚ), 4⟩,
    ⟨(176579321/781250000 : ℚ), (-2181899117/10000000000 : ℚ), (41474684311/1000000000000 : ℚ), 4⟩,
    ⟨(14508786867/62500000000 : ℚ), (-1753045633/5000000000 : ℚ), (71792167773/1000000000000 : ℚ), 4⟩,
    ⟨(237647597473/1000000000000 : ℚ), (-4456026171/10000000000 : ℚ), (47048471723/500000000000 : ℚ), 3⟩,
    ⟨(24233092247/100000000000 : ℚ), (-205419913/400000000 : ℚ), (55199800181/500000000000 : ℚ), 3⟩,
    ⟨(61502646827/250000000000 : ℚ), (-700739087/1250000000 : ℚ), (4875369607/40000000000 : ℚ), 3⟩,
    ⟨(248545184531/1000000000000 : ℚ), (-2951639539/5000000000 : ℚ), (6461851619/50000000000 : ℚ), 3⟩,
    ⟨(249837310991/1000000000000 : ℚ), (-188985327/312500000 : ℚ), (13283160009/100000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6065364357/10000000000 : ℚ), (133277302253/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (531489840613/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control740.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control740.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate740
