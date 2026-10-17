import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate676
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(218025763351/500000000000 : ℚ), (7435256921569/5000000000 : ℚ), (-129858999653873/200000000000 : ℚ), 13⟩,
    ⟨(218420253829/500000000000 : ℚ), (1630009105271/10000000000 : ℚ), (-17937119261829/250000000000 : ℚ), 9⟩,
    ⟨(438410871253/1000000000000 : ℚ), (286803606423/5000000000 : ℚ), (-5108975910203/200000000000 : ℚ), 8⟩,
    ⟨(440747494027/1000000000000 : ℚ), (56771199939/2000000000 : ℚ), (-3203869045697/250000000000 : ℚ), 7⟩,
    ⟨(17753114921/40000000000 : ℚ), (82676164803/5000000000 : ℚ), (-7577219375653/1000000000000 : ℚ), 6⟩,
    ⟨(447622342513/1000000000000 : ℚ), (105833829689/10000000000 : ℚ), (-1231454655567/250000000000 : ℚ), 6⟩,
    ⟨(113023589919/250000000000 : ℚ), (35960817777/5000000000 : ℚ), (-3401079545243/1000000000000 : ℚ), 5⟩,
    ⟨(14287526767/31250000000 : ℚ), (50874263493/10000000000 : ℚ), (-19098958277/7812500000 : ℚ), 5⟩,
    ⟨(462892654761/1000000000000 : ℚ), (36978416891/10000000000 : ℚ), (-902856423203/500000000000 : ℚ), 5⟩,
    ⟨(469114939199/1000000000000 : ℚ), (6841239559/2500000000 : ℚ), (-84870951251/62500000000 : ℚ), 4⟩,
    ⟨(3717248327/7812500000 : ℚ), (818649839/400000000 : ℚ), (-258036036213/250000000000 : ℚ), 4⟩,
    ⟨(482906738961/1000000000000 : ℚ), (3841979601/2500000000 : ℚ), (-787855023469/1000000000000 : ℚ), 4⟩,
    ⟨(98068686343/200000000000 : ℚ), (2301624191/2000000000 : ℚ), (-600101191489/1000000000000 : ℚ), 4⟩,
    ⟨(498046244701/1000000000000 : ℚ), (1705322429/2000000000 : ℚ), (-113202466727/250000000000 : ℚ), 4⟩,
    ⟨(505940995619/1000000000000 : ℚ), (3092060587/5000000000 : ℚ), (-335257265641/1000000000000 : ℚ), 3⟩,
    ⟨(513951653703/1000000000000 : ℚ), (1079234069/2500000000 : ℚ), (-60017370797/250000000000 : ℚ), 3⟩,
    ⟨(8156266749/15625000000 : ℚ), (1405090943/5000000000 : ℚ), (-162044260363/1000000000000 : ℚ), 3⟩,
    ⟨(530011730019/1000000000000 : ℚ), (316298347/2000000000 : ℚ), (-24357478113/250000000000 : ℚ), 3⟩,
    ⟨(268953240469/500000000000 : ℚ), (285352521/5000000000 : ℚ), (-5433681503/125000000000 : ℚ), 3⟩,
    ⟨(136402323481/250000000000 : ℚ), (-53364473/2000000000 : ℚ), (118495023/62500000000 : ℚ), 3⟩,
    ⟨(276522993339/500000000000 : ℚ), (-19293387/200000000 : ℚ), (10056138373/250000000000 : ℚ), 3⟩,
    ⟨(560144939783/1000000000000 : ℚ), (-1548377517/10000000000 : ℚ), (36354589227/500000000000 : ℚ), 3⟩,
    ⟨(14170944661/25000000000 : ℚ), (-254693979/1250000000 : ℚ), (25067676591/250000000000 : ℚ), 3⟩,
    ⟨(573060070877/1000000000000 : ℚ), (-152958979/625000000 : ℚ), (15453084447/125000000000 : ℚ), 3⟩,
    ⟨(289375934547/500000000000 : ℚ), (-2789514409/10000000000 : ℚ), (143329115001/1000000000000 : ℚ), 3⟩,
    ⟨(291929182981/500000000000 : ℚ), (-1536604461/5000000000 : ℚ), (79909771189/500000000000 : ℚ), 3⟩,
    ⟨(941328613/1600000000 : ℚ), (-66110491/200000000 : ℚ), (173434899233/1000000000000 : ℚ), 3⟩,
    ⟨(296062426307/500000000000 : ℚ), (-698386673/2000000000 : ℚ), (23054620691/125000000000 : ℚ), 3⟩,
    ⟨(148801307903/250000000000 : ℚ), (-3636596679/10000000000 : ℚ), (48256243297/250000000000 : ℚ), 3⟩,
    ⟨(119508370877/200000000000 : ℚ), (-1871299203/5000000000 : ℚ), (12459160931/62500000000 : ℚ), 3⟩,
    ⟨(29955610899/50000000000 : ℚ), (-15248461/40000000 : ℚ), (203505937863/1000000000000 : ℚ), 3⟩,
    ⟨(599901198937/1000000000000 : ℚ), (-153861429/400000000 : ℚ), (51392366567/250000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-192541131/500000000 : ℚ), (10291332939/50000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (18415510279/62500000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control676.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control676.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate676
