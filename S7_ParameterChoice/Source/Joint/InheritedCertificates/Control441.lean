import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate441
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(305544984659/1000000000000 : ℚ), (1630663081369/1250000000 : ℚ), (-19969374678969/50000000000 : ℚ), 12⟩,
    ⟨(306384526999/1000000000000 : ℚ), (712368858853/5000000000 : ℚ), (-44147360577317/1000000000000 : ℚ), 9⟩,
    ⟨(154027763213/500000000000 : ℚ), (498862009381/10000000000 : ℚ), (-7864025548961/500000000000 : ℚ), 7⟩,
    ⟨(1213054259/3906250000 : ℚ), (12274298643/500000000 : ℚ), (-3949057385379/500000000000 : ℚ), 6⟩,
    ⟨(313819673589/1000000000000 : ℚ), (4442993519/312500000 : ℚ), (-2337887649067/500000000000 : ℚ), 6⟩,
    ⟨(63571461887/200000000000 : ℚ), (45241147091/5000000000 : ℚ), (-608895584477/200000000000 : ℚ), 5⟩,
    ⟨(80653978301/250000000000 : ℚ), (61155010589/10000000000 : ℚ), (-131629952943/62500000000 : ℚ), 5⟩,
    ⟨(164024828469/500000000000 : ℚ), (4303861797/1000000000 : ℚ), (-1517156258299/1000000000000 : ℚ), 4⟩,
    ⟨(66821242143/200000000000 : ℚ), (31136740613/10000000000 : ℚ), (-280851517543/250000000000 : ℚ), 4⟩,
    ⟨(85181811653/250000000000 : ℚ), (5735941197/2500000000 : ℚ), (-847156923371/1000000000000 : ℚ), 4⟩,
    ⟨(173924500217/500000000000 : ℚ), (3418599223/2000000000 : ℚ), (-322927843303/500000000000 : ℚ), 3⟩,
    ⟨(355402885797/1000000000000 : ℚ), (6394459559/5000000000 : ℚ), (-494606803723/1000000000000 : ℚ), 3⟩,
    ⟨(181658077329/500000000000 : ℚ), (1908782921/2000000000 : ℚ), (-378061139869/1000000000000 : ℚ), 3⟩,
    ⟨(37151259791/100000000000 : ℚ), (704625479/1000000000 : ℚ), (-143170796357/500000000000 : ℚ), 3⟩,
    ⟨(94978319831/250000000000 : ℚ), (1272400551/2500000000 : ℚ), (-212862589573/1000000000000 : ℚ), 3⟩,
    ⟨(388437295747/1000000000000 : ℚ), (141333479/400000000 : ℚ), (-76550154033/500000000000 : ℚ), 3⟩,
    ⟨(4962531953/12500000000 : ℚ), (1139614559/5000000000 : ℚ), (-51933881849/500000000000 : ℚ), 3⟩,
    ⟨(405526572663/1000000000000 : ℚ), (1257198167/10000000000 : ℚ), (-62871055927/1000000000000 : ℚ), 3⟩,
    ⟨(206963627039/500000000000 : ℚ), (416334883/10000000000 : ℚ), (-14214351333/500000000000 : ℚ), 3⟩,
    ⟨(42212369733/100000000000 : ℚ), (-280920601/10000000000 : ℚ), (711018807/1000000000000 : ℚ), 2⟩,
    ⟨(43003696619/100000000000 : ℚ), (-17252959/200000000 : ℚ), (25491986951/1000000000000 : ℚ), 2⟩,
    ⟨(218795425777/500000000000 : ℚ), (-270014887/2000000000 : ℚ), (46633457641/1000000000000 : ℚ), 2⟩,
    ⟨(3557700843/8000000000 : ℚ), (-1759394267/10000000000 : ℚ), (16172008507/250000000000 : ℚ), 2⟩,
    ⟨(56416705159/125000000000 : ℚ), (-2103049789/10000000000 : ℚ), (16016557927/200000000000 : ℚ), 2⟩,
    ⟨(9147803901/20000000000 : ℚ), (-597661831/2500000000 : ℚ), (93148926473/1000000000000 : ℚ), 2⟩,
    ⟨(14463248087/31250000000 : ℚ), (-1314810169/5000000000 : ℚ), (104143478257/1000000000000 : ℚ), 2⟩,
    ⟨(58447817819/125000000000 : ℚ), (-1412857341/5000000000 : ℚ), (22653077699/200000000000 : ℚ), 2⟩,
    ⟨(235810089199/500000000000 : ℚ), (-745836563/2500000000 : ℚ), (120667530367/1000000000000 : ℚ), 2⟩,
    ⟨(474897961683/1000000000000 : ℚ), (-310586527/1000000000 : ℚ), (2529314513/20000000000 : ℚ), 2⟩,
    ⟨(477384325561/1000000000000 : ℚ), (-3195750641/10000000000 : ℚ), (16343185627/125000000000 : ℚ), 2⟩,
    ⟨(479055324989/1000000000000 : ℚ), (-3254750397/10000000000 : ℚ), (133566954877/1000000000000 : ℚ), 2⟩,
    ⟨(3749178651/7812500000 : ℚ), (-1641989533/5000000000 : ℚ), (134968394861/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3287620079/10000000000 : ℚ), (67571572157/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (318976129971/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control441.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control441.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate441
