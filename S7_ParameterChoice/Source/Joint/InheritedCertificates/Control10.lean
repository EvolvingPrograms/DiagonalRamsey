import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate10
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(78171382793/1000000000000 : ℚ), (11406924077713/10000000000 : ℚ), (-89433766701671/1000000000000 : ℚ), 10⟩,
    ⟨(39294900639/500000000000 : ℚ), (75420215231/625000000 : ℚ), (-9618677167327/1000000000000 : ℚ), 6⟩,
    ⟨(79410558659/1000000000000 : ℚ), (79387110473/2000000000 : ℚ), (-3232194017097/1000000000000 : ℚ), 5⟩,
    ⟨(20150528423/250000000000 : ℚ), (176454343703/10000000000 : ℚ), (-294210465519/200000000000 : ℚ), 4⟩,
    ⟨(16423735117/200000000000 : ℚ), (87027689651/10000000000 : ℚ), (-372278798683/500000000000 : ℚ), 4⟩,
    ⟨(41950981857/500000000000 : ℚ), (10613575847/2500000000 : ℚ), (-9376158977/25000000000 : ℚ), 3⟩,
    ⟨(21470861829/250000000000 : ℚ), (17195261627/10000000000 : ℚ), (-40215930787/250000000000 : ℚ), 3⟩,
    ⟨(87986979089/1000000000000 : ℚ), (1557026079/10000000000 : ℚ), (-12522001749/500000000000 : ℚ), 3⟩,
    ⟨(18026344297/200000000000 : ℚ), (-4383508977/5000000000 : ℚ), (13365954481/200000000000 : ℚ), 2⟩,
    ⟨(46117626629/500000000000 : ℚ), (-15907775879/10000000000 : ℚ), (13190285397/100000000000 : ℚ), 2⟩,
    ⟨(4710836843/50000000000 : ℚ), (-10501500919/5000000000 : ℚ), (35876598181/200000000000 : ℚ), 2⟩,
    ⟨(96000024989/1000000000000 : ℚ), (-6173411651/2500000000 : ℚ), (42894745681/200000000000 : ℚ), 2⟩,
    ⟨(48758293441/500000000000 : ℚ), (-27353827357/10000000000 : ℚ), (240208421239/1000000000000 : ℚ), 2⟩,
    ⟨(19741628383/200000000000 : ℚ), (-14602899887/5000000000 : ℚ), (129188355657/500000000000 : ℚ), 2⟩,
    ⟨(3110278103/31250000000 : ℚ), (-1898796249/625000000 : ℚ), (135011014163/500000000000 : ℚ), 2⟩,
    ⟨(99947317781/1000000000000 : ℚ), (-30951831359/10000000000 : ℚ), (34464740417/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7755621333/2500000000 : ℚ), (55284855367/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (224999/1000000 : ℚ)
  x := (16462260501/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control10.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control10.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate10
