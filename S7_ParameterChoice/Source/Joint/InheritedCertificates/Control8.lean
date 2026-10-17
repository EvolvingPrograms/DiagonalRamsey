import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate8
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19498364057/250000000000 : ℚ), (11470714516923/10000000000 : ℚ), (-350516305723/3906250000 : ℚ), 10⟩,
    ⟨(78415285271/1000000000000 : ℚ), (1213447017183/10000000000 : ℚ), (-9652404765917/1000000000000 : ℚ), 6⟩,
    ⟨(39621366351/500000000000 : ℚ), (99799294043/2500000000 : ℚ), (-405594883913/125000000000 : ℚ), 5⟩,
    ⟨(80444000183/1000000000000 : ℚ), (5547886477/312500000 : ℚ), (-1477799270457/1000000000000 : ℚ), 4⟩,
    ⟨(20493230919/250000000000 : ℚ), (43821513493/5000000000 : ℚ), (-2995682203/4000000000 : ℚ), 4⟩,
    ⟨(83770747509/1000000000000 : ℚ), (5356201657/1250000000 : ℚ), (-378209824621/1000000000000 : ℚ), 3⟩,
    ⟨(85768382321/1000000000000 : ℚ), (17472645651/10000000000 : ℚ), (-163341884171/1000000000000 : ℚ), 3⟩,
    ⟨(87889060127/1000000000000 : ℚ), (882923603/5000000000 : ℚ), (-27095109829/1000000000000 : ℚ), 3⟩,
    ⟨(45025642233/500000000000 : ℚ), (-8600446529/10000000000 : ℚ), (6506156273/100000000000 : ℚ), 2⟩,
    ⟨(92171962271/1000000000000 : ℚ), (-3153662559/2000000000 : ℚ), (65164906929/500000000000 : ℚ), 2⟩,
    ⟨(23542399271/250000000000 : ℚ), (-4176271033/2000000000 : ℚ), (177947548089/1000000000000 : ℚ), 2⟩,
    ⟨(95967420917/1000000000000 : ℚ), (-24583797483/10000000000 : ℚ), (26641949161/125000000000 : ℚ), 2⟩,
    ⟨(9749634441/100000000000 : ℚ), (-27251708899/10000000000 : ℚ), (1866702929/7812500000 : ℚ), 2⟩,
    ⟨(9869761189/100000000000 : ℚ), (-5821715259/2000000000 : ℚ), (128575704643/500000000000 : ℚ), 2⟩,
    ⟨(49762529661/500000000000 : ℚ), (-30286372739/10000000000 : ℚ), (268824183691/1000000000000 : ℚ), 2⟩,
    ⟨(19989377673/200000000000 : ℚ), (-30858773321/10000000000 : ℚ), (17158313341/62500000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-30929585429/10000000000 : ℚ), (55048189273/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (212499/1000000 : ℚ)
  x := (61922979223/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control8.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control8.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate8
