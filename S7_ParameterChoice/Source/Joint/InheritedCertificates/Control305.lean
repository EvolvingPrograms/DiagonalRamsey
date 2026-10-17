import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate305
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(356667077/1250000000 : ℚ), (1246373543473/1000000000 : ℚ), (-71286483503739/200000000000 : ℚ), 12⟩,
    ⟨(286222344619/1000000000000 : ℚ), (1359370346681/10000000000 : ℚ), (-39405913617187/1000000000000 : ℚ), 8⟩,
    ⟨(57598230431/200000000000 : ℚ), (237550700021/5000000000 : ℚ), (-14043689121113/1000000000000 : ℚ), 7⟩,
    ⟨(36327881203/125000000000 : ℚ), (233326721627/10000000000 : ℚ), (-7056002982821/1000000000000 : ℚ), 6⟩,
    ⟨(147046345207/500000000000 : ℚ), (16858237499/1250000000 : ℚ), (-2090128867151/500000000000 : ℚ), 5⟩,
    ⟨(74591664997/250000000000 : ℚ), (42836137463/5000000000 : ℚ), (-681097944149/250000000000 : ℚ), 5⟩,
    ⟨(151701898841/500000000000 : ℚ), (14452855883/2500000000 : ℚ), (-377374927681/200000000000 : ℚ), 4⟩,
    ⟨(309155593107/1000000000000 : ℚ), (40633784567/10000000000 : ℚ), (-680612206187/500000000000 : ℚ), 4⟩,
    ⟨(315566653329/1000000000000 : ℚ), (29371656409/10000000000 : ℚ), (-504867872683/500000000000 : ℚ), 4⟩,
    ⟨(161287618167/500000000000 : ℚ), (21635426229/10000000000 : ℚ), (-763091541217/1000000000000 : ℚ), 3⟩,
    ⟨(165056922817/500000000000 : ℚ), (16122553091/10000000000 : ℚ), (-145829023559/250000000000 : ℚ), 3⟩,
    ⟨(338109880303/1000000000000 : ℚ), (3018870443/2500000000 : ℚ), (-28012023813/62500000000 : ℚ), 3⟩,
    ⟨(69297266831/200000000000 : ℚ), (9030312219/10000000000 : ℚ), (-344023430817/1000000000000 : ℚ), 3⟩,
    ⟨(4439531717/12500000000 : ℚ), (3345408641/5000000000 : ℚ), (-261996188181/1000000000000 : ℚ), 3⟩,
    ⟨(364054933339/1000000000000 : ℚ), (1215293939/2500000000 : ℚ), (-49058876911/250000000000 : ℚ), 3⟩,
    ⟨(373077883457/1000000000000 : ℚ), (852032659/2500000000 : ℚ), (-142706583609/1000000000000 : ℚ), 3⟩,
    ⟨(95536122943/250000000000 : ℚ), (447749099/2000000000 : ℚ), (-49283963199/500000000000 : ℚ), 2⟩,
    ⟨(39116744189/100000000000 : ℚ), (257366263/2000000000 : ℚ), (-30887624409/500000000000 : ℚ), 2⟩,
    ⟨(400059837869/1000000000000 : ℚ), (504392973/10000000000 : ℚ), (-1926931081/62500000000 : ℚ), 2⟩,
    ⟨(204368020537/500000000000 : ℚ), (-3597847/250000000 : ℚ), (-4620752601/1000000000000 : ℚ), 2⟩,
    ⟨(208556247463/500000000000 : ℚ), (-10694751/156250000 : ℚ), (707786077/40000000000 : ℚ), 2⟩,
    ⟨(85021705919/200000000000 : ℚ), (-227432161/2000000000 : ℚ), (18377234787/500000000000 : ℚ), 2⟩,
    ⟨(86529427779/200000000000 : ℚ), (-1517163263/10000000000 : ℚ), (6631166371/125000000000 : ℚ), 2⟩,
    ⟨(4396557219/10000000000 : ℚ), (-183610147/1000000000 : ℚ), (33479043231/500000000000 : ℚ), 2⟩,
    ⟨(223033391061/500000000000 : ℚ), (-2102943431/10000000000 : ℚ), (39387150547/500000000000 : ℚ), 2⟩,
    ⟨(451818577547/1000000000000 : ℚ), (-1162310909/5000000000 : ℚ), (70980509/800000000 : ℚ), 2⟩,
    ⟨(228427857621/500000000000 : ℚ), (-1253245767/5000000000 : ℚ), (96988198001/1000000000000 : ℚ), 2⟩,
    ⟨(92225936963/200000000000 : ℚ), (-2652666141/10000000000 : ℚ), (51848625833/500000000000 : ℚ), 2⟩,
    ⟨(92919865121/200000000000 : ℚ), (-2766265797/10000000000 : ℚ), (54477625079/500000000000 : ℚ), 2⟩,
    ⟨(233615611537/500000000000 : ℚ), (-178099943/625000000 : ℚ), (22567564667/200000000000 : ℚ), 2⟩,
    ⟨(46900003061/100000000000 : ℚ), (-363036759/1250000000 : ℚ), (115398165827/1000000000000 : ℚ), 2⟩,
    ⟨(469888713629/1000000000000 : ℚ), (-2931388911/10000000000 : ℚ), (116670115921/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-586952811/2000000000 : ℚ), (29207182223/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (308432677109/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control305.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control305.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate305
