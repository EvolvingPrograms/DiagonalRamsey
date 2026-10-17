import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate211
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71729474691/250000000000 : ℚ), (1290731683437/1000000000 : ℚ), (-371199360046689/1000000000000 : ℚ), 11⟩,
    ⟨(7196177039/25000000000 : ℚ), (703559549557/5000000000 : ℚ), (-41041476666709/1000000000000 : ℚ), 8⟩,
    ⟨(57939299723/200000000000 : ℚ), (491497093237/10000000000 : ℚ), (-2925751917127/200000000000 : ℚ), 7⟩,
    ⟨(292448339031/1000000000000 : ℚ), (120613129597/5000000000 : ℚ), (-7351673263047/1000000000000 : ℚ), 6⟩,
    ⟨(7401902527/25000000000 : ℚ), (69674103427/5000000000 : ℚ), (-871370974749/200000000000 : ℚ), 5⟩,
    ⟨(37568105929/125000000000 : ℚ), (88474023249/10000000000 : ℚ), (-2840734375479/1000000000000 : ℚ), 5⟩,
    ⟨(61162308323/200000000000 : ℚ), (59679308191/10000000000 : ℚ), (-196857941589/100000000000 : ℚ), 4⟩,
    ⟨(62365092497/200000000000 : ℚ), (20969202727/5000000000 : ℚ), (-1421211355103/1000000000000 : ℚ), 4⟩,
    ⟨(159264346349/500000000000 : ℚ), (6063193019/2000000000 : ℚ), (-263804762389/250000000000 : ℚ), 4⟩,
    ⟨(162928338241/500000000000 : ℚ), (5584697903/2500000000 : ℚ), (-199603133359/250000000000 : ℚ), 3⟩,
    ⟨(166869420673/500000000000 : ℚ), (1665907919/1000000000 : ℚ), (-4889933831/8000000000 : ℚ), 3⟩,
    ⟨(68419855547/200000000000 : ℚ), (249863089/200000000 : ℚ), (-58821041803/125000000000 : ℚ), 3⟩,
    ⟨(87714367519/250000000000 : ℚ), (9361276371/10000000000 : ℚ), (-181063687753/500000000000 : ℚ), 3⟩,
    ⟨(359929072189/1000000000000 : ℚ), (3478608977/5000000000 : ℚ), (-276740435011/1000000000000 : ℚ), 3⟩,
    ⟨(184613359793/500000000000 : ℚ), (2539318089/5000000000 : ℚ), (-41657800297/200000000000 : ℚ), 3⟩,
    ⟨(378660870841/1000000000000 : ℚ), (1793952087/5000000000 : ℚ), (-152571380493/1000000000000 : ℚ), 2⟩,
    ⟨(2425879187/6250000000 : ℚ), (1194545151/5000000000 : ℚ), (-53314403387/500000000000 : ℚ), 2⟩,
    ⟨(15902992847/40000000000 : ℚ), (706956123/5000000000 : ℚ), (-13666571457/200000000000 : ℚ), 2⟩,
    ⟨(101718117143/250000000000 : ℚ), (153221717/2500000000 : ℚ), (-18062220819/500000000000 : ℚ), 2⟩,
    ⟨(83188814137/200000000000 : ℚ), (-25202047/5000000000 : ℚ), (-1768777977/200000000000 : ℚ), 2⟩,
    ⟨(212351131513/500000000000 : ℚ), (-150780319/2500000000 : ℚ), (14382485211/1000000000000 : ℚ), 2⟩,
    ⟨(86612539883/200000000000 : ℚ), (-1065750303/10000000000 : ℚ), (4277480457/125000000000 : ℚ), 2⟩,
    ⟨(440944864279/1000000000000 : ℚ), (-1453887103/10000000000 : ℚ), (5117877719/100000000000 : ℚ), 2⟩,
    ⟨(448272848063/1000000000000 : ℚ), (-889746411/5000000000 : ℚ), (13130717271/200000000000 : ℚ), 2⟩,
    ⟨(18199043131/40000000000 : ℚ), (-410357769/2000000000 : ℚ), (7794987323/100000000000 : ℚ), 2⟩,
    ⟨(230494999573/500000000000 : ℚ), (-2277903139/10000000000 : ℚ), (88304715913/1000000000000 : ℚ), 2⟩,
    ⟨(466256693329/1000000000000 : ℚ), (-492668343/2000000000 : ℚ), (96901593249/1000000000000 : ℚ), 2⟩,
    ⟨(1471016999/3125000000 : ℚ), (-1306167441/5000000000 : ℚ), (51940758741/500000000000 : ℚ), 2⟩,
    ⟨(47435320173/100000000000 : ℚ), (-2728092141/10000000000 : ℚ), (54675683819/500000000000 : ℚ), 2⟩,
    ⟨(238552521073/500000000000 : ℚ), (-2812988873/10000000000 : ℚ), (14173762063/125000000000 : ℚ), 2⟩,
    ⟨(478954459201/1000000000000 : ℚ), (-2868700737/10000000000 : ℚ), (116053273051/1000000000000 : ℚ), 2⟩,
    ⟨(479883641997/1000000000000 : ℚ), (-2896296519/10000000000 : ℚ), (117376265387/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2899733933/10000000000 : ℚ), (58770620633/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (55087202223/200000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control211.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control211.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate211
