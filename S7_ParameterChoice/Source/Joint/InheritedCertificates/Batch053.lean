import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control455
namespace DiagonalRamsey.JointInheritedCertificate455
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(77549430237/250000000000 : ℚ), (451928012549/312500000 : ℚ), (-44940760035937/100000000000 : ℚ), 12⟩,
    ⟨(155483374439/500000000000 : ℚ), (1580923938133/10000000000 : ℚ), (-24833334236289/500000000000 : ℚ), 9⟩,
    ⟨(156248699289/500000000000 : ℚ), (27711691091/500000000 : ℚ), (-17687285782001/1000000000000 : ℚ), 7⟩,
    ⟨(157387464527/500000000000 : ℚ), (68271227993/2500000000 : ℚ), (-8876501182423/1000000000000 : ℚ), 6⟩,
    ⟨(79444351611/250000000000 : ℚ), (79174156999/5000000000 : ℚ), (-5250507657143/1000000000000 : ℚ), 6⟩,
    ⟨(321475915249/1000000000000 : ℚ), (1576149983/156250000 : ℚ), (-682973644309/200000000000 : ℚ), 5⟩,
    ⟨(325834836807/1000000000000 : ℚ), (68224046943/10000000000 : ℚ), (-589732453527/250000000000 : ℚ), 5⟩,
    ⟨(1033788101/3125000000 : ℚ), (48025927151/10000000000 : ℚ), (-169624927757/100000000000 : ℚ), 4⟩,
    ⟨(67272009427/200000000000 : ℚ), (17367673847/5000000000 : ℚ), (-1253194449979/1000000000000 : ℚ), 4⟩,
    ⟨(342424972377/1000000000000 : ℚ), (25571021593/10000000000 : ℚ), (-471181836339/500000000000 : ℚ), 4⟩,
    ⟨(348948559499/1000000000000 : ℚ), (19015163471/10000000000 : ℚ), (-715873019679/1000000000000 : ℚ), 4⟩,
    ⟨(355867982793/1000000000000 : ℚ), (14183810079/10000000000 : ℚ), (-54570790863/100000000000 : ℚ), 3⟩,
    ⟨(90779151107/250000000000 : ℚ), (2633691653/2500000000 : ℚ), (-41459588433/100000000000 : ℚ), 3⟩,
    ⟨(370624616217/1000000000000 : ℚ), (3860575201/5000000000 : ℚ), (-6228437301/20000000000 : ℚ), 3⟩,
    ⟨(378319711901/1000000000000 : ℚ), (5513156211/10000000000 : ℚ), (-228774531111/1000000000000 : ℚ), 3⟩,
    ⟨(386127783503/1000000000000 : ℚ), (1877010923/5000000000 : ℚ), (-80781269019/500000000000 : ℚ), 3⟩,
    ⟨(24623352189/62500000000 : ℚ), (2334129173/10000000000 : ℚ), (-53099421401/500000000000 : ℚ), 3⟩,
    ⟨(3214253653/8000000000 : ℚ), (23503787/200000000 : ℚ), (-15025351609/250000000000 : ℚ), 3⟩,
    ⟨(40947680231/100000000000 : ℚ), (110134147/5000000000 : ℚ), (-21377410599/1000000000000 : ℚ), 3⟩,
    ⟨(208492407049/500000000000 : ℚ), (-572684043/10000000000 : ℚ), (5691125421/500000000000 : ℚ), 3⟩,
    ⟨(212116717867/500000000000 : ℚ), (-247027279/2000000000 : ℚ), (313921079/8000000000 : ℚ), 2⟩,
    ⟨(431152859027/1000000000000 : ℚ), (-89545019/500000000 : ℚ), (63005882997/1000000000000 : ℚ), 2⟩,
    ⟨(8753528923/20000000000 : ℚ), (-2258156651/10000000000 : ℚ), (83301449597/1000000000000 : ℚ), 2⟩,
    ⟨(443741371391/1000000000000 : ℚ), (-2650883103/10000000000 : ℚ), (10060738403/100000000000 : ℚ), 2⟩,
    ⟨(224644613103/500000000000 : ℚ), (-2979876969/10000000000 : ℚ), (57648110331/500000000000 : ℚ), 2⟩,
    ⟨(11356664543/25000000000 : ℚ), (-325349589/1000000000 : ℚ), (25531385157/200000000000 : ℚ), 2⟩,
    ⟨(458625503277/1000000000000 : ℚ), (-869550243/2500000000 : ℚ), (68956510691/500000000000 : ℚ), 2⟩,
    ⟨(231162006041/500000000000 : ℚ), (-731791539/2000000000 : ℚ), (146236144637/1000000000000 : ℚ), 2⟩,
    ⟨(3635363199/7812500000 : ℚ), (-1899766339/5000000000 : ℚ), (76378117113/500000000000 : ℚ), 2⟩,
    ⟨(467604019949/1000000000000 : ℚ), (-3902712281/10000000000 : ℚ), (78784574673/500000000000 : ℚ), 2⟩,
    ⟨(29320916853/62500000000 : ℚ), (-1985230413/5000000000 : ℚ), (160742267501/1000000000000 : ℚ), 2⟩,
    ⟨(234951848789/500000000000 : ℚ), (-4004030453/10000000000 : ℚ), (40579605977/250000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-4008212537/10000000000 : ℚ), (40628740421/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (60136331791/200000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control455.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control455.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate455

-- Control456
namespace DiagonalRamsey.JointInheritedCertificate456
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(317715586999/1000000000000 : ℚ), (3646484696493/2500000000 : ℚ), (-116061797811691/250000000000 : ℚ), 12⟩,
    ⟨(318496559879/1000000000000 : ℚ), (199332322981/1250000000 : ℚ), (-25653621540143/500000000000 : ℚ), 9⟩,
    ⟨(320050984443/1000000000000 : ℚ), (279564210039/5000000000 : ℚ), (-2283993624521/125000000000 : ℚ), 7⟩,
    ⟨(161181945367/500000000000 : ℚ), (68886179027/2500000000 : ℚ), (-917026296207/100000000000 : ℚ), 6⟩,
    ⟨(325413004199/1000000000000 : ℚ), (159806950821/10000000000 : ℚ), (-2712285717783/500000000000 : ℚ), 6⟩,
    ⟨(329168960209/1000000000000 : ℚ), (5091314391/500000000 : ℚ), (-3528356569917/1000000000000 : ℚ), 5⟩,
    ⟨(333595586853/1000000000000 : ℚ), (68886592667/10000000000 : ℚ), (-1218797229083/500000000000 : ℚ), 5⟩,
    ⟨(338650253299/1000000000000 : ℚ), (24253639727/5000000000 : ℚ), (-1753081806083/1000000000000 : ℚ), 4⟩,
    ⟨(43035535043/125000000000 : ℚ), (2193526917/625000000 : ℚ), (-647726528209/500000000000 : ℚ), 4⟩,
    ⟨(87610852307/250000000000 : ℚ), (12924285181/5000000000 : ℚ), (-4872101661/5000000000 : ℚ), 4⟩,
    ⟨(178534162087/500000000000 : ℚ), (3846529541/2000000000 : ℚ), (-185129563871/250000000000 : ℚ), 4⟩,
    ⟨(91023805907/250000000000 : ℚ), (3589231557/2500000000 : ℚ), (-564806783217/1000000000000 : ℚ), 3⟩,
    ⟨(92864108677/250000000000 : ℚ), (1067440733/1000000000 : ℚ), (-3355020453/7812500000 : ℚ), 3⟩,
    ⟨(11846283279/31250000000 : ℚ), (3917553433/5000000000 : ℚ), (-322943068841/1000000000000 : ℚ), 3⟩,
    ⟨(386895684929/1000000000000 : ℚ), (350446401/625000000 : ℚ), (-118825712593/500000000000 : ℚ), 3⟩,
    ⟨(394825035649/1000000000000 : ℚ), (479039571/1250000000 : ℚ), (-168307481621/1000000000000 : ℚ), 3⟩,
    ⟨(402792753107/1000000000000 : ℚ), (2399992603/10000000000 : ℚ), (-111204936399/1000000000000 : ℚ), 3⟩,
    ⟨(102680525957/250000000000 : ℚ), (1231141823/10000000000 : ℚ), (-6367561463/100000000000 : ℚ), 3⟩,
    ⟨(418536723829/1000000000000 : ℚ), (268281833/10000000000 : ℚ), (-297040851/12500000000 : ℚ), 3⟩,
    ⟨(6658771157/15625000000 : ℚ), (-66381363/1250000000 : ℚ), (9988707571/1000000000000 : ℚ), 3⟩,
    ⟨(54190320641/125000000000 : ℚ), (-119864161/1000000000 : ℚ), (38678950861/1000000000000 : ℚ), 2⟩,
    ⟨(220274732291/500000000000 : ℚ), (-1758547171/10000000000 : ℚ), (6314484367/100000000000 : ℚ), 2⟩,
    ⟨(55896797441/125000000000 : ℚ), (-2229140217/10000000000 : ℚ), (84029876333/1000000000000 : ℚ), 2⟩,
    ⟨(113333377103/250000000000 : ℚ), (-1312275011/5000000000 : ℚ), (12728930051/125000000000 : ℚ), 2⟩,
    ⟨(458967535457/1000000000000 : ℚ), (-73892343/250000000 : ℚ), (116935302647/1000000000000 : ℚ), 2⟩,
    ⟨(464022201903/1000000000000 : ℚ), (-80775601/250000000 : ℚ), (25928168407/200000000000 : ℚ), 2⟩,
    ⟨(117112207137/250000000000 : ℚ), (-3457077293/10000000000 : ℚ), (140179756229/1000000000000 : ℚ), 2⟩,
    ⟨(472204784557/1000000000000 : ℚ), (-909719491/2500000000 : ℚ), (148730054677/1000000000000 : ℚ), 2⟩,
    ⟨(237626949011/500000000000 : ℚ), (-15120953/40000000 : ℚ), (19428321213/125000000000 : ℚ), 2⟩,
    ⟨(477566804313/1000000000000 : ℚ), (-3883978741/10000000000 : ℚ), (160368817771/1000000000000 : ℚ), 2⟩,
    ⟨(479121228877/1000000000000 : ℚ), (-3952088183/10000000000 : ℚ), (81813387863/500000000000 : ℚ), 2⟩,
    ⟨(239951100879/500000000000 : ℚ), (-3985834419/10000000000 : ℚ), (8262247263/50000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3990038401/10000000000 : ℚ), (82723357909/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (294933499137/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control456.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control456.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate456

-- Control457
namespace DiagonalRamsey.JointInheritedCertificate457
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13970418553/62500000000 : ℚ), (13164044173457/10000000000 : ℚ), (-73707572368693/250000000000 : ℚ), 12⟩,
    ⟨(56033833341/250000000000 : ℚ), (89842262123/625000000 : ℚ), (-8144710536737/250000000000 : ℚ), 9⟩,
    ⟨(45069348979/200000000000 : ℚ), (251557951581/5000000000 : ℚ), (-5799274094447/500000000000 : ℚ), 7⟩,
    ⟨(45429852977/200000000000 : ℚ), (247396612367/10000000000 : ℚ), (-1454509054803/250000000000 : ℚ), 6⟩,
    ⟨(229525534081/1000000000000 : ℚ), (71557923871/5000000000 : ℚ), (-343896920501/100000000000 : ℚ), 6⟩,
    ⟨(3632072933/15625000000 : ℚ), (90924444169/10000000000 : ℚ), (-2234416056121/1000000000000 : ℚ), 5⟩,
    ⟨(5897561897/25000000000 : ℚ), (61304070297/10000000000 : ℚ), (-1541335535319/1000000000000 : ℚ), 5⟩,
    ⟨(29980216881/125000000000 : ℚ), (5374634709/1250000000 : ℚ), (-276550454273/250000000000 : ℚ), 4⟩,
    ⟨(48846501599/200000000000 : ℚ), (30961213017/10000000000 : ℚ), (-12736014061/15625000000 : ℚ), 4⟩,
    ⟨(249032509179/1000000000000 : ℚ), (4533572823/2000000000 : ℚ), (-610707097249/1000000000000 : ℚ), 4⟩,
    ⟨(63548877991/250000000000 : ℚ), (2092228489/1250000000 : ℚ), (-28849813139/62500000000 : ℚ), 4⟩,
    ⟨(259671793811/1000000000000 : ℚ), (12368357629/10000000000 : ℚ), (-174699582527/500000000000 : ℚ), 3⟩,
    ⟨(66352153783/250000000000 : ℚ), (9067457833/10000000000 : ℚ), (-52557217737/200000000000 : ℚ), 3⟩,
    ⟨(271350727201/1000000000000 : ℚ), (3260330987/5000000000 : ℚ), (-194470467447/1000000000000 : ℚ), 3⟩,
    ⟨(277440904231/1000000000000 : ℚ), (4519878993/10000000000 : ℚ), (-139595433181/1000000000000 : ℚ), 3⟩,
    ⟨(35452561811/125000000000 : ℚ), (730838019/2500000000 : ℚ), (-47413347849/500000000000 : ℚ), 3⟩,
    ⟨(14491499257/50000000000 : ℚ), (1632113089/10000000000 : ℚ), (-1806792821/31250000000 : ℚ), 3⟩,
    ⟨(296009575397/1000000000000 : ℚ), (143902059/2500000000 : ℚ), (-3360043587/125000000000 : ℚ), 3⟩,
    ⟨(302099752427/1000000000000 : ℚ), (-148682799/5000000000 : ℚ), (-156209691/200000000000 : ℚ), 3⟩,
    ⟨(308041864497/1000000000000 : ℚ), (-256134729/2500000000 : ℚ), (4279501623/200000000000 : ℚ), 3⟩,
    ⟨(313778685817/1000000000000 : ℚ), (-408519229/2500000000 : ℚ), (20172395071/500000000000 : ℚ), 3⟩,
    ⟨(19953435479/62500000000 : ℚ), (-2147233933/10000000000 : ℚ), (11316861613/200000000000 : ℚ), 2⟩,
    ⟨(324417970449/1000000000000 : ℚ), (-322523981/1250000000 : ℚ), (7051653577/100000000000 : ℚ), 2⟩,
    ⟨(329217971633/1000000000000 : ℚ), (-2945355239/10000000000 : ℚ), (4122470257/50000000000 : ℚ), 2⟩,
    ⟨(16680437229/50000000000 : ℚ), (-1626138811/5000000000 : ℚ), (92620341509/1000000000000 : ℚ), 2⟩,
    ⟨(84387000937/250000000000 : ℚ), (-877083099/2500000000 : ℚ), (50606211727/500000000000 : ℚ), 2⟩,
    ⟨(85249452979/250000000000 : ℚ), (-743840789/2000000000 : ℚ), (3386449501/31250000000 : ℚ), 2⟩,
    ⟨(343924945547/1000000000000 : ℚ), (-3889249641/10000000000 : ℚ), (114189602599/1000000000000 : ℚ), 2⟩,
    ⟨(346301214743/1000000000000 : ℚ), (-2010883649/5000000000 : ℚ), (29690716453/250000000000 : ℚ), 2⟩,
    ⟨(348103734733/1000000000000 : ℚ), (-4119191791/10000000000 : ℚ), (30536357339/250000000000 : ℚ), 2⟩,
    ⟨(43664393283/125000000000 : ℚ), (-4183237027/10000000000 : ℚ), (124378735863/1000000000000 : ℚ), 2⟩,
    ⟨(17496189139/50000000000 : ℚ), (-1053748577/2500000000 : ℚ), (125489030817/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-2109475837/5000000000 : ℚ), (62813761761/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (46019442979/125000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control457.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control457.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate457

-- Control458
namespace DiagonalRamsey.JointInheritedCertificate458
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(122291801663/500000000000 : ℚ), (13453643738897/10000000000 : ℚ), (-41211055869869/125000000000 : ℚ), 12⟩,
    ⟨(245235277331/1000000000000 : ℚ), (734743554339/5000000000 : ℚ), (-1821595005659/50000000000 : ℚ), 9⟩,
    ⟨(246532349363/1000000000000 : ℚ), (10290425519/200000000 : ℚ), (-12971207318729/1000000000000 : ℚ), 7⟩,
    ⟨(248462327911/1000000000000 : ℚ), (63281722351/2500000000 : ℚ), (-6507331642627/1000000000000 : ℚ), 6⟩,
    ⟨(125503313113/500000000000 : ℚ), (29302566643/2000000000 : ℚ), (-3847057846539/1000000000000 : ℚ), 6⟩,
    ⟨(254140741323/1000000000000 : ℚ), (93142547889/10000000000 : ℚ), (-100006878407/40000000000 : ℚ), 5⟩,
    ⟨(128917244981/500000000000 : ℚ), (62846387479/10000000000 : ℚ), (-1725243258463/1000000000000 : ℚ), 5⟩,
    ⟨(65513074831/250000000000 : ℚ), (44117616801/10000000000 : ℚ), (-619385980537/500000000000 : ℚ), 4⟩,
    ⟨(266753549599/1000000000000 : ℚ), (31802023653/10000000000 : ℚ), (-182676059211/200000000000 : ℚ), 4⟩,
    ⟨(33986620647/125000000000 : ℚ), (1165729961/500000000 : ℚ), (-684951020247/1000000000000 : ℚ), 4⟩,
    ⟨(11096842027/40000000000 : ℚ), (17245206547/10000000000 : ℚ), (-518358201841/1000000000000 : ℚ), 4⟩,
    ⟨(28328456761/100000000000 : ℚ), (6386483957/5000000000 : ℚ), (-393052865639/1000000000000 : ℚ), 3⟩,
    ⟨(72356761777/250000000000 : ℚ), (9394679673/10000000000 : ℚ), (-74091783229/250000000000 : ℚ), 3⟩,
    ⟨(73947333433/250000000000 : ℚ), (3394318209/5000000000 : ℚ), (-44030154637/200000000000 : ℚ), 3⟩,
    ⟨(151155077593/500000000000 : ℚ), (948379457/2000000000 : ℚ), (-4967849521/31250000000 : ℚ), 3⟩,
    ⟨(154463356197/500000000000 : ℚ), (3109353567/10000000000 : ℚ), (-109098202211/1000000000000 : ℚ), 3⟩,
    ⟨(78893821073/250000000000 : ℚ), (1789657931/10000000000 : ℚ), (-13581133591/200000000000 : ℚ), 3⟩,
    ⟨(644383683/2000000000 : ℚ), (355264293/5000000000 : ℚ), (-8376271673/250000000000 : ℚ), 3⟩,
    ⟨(164356331477/500000000000 : ℚ), (-18051769/1000000000 : ℚ), (-2256948139/500000000000 : ℚ), 3⟩,
    ⟨(335074949579/1000000000000 : ℚ), (-14408999/156250000 : ℚ), (20095376621/1000000000000 : ℚ), 3⟩,
    ⟨(85304357269/250000000000 : ℚ), (-1543348627/10000000000 : ℚ), (20547916797/500000000000 : ℚ), 3⟩,
    ⟨(347080946011/1000000000000 : ℚ), (-2065860391/10000000000 : ℚ), (3692187329/62500000000 : ℚ), 2⟩,
    ⟨(35260903151/100000000000 : ℚ), (-3132923/12500000 : ℚ), (9310346581/125000000000 : ℚ), 2⟩,
    ⟨(22359277943/62500000000 : ℚ), (-89923041/312500000 : ℚ), (21916378053/250000000000 : ℚ), 2⟩,
    ⟨(181224848681/500000000000 : ℚ), (-159464349/500000000 : ℚ), (49445310467/500000000000 : ℚ), 2⟩,
    ⟨(91666876681/250000000000 : ℚ), (-68983583/200000000 : ℚ), (54182297943/500000000000 : ℚ), 2⟩,
    ⟨(370361255363/1000000000000 : ℚ), (-3663070227/10000000000 : ℚ), (11624641659/100000000000 : ℚ), 2⟩,
    ⟨(373495370461/1000000000000 : ℚ), (-3835452043/10000000000 : ℚ), (61328788007/500000000000 : ℚ), 2⟩,
    ⟨(15041586751/40000000000 : ℚ), (-992431477/2500000000 : ℚ), (127689620657/1000000000000 : ℚ), 2⟩,
    ⟨(377969647323/1000000000000 : ℚ), (-813680837/2000000000 : ℚ), (26281958983/200000000000 : ℚ), 2⟩,
    ⟨(94816679839/250000000000 : ℚ), (-2066627961/5000000000 : ℚ), (133865187111/1000000000000 : ℚ), 2⟩,
    ⟨(4748979917/12500000000 : ℚ), (-416540781/1000000000 : ℚ), (67542823649/500000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4169414101/10000000000 : ℚ), (33809467499/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (87891263193/250000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control458.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control458.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate458

-- Control459
namespace DiagonalRamsey.JointInheritedCertificate459
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129397585239/500000000000 : ℚ), (13652336539909/10000000000 : ℚ), (-88496958944689/250000000000 : ℚ), 12⟩,
    ⟨(64868675143/250000000000 : ℚ), (372862136619/2500000000 : ℚ), (-39117846750613/1000000000000 : ℚ), 9⟩,
    ⟨(260827216513/1000000000000 : ℚ), (522345248947/10000000000 : ℚ), (-6964043688759/500000000000 : ℚ), 7⟩,
    ⟨(52567938567/200000000000 : ℚ), (64264289321/2500000000 : ℚ), (-6987847374011/1000000000000 : ℚ), 6⟩,
    ⟨(265492748289/1000000000000 : ℚ), (148842197757/10000000000 : ℚ), (-103288784187/25000000000 : ℚ), 6⟩,
    ⟨(268760832501/1000000000000 : ℚ), (23665760623/2500000000 : ℚ), (-167840791421/62500000000 : ℚ), 5⟩,
    ⟨(136306236017/500000000000 : ℚ), (12780636117/2000000000 : ℚ), (-231684466427/125000000000 : ℚ), 5⟩,
    ⟨(138505286747/500000000000 : ℚ), (22442490047/5000000000 : ℚ), (-1331226117091/1000000000000 : ℚ), 4⟩,
    ⟨(281912780759/1000000000000 : ℚ), (8094353849/2500000000 : ℚ), (-981937711851/1000000000000 : ℚ), 4⟩,
    ⟨(287271882893/1000000000000 : ℚ), (23756785467/10000000000 : ℚ), (-147353446767/200000000000 : ℚ), 4⟩,
    ⟨(146518134407/500000000000 : ℚ), (17591730987/10000000000 : ℚ), (-34874956759/62500000000 : ℚ), 4⟩,
    ⟨(149575212167/500000000000 : ℚ), (13048935827/10000000000 : ℚ), (-84713949397/200000000000 : ℚ), 3⟩,
    ⟨(305555466793/1000000000000 : ℚ), (9617507421/10000000000 : ℚ), (-319876191109/1000000000000 : ℚ), 3⟩,
    ⟨(31218971213/100000000000 : ℚ), (6970774613/10000000000 : ℚ), (-238166770399/1000000000000 : ℚ), 3⟩,
    ⟨(318989268937/1000000000000 : ℚ), (4892469701/10000000000 : ℚ), (-172607423759/1000000000000 : ℚ), 3⟩,
    ⟨(81472163441/250000000000 : ℚ), (1617592317/5000000000 : ℚ), (-59595945877/500000000000 : ℚ), 3⟩,
    ⟨(332821421763/1000000000000 : ℚ), (1895939881/10000000000 : ℚ), (-75099191909/1000000000000 : ℚ), 3⟩,
    ⟨(33972080659/100000000000 : ℚ), (200317013/2500000000 : ℚ), (-38300287563/1000000000000 : ℚ), 3⟩,
    ⟨(346520363397/1000000000000 : ℚ), (-102192563/10000000000 : ℚ), (-1827323763/250000000000 : ℚ), 3⟩,
    ⟨(176577304367/500000000000 : ℚ), (-213449783/2500000000 : ℚ), (18978458223/1000000000000 : ℚ), 3⟩,
    ⟨(359559651193/1000000000000 : ℚ), (-74148023/500000000 : ℚ), (258715949/6250000000 : ℚ), 3⟩,
    ⟨(365673806713/1000000000000 : ℚ), (-2011893033/10000000000 : ℚ), (60571311511/1000000000000 : ℚ), 2⟩,
    ⟨(185719096317/500000000000 : ℚ), (-1228765089/5000000000 : ℚ), (38496639931/500000000000 : ℚ), 2⟩,
    ⟨(23549830923/62500000000 : ℚ), (-708216851/2500000000 : ℚ), (22758441629/250000000000 : ℚ), 2⟩,
    ⟨(381699502033/1000000000000 : ℚ), (-1573962413/5000000000 : ℚ), (25745310543/250000000000 : ℚ), 2⟩,
    ⟨(386097603493/1000000000000 : ℚ), (-852611157/2500000000 : ℚ), (14132335529/125000000000 : ℚ), 2⟩,
    ⟨(194974621513/500000000000 : ℚ), (-113325057/312500000 : ℚ), (3035948341/25000000000 : ℚ), 2⟩,
    ⟨(196608663619/500000000000 : ℚ), (-3800381007/10000000000 : ℚ), (128250446597/1000000000000 : ℚ), 2⟩,
    ⟨(98967595673/250000000000 : ℚ), (-983963733/2500000000 : ℚ), (133595377103/1000000000000 : ℚ), 2⟩,
    ⟨(198941429507/500000000000 : ℚ), (-126105921/312500000 : ℚ), (137545624941/1000000000000 : ℚ), 2⟩,
    ⟨(79847074991/200000000000 : ℚ), (-410079177/1000000000 : ℚ), (28030455991/200000000000 : ℚ), 2⟩,
    ⟨(399914905049/1000000000000 : ℚ), (-826642593/2000000000 : ℚ), (70723874339/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-2068626321/5000000000 : ℚ), (35402329639/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (21276597627/62500000000 : ℚ)
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
theorem certOK : JointInheritedControls.control459.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control459.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate459

-- Control460
namespace DiagonalRamsey.JointInheritedCertificate460
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289656176453/1000000000000 : ℚ), (7689069045287/5000000000 : ℚ), (-55774070653891/125000000000 : ℚ), 12⟩,
    ⟨(145165781533/500000000000 : ℚ), (1681827220873/10000000000 : ℚ), (-49300211113849/1000000000000 : ℚ), 9⟩,
    ⟨(291675831951/1000000000000 : ℚ), (589893714499/10000000000 : ℚ), (-8774338011411/500000000000 : ℚ), 7⟩,
    ⟨(146838018531/500000000000 : ℚ), (29076917447/1000000000 : ℚ), (-8800617126729/1000000000000 : ℚ), 6⟩,
    ⟨(296312915331/1000000000000 : ℚ), (526983483/31250000 : ℚ), (-5200382395839/1000000000000 : ℚ), 6⟩,
    ⟨(299561072179/1000000000000 : ℚ), (107414668607/10000000000 : ℚ), (-3377724567571/1000000000000 : ℚ), 5⟩,
    ⟨(303389226081/1000000000000 : ℚ), (36305197753/5000000000 : ℚ), (-291149163301/125000000000 : ℚ), 5⟩,
    ⟨(15388025491/50000000000 : ℚ), (25529867209/5000000000 : ℚ), (-1671100075819/1000000000000 : ℚ), 4⟩,
    ⟨(156316412773/500000000000 : ℚ), (36864533749/10000000000 : ℚ), (-307762722029/250000000000 : ℚ), 4⟩,
    ⟨(317959250193/1000000000000 : ℚ), (27065173037/10000000000 : ℚ), (-230566958771/250000000000 : ℚ), 4⟩,
    ⟨(161844243691/500000000000 : ℚ), (10023079641/5000000000 : ℚ), (-5577673627/8000000000 : ℚ), 4⟩,
    ⟨(164882680713/500000000000 : ℚ), (7433181413/5000000000 : ℚ), (-66007639527/125000000000 : ℚ), 3⟩,
    ⟨(168065674353/500000000000 : ℚ), (10948343751/10000000000 : ℚ), (-310683891/781250000 : ℚ), 3⟩,
    ⟨(68545028257/200000000000 : ℚ), (7922542761/10000000000 : ℚ), (-147508715389/500000000000 : ℚ), 3⟩,
    ⟨(69896647467/200000000000 : ℚ), (2772020607/5000000000 : ℚ), (-106365115327/500000000000 : ℚ), 3⟩,
    ⟨(178170276349/500000000000 : ℚ), (56964121/156250000 : ℚ), (-911002327/6250000000 : ℚ), 3⟩,
    ⟨(363231047677/1000000000000 : ℚ), (2110614987/10000000000 : ℚ), (-22637059/250000000 : ℚ), 3⟩,
    ⟨(370088363039/1000000000000 : ℚ), (26726427/312500000 : ℚ), (-22266131233/500000000000 : ℚ), 3⟩,
    ⟨(376846459089/1000000000000 : ℚ), (-1415367/78125000 : ℚ), (-233416847/40000000000 : ℚ), 3⟩,
    ⟨(95860062917/250000000000 : ℚ), (-1043510141/10000000000 : ℚ), (26938844177/1000000000000 : ℚ), 3⟩,
    ⟨(97451559737/250000000000 : ℚ), (-353075843/2000000000 : ℚ), (54842825721/1000000000000 : ℚ), 3⟩,
    ⟨(12371347281/31250000000 : ℚ), (-474438849/2000000000 : ℚ), (39338777461/500000000000 : ℚ), 3⟩,
    ⟨(401612350181/1000000000000 : ℚ), (-2883360463/10000000000 : ℚ), (19811522993/200000000000 : ℚ), 2⟩,
    ⟨(406938774829/1000000000000 : ℚ), (-662758439/2000000000 : ℚ), (116457152391/1000000000000 : ℚ), 2⟩,
    ⟨(205905545277/500000000000 : ℚ), (-1837502137/5000000000 : ℚ), (131243095829/1000000000000 : ℚ), 2⟩,
    ⟨(208091187147/500000000000 : ℚ), (-3975904051/10000000000 : ℚ), (143699499139/1000000000000 : ℚ), 2⟩,
    ⟨(84002105639/200000000000 : ℚ), (-263960771/625000000 : ℚ), (77022803897/500000000000 : ℚ), 2⟩,
    ⟨(423258685043/1000000000000 : ℚ), (-138209147/312500000 : ℚ), (81224695733/500000000000 : ℚ), 2⟩,
    ⟨(425895563313/1000000000000 : ℚ), (-2288934789/5000000000 : ℚ), (84518860409/500000000000 : ℚ), 2⟩,
    ⟨(53486971053/125000000000 : ℚ), (-4691862753/10000000000 : ℚ), (34780797637/200000000000 : ℚ), 2⟩,
    ⟨(107310009327/250000000000 : ℚ), (-4766757279/10000000000 : ℚ), (17711371203/100000000000 : ℚ), 2⟩,
    ⟨(429915423921/1000000000000 : ℚ), (-4803881481/10000000000 : ℚ), (178708483207/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1202126759/2500000000 : ℚ), (22363420311/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (75759686731/250000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control460.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control460.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate460

-- Control461
namespace DiagonalRamsey.JointInheritedCertificate461
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(297218438031/1000000000000 : ℚ), (15510532515487/10000000000 : ℚ), (-461777231078889/1000000000000 : ℚ), 12⟩,
    ⟨(297905555947/1000000000000 : ℚ), (848234137561/5000000000 : ℚ), (-25511536965837/500000000000 : ℚ), 9⟩,
    ⟨(149636587229/500000000000 : ℚ), (595115088487/10000000000 : ℚ), (-18162603320091/1000000000000 : ℚ), 7⟩,
    ⟨(301308122651/1000000000000 : ℚ), (916862731/31250000 : ℚ), (-9109032524047/1000000000000 : ℚ), 6⟩,
    ⟨(15199540143/50000000000 : ℚ), (170194751361/10000000000 : ℚ), (-269154263343/50000000000 : ℚ), 6⟩,
    ⟨(307295379411/1000000000000 : ℚ), (108435521117/10000000000 : ℚ), (-874201336927/250000000000 : ℚ), 5⟩,
    ⟨(9724688357/31250000000 : ℚ), (73322008991/10000000000 : ℚ), (-2411695907199/1000000000000 : ℚ), 5⟩,
    ⟨(315637239309/1000000000000 : ℚ), (12894548701/2500000000 : ℚ), (-27041680537/15625000000 : ℚ), 4⟩,
    ⟨(160297092993/500000000000 : ℚ), (37254754107/10000000000 : ℚ), (-318826259371/250000000000 : ℚ), 4⟩,
    ⟨(326013129347/1000000000000 : ℚ), (27366293101/10000000000 : ℚ), (-955799337701/1000000000000 : ℚ), 4⟩,
    ⟨(165920941003/500000000000 : ℚ), (20283185047/10000000000 : ℚ), (-36147395993/50000000000 : ℚ), 4⟩,
    ⟨(338024309889/1000000000000 : ℚ), (15056018703/10000000000 : ℚ), (-136991256113/250000000000 : ℚ), 3⟩,
    ⟨(68900174567/200000000000 : ℚ), (11102236497/10000000000 : ℚ), (-413103008189/1000000000000 : ℚ), 3⟩,
    ⟨(87802299501/250000000000 : ℚ), (4024487611/5000000000 : ℚ), (-76735325721/250000000000 : ℚ), 3⟩,
    ⟨(71616936111/200000000000 : ℚ), (1412275901/2500000000 : ℚ), (-110932617369/500000000000 : ℚ), 3⟩,
    ⟨(182530552917/500000000000 : ℚ), (3733957549/10000000000 : ℚ), (-38161035673/250000000000 : ℚ), 3⟩,
    ⟨(93017821763/250000000000 : ℚ), (2185536799/10000000000 : ℚ), (-95593258659/1000000000000 : ℚ), 3⟩,
    ⟨(379047712331/1000000000000 : ℚ), (919524109/10000000000 : ℚ), (-48060674137/1000000000000 : ℚ), 3⟩,
    ⟨(192961597441/500000000000 : ℚ), (-125427189/10000000000 : ℚ), (-1012858447/125000000000 : ℚ), 3⟩,
    ⟨(392631520051/1000000000000 : ℚ), (-994644579/10000000000 : ℚ), (25726464929/1000000000000 : ℚ), 3⟩,
    ⟨(399108082997/1000000000000 : ℚ), (-1722060361/10000000000 : ℚ), (13629340713/250000000000 : ℚ), 3⟩,
    ⟨(2533065693/6250000000 : ℚ), (-2333355603/10000000000 : ℚ), (79099837361/1000000000000 : ℚ), 3⟩,
    ⟨(411119263539/1000000000000 : ℚ), (-2848139763/10000000000 : ℚ), (20022186103/200000000000 : ℚ), 2⟩,
    ⟨(4165382069/10000000000 : ℚ), (-5250381/16000000 : ℚ), (2951057919/25000000000 : ℚ), 2⟩,
    ⟨(421495153577/1000000000000 : ℚ), (-3645042939/10000000000 : ℚ), (133274663901/1000000000000 : ℚ), 2⟩,
    ⟨(212971182731/500000000000 : ℚ), (-3947812551/10000000000 : ℚ), (73051405261/500000000000 : ℚ), 2⟩,
    ⟨(17193480539/40000000000 : ℚ), (-839351521/2000000000 : ℚ), (39188611941/250000000000 : ℚ), 2⟩,
    ⟨(216570795013/500000000000 : ℚ), (-4397224279/10000000000 : ℚ), (165404110501/1000000000000 : ℚ), 2⟩,
    ⟨(108956067559/250000000000 : ℚ), (-4553265337/10000000000 : ℚ), (86091849437/500000000000 : ℚ), 2⟩,
    ⟨(109464804607/250000000000 : ℚ), (-4667876873/10000000000 : ℚ), (177190355899/1000000000000 : ℚ), 2⟩,
    ⟨(439226836939/1000000000000 : ℚ), (-474316983/1000000000 : ℚ), (180492260513/1000000000000 : ℚ), 2⟩,
    ⟨(87982790971/200000000000 : ℚ), (-597561147/1250000000 : ℚ), (91066353277/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-957027787/2000000000 : ℚ), (182337275923/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (297062700113/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control461.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control461.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate461

-- Control462
namespace DiagonalRamsey.JointInheritedCertificate462
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30472711981/100000000000 : ℚ), (7814970116409/5000000000 : ℚ), (-477082245168401/1000000000000 : ℚ), 12⟩,
    ⟨(488681963/1600000000 : ℚ), (341933602747/2000000000 : ℚ), (-5271468608049/100000000000 : ℚ), 9⟩,
    ⟨(306817708221/1000000000000 : ℚ), (299909375313/5000000000 : ℚ), (-9382576216989/500000000000 : ℚ), 7⟩,
    ⟨(308888163123/1000000000000 : ℚ), (295759688701/10000000000 : ℚ), (-1176443162389/125000000000 : ℚ), 6⟩,
    ⟨(311617651969/1000000000000 : ℚ), (6863846673/400000000 : ℚ), (-43454213713/7812500000 : ℚ), 6⟩,
    ⟨(9843121509/31250000000 : ℚ), (10935069209/1000000000 : ℚ), (-451672348253/125000000000 : ℚ), 5⟩,
    ⟨(159471245953/500000000000 : ℚ), (36979173997/5000000000 : ℚ), (-311543526589/125000000000 : ℚ), 5⟩,
    ⟨(161733650393/500000000000 : ℚ), (1301010439/250000000 : ℚ), (-357759502311/200000000000 : ℚ), 4⟩,
    ⟨(328510738543/1000000000000 : ℚ), (18800709851/5000000000 : ℚ), (-329599511649/250000000000 : ℚ), 4⟩,
    ⟨(66804846823/200000000000 : ℚ), (2763271303/1000000000 : ℚ), (-123545497779/125000000000 : ℚ), 4⟩,
    ⟨(169977344763/500000000000 : ℚ), (160093137/78125000 : ℚ), (-186965425107/250000000000 : ℚ), 4⟩,
    ⟨(21640311953/62500000000 : ℚ), (3044432603/2000000000 : ℚ), (-28357547543/50000000000 : ℚ), 3⟩,
    ⟨(88208640059/250000000000 : ℚ), (11236262603/10000000000 : ℚ), (-106973839369/250000000000 : ℚ), 3⟩,
    ⟨(359659935341/1000000000000 : ℚ), (8158375677/10000000000 : ℚ), (-159147620429/500000000000 : ℚ), 3⟩,
    ⟨(366655384467/1000000000000 : ℚ), (2869686903/5000000000 : ℚ), (-230482880399/1000000000000 : ℚ), 3⟩,
    ⟨(23359596101/62500000000 : ℚ), (1904606291/5000000000 : ℚ), (-31810702299/200000000000 : ℚ), 3⟩,
    ⟨(380886035693/1000000000000 : ℚ), (281113969/1250000000 : ℚ), (-50099716549/500000000000 : ℚ), 3⟩,
    ⟨(193992094421/500000000000 : ℚ), (973441907/10000000000 : ℚ), (-12794994663/250000000000 : ℚ), 3⟩,
    ⟨(394979637969/1000000000000 : ℚ), (-790717/100000000 : ℚ), (-78017967/7812500000 : ℚ), 3⟩,
    ⟨(401805013073/1000000000000 : ℚ), (-477177507/5000000000 : ℚ), (4975358013/200000000000 : ℚ), 3⟩,
    ⟨(204197291031/500000000000 : ℚ), (-1686645491/10000000000 : ℚ), (54536426407/1000000000000 : ℚ), 3⟩,
    ⟨(51835610473/125000000000 : ℚ), (-1150930399/5000000000 : ℚ), (79851103693/1000000000000 : ℚ), 3⟩,
    ⟨(84123067839/200000000000 : ℚ), (-1409897823/5000000000 : ℚ), (101479940447/1000000000000 : ℚ), 2⟩,
    ⟨(426128834767/1000000000000 : ℚ), (-3255671409/10000000000 : ℚ), (29982960317/250000000000 : ℚ), 2⟩,
    ⟨(107793068131/250000000000 : ℚ), (-3621246039/10000000000 : ℚ), (1084807841/8000000000 : ℚ), 2⟩,
    ⟨(435697081403/1000000000000 : ℚ), (-1962809799/5000000000 : ℚ), (148792795427/1000000000000 : ℚ), 2⟩,
    ⟨(219829842511/500000000000 : ℚ), (-2087912611/5000000000 : ℚ), (159743277423/1000000000000 : ℚ), 2⟩,
    ⟨(443021921341/1000000000000 : ℚ), (-3419739/7812500 : ℚ), (168633410759/1000000000000 : ℚ), 2⟩,
    ⟨(222875705093/500000000000 : ℚ), (-906807661/2000000000 : ℚ), (175600033841/1000000000000 : ℚ), 2⟩,
    ⟨(3498608321/7812500000 : ℚ), (-2324585687/5000000000 : ℚ), (180743970803/1000000000000 : ℚ), 2⟩,
    ⟨(89842669287/200000000000 : ℚ), (-29529997/62500000 : ℚ), (46034002583/250000000000 : ℚ), 2⟩,
    ⟨(899824907/2000000000 : ℚ), (-4762282779/10000000000 : ℚ), (92910558321/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-595869107/1250000000 : ℚ), (4650781241/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (291131001237/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control462.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control462.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate462
