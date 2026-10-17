import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate148
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1337505541/5000000000 : ℚ), (2407298907187/2500000000 : ℚ), (-258413388492909/1000000000000 : ℚ), 11⟩,
    ⟨(33589528333/125000000000 : ℚ), (20894636631/200000000 : ℚ), (-7146537768823/250000000000 : ℚ), 8⟩,
    ⟨(271134761339/1000000000000 : ℚ), (72513387383/2000000000 : ℚ), (-2549989855727/250000000000 : ℚ), 6⟩,
    ⟨(68683355103/250000000000 : ℚ), (35339470721/2000000000 : ℚ), (-641794117409/125000000000 : ℚ), 5⟩,
    ⟨(279477546829/1000000000000 : ℚ), (50680184603/5000000000 : ℚ), (-3049704388911/1000000000000 : ℚ), 5⟩,
    ⟨(14266072603/50000000000 : ℚ), (31969789819/5000000000 : ℚ), (-398881128573/200000000000 : ℚ), 4⟩,
    ⟨(292208856103/1000000000000 : ℚ), (42890216383/10000000000 : ℚ), (-138738230459/100000000000 : ℚ), 4⟩,
    ⟨(75018357373/250000000000 : ℚ), (3751307641/1250000000 : ℚ), (-503222048797/500000000000 : ℚ), 3⟩,
    ⟨(61767886417/200000000000 : ℚ), (5408760719/2500000000 : ℚ), (-751755634559/1000000000000 : ℚ), 3⟩,
    ⟨(159211221243/500000000000 : ℚ), (7965491543/5000000000 : ℚ), (-17908145011/31250000000 : ℚ), 3⟩,
    ⟨(328730171067/1000000000000 : ℚ), (11901868583/10000000000 : ℚ), (-44282514957/100000000000 : ℚ), 3⟩,
    ⟨(67932669753/200000000000 : ℚ), (897007987/1000000000 : ℚ), (-344940911383/1000000000000 : ℚ), 3⟩,
    ⟨(10972396347/31250000000 : ℚ), (6783263621/10000000000 : ℚ), (-269477675099/1000000000000 : ℚ), 2⟩,
    ⟨(90744968053/250000000000 : ℚ), (5117417881/10000000000 : ℚ), (-210046997667/1000000000000 : ℚ), 2⟩,
    ⟨(375138667093/1000000000000 : ℚ), (1912601101/5000000000 : ℚ), (-162391251489/1000000000000 : ℚ), 2⟩,
    ⟨(387475971907/1000000000000 : ℚ), (2806896671/10000000000 : ℚ), (-123587678647/1000000000000 : ℚ), 2⟩,
    ⟨(199936485831/500000000000 : ℚ), (1993358289/10000000000 : ℚ), (-22894767193/250000000000 : ℚ), 2⟩,
    ⟨(16488411059/40000000000 : ℚ), (333910239/2500000000 : ℚ), (-64886351939/1000000000000 : ℚ), 2⟩,
    ⟨(106092267839/250000000000 : ℚ), (99808719/1250000000 : ℚ), (-42426735289/1000000000000 : ℚ), 2⟩,
    ⟨(87246452093/200000000000 : ℚ), (178012063/5000000000 : ℚ), (-23395286581/1000000000000 : ℚ), 2⟩,
    ⟨(447685594803/1000000000000 : ℚ), (-339151/312500000 : ℚ), (-89823319/12500000000 : ℚ), 2⟩,
    ⟨(229309386251/500000000000 : ℚ), (-316540367/10000000000 : ℚ), (6662862989/1000000000000 : ℚ), 2⟩,
    ⟨(234463250541/500000000000 : ℚ), (-285969103/5000000000 : ℚ), (3701005287/200000000000 : ℚ), 2⟩,
    ⟨(478509511483/1000000000000 : ℚ), (-6282997/80000000 : ℚ), (447096801/15625000000 : ℚ), 2⟩,
    ⟨(487275514077/1000000000000 : ℚ), (-963250617/10000000000 : ℚ), (37202568313/1000000000000 : ℚ), 2⟩,
    ⟨(99028017493/200000000000 : ℚ), (-277625593/2500000000 : ℚ), (8886994569/200000000000 : ℚ), 2⟩,
    ⟨(125506872877/250000000000 : ℚ), (-246187301/2000000000 : ℚ), (50439191563/1000000000000 : ℚ), 2⟩,
    ⟨(507871396739/1000000000000 : ℚ), (-663737327/5000000000 : ℚ), (27656819509/500000000000 : ℚ), 2⟩,
    ⟨(512615523157/1000000000000 : ℚ), (-28046647/200000000 : ℚ), (14783271059/250000000000 : ℚ), 2⟩,
    ⟨(51621418223/100000000000 : ℚ), (-72857459/500000000 : ℚ), (968013969/15625000000 : ℚ), 2⟩,
    ⟨(64829089613/125000000000 : ℚ), (-746540967/5000000000 : ℚ), (63812124561/1000000000000 : ℚ), 2⟩,
    ⟨(519847835369/1000000000000 : ℚ), (-755434317/5000000000 : ℚ), (32367839941/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-756541821/5000000000 : ℚ), (64850843447/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (292688917921/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control148.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control148.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate148
