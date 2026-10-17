import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate165
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(219374771761/1000000000000 : ℚ), (1765974859901/2000000000 : ℚ), (-38873485432229/200000000000 : ℚ), 11⟩,
    ⟨(220436502317/1000000000000 : ℚ), (191381610687/2000000000 : ℚ), (-21500658780193/1000000000000 : ℚ), 8⟩,
    ⟨(111274869191/500000000000 : ℚ), (1657764699/50000000 : ℚ), (-1534249658041/200000000000 : ℚ), 6⟩,
    ⟨(112847064169/500000000000 : ℚ), (80640444929/5000000000 : ℚ), (-1930505676107/500000000000 : ℚ), 5⟩,
    ⟨(229839389991/1000000000000 : ℚ), (92328872527/10000000000 : ℚ), (-143306220357/62500000000 : ℚ), 5⟩,
    ⟨(46989120441/200000000000 : ℚ), (58116202789/10000000000 : ℚ), (-299798533177/200000000000 : ℚ), 4⟩,
    ⟨(120481794683/500000000000 : ℚ), (38893693959/10000000000 : ℚ), (-208446163017/200000000000 : ℚ), 4⟩,
    ⟨(247835394967/1000000000000 : ℚ), (13572751467/5000000000 : ℚ), (-755492400903/1000000000000 : ℚ), 3⟩,
    ⟨(255494839763/1000000000000 : ℚ), (9757157597/5000000000 : ℚ), (-281843280981/500000000000 : ℚ), 3⟩,
    ⟨(52773631823/200000000000 : ℚ), (2864411423/2000000000 : ℚ), (-85802833807/200000000000 : ℚ), 3⟩,
    ⟨(272874713379/1000000000000 : ℚ), (2664283393/2500000000 : ℚ), (-330767222989/1000000000000 : ℚ), 3⟩,
    ⟨(56485552903/200000000000 : ℚ), (3995763357/5000000000 : ℚ), (-256831999073/1000000000000 : ℚ), 3⟩,
    ⟨(146217655709/500000000000 : ℚ), (375215901/625000000 : ℚ), (-199741908031/1000000000000 : ℚ), 2⟩,
    ⟨(15140048797/50000000000 : ℚ), (561072567/1250000000 : ℚ), (-77347317683/500000000000 : ℚ), 2⟩,
    ⟨(156712465533/500000000000 : ℚ), (414083923/1250000000 : ℚ), (-118490826387/1000000000000 : ℚ), 2⟩,
    ⟨(3242048623/10000000000 : ℚ), (2385005703/10000000000 : ℚ), (-88935383711/1000000000000 : ℚ), 2⟩,
    ⟨(335036953011/1000000000000 : ℚ), (32855523/200000000 : ℚ), (-12896887429/200000000000 : ℚ), 2⟩,
    ⟨(69163376849/200000000000 : ℚ), (1041594413/10000000000 : ℚ), (-8805828183/200000000000 : ℚ), 2⟩,
    ⟨(356440839371/1000000000000 : ℚ), (549525733/10000000000 : ℚ), (-5351770441/200000000000 : ℚ), 2⟩,
    ⟨(366806503893/1000000000000 : ℚ), (71618477/5000000000 : ℚ), (-6036013977/500000000000 : ℚ), 2⟩,
    ⟨(75362810159/200000000000 : ℚ), (-38910131/2000000000 : ℚ), (241644783/500000000000 : ℚ), 2⟩,
    ⟨(386367101931/1000000000000 : ℚ), (-15257/320000 : ℚ), (1406265883/125000000000 : ℚ), 2⟩,
    ⟨(98843414049/250000000000 : ℚ), (-356623557/5000000000 : ℚ), (20490913307/1000000000000 : ℚ), 2⟩,
    ⟨(403746975547/1000000000000 : ℚ), (-911415183/10000000000 : ℚ), (355094787/12500000000 : ℚ), 2⟩,
    ⟨(51425802543/125000000000 : ℚ), (-1077012817/10000000000 : ℚ), (17578034473/500000000000 : ℚ), 2⟩,
    ⟨(83655645189/200000000000 : ℚ), (-1214447941/10000000000 : ℚ), (40856894313/1000000000000 : ℚ), 2⟩,
    ⟨(84859242621/200000000000 : ℚ), (-1327113307/10000000000 : ℚ), (2850187589/62500000000 : ℚ), 2⟩,
    ⟨(10735060633/25000000000 : ℚ), (-141760827/1000000000 : ℚ), (9893116523/200000000000 : ℚ), 2⟩,
    ⟨(433547686973/1000000000000 : ℚ), (-743950403/5000000000 : ℚ), (26249217871/500000000000 : ℚ), 2⟩,
    ⟨(436692076929/1000000000000 : ℚ), (-1539445289/10000000000 : ℚ), (54741199701/1000000000000 : ℚ), 2⟩,
    ⟨(219402656497/500000000000 : ℚ), (-393316673/2500000000 : ℚ), (56221715841/1000000000000 : ℚ), 2⟩,
    ⟨(439867043549/1000000000000 : ℚ), (-1590018401/10000000000 : ℚ), (56957677611/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-398026249/2500000000 : ℚ), (57049473939/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (333325678721/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control165.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control165.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate165
