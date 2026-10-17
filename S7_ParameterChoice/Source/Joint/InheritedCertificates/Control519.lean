import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate519
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57255302501/200000000000 : ℚ), (13102146351541/10000000000 : ℚ), (-187893546978741/500000000000 : ℚ), 12⟩,
    ⟨(35877035879/125000000000 : ℚ), (1431673315487/10000000000 : ℚ), (-20764986654601/500000000000 : ℚ), 9⟩,
    ⟨(72122177913/250000000000 : ℚ), (501595602911/10000000000 : ℚ), (-14789275744003/1000000000000 : ℚ), 7⟩,
    ⟨(290679606111/1000000000000 : ℚ), (123483310879/5000000000 : ℚ), (-3710888811107/500000000000 : ℚ), 6⟩,
    ⟨(146783935449/500000000000 : ℚ), (71543673997/5000000000 : ℚ), (-4389701903861/1000000000000 : ℚ), 6⟩,
    ⟨(59425138089/200000000000 : ℚ), (22768037759/2500000000 : ℚ), (-913495751/320000000 : ℚ), 5⟩,
    ⟨(301318801003/1000000000000 : ℚ), (30768590757/5000000000 : ℚ), (-98580155101/50000000000 : ℚ), 5⟩,
    ⟨(306106820627/1000000000000 : ℚ), (43274482033/10000000000 : ℚ), (-1417351735607/1000000000000 : ℚ), 4⟩,
    ⟨(31144363807/100000000000 : ℚ), (31263138427/10000000000 : ℚ), (-261683163133/250000000000 : ℚ), 4⟩,
    ⟨(158638928431/500000000000 : ℚ), (4596930051/2000000000 : ℚ), (-78666308883/100000000000 : ℚ), 4⟩,
    ⟨(20222080643/62500000000 : ℚ), (8532459021/5000000000 : ℚ), (-37319030917/62500000000 : ℚ), 4⟩,
    ⟨(82552375623/250000000000 : ℚ), (12703859861/10000000000 : ℚ), (-56829106927/125000000000 : ℚ), 3⟩,
    ⟨(337182390513/1000000000000 : ℚ), (9410876797/10000000000 : ℚ), (-86201663933/250000000000 : ℚ), 3⟩,
    ⟨(86101200407/250000000000 : ℚ), (6872206083/10000000000 : ℚ), (-258333181161/1000000000000 : ℚ), 3⟩,
    ⟨(87951795017/250000000000 : ℚ), (4880068841/10000000000 : ℚ), (-94508424451/500000000000 : ℚ), 3⟩,
    ⟨(89829559221/250000000000 : ℚ), (1646397277/5000000000 : ℚ), (-132602108887/1000000000000 : ℚ), 3⟩,
    ⟨(366865636491/1000000000000 : ℚ), (502842653/2500000000 : ℚ), (-86091390219/1000000000000 : ℚ), 3⟩,
    ⟨(374376693307/1000000000000 : ℚ), (482562231/5000000000 : ℚ), (-11831898347/250000000000 : ℚ), 3⟩,
    ⟨(381779071747/1000000000000 : ℚ), (20538897/2000000000 : ℚ), (-7365014989/500000000000 : ℚ), 3⟩,
    ⟨(194500741431/500000000000 : ℚ), (-61382649/1000000000 : ℚ), (2575486811/200000000000 : ℚ), 3⟩,
    ⟨(395974370883/1000000000000 : ℚ), (-606392383/5000000000 : ℚ), (18190545419/500000000000 : ℚ), 3⟩,
    ⟨(402630583087/1000000000000 : ℚ), (-857805711/5000000000 : ℚ), (56455711373/1000000000000 : ℚ), 3⟩,
    ⟨(408906016513/1000000000000 : ℚ), (-427731017/2000000000 : ℚ), (73619119741/1000000000000 : ℚ), 3⟩,
    ⟨(82948047061/200000000000 : ℚ), (-2494473559/10000000000 : ℚ), (88270929639/1000000000000 : ℚ), 2⟩,
    ⟨(105019263187/250000000000 : ℚ), (-2792757977/10000000000 : ℚ), (39343947/390625000 : ℚ), 2⟩,
    ⟨(106216268093/250000000000 : ℚ), (-3041002687/10000000000 : ℚ), (27801859783/250000000000 : ℚ), 2⟩,
    ⟨(42905818293/100000000000 : ℚ), (-811249007/2500000000 : ℚ), (119916757947/1000000000000 : ℚ), 2⟩,
    ⟨(432616002477/1000000000000 : ℚ), (-852295629/2500000000 : ℚ), (15873786197/125000000000 : ℚ), 2⟩,
    ⟨(106324284/244140625 : ℚ), (-442116357/1250000000 : ℚ), (132535220737/1000000000000 : ℚ), 2⟩,
    ⟨(437695161723/1000000000000 : ℚ), (-3630731281/10000000000 : ℚ), (136630497139/1000000000000 : ℚ), 2⟩,
    ⟨(439167586343/1000000000000 : ℚ), (-3692338333/10000000000 : ℚ), (69665764891/500000000000 : ℚ), 2⟩,
    ⟨(43990736087/100000000000 : ℚ), (-3722869939/10000000000 : ℚ), (35168376641/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3726673789/10000000000 : ℚ), (4401276823/31250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (173966788683/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control519.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control519.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate519
