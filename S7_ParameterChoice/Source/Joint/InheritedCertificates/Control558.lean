import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate558
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(235752656491/1000000000000 : ℚ), (3523440843027/2500000000 : ℚ), (-166412965203033/500000000000 : ℚ), 12⟩,
    ⟨(59075614287/250000000000 : ℚ), (61643746969/400000000 : ℚ), (-36766387333059/1000000000000 : ℚ), 9⟩,
    ⟨(118698381791/500000000000 : ℚ), (540334249451/10000000000 : ℚ), (-3270361250357/250000000000 : ℚ), 8⟩,
    ⟨(119512518511/500000000000 : ℚ), (133091277559/5000000000 : ℚ), (-1638943586143/250000000000 : ℚ), 7⟩,
    ⟨(241171596307/1000000000000 : ℚ), (154240743033/10000000000 : ℚ), (-3870058111469/1000000000000 : ℚ), 6⟩,
    ⟨(48763153779/200000000000 : ℚ), (98125593343/10000000000 : ℚ), (-2510281392451/1000000000000 : ℚ), 5⟩,
    ⟨(246932089961/1000000000000 : ℚ), (33109611323/5000000000 : ℚ), (-26998870033/15625000000 : ℚ), 5⟩,
    ⟨(62622636907/250000000000 : ℚ), (46458633183/10000000000 : ℚ), (-1236788336779/1000000000000 : ℚ), 5⟩,
    ⟨(63614218001/250000000000 : ℚ), (6687658933/2000000000 : ℚ), (-908268824559/1000000000000 : ℚ), 4⟩,
    ⟨(258792865217/1000000000000 : ℚ), (1222292153/500000000 : ℚ), (-33881980209/50000000000 : ℚ), 4⟩,
    ⟨(263456769283/1000000000000 : ℚ), (9000404293/5000000000 : ℚ), (-509439322937/1000000000000 : ℚ), 4⟩,
    ⟨(134201834127/500000000000 : ℚ), (6620387943/5000000000 : ℚ), (-76584535593/200000000000 : ℚ), 4⟩,
    ⟨(273585920791/1000000000000 : ℚ), (2409162739/2500000000 : ℚ), (-285300570007/1000000000000 : ℚ), 3⟩,
    ⟨(278953618967/1000000000000 : ℚ), (342493083/500000000 : ℚ), (-52086135111/250000000000 : ℚ), 3⟩,
    ⟨(71113767229/250000000000 : ℚ), (4656068109/10000000000 : ℚ), (-146569595763/1000000000000 : ℚ), 3⟩,
    ⟨(72509322167/250000000000 : ℚ), (725554451/2500000000 : ℚ), (-12026171141/125000000000 : ℚ), 3⟩,
    ⟨(295646518393/1000000000000 : ℚ), (370320963/2500000000 : ℚ), (-13653008357/250000000000 : ℚ), 3⟩,
    ⟨(9413398067/31250000000 : ℚ), (316836551/10000000000 : ℚ), (-3974103031/200000000000 : ℚ), 3⟩,
    ⟨(153365094047/500000000000 : ℚ), (-646689713/10000000000 : ℚ), (9411396013/1000000000000 : ℚ), 3⟩,
    ⟨(31209788627/100000000000 : ℚ), (-362578133/2500000000 : ℚ), (17135643893/500000000000 : ℚ), 3⟩,
    ⟨(317280138807/1000000000000 : ℚ), (-66396973/312500000 : ℚ), (55489772053/1000000000000 : ℚ), 3⟩,
    ⟨(161113518889/500000000000 : ℚ), (-2693043531/10000000000 : ℚ), (14731983321/200000000000 : ℚ), 3⟩,
    ⟨(326890941843/1000000000000 : ℚ), (-3173007647/10000000000 : ℚ), (89235660263/1000000000000 : ℚ), 3⟩,
    ⟨(331226935057/1000000000000 : ℚ), (-1789079571/5000000000 : ℚ), (102566214671/1000000000000 : ℚ), 3⟩,
    ⟨(335193259433/1000000000000 : ℚ), (-244934553/625000000 : ℚ), (113920929171/1000000000000 : ℚ), 3⟩,
    ⟨(3387517171/10000000000 : ℚ), (-4203461811/10000000000 : ℚ), (61753769693/500000000000 : ℚ), 3⟩,
    ⟨(170934019083/500000000000 : ℚ), (-887582159/2000000000 : ℚ), (16435716519/125000000000 : ℚ), 3⟩,
    ⟨(172256105377/500000000000 : ℚ), (-4627070697/10000000000 : ℚ), (27595464907/200000000000 : ℚ), 3⟩,
    ⟨(346658770039/1000000000000 : ℚ), (-1193637717/2500000000 : ℚ), (28614786277/200000000000 : ℚ), 3⟩,
    ⟨(348287043479/1000000000000 : ℚ), (-4883014707/10000000000 : ℚ), (146842717187/1000000000000 : ℚ), 3⟩,
    ⟨(43672668739/125000000000 : ℚ), (-4954335837/10000000000 : ℚ), (149330630807/1000000000000 : ℚ), 3⟩,
    ⟨(34993115057/100000000000 : ℚ), (-4989706607/10000000000 : ℚ), (150567390509/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-156066079/312500000 : ℚ), (30144330509/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (23703272679/62500000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control558.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control558.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate558
