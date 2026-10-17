import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate337
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133994062959/500000000000 : ℚ), (438652876517/400000000 : ℚ), (-2356906171791/8000000000 : ℚ), 11⟩,
    ⟨(16807009899/62500000000 : ℚ), (3733057869/31250000 : ℚ), (-6515202440013/200000000000 : ℚ), 8⟩,
    ⟨(135375662189/500000000000 : ℚ), (416811311627/10000000000 : ℚ), (-2903231417723/250000000000 : ℚ), 7⟩,
    ⟨(136743955863/500000000000 : ℚ), (204327312603/10000000000 : ℚ), (-1167448976291/200000000000 : ℚ), 6⟩,
    ⟨(277095565597/1000000000000 : ℚ), (58944594363/5000000000 : ℚ), (-3460265048629/1000000000000 : ℚ), 5⟩,
    ⟨(281539542311/1000000000000 : ℚ), (37380104211/5000000000 : ℚ), (-2256871036089/1000000000000 : ℚ), 5⟩,
    ⟨(143388521971/500000000000 : ℚ), (10074354687/2000000000 : ℚ), (-312912056703/200000000000 : ℚ), 4⟩,
    ⟨(36594703811/125000000000 : ℚ), (7072126721/2000000000 : ℚ), (-5650055947/5000000000 : ℚ), 4⟩,
    ⟨(299423705631/1000000000000 : ℚ), (3192089687/1250000000 : ℚ), (-839404061747/1000000000000 : ℚ), 4⟩,
    ⟨(306711071423/1000000000000 : ℚ), (18801016551/10000000000 : ℚ), (-635445516721/1000000000000 : ℚ), 3⟩,
    ⟨(314549546547/1000000000000 : ℚ), (7005059411/5000000000 : ℚ), (-121686879567/250000000000 : ℚ), 3⟩,
    ⟨(322863642203/1000000000000 : ℚ), (328110127/312500000 : ℚ), (-187473767187/500000000000 : ℚ), 3⟩,
    ⟨(165786644553/500000000000 : ℚ), (1572536061/2000000000 : ℚ), (-144362726241/500000000000 : ℚ), 3⟩,
    ⟨(340594608593/1000000000000 : ℚ), (233609941/400000000 : ℚ), (-110399057327/500000000000 : ℚ), 3⟩,
    ⟨(87460180107/250000000000 : ℚ), (532623991/1250000000 : ℚ), (-83155410467/500000000000 : ℚ), 3⟩,
    ⟨(179611289749/500000000000 : ℚ), (3008532621/10000000000 : ℚ), (-60965050429/500000000000 : ℚ), 3⟩,
    ⟨(368649833373/1000000000000 : ℚ), (2001818063/10000000000 : ℚ), (-85308884199/1000000000000 : ℚ), 2⟩,
    ⟨(378031692443/1000000000000 : ℚ), (295801697/2500000000 : ℚ), (-6844882469/125000000000 : ℚ), 2⟩,
    ⟨(193638902139/500000000000 : ℚ), (510964291/10000000000 : ℚ), (-363054227/12500000000 : ℚ), 2⟩,
    ⟨(198149561883/500000000000 : ℚ), (-45596953/10000000000 : ℚ), (-7245413239/1000000000000 : ℚ), 2⟩,
    ⟨(101252192667/250000000000 : ℚ), (-50934261/1000000000 : ℚ), (2832514717/250000000000 : ℚ), 2⟩,
    ⟨(16532914653/40000000000 : ℚ), (-897503009/10000000000 : ℚ), (2720892737/100000000000 : ℚ), 2⟩,
    ⟨(421161341449/1000000000000 : ℚ), (-48927351/400000000 : ℚ), (40795372929/1000000000000 : ℚ), 2⟩,
    ⟨(10711217681/25000000000 : ℚ), (-748213511/5000000000 : ℚ), (26200646043/500000000000 : ℚ), 2⟩,
    ⟨(435114782383/1000000000000 : ℚ), (-1724967771/10000000000 : ℚ), (62268208433/1000000000000 : ℚ), 2⟩,
    ⟨(441095368929/1000000000000 : ℚ), (-957389939/5000000000 : ℚ), (17645824983/250000000000 : ℚ), 2⟩,
    ⟨(446332870561/1000000000000 : ℚ), (-414094807/2000000000 : ℚ), (9686407911/125000000000 : ℚ), 2⟩,
    ⟨(18031073891/40000000000 : ℚ), (-1097794959/5000000000 : ℚ), (8310317017/100000000000 : ℚ), 2⟩,
    ⟨(90876900229/200000000000 : ℚ), (-1146405577/5000000000 : ℚ), (87503102639/1000000000000 : ℚ), 2⟩,
    ⟨(228560544247/500000000000 : ℚ), (-2364122697/10000000000 : ℚ), (45376549823/500000000000 : ℚ), 2⟩,
    ⟨(57370031811/125000000000 : ℚ), (-602731019/2500000000 : ℚ), (11612097449/125000000000 : ℚ), 2⟩,
    ⟨(229942143477/500000000000 : ℚ), (-1217053809/5000000000 : ℚ), (93961881469/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-304624437/1250000000 : ℚ), (94094707143/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (34250505789/100000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control337.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control337.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate337
