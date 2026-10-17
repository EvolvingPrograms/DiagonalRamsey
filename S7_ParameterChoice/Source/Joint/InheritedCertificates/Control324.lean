import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate324
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(275306093777/1000000000000 : ℚ), (7180395224079/5000000000 : ℚ), (-396135994374581/1000000000000 : ℚ), 12⟩,
    ⟨(276050538319/1000000000000 : ℚ), (392123403787/2500000000 : ℚ), (-43781011113669/1000000000000 : ℚ), 8⟩,
    ⟨(55506451599/200000000000 : ℚ), (68649035283/1250000000 : ℚ), (-15592466946733/1000000000000 : ℚ), 7⟩,
    ⟨(139868491517/500000000000 : ℚ), (135108728831/5000000000 : ℚ), (-1565209785061/200000000000 : ℚ), 6⟩,
    ⟨(28264348073/100000000000 : ℚ), (156450788187/10000000000 : ℚ), (-289361287273/62500000000 : ℚ), 5⟩,
    ⟨(3577796999/12500000000 : ℚ), (99512245343/10000000000 : ℚ), (-602321329253/200000000000 : ℚ), 5⟩,
    ⟨(145221670279/500000000000 : ℚ), (33599852583/5000000000 : ℚ), (-2080677963007/1000000000000 : ℚ), 4⟩,
    ⟨(147630792889/500000000000 : ℚ), (4723165919/1000000000 : ℚ), (-1496360662991/1000000000000 : ℚ), 4⟩,
    ⟨(150316046621/500000000000 : ℚ), (1705352989/500000000 : ℚ), (-1105605235047/1000000000000 : ℚ), 4⟩,
    ⟨(306503142029/1000000000000 : ℚ), (12533530811/5000000000 : ℚ), (-25980350527/31250000000 : ℚ), 4⟩,
    ⟨(39102273841/125000000000 : ℚ), (18606763509/10000000000 : ℚ), (-126290382319/200000000000 : ℚ), 3⟩,
    ⟨(31951642197/100000000000 : ℚ), (13850161057/10000000000 : ℚ), (-240577598043/500000000000 : ℚ), 3⟩,
    ⟨(163266664063/500000000000 : ℚ), (1282535023/1250000000 : ℚ), (-18262913707/50000000000 : ℚ), 3⟩,
    ⟨(333801332553/1000000000000 : ℚ), (299753533/400000000 : ℚ), (-273966392531/1000000000000 : ℚ), 3⟩,
    ⟨(68250088079/200000000000 : ℚ), (5323618477/10000000000 : ℚ), (-100375022947/500000000000 : ℚ), 3⟩,
    ⟨(348808912673/1000000000000 : ℚ), (718956917/2000000000 : ℚ), (-3528129167/25000000000 : ℚ), 3⟩,
    ⟨(178201978583/500000000000 : ℚ), (21991929/100000000 : ℚ), (-91934067343/1000000000000 : ℚ), 3⟩,
    ⟨(363962429443/1000000000000 : ℚ), (264927217/2500000000 : ℚ), (-25452621629/500000000000 : ℚ), 3⟩,
    ⟨(185705768643/500000000000 : ℚ), (15039753/1250000000 : ℚ), (-16374928039/1000000000000 : ℚ), 2⟩,
    ⟨(378679541713/1000000000000 : ℚ), (-660287439/10000000000 : ℚ), (1289415257/100000000000 : ℚ), 2⟩,
    ⟨(96424111967/250000000000 : ℚ), (-656485877/5000000000 : ℚ), (37833783993/1000000000000 : ℚ), 2⟩,
    ⟨(39239467911/100000000000 : ℚ), (-232631441/1250000000 : ℚ), (14788223517/250000000000 : ℚ), 2⟩,
    ⟨(39870972781/100000000000 : ℚ), (-2322301161/10000000000 : ℚ), (15479027977/200000000000 : ℚ), 2⟩,
    ⟨(404580776597/1000000000000 : ℚ), (-135518271/500000000 : ℚ), (9297978649/100000000000 : ℚ), 2⟩,
    ⟨(409951284061/1000000000000 : ℚ), (-3035769387/10000000000 : ℚ), (53115604269/500000000000 : ℚ), 2⟩,
    ⟨(1296154779/3125000000 : ℚ), (-3306649873/10000000000 : ℚ), (23480099331/200000000000 : ℚ), 2⟩,
    ⟨(418989109919/1000000000000 : ℚ), (-3529290619/10000000000 : ℚ), (63340737823/500000000000 : ℚ), 2⟩,
    ⟨(422569389109/1000000000000 : ℚ), (-1854258353/5000000000 : ℚ), (67111342123/500000000000 : ℚ), 2⟩,
    ⟨(106368971701/250000000000 : ℚ), (-3847985929/10000000000 : ℚ), (35034092269/250000000000 : ℚ), 2⟩,
    ⟨(106920152961/250000000000 : ℚ), (-790080591/2000000000 : ℚ), (72252602329/500000000000 : ℚ), 2⟩,
    ⟨(670566143/1562500000 : ℚ), (-502209249/1250000000 : ℚ), (147387225183/1000000000000 : ℚ), 2⟩,
    ⟨(429906776061/1000000000000 : ℚ), (-810202789/2000000000 : ℚ), (148819289491/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-4055167741/10000000000 : ℚ), (2328091927/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (296020419669/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control324.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control324.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate324
