import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate413
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(121488328757/500000000000 : ℚ), (6787413470851/5000000000 : ℚ), (-33048397472747/100000000000 : ℚ), 12⟩,
    ⟨(243636064739/1000000000000 : ℚ), (1482461661063/10000000000 : ℚ), (-18260491187783/500000000000 : ℚ), 9⟩,
    ⟨(244948528737/1000000000000 : ℚ), (518943396993/10000000000 : ℚ), (-13003771907613/1000000000000 : ℚ), 7⟩,
    ⟨(123450704881/500000000000 : ℚ), (12761986027/500000000 : ℚ), (-652432225809/100000000000 : ℚ), 6⟩,
    ⟨(124737950251/500000000000 : ℚ), (147701370659/10000000000 : ℚ), (-771527191279/200000000000 : ℚ), 6⟩,
    ⟨(50529441441/200000000000 : ℚ), (93879270301/10000000000 : ℚ), (-501499987601/200000000000 : ℚ), 5⟩,
    ⟨(64096197113/250000000000 : ℚ), (7916725673/1250000000 : ℚ), (-1730697136321/1000000000000 : ℚ), 5⟩,
    ⟨(130326324647/500000000000 : ℚ), (4445583623/1000000000 : ℚ), (-621522294433/500000000000 : ℚ), 4⟩,
    ⟨(265409687897/1000000000000 : ℚ), (3204559201/1000000000 : ℚ), (-458428741659/500000000000 : ℚ), 4⟩,
    ⟨(13530504569/50000000000 : ℚ), (5873851591/2500000000 : ℚ), (-343931998431/500000000000 : ℚ), 4⟩,
    ⟨(276203777013/1000000000000 : ℚ), (8691455019/5000000000 : ℚ), (-65106692471/125000000000 : ℚ), 3⟩,
    ⟨(282136874547/1000000000000 : ℚ), (2576038891/2000000000 : ℚ), (-98806920983/250000000000 : ℚ), 3⟩,
    ⟨(288352245009/1000000000000 : ℚ), (9479811997/10000000000 : ℚ), (-298288172657/1000000000000 : ℚ), 3⟩,
    ⟨(294790030983/1000000000000 : ℚ), (685739379/1000000000 : ℚ), (-221865364651/1000000000000 : ℚ), 3⟩,
    ⟨(18836764567/62500000000 : ℚ), (1199568523/2500000000 : ℚ), (-32102773499/200000000000 : ℚ), 3⟩,
    ⟨(154041653491/500000000000 : ℚ), (3156198147/10000000000 : ℚ), (-110494886103/1000000000000 : ℚ), 3⟩,
    ⟨(314810775491/1000000000000 : ℚ), (914520407/5000000000 : ℚ), (-69176335521/1000000000000 : ℚ), 3⟩,
    ⟨(321505849401/1000000000000 : ℚ), (743982867/10000000000 : ℚ), (-6933119353/200000000000 : ℚ), 3⟩,
    ⟨(32810405149/100000000000 : ℚ), (-151836077/10000000000 : ℚ), (-1394302929/250000000000 : ℚ), 3⟩,
    ⟨(41817729683/125000000000 : ℚ), (-897379439/10000000000 : ℚ), (19118339847/1000000000000 : ℚ), 3⟩,
    ⟨(13630288317/40000000000 : ℚ), (-1521743161/10000000000 : ℚ), (40195614493/1000000000000 : ℚ), 2⟩,
    ⟨(346690305459/1000000000000 : ℚ), (-511723271/2500000000 : ℚ), (29121587511/500000000000 : ℚ), 2⟩,
    ⟨(352283991093/1000000000000 : ℚ), (-622390183/2500000000 : ℚ), (73711675969/1000000000000 : ℚ), 2⟩,
    ⟨(14299375783/40000000000 : ℚ), (-114503153/400000000 : ℚ), (86948016273/1000000000000 : ℚ), 2⟩,
    ⟨(362241433179/1000000000000 : ℚ), (-793959077/2500000000 : ℚ), (98220006473/1000000000000 : ℚ), 2⟩,
    ⟨(366509294021/1000000000000 : ℚ), (-3436970121/10000000000 : ℚ), (107734450737/1000000000000 : ℚ), 2⟩,
    ⟨(92561718817/250000000000 : ℚ), (-3651871501/10000000000 : ℚ), (4626022681/40000000000 : ℚ), 2⟩,
    ⟨(373418181971/1000000000000 : ℚ), (-3825059173/10000000000 : ℚ), (3815313623/31250000000 : ℚ), 2⟩,
    ⟨(375992672711/1000000000000 : ℚ), (-3959955087/10000000000 : ℚ), (3973267299/31250000000 : ℚ), 2⟩,
    ⟨(47243194217/125000000000 : ℚ), (-40590871/100000000 : ℚ), (130881480713/1000000000000 : ℚ), 2⟩,
    ⟨(189629008867/500000000000 : ℚ), (-4124235369/10000000000 : ℚ), (66673996577/500000000000 : ℚ), 2⟩,
    ⟨(379917424959/1000000000000 : ℚ), (-4156533759/10000000000 : ℚ), (336434997/2500000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4160558281/10000000000 : ℚ), (134726914019/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (17093898533/50000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control413.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control413.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate413
