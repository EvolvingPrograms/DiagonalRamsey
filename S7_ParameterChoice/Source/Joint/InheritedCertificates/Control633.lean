import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate633
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23440647607/100000000000 : ℚ), (5326268591671/10000000000 : ℚ), (-62612999002537/500000000000 : ℚ), 11⟩,
    ⟨(7364493607/31250000000 : ℚ), (56526226289/1000000000 : ℚ), (-6757265087863/500000000000 : ℚ), 8⟩,
    ⟨(47626023211/200000000000 : ℚ), (187333500589/10000000000 : ℚ), (-4576738799673/1000000000000 : ℚ), 6⟩,
    ⟨(60427664661/250000000000 : ℚ), (84485653477/10000000000 : ℚ), (-2113203305709/1000000000000 : ℚ), 5⟩,
    ⟨(246267824947/1000000000000 : ℚ), (42824749707/10000000000 : ℚ), (-1098242529021/1000000000000 : ℚ), 5⟩,
    ⟨(251626485619/1000000000000 : ℚ), (1382078413/625000000 : ℚ), (-583328430021/1000000000000 : ℚ), 4⟩,
    ⟨(4024698599/15625000000 : ℚ), (2085398531/2000000000 : ℚ), (-143070047423/500000000000 : ℚ), 4⟩,
    ⟨(13195084079/50000000000 : ℚ), (647353331/2000000000 : ℚ), (-19769162031/200000000000 : ℚ), 4⟩,
    ⟨(67586621993/250000000000 : ℚ), (-1472732199/10000000000 : ℚ), (26856102541/1000000000000 : ℚ), 4⟩,
    ⟨(17291716201/62500000000 : ℚ), (-1175304597/2500000000 : ℚ), (23020628173/200000000000 : ℚ), 3⟩,
    ⟨(282621683933/1000000000000 : ℚ), (-6984249951/10000000000 : ℚ), (35783628339/200000000000 : ℚ), 3⟩,
    ⟨(57596068921/200000000000 : ℚ), (-215612909/250000000 : ℚ), (4514013851/20000000000 : ℚ), 3⟩,
    ⟨(73134377727/250000000000 : ℚ), (-4899503821/5000000000 : ℚ), (64946193543/250000000000 : ℚ), 3⟩,
    ⟨(296118053497/1000000000000 : ℚ), (-10612742773/10000000000 : ℚ), (283732723833/1000000000000 : ℚ), 3⟩,
    ⟨(18661523383/62500000000 : ℚ), (-556370119/500000000 : ℚ), (74758871359/250000000000 : ℚ), 3⟩,
    ⟨(149920846741/500000000000 : ℚ), (-2844285403/2500000000 : ℚ), (153253962059/500000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-11408020817/10000000000 : ℚ), (307434055677/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (41528730399/125000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control633.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control633.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate633
