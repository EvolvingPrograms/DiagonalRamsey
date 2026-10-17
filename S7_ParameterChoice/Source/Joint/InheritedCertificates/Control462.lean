import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate462
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30472711981/100000000000 : ℚ), (7814970116409/5000000000 : ℚ), (-477082245168401/1000000000000 : ℚ), 12⟩,
    ⟨(488681963/1600000000 : ℚ), (341933602747/2000000000 : ℚ), (-5271468608049/100000000000 : ℚ), 9⟩,
    ⟨(306817708221/1000000000000 : ℚ), (299909375313/5000000000 : ℚ), (-9382576216989/500000000000 : ℚ), 7⟩,
    ⟨(308888163123/1000000000000 : ℚ), (295759688701/10000000000 : ℚ), (-1176443162389/125000000000 : ℚ), 6⟩,
    ⟨(311617651969/1000000000000 : ℚ), (6863846673/400000000 : ℚ), (-43454213713/7812500000 : ℚ), 6⟩,
    ⟨(9843121509/31250000000 : ℚ), (10935069209/1000000000 : ℚ), (-451672348253/125000000000 : ℚ), 5⟩,
    ⟨(159471245953/500000000000 : ℚ), (36979173997/5000000000 : ℚ), (-311543526589/125000000000 : ℚ), 5⟩,
    ⟨(161733650393/500000000000 : ℚ), (1301010439/250000000 : ℚ), (-357759502311/200000000000 : ℚ), 4⟩,
    ⟨(328510738543/1000000000000 : ℚ), (18800709851/5000000000 : ℚ), (-329599511649/250000000000 : ℚ), 4⟩,
    ⟨(66804846823/200000000000 : ℚ), (2763271303/1000000000 : ℚ), (-123545497779/125000000000 : ℚ), 4⟩,
    ⟨(169977344763/500000000000 : ℚ), (160093137/78125000 : ℚ), (-186965425107/250000000000 : ℚ), 4⟩,
    ⟨(21640311953/62500000000 : ℚ), (3044432603/2000000000 : ℚ), (-28357547543/50000000000 : ℚ), 3⟩,
    ⟨(88208640059/250000000000 : ℚ), (11236262603/10000000000 : ℚ), (-106973839369/250000000000 : ℚ), 3⟩,
    ⟨(359659935341/1000000000000 : ℚ), (8158375677/10000000000 : ℚ), (-159147620429/500000000000 : ℚ), 3⟩,
    ⟨(366655384467/1000000000000 : ℚ), (2869686903/5000000000 : ℚ), (-230482880399/1000000000000 : ℚ), 3⟩,
    ⟨(23359596101/62500000000 : ℚ), (1904606291/5000000000 : ℚ), (-31810702299/200000000000 : ℚ), 3⟩,
    ⟨(380886035693/1000000000000 : ℚ), (281113969/1250000000 : ℚ), (-50099716549/500000000000 : ℚ), 3⟩,
    ⟨(193992094421/500000000000 : ℚ), (973441907/10000000000 : ℚ), (-12794994663/250000000000 : ℚ), 3⟩,
    ⟨(394979637969/1000000000000 : ℚ), (-790717/100000000 : ℚ), (-78017967/7812500000 : ℚ), 3⟩,
    ⟨(401805013073/1000000000000 : ℚ), (-477177507/5000000000 : ℚ), (4975358013/200000000000 : ℚ), 3⟩,
    ⟨(204197291031/500000000000 : ℚ), (-1686645491/10000000000 : ℚ), (54536426407/1000000000000 : ℚ), 3⟩,
    ⟨(51835610473/125000000000 : ℚ), (-1150930399/5000000000 : ℚ), (79851103693/1000000000000 : ℚ), 3⟩,
    ⟨(84123067839/200000000000 : ℚ), (-1409897823/5000000000 : ℚ), (101479940447/1000000000000 : ℚ), 2⟩,
    ⟨(426128834767/1000000000000 : ℚ), (-3255671409/10000000000 : ℚ), (29982960317/250000000000 : ℚ), 2⟩,
    ⟨(107793068131/250000000000 : ℚ), (-3621246039/10000000000 : ℚ), (1084807841/8000000000 : ℚ), 2⟩,
    ⟨(435697081403/1000000000000 : ℚ), (-1962809799/5000000000 : ℚ), (148792795427/1000000000000 : ℚ), 2⟩,
    ⟨(219829842511/500000000000 : ℚ), (-2087912611/5000000000 : ℚ), (159743277423/1000000000000 : ℚ), 2⟩,
    ⟨(443021921341/1000000000000 : ℚ), (-3419739/7812500 : ℚ), (168633410759/1000000000000 : ℚ), 2⟩,
    ⟨(222875705093/500000000000 : ℚ), (-906807661/2000000000 : ℚ), (175600033841/1000000000000 : ℚ), 2⟩,
    ⟨(3498608321/7812500000 : ℚ), (-2324585687/5000000000 : ℚ), (180743970803/1000000000000 : ℚ), 2⟩,
    ⟨(89842669287/200000000000 : ℚ), (-29529997/62500000 : ℚ), (46034002583/250000000000 : ℚ), 2⟩,
    ⟨(899824907/2000000000 : ℚ), (-4762282779/10000000000 : ℚ), (92910558321/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-595869107/1250000000 : ℚ), (4650781241/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (291131001237/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control462.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control462.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate462
