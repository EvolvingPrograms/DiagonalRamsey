import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate17
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39134291113/1000000000000 : ℚ), (693855930289/625000000 : ℚ), (-43573581394441/1000000000000 : ℚ), 10⟩,
    ⟨(39342568779/1000000000000 : ℚ), (586954704311/5000000000 : ℚ), (-468376261351/100000000000 : ℚ), 7⟩,
    ⟨(39751120117/1000000000000 : ℚ), (24105778073/625000000 : ℚ), (-785936377037/500000000000 : ℚ), 5⟩,
    ⟨(40344244729/1000000000000 : ℚ), (85522085601/5000000000 : ℚ), (-89204483773/125000000000 : ℚ), 4⟩,
    ⟨(41099149169/1000000000000 : ℚ), (83949748383/10000000000 : ℚ), (-89874466899/250000000000 : ℚ), 4⟩,
    ⟨(41986822881/1000000000000 : ℚ), (10127482993/2500000000 : ℚ), (-35855043681/200000000000 : ℚ), 3⟩,
    ⟨(42973153063/1000000000000 : ℚ), (15868586647/10000000000 : ℚ), (-18679776093/250000000000 : ℚ), 3⟩,
    ⟨(110050589/2500000000 : ℚ), (118422079/2000000000 : ℚ), (-8335279873/1000000000000 : ℚ), 3⟩,
    ⟨(2817989481/62500000000 : ℚ), (-9509958759/10000000000 : ℚ), (36638853683/1000000000000 : ℚ), 3⟩,
    ⟨(46134914233/1000000000000 : ℚ), (-1031905089/625000000 : ℚ), (34275182747/500000000000 : ℚ), 2⟩,
    ⟨(9424248883/200000000000 : ℚ), (-21515709371/10000000000 : ℚ), (45939392569/500000000000 : ℚ), 2⟩,
    ⟨(3000557383/62500000000 : ℚ), (-25148380513/10000000000 : ℚ), (5457628867/50000000000 : ℚ), 2⟩,
    ⟨(48763822567/1000000000000 : ℚ), (-13885782647/5000000000 : ℚ), (121842905321/1000000000000 : ℚ), 2⟩,
    ⟨(49356947179/1000000000000 : ℚ), (-29600612103/10000000000 : ℚ), (130815382683/1000000000000 : ℚ), 2⟩,
    ⟨(49765498517/1000000000000 : ℚ), (-3845296353/1250000000 : ℚ), (68286475269/500000000000 : ℚ), 2⟩,
    ⟨(49973776183/1000000000000 : ℚ), (-31327468337/10000000000 : ℚ), (139391041121/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-313974003/100000000 : ℚ), (139740609183/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (96762464407/500000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control17.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control17.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate17
