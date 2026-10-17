import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate540
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137012339911/500000000000 : ℚ), (18202985545073/10000000000 : ℚ), (-49948280469621/100000000000 : ℚ), 12⟩,
    ⟨(27453467243/100000000000 : ℚ), (1993683230003/10000000000 : ℚ), (-10772608127/195312500 : ℚ), 9⟩,
    ⟨(275549746139/1000000000000 : ℚ), (700502565707/10000000000 : ℚ), (-9804700182277/500000000000 : ℚ), 8⟩,
    ⟨(277060125233/1000000000000 : ℚ), (345839212073/10000000000 : ℚ), (-4907888524711/500000000000 : ℚ), 7⟩,
    ⟨(4360175999/15625000000 : ℚ), (50199514121/2500000000 : ℚ), (-144630254817/25000000000 : ℚ), 6⟩,
    ⟨(56300797299/200000000000 : ℚ), (25590273301/2000000000 : ℚ), (-11702055581/3125000000 : ℚ), 5⟩,
    ⟨(5687893437/20000000000 : ℚ), (86439670463/10000000000 : ℚ), (-2570743086587/1000000000000 : ℚ), 5⟩,
    ⟨(287695481121/1000000000000 : ℚ), (6066691021/1000000000 : ℚ), (-1833922064519/1000000000000 : ℚ), 5⟩,
    ⟨(29137462571/100000000000 : ℚ), (10910099933/2500000000 : ℚ), (-335299501123/250000000000 : ℚ), 4⟩,
    ⟨(295396673443/1000000000000 : ℚ), (636979103/200000000 : ℚ), (-995422477967/1000000000000 : ℚ), 4⟩,
    ⟨(74930722451/250000000000 : ℚ), (4674898829/2000000000 : ℚ), (-74337232389/100000000000 : ℚ), 4⟩,
    ⟨(304311610961/1000000000000 : ℚ), (17098564901/10000000000 : ℚ), (-553909746907/1000000000000 : ℚ), 4⟩,
    ⟨(9659957657/31250000000 : ℚ), (12334184879/10000000000 : ℚ), (-407837133873/1000000000000 : ℚ), 4⟩,
    ⟨(2512781581/8000000000 : ℚ), (8641143067/10000000000 : ℚ), (-58560204191/200000000000 : ℚ), 3⟩,
    ⟨(319200817767/1000000000000 : ℚ), (572729319/1000000000 : ℚ), (-100282463131/500000000000 : ℚ), 3⟩,
    ⟨(324378859613/1000000000000 : ℚ), (3392969307/10000000000 : ℚ), (-31367835577/250000000000 : ℚ), 3⟩,
    ⟨(329581955789/1000000000000 : ℚ), (1498275497/10000000000 : ℚ), (-63535204091/1000000000000 : ℚ), 3⟩,
    ⟨(167379998817/500000000000 : ℚ), (-11380207/2000000000 : ℚ), (-5944503213/500000000000 : ℚ), 3⟩,
    ⟨(21241444861/62500000000 : ℚ), (-1345505713/10000000000 : ℚ), (15784060611/500000000000 : ℚ), 3⟩,
    ⟨(344842170377/1000000000000 : ℚ), (-484301727/2000000000 : ℚ), (68398797899/1000000000000 : ℚ), 3⟩,
    ⟨(8741230111/25000000000 : ℚ), (-3325358537/10000000000 : ℚ), (24944961347/250000000000 : ℚ), 3⟩,
    ⟨(177118962799/500000000000 : ℚ), (-2043847569/5000000000 : ℚ), (126606399523/1000000000000 : ℚ), 3⟩,
    ⟨(179282070979/500000000000 : ℚ), (-4731926437/10000000000 : ℚ), (149564489457/1000000000000 : ℚ), 3⟩,
    ⟨(90646547423/250000000000 : ℚ), (-2638024951/5000000000 : ℚ), (33836519657/200000000000 : ℚ), 3⟩,
    ⟨(366265334281/1000000000000 : ℚ), (-5733959717/10000000000 : ℚ), (185868926123/1000000000000 : ℚ), 3⟩,
    ⟨(5774470993/15625000000 : ℚ), (-6116398033/10000000000 : ℚ), (12496171281/62500000000 : ℚ), 3⟩,
    ⟨(186228414453/500000000000 : ℚ), (-6431654943/10000000000 : ℚ), (211634715153/1000000000000 : ℚ), 3⟩,
    ⟨(74981910293/200000000000 : ℚ), (-6686087629/10000000000 : ℚ), (221142202907/1000000000000 : ℚ), 3⟩,
    ⟨(376900690169/1000000000000 : ℚ), (-3442253261/5000000000 : ℚ), (45720150857/200000000000 : ℚ), 3⟩,
    ⟨(378411069263/1000000000000 : ℚ), (-7030461159/10000000000 : ℚ), (117056384467/500000000000 : ℚ), 3⟩,
    ⟨(379426142971/1000000000000 : ℚ), (-178161201/250000000 : ℚ), (237749876439/1000000000000 : ℚ), 3⟩,
    ⟨(379936135579/1000000000000 : ℚ), (-3587027757/5000000000 : ℚ), (29944680087/125000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-7179988571/10000000000 : ℚ), (119891438967/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (74846665823/250000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control540.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control540.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate540
