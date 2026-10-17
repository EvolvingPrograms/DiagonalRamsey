import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate363
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276990802041/1000000000000 : ℚ), (1779221136859/1250000000 : ℚ), (-197511050453479/500000000000 : ℚ), 12⟩,
    ⟨(277727139141/1000000000000 : ℚ), (777437765503/5000000000 : ℚ), (-1364268703543/31250000000 : ℚ), 9⟩,
    ⟨(69798180503/250000000000 : ℚ), (136135526501/2500000000 : ℚ), (-3109442652207/200000000000 : ℚ), 7⟩,
    ⟨(28137343629/100000000000 : ℚ), (33498865701/1250000000 : ℚ), (-390130259503/50000000000 : ℚ), 6⟩,
    ⟨(35531035063/125000000000 : ℚ), (3879887183/250000000 : ℚ), (-923062719249/200000000000 : ℚ), 5⟩,
    ⟨(287789568333/1000000000000 : ℚ), (1974647939/200000000 : ℚ), (-3001685816883/1000000000000 : ℚ), 5⟩,
    ⟨(291963195239/1000000000000 : ℚ), (66682638761/10000000000 : ℚ), (-518343705147/250000000000 : ℚ), 5⟩,
    ⟨(148364483457/500000000000 : ℚ), (9374427463/2000000000 : ℚ), (-1490703673849/1000000000000 : ℚ), 4⟩,
    ⟨(302040986371/1000000000000 : ℚ), (16923833277/5000000000 : ℚ), (-1101052988813/1000000000000 : ℚ), 4⟩,
    ⟨(307848095959/1000000000000 : ℚ), (1554636293/625000000 : ℚ), (-165519779583/200000000000 : ℚ), 4⟩,
    ⟨(157047185019/500000000000 : ℚ), (3691927727/2000000000 : ℚ), (-628253378507/1000000000000 : ℚ), 3⟩,
    ⟨(160359826787/500000000000 : ℚ), (6867717869/5000000000 : ℚ), (-23919684313/50000000000 : ℚ), 3⟩,
    ⟨(163830070733/500000000000 : ℚ), (5084535173/5000000000 : ℚ), (-181419849483/500000000000 : ℚ), 3⟩,
    ⟨(16742449651/50000000000 : ℚ), (1484014201/2000000000 : ℚ), (-135911993617/500000000000 : ℚ), 3⟩,
    ⟨(171108487833/500000000000 : ℚ), (2631522169/5000000000 : ℚ), (-99417552219/500000000000 : ℚ), 3⟩,
    ⟨(349693131703/1000000000000 : ℚ), (443046033/1250000000 : ℚ), (-139401219223/1000000000000 : ℚ), 3⟩,
    ⟨(357205461663/1000000000000 : ℚ), (2156724637/10000000000 : ℚ), (-90373096247/1000000000000 : ℚ), 3⟩,
    ⟨(364681617701/1000000000000 : ℚ), (1023550601/10000000000 : ℚ), (-49485156193/1000000000000 : ℚ), 3⟩,
    ⟨(372049600347/1000000000000 : ℚ), (17846757/2000000000 : ℚ), (-1884729237/125000000000 : ℚ), 3⟩,
    ⟨(379238451901/1000000000000 : ℚ), (-687246863/10000000000 : ℚ), (2816627899/200000000000 : ℚ), 2⟩,
    ⟨(24136183737/62500000000 : ℚ), (-1336548429/10000000000 : ℚ), (38927382007/1000000000000 : ℚ), 2⟩,
    ⟨(12275131979/31250000000 : ℚ), (-470459009/2500000000 : ℚ), (15040561537/250000000000 : ℚ), 2⟩,
    ⟨(399050497407/1000000000000 : ℚ), (-58519299/250000000 : ℚ), (9791279097/125000000000 : ℚ), 2⟩,
    ⟨(80971521399/200000000000 : ℚ), (-1363458491/5000000000 : ℚ), (93849747477/1000000000000 : ℚ), 2⟩,
    ⟨(410169626453/1000000000000 : ℚ), (-1525366281/5000000000 : ℚ), (10704451651/100000000000 : ℚ), 2⟩,
    ⟨(414935398127/1000000000000 : ℚ), (-3320306831/10000000000 : ℚ), (59082566233/500000000000 : ℚ), 2⟩,
    ⟨(209554512517/500000000000 : ℚ), (-1770943009/5000000000 : ℚ), (127405030921/1000000000000 : ℚ), 2⟩,
    ⟨(422650312863/1000000000000 : ℚ), (-3720266247/10000000000 : ℚ), (134912443037/1000000000000 : ℚ), 2⟩,
    ⟨(425525157077/1000000000000 : ℚ), (-3859083111/10000000000 : ℚ), (140799372081/1000000000000 : ℚ), 2⟩,
    ⟨(85541174271/200000000000 : ℚ), (-495128077/1250000000 : ℚ), (72574151873/500000000000 : ℚ), 2⟩,
    ⟨(17166858169/40000000000 : ℚ), (-2013992519/5000000000 : ℚ), (148017132193/1000000000000 : ℚ), 2⟩,
    ⟨(17196311653/40000000000 : ℚ), (-507646447/1250000000 : ℚ), (14944262363/100000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1016326571/2500000000 : ℚ), (29924079403/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (152567685899/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control363.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control363.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate363
