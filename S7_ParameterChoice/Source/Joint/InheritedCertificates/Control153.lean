import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate153
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(257342273541/1000000000000 : ℚ), (11549360666177/10000000000 : ℚ), (-298020565285737/1000000000000 : ℚ), 11⟩,
    ⟨(258317537803/1000000000000 : ℚ), (628238802837/5000000000 : ℚ), (-4119560691531/125000000000 : ℚ), 8⟩,
    ⟨(130129337/500000000 : ℚ), (54705538687/1250000000 : ℚ), (-11751278435061/1000000000000 : ℚ), 6⟩,
    ⟨(32893373491/125000000000 : ℚ), (214127519113/10000000000 : ℚ), (-2954459920979/500000000000 : ℚ), 6⟩,
    ⟨(133477331773/500000000000 : ℚ), (6165232331/500000000 : ℚ), (-700905655457/200000000000 : ℚ), 5⟩,
    ⟨(54329006171/200000000000 : ℚ), (2439116951/312500000 : ℚ), (-2287281893373/1000000000000 : ℚ), 4⟩,
    ⟨(55434583811/200000000000 : ℚ), (52504318367/10000000000 : ℚ), (-1587021166833/1000000000000 : ℚ), 4⟩,
    ⟨(283485091561/1000000000000 : ℚ), (2300535833/625000000 : ℚ), (-71718384979/62500000000 : ℚ), 4⟩,
    ⟨(2905207587/10000000000 : ℚ), (13278382209/5000000000 : ℚ), (-426781334901/500000000000 : ℚ), 3⟩,
    ⟨(18638260197/62500000000 : ℚ), (4885497091/2500000000 : ℚ), (-40454275083/62500000000 : ℚ), 3⟩,
    ⟨(38310654061/125000000000 : ℚ), (14562828241/10000000000 : ℚ), (-496858450367/1000000000000 : ℚ), 3⟩,
    ⟨(315260292527/1000000000000 : ℚ), (10921619829/10000000000 : ℚ), (-383756756549/1000000000000 : ℚ), 3⟩,
    ⟨(81113208661/250000000000 : ℚ), (8191923191/10000000000 : ℚ), (-74127976447/250000000000 : ℚ), 3⟩,
    ⟨(166987164817/500000000000 : ℚ), (6102016247/10000000000 : ℚ), (-5693922267/25000000000 : ℚ), 2⟩,
    ⟨(171866540147/500000000000 : ℚ), (4472717649/10000000000 : ℚ), (-172581933899/1000000000000 : ℚ), 2⟩,
    ⟨(176817552261/500000000000 : ℚ), (3182427923/10000000000 : ℚ), (-63808327097/500000000000 : ℚ), 2⟩,
    ⟨(363585040411/1000000000000 : ℚ), (2146594101/10000000000 : ℚ), (-90488920837/1000000000000 : ℚ), 2⟩,
    ⟨(186743532319/500000000000 : ℚ), (652594537/5000000000 : ℚ), (-3718343169/62500000000 : ℚ), 2⟩,
    ⟨(383245815299/1000000000000 : ℚ), (76853659/1250000000 : ℚ), (-16691172329/500000000000 : ℚ), 2⟩,
    ⟨(392767310289/1000000000000 : ℚ), (43672823/10000000000 : ℚ), (-5614085631/500000000000 : ℚ), 2⟩,
    ⟨(200979926203/500000000000 : ℚ), (-863927/20000000 : ℚ), (7666798727/1000000000000 : ℚ), 2⟩,
    ⟨(82146982489/200000000000 : ℚ), (-829895691/10000000000 : ℚ), (5958264051/250000000000 : ℚ), 2⟩,
    ⟨(419007981781/1000000000000 : ℚ), (-290913439/2500000000 : ℚ), (37677200651/1000000000000 : ℚ), 2⟩,
    ⟨(426699386233/1000000000000 : ℚ), (-72179547/500000000 : ℚ), (49512722143/1000000000000 : ℚ), 2⟩,
    ⟨(108433763343/250000000000 : ℚ), (-1677673053/10000000000 : ℚ), (3723887069/62500000000 : ℚ), 2⟩,
    ⟨(220023612939/500000000000 : ℚ), (-936023511/5000000000 : ℚ), (17018372501/250000000000 : ℚ), 2⟩,
    ⟨(222787557039/500000000000 : ℚ), (-253931807/1250000000 : ℚ), (75131788969/1000000000000 : ℚ), 2⟩,
    ⟨(450265481387/1000000000000 : ℚ), (-215953447/1000000000 : ℚ), (80868507001/1000000000000 : ℚ), 2⟩,
    ⟨(90814631401/200000000000 : ℚ), (-2259045887/10000000000 : ℚ), (17073597153/200000000000 : ℚ), 2⟩,
    ⟨(456961470933/1000000000000 : ℚ), (-466405897/2000000000 : ℚ), (8869246459/100000000000 : ℚ), 2⟩,
    ⟨(45890260713/100000000000 : ℚ), (-475984887/2000000000 : ℚ), (90885713119/1000000000000 : ℚ), 2⟩,
    ⟨(14371183481/31250000000 : ℚ), (-2403648529/10000000000 : ℚ), (45987786501/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2406603687/10000000000 : ℚ), (23027873061/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (283002041159/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control153.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control153.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate153
