import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate195
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291328699981/1000000000000 : ℚ), (9773757712497/10000000000 : ℚ), (-71401481397249/250000000000 : ℚ), 11⟩,
    ⟨(292573522367/1000000000000 : ℚ), (530761476727/5000000000 : ℚ), (-3159401401129/100000000000 : ℚ), 8⟩,
    ⟨(295051178819/1000000000000 : ℚ), (92232633/2500000 : ℚ), (-2254610930033/200000000000 : ℚ), 6⟩,
    ⟨(298737808151/1000000000000 : ℚ), (90048700543/5000000000 : ℚ), (-226976359483/40000000000 : ℚ), 5⟩,
    ⟨(151798953053/500000000000 : ℚ), (1293655179/125000000 : ℚ), (-842603738679/250000000000 : ℚ), 5⟩,
    ⟨(154792333643/500000000000 : ℚ), (13080273133/2000000000 : ℚ), (-1763279629/800000000 : ℚ), 4⟩,
    ⟨(316640435907/1000000000000 : ℚ), (21974539131/5000000000 : ℚ), (-766622242299/500000000000 : ℚ), 4⟩,
    ⟨(16234863053/50000000000 : ℚ), (15402823523/5000000000 : ℚ), (-278070190429/250000000000 : ℚ), 4⟩,
    ⟨(166838775557/500000000000 : ℚ), (4449450231/2000000000 : ℚ), (-830869178623/1000000000000 : ℚ), 3⟩,
    ⟨(42936852621/125000000000 : ℚ), (3282161171/2000000000 : ℚ), (-316733146137/500000000000 : ℚ), 3⟩,
    ⟨(177027262473/500000000000 : ℚ), (12282972553/10000000000 : ℚ), (-97928277387/200000000000 : ℚ), 3⟩,
    ⟨(182627483663/500000000000 : ℚ), (9275922139/10000000000 : ℚ), (-47698889533/125000000000 : ℚ), 3⟩,
    ⟨(15079531269/40000000000 : ℚ), (3515390747/5000000000 : ℚ), (-4661556153/15625000000 : ℚ), 3⟩,
    ⟨(389141469911/1000000000000 : ℚ), (5319185869/10000000000 : ℚ), (-58206212107/250000000000 : ℚ), 2⟩,
    ⟨(10039937251/25000000000 : ℚ), (3990760651/10000000000 : ℚ), (-90169713063/500000000000 : ℚ), 2⟩,
    ⟨(207118191913/500000000000 : ℚ), (588721529/2000000000 : ℚ), (-137650770263/1000000000000 : ℚ), 2⟩,
    ⟨(53367053977/125000000000 : ℚ), (2106978627/10000000000 : ℚ), (-51241298581/500000000000 : ℚ), 2⟩,
    ⟨(219787662801/500000000000 : ℚ), (1430719001/10000000000 : ℚ), (-36598664509/500000000000 : ℚ), 2⟩,
    ⟨(452031345731/1000000000000 : ℚ), (878628027/10000000000 : ℚ), (-6074396451/125000000000 : ℚ), 2⟩,
    ⟨(464184533917/1000000000000 : ℚ), (6627591/156250000 : ℚ), (-13891655779/500000000000 : ℚ), 2⟩,
    ⟨(118979462079/250000000000 : ℚ), (2975641/625000000 : ℚ), (-10088595321/1000000000000 : ℚ), 2⟩,
    ⟨(60889786337/125000000000 : ℚ), (-5317319/200000000 : ℚ), (2501037009/500000000000 : ℚ), 2⟩,
    ⟨(248838997337/500000000000 : ℚ), (-8242499/156250000 : ℚ), (715329289/40000000000 : ℚ), 2⟩,
    ⟨(31718454033/62500000000 : ℚ), (-745966263/10000000000 : ℚ), (28860253553/1000000000000 : ℚ), 2⟩,
    ⟨(258237777291/500000000000 : ℚ), (-185567121/2000000000 : ℚ), (4771313281/125000000000 : ℚ), 2⟩,
    ⟨(104906475947/200000000000 : ℚ), (-215649637/2000000000 : ℚ), (22999390733/500000000000 : ℚ), 2⟩,
    ⟨(132897037089/250000000000 : ℚ), (-15014467/125000000 : ℚ), (1640270901/31250000000 : ℚ), 2⟩,
    ⟨(107514981907/200000000000 : ℚ), (-649800323/5000000000 : ℚ), (57751009657/1000000000000 : ℚ), 2⟩,
    ⟨(542435007491/1000000000000 : ℚ), (-687941763/5000000000 : ℚ), (30935098033/500000000000 : ℚ), 2⟩,
    ⟨(546121636823/1000000000000 : ℚ), (-1431713403/10000000000 : ℚ), (32454421441/500000000000 : ℚ), 2⟩,
    ⟨(21943971731/40000000000 : ℚ), (-1468295587/10000000000 : ℚ), (66911191799/1000000000000 : ℚ), 2⟩,
    ⟨(549844115661/1000000000000 : ℚ), (-29727987/200000000 : ℚ), (16976371969/250000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-297730727/2000000000 : ℚ), (13605891193/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (300621930033/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control195.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control195.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate195
