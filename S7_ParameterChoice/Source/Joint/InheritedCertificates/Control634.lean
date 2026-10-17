import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate634
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30031834309/250000000000 : ℚ), (2997104465927/5000000000 : ℚ), (-36098721390451/500000000000 : ℚ), 11⟩,
    ⟨(120699946769/1000000000000 : ℚ), (635351427861/10000000000 : ℚ), (-3883157949557/500000000000 : ℚ), 8⟩,
    ⟨(12182316077/100000000000 : ℚ), (209568376409/10000000000 : ℚ), (-2611012218023/1000000000000 : ℚ), 7⟩,
    ⟨(30863453689/250000000000 : ℚ), (93503875783/10000000000 : ℚ), (-1189664345907/1000000000000 : ℚ), 6⟩,
    ⟨(125529243609/1000000000000 : ℚ), (23184716593/5000000000 : ℚ), (-603661483261/1000000000000 : ℚ), 5⟩,
    ⟨(63984844881/500000000000 : ℚ), (5713197027/2500000000 : ℚ), (-305945501221/1000000000000 : ℚ), 5⟩,
    ⟨(65340684119/500000000000 : ℚ), (1904128521/2000000000 : ℚ), (-13370608973/100000000000 : ℚ), 4⟩,
    ⟨(133560070753/1000000000000 : ℚ), (634370013/5000000000 : ℚ), (-1238826049/50000000000 : ℚ), 4⟩,
    ⟨(8530948149/62500000000 : ℚ), (-2087251189/5000000000 : ℚ), (48670571697/1000000000000 : ℚ), 4⟩,
    ⟨(1393738729/10000000000 : ℚ), (-3967813763/5000000000 : ℚ), (25130348157/250000000000 : ℚ), 4⟩,
    ⟨(1136684411/8000000000 : ℚ), (-10617504083/10000000000 : ℚ), (138248492913/1000000000000 : ℚ), 4⟩,
    ⟨(18065749691/125000000000 : ℚ), (-24531457/19531250 : ℚ), (33215927019/200000000000 : ℚ), 3⟩,
    ⟨(146601426381/1000000000000 : ℚ), (-1396147763/1000000000 : ℚ), (186475114653/1000000000000 : ℚ), 3⟩,
    ⟨(148232080367/1000000000000 : ℚ), (-14938492113/10000000000 : ℚ), (200876631383/1000000000000 : ℚ), 3⟩,
    ⟨(4667352949/31250000000 : ℚ), (-3889831253/2500000000 : ℚ), (6566058383/31250000000 : ℚ), 3⟩,
    ⟨(149927903901/1000000000000 : ℚ), (-1586145853/1000000000 : ℚ), (107317499349/500000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-3974714297/2500000000 : ℚ), (21519584367/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (218407981097/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem certOK : JointInheritedControls.control634.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control634.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate634
