import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate229
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16825403069/62500000000 : ℚ), (5682315339441/5000000000 : ℚ), (-12269276713847/40000000000 : ℚ), 11⟩,
    ⟨(270172742261/1000000000000 : ℚ), (309331928303/2500000000 : ℚ), (-33918337604307/1000000000000 : ℚ), 8⟩,
    ⟨(68024005661/250000000000 : ℚ), (43142886319/1000000000 : ℚ), (-6046580295977/500000000000 : ℚ), 7⟩,
    ⟨(274957768011/1000000000000 : ℚ), (42267140443/2000000000 : ℚ), (-3039991458103/500000000000 : ℚ), 6⟩,
    ⟨(278730418189/1000000000000 : ℚ), (121844784231/10000000000 : ℚ), (-901321404249/250000000000 : ℚ), 5⟩,
    ⟨(17711102531/62500000000 : ℚ), (77219134707/10000000000 : ℚ), (-294055434777/125000000000 : ℚ), 5⟩,
    ⟨(7221366991/25000000000 : ℚ), (1040040567/200000000 : ℚ), (-815853229069/500000000000 : ℚ), 4⟩,
    ⟨(295108788741/1000000000000 : ℚ), (36493083961/10000000000 : ℚ), (-1179333131299/1000000000000 : ℚ), 4⟩,
    ⟨(302079737307/1000000000000 : ℚ), (26352105771/10000000000 : ℚ), (-35072846777/40000000000 : ℚ), 3⟩,
    ⟨(61940078259/200000000000 : ℚ), (19405337933/10000000000 : ℚ), (-332259726843/500000000000 : ℚ), 3⟩,
    ⟨(317897359641/1000000000000 : ℚ), (14468955437/10000000000 : ℚ), (-509747888043/1000000000000 : ℚ), 3⟩,
    ⟨(326591701057/1000000000000 : ℚ), (10855186761/10000000000 : ℚ), (-4917348757/12500000000 : ℚ), 3⟩,
    ⟨(67139936857/200000000000 : ℚ), (4071699951/5000000000 : ℚ), (-303653303573/1000000000000 : ℚ), 3⟩,
    ⟨(69026718893/200000000000 : ℚ), (6065392693/10000000000 : ℚ), (-232961203109/1000000000000 : ℚ), 3⟩,
    ⟨(354802577887/1000000000000 : ℚ), (1111041573/2500000000 : ℚ), (-176257309591/1000000000000 : ℚ), 2⟩,
    ⟨(182306758477/500000000000 : ℚ), (1579747767/5000000000 : ℚ), (-130071344993/1000000000000 : ℚ), 2⟩,
    ⟨(4680899087/12500000000 : ℚ), (2127700739/10000000000 : ℚ), (-5747509907/62500000000 : ℚ), 2⟩,
    ⟨(384282866027/1000000000000 : ℚ), (64465579/500000000 : ℚ), (-15041689993/250000000000 : ℚ), 2⟩,
    ⟨(49243981181/125000000000 : ℚ), (3758117/62500000 : ℚ), (-33404607987/1000000000000 : ℚ), 2⟩,
    ⟨(403385759629/1000000000000 : ℚ), (16021957/5000000000 : ℚ), (-5358588587/500000000000 : ℚ), 2⟩,
    ⟨(51561717857/125000000000 : ℚ), (-44199683/1000000000 : ℚ), (8615805093/1000000000000 : ℚ), 2⟩,
    ⟨(421188084273/1000000000000 : ℚ), (-838554623/10000000000 : ℚ), (5028477061/200000000000 : ℚ), 2⟩,
    ⟨(214692526309/500000000000 : ℚ), (-1171109247/10000000000 : ℚ), (9820747601/250000000000 : ℚ), 2⟩,
    ⟨(218502853303/500000000000 : ℚ), (-724992731/5000000000 : ℚ), (12840518167/250000000000 : ℚ), 2⟩,
    ⟨(443976655173/1000000000000 : ℚ), (-52597933/312500000 : ℚ), (3081546073/50000000000 : ℚ), 2⟩,
    ⟨(450230764273/1000000000000 : ℚ), (-234586741/1250000000 : ℚ), (8785542783/125000000000 : ℚ), 2⟩,
    ⟨(455707803417/1000000000000 : ℚ), (-254425521/1250000000 : ℚ), (38736496549/500000000000 : ℚ), 2⟩,
    ⟨(115088756431/250000000000 : ℚ), (-540725687/2500000000 : ℚ), (83312585393/1000000000000 : ℚ), 2⟩,
    ⟨(464127675903/1000000000000 : ℚ), (-2261948501/10000000000 : ℚ), (14062523/160000000 : ℚ), 2⟩,
    ⟨(46698942127/100000000000 : ℚ), (-466916501/2000000000 : ℚ), (22818064253/250000000000 : ℚ), 2⟩,
    ⟨(117228175413/250000000000 : ℚ), (-2382244229/10000000000 : ℚ), (18700515587/200000000000 : ℚ), 2⟩,
    ⟨(469878994809/1000000000000 : ℚ), (-150365729/625000000 : ℚ), (94610699337/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2408792237/10000000000 : ℚ), (47374444237/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (153981443619/500000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control229.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control229.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate229
