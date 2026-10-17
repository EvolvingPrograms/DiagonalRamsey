import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate412
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(222015717737/1000000000000 : ℚ), (829937980627/625000000 : ℚ), (-295405295861969/1000000000000 : ℚ), 12⟩,
    ⟨(111315812823/500000000000 : ℚ), (724881786343/5000000000 : ℚ), (-16321702751719/500000000000 : ℚ), 9⟩,
    ⟨(44771501987/200000000000 : ℚ), (507293399079/10000000000 : ℚ), (-11622273924809/1000000000000 : ℚ), 7⟩,
    ⟨(225681564667/1000000000000 : ℚ), (249386681749/10000000000 : ℚ), (-1166101574077/200000000000 : ℚ), 6⟩,
    ⟨(285107779/1250000000 : ℚ), (144231704619/10000000000 : ℚ), (-344680597697/100000000000 : ℚ), 6⟩,
    ⟨(46209665471/200000000000 : ℚ), (18322753479/2000000000 : ℚ), (-2239902454179/1000000000000 : ℚ), 5⟩,
    ⟨(234539350451/1000000000000 : ℚ), (30879280469/5000000000 : ℚ), (-193183161321/125000000000 : ℚ), 5⟩,
    ⟨(59631418007/250000000000 : ℚ), (8662276781/2000000000 : ℚ), (-221894997359/200000000000 : ℚ), 4⟩,
    ⟨(242968901629/1000000000000 : ℚ), (3118683071/1000000000 : ℚ), (-817799659889/1000000000000 : ℚ), 4⟩,
    ⟨(61956562131/250000000000 : ℚ), (11417422237/5000000000 : ℚ), (-612989918979/1000000000000 : ℚ), 4⟩,
    ⟨(15815683363/62500000000 : ℚ), (4216163913/2500000000 : ℚ), (-231786600301/500000000000 : ℚ), 3⟩,
    ⟨(32324080113/125000000000 : ℚ), (2493375443/2000000000 : ℚ), (-21946145209/62500000000 : ℚ), 3⟩,
    ⟨(52879600029/200000000000 : ℚ), (914551141/1000000000 : ℚ), (-132167954199/500000000000 : ℚ), 3⟩,
    ⟨(67602775687/250000000000 : ℚ), (20573701/31250000 : ℚ), (-195864677873/1000000000000 : ℚ), 3⟩,
    ⟨(138287019623/500000000000 : ℚ), (4571384511/10000000000 : ℚ), (-1760732477/12500000000 : ℚ), 3⟩,
    ⟨(282827457193/1000000000000 : ℚ), (1483040587/5000000000 : ℚ), (-23994307967/250000000000 : ℚ), 3⟩,
    ⟨(57822226551/200000000000 : ℚ), (416994823/2500000000 : ℚ), (-11773901789/200000000000 : ℚ), 3⟩,
    ⟨(147682275351/500000000000 : ℚ), (606024369/10000000000 : ℚ), (-27845444081/1000000000000 : ℚ), 3⟩,
    ⟨(301527487201/1000000000000 : ℚ), (-16958557/625000000 : ℚ), (-417116661/250000000000 : ℚ), 3⟩,
    ⟨(307540589803/1000000000000 : ℚ), (-200416673/2000000000 : ℚ), (20579776831/1000000000000 : ℚ), 3⟩,
    ⟨(78336487261/250000000000 : ℚ), (-1614558527/10000000000 : ℚ), (1583588297/40000000000 : ℚ), 2⟩,
    ⟨(318887656141/1000000000000 : ℚ), (-2130146427/10000000000 : ℚ), (55885494051/1000000000000 : ℚ), 2⟩,
    ⟨(20257021339/62500000000 : ℚ), (-2565124449/10000000000 : ℚ), (69868066899/1000000000000 : ℚ), 2⟩,
    ⟨(328969688319/1000000000000 : ℚ), (-293196839/1000000000 : ℚ), (81845676787/1000000000000 : ℚ), 2⟩,
    ⟨(2083830737/6250000000 : ℚ), (-3240285529/10000000000 : ℚ), (92055975683/1000000000000 : ℚ), 2⟩,
    ⟨(337399239497/1000000000000 : ℚ), (-1748745151/5000000000 : ℚ), (25170551967/250000000000 : ℚ), 2⟩,
    ⟨(340890262593/1000000000000 : ℚ), (-3709298673/10000000000 : ℚ), (26966307991/250000000000 : ℚ), 2⟩,
    ⟨(343852366749/1000000000000 : ℚ), (-3880092381/10000000000 : ℚ), (14214065687/125000000000 : ℚ), 2⟩,
    ⟨(346257025281/1000000000000 : ℚ), (-802637587/2000000000 : ℚ), (59152477001/500000000000 : ℚ), 2⟩,
    ⟨(348081080013/1000000000000 : ℚ), (-16444137/40000000 : ℚ), (60850917817/500000000000 : ℚ), 2⟩,
    ⟨(174653482151/500000000000 : ℚ), (-2087677647/5000000000 : ℚ), (24788932081/200000000000 : ℚ), 2⟩,
    ⟨(87480718053/250000000000 : ℚ), (-4207248881/10000000000 : ℚ), (125059706367/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4211223211/10000000000 : ℚ), (978115567/7812500000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (358213080551/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control412.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control412.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate412
