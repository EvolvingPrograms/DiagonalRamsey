import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate680
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(537946294213/1000000000000 : ℚ), (928321817333/500000000 : ℚ), (-199970104513379/200000000000 : ℚ), 13⟩,
    ⟨(134681539211/250000000000 : ℚ), (407675487977/2000000000 : ℚ), (-27623109083059/250000000000 : ℚ), 9⟩,
    ⟨(135069592901/250000000000 : ℚ), (718979558219/10000000000 : ℚ), (-39344268347969/1000000000000 : ℚ), 8⟩,
    ⟨(271293994907/500000000000 : ℚ), (71356160181/2000000000 : ℚ), (-9871416317501/500000000000 : ℚ), 7⟩,
    ⟨(54563276859/100000000000 : ℚ), (20847504887/1000000000 : ℚ), (-5838543558271/500000000000 : ℚ), 6⟩,
    ⟨(549383385047/1000000000000 : ℚ), (66941576761/5000000000 : ℚ), (-7594960709399/1000000000000 : ℚ), 6⟩,
    ⟨(553803718699/1000000000000 : ℚ), (91314207437/10000000000 : ℚ), (-2623955730141/500000000000 : ℚ), 5⟩,
    ⟨(111770239863/200000000000 : ℚ), (3242414357/500000000 : ℚ), (-3776160209191/1000000000000 : ℚ), 5⟩,
    ⟨(564477216899/1000000000000 : ℚ), (75750119/16000000 : ℚ), (-558678861527/200000000000 : ℚ), 5⟩,
    ⟨(285313794913/500000000000 : ℚ), (8803138483/2500000000 : ℚ), (-210514600593/100000000000 : ℚ), 4⟩,
    ⟨(288621543321/500000000000 : ℚ), (662316917/250000000 : ℚ), (-802431814129/500000000000 : ℚ), 4⟩,
    ⟨(36516249781/62500000000 : ℚ), (4007810697/2000000000 : ℚ), (-153774591341/125000000000 : ℚ), 4⟩,
    ⟨(591610742711/1000000000000 : ℚ), (15147371243/10000000000 : ℚ), (-94268931371/100000000000 : ℚ), 4⟩,
    ⟨(299612266791/500000000000 : ℚ), (11365545961/10000000000 : ℚ), (-717579435833/1000000000000 : ℚ), 4⟩,
    ⟨(303514022071/500000000000 : ℚ), (8392904621/10000000000 : ℚ), (-107668086751/200000000000 : ℚ), 3⟩,
    ⟨(614946122317/1000000000000 : ℚ), (6023396419/10000000000 : ℚ), (-15744099381/40000000000 : ℚ), 3⟩,
    ⟨(311451256343/500000000000 : ℚ), (1028041323/2500000000 : ℚ), (-11013531129/40000000000 : ℚ), 3⟩,
    ⟨(630820590861/1000000000000 : ℚ), (2555120607/10000000000 : ℚ), (-177752722113/1000000000000 : ℚ), 3⟩,
    ⟨(638624101421/1000000000000 : ℚ), (127604057/1000000000 : ℚ), (-96581070659/1000000000000 : ℚ), 3⟩,
    ⟨(161559473073/250000000000 : ℚ), (218197921/10000000000 : ℚ), (-28632526753/1000000000000 : ℚ), 3⟩,
    ⟨(653588638507/1000000000000 : ℚ), (-661214233/10000000000 : ℚ), (7128497877/250000000000 : ℚ), 3⟩,
    ⟨(660605548361/1000000000000 : ℚ), (-278974977/2000000000 : ℚ), (76717151301/1000000000000 : ℚ), 3⟩,
    ⟨(667221045177/1000000000000 : ℚ), (-2007966231/10000000000 : ℚ), (58708628781/500000000000 : ℚ), 3⟩,
    ⟨(84171427263/125000000000 : ℚ), (-2520031223/10000000000 : ℚ), (151738141939/1000000000000 : ℚ), 3⟩,
    ⟨(84874679461/125000000000 : ℚ), (-184144111/625000000 : ℚ), (36112081247/200000000000 : ℚ), 3⟩,
    ⟨(42752807269/62500000000 : ℚ), (-824671911/2500000000 : ℚ), (204574853783/1000000000000 : ℚ), 3⟩,
    ⟨(172116312489/250000000000 : ℚ), (-3586449561/10000000000 : ℚ), (224321982799/1000000000000 : ℚ), 3⟩,
    ⟨(692215866413/1000000000000 : ℚ), (-763353793/2000000000 : ℚ), (30027685749/125000000000 : ℚ), 3⟩,
    ⟨(695260645189/1000000000000 : ℚ), (-998780821/2500000000 : ℚ), (1578715117/6250000000 : ℚ), 3⟩,
    ⟨(697570263399/1000000000000 : ℚ), (-1031395993/2500000000 : ℚ), (130839912389/500000000000 : ℚ), 3⟩,
    ⟨(349561239079/500000000000 : ℚ), (-105275791/250000000 : ℚ), (267647008951/1000000000000 : ℚ), 3⟩,
    ⟨(69990234079/100000000000 : ℚ), (-4253306999/10000000000 : ℚ), (135302109981/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-4258570623/10000000000 : ℚ), (67743161991/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (192750256491/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control680.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control680.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate680
