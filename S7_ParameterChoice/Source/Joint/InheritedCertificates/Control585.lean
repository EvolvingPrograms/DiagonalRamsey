import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate585
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(20681389121/100000000000 : ℚ), (14700619017779/10000000000 : ℚ), (-12180273074411/40000000000 : ℚ), 12⟩,
    ⟨(103631168691/500000000000 : ℚ), (1608162810693/10000000000 : ℚ), (-8407145386119/250000000000 : ℚ), 9⟩,
    ⟨(6504840967/31250000000 : ℚ), (564115103323/10000000000 : ℚ), (-11958129665713/1000000000000 : ℚ), 8⟩,
    ⟨(8379320637/40000000000 : ℚ), (277988659301/10000000000 : ℚ), (-299372753673/50000000000 : ℚ), 7⟩,
    ⟨(211233861947/1000000000000 : ℚ), (80545682831/5000000000 : ℚ), (-882528487453/250000000000 : ℚ), 6⟩,
    ⟨(13336911713/62500000000 : ℚ), (6403126081/625000000 : ℚ), (-1142960561537/500000000000 : ℚ), 6⟩,
    ⟨(10796621093/50000000000 : ℚ), (69078400833/10000000000 : ℚ), (-392506413539/250000000000 : ℚ), 5⟩,
    ⟨(4376697721/20000000000 : ℚ), (12097373773/2500000000 : ℚ), (-11205629833/10000000000 : ℚ), 5⟩,
    ⟨(11103501383/50000000000 : ℚ), (8685469769/2500000000 : ℚ), (-819876865817/1000000000000 : ℚ), 4⟩,
    ⟨(56401672627/250000000000 : ℚ), (25304184387/10000000000 : ℚ), (-304372031181/500000000000 : ℚ), 4⟩,
    ⟨(229410814597/1000000000000 : ℚ), (4632644131/2500000000 : ℚ), (-454720164139/1000000000000 : ℚ), 4⟩,
    ⟨(116722882067/500000000000 : ℚ), (13520288489/10000000000 : ℚ), (-338825191013/1000000000000 : ℚ), 4⟩,
    ⟨(59418170087/250000000000 : ℚ), (9720506977/10000000000 : ℚ), (-31169839433/125000000000 : ℚ), 4⟩,
    ⟨(9682034229/40000000000 : ℚ), (105896051/156250000 : ℚ), (-8939656219/50000000000 : ℚ), 3⟩,
    ⟨(246538126043/1000000000000 : ℚ), (111405699/250000000 : ℚ), (-122111020603/1000000000000 : ℚ), 3⟩,
    ⟨(62772819109/250000000000 : ℚ), (3246303/12500000 : ℚ), (-15173513817/200000000000 : ℚ), 3⟩,
    ⟨(255666457577/1000000000000 : ℚ), (1087784651/10000000000 : ℚ), (-18818901817/500000000000 : ℚ), 3⟩,
    ⟨(26021960797/100000000000 : ℚ), (-151561143/10000000000 : ℚ), (-2839150857/500000000000 : ℚ), 3⟩,
    ⟨(264706878289/1000000000000 : ℚ), (-1179186569/10000000000 : ℚ), (21286810543/1000000000000 : ℚ), 3⟩,
    ⟨(134542526833/500000000000 : ℚ), (-1019028841/5000000000 : ℚ), (22102578051/500000000000 : ℚ), 3⟩,
    ⟨(273311969879/1000000000000 : ℚ), (-1380153147/5000000000 : ℚ), (63789122701/1000000000000 : ℚ), 3⟩,
    ⟨(34668364927/125000000000 : ℚ), (-3370217423/10000000000 : ℚ), (80579411573/1000000000000 : ℚ), 3⟩,
    ⟨(56230208701/200000000000 : ℚ), (-1943150997/5000000000 : ℚ), (9498936539/100000000000 : ℚ), 3⟩,
    ⟨(284687706353/1000000000000 : ℚ), (-432276027/1000000000 : ℚ), (53668240579/500000000000 : ℚ), 3⟩,
    ⟨(287922847963/1000000000000 : ℚ), (-938106243/2000000000 : ℚ), (117865203089/1000000000000 : ℚ), 3⟩,
    ⟨(290825312153/1000000000000 : ℚ), (-1249513767/2500000000 : ℚ), (12676366471/100000000000 : ℚ), 3⟩,
    ⟨(146683573303/500000000000 : ℚ), (-5251833557/10000000000 : ℚ), (134176147711/1000000000000 : ℚ), 3⟩,
    ⟨(147761936033/500000000000 : ℚ), (-68210557/125000000 : ℚ), (35053110517/250000000000 : ℚ), 3⟩,
    ⟨(297274718089/1000000000000 : ℚ), (-5616849817/10000000000 : ℚ), (144954905733/1000000000000 : ℚ), 3⟩,
    ⟨(29860282307/100000000000 : ℚ), (-5734622149/10000000000 : ℚ), (74231883371/500000000000 : ℚ), 3⟩,
    ⟨(37436924579/125000000000 : ℚ), (-5812110249/10000000000 : ℚ), (150781031747/1000000000000 : ℚ), 3⟩,
    ⟨(74985960701/250000000000 : ℚ), (-5850553277/10000000000 : ℚ), (151933243521/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2927672357/5000000000 : ℚ), (76038486589/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (201861457639/500000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control585.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control585.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate585
