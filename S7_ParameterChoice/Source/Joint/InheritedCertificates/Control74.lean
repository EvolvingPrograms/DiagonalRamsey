import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate74
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2597914201/12500000000 : ℚ), (3361570985763/5000000000 : ℚ), (-70211074746853/500000000000 : ℚ), 10⟩,
    ⟨(13083462437/62500000000 : ℚ), (180576051621/2500000000 : ℚ), (-15539138385661/1000000000000 : ℚ), 7⟩,
    ⟨(212325457203/1000000000000 : ℚ), (24732577177/1000000000 : ℚ), (-138714928509/25000000000 : ℚ), 6⟩,
    ⟨(216774514817/1000000000000 : ℚ), (118742419473/10000000000 : ℚ), (-1398105827751/500000000000 : ℚ), 5⟩,
    ⟨(111319862489/500000000000 : ℚ), (16769316543/2500000000 : ℚ), (-1663642279403/1000000000000 : ℚ), 4⟩,
    ⟨(45972920501/200000000000 : ℚ), (8337285237/2000000000 : ℚ), (-545206501887/500000000000 : ℚ), 4⟩,
    ⟨(238379567879/1000000000000 : ℚ), (27577115877/10000000000 : ℚ), (-760765865007/1000000000000 : ℚ), 3⟩,
    ⟨(15506413583/62500000000 : ℚ), (19058115271/10000000000 : ℚ), (-553954175407/1000000000000 : ℚ), 3⟩,
    ⟨(258940112571/1000000000000 : ℚ), (1699434369/1250000000 : ℚ), (-12991208723/31250000000 : ℚ), 3⟩,
    ⟨(67696920651/250000000000 : ℚ), (992788983/1000000000 : ℚ), (-318743259597/1000000000000 : ℚ), 2⟩,
    ⟨(283531228851/1000000000000 : ℚ), (7373660621/10000000000 : ℚ), (-124030800051/500000000000 : ℚ), 2⟩,
    ⟨(74262005999/250000000000 : ℚ), (221613723/400000000 : ℚ), (-48729656167/250000000000 : ℚ), 2⟩,
    ⟨(38900986739/125000000000 : ℚ), (4190473641/10000000000 : ℚ), (-7695929751/50000000000 : ℚ), 2⟩,
    ⟨(20367154457/62500000000 : ℚ), (793616161/2500000000 : ℚ), (-60796089999/500000000000 : ℚ), 2⟩,
    ⟨(170453254519/500000000000 : ℚ), (2394905177/10000000000 : ℚ), (-23907318653/250000000000 : ℚ), 2⟩,
    ⟨(89039810087/250000000000 : ℚ), (446642359/2500000000 : ℚ), (-37223033117/500000000000 : ℚ), 2⟩,
    ⟨(185742886551/500000000000 : ℚ), (1304732119/10000000000 : ℚ), (-11385929393/200000000000 : ℚ), 2⟩,
    ⟨(96684626103/250000000000 : ℚ), (183617639/2000000000 : ℚ), (-21140772219/500000000000 : ℚ), 2⟩,
    ⟨(200885271069/500000000000 : ℚ), (302164313/5000000000 : ℚ), (-29918667703/1000000000000 : ℚ), 2⟩,
    ⟨(208218559769/500000000000 : ℚ), (347301517/10000000000 : ℚ), (-9704392733/500000000000 : ℚ), 2⟩,
    ⟨(215298494727/500000000000 : ℚ), (135148139/10000000000 : ℚ), (-10427431147/1000000000000 : ℚ), 2⟩,
    ⟨(444113784599/1000000000000 : ℚ), (-5118233/1250000000 : ℚ), (-2728475817/1000000000000 : ℚ), 2⟩,
    ⟨(228428665423/500000000000 : ℚ), (-37520421/2000000000 : ℚ), (155054551/40000000000 : ℚ), 2⟩,
    ⟨(468704900879/1000000000000 : ℚ), (-309839371/10000000000 : ℚ), (4766020949/500000000000 : ℚ), 1⟩,
    ⟨(239771198061/500000000000 : ℚ), (-411487919/10000000000 : ℚ), (14350626661/1000000000000 : ℚ), 1⟩,
    ⟨(489265445571/1000000000000 : ℚ), (-49548383/1000000000 : ℚ), (9209452527/500000000000 : ℚ), 1⟩,
    ⟨(99556082189/200000000000 : ℚ), (-282040089/5000000000 : ℚ), (5450995353/250000000000 : ℚ), 1⟩,
    ⟨(63125661059/125000000000 : ℚ), (-618999503/10000000000 : ℚ), (12278712017/500000000000 : ℚ), 1⟩,
    ⟨(510870498633/1000000000000 : ℚ), (-132308837/2000000000 : ℚ), (1669896483/62500000000 : ℚ), 1⟩,
    ⟨(515319556247/1000000000000 : ℚ), (-692675997/10000000000 : ℚ), (28315666153/1000000000000 : ℚ), 1⟩,
    ⟨(259154807229/500000000000 : ℚ), (-71307253/1000000000 : ℚ), (29369778423/1000000000000 : ℚ), 1⟩,
    ⟨(51981187737/100000000000 : ℚ), (-144633139/2000000000 : ℚ), (29893673737/1000000000000 : ℚ), 1⟩,
    ⟨(13/25 : ℚ), (-724422469/10000000000 : ℚ), (7489753539/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (284819456047/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control74.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control74.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate74
