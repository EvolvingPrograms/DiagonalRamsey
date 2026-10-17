import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate227
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127875050233/500000000000 : ℚ), (2231916593157/2000000000 : ℚ), (-286154604741523/1000000000000 : ℚ), 11⟩,
    ⟨(256684903141/1000000000000 : ℚ), (607337940969/5000000000 : ℚ), (-1977653785923/62500000000 : ℚ), 8⟩,
    ⟨(32318188229/125000000000 : ℚ), (423367389481/10000000000 : ℚ), (-705086593021/62500000000 : ℚ), 7⟩,
    ⟨(261313989917/1000000000000 : ℚ), (207292390039/10000000000 : ℚ), (-2835783347319/500000000000 : ℚ), 6⟩,
    ⟨(264963693381/1000000000000 : ℚ), (59726626727/5000000000 : ℚ), (-840710692731/250000000000 : ℚ), 5⟩,
    ⟨(4210304181/15625000000 : ℚ), (15132378943/2000000000 : ℚ), (-2193997168387/1000000000000 : ℚ), 5⟩,
    ⟨(274758015763/1000000000000 : ℚ), (50922797331/10000000000 : ℚ), (-1521551171179/1000000000000 : ℚ), 4⟩,
    ⟨(280808310003/1000000000000 : ℚ), (7142395231/2000000000 : ℚ), (-54972818683/50000000000 : ℚ), 4⟩,
    ⟨(143776041331/500000000000 : ℚ), (3221066501/1250000000 : ℚ), (-817160339879/1000000000000 : ℚ), 3⟩,
    ⟨(73731096881/250000000000 : ℚ), (9479330401/5000000000 : ℚ), (-619013981097/1000000000000 : ℚ), 3⟩,
    ⟨(302854225263/1000000000000 : ℚ), (14120456811/10000000000 : ℚ), (-118632507599/250000000000 : ℚ), 3⟩,
    ⟨(155632613603/500000000000 : ℚ), (5289499499/5000000000 : ℚ), (-182936555703/500000000000 : ℚ), 3⟩,
    ⟨(160038195403/500000000000 : ℚ), (198040013/250000000 : ℚ), (-282048473917/1000000000000 : ℚ), 3⟩,
    ⟨(164601429871/500000000000 : ℚ), (735648787/1250000000 : ℚ), (-215982810533/1000000000000 : ℚ), 3⟩,
    ⟨(338556741129/1000000000000 : ℚ), (4296205749/10000000000 : ℚ), (-162961905529/1000000000000 : ℚ), 3⟩,
    ⟨(13921918079/40000000000 : ℚ), (1518397283/5000000000 : ℚ), (-29937349819/250000000000 : ℚ), 2⟩,
    ⟨(89396271683/250000000000 : ℚ), (2024958917/10000000000 : ℚ), (-84067250043/1000000000000 : ℚ), 2⟩,
    ⟨(183538148789/500000000000 : ℚ), (601223759/5000000000 : ℚ), (-5427762751/100000000000 : ℚ), 2⟩,
    ⟨(75286035793/200000000000 : ℚ), (4118217/78125000 : ℚ), (-29181655529/1000000000000 : ℚ), 2⟩,
    ⟨(385556647901/1000000000000 : ℚ), (-31929907/10000000000 : ℚ), (-7888382729/1000000000000 : ℚ), 2⟩,
    ⟨(394367811501/1000000000000 : ℚ), (-124441503/2500000000 : ℚ), (10272711193/1000000000000 : ℚ), 2⟩,
    ⟨(100694703361/250000000000 : ℚ), (-887710221/10000000000 : ℚ), (201652089/7812500000 : ℚ), 2⟩,
    ⟨(410708651183/1000000000000 : ℚ), (-1214932981/10000000000 : ℚ), (3911868597/100000000000 : ℚ), 2⟩,
    ⟨(83616191209/200000000000 : ℚ), (-37237913/250000000 : ℚ), (50495670441/1000000000000 : ℚ), 2⟩,
    ⟨(3318943193/7812500000 : ℚ), (-429805097/2500000000 : ℚ), (60175533921/1000000000000 : ℚ), 2⟩,
    ⟨(13464844467/31250000000 : ℚ), (-955016671/5000000000 : ℚ), (4271173801/62500000000 : ℚ), 2⟩,
    ⟨(436173571123/1000000000000 : ℚ), (-2066575183/10000000000 : ℚ), (37562418933/500000000000 : ℚ), 2⟩,
    ⟨(220334672663/500000000000 : ℚ), (-1096195649/5000000000 : ℚ), (40320328129/500000000000 : ℚ), 2⟩,
    ⟨(44431904879/100000000000 : ℚ), (-1145084523/5000000000 : ℚ), (84967150451/1000000000000 : ℚ), 2⟩,
    ⟨(3576700263/8000000000 : ℚ), (-1180947967/5000000000 : ℚ), (88163994241/1000000000000 : ℚ), 2⟩,
    ⟨(224474067783/500000000000 : ℚ), (-2408973259/10000000000 : ℚ), (90273128601/1000000000000 : ℚ), 2⟩,
    ⟨(449882938241/1000000000000 : ℚ), (-243229449/1000000000 : ℚ), (91321219263/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1217599783/5000000000 : ℚ), (45725965341/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (316957313623/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control227.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control227.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate227
