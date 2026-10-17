import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate208
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66521239963/250000000000 : ℚ), (12565719413139/10000000000 : ℚ), (-67031138327361/200000000000 : ℚ), 11⟩,
    ⟨(53394005469/200000000000 : ℚ), (684687687619/5000000000 : ℚ), (-37055477598853/1000000000000 : ℚ), 8⟩,
    ⟨(33591454831/125000000000 : ℚ), (239029832067/5000000000 : ℚ), (-3301837501503/250000000000 : ℚ), 7⟩,
    ⟨(847977589/3125000000 : ℚ), (234482959261/10000000000 : ℚ), (-1327360771319/200000000000 : ℚ), 6⟩,
    ⟨(274808353351/1000000000000 : ℚ), (135356947899/10000000000 : ℚ), (-786541783527/200000000000 : ℚ), 5⟩,
    ⟨(279064934667/1000000000000 : ℚ), (2683531327/312500000 : ℚ), (-2563716437039/1000000000000 : ℚ), 5⟩,
    ⟨(35510197403/125000000000 : ℚ), (11575007359/2000000000 : ℚ), (-1776145152207/1000000000000 : ℚ), 4⟩,
    ⟨(289809973991/1000000000000 : ℚ), (20315619023/5000000000 : ℚ), (-1281808390203/1000000000000 : ℚ), 4⟩,
    ⟨(74048737849/250000000000 : ℚ), (3667292743/1250000000 : ℚ), (-475610228643/500000000000 : ℚ), 4⟩,
    ⟨(37896877577/125000000000 : ℚ), (10794847647/5000000000 : ℚ), (-359600793511/500000000000 : ℚ), 3⟩,
    ⟨(38835369971/125000000000 : ℚ), (3214799219/2000000000 : ℚ), (-550042832861/1000000000000 : ℚ), 3⟩,
    ⟨(63729292659/200000000000 : ℚ), (12028969227/10000000000 : ℚ), (-422853681773/1000000000000 : ℚ), 3⟩,
    ⟨(10218401197/31250000000 : ℚ), (2247025607/2500000000 : ℚ), (-324755573687/1000000000000 : ℚ), 3⟩,
    ⟨(335629743163/1000000000000 : ℚ), (6653711727/10000000000 : ℚ), (-247462813831/1000000000000 : ℚ), 3⟩,
    ⟨(68897192247/200000000000 : ℚ), (965835153/2000000000 : ℚ), (-185452694509/1000000000000 : ℚ), 3⟩,
    ⟨(353472202299/1000000000000 : ℚ), (1690409783/5000000000 : ℚ), (-67466691643/500000000000 : ℚ), 2⟩,
    ⟨(18125096197/50000000000 : ℚ), (2215513701/10000000000 : ℚ), (-11654431193/125000000000 : ℚ), 2⟩,
    ⟨(92872041251/250000000000 : ℚ), (1267008201/10000000000 : ℚ), (-467514531/8000000000 : ℚ), 2⟩,
    ⟨(95086095769/250000000000 : ℚ), (243661427/5000000000 : ℚ), (-14569784267/500000000000 : ℚ), 2⟩,
    ⟨(77797057587/200000000000 : ℚ), (-9926903/625000000 : ℚ), (-67054821/15625000000 : ℚ), 2⟩,
    ⟨(12416489467/31250000000 : ℚ), (-139550059/2000000000 : ℚ), (16891300007/1000000000000 : ℚ), 2⟩,
    ⟨(405291166471/1000000000000 : ℚ), (-574628429/5000000000 : ℚ), (17503501433/500000000000 : ℚ), 2⟩,
    ⟨(51599888203/125000000000 : ℚ), (-1528427393/10000000000 : ℚ), (10102842921/200000000000 : ℚ), 2⟩,
    ⟨(419779174843/1000000000000 : ℚ), (-369363163/2000000000 : ℚ), (31883308919/500000000000 : ℚ), 2⟩,
    ⟨(53270519031/125000000000 : ℚ), (-2113322289/10000000000 : ℚ), (75037917451/1000000000000 : ℚ), 2⟩,
    ⟨(53986568377/125000000000 : ℚ), (-2334820999/10000000000 : ℚ), (84540094497/1000000000000 : ℚ), 2⟩,
    ⟨(109227297893/250000000000 : ℚ), (-1258308947/5000000000 : ℚ), (92436917411/1000000000000 : ℚ), 2⟩,
    ⟨(55145721611/125000000000 : ℚ), (-2662786727/10000000000 : ℚ), (98854025717/1000000000000 : ℚ), 2⟩,
    ⟨(444621297759/1000000000000 : ℚ), (-555283261/2000000000 : ℚ), (25971620319/250000000000 : ℚ), 2⟩,
    ⟨(55905310949/125000000000 : ℚ), (-714947871/2500000000 : ℚ), (107604394851/1000000000000 : ℚ), 2⟩,
    ⟨(89800819779/200000000000 : ℚ), (-728630847/2500000000 : ℚ), (55028521953/500000000000 : ℚ), 2⟩,
    ⟨(112472291597/250000000000 : ℚ), (-2941639331/10000000000 : ℚ), (111275758971/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-736254309/2500000000 : ℚ), (5571387299/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (28957247483/100000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control208.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control208.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate208
