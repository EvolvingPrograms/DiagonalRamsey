import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate144
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57440513347/250000000000 : ℚ), (9068084775527/10000000000 : ℚ), (-52265091568307/250000000000 : ℚ), 11⟩,
    ⟨(46174008783/200000000000 : ℚ), (491396049291/5000000000 : ℚ), (-1445390224727/62500000000 : ℚ), 8⟩,
    ⟨(116537677207/500000000000 : ℚ), (34055622937/1000000000 : ℚ), (-8251461677351/1000000000000 : ℚ), 6⟩,
    ⟨(236356746541/1000000000000 : ℚ), (82840855889/5000000000 : ℚ), (-1038308733181/250000000000 : ℚ), 5⟩,
    ⟨(120341309347/500000000000 : ℚ), (94863172899/10000000000 : ℚ), (-2466630582239/1000000000000 : ℚ), 5⟩,
    ⟨(246011310361/1000000000000 : ℚ), (3732701239/625000000 : ℚ), (-1612764427287/1000000000000 : ℚ), 4⟩,
    ⟨(7884109479/31250000000 : ℚ), (1998969697/500000000 : ℚ), (-1121537276251/1000000000000 : ℚ), 4⟩,
    ⟨(129731357951/500000000000 : ℚ), (6978181829/2500000000 : ℚ), (-406596745539/500000000000 : ℚ), 3⟩,
    ⟨(66863971347/250000000000 : ℚ), (627345561/312500000 : ℚ), (-606964936067/1000000000000 : ℚ), 3⟩,
    ⟨(276194033193/1000000000000 : ℚ), (14742829717/10000000000 : ℚ), (-462194195449/1000000000000 : ℚ), 3⟩,
    ⟨(285593006177/1000000000000 : ℚ), (548984411/500000000 : ℚ), (-178303492151/500000000000 : ℚ), 3⟩,
    ⟨(295562287093/1000000000000 : ℚ), (8243238481/10000000000 : ℚ), (-34646625717/125000000000 : ℚ), 3⟩,
    ⟨(61201173263/200000000000 : ℚ), (775363921/1250000000 : ℚ), (-21586043823/100000000000 : ℚ), 2⟩,
    ⟨(158411583233/500000000000 : ℚ), (4648772851/10000000000 : ℚ), (-167503178177/1000000000000 : ℚ), 2⟩,
    ⟨(163955005517/500000000000 : ℚ), (688579779/2000000000 : ℚ), (-128659285011/1000000000000 : ℚ), 2⟩,
    ⟨(169579813821/500000000000 : ℚ), (2492064671/10000000000 : ℚ), (-12120876021/125000000000 : ℚ), 2⟩,
    ⟨(70092735267/200000000000 : ℚ), (173172247/1000000000 : ℚ), (-14153011397/200000000000 : ℚ), 2⟩,
    ⟨(22607080809/62500000000 : ℚ), (1116248473/10000000000 : ℚ), (-48860043193/1000000000000 : ℚ), 2⟩,
    ⟨(372800137511/1000000000000 : ℚ), (612814617/10000000000 : ℚ), (-15189654917/500000000000 : ℚ), 2⟩,
    ⟨(383617437663/1000000000000 : ℚ), (24678921/1250000000 : ℚ), (-14675087451/1000000000000 : ℚ), 2⟩,
    ⟨(78812203377/200000000000 : ℚ), (-73834599/5000000000 : ℚ), (-1260481231/1000000000000 : ℚ), 2⟩,
    ⟨(2020151489/5000000000 : ℚ), (-108950101/2500000000 : ℚ), (1279281479/125000000000 : ℚ), 2⟩,
    ⟨(82685854157/200000000000 : ℚ), (-677036151/10000000000 : ℚ), (5023042757/250000000000 : ℚ), 2⟩,
    ⟨(42216741859/100000000000 : ℚ), (-219765031/2500000000 : ℚ), (28531263561/1000000000000 : ℚ), 2⟩,
    ⟨(107540147019/250000000000 : ℚ), (-1047767641/10000000000 : ℚ), (17860009823/500000000000 : ℚ), 2⟩,
    ⟨(8746636013/20000000000 : ℚ), (-593848651/5000000000 : ℚ), (41788809921/1000000000000 : ℚ), 2⟩,
    ⟨(443611993617/1000000000000 : ℚ), (-130234357/1000000000 : ℚ), (46838290839/1000000000000 : ℚ), 2⟩,
    ⟨(112235171321/250000000000 : ℚ), (-1394384593/10000000000 : ℚ), (50945660283/1000000000000 : ℚ), 2⟩,
    ⟨(453266557437/1000000000000 : ℚ), (-146584863/1000000000 : ℚ), (54169327629/1000000000000 : ℚ), 2⟩,
    ⟨(114136987391/250000000000 : ℚ), (-759117517/5000000000 : ℚ), (28276190719/500000000000 : ℚ), 2⟩,
    ⟨(458753260063/1000000000000 : ℚ), (-1552600723/10000000000 : ℚ), (14531279279/250000000000 : ℚ), 2⟩,
    ⟨(45986125059/100000000000 : ℚ), (-1569619571/10000000000 : ℚ), (58906803643/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-62869573/400000000 : ℚ), (7375537199/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (1971574419/6250000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control144.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control144.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate144
