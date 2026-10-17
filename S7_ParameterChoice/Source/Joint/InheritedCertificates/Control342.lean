import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate342
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129630788729/500000000000 : ℚ), (11933961857991/10000000000 : ℚ), (-310108661842261/1000000000000 : ℚ), 12⟩,
    ⟨(260083234173/1000000000000 : ℚ), (1301248903103/10000000000 : ℚ), (-34282508745889/1000000000000 : ℚ), 8⟩,
    ⟨(261718634599/1000000000000 : ℚ), (45460552127/1000000000 : ℚ), (-12216285272309/1000000000000 : ℚ), 7⟩,
    ⟨(52830405787/200000000000 : ℚ), (55786784621/2500000000 : ℚ), (-767080877071/125000000000 : ℚ), 6⟩,
    ⟨(133679991133/500000000000 : ℚ), (128902448557/10000000000 : ℚ), (-29076372541/8000000000 : ℚ), 5⟩,
    ⟨(54262320049/200000000000 : ℚ), (81823618659/10000000000 : ℚ), (-1183889982333/500000000000 : ℚ), 5⟩,
    ⟨(275968826633/1000000000000 : ℚ), (27582589713/5000000000 : ℚ), (-327796683459/200000000000 : ℚ), 4⟩,
    ⟨(4395106403/15625000000 : ℚ), (3873143793/1000000000 : ℚ), (-236301187167/200000000000 : ℚ), 4⟩,
    ⟨(143607167319/500000000000 : ℚ), (13979117057/5000000000 : ℚ), (-875539220861/1000000000000 : ℚ), 4⟩,
    ⟨(293694315867/1000000000000 : ℚ), (20558198453/10000000000 : ℚ), (-41298481403/62500000000 : ℚ), 3⟩,
    ⟨(75166086929/250000000000 : ℚ), (1528467923/1000000000 : ℚ), (-504176236441/1000000000000 : ℚ), 3⟩,
    ⟨(30805730497/100000000000 : ℚ), (2282548413/2000000000 : ℚ), (-193206253357/500000000000 : ℚ), 3⟩,
    ⟨(315801989407/1000000000000 : ℚ), (1699710113/2000000000 : ℚ), (-295569122253/1000000000000 : ℚ), 3⟩,
    ⟨(80955953871/250000000000 : ℚ), (6258757609/10000000000 : ℚ), (-27997503871/125000000000 : ℚ), 3⟩,
    ⟨(33204552863/100000000000 : ℚ), (4506110333/10000000000 : ℚ), (-33307083847/200000000000 : ℚ), 3⟩,
    ⟨(340387949253/1000000000000 : ℚ), (778306469/2500000000 : ℚ), (-14965847783/125000000000 : ℚ), 3⟩,
    ⟨(174385367641/500000000000 : ℚ), (398259971/2000000000 : ℚ), (-40541993157/500000000000 : ℚ), 3⟩,
    ⟨(71422631181/200000000000 : ℚ), (269278773/2500000000 : ℚ), (-12207656691/250000000000 : ℚ), 2⟩,
    ⟨(365334869051/1000000000000 : ℚ), (64971101/2000000000 : ℚ), (-10833006319/500000000000 : ℚ), 2⟩,
    ⟨(46669586891/125000000000 : ℚ), (-74799617/2500000000 : ℚ), (688378229/500000000000 : ℚ), 2⟩,
    ⟨(76220275913/200000000000 : ℚ), (-820192337/10000000000 : ℚ), (21025546241/1000000000000 : ℚ), 2⟩,
    ⟨(388494336819/1000000000000 : ℚ), (-628543781/5000000000 : ℚ), (37833899091/1000000000000 : ℚ), 2⟩,
    ⟨(98866092167/250000000000 : ℚ), (-162431429/1000000000 : ℚ), (52226132229/1000000000000 : ℚ), 2⟩,
    ⟨(401944349897/1000000000000 : ℚ), (-193293361/1000000000 : ℚ), (6452934801/100000000000 : ℚ), 2⟩,
    ⟨(407871874743/1000000000000 : ℚ), (-2191467/10000000 : ℚ), (14999306321/200000000000 : ℚ), 2⟩,
    ⟨(206594928951/500000000000 : ℚ), (-1203247881/5000000000 : ℚ), (20955865169/250000000000 : ℚ), 2⟩,
    ⟨(41784708429/100000000000 : ℚ), (-2583098647/10000000000 : ℚ), (91161235163/1000000000000 : ℚ), 2⟩,
    ⟨(421798702269/1000000000000 : ℚ), (-2725173561/10000000000 : ℚ), (48562820501/500000000000 : ℚ), 2⟩,
    ⟨(1062516639/2500000000 : ℚ), (-1417837313/5000000000 : ℚ), (50902087081/500000000000 : ℚ), 2⟩,
    ⟨(26715003121/62500000000 : ℚ), (-729196493/2500000000 : ℚ), (105261283157/1000000000000 : ℚ), 2⟩,
    ⟨(214537725181/500000000000 : ℚ), (-1485023477/5000000000 : ℚ), (26885553137/250000000000 : ℚ), 2⟩,
    ⟨(429897107077/1000000000000 : ℚ), (-749109683/2500000000 : ℚ), (54337850773/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2999726641/10000000000 : ℚ), (108817064713/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (169004023129/500000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control342.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control342.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate342
