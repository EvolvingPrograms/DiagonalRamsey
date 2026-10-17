import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate319
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(284263459283/1000000000000 : ℚ), (13838906717391/10000000000 : ℚ), (-394189053750171/1000000000000 : ℚ), 12⟩,
    ⟨(71265261271/250000000000 : ℚ), (1510996227463/10000000000 : ℚ), (-21785329931351/500000000000 : ℚ), 8⟩,
    ⟨(286648535499/1000000000000 : ℚ), (66105710687/1250000000 : ℚ), (-15521061560589/1000000000000 : ℚ), 7⟩,
    ⟨(289010642127/1000000000000 : ℚ), (52021230473/2000000000 : ℚ), (-311717928653/40000000000 : ℚ), 6⟩,
    ⟨(292124616591/1000000000000 : ℚ), (30110282469/2000000000 : ℚ), (-2306234679811/500000000000 : ℚ), 5⟩,
    ⟨(295960469613/1000000000000 : ℚ), (95744837537/10000000000 : ℚ), (-3002315557201/1000000000000 : ℚ), 5⟩,
    ⟨(300481259833/1000000000000 : ℚ), (8082302743/1250000000 : ℚ), (-259503468293/125000000000 : ℚ), 4⟩,
    ⟨(30564344957/100000000000 : ℚ), (22729810467/5000000000 : ℚ), (-747325166577/500000000000 : ℚ), 4⟩,
    ⟨(311397324113/1000000000000 : ℚ), (2053070307/625000000 : ℚ), (-221177515473/200000000000 : ℚ), 4⟩,
    ⟨(158843735253/500000000000 : ℚ), (24169650383/10000000000 : ℚ), (-833078179621/1000000000000 : ℚ), 4⟩,
    ⟨(324453311201/1000000000000 : ℚ), (17971947523/10000000000 : ℚ), (-317111466937/500000000000 : ℚ), 3⟩,
    ⟨(331629687453/1000000000000 : ℚ), (104785763/78125000 : ℚ), (-24237544463/50000000000 : ℚ), 3⟩,
    ⟨(84786871709/250000000000 : ℚ), (1246831141/1250000000 : ℚ), (-369513744247/1000000000000 : ℚ), 3⟩,
    ⟨(10841697151/31250000000 : ℚ), (7327804029/10000000000 : ℚ), (-69691116463/250000000000 : ℚ), 3⟩,
    ⟨(354915162089/1000000000000 : ℚ), (2626721201/5000000000 : ℚ), (-103002568267/500000000000 : ℚ), 3⟩,
    ⟨(181506593313/500000000000 : ℚ), (3602645143/10000000000 : ℚ), (-73386569973/500000000000 : ℚ), 3⟩,
    ⟨(185575197021/500000000000 : ℚ), (2271433177/10000000000 : ℚ), (-48962816069/500000000000 : ℚ), 3⟩,
    ⟨(379248418579/1000000000000 : ℚ), (296416209/2500000000 : ℚ), (-11440300669/200000000000 : ℚ), 2⟩,
    ⟨(96807317959/250000000000 : ℚ), (9109819/312500000 : ℚ), (-11472150039/500000000000 : ℚ), 2⟩,
    ⟨(49377011729/125000000000 : ℚ), (-90140569/2000000000 : ℚ), (379882987/62500000000 : ℚ), 2⟩,
    ⟨(80506778643/200000000000 : ℚ), (-1070631651/10000000000 : ℚ), (15397013369/500000000000 : ℚ), 2⟩,
    ⟨(409710269467/1000000000000 : ℚ), (-795332563/5000000000 : ℚ), (51909951191/1000000000000 : ℚ), 2⟩,
    ⟨(208238055081/500000000000 : ℚ), (-405574531/2000000000 : ℚ), (34984023543/500000000000 : ℚ), 2⟩,
    ⟨(84553251311/200000000000 : ℚ), (-2339217/9765625 : ℚ), (85386705607/1000000000000 : ℚ), 2⟩,
    ⟨(214260065549/500000000000 : ℚ), (-675807723/2500000000 : ℚ), (98489891921/1000000000000 : ℚ), 2⟩,
    ⟨(86736464167/200000000000 : ℚ), (-2959307467/10000000000 : ℚ), (109528615673/1000000000000 : ℚ), 2⟩,
    ⟨(87640622211/200000000000 : ℚ), (-633925219/2000000000 : ℚ), (59348419421/500000000000 : ℚ), 2⟩,
    ⟨(442038964077/1000000000000 : ℚ), (-3338824737/10000000000 : ℚ), (126143367729/1000000000000 : ℚ), 2⟩,
    ⟨(445152938541/1000000000000 : ℚ), (-3470420519/10000000000 : ℚ), (26396154873/200000000000 : ℚ), 2⟩,
    ⟨(447515045169/1000000000000 : ℚ), (-1783507481/5000000000 : ℚ), (68146029733/500000000000 : ℚ), 2⟩,
    ⟨(14034454237/31250000000 : ℚ), (-3630442129/10000000000 : ℚ), (6956776981/50000000000 : ℚ), 2⟩,
    ⟨(89980024277/200000000000 : ℚ), (-1830935611/5000000000 : ℚ), (17568534951/125000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3665786673/10000000000 : ℚ), (70362227663/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (147864601593/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control319.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control319.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate319
