import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate231
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57974557349/200000000000 : ℚ), (2923653171939/2500000000 : ℚ), (-339846296802003/1000000000000 : ℚ), 11⟩,
    ⟨(36360499619/125000000000 : ℚ), (1273783895971/10000000000 : ℚ), (-18790469939441/500000000000 : ℚ), 8⟩,
    ⟨(14644833943/50000000000 : ℚ), (55550624239/1250000000 : ℚ), (-13399644130033/1000000000000 : ℚ), 7⟩,
    ⟨(147945724621/500000000000 : ℚ), (217845358441/10000000000 : ℚ), (-6737361380467/1000000000000 : ℚ), 6⟩,
    ⟨(14991973341/50000000000 : ℚ), (125696096699/10000000000 : ℚ), (-799115142951/200000000000 : ℚ), 5⟩,
    ⟨(304702710029/1000000000000 : ℚ), (79727643201/10000000000 : ℚ), (-521513770027/200000000000 : ℚ), 5⟩,
    ⟨(310434343177/1000000000000 : ℚ), (53741064597/10000000000 : ℚ), (-361825622099/200000000000 : ℚ), 4⟩,
    ⟨(19811197969/62500000000 : ℚ), (18876057651/5000000000 : ℚ), (-2092862997/1600000000 : ℚ), 4⟩,
    ⟨(162137076387/500000000000 : ℚ), (27292995299/10000000000 : ℚ), (-121625853781/125000000000 : ℚ), 3⟩,
    ⟨(332249044291/1000000000000 : ℚ), (20125661049/10000000000 : ℚ), (-368969503387/500000000000 : ℚ), 3⟩,
    ⟨(34082703949/100000000000 : ℚ), (3757754659/2500000000 : ℚ), (-566626907511/1000000000000 : ℚ), 3⟩,
    ⟨(87481381897/250000000000 : ℚ), (11300621233/10000000000 : ℚ), (-437886879371/1000000000000 : ℚ), 3⟩,
    ⟨(35945688517/100000000000 : ℚ), (2125263717/2500000000 : ℚ), (-338659000487/1000000000000 : ℚ), 3⟩,
    ⟨(73865864011/200000000000 : ℚ), (3177931651/5000000000 : ℚ), (-130270096909/500000000000 : ℚ), 3⟩,
    ⟨(75889551059/200000000000 : ℚ), (2341260179/5000000000 : ℚ), (-197928757029/1000000000000 : ℚ), 2⟩,
    ⟨(389714744829/1000000000000 : ℚ), (3356984207/10000000000 : ℚ), (-146977812299/1000000000000 : ℚ), 2⟩,
    ⟨(80006282387/200000000000 : ℚ), (2292869921/10000000000 : ℚ), (-104978322661/1000000000000 : ℚ), 2⟩,
    ⟨(410298401469/1000000000000 : ℚ), (1428746187/10000000000 : ℚ), (-13996267853/200000000000 : ℚ), 2⟩,
    ⟨(420416836709/1000000000000 : ℚ), (720134457/10000000000 : ℚ), (-10139757421/250000000000 : ℚ), 2⟩,
    ⟨(430289271593/1000000000000 : ℚ), (134327527/10000000000 : ℚ), (-3129823021/200000000000 : ℚ), 2⟩,
    ⟨(54977578647/125000000000 : ℚ), (-353048581/10000000000 : ℚ), (5548981489/1000000000000 : ℚ), 2⟩,
    ⟨(224459558637/500000000000 : ℚ), (-760365181/10000000000 : ℚ), (11822517491/500000000000 : ℚ), 2⟩,
    ⟨(457497112473/1000000000000 : ℚ), (-1101600709/10000000000 : ℚ), (39107400959/1000000000000 : ℚ), 2⟩,
    ⟨(46547200399/100000000000 : ℚ), (-1387471201/10000000000 : ℚ), (52298033343/1000000000000 : ℚ), 2⟩,
    ⟨(23638349463/50000000000 : ℚ), (-813117877/5000000000 : ℚ), (63497716829/1000000000000 : ℚ), 2⟩,
    ⟨(479311813587/1000000000000 : ℚ), (-364855509/2000000000 : ℚ), (9115563001/125000000000 : ℚ), 2⟩,
    ⟨(97008689347/200000000000 : ℚ), (-1986527151/10000000000 : ℚ), (80747344989/1000000000000 : ℚ), 2⟩,
    ⟨(61238336243/125000000000 : ℚ), (-2116773073/10000000000 : ℚ), (8709624539/100000000000 : ℚ), 2⟩,
    ⟨(246927353761/500000000000 : ℚ), (-2217890063/10000000000 : ℚ), (1841397279/20000000000 : ℚ), 2⟩,
    ⟨(31053092369/62500000000 : ℚ), (-229200617/1000000000 : ℚ), (11967645843/125000000000 : ℚ), 2⟩,
    ⟨(498862159811/1000000000000 : ℚ), (-2340622883/10000000000 : ℚ), (49080781163/500000000000 : ℚ), 2⟩,
    ⟨(499873370019/1000000000000 : ℚ), (-2364698063/10000000000 : ℚ), (3974551891/40000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2367696651/10000000000 : ℚ), (3980548307/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (294162359853/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control231.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control231.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate231
