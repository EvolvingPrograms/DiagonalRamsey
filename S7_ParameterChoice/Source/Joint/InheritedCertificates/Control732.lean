import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate732
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(31992337823/200000000000 : ℚ), (4723491301521/10000000000 : ℚ), (-15151902017369/200000000000 : ℚ), 12⟩,
    ⟨(160729157307/1000000000000 : ℚ), (501005224699/10000000000 : ℚ), (-254879292097/31250000000 : ℚ), 8⟩,
    ⟨(81117300159/500000000000 : ℚ), (165536897519/10000000000 : ℚ), (-85849289463/31250000000 : ℚ), 7⟩,
    ⟨(164420164817/1000000000000 : ℚ), (74110415033/10000000000 : ℚ), (-251219378403/200000000000 : ℚ), 6⟩,
    ⟨(41800465197/250000000000 : ℚ), (36998262287/10000000000 : ℚ), (-64156125931/100000000000 : ℚ), 5⟩,
    ⟨(170472789213/1000000000000 : ℚ), (4624234509/2500000000 : ℚ), (-13182639917/40000000000 : ℚ), 5⟩,
    ⟨(174107250147/1000000000000 : ℚ), (2005321943/2500000000 : ℚ), (-149270261121/1000000000000 : ℚ), 5⟩,
    ⟨(11122848331/62500000000 : ℚ), (1548686429/10000000000 : ℚ), (-17714680281/500000000000 : ℚ), 4⟩,
    ⟨(181899485463/1000000000000 : ℚ), (-677909647/2500000000 : ℚ), (20586585821/500000000000 : ℚ), 4⟩,
    ⟨(46439452153/250000000000 : ℚ), (-2824125817/5000000000 : ℚ), (95126913439/1000000000000 : ℚ), 4⟩,
    ⟨(94696134773/500000000000 : ℚ), (-7737019031/10000000000 : ℚ), (134291299139/1000000000000 : ℚ), 4⟩,
    ⟨(192663197971/1000000000000 : ℚ), (-369860957/400000000 : ℚ), (163119166501/1000000000000 : ℚ), 4⟩,
    ⟨(97722446971/500000000000 : ℚ), (-2066669039/2000000000 : ℚ), (184205788863/1000000000000 : ℚ), 4⟩,
    ⟨(197630458441/1000000000000 : ℚ), (-43320033/39062500 : ℚ), (99537059853/500000000000 : ℚ), 4⟩,
    ⟨(49783975363/250000000000 : ℚ), (-11570198709/10000000000 : ℚ), (208601490887/1000000000000 : ℚ), 4⟩,
    ⟨(49975842411/250000000000 : ℚ), (-2950947331/2500000000 : ℚ), (213262036347/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-1479087183/1250000000 : ℚ), (106920029693/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (482504620193/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control732.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control732.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate732
