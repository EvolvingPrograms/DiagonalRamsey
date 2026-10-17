import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate15
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9554515731/40000000000 : ℚ), (1635550631899/2000000000 : ℚ), (-196308158260333/1000000000000 : ℚ), 10⟩,
    ⟨(120300409593/500000000000 : ℚ), (878038148471/10000000000 : ℚ), (-21711845897209/1000000000000 : ℚ), 6⟩,
    ⟨(30507491729/125000000000 : ℚ), (300310755887/10000000000 : ℚ), (-3872377562529/500000000000 : ℚ), 5⟩,
    ⟨(249206924049/1000000000000 : ℚ), (14395283943/1000000000 : ℚ), (-974352481909/250000000000 : ℚ), 4⟩,
    ⟨(51198444301/200000000000 : ℚ), (634071629/78125000 : ℚ), (-144680246617/62500000000 : ℚ), 4⟩,
    ⟨(264350480079/1000000000000 : ℚ), (3145656831/625000000 : ℚ), (-151450838263/100000000000 : ℚ), 3⟩,
    ⟨(274201205169/1000000000000 : ℚ), (33222412109/10000000000 : ℚ), (-527394511571/500000000000 : ℚ), 3⟩,
    ⟨(28544952891/100000000000 : ℚ), (5728244947/2500000000 : ℚ), (-191718671407/250000000000 : ℚ), 2⟩,
    ⟨(59597424759/200000000000 : ℚ), (4079747917/2500000000 : ℚ), (-57487274823/100000000000 : ℚ), 2⟩,
    ⟨(31169324593/100000000000 : ℚ), (2976377343/2500000000 : ℚ), (-88112878659/200000000000 : ℚ), 2⟩,
    ⟨(81608974467/250000000000 : ℚ), (552680023/625000000 : ℚ), (-171501232041/500000000000 : ℚ), 2⟩,
    ⟨(34207309981/100000000000 : ℚ), (6653530819/10000000000 : ℚ), (-269929127489/1000000000000 : ℚ), 2⟩,
    ⟨(71690851391/200000000000 : ℚ), (5048588897/10000000000 : ℚ), (-213788109187/1000000000000 : ℚ), 2⟩,
    ⟨(375421609803/1000000000000 : ℚ), (3846207569/10000000000 : ℚ), (-169720536711/1000000000000 : ℚ), 1⟩,
    ⟨(95901307/244140625 : ℚ), (2928093253/10000000000 : ℚ), (-67245743229/500000000000 : ℚ), 1⟩,
    ⟨(102614302843/250000000000 : ℚ), (276893687/1250000000 : ℚ), (-13235484849/125000000000 : ℚ), 1⟩,
    ⟨(428188048097/1000000000000 : ℚ), (330646991/2000000000 : ℚ), (-41170349851/500000000000 : ℚ), 1⟩,
    ⟨(445833505997/1000000000000 : ℚ), (301132739/2500000000 : ℚ), (-7843205819/125000000000 : ℚ), 1⟩,
    ⟨(231611824833/500000000000 : ℚ), (84214699/1000000000 : ℚ), (-370273403/8000000000 : ℚ), 1⟩,
    ⟨(96038200503/200000000000 : ℚ), (273330097/5000000000 : ℚ), (-6470589183/200000000000 : ℚ), 1⟩,
    ⟨(496572159659/1000000000000 : ℚ), (60768909/2000000000 : ℚ), (-10249661879/500000000000 : ℚ), 1⟩,
    ⟨(256104680801/500000000000 : ℚ), (25787743/2500000000 : ℚ), (-5190037443/500000000000 : ℚ), 1⟩,
    ⟨(526952013539/1000000000000 : ℚ), (-63327769/10000000000 : ℚ), (-1732619693/1000000000000 : ℚ), 1⟩,
    ⟨(21626325427/40000000000 : ℚ), (-40314587/2000000000 : ℚ), (1129061947/200000000000 : ℚ), 1⟩,
    ⟨(553195730559/1000000000000 : ℚ), (-12645659/400000000 : ℚ), (5955136181/500000000000 : ℚ), 1⟩,
    ⟨(5644440543/10000000000 : ℚ), (-410521659/10000000000 : ℚ), (8591863811/500000000000 : ℚ), 1⟩,
    ⟨(574294779391/1000000000000 : ℚ), (-243693749/5000000000 : ℚ), (1077990727/50000000000 : ℚ), 1⟩,
    ⟨(145663259491/250000000000 : ℚ), (-137195477/2500000000 : ℚ), (25111087837/1000000000000 : ℚ), 1⟩,
    ⟨(589438335421/1000000000000 : ℚ), (-596248883/10000000000 : ℚ), (5578550769/200000000000 : ℚ), 1⟩,
    ⟨(594585325637/1000000000000 : ℚ), (-157732109/2500000000 : ℚ), (3743222101/125000000000 : ℚ), 1⟩,
    ⟨(598044440283/1000000000000 : ℚ), (-326811869/5000000000 : ℚ), (7824779389/250000000000 : ℚ), 1⟩,
    ⟨(119956473239/200000000000 : ℚ), (-664846789/10000000000 : ℚ), (6394255889/200000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-333121947/5000000000 : ℚ), (32055090491/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (150849743033/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control15.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control15.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate15
