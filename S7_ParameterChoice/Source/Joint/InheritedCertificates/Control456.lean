import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate456
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(317715586999/1000000000000 : ℚ), (3646484696493/2500000000 : ℚ), (-116061797811691/250000000000 : ℚ), 12⟩,
    ⟨(318496559879/1000000000000 : ℚ), (199332322981/1250000000 : ℚ), (-25653621540143/500000000000 : ℚ), 9⟩,
    ⟨(320050984443/1000000000000 : ℚ), (279564210039/5000000000 : ℚ), (-2283993624521/125000000000 : ℚ), 7⟩,
    ⟨(161181945367/500000000000 : ℚ), (68886179027/2500000000 : ℚ), (-917026296207/100000000000 : ℚ), 6⟩,
    ⟨(325413004199/1000000000000 : ℚ), (159806950821/10000000000 : ℚ), (-2712285717783/500000000000 : ℚ), 6⟩,
    ⟨(329168960209/1000000000000 : ℚ), (5091314391/500000000 : ℚ), (-3528356569917/1000000000000 : ℚ), 5⟩,
    ⟨(333595586853/1000000000000 : ℚ), (68886592667/10000000000 : ℚ), (-1218797229083/500000000000 : ℚ), 5⟩,
    ⟨(338650253299/1000000000000 : ℚ), (24253639727/5000000000 : ℚ), (-1753081806083/1000000000000 : ℚ), 4⟩,
    ⟨(43035535043/125000000000 : ℚ), (2193526917/625000000 : ℚ), (-647726528209/500000000000 : ℚ), 4⟩,
    ⟨(87610852307/250000000000 : ℚ), (12924285181/5000000000 : ℚ), (-4872101661/5000000000 : ℚ), 4⟩,
    ⟨(178534162087/500000000000 : ℚ), (3846529541/2000000000 : ℚ), (-185129563871/250000000000 : ℚ), 4⟩,
    ⟨(91023805907/250000000000 : ℚ), (3589231557/2500000000 : ℚ), (-564806783217/1000000000000 : ℚ), 3⟩,
    ⟨(92864108677/250000000000 : ℚ), (1067440733/1000000000 : ℚ), (-3355020453/7812500000 : ℚ), 3⟩,
    ⟨(11846283279/31250000000 : ℚ), (3917553433/5000000000 : ℚ), (-322943068841/1000000000000 : ℚ), 3⟩,
    ⟨(386895684929/1000000000000 : ℚ), (350446401/625000000 : ℚ), (-118825712593/500000000000 : ℚ), 3⟩,
    ⟨(394825035649/1000000000000 : ℚ), (479039571/1250000000 : ℚ), (-168307481621/1000000000000 : ℚ), 3⟩,
    ⟨(402792753107/1000000000000 : ℚ), (2399992603/10000000000 : ℚ), (-111204936399/1000000000000 : ℚ), 3⟩,
    ⟨(102680525957/250000000000 : ℚ), (1231141823/10000000000 : ℚ), (-6367561463/100000000000 : ℚ), 3⟩,
    ⟨(418536723829/1000000000000 : ℚ), (268281833/10000000000 : ℚ), (-297040851/12500000000 : ℚ), 3⟩,
    ⟨(6658771157/15625000000 : ℚ), (-66381363/1250000000 : ℚ), (9988707571/1000000000000 : ℚ), 3⟩,
    ⟨(54190320641/125000000000 : ℚ), (-119864161/1000000000 : ℚ), (38678950861/1000000000000 : ℚ), 2⟩,
    ⟨(220274732291/500000000000 : ℚ), (-1758547171/10000000000 : ℚ), (6314484367/100000000000 : ℚ), 2⟩,
    ⟨(55896797441/125000000000 : ℚ), (-2229140217/10000000000 : ℚ), (84029876333/1000000000000 : ℚ), 2⟩,
    ⟨(113333377103/250000000000 : ℚ), (-1312275011/5000000000 : ℚ), (12728930051/125000000000 : ℚ), 2⟩,
    ⟨(458967535457/1000000000000 : ℚ), (-73892343/250000000 : ℚ), (116935302647/1000000000000 : ℚ), 2⟩,
    ⟨(464022201903/1000000000000 : ℚ), (-80775601/250000000 : ℚ), (25928168407/200000000000 : ℚ), 2⟩,
    ⟨(117112207137/250000000000 : ℚ), (-3457077293/10000000000 : ℚ), (140179756229/1000000000000 : ℚ), 2⟩,
    ⟨(472204784557/1000000000000 : ℚ), (-909719491/2500000000 : ℚ), (148730054677/1000000000000 : ℚ), 2⟩,
    ⟨(237626949011/500000000000 : ℚ), (-15120953/40000000 : ℚ), (19428321213/125000000000 : ℚ), 2⟩,
    ⟨(477566804313/1000000000000 : ℚ), (-3883978741/10000000000 : ℚ), (160368817771/1000000000000 : ℚ), 2⟩,
    ⟨(479121228877/1000000000000 : ℚ), (-3952088183/10000000000 : ℚ), (81813387863/500000000000 : ℚ), 2⟩,
    ⟨(239951100879/500000000000 : ℚ), (-3985834419/10000000000 : ℚ), (8262247263/50000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3990038401/10000000000 : ℚ), (82723357909/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (294933499137/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control456.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control456.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate456
