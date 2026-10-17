import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate662
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127894932801/250000000000 : ℚ), (7590719251509/5000000000 : ℚ), (-777671969481017/1000000000000 : ℚ), 12⟩,
    ⟨(512486479531/1000000000000 : ℚ), (1664861363193/10000000000 : ℚ), (-2686427395587/31250000000 : ℚ), 9⟩,
    ⟨(514291243703/1000000000000 : ℚ), (293188732643/5000000000 : ℚ), (-3062950121331/100000000000 : ℚ), 8⟩,
    ⟨(103395328571/200000000000 : ℚ), (72636805961/2500000000 : ℚ), (-15384238918361/1000000000000 : ℚ), 7⟩,
    ⟨(130129203781/250000000000 : ℚ), (169547245419/10000000000 : ℚ), (-1822188372027/200000000000 : ℚ), 6⟩,
    ⟨(524877666717/1000000000000 : ℚ), (27192697429/2500000000 : ℚ), (-1483979923343/250000000000 : ℚ), 6⟩,
    ⟨(66252150031/125000000000 : ℚ), (74140932019/10000000000 : ℚ), (-4110349998523/1000000000000 : ℚ), 5⟩,
    ⟨(535885919201/1000000000000 : ℚ), (52649215313/10000000000 : ℚ), (-185345842047/62500000000 : ℚ), 5⟩,
    ⟨(542427304603/1000000000000 : ℚ), (38462331293/10000000000 : ℚ), (-550253502209/250000000000 : ℚ), 4⟩,
    ⟨(274789179669/500000000000 : ℚ), (28650671863/10000000000 : ℚ), (-83277246923/50000000000 : ℚ), 4⟩,
    ⟨(557270214839/1000000000000 : ℚ), (4322680941/2000000000 : ℚ), (-63812871507/50000000000 : ℚ), 4⟩,
    ⟨(141357198583/250000000000 : ℚ), (8208343647/5000000000 : ℚ), (-24616520851/25000000000 : ℚ), 4⟩,
    ⟨(286987763119/500000000000 : ℚ), (12486590469/10000000000 : ℚ), (-190212207991/250000000000 : ℚ), 4⟩,
    ⟨(116565620171/200000000000 : ℚ), (4727518879/5000000000 : ℚ), (-117113182773/200000000000 : ℚ), 3⟩,
    ⟨(147975315763/250000000000 : ℚ), (7077468197/10000000000 : ℚ), (-222980833037/500000000000 : ℚ), 3⟩,
    ⟨(150276908329/250000000000 : ℚ), (5186468843/10000000000 : ℚ), (-66639275831/200000000000 : ℚ), 3⟩,
    ⟨(152589637317/250000000000 : ℚ), (916122169/2500000000 : ℚ), (-3012872789/12500000000 : ℚ), 3⟩,
    ⟨(154891229883/250000000000 : ℚ), (2427167291/10000000000 : ℚ), (-82478794141/500000000000 : ℚ), 3⟩,
    ⟨(628638081729/1000000000000 : ℚ), (1412813937/10000000000 : ℚ), (-5083254549/50000000000 : ℚ), 3⟩,
    ⟨(318745328173/500000000000 : ℚ), (575578241/10000000000 : ℚ), (-190126987/3906250000 : ℚ), 3⟩,
    ⟨(161509347063/250000000000 : ℚ), (-119093563/10000000000 : ℚ), (-320163/78125000 : ℚ), 3⟩,
    ⟨(130839193549/200000000000 : ℚ), (-697548347/10000000000 : ℚ), (16751569279/500000000000 : ℚ), 3⟩,
    ⟨(330943911623/500000000000 : ℚ), (-23601361/200000000 : ℚ), (32625692389/500000000000 : ℚ), 3⟩,
    ⟨(669038877981/1000000000000 : ℚ), (-316476077/2000000000 : ℚ), (23005336261/250000000000 : ℚ), 3⟩,
    ⟨(675580263383/1000000000000 : ℚ), (-191674079/1000000000 : ℚ), (5724954179/50000000000 : ℚ), 3⟩,
    ⟨(10647640349/15625000000 : ℚ), (-2192717879/10000000000 : ℚ), (13322349023/100000000000 : ℚ), 3⟩,
    ⟨(686588515867/1000000000000 : ℚ), (-604442551/2500000000 : ℚ), (148616861151/1000000000000 : ℚ), 3⟩,
    ⟨(34547468373/50000000000 : ℚ), (-519534693/2000000000 : ℚ), (161007686839/1000000000000 : ℚ), 3⟩,
    ⟨(694489539729/1000000000000 : ℚ), (-1368419129/5000000000 : ℚ), (170647727641/1000000000000 : ℚ), 3⟩,
    ⟨(697174938881/1000000000000 : ℚ), (-2838545613/10000000000 : ℚ), (177724781007/1000000000000 : ℚ), 3⟩,
    ⟨(698979703053/1000000000000 : ℚ), (-726279687/2500000000 : ℚ), (45593019883/250000000000 : ℚ), 3⟩,
    ⟨(34994322569/50000000000 : ℚ), (-2938043207/10000000000 : ℚ), (92337461223/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-294214197/1000000000 : ℚ), (924809063/5000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (255209852093/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control662.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control662.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate662
