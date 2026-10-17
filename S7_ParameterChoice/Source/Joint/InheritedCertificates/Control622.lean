import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate622
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134855848339/500000000000 : ℚ), (12853663212061/10000000000 : ℚ), (-347263698128191/1000000000000 : ℚ), 12⟩,
    ⟨(33792336549/125000000000 : ℚ), (702843065737/5000000000 : ℚ), (-19183129446253/500000000000 : ℚ), 9⟩,
    ⟨(27158664551/100000000000 : ℚ), (98597980601/2000000000 : ℚ), (-1365432505787/100000000000 : ℚ), 8⟩,
    ⟨(6836088439/25000000000 : ℚ), (242960281667/10000000000 : ℚ), (-3422879615531/500000000000 : ℚ), 7⟩,
    ⟨(275891485657/1000000000000 : ℚ), (140867998019/10000000000 : ℚ), (-4043683369623/1000000000000 : ℚ), 6⟩,
    ⟨(278906914723/1000000000000 : ℚ), (44845699289/5000000000 : ℚ), (-1312534050867/500000000000 : ℚ), 6⟩,
    ⟨(282460784527/1000000000000 : ℚ), (30297366411/5000000000 : ℚ), (-1808939009493/1000000000000 : ℚ), 5⟩,
    ⟨(286518869359/1000000000000 : ℚ), (1703053743/400000000 : ℚ), (-324169061751/250000000000 : ℚ), 5⟩,
    ⟨(145521043823/500000000000 : ℚ), (15353108937/5000000000 : ℚ), (-190821684111/200000000000 : ℚ), 4⟩,
    ⟨(295986878323/1000000000000 : ℚ), (22510531599/10000000000 : ℚ), (-178424553741/250000000000 : ℚ), 4⟩,
    ⟨(301305620351/1000000000000 : ℚ), (8319480117/5000000000 : ℚ), (-107689069333/200000000000 : ℚ), 4⟩,
    ⟨(306947091337/1000000000000 : ℚ), (61524257/50000000 : ℚ), (-101675845267/250000000000 : ℚ), 4⟩,
    ⟨(312856960833/1000000000000 : ℚ), (4512772623/5000000000 : ℚ), (-305126746739/1000000000000 : ℚ), 4⟩,
    ⟨(79744578391/250000000000 : ℚ), (6492139919/10000000000 : ℚ), (-56281982773/250000000000 : ℚ), 3⟩,
    ⟨(325252197557/1000000000000 : ℚ), (899983009/2000000000 : ℚ), (-20122689597/125000000000 : ℚ), 3⟩,
    ⟨(8290454797/25000000000 : ℚ), (581833263/2000000000 : ℚ), (-3398591489/31250000000 : ℚ), 3⟩,
    ⟨(338014988527/1000000000000 : ℚ), (162216739/1000000000 : ℚ), (-513110783/7812500000 : ℚ), 3⟩,
    ⟨(344380982849/1000000000000 : ℚ), (284550037/5000000000 : ℚ), (-1859881757/62500000000 : ℚ), 3⟩,
    ⟨(175327433421/500000000000 : ℚ), (-75205329/2500000000 : ℚ), (465617031/1000000000000 : ℚ), 3⟩,
    ⟨(356776219573/1000000000000 : ℚ), (-512554617/5000000000 : ℚ), (26079266453/1000000000000 : ℚ), 3⟩,
    ⟨(362686089069/1000000000000 : ℚ), (-1631833913/10000000000 : ℚ), (47901042493/1000000000000 : ℚ), 3⟩,
    ⟨(46040945007/125000000000 : ℚ), (-2142228283/10000000000 : ℚ), (66553452303/1000000000000 : ℚ), 3⟩,
    ⟨(93411575521/250000000000 : ℚ), (-643123533/2500000000 : ℚ), (82513753659/1000000000000 : ℚ), 3⟩,
    ⟨(9464777319/25000000000 : ℚ), (-733769107/2500000000 : ℚ), (96149782233/1000000000000 : ℚ), 3⟩,
    ⟨(383114311047/1000000000000 : ℚ), (-3239576361/10000000000 : ℚ), (107745834371/1000000000000 : ℚ), 3⟩,
    ⟨(9679309897/25000000000 : ℚ), (-1746707157/5000000000 : ℚ), (117521653633/1000000000000 : ℚ), 3⟩,
    ⟨(390726265683/1000000000000 : ℚ), (-1851158263/5000000000 : ℚ), (25129308101/200000000000 : ℚ), 3⟩,
    ⟨(393741694749/1000000000000 : ℚ), (-1935337527/5000000000 : ℚ), (66124969101/500000000000 : ℚ), 3⟩,
    ⟨(198094821423/500000000000 : ℚ), (-1000453691/2500000000 : ℚ), (27485881823/200000000000 : ℚ), 3⟩,
    ⟨(24877908431/62500000000 : ℚ), (-2049095201/5000000000 : ℚ), (70628309921/500000000000 : ℚ), 3⟩,
    ⟨(199647244007/500000000000 : ℚ), (-4161529497/10000000000 : ℚ), (143781751101/1000000000000 : ℚ), 3⟩,
    ⟨(24995092733/62500000000 : ℚ), (-4192931727/10000000000 : ℚ), (145036607811/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-2098422311/5000000000 : ℚ), (36298277063/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (398686385673/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control622.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control622.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate622
