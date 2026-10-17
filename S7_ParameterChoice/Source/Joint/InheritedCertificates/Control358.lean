import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate358
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300682294999/1000000000000 : ℚ), (13962471208833/10000000000 : ℚ), (-420652428658669/1000000000000 : ℚ), 12⟩,
    ⟨(301497114693/1000000000000 : ℚ), (1525080471889/10000000000 : ℚ), (-46495608065089/1000000000000 : ℚ), 9⟩,
    ⟨(151559453461/500000000000 : ℚ), (534068397871/10000000000 : ℚ), (-16562952947539/1000000000000 : ℚ), 7⟩,
    ⟨(15276602647/50000000000 : ℚ), (65710466641/2500000000 : ℚ), (-8316060322099/1000000000000 : ℚ), 6⟩,
    ⟨(4823645513/15625000000 : ℚ), (76119612353/5000000000 : ℚ), (-4922117311761/1000000000000 : ℚ), 5⟩,
    ⟨(156316024663/500000000000 : ℚ), (96887798273/10000000000 : ℚ), (-3203935898149/1000000000000 : ℚ), 5⟩,
    ⟨(9914078839/31250000000 : ℚ), (65479131379/10000000000 : ℚ), (-69235802047/31250000000 : ℚ), 4⟩,
    ⟨(80631063743/250000000000 : ℚ), (46072589897/10000000000 : ℚ), (-1595235683241/1000000000000 : ℚ), 4⟩,
    ⟨(13136098271/40000000000 : ℚ), (2082488507/625000000 : ℚ), (-590242967911/500000000000 : ℚ), 4⟩,
    ⟨(334828517961/1000000000000 : ℚ), (6134633251/2500000000 : ℚ), (-889488277011/1000000000000 : ℚ), 4⟩,
    ⟨(21358784503/62500000000 : ℚ), (9132795083/5000000000 : ℚ), (-677423407283/1000000000000 : ℚ), 3⟩,
    ⟨(349071992369/1000000000000 : ℚ), (13649266133/10000000000 : ℚ), (-518070038193/1000000000000 : ℚ), 3⟩,
    ⟨(71350446629/200000000000 : ℚ), (10167449267/10000000000 : ℚ), (-98815457819/250000000000 : ℚ), 3⟩,
    ⟨(18235365473/50000000000 : ℚ), (935791873/1250000000 : ℚ), (-298596051623/1000000000000 : ℚ), 3⟩,
    ⟨(372860609581/1000000000000 : ℚ), (5384956233/10000000000 : ℚ), (-221136949439/1000000000000 : ℚ), 3⟩,
    ⟨(381133612769/1000000000000 : ℚ), (742542613/2000000000 : ℚ), (-158120483001/1000000000000 : ℚ), 3⟩,
    ⟨(389446645481/1000000000000 : ℚ), (472879701/2000000000 : ℚ), (-53095393343/500000000000 : ℚ), 3⟩,
    ⟨(39771964867/100000000000 : ℚ), (1264952097/10000000000 : ℚ), (-62932763359/1000000000000 : ℚ), 3⟩,
    ⟨(40587294879/100000000000 : ℚ), (359846523/10000000000 : ℚ), (-26576447603/1000000000000 : ℚ), 2⟩,
    ⟨(82765605021/200000000000 : ℚ), (-6111667/156250000 : ℚ), (209770511/50000000000 : ℚ), 2⟩,
    ⟨(421508265881/1000000000000 : ℚ), (-509050437/5000000000 : ℚ), (3796972631/125000000000 : ℚ), 2⟩,
    ⟨(214419853101/500000000000 : ℚ), (-1543748861/10000000000 : ℚ), (26360520873/500000000000 : ℚ), 2⟩,
    ⟨(435751740289/1000000000000 : ℚ), (-99271593/500000000 : ℚ), (35906030181/500000000000 : ℚ), 2⟩,
    ⟨(17687112059/40000000000 : ℚ), (-589118019/2500000000 : ℚ), (88097536827/1000000000000 : ℚ), 2⟩,
    ⟨(448056003279/1000000000000 : ℚ), (-1333576997/5000000000 : ℚ), (101925263873/1000000000000 : ℚ), 2⟩,
    ⟨(453329735403/1000000000000 : ℚ), (-91419843/312500000 : ℚ), (56782502913/500000000000 : ℚ), 2⟩,
    ⟨(114487052231/250000000000 : ℚ), (-1568732611/5000000000 : ℚ), (61612724233/500000000000 : ℚ), 2⟩,
    ⟨(230933472709/500000000000 : ℚ), (-206748187/625000000 : ℚ), (26213373793/200000000000 : ℚ), 2⟩,
    ⟨(46504820531/100000000000 : ℚ), (-688107551/2000000000 : ℚ), (137210642219/1000000000000 : ℚ), 2⟩,
    ⟨(14608167229/31250000000 : ℚ), (-353781837/1000000000 : ℚ), (141746342171/1000000000000 : ℚ), 2⟩,
    ⟨(469083143557/1000000000000 : ℚ), (-900420873/2500000000 : ℚ), (144736952457/1000000000000 : ℚ), 2⟩,
    ⟨(469897963251/1000000000000 : ℚ), (-3633325823/10000000000 : ℚ), (5848901121/40000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-3637267663/10000000000 : ℚ), (29281554881/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (294098409831/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control358.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control358.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate358
