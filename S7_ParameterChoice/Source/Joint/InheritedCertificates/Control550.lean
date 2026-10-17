import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate550
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32402080157/125000000000 : ℚ), (12572693263813/10000000000 : ℚ), (-163261115919753/500000000000 : ℚ), 12⟩,
    ⟨(64973535769/250000000000 : ℚ), (1373569710497/10000000000 : ℚ), (-36082676898269/1000000000000 : ℚ), 9⟩,
    ⟨(261242622003/1000000000000 : ℚ), (240546828691/5000000000 : ℚ), (-8029602911/625000000 : ℚ), 7⟩,
    ⟨(32906136431/125000000000 : ℚ), (236774774747/10000000000 : ℚ), (-805701383601/125000000000 : ℚ), 6⟩,
    ⟨(265894228013/1000000000000 : ℚ), (137109494019/10000000000 : ℚ), (-3810933392039/1000000000000 : ℚ), 6⟩,
    ⟨(269152557587/1000000000000 : ℚ), (43604207597/5000000000 : ℚ), (-247703867333/100000000000 : ℚ), 5⟩,
    ⟨(10919708027/40000000000 : ℚ), (29437925087/5000000000 : ℚ), (-1709618607133/1000000000000 : ℚ), 5⟩,
    ⟨(277377674601/1000000000000 : ℚ), (2067869499/500000000 : ℚ), (-1227896917757/1000000000000 : ℚ), 4⟩,
    ⟨(282265249667/1000000000000 : ℚ), (3729438037/1250000000 : ℚ), (-452859750873/500000000000 : ℚ), 4⟩,
    ⟨(57521671171/200000000000 : ℚ), (21893845773/10000000000 : ℚ), (-679584912761/1000000000000 : ℚ), 4⟩,
    ⟨(293355536131/1000000000000 : ℚ), (4053536757/2500000000 : ℚ), (-64338036759/125000000000 : ℚ), 4⟩,
    ⟨(149725721003/500000000000 : ℚ), (3007227151/2500000000 : ℚ), (-195362731707/500000000000 : ℚ), 4⟩,
    ⟨(19114835411/62500000000 : ℚ), (8867568949/10000000000 : ℚ), (-147550682329/500000000000 : ℚ), 3⟩,
    ⟨(39056476237/125000000000 : ℚ), (6429227587/10000000000 : ℚ), (-219758934617/1000000000000 : ℚ), 3⟩,
    ⟨(15961553563/50000000000 : ℚ), (2257331327/5000000000 : ℚ), (-159316392041/1000000000000 : ℚ), 3⟩,
    ⟨(81527465669/250000000000 : ℚ), (2988071397/10000000000 : ℚ), (-2751945643/25000000000 : ℚ), 3⟩,
    ⟨(166510968811/500000000000 : ℚ), (175457067/1000000000 : ℚ), (-13888109947/200000000000 : ℚ), 3⟩,
    ⟨(169950364519/500000000000 : ℚ), (746460071/10000000000 : ℚ), (-35532319973/1000000000000 : ℚ), 3⟩,
    ⟨(173339995201/500000000000 : ℚ), (-42720291/5000000000 : ℚ), (-6981875583/1000000000000 : ℚ), 3⟩,
    ⟨(176647216861/500000000000 : ℚ), (-388704913/5000000000 : ℚ), (538450291/31250000000 : ℚ), 3⟩,
    ⟨(359680358291/1000000000000 : ℚ), (-1356559927/10000000000 : ℚ), (37872228441/1000000000000 : ℚ), 3⟩,
    ⟨(365776264167/1000000000000 : ℚ), (-1843375037/10000000000 : ℚ), (55527432079/1000000000000 : ℚ), 3⟩,
    ⟨(371523444443/1000000000000 : ℚ), (-1126734767/5000000000 : ℚ), (70643487233/1000000000000 : ℚ), 3⟩,
    ⟨(37686655063/100000000000 : ℚ), (-649706811/2500000000 : ℚ), (83565180841/1000000000000 : ℚ), 3⟩,
    ⟨(381754125697/1000000000000 : ℚ), (-5641969/19531250 : ℚ), (18911792191/200000000000 : ℚ), 3⟩,
    ⟨(193069549811/500000000000 : ℚ), (-3130191043/10000000000 : ℚ), (51915390977/500000000000 : ℚ), 3⟩,
    ⟨(389979242711/1000000000000 : ℚ), (-3328844627/10000000000 : ℚ), (27884838299/250000000000 : ℚ), 2⟩,
    ⟨(78647514457/200000000000 : ℚ), (-697774961/2000000000 : ℚ), (117806066603/1000000000000 : ℚ), 2⟩,
    ⟨(7917654177/20000000000 : ℚ), (-3613481891/10000000000 : ℚ), (15340308077/125000000000 : ℚ), 2⟩,
    ⟨(79577835659/200000000000 : ℚ), (-463128733/1250000000 : ℚ), (63177916681/500000000000 : ℚ), 2⟩,
    ⟨(199618828611/500000000000 : ℚ), (-941295817/2500000000 : ℚ), (128753315869/1000000000000 : ℚ), 2⟩,
    ⟨(199957579521/500000000000 : ℚ), (-3795002193/10000000000 : ℚ), (16243101031/125000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-759743523/2000000000 : ℚ), (16261676171/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (47547776489/125000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control550.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control550.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate550
