import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate507
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291493978967/1000000000000 : ℚ), (16434749349563/10000000000 : ℚ), (-59975400248441/125000000000 : ℚ), 12⟩,
    ⟨(292112397677/1000000000000 : ℚ), (1798646917537/10000000000 : ℚ), (-53003033417413/1000000000000 : ℚ), 9⟩,
    ⟨(293343279387/1000000000000 : ℚ), (315713338341/5000000000 : ℚ), (-18858864935797/1000000000000 : ℚ), 7⟩,
    ⟨(295174770033/1000000000000 : ℚ), (311513939377/10000000000 : ℚ), (-9451601018959/1000000000000 : ℚ), 7⟩,
    ⟨(232491587/781250000 : ℚ), (180799783701/10000000000 : ℚ), (-2790038862721/500000000000 : ℚ), 6⟩,
    ⟨(9392606587/31250000000 : ℚ), (115221823057/10000000000 : ℚ), (-3620083319837/1000000000000 : ℚ), 5⟩,
    ⟨(304068665331/1000000000000 : ℚ), (15580340951/2000000000 : ℚ), (-2492552917441/1000000000000 : ℚ), 5⟩,
    ⟨(154035618743/500000000000 : ℚ), (27383238573/5000000000 : ℚ), (-223110687421/125000000000 : ℚ), 5⟩,
    ⟨(312532580289/1000000000000 : ℚ), (19754136879/5000000000 : ℚ), (-1311696569811/1000000000000 : ℚ), 4⟩,
    ⟨(31740972857/100000000000 : ℚ), (3620115697/1250000000 : ℚ), (-979669146727/1000000000000 : ℚ), 4⟩,
    ⟨(161327856363/500000000000 : ℚ), (5348892067/2500000000 : ℚ), (-7376789003/10000000000 : ℚ), 4⟩,
    ⟨(328220011061/1000000000000 : ℚ), (15804591473/10000000000 : ℚ), (-277907868773/500000000000 : ℚ), 4⟩,
    ⟨(334049036341/1000000000000 : ℚ), (11569452583/10000000000 : ℚ), (-25977423859/62500000000 : ℚ), 3⟩,
    ⟨(68017330373/200000000000 : ℚ), (8294055599/10000000000 : ℚ), (-61056264453/200000000000 : ℚ), 3⟩,
    ⟨(10821084753/31250000000 : ℚ), (5715721589/10000000000 : ℚ), (-27103897483/125000000000 : ℚ), 3⟩,
    ⟨(352553622631/1000000000000 : ℚ), (3655064053/10000000000 : ℚ), (-144853320067/1000000000000 : ℚ), 3⟩,
    ⟨(358862914129/1000000000000 : ℚ), (496624583/2500000000 : ℚ), (-85519034931/1000000000000 : ℚ), 3⟩,
    ⟨(45642728083/125000000000 : ℚ), (155056699/2500000000 : ℚ), (-4509113387/125000000000 : ℚ), 3⟩,
    ⟨(11604058903/31250000000 : ℚ), (-12728213/250000000 : ℚ), (137607579/25000000000 : ℚ), 3⟩,
    ⟨(18868375021/50000000000 : ℚ), (-1449904443/10000000000 : ℚ), (20357525681/500000000000 : ℚ), 3⟩,
    ⟨(3831965257/10000000000 : ℚ), (-2238306563/10000000000 : ℚ), (14138290441/200000000000 : ℚ), 3⟩,
    ⟨(77752164807/200000000000 : ℚ), (-2901749137/10000000000 : ℚ), (24073818001/250000000000 : ℚ), 3⟩,
    ⟨(394006808191/1000000000000 : ℚ), (-432646489/1250000000 : ℚ), (23637523027/200000000000 : ℚ), 3⟩,
    ⟨(49860494559/125000000000 : ℚ), (-786535113/2000000000 : ℚ), (68439202957/500000000000 : ℚ), 3⟩,
    ⟨(16133811971/40000000000 : ℚ), (-4328694099/10000000000 : ℚ), (76381061247/500000000000 : ℚ), 3⟩,
    ⟨(407347871429/1000000000000 : ℚ), (-582355829/1250000000 : ℚ), (166143998157/1000000000000 : ℚ), 2⟩,
    ⟨(410853125977/1000000000000 : ℚ), (-2465281517/5000000000 : ℚ), (88629739997/500000000000 : ℚ), 2⟩,
    ⟨(413827305401/1000000000000 : ℚ), (-1287386743/2500000000 : ℚ), (186288817131/1000000000000 : ℚ), 2⟩,
    ⟨(416241766727/1000000000000 : ℚ), (-5320119587/10000000000 : ℚ), (193368044747/1000000000000 : ℚ), 2⟩,
    ⟨(418073257373/1000000000000 : ℚ), (-136136833/250000000 : ℚ), (198597218337/1000000000000 : ℚ), 2⟩,
    ⟨(419304139083/1000000000000 : ℚ), (-2763928041/5000000000 : ℚ), (202046476407/1000000000000 : ℚ), 2⟩,
    ⟨(209961278897/500000000000 : ℚ), (-1113739879/2000000000 : ℚ), (101880157241/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-5573788683/10000000000 : ℚ), (101987022447/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (298771561567/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control507.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control507.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate507
