import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate871
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(86853866599/125000000000 : ℚ), (2042525547143/5000000000 : ℚ), (-284321691316457/1000000000000 : ℚ), 12⟩,
    ⟨(696846849849/1000000000000 : ℚ), (438962348907/10000000000 : ℚ), (-30844534942651/1000000000000 : ℚ), 9⟩,
    ⟨(3504006067/5000000000 : ℚ), (148575381099/10000000000 : ℚ), (-2114063886791/200000000000 : ℚ), 8⟩,
    ⟨(706542059471/1000000000000 : ℚ), (3459808051/500000000 : ℚ), (-4989555282401/1000000000000 : ℚ), 7⟩,
    ⟨(89231096321/125000000000 : ℚ), (18454916271/5000000000 : ℚ), (-2698478208651/1000000000000 : ℚ), 6⟩,
    ⟨(361220276941/500000000000 : ℚ), (1301849929/625000000 : ℚ), (-772273590137/500000000000 : ℚ), 6⟩,
    ⟨(731987231997/1000000000000 : ℚ), (11778536901/10000000000 : ℚ), (-2771179393/3125000000 : ℚ), 5⟩,
    ⟨(742121931427/1000000000000 : ℚ), (6256260179/10000000000 : ℚ), (-95997640921/200000000000 : ℚ), 5⟩,
    ⟨(752455181357/1000000000000 : ℚ), (1347252823/5000000000 : ℚ), (-213949612937/1000000000000 : ℚ), 5⟩,
    ⟨(762589880787/1000000000000 : ℚ), (306810693/10000000000 : ℚ), (-33145875317/1000000000000 : ℚ), 4⟩,
    ⟨(386068279451/500000000000 : ℚ), (-333755799/2500000000 : ℚ), (46402680881/500000000000 : ℚ), 4⟩,
    ⟨(156145668443/200000000000 : ℚ), (-1239217911/5000000000 : ℚ), (90782464003/500000000000 : ℚ), 4⟩,
    ⟨(788035053313/1000000000000 : ℚ), (-1636068239/5000000000 : ℚ), (243812789449/1000000000000 : ℚ), 4⟩,
    ⟨(99221987423/125000000000 : ℚ), (-237941753/625000000 : ℚ), (286117511137/1000000000000 : ℚ), 4⟩,
    ⟨(159546052587/200000000000 : ℚ), (-4138215961/10000000000 : ℚ), (312467789267/1000000000000 : ℚ), 4⟩,
    ⟨(99968272499/125000000000 : ℚ), (-2148377943/5000000000 : ℚ), (325130868663/1000000000000 : ℚ), 4⟩,
    ⟨(4/5 : ℚ), (-1079064489/2500000000 : ℚ), (163345393293/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (204400248491/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control871.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control871.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate871
