import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate702
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131730281677/500000000000 : ℚ), (16392657561801/10000000000 : ℚ), (-432378932229503/1000000000000 : ℚ), 13⟩,
    ⟨(26387702327/100000000000 : ℚ), (898417548561/5000000000 : ℚ), (-5965584446317/125000000000 : ℚ), 10⟩,
    ⟨(264705932367/1000000000000 : ℚ), (157973870619/2500000000 : ℚ), (-3390436062473/200000000000 : ℚ), 8⟩,
    ⟨(53187861559/200000000000 : ℚ), (39022980393/1250000000 : ℚ), (-8473848087269/1000000000000 : ℚ), 7⟩,
    ⟨(66891317869/250000000000 : ℚ), (181313368047/10000000000 : ℚ), (-996920748397/200000000000 : ℚ), 7⟩,
    ⟨(26956816449/100000000000 : ℚ), (115506682569/10000000000 : ℚ), (-804530574733/250000000000 : ℚ), 6⟩,
    ⟨(271928697883/1000000000000 : ℚ), (77954854573/10000000000 : ℚ), (-2201895928963/1000000000000 : ℚ), 6⟩,
    ⟨(68656034607/250000000000 : ℚ), (5460413973/1000000000 : ℚ), (-1564068160893/1000000000000 : ℚ), 5⟩,
    ⟨(277628527559/1000000000000 : ℚ), (39151301133/10000000000 : ℚ), (-1137561495081/1000000000000 : ℚ), 5⟩,
    ⟨(140456465683/500000000000 : ℚ), (28430092143/10000000000 : ℚ), (-838274098263/1000000000000 : ℚ), 5⟩,
    ⟨(56889143849/200000000000 : ℚ), (414200903/200000000 : ℚ), (-124025995523/200000000000 : ℚ), 5⟩,
    ⟨(144096434259/500000000000 : ℚ), (936346429/625000000 : ℚ), (-114043039709/250000000000 : ℚ), 4⟩,
    ⟨(292118292089/1000000000000 : ℚ), (10624043613/10000000000 : ℚ), (-329780016821/1000000000000 : ℚ), 4⟩,
    ⟨(148092092991/500000000000 : ℚ), (361980387/500000000 : ℚ), (-46051536837/200000000000 : ℚ), 4⟩,
    ⟨(300351393417/1000000000000 : ℚ), (4563913363/10000000000 : ℚ), (-150473209877/1000000000000 : ℚ), 4⟩,
    ⟨(304579781909/1000000000000 : ℚ), (1208068547/5000000000 : ℚ), (-17105438153/200000000000 : ℚ), 4⟩,
    ⟨(61765725953/200000000000 : ℚ), (669453683/10000000000 : ℚ), (-3996010139/125000000000 : ℚ), 4⟩,
    ⟨(19566063641/62500000000 : ℚ), (-153398721/2000000000 : ℚ), (3172017721/250000000000 : ℚ), 4⟩,
    ⟨(79306056423/250000000000 : ℚ), (-1959476341/10000000000 : ℚ), (25130662199/500000000000 : ℚ), 4⟩,
    ⟨(64258023917/200000000000 : ℚ), (-2957075189/10000000000 : ℚ), (16421094621/200000000000 : ℚ), 3⟩,
    ⟨(65043108631/200000000000 : ℚ), (-3796604957/10000000000 : ℚ), (109239957251/1000000000000 : ℚ), 3⟩,
    ⟨(82240673107/250000000000 : ℚ), (-2252984529/5000000000 : ℚ), (132439947067/1000000000000 : ℚ), 3⟩,
    ⟨(332495480307/1000000000000 : ℚ), (-5106490479/10000000000 : ℚ), (7614957803/50000000000 : ℚ), 3⟩,
    ⟨(167889942057/500000000000 : ℚ), (-21931879/39062500 : ℚ), (42318621563/250000000000 : ℚ), 3⟩,
    ⟨(67756854649/200000000000 : ℚ), (-3021413639/5000000000 : ℚ), (183718327441/1000000000000 : ℚ), 3⟩,
    ⟨(34147971379/100000000000 : ℚ), (-128021113/200000000 : ℚ), (19590230209/100000000000 : ℚ), 3⟩,
    ⟨(343840247183/1000000000000 : ℚ), (-6696770871/10000000000 : ℚ), (206034966223/1000000000000 : ℚ), 3⟩,
    ⟨(172921570099/500000000000 : ℚ), (-216741603/312500000 : ℚ), (214275143149/1000000000000 : ℚ), 3⟩,
    ⟨(347469103879/1000000000000 : ℚ), (-1424456791/2000000000 : ℚ), (220742018369/1000000000000 : ℚ), 3⟩,
    ⟨(348702479307/1000000000000 : ℚ), (-3629814287/5000000000 : ℚ), (112761376773/500000000000 : ℚ), 3⟩,
    ⟨(349531388403/1000000000000 : ℚ), (-7350010431/10000000000 : ℚ), (57169531701/250000000000 : ℚ), 3⟩,
    ⟨(546793513/1562500000 : ℚ), (-295794213/400000000 : ℚ), (230246529117/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-7400444917/10000000000 : ℚ), (230442150247/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (390197700127/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control702.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control702.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate702
