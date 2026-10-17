import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate588
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18548353671/62500000000 : ℚ), (15955347002249/10000000000 : ℚ), (-94840446303007/200000000000 : ℚ), 12⟩,
    ⟨(148683334833/500000000000 : ℚ), (1746906372073/10000000000 : ℚ), (-52378053063687/1000000000000 : ℚ), 9⟩,
    ⟨(149273490253/500000000000 : ℚ), (306792863019/5000000000 : ℚ), (-372639556713/20000000000 : ℚ), 8⟩,
    ⟨(150151612109/500000000000 : ℚ), (302870993713/10000000000 : ℚ), (-9334411034479/1000000000000 : ℚ), 7⟩,
    ⟨(60523697443/200000000000 : ℚ), (35172632299/2000000000 : ℚ), (-1377012960947/250000000000 : ℚ), 6⟩,
    ⟨(38183809031/125000000000 : ℚ), (112112359181/10000000000 : ℚ), (-1785471460921/500000000000 : ℚ), 6⟩,
    ⟨(308831713143/1000000000000 : ℚ), (37905334809/5000000000 : ℚ), (-2456600366551/1000000000000 : ℚ), 5⟩,
    ⟨(19541864957/62500000000 : ℚ), (53291994659/10000000000 : ℚ), (-1757233874223/1000000000000 : ℚ), 5⟩,
    ⟨(158473943751/500000000000 : ℚ), (4803741613/1250000000 : ℚ), (-644810219209/500000000000 : ℚ), 4⟩,
    ⟨(321624657771/1000000000000 : ℚ), (28148851961/10000000000 : ℚ), (-192306194391/200000000000 : ℚ), 4⟩,
    ⟨(40831888783/125000000000 : ℚ), (20768962387/10000000000 : ℚ), (-5644038233/7812500000 : ℚ), 4⟩,
    ⟨(331990798973/1000000000000 : ℚ), (15311001559/10000000000 : ℚ), (-542776280787/1000000000000 : ℚ), 4⟩,
    ⟨(337580338301/1000000000000 : ℚ), (11173642647/10000000000 : ℚ), (-20216123193/50000000000 : ℚ), 4⟩,
    ⟨(171684948963/500000000000 : ℚ), (7971673569/10000000000 : ℚ), (-147673032973/500000000000 : ℚ), 3⟩,
    ⟨(174651860613/500000000000 : ℚ), (1362381281/2500000000 : ℚ), (-52006485211/250000000000 : ℚ), 3⟩,
    ⟨(355324662239/1000000000000 : ℚ), (3432582173/10000000000 : ℚ), (-267556747/1953125000 : ℚ), 3⟩,
    ⟨(36137473601/100000000000 : ℚ), (359707037/2000000000 : ℚ), (-15689973967/200000000000 : ℚ), 3⟩,
    ⟨(183697838511/500000000000 : ℚ), (114969527/2500000000 : ℚ), (-2968358119/100000000000 : ℚ), 3⟩,
    ⟨(186664750161/500000000000 : ℚ), (-40446049/625000000 : ℚ), (1130701259/100000000000 : ℚ), 3⟩,
    ⟨(94779764987/250000000000 : ℚ), (-784834657/5000000000 : ℚ), (23004144917/500000000000 : ℚ), 3⟩,
    ⟨(15388343971/40000000000 : ℚ), (-585765939/2500000000 : ℚ), (18885123871/250000000000 : ℚ), 3⟩,
    ⟨(78008857597/200000000000 : ℚ), (-187131/625000 : ℚ), (100756526973/1000000000000 : ℚ), 3⟩,
    ⟨(197537370239/500000000000 : ℚ), (-1771613447/5000000000 : ℚ), (61155390521/500000000000 : ℚ), 3⟩,
    ⟨(199875755373/500000000000 : ℚ), (-80123873/200000000 : ℚ), (140708041477/1000000000000 : ℚ), 3⟩,
    ⟨(404029558937/1000000000000 : ℚ), (-219757573/500000000 : ℚ), (156338793241/1000000000000 : ℚ), 3⟩,
    ⟨(203933842553/500000000000 : ℚ), (-943900731/2000000000 : ℚ), (169505127187/1000000000000 : ℚ), 3⟩,
    ⟨(205614463/500000000 : ℚ), (-311657009/625000000 : ℚ), (9021999629/50000000000 : ℚ), 3⟩,
    ⟨(207040455517/500000000000 : ℚ), (-1300437457/2500000000 : ℚ), (94660822869/500000000000 : ℚ), 3⟩,
    ⟨(416396174031/1000000000000 : ℚ), (-2684718447/5000000000 : ℚ), (7851381671/40000000000 : ℚ), 3⟩,
    ⟨(418152417743/1000000000000 : ℚ), (-1373172403/2500000000 : ℚ), (1258921953/6250000000 : ℚ), 3⟩,
    ⟨(419332728583/1000000000000 : ℚ), (-2786850577/5000000000 : ℚ), (51204949139/250000000000 : ℚ), 3⟩,
    ⟨(419925739513/1000000000000 : ℚ), (-701733447/1250000000 : ℚ), (2581316191/12500000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-5618872659/10000000000 : ℚ), (25839436277/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (324518773381/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control588.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control588.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate588
