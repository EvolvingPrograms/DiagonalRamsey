import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate139
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(178852806863/1000000000000 : ℚ), (5980968792143/10000000000 : ℚ), (-3359568480951/31250000000 : ℚ), 10⟩,
    ⟨(180157667881/1000000000000 : ℚ), (321237790757/5000000000 : ℚ), (-11897689453993/1000000000000 : ℚ), 7⟩,
    ⟨(182754823393/1000000000000 : ℚ), (109980114451/5000000000 : ℚ), (-2124501853329/500000000000 : ℚ), 6⟩,
    ⟨(18661926137/100000000000 : ℚ), (21118448849/2000000000 : ℚ), (-2141696992069/1000000000000 : ℚ), 5⟩,
    ⟨(191713765163/1000000000000 : ℚ), (14910749379/2500000000 : ℚ), (-637230868983/500000000000 : ℚ), 4⟩,
    ⟨(39597854383/200000000000 : ℚ), (37061535571/10000000000 : ℚ), (-167083885239/200000000000 : ℚ), 4⟩,
    ⟨(102692672533/500000000000 : ℚ), (24511873257/10000000000 : ℚ), (-291418082253/500000000000 : ℚ), 3⟩,
    ⟨(213830756387/1000000000000 : ℚ), (1693230869/1000000000 : ℚ), (-212137741357/500000000000 : ℚ), 3⟩,
    ⟨(223244171953/1000000000000 : ℚ), (12069549727/10000000000 : ℚ), (-63640443547/200000000000 : ℚ), 3⟩,
    ⟨(233534935423/1000000000000 : ℚ), (4401111931/5000000000 : ℚ), (-121853926931/500000000000 : ℚ), 3⟩,
    ⟨(122301970561/500000000000 : ℚ), (3262201541/5000000000 : ℚ), (-189338026001/1000000000000 : ℚ), 2⟩,
    ⟨(32043073559/125000000000 : ℚ), (4887346881/10000000000 : ℚ), (-18549119309/125000000000 : ℚ), 2⟩,
    ⟨(134321904311/500000000000 : ℚ), (3680082819/10000000000 : ℚ), (-116744147321/1000000000000 : ℚ), 2⟩,
    ⟨(281383153359/1000000000000 : ℚ), (1384867573/5000000000 : ℚ), (-91737475629/1000000000000 : ℚ), 2⟩,
    ⟨(294439935829/1000000000000 : ℚ), (2069786971/10000000000 : ℚ), (-35802972301/500000000000 : ℚ), 2⟩,
    ⟨(153844206039/500000000000 : ℚ), (304462291/2000000000 : ℚ), (-55138353027/1000000000000 : ℚ), 2⟩,
    ⟨(160500496019/500000000000 : ℚ), (543794641/5000000000 : ℚ), (-20741932551/500000000000 : ℚ), 2⟩,
    ⟨(334249468287/1000000000000 : ℚ), (368909561/5000000000 : ℚ), (-30032294063/1000000000000 : ℚ), 2⟩,
    ⟨(347306250757/1000000000000 : ℚ), (226594197/5000000000 : ℚ), (-10169161521/500000000000 : ℚ), 2⟩,
    ⟨(180022797747/500000000000 : ℚ), (27419067/1250000000 : ℚ), (-12072145373/1000000000000 : ℚ), 2⟩,
    ⟨(93086203911/250000000000 : ℚ), (25780087/10000000000 : ℚ), (-2493246147/500000000000 : ℚ), 2⟩,
    ⟨(192042731497/500000000000 : ℚ), (-6767801/500000000 : ℚ), (552944649/500000000000 : ℚ), 2⟩,
    ⟨(395154468693/1000000000000 : ℚ), (-269934617/10000000000 : ℚ), (99186407/15625000000 : ℚ), 2⟩,
    ⟨(405445232163/1000000000000 : ℚ), (-191205101/5000000000 : ℚ), (10849367133/1000000000000 : ℚ), 2⟩,
    ⟨(25928665483/62500000000 : ℚ), (-29761311/625000000 : ℚ), (14694760047/1000000000000 : ℚ), 2⟩,
    ⟨(8466081181/20000000000 : ℚ), (-69231309/1250000000 : ℚ), (112183383/6250000000 : ℚ), 2⟩,
    ⟨(430700132201/1000000000000 : ℚ), (-77176917/1250000000 : ℚ), (413266641/20000000000 : ℚ), 2⟩,
    ⟨(436975638953/1000000000000 : ℚ), (-668401017/10000000000 : ℚ), (22875149073/1000000000000 : ℚ), 2⟩,
    ⟨(221035071373/500000000000 : ℚ), (-35398003/500000000 : ℚ), (24613792507/1000000000000 : ℚ), 2⟩,
    ⟨(445934580723/1000000000000 : ℚ), (-73694301/1000000000 : ℚ), (25900614747/1000000000000 : ℚ), 2⟩,
    ⟨(224265868117/500000000000 : ℚ), (-755948731/10000000000 : ℚ), (6687651387/250000000000 : ℚ), 2⟩,
    ⟨(449836597253/1000000000000 : ℚ), (-765358773/10000000000 : ℚ), (27173288733/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-766530727/10000000000 : ℚ), (272260171/10000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (89956267459/250000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control139.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control139.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate139
