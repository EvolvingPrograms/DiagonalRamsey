import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control622
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
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

-- Control623
namespace DiagonalRamsey.JointInheritedCertificate623
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65740859277/250000000000 : ℚ), (13953134091329/10000000000 : ℚ), (-36748761160499/100000000000 : ℚ), 12⟩,
    ⟨(10541066421/40000000000 : ℚ), (1526809103519/10000000000 : ℚ), (-40591880970877/1000000000000 : ℚ), 9⟩,
    ⟨(264647683209/1000000000000 : ℚ), (535845656601/10000000000 : ℚ), (-14440069247899/1000000000000 : ℚ), 8⟩,
    ⟨(2663157091/10000000000 : ℚ), (264253374069/10000000000 : ℚ), (-904347996233/125000000000 : ℚ), 7⟩,
    ⟨(67128668549/250000000000 : ℚ), (76644187523/5000000000 : ℚ), (-4269428566767/1000000000000 : ℚ), 6⟩,
    ⟨(271223401261/1000000000000 : ℚ), (610132673/62500000 : ℚ), (-346017469113/125000000000 : ℚ), 6⟩,
    ⟨(274415803773/1000000000000 : ℚ), (65942602451/10000000000 : ℚ), (-1904438791613/1000000000000 : ℚ), 5⟩,
    ⟨(5561222743/20000000000 : ℚ), (46304984123/10000000000 : ℚ), (-1362306485011/1000000000000 : ℚ), 5⟩,
    ⟨(7053107371/25000000000 : ℚ), (266826751/80000000 : ℚ), (-249938463503/250000000000 : ℚ), 4⟩,
    ⟨(71641536603/250000000000 : ℚ), (4879977171/2000000000 : ℚ), (-931635607/1250000000 : ℚ), 4⟩,
    ⟨(36417989301/125000000000 : ℚ), (224712907/125000000 : ℚ), (-559814249607/1000000000000 : ℚ), 4⟩,
    ⟨(29641158631/100000000000 : ℚ), (13229510709/10000000000 : ℚ), (-420363457827/1000000000000 : ℚ), 4⟩,
    ⟨(75430089417/250000000000 : ℚ), (1926466961/2000000000 : ℚ), (-15641647033/50000000000 : ℚ), 4⟩,
    ⟨(307219102111/1000000000000 : ℚ), (6849352937/10000000000 : ℚ), (-114067417147/500000000000 : ℚ), 4⟩,
    ⟨(78213715931/250000000000 : ℚ), (4657666121/10000000000 : ℚ), (-160210166801/1000000000000 : ℚ), 3⟩,
    ⟨(318573367043/1000000000000 : ℚ), (290507671/1000000000 : ℚ), (-104897322319/1000000000000 : ℚ), 3⟩,
    ⟨(162159769877/500000000000 : ℚ), (742527111/5000000000 : ℚ), (-29632545107/500000000000 : ℚ), 3⟩,
    ⟨(5156844423/15625000000 : ℚ), (321443413/10000000000 : ℚ), (-165659591/7812500000 : ℚ), 3⟩,
    ⟨(67134760937/200000000000 : ℚ), (-128236917/2000000000 : ℚ), (10829723119/1000000000000 : ℚ), 3⟩,
    ⟨(42646568641/125000000000 : ℚ), (-1443795117/10000000000 : ℚ), (37986460423/1000000000000 : ℚ), 3⟩,
    ⟨(173240660243/500000000000 : ℚ), (-846823/4000000 : ℚ), (15282771713/250000000000 : ℚ), 3⟩,
    ⟨(87887248097/250000000000 : ℚ), (-1342090007/5000000000 : ℚ), (2528803311/31250000000 : ℚ), 3⟩,
    ⟨(5567605631/15625000000 : ℚ), (-790719173/2500000000 : ℚ), (97862619949/1000000000000 : ℚ), 3⟩,
    ⟨(360768611957/1000000000000 : ℚ), (-3566755939/10000000000 : ℚ), (112342263909/1000000000000 : ℚ), 3⟩,
    ⟨(182415884823/500000000000 : ℚ), (-3906316291/10000000000 : ℚ), (124660620629/1000000000000 : ℚ), 3⟩,
    ⟨(23029818939/62500000000 : ℚ), (-4189670169/10000000000 : ℚ), (135049342199/1000000000000 : ℚ), 3⟩,
    ⟨(725917003/1953125000 : ℚ), (-2211537883/5000000000 : ℚ), (143686713577/1000000000000 : ℚ), 3⟩,
    ⟨(374378232601/1000000000000 : ℚ), (-4611330947/10000000000 : ℚ), (6028355501/40000000000 : ℚ), 3⟩,
    ⟨(376577197697/1000000000000 : ℚ), (-475806581/1000000000 : ℚ), (19527294793/125000000000 : ℚ), 3⟩,
    ⟨(378245223587/1000000000000 : ℚ), (-4865958911/10000000000 : ℚ), (20036290649/125000000000 : ℚ), 3⟩,
    ⟨(2963798799/7812500000 : ℚ), (-617111783/1250000000 : ℚ), (81488692739/500000000000 : ℚ), 3⟩,
    ⟨(379929469689/1000000000000 : ℚ), (-7955313/16000000 : ℚ), (82156423519/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-155514193/312500000 : ℚ), (16447940651/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (77868295327/200000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control623.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control623.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate623

-- Control624
namespace DiagonalRamsey.JointInheritedCertificate624
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(278065565403/1000000000000 : ℚ), (14162277729989/10000000000 : ℚ), (-394408914705253/1000000000000 : ℚ), 12⟩,
    ⟨(139326179599/500000000000 : ℚ), (774968656681/5000000000 : ℚ), (-43566939135577/1000000000000 : ℚ), 9⟩,
    ⟨(279820295643/1000000000000 : ℚ), (136023393379/2500000000 : ℚ), (-968714940583/62500000000 : ℚ), 8⟩,
    ⟨(35194765859/125000000000 : ℚ), (134201397803/5000000000 : ℚ), (-7766376168691/1000000000000 : ℚ), 7⟩,
    ⟨(283849116619/1000000000000 : ℚ), (155752475653/10000000000 : ℚ), (-2291922095943/500000000000 : ℚ), 6⟩,
    ⟨(143335600701/500000000000 : ℚ), (99233586469/10000000000 : ℚ), (-594527590861/200000000000 : ℚ), 6⟩,
    ⟨(289997203001/1000000000000 : ℚ), (67066470639/10000000000 : ℚ), (-81829440109/40000000000 : ℚ), 5⟩,
    ⟨(146897545101/500000000000 : ℚ), (9424750187/2000000000 : ℚ), (-1463969288691/1000000000000 : ℚ), 5⟩,
    ⟨(74507071819/250000000000 : ℚ), (3396956237/1000000000 : ℚ), (-537473608499/500000000000 : ℚ), 4⟩,
    ⟨(15132801311/50000000000 : ℚ), (24875396333/10000000000 : ℚ), (-160392249439/200000000000 : ℚ), 4⟩,
    ⟨(15381686969/50000000000 : ℚ), (18351349277/10000000000 : ℚ), (-602986297659/1000000000000 : ℚ), 4⟩,
    ⟨(62582697731/200000000000 : ℚ), (13529066041/10000000000 : ℚ), (-113358968051/250000000000 : ℚ), 4⟩,
    ⟨(12737777087/40000000000 : ℚ), (9875476759/10000000000 : ℚ), (-6763027483/20000000000 : ℚ), 4⟩,
    ⟨(324173288977/1000000000000 : ℚ), (3524604873/5000000000 : ℚ), (-123689124001/500000000000 : ℚ), 4⟩,
    ⟨(41255612749/125000000000 : ℚ), (2411934793/5000000000 : ℚ), (-87306295033/500000000000 : ℚ), 3⟩,
    ⟨(537604351/1600000000 : ℚ), (380605259/1250000000 : ℚ), (-28846682037/250000000000 : ℚ), 3⟩,
    ⟨(341989364089/1000000000000 : ℚ), (1603880883/10000000000 : ℚ), (-6655342237/100000000000 : ℚ), 3⟩,
    ⟨(10873349421/31250000000 : ℚ), (423583691/10000000000 : ℚ), (-12923867237/500000000000 : ℚ), 3⟩,
    ⟨(353818794487/1000000000000 : ℚ), (-552403281/10000000000 : ℚ), (4195025383/500000000000 : ℚ), 3⟩,
    ⟨(359547656289/1000000000000 : ℚ), (-54629737/400000000 : ℚ), (4674342637/125000000000 : ℚ), 3⟩,
    ⟨(365078594809/1000000000000 : ℚ), (-409528151/2000000000 : ℚ), (62096593539/1000000000000 : ℚ), 3⟩,
    ⟨(92589586021/250000000000 : ℚ), (-2621718179/10000000000 : ℚ), (83203496509/1000000000000 : ℚ), 3⟩,
    ⟨(375336057243/1000000000000 : ℚ), (-388251799/1250000000 : ℚ), (2531456321/25000000000 : ℚ), 3⟩,
    ⟨(94990949047/250000000000 : ℚ), (-351439379/1000000000 : ℚ), (5833963199/50000000000 : ℚ), 3⟩,
    ⟨(192098496631/500000000000 : ℚ), (-482194699/1250000000 : ℚ), (129789927/1000000000 : ℚ), 3⟩,
    ⟨(387994880463/1000000000000 : ℚ), (-4143778819/10000000000 : ℚ), (70420101969/500000000000 : ℚ), 3⟩,
    ⟨(195660441031/500000000000 : ℚ), (-109486063/250000000 : ℚ), (150022658409/1000000000000 : ℚ), 3⟩,
    ⟨(98535741711/250000000000 : ℚ), (-285590371/625000000 : ℚ), (1574844939/10000000000 : ℚ), 3⟩,
    ⟨(24777122287/62500000000 : ℚ), (-2358747897/5000000000 : ℚ), (40834157977/250000000000 : ℚ), 3⟩,
    ⟨(398171787821/1000000000000 : ℚ), (-2413164051/5000000000 : ℚ), (33532105737/200000000000 : ℚ), 3⟩,
    ⟨(199669862133/500000000000 : ℚ), (-2448933897/5000000000 : ℚ), (170513202817/1000000000000 : ℚ), 3⟩,
    ⟨(399926518061/1000000000000 : ℚ), (-19270859/39062500 : ℚ), (171930784289/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-2468880063/5000000000 : ℚ), (8605378847/50000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (376354260219/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control624.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control624.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate624

-- Control625
namespace DiagonalRamsey.JointInheritedCertificate625
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(173253766769/1000000000000 : ℚ), (694709193307/2000000000 : ℚ), (-12093033215897/200000000000 : ℚ), 10⟩,
    ⟨(174724865113/1000000000000 : ℚ), (73299198219/2000000000 : ℚ), (-6550124164169/1000000000000 : ℚ), 7⟩,
    ⟨(44402632079/250000000000 : ℚ), (120962019877/10000000000 : ℚ), (-2236212709033/1000000000000 : ℚ), 6⟩,
    ⟨(4544996549/25000000000 : ℚ), (2184267103/400000000 : ℚ), (-1046804980463/1000000000000 : ℚ), 5⟩,
    ⟨(93565936151/500000000000 : ℚ), (27958514267/10000000000 : ℚ), (-556385654591/1000000000000 : ℚ), 4⟩,
    ⟨(7736066127/40000000000 : ℚ), (3708466179/2500000000 : ℚ), (-153593528463/500000000000 : ℚ), 4⟩,
    ⟨(3130754069/15625000000 : ℚ), (3748067363/5000000000 : ℚ), (-81488806737/500000000000 : ℚ), 4⟩,
    ⟨(207763971217/1000000000000 : ℚ), (3018727151/10000000000 : ℚ), (-2869816927/40000000000 : ℚ), 3⟩,
    ⟨(215304572557/1000000000000 : ℚ), (26612729/2500000000 : ℚ), (-2042876743/200000000000 : ℚ), 3⟩,
    ⟨(111350141679/500000000000 : ℚ), (-1878952853/10000000000 : ℚ), (16613387033/500000000000 : ℚ), 3⟩,
    ⟨(229666890599/1000000000000 : ℚ), (-327691657/1000000000 : ℚ), (32412763543/500000000000 : ℚ), 3⟩,
    ⟨(14746041967/62500000000 : ℚ), (-106948259/250000000 : ℚ), (44059428669/500000000000 : ℚ), 3⟩,
    ⟨(48253736363/200000000000 : ℚ), (-4992756669/10000000000 : ℚ), (26292511011/250000000000 : ℚ), 3⟩,
    ⟨(245458015459/1000000000000 : ℚ), (-5486925629/10000000000 : ℚ), (29298617383/250000000000 : ℚ), 3⟩,
    ⟨(124171839331/500000000000 : ℚ), (-5798937803/10000000000 : ℚ), (124897566281/1000000000000 : ℚ), 3⟩,
    ⟨(49962955401/200000000000 : ℚ), (-185942979/312500000 : ℚ), (128664517481/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2984433567/5000000000 : ℚ), (25826327883/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (457455840771/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control625.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control625.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate625

-- Control626
namespace DiagonalRamsey.JointInheritedCertificate626
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(209606110983/1000000000000 : ℚ), (225007624633/156250000 : ℚ), (-302297109979119/1000000000000 : ℚ), 12⟩,
    ⟨(52510279989/250000000000 : ℚ), (787906613967/5000000000 : ℚ), (-16690702931573/500000000000 : ℚ), 9⟩,
    ⟨(13181684283/62500000000 : ℚ), (110595883591/2000000000 : ℚ), (-11867967284907/1000000000000 : ℚ), 8⟩,
    ⟨(212195258297/1000000000000 : ℚ), (3407543773/125000000 : ℚ), (-297028204687/50000000000 : ℚ), 7⟩,
    ⟨(42778728427/200000000000 : ℚ), (79010233693/5000000000 : ℚ), (-3501044496457/1000000000000 : ℚ), 6⟩,
    ⟨(215985743677/1000000000000 : ℚ), (100518311073/10000000000 : ℚ), (-1132944229363/500000000000 : ℚ), 6⟩,
    ⟨(218451414841/1000000000000 : ℚ), (2711224857/400000000 : ℚ), (-1555206893139/1000000000000 : ℚ), 5⟩,
    ⟨(55316727467/250000000000 : ℚ), (5934355741/1250000000 : ℚ), (-1109032462597/1000000000000 : ℚ), 5⟩,
    ⟨(112202557/500000000 : ℚ), (8518249261/2500000000 : ℚ), (-405280632833/500000000000 : ℚ), 5⟩,
    ⟨(28479475577/125000000000 : ℚ), (6200064689/2500000000 : ℚ), (-600998960783/1000000000000 : ℚ), 4⟩,
    ⟨(23152594229/100000000000 : ℚ), (1133838847/625000000 : ℚ), (-448135918677/1000000000000 : ℚ), 4⟩,
    ⟨(235439988979/1000000000000 : ℚ), (13213387887/10000000000 : ℚ), (-333129280841/1000000000000 : ℚ), 4⟩,
    ⟨(119770125137/500000000000 : ℚ), (9474059829/10000000000 : ℚ), (-30545362059/125000000000 : ℚ), 4⟩,
    ⟨(243787238417/1000000000000 : ℚ), (6576315453/10000000000 : ℚ), (-17436310299/100000000000 : ℚ), 4⟩,
    ⟨(248140052591/1000000000000 : ℚ), (4289982381/10000000000 : ℚ), (-118148188163/1000000000000 : ℚ), 3⟩,
    ⟨(50511354563/200000000000 : ℚ), (1228953171/5000000000 : ℚ), (-7229754977/100000000000 : ℚ), 3⟩,
    ⟨(12849743183/50000000000 : ℚ), (970103109/10000000000 : ℚ), (-4300378643/125000000000 : ℚ), 3⟩,
    ⟨(52282316777/200000000000 : ℚ), (-252032191/10000000000 : ℚ), (-1366530827/500000000000 : ℚ), 3⟩,
    ⟨(132882199029/500000000000 : ℚ), (-1265689977/10000000000 : ℚ), (23979743617/1000000000000 : ℚ), 3⟩,
    ⟨(270011386201/1000000000000 : ℚ), (-2113115337/10000000000 : ℚ), (11669217249/250000000000 : ℚ), 3⟩,
    ⟨(34263955937/125000000000 : ℚ), (-282591377/1000000000 : ℚ), (66066209851/1000000000000 : ℚ), 3⟩,
    ⟨(139012847093/500000000000 : ℚ), (-3427981067/10000000000 : ℚ), (20671286443/250000000000 : ℚ), 3⟩,
    ⟨(14085791593/50000000000 : ℚ), (-3937536681/10000000000 : ℚ), (24236133881/250000000000 : ℚ), 3⟩,
    ⟨(71286630619/250000000000 : ℚ), (-4368559947/10000000000 : ℚ), (109159994303/1000000000000 : ℚ), 3⟩,
    ⟨(18017795413/62500000000 : ℚ), (-2365910243/5000000000 : ℚ), (23914904113/200000000000 : ℚ), 3⟩,
    ⟨(145550110817/500000000000 : ℚ), (-5035627497/10000000000 : ℚ), (128375120761/1000000000000 : ℚ), 3⟩,
    ⟨(293565892799/1000000000000 : ℚ), (-5286380677/10000000000 : ℚ), (530098387/3906250000 : ℚ), 3⟩,
    ⟨(295657994341/1000000000000 : ℚ), (-1097795681/2000000000 : ℚ), (141673802799/1000000000000 : ℚ), 3⟩,
    ⟨(297356378179/1000000000000 : ℚ), (-705890123/1250000000 : ℚ), (7318138331/50000000000 : ℚ), 3⟩,
    ⟨(298644687947/1000000000000 : ℚ), (-360220927/625000000 : ℚ), (14983187361/100000000000 : ℚ), 3⟩,
    ⟨(299510516519/1000000000000 : ℚ), (-730016907/1250000000 : ℚ), (15212281143/100000000000 : ℚ), 3⟩,
    ⟨(74986381373/250000000000 : ℚ), (-1469534943/2500000000 : ℚ), (153261912139/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5882876643/10000000000 : ℚ), (153404005367/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (423605439619/1000000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control626.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control626.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate626

-- Control627
namespace DiagonalRamsey.JointInheritedCertificate627
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(246877677543/1000000000000 : ℚ), (14868645791347/10000000000 : ℚ), (-367609798008813/1000000000000 : ℚ), 12⟩,
    ⟨(123686970233/500000000000 : ℚ), (101723845783/625000000 : ℚ), (-10149132541029/250000000000 : ℚ), 9⟩,
    ⟨(248361687029/1000000000000 : ℚ), (17857461267/312500000 : ℚ), (-2887059424639/200000000000 : ℚ), 8⟩,
    ⟨(249831404693/1000000000000 : ℚ), (56377732119/2000000000 : ℚ), (-7227392855457/1000000000000 : ℚ), 7⟩,
    ⟨(31471117409/125000000000 : ℚ), (40883328447/2500000000 : ℚ), (-66577087093/15625000000 : ℚ), 6⟩,
    ⟨(254155631251/1000000000000 : ℚ), (52062418851/5000000000 : ℚ), (-68976455421/25000000000 : ℚ), 6⟩,
    ⟨(6424212387/25000000000 : ℚ), (35147001217/5000000000 : ℚ), (-236873895507/125000000000 : ℚ), 5⟩,
    ⟨(260180442539/1000000000000 : ℚ), (49305635453/10000000000 : ℚ), (-135259988887/100000000000 : ℚ), 5⟩,
    ⟨(263760539623/1000000000000 : ℚ), (17725397411/5000000000 : ℚ), (-989844685253/1000000000000 : ℚ), 5⟩,
    ⟨(133837154219/500000000000 : ℚ), (25863524611/10000000000 : ℚ), (-735227801531/1000000000000 : ℚ), 4⟩,
    ⟨(271884057253/1000000000000 : ℚ), (9489316499/5000000000 : ℚ), (-549579429381/1000000000000 : ℚ), 4⟩,
    ⟨(69087310971/250000000000 : ℚ), (3470933141/2500000000 : ℚ), (-102496023999/250000000000 : ℚ), 4⟩,
    ⟨(8782089567/31250000000 : ℚ), (2003724409/2000000000 : ℚ), (-151157034943/500000000000 : ℚ), 4⟩,
    ⟨(285871875973/1000000000000 : ℚ), (3512244219/5000000000 : ℚ), (-54369703519/250000000000 : ℚ), 4⟩,
    ⟨(145418806639/500000000000 : ℚ), (4663326037/10000000000 : ℚ), (-3735446627/25000000000 : ℚ), 3⟩,
    ⟨(147938127647/500000000000 : ℚ), (2772564769/10000000000 : ℚ), (-46984451693/500000000000 : ℚ), 3⟩,
    ⟨(37617409643/125000000000 : ℚ), (1238373581/10000000000 : ℚ), (-9640114449/200000000000 : ℚ), 3⟩,
    ⟨(7649447979/25000000000 : ℚ), (-4129869/2000000000 : ℚ), (-10004099233/1000000000000 : ℚ), 3⟩,
    ⟨(62188731293/200000000000 : ℚ), (-1063769513/10000000000 : ℚ), (22164978691/1000000000000 : ℚ), 3⟩,
    ⟨(157894333147/500000000000 : ℚ), (-1934798483/10000000000 : ℚ), (24727453819/500000000000 : ℚ), 3⟩,
    ⟨(320466288553/1000000000000 : ℚ), (-2666541739/10000000000 : ℚ), (72729932797/1000000000000 : ℚ), 3⟩,
    ⟨(64986295037/200000000000 : ℚ), (-1641912733/5000000000 : ℚ), (9264694177/100000000000 : ℚ), 3⟩,
    ⟨(41142653/125000000 : ℚ), (-3805597303/10000000000 : ℚ), (1714201661/15625000000 : ℚ), 3⟩,
    ⟨(66610998563/200000000000 : ℚ), (-4246410349/10000000000 : ℚ), (12430286041/100000000000 : ℚ), 3⟩,
    ⟨(336635089899/1000000000000 : ℚ), (-4617488017/10000000000 : ℚ), (136727359487/1000000000000 : ℚ), 3⟩,
    ⟨(169923518479/500000000000 : ℚ), (-4927498603/10000000000 : ℚ), (147212646161/1000000000000 : ℚ), 3⟩,
    ⟨(342659901187/1000000000000 : ℚ), (-2591562509/5000000000 : ℚ), (77967828747/500000000000 : ℚ), 3⟩,
    ⟨(69009318633/200000000000 : ℚ), (-1347371779/2500000000 : ℚ), (6521252063/40000000000 : ℚ), 3⟩,
    ⟨(69396825549/200000000000 : ℚ), (-5550455687/10000000000 : ℚ), (84300485027/500000000000 : ℚ), 3⟩,
    ⟨(348453845409/1000000000000 : ℚ), (-1417221187/2500000000 : ℚ), (172718935657/1000000000000 : ℚ), 3⟩,
    ⟨(87360397993/250000000000 : ℚ), (-2873390183/5000000000 : ℚ), (43859268623/250000000000 : ℚ), 3⟩,
    ⟨(69987570979/200000000000 : ℚ), (-1157083653/2000000000 : ℚ), (88394100377/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-115804673/200000000 : ℚ), (44239181073/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (194825547417/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control627.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control627.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate627

-- Control628
namespace DiagonalRamsey.JointInheritedCertificate628
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(109184220851/500000000000 : ℚ), (8308320010723/5000000000 : ℚ), (-363328859557023/1000000000000 : ℚ), 13⟩,
    ⟨(43752256617/200000000000 : ℚ), (1819921690793/10000000000 : ℚ), (-8021646044071/200000000000 : ℚ), 9⟩,
    ⟨(219543182573/1000000000000 : ℚ), (639325992969/10000000000 : ℚ), (-2850076411607/200000000000 : ℚ), 8⟩,
    ⟨(220706610047/1000000000000 : ℚ), (78871763993/2500000000 : ℚ), (-3563015038549/500000000000 : ℚ), 7⟩,
    ⟨(44448072213/200000000000 : ℚ), (9151008327/500000000 : ℚ), (-2096958582589/500000000000 : ℚ), 6⟩,
    ⟨(44825932953/200000000000 : ℚ), (116467443331/10000000000 : ℚ), (-1354694135213/500000000000 : ℚ), 6⟩,
    ⟨(5658908153/25000000000 : ℚ), (19631629851/2500000000 : ℚ), (-463814255137/250000000000 : ℚ), 5⟩,
    ⟨(45779780233/200000000000 : ℚ), (54958293249/10000000000 : ℚ), (-329764458307/250000000000 : ℚ), 5⟩,
    ⟨(231732903511/1000000000000 : ℚ), (19689040309/5000000000 : ℚ), (-120049862471/125000000000 : ℚ), 5⟩,
    ⟨(234831040167/1000000000000 : ℚ), (28579763929/10000000000 : ℚ), (-354306143973/500000000000 : ℚ), 4⟩,
    ⟨(238163474383/1000000000000 : ℚ), (1300736387/625000000 : ℚ), (-524983140417/1000000000000 : ℚ), 4⟩,
    ⟨(48339622599/200000000000 : ℚ), (15052708237/10000000000 : ℚ), (-386862496881/1000000000000 : ℚ), 4⟩,
    ⟨(245400915503/1000000000000 : ℚ), (2668778027/2500000000 : ℚ), (-11211492529/40000000000 : ℚ), 4⟩,
    ⟨(124618110947/500000000000 : ℚ), (7276922239/10000000000 : ℚ), (-39254686153/200000000000 : ℚ), 4⟩,
    ⟨(253167096069/1000000000000 : ℚ), (114782423/250000000 : ℚ), (-64415876219/500000000000 : ℚ), 4⟩,
    ⟨(257155681563/1000000000000 : ℚ), (2435868059/10000000000 : ℚ), (-73849457959/1000000000000 : ℚ), 3⟩,
    ⟨(261163566117/1000000000000 : ℚ), (21339703/312500000 : ℚ), (-2843057427/100000000000 : ℚ), 3⟩,
    ⟨(265152151611/1000000000000 : ℚ), (-23722221/312500000 : ℚ), (9507659259/1000000000000 : ℚ), 3⟩,
    ⟨(269083025787/1000000000000 : ℚ), (-489166131/2500000000 : ℚ), (41490069339/1000000000000 : ℚ), 3⟩,
    ⟨(272918332177/1000000000000 : ℚ), (-369879179/1250000000 : ℚ), (34324849831/500000000000 : ℚ), 3⟩,
    ⟨(55324226937/200000000000 : ℚ), (-237693751/625000000 : ℚ), (91838741767/1000000000000 : ℚ), 3⟩,
    ⟨(140077886649/500000000000 : ℚ), (-282298617/625000000 : ℚ), (27926078783/250000000000 : ℚ), 3⟩,
    ⟨(141744103757/500000000000 : ℚ), (-204854733/400000000 : ℚ), (16092665457/125000000000 : ℚ), 3⟩,
    ⟨(28658634417/100000000000 : ℚ), (-1408306603/2500000000 : ℚ), (17916254407/125000000000 : ℚ), 3⟩,
    ⟨(72355086629/250000000000 : ℚ), (-303247879/500000000 : ℚ), (155763271247/1000000000000 : ℚ), 3⟩,
    ⟨(7299073039/25000000000 : ℚ), (-1285257853/2000000000 : ℚ), (41566597969/250000000000 : ℚ), 3⟩,
    ⟨(73547395729/250000000000 : ℚ), (-6724712911/10000000000 : ℚ), (35002436953/200000000000 : ℚ), 3⟩,
    ⟨(37009860827/125000000000 : ℚ), (-6965960683/10000000000 : ℚ), (45533016829/250000000000 : ℚ), 3⟩,
    ⟨(297612637633/1000000000000 : ℚ), (-1788590127/2500000000 : ℚ), (93862277073/500000000000 : ℚ), 3⟩,
    ⟨(298776065107/1000000000000 : ℚ), (-7293099209/10000000000 : ℚ), (191861629973/1000000000000 : ℚ), 3⟩,
    ⟨(74889491149/250000000000 : ℚ), (-3692207027/5000000000 : ℚ), (194593459073/1000000000000 : ℚ), 3⟩,
    ⟨(149975402989/500000000000 : ℚ), (-1485945281/2000000000 : ℚ), (6123491107/31250000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-929421809/1250000000 : ℚ), (39224228709/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (392004486461/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control628.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control628.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate628

-- Control629
namespace DiagonalRamsey.JointInheritedCertificate629
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(256910342581/1000000000000 : ℚ), (17144235953423/10000000000 : ℚ), (-27563249764811/62500000000 : ℚ), 13⟩,
    ⟨(257358324593/1000000000000 : ℚ), (1878274385037/10000000000 : ℚ), (-9737553617623/200000000000 : ℚ), 9⟩,
    ⟨(51649994861/200000000000 : ℚ), (132028313009/2000000000 : ℚ), (-17301647242689/1000000000000 : ℚ), 8⟩,
    ⟨(64894176161/250000000000 : ℚ), (65192744109/2000000000 : ℚ), (-4327109646723/500000000000 : ℚ), 7⟩,
    ⟨(261325738471/1000000000000 : ℚ), (18924541081/1000000000 : ℚ), (-636918523147/125000000000 : ℚ), 6⟩,
    ⟨(131740115817/500000000000 : ℚ), (60272031757/5000000000 : ℚ), (-205848685693/62500000000 : ℚ), 6⟩,
    ⟨(53203887037/200000000000 : ℚ), (81370865247/10000000000 : ℚ), (-282126550539/125000000000 : ℚ), 5⟩,
    ⟨(33614861901/125000000000 : ℚ), (57032998899/10000000000 : ℚ), (-803188828417/500000000000 : ℚ), 5⟩,
    ⟨(68037672079/250000000000 : ℚ), (40941867243/10000000000 : ℚ), (-292816580599/250000000000 : ℚ), 5⟩,
    ⟨(17230230661/62500000000 : ℚ), (29788654353/10000000000 : ℚ), (-865900389547/1000000000000 : ℚ), 4⟩,
    ⟨(69870969311/250000000000 : ℚ), (21765482151/10000000000 : ℚ), (-643286137081/1000000000000 : ℚ), 4⟩,
    ⟨(56702930089/200000000000 : ℚ), (7908962199/5000000000 : ℚ), (-118982577973/250000000000 : ℚ), 4⟩,
    ⟨(287737191631/1000000000000 : ℚ), (11298157377/10000000000 : ℚ), (-86720580667/250000000000 : ℚ), 4⟩,
    ⟨(14605541771/50000000000 : ℚ), (779094061/1000000000 : ℚ), (-245234656263/1000000000000 : ℚ), 4⟩,
    ⟨(296593461233/1000000000000 : ℚ), (5020609519/10000000000 : ℚ), (-81857462427/500000000000 : ℚ), 4⟩,
    ⟨(75285474733/250000000000 : ℚ), (2798696173/10000000000 : ℚ), (-24331975657/250000000000 : ℚ), 3⟩,
    ⟨(305712344577/1000000000000 : ℚ), (124137803/1250000000 : ℚ), (-42555135903/1000000000000 : ℚ), 3⟩,
    ⟨(77565195569/250000000000 : ℚ), (-24536901/500000000 : ℚ), (156747759/50000000000 : ℚ), 3⟩,
    ⟨(314743408089/1000000000000 : ℚ), (-107609471/625000000 : ℚ), (20798446133/500000000000 : ℚ), 3⟩,
    ⟨(319117051879/1000000000000 : ℚ), (-137547391/500000000 : ℚ), (74209762319/1000000000000 : ℚ), 3⟩,
    ⟨(40417449133/125000000000 : ℚ), (-3616562847/10000000000 : ℚ), (51005905139/500000000000 : ℚ), 3⟩,
    ⟨(163685183133/500000000000 : ℚ), (-1086890147/2500000000 : ℚ), (62896179539/500000000000 : ℚ), 3⟩,
    ⟨(165585276467/500000000000 : ℚ), (-4849673/9765625 : ℚ), (36538975931/250000000000 : ℚ), 3⟩,
    ⟨(334703555193/1000000000000 : ℚ), (-5489080443/10000000000 : ℚ), (8178383031/50000000000 : ℚ), 3⟩,
    ⟨(168967674151/500000000000 : ℚ), (-5929725579/10000000000 : ℚ), (89193254581/500000000000 : ℚ), 3⟩,
    ⟨(85208702081/250000000000 : ℚ), (-6298134831/10000000000 : ℚ), (190889191929/1000000000000 : ℚ), 3⟩,
    ⟨(85843502969/250000000000 : ℚ), (-3301060381/5000000000 : ℚ), (12580520989/62500000000 : ℚ), 3⟩,
    ⟨(172764252519/500000000000 : ℚ), (-6847666847/10000000000 : ℚ), (41949201349/200000000000 : ℚ), 3⟩,
    ⟨(69455507773/200000000000 : ℚ), (-7039294569/10000000000 : ℚ), (216383952007/1000000000000 : ℚ), 3⟩,
    ⟨(87151067301/250000000000 : ℚ), (-1795083923/2500000000 : ℚ), (221291309607/1000000000000 : ℚ), 3⟩,
    ⟨(87373979729/250000000000 : ℚ), (-727313061/1000000000 : ℚ), (112265152721/500000000000 : ℚ), 3⟩,
    ⟨(349943900929/1000000000000 : ℚ), (-7319166843/10000000000 : ℚ), (226140282731/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1464980929/2000000000 : ℚ), (45268217941/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (354720193017/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control629.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control629.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate629
