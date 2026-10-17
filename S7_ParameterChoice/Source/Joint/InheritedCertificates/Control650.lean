import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate650
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63550395629/125000000000 : ℚ), (961624831623/625000000 : ℚ), (-195820025654041/250000000000 : ℚ), 12⟩,
    ⟨(20373008007/40000000000 : ℚ), (168704383289/1000000000 : ℚ), (-86588473045899/1000000000000 : ℚ), 9⟩,
    ⟨(12779009769/25000000000 : ℚ), (118814911189/2000000000 : ℚ), (-30853467044357/1000000000000 : ℚ), 8⟩,
    ⟨(513891062897/1000000000000 : ℚ), (3678762843/125000000 : ℚ), (-484322451203/31250000000 : ℚ), 7⟩,
    ⟨(517490918721/1000000000000 : ℚ), (171704978307/10000000000 : ℚ), (-9179795505123/1000000000000 : ℚ), 6⟩,
    ⟨(521925289653/1000000000000 : ℚ), (110137330203/10000000000 : ℚ), (-5981874315363/1000000000000 : ℚ), 6⟩,
    ⟨(527151470277/1000000000000 : ℚ), (37531826879/5000000000 : ℚ), (-16184093929/3906250000 : ℚ), 5⟩,
    ⟨(106623825923/200000000000 : ℚ), (10660272813/2000000000 : ℚ), (-93438681357/31250000000 : ℚ), 5⟩,
    ⟨(539770795847/1000000000000 : ℚ), (1557574133/400000000 : ℚ), (-554995497237/250000000000 : ℚ), 4⟩,
    ⟨(547042409791/1000000000000 : ℚ), (29009112671/10000000000 : ℚ), (-1680623919673/1000000000000 : ℚ), 4⟩,
    ⟨(554863941829/1000000000000 : ℚ), (21888665601/10000000000 : ℚ), (-644248831099/500000000000 : ℚ), 4⟩,
    ⟨(563160066331/1000000000000 : ℚ), (8315956737/5000000000 : ℚ), (-497381669737/500000000000 : ℚ), 4⟩,
    ⟨(114370177417/200000000000 : ℚ), (12657451823/10000000000 : ℚ), (-769299451029/1000000000000 : ℚ), 4⟩,
    ⟨(116170541347/200000000000 : ℚ), (9592453287/10000000000 : ℚ), (-592712165719/1000000000000 : ℚ), 3⟩,
    ⟨(147519708209/250000000000 : ℚ), (5751387/8000000 : ℚ), (-452058996781/1000000000000 : ℚ), 3⟩,
    ⟨(37465025797/62500000000 : ℚ), (5278268657/10000000000 : ℚ), (-84609284103/250000000000 : ℚ), 3⟩,
    ⟨(12176945787/20000000000 : ℚ), (3740545119/10000000000 : ℚ), (-245562037443/1000000000000 : ℚ), 3⟩,
    ⟨(309104434633/500000000000 : ℚ), (486459/1953125 : ℚ), (-10556094091/62500000000 : ℚ), 3⟩,
    ⟨(78429374421/125000000000 : ℚ), (1466210513/10000000000 : ℚ), (-105105741061/1000000000000 : ℚ), 3⟩,
    ⟨(636436815017/1000000000000 : ℚ), (155193571/2500000000 : ℚ), (-25844845173/500000000000 : ℚ), 3⟩,
    ⟨(645127635771/1000000000000 : ℚ), (-40296611/5000000000 : ℚ), (-6754619281/1000000000000 : ℚ), 3⟩,
    ⟨(326711880137/500000000000 : ℚ), (-166134789/2500000000 : ℚ), (31154345317/1000000000000 : ℚ), 3⟩,
    ⟨(661245292311/1000000000000 : ℚ), (-287893241/2500000000 : ℚ), (7895636121/125000000000 : ℚ), 3⟩,
    ⟨(133703381251/200000000000 : ℚ), (-1557596501/10000000000 : ℚ), (22539576971/250000000000 : ℚ), 3⟩,
    ⟨(675168572487/1000000000000 : ℚ), (-18949997/100000000 : ℚ), (22564964103/200000000000 : ℚ), 3⟩,
    ⟨(340568115913/500000000000 : ℚ), (-1086727877/5000000000 : ℚ), (65853656793/500000000000 : ℚ), 3⟩,
    ⟨(686362412449/1000000000000 : ℚ), (-240050483/1000000000 : ℚ), (1177849051/8000000000 : ℚ), 3⟩,
    ⟨(690796783381/1000000000000 : ℚ), (-2581986211/10000000000 : ℚ), (159727207231/1000000000000 : ℚ), 3⟩,
    ⟨(138879327841/200000000000 : ℚ), (-272235953/1000000000 : ℚ), (84724618523/500000000000 : ℚ), 3⟩,
    ⟨(348563655671/500000000000 : ℚ), (-706235689/2500000000 : ℚ), (17658651359/100000000000 : ℚ), 3⟩,
    ⟨(698962501927/1000000000000 : ℚ), (-723021397/2500000000 : ℚ), (290037381/1600000000 : ℚ), 3⟩,
    ⟨(699884537071/1000000000000 : ℚ), (-731322673/2500000000 : ℚ), (183595803493/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-146471217/500000000 : ℚ), (183885135007/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (123684096249/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control650.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control650.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate650
