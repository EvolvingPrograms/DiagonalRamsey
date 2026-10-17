import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate679
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(447016823511/1000000000000 : ℚ), (16339396429367/10000000000 : ℚ), (-29251414070153/40000000000 : ℚ), 13⟩,
    ⟨(223876517693/500000000000 : ℚ), (1792011103021/10000000000 : ℚ), (-40397802957813/500000000000 : ℚ), 9⟩,
    ⟨(449218369013/1000000000000 : ℚ), (631060537473/10000000000 : ℚ), (-3594573301129/125000000000 : ℚ), 8⟩,
    ⟨(112849678107/250000000000 : ℚ), (156253660683/5000000000 : ℚ), (-7209755074381/500000000000 : ℚ), 7⟩,
    ⟨(113568266933/250000000000 : ℚ), (18215343147/1000000000 : ℚ), (-8519710564891/1000000000000 : ℚ), 6⟩,
    ⟨(457813753313/1000000000000 : ℚ), (116638937413/10000000000 : ℚ), (-2766746214739/500000000000 : ℚ), 6⟩,
    ⟨(461986670433/1000000000000 : ℚ), (79280761791/10000000000 : ℚ), (-954060130681/250000000000 : ℚ), 5⟩,
    ⟨(233375815809/500000000000 : ℚ), (56073939927/10000000000 : ℚ), (-10956407019/4000000000 : ℚ), 5⟩,
    ⟨(59007843461/125000000000 : ℚ), (20368716047/5000000000 : ℚ), (-100976201537/50000000000 : ℚ), 5⟩,
    ⟨(477868869691/1000000000000 : ℚ), (3764533067/1250000000 : ℚ), (-378818533819/250000000000 : ℚ), 4⟩,
    ⟨(484114081499/1000000000000 : ℚ), (5621537191/2500000000 : ℚ), (-574211376843/500000000000 : ℚ), 4⟩,
    ⟨(122684559577/250000000000 : ℚ), (842051509/500000000 : ℚ), (-218342722253/250000000000 : ℚ), 4⟩,
    ⟨(497677545867/1000000000000 : ℚ), (3140619319/2500000000 : ℚ), (-26479890957/40000000000 : ℚ), 4⟩,
    ⟨(504865174851/1000000000000 : ℚ), (9253800263/10000000000 : ℚ), (-496197746027/1000000000000 : ℚ), 4⟩,
    ⟨(512231904463/1000000000000 : ℚ), (6651388701/10000000000 : ℚ), (-363892690567/1000000000000 : ℚ), 4⟩,
    ⟨(51970678907/100000000000 : ℚ), (4574777389/10000000000 : ℚ), (-51355096233/200000000000 : ℚ), 3⟩,
    ⟨(65902230181/125000000000 : ℚ), (2897258283/10000000000 : ℚ), (-42246370527/250000000000 : ℚ), 3⟩,
    ⟨(106938545211/200000000000 : ℚ), (1527922527/10000000000 : ℚ), (-48147976241/500000000000 : ℚ), 3⟩,
    ⟨(542059455667/1000000000000 : ℚ), (400325379/10000000000 : ℚ), (-17800317137/500000000000 : ℚ), 3⟩,
    ⟨(10984941693/20000000000 : ℚ), (-534873591/10000000000 : ℚ), (3855042513/250000000000 : ℚ), 3⟩,
    ⟨(556186392209/1000000000000 : ℚ), (-1314809483/10000000000 : ℚ), (58522282977/1000000000000 : ℚ), 3⟩,
    ⟨(281405274509/500000000000 : ℚ), (-196774567/1000000000 : ℚ), (95049497903/1000000000000 : ℚ), 3⟩,
    ⟨(569055760827/1000000000000 : ℚ), (-503077463/2000000000 : ℚ), (63019609949/500000000000 : ℚ), 3⟩,
    ⟨(57486188283/100000000000 : ℚ), (-2974515583/10000000000 : ℚ), (4759291137/31250000000 : ℚ), 3⟩,
    ⟨(5801729989/10000000000 : ℚ), (-3358160473/10000000000 : ℚ), (174452047989/1000000000000 : ℚ), 3⟩,
    ⟨(116987592017/200000000000 : ℚ), (-459556803/1250000000 : ℚ), (96496761713/500000000000 : ℚ), 3⟩,
    ⟨(117822175441/200000000000 : ℚ), (-492157627/1250000000 : ℚ), (6509467367/31250000000 : ℚ), 3⟩,
    ⟨(118530312557/200000000000 : ℚ), (-2073321041/5000000000 : ℚ), (220674581731/1000000000000 : ℚ), 3⟩,
    ⟨(59552591809/100000000000 : ℚ), (-2154603083/5000000000 : ℚ), (14395761109/62500000000 : ℚ), 3⟩,
    ⟨(119541252301/200000000000 : ℚ), (-1107091867/2500000000 : ℚ), (59360367387/250000000000 : ℚ), 3⟩,
    ⟨(149792898783/250000000000 : ℚ), (-4506534977/10000000000 : ℚ), (242119299181/1000000000000 : ℚ), 3⟩,
    ⟨(599907807007/1000000000000 : ℚ), (-4545244911/10000000000 : ℚ), (244440111141/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-4550066327/10000000000 : ℚ), (4894587477/20000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (265545020671/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control679.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control679.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate679
