import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate813
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155420720351/1000000000000 : ℚ), (3403763201263/10000000000 : ℚ), (-26531812341927/500000000000 : ℚ), 12⟩,
    ⟨(78137615701/500000000000 : ℚ), (360795071901/10000000000 : ℚ), (-5721642264977/1000000000000 : ℚ), 9⟩,
    ⟨(1263611321/8000000000 : ℚ), (1863807363/156250000 : ℚ), (-241723713211/125000000000 : ℚ), 7⟩,
    ⟨(80192428359/500000000000 : ℚ), (13392695107/2500000000 : ℚ), (-444792188307/500000000000 : ℚ), 6⟩,
    ⟨(81741020193/500000000000 : ℚ), (13476371441/5000000000 : ℚ), (-91841891843/200000000000 : ℚ), 6⟩,
    ⟨(167123943097/1000000000000 : ℚ), (109724541/80000000 : ℚ), (-24069564953/100000000000 : ℚ), 5⟩,
    ⟨(171170608573/1000000000000 : ℚ), (6240344629/10000000000 : ℚ), (-14300665841/125000000000 : ℚ), 5⟩,
    ⟨(175466525729/1000000000000 : ℚ), (1634016817/10000000000 : ℚ), (-1732457097/50000000000 : ℚ), 5⟩,
    ⟨(179846604877/1000000000000 : ℚ), (-1390032271/10000000000 : ℚ), (19031669219/1000000000000 : ℚ), 4⟩,
    ⟨(184142522033/1000000000000 : ℚ), (-867362797/2500000000 : ℚ), (5685244127/100000000000 : ℚ), 4⟩,
    ⟨(188189187509/1000000000000 : ℚ), (-4945296187/10000000000 : ℚ), (42157601013/500000000000 : ℚ), 4⟩,
    ⟨(9591554511/50000000000 : ℚ), (-3004918277/5000000000 : ℚ), (3266759951/31250000000 : ℚ), 4⟩,
    ⟨(6091508559/31250000000 : ℚ), (-6775068223/10000000000 : ℚ), (119331506001/1000000000000 : ℚ), 4⟩,
    ⟨(197361715481/1000000000000 : ℚ), (-7307098713/10000000000 : ℚ), (16220740607/125000000000 : ℚ), 4⟩,
    ⟨(199037899203/1000000000000 : ℚ), (-7644508397/10000000000 : ℚ), (136453075143/1000000000000 : ℚ), 4⟩,
    ⟨(39978482051/200000000000 : ℚ), (-488032551/625000000 : ℚ), (6986225749/50000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7828813819/10000000000 : ℚ), (35032566453/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (14622027751/25000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control813.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control813.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate813
