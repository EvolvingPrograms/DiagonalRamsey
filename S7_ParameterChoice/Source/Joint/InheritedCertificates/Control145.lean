import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate145
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(58975394997/250000000000 : ℚ), (366289807613/400000000 : ℚ), (-216750701915111/1000000000000 : ℚ), 11⟩,
    ⟨(237028148547/1000000000000 : ℚ), (496316897081/5000000000 : ℚ), (-11988521372603/500000000000 : ℚ), 8⟩,
    ⟨(119635218097/500000000000 : ℚ), (344053198701/10000000000 : ℚ), (-8555103407897/1000000000000 : ℚ), 6⟩,
    ⟨(242606848473/1000000000000 : ℚ), (167431600521/10000000000 : ℚ), (-430613608449/100000000000 : ℚ), 5⟩,
    ⟨(247005253911/1000000000000 : ℚ), (11986891701/1250000000 : ℚ), (-2557506107059/1000000000000 : ℚ), 5⟩,
    ⟨(126211646729/500000000000 : ℚ), (60392820237/10000000000 : ℚ), (-83612524517/50000000000 : ℚ), 4⟩,
    ⟨(258808788431/1000000000000 : ℚ), (40441617127/10000000000 : ℚ), (-1162977603169/1000000000000 : ℚ), 4⟩,
    ⟨(16631265189/62500000000 : ℚ), (28245828473/10000000000 : ℚ), (-843319535959/1000000000000 : ℚ), 3⟩,
    ⟨(274227436543/1000000000000 : ℚ), (812911643/400000000 : ℚ), (-314768525499/500000000000 : ℚ), 3⟩,
    ⟨(283112099671/1000000000000 : ℚ), (14931559333/10000000000 : ℚ), (-11986925601/25000000000 : ℚ), 3⟩,
    ⟨(146334334123/500000000000 : ℚ), (2781558409/2500000000 : ℚ), (-370045609051/1000000000000 : ℚ), 3⟩,
    ⟨(37850638411/125000000000 : ℚ), (2089705081/2500000000 : ℚ), (-143866457627/500000000000 : ℚ), 3⟩,
    ⟨(313423797349/1000000000000 : ℚ), (6295287623/10000000000 : ℚ), (-28026416147/125000000000 : ℚ), 2⟩,
    ⟨(324422474637/1000000000000 : ℚ), (4723465313/10000000000 : ℚ), (-34824862003/200000000000 : ℚ), 2⟩,
    ⟨(167847607939/500000000000 : ℚ), (3503932591/10000000000 : ℚ), (-33475712567/250000000000 : ℚ), 2⟩,
    ⟨(86783364603/250000000000 : ℚ), (2542432307/10000000000 : ℚ), (-3159306921/31250000000 : ℚ), 2⟩,
    ⟨(35862704571/100000000000 : ℚ), (443421627/2500000000 : ℚ), (-18496570799/250000000000 : ℚ), 2⟩,
    ⟨(92516322061/250000000000 : ℚ), (115154357/1000000000 : ℚ), (-12832594629/250000000000 : ℚ), 2⟩,
    ⟨(76267605897/200000000000 : ℚ), (20087089/312500000 : ℚ), (-32224756511/1000000000000 : ℚ), 2⟩,
    ⟨(196168353387/500000000000 : ℚ), (55784043/2500000000 : ℚ), (-15997210871/1000000000000 : ℚ), 2⟩,
    ⟨(201477698417/500000000000 : ℚ), (-31349179/2500000000 : ℚ), (-1071160237/500000000000 : ℚ), 2⟩,
    ⟨(103272958969/250000000000 : ℚ), (-416294097/10000000000 : ℚ), (4861936747/500000000000 : ℚ), 2⟩,
    ⟨(422648404451/1000000000000 : ℚ), (-131952131/2000000000 : ℚ), (497386183/25000000000 : ℚ), 2⟩,
    ⟨(431533067579/1000000000000 : ℚ), (-863582053/10000000000 : ℚ), (14299496301/500000000000 : ℚ), 2⟩,
    ⟨(219830130549/500000000000 : ℚ), (-206746703/2000000000 : ℚ), (7201950901/200000000000 : ℚ), 2⟩,
    ⟨(446951715691/1000000000000 : ℚ), (-293704099/2500000000 : ℚ), (42263419799/1000000000000 : ℚ), 2⟩,
    ⟨(56667151333/125000000000 : ℚ), (-645187181/5000000000 : ℚ), (47464821903/1000000000000 : ℚ), 2⟩,
    ⟨(458755250211/1000000000000 : ℚ), (-1383123897/10000000000 : ℚ), (1615450621/31250000000 : ℚ), 2⟩,
    ⟨(463153655649/1000000000000 : ℚ), (-363780677/2500000000 : ℚ), (55013132937/1000000000000 : ℚ), 2⟩,
    ⟨(58311258491/125000000000 : ℚ), (-60315687/400000000 : ℚ), (28732965069/500000000000 : ℚ), 2⟩,
    ⟨(18749294223/40000000000 : ℚ), (-771252447/5000000000 : ℚ), (59084447187/1000000000000 : ℚ), 2⟩,
    ⟨(234929462067/500000000000 : ℚ), (-779822399/5000000000 : ℚ), (29944406919/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1561779571/10000000000 : ℚ), (14997283283/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (155880917119/500000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control145.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control145.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate145
