import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate601
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267768609229/1000000000000 : ℚ), (12992078627693/10000000000 : ℚ), (-174243641104763/500000000000 : ℚ), 12⟩,
    ⟨(134202477901/500000000000 : ℚ), (710283037223/5000000000 : ℚ), (-4812872191941/125000000000 : ℚ), 9⟩,
    ⟨(269671520583/1000000000000 : ℚ), (498091321831/10000000000 : ℚ), (-13704089858189/1000000000000 : ℚ), 8⟩,
    ⟨(271556105861/1000000000000 : ℚ), (245414674363/10000000000 : ℚ), (-10736814581/1562500000 : ℚ), 7⟩,
    ⟨(274040562049/1000000000000 : ℚ), (71129592797/5000000000 : ℚ), (-507452169441/125000000000 : ℚ), 6⟩,
    ⟨(69275240619/250000000000 : ℚ), (90560535379/10000000000 : ℚ), (-329499909151/125000000000 : ℚ), 5⟩,
    ⟨(70176958453/250000000000 : ℚ), (61174254299/10000000000 : ℚ), (-908492355167/500000000000 : ℚ), 5⟩,
    ⟨(71206609979/250000000000 : ℚ), (4298146271/1000000000 : ℚ), (-1302903069269/1000000000000 : ℚ), 5⟩,
    ⟨(289417116359/1000000000000 : ℚ), (30999929797/10000000000 : ℚ), (-59944429117/62500000000 : ℚ), 4⟩,
    ⟨(294435652417/1000000000000 : ℚ), (2272982009/1000000000 : ℚ), (-358916602247/500000000000 : ℚ), 4⟩,
    ⟨(59966743369/200000000000 : ℚ), (16806737441/10000000000 : ℚ), (-541939731431/1000000000000 : ℚ), 4⟩,
    ⟨(305559323331/1000000000000 : ℚ), (6217960291/5000000000 : ℚ), (-204854016647/500000000000 : ℚ), 4⟩,
    ⟨(62311466231/200000000000 : ℚ), (4564899603/5000000000 : ℚ), (-15387291689/50000000000 : ℚ), 4⟩,
    ⟨(317769976223/1000000000000 : ℚ), (1644094367/2500000000 : ℚ), (-227435717919/1000000000000 : ℚ), 3⟩,
    ⟨(162068713683/500000000000 : ℚ), (2284460843/5000000000 : ℚ), (-3260649783/20000000000 : ℚ), 3⟩,
    ⟨(330598362549/1000000000000 : ℚ), (1483191123/5000000000 : ℚ), (-110590140189/1000000000000 : ℚ), 3⟩,
    ⟨(67418111887/200000000000 : ℚ), (334022753/2000000000 : ℚ), (-6732937409/100000000000 : ℚ), 3⟩,
    ⟨(343551494619/1000000000000 : ℚ), (76207287/1250000000 : ℚ), (-6250091143/200000000000 : ℚ), 3⟩,
    ⟨(174959472881/500000000000 : ℚ), (-66555619/2500000000 : ℚ), (-888360321/1000000000000 : ℚ), 3⟩,
    ⟨(35613159083/100000000000 : ℚ), (-995365921/10000000000 : ℚ), (6211645047/250000000000 : ℚ), 3⟩,
    ⟨(181064799327/500000000000 : ℚ), (-1606078631/10000000000 : ℚ), (1871002043/40000000000 : ℚ), 3⟩,
    ⟨(18392760257/50000000000 : ℚ), (-52994191/250000000 : ℚ), (13104278583/200000000000 : ℚ), 3⟩,
    ⟨(5832082337/15625000000 : ℚ), (-319095567/1250000000 : ℚ), (4078211617/50000000000 : ℚ), 3⟩,
    ⟨(189135902813/500000000000 : ℚ), (-2917612187/10000000000 : ℚ), (47636220107/500000000000 : ℚ), 3⟩,
    ⟨(382862482069/1000000000000 : ℚ), (-1611993207/5000000000 : ℚ), (53465553127/500000000000 : ℚ), 3⟩,
    ⟨(96745272043/250000000000 : ℚ), (-3479365019/10000000000 : ℚ), (116760591411/1000000000000 : ℚ), 3⟩,
    ⟨(390587959509/1000000000000 : ℚ), (-230594917/625000000 : ℚ), (62465340821/500000000000 : ℚ), 3⟩,
    ⟨(768844453/1953125000 : ℚ), (-3858873847/10000000000 : ℚ), (16446400671/125000000000 : ℚ), 3⟩,
    ⟨(99033204031/250000000000 : ℚ), (-3990781851/10000000000 : ℚ), (136780028691/1000000000000 : ℚ), 3⟩,
    ⟨(199008700701/500000000000 : ℚ), (-4087717303/10000000000 : ℚ), (140629053137/1000000000000 : ℚ), 3⟩,
    ⟨(399283966183/1000000000000 : ℚ), (-2075710983/5000000000 : ℚ), (71584315951/500000000000 : ℚ), 3⟩,
    ⟨(99980078189/250000000000 : ℚ), (-2091502361/5000000000 : ℚ), (144430684111/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-4186940077/10000000000 : ℚ), (144588082613/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (388836283251/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control601.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control601.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate601
