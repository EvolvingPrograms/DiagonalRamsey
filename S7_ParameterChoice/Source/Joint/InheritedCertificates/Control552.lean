import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate552
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71530454399/250000000000 : ℚ), (13581538330273/10000000000 : ℚ), (-97320190477631/250000000000 : ℚ), 12⟩,
    ⟨(286814212857/1000000000000 : ℚ), (1484890743787/10000000000 : ℚ), (-5376891645869/125000000000 : ℚ), 9⟩,
    ⟨(144096167617/500000000000 : ℚ), (520615313063/10000000000 : ℚ), (-382843735859/25000000000 : ℚ), 7⟩,
    ⟨(18140182041/62500000000 : ℚ), (256518153793/10000000000 : ℚ), (-1920391494757/250000000000 : ℚ), 7⟩,
    ⟨(14647309847/50000000000 : ℚ), (148717160767/10000000000 : ℚ), (-4540559405129/1000000000000 : ℚ), 6⟩,
    ⟨(148138076991/500000000000 : ℚ), (18940284369/2000000000 : ℚ), (-2950384353177/1000000000000 : ℚ), 5⟩,
    ⟨(12008028579/40000000000 : ℚ), (6400595359/1000000000 : ℚ), (-2035588974199/1000000000000 : ℚ), 5⟩,
    ⟨(60936416551/200000000000 : ℚ), (1800342267/400000000 : ℚ), (-292285553703/200000000000 : ℚ), 4⟩,
    ⟨(309677100797/1000000000000 : ℚ), (16250859139/5000000000 : ℚ), (-107749749709/100000000000 : ℚ), 4⟩,
    ⟨(157568831923/500000000000 : ℚ), (11936356471/5000000000 : ℚ), (-808089953841/1000000000000 : ℚ), 4⟩,
    ⟨(64202236739/200000000000 : ℚ), (17695620253/10000000000 : ℚ), (-305864086097/500000000000 : ℚ), 4⟩,
    ⟨(327241095137/1000000000000 : ℚ), (6569949981/5000000000 : ℚ), (-232073245951/500000000000 : ℚ), 4⟩,
    ⟨(333767400719/1000000000000 : ℚ), (9696071471/10000000000 : ℚ), (-2737377681/7812500000 : ℚ), 3⟩,
    ⟨(42565906069/125000000000 : ℚ), (3519072521/5000000000 : ℚ), (-260814837641/1000000000000 : ℚ), 3⟩,
    ⟨(86863884401/250000000000 : ℚ), (4950131831/10000000000 : ℚ), (-189019416191/1000000000000 : ℚ), 3⟩,
    ⟨(70897108933/200000000000 : ℚ), (82116961/250000000 : ℚ), (-65294605183/500000000000 : ℚ), 3⟩,
    ⟨(90387391731/250000000000 : ℚ), (969368309/5000000000 : ℚ), (-82418517133/1000000000000 : ℚ), 3⟩,
    ⟨(73715914797/200000000000 : ℚ), (838705619/10000000000 : ℚ), (-42272323111/1000000000000 : ℚ), 3⟩,
    ⟨(187753931519/500000000000 : ℚ), (-6893931/1000000000 : ℚ), (-8512785637/1000000000000 : ℚ), 3⟩,
    ⟨(38226771087/100000000000 : ℚ), (-411863531/5000000000 : ℚ), (2509846697/125000000000 : ℚ), 3⟩,
    ⟨(97198504113/250000000000 : ℚ), (-727617131/5000000000 : ℚ), (44420684919/1000000000000 : ℚ), 3⟩,
    ⟨(197511963947/500000000000 : ℚ), (-496458487/2500000000 : ℚ), (32606027267/500000000000 : ℚ), 3⟩,
    ⟨(400897447743/1000000000000 : ℚ), (-608150173/2500000000 : ℚ), (41494648203/500000000000 : ℚ), 3⟩,
    ⟨(406358010793/1000000000000 : ℚ), (-2808654049/10000000000 : ℚ), (98166264791/1000000000000 : ℚ), 3⟩,
    ⟨(205676514417/500000000000 : ℚ), (-78103013/250000000 : ℚ), (111063230441/1000000000000 : ℚ), 3⟩,
    ⟨(83166879423/200000000000 : ℚ), (-1693415739/5000000000 : ℚ), (15241014639/125000000000 : ℚ), 3⟩,
    ⟨(419758957607/1000000000000 : ℚ), (-3602835017/10000000000 : ℚ), (130952266593/1000000000000 : ℚ), 2⟩,
    ⟨(423088914649/1000000000000 : ℚ), (-3776774137/10000000000 : ℚ), (138282250309/1000000000000 : ℚ), 2⟩,
    ⟨(212896099467/500000000000 : ℚ), (-1956083471/5000000000 : ℚ), (144028757123/1000000000000 : ℚ), 2⟩,
    ⟨(85568555271/200000000000 : ℚ), (-1002903303/2500000000 : ℚ), (74136625617/500000000000 : ℚ), 2⟩,
    ⟨(107305224683/250000000000 : ℚ), (-2038472023/5000000000 : ℚ), (9442054493/62500000000 : ℚ), 2⟩,
    ⟨(429913293993/1000000000000 : ℚ), (-821865163/2000000000 : ℚ), (38115971109/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-4113360393/10000000000 : ℚ), (30527470757/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (175788124767/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control552.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control552.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate552
