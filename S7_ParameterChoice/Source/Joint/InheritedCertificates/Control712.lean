import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate712
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62418128613/250000000000 : ℚ), (2576143813681/2000000000 : ℚ), (-322048247450797/1000000000000 : ℚ), 13⟩,
    ⟨(250155327581/1000000000000 : ℚ), (352583861941/2500000000 : ℚ), (-35562358559983/1000000000000 : ℚ), 10⟩,
    ⟨(125558152043/500000000000 : ℚ), (247662087263/5000000000 : ℚ), (-12643350905879/1000000000000 : ℚ), 8⟩,
    ⟨(126273094619/500000000000 : ℚ), (244420227483/10000000000 : ℚ), (-6328757709629/1000000000000 : ℚ), 7⟩,
    ⟨(12721560623/50000000000 : ℚ), (28367246099/2000000000 : ℚ), (-14919866833/4000000000 : ℚ), 7⟩,
    ⟨(64188304987/250000000000 : ℚ), (90328536249/10000000000 : ℚ), (-2414258525231/1000000000000 : ℚ), 6⟩,
    ⟨(129744924751/500000000000 : ℚ), (60986688091/10000000000 : ℚ), (-414330352849/250000000000 : ℚ), 6⟩,
    ⟨(131307372941/500000000000 : ℚ), (42776356897/10000000000 : ℚ), (-591100832721/500000000000 : ℚ), 5⟩,
    ⟨(266097814629/1000000000000 : ℚ), (7687650269/2500000000 : ℚ), (-864462633883/1000000000000 : ℚ), 5⟩,
    ⟨(53981102377/200000000000 : ℚ), (22425715711/10000000000 : ℚ), (-40091692189/62500000000 : ℚ), 5⟩,
    ⟨(54800233489/200000000000 : ℚ), (16445079229/10000000000 : ℚ), (-478899065849/1000000000000 : ℚ), 4⟩,
    ⟨(69586334477/250000000000 : ℚ), (6008874647/5000000000 : ℚ), (-44585302621/125000000000 : ℚ), 4⟩,
    ⟨(35362023317/125000000000 : ℚ), (8657990021/10000000000 : ℚ), (-262439453099/1000000000000 : ℚ), 4⟩,
    ⟨(28760988617/100000000000 : ℚ), (3027303001/5000000000 : ℚ), (-37641050849/200000000000 : ℚ), 4⟩,
    ⟨(58488208261/200000000000 : ℚ), (2000557929/5000000000 : ℚ), (-128669345921/1000000000000 : ℚ), 4⟩,
    ⟨(74335781319/250000000000 : ℚ), (1178217081/5000000000 : ℚ), (-80184064427/1000000000000 : ℚ), 4⟩,
    ⟨(18891808021/62500000000 : ℚ), (255433921/2500000000 : ℚ), (-4018010267/100000000000 : ℚ), 4⟩,
    ⟨(76792753077/250000000000 : ℚ), (-18419911/2500000000 : ℚ), (-1702195909/250000000000 : ℚ), 4⟩,
    ⟨(312002167443/1000000000000 : ℚ), (-122663463/1250000000 : ℚ), (21284164897/1000000000000 : ℚ), 3⟩,
    ⟨(316715867077/1000000000000 : ℚ), (-869616159/5000000000 : ℚ), (1409557241/31250000000 : ℚ), 3⟩,
    ⟨(64253343141/200000000000 : ℚ), (-2375981001/10000000000 : ℚ), (65414396107/1000000000000 : ℚ), 3⟩,
    ⟨(325610886167/1000000000000 : ℚ), (-116525971/400000000 : ℚ), (82786244411/1000000000000 : ℚ), 3⟩,
    ⟨(329706541727/1000000000000 : ℚ), (-673444521/2000000000 : ℚ), (97662769309/1000000000000 : ℚ), 3⟩,
    ⟨(41689279873/125000000000 : ℚ), (-937715991/2500000000 : ℚ), (110383630333/1000000000000 : ℚ), 3⟩,
    ⟨(33699730773/100000000000 : ℚ), (-2036919147/5000000000 : ℚ), (121210809947/1000000000000 : ℚ), 3⟩,
    ⟨(34012220411/100000000000 : ℚ), (-1085921379/2500000000 : ℚ), (130346290619/1000000000000 : ℚ), 3⟩,
    ⟨(1339292319/3906250000 : ℚ), (-182648643/400000000 : ℚ), (137945220271/1000000000000 : ℚ), 3⟩,
    ⟨(345180841153/1000000000000 : ℚ), (-593234849/1250000000 : ℚ), (2882516379/20000000000 : ℚ), 3⟩,
    ⟨(555305383/1600000000 : ℚ), (-4886034751/10000000000 : ℚ), (18622108351/125000000000 : ℚ), 3⟩,
    ⟨(174247874763/500000000000 : ℚ), (-997832057/2000000000 : ℚ), (30512668627/200000000000 : ℚ), 3⟩,
    ⟨(349456726031/1000000000000 : ℚ), (-2528497363/5000000000 : ℚ), (154930594629/1000000000000 : ℚ), 3⟩,
    ⟨(349939539161/1000000000000 : ℚ), (-5090643513/10000000000 : ℚ), (15610728531/100000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5094837181/10000000000 : ℚ), (78127025503/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (229389976153/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control712.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control712.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate712
