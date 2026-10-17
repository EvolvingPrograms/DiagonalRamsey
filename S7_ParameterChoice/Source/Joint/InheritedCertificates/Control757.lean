import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate757
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(187981734289/500000000000 : ℚ), (3452669741803/2500000000 : ℚ), (-64979439380343/125000000000 : ℚ), 13⟩,
    ⟨(94140094611/250000000000 : ℚ), (1514470286197/10000000000 : ℚ), (-57407877387313/1000000000000 : ℚ), 10⟩,
    ⟨(377748449607/1000000000000 : ℚ), (533085512787/10000000000 : ℚ), (-20413675165703/1000000000000 : ℚ), 8⟩,
    ⟨(379516240293/1000000000000 : ℚ), (263760673751/10000000000 : ℚ), (-255535172993/25000000000 : ℚ), 7⟩,
    ⟨(381846725711/1000000000000 : ℚ), (76762683771/5000000000 : ℚ), (-6027072656989/1000000000000 : ℚ), 7⟩,
    ⟨(384717462013/1000000000000 : ℚ), (98104200621/10000000000 : ℚ), (-3903925540507/1000000000000 : ℚ), 6⟩,
    ⟨(194050401219/500000000000 : ℚ), (8310978037/1250000000 : ℚ), (-13414118229/5000000000 : ℚ), 6⟩,
    ⟨(39196416357/100000000000 : ℚ), (46836778783/10000000000 : ℚ), (-1916721839847/1000000000000 : ℚ), 5⟩,
    ⟨(396270339127/1000000000000 : ℚ), (33840903387/10000000000 : ℚ), (-1404757626391/1000000000000 : ℚ), 5⟩,
    ⟨(200488929143/500000000000 : ℚ), (4966544559/2000000000 : ℚ), (-522910130139/500000000000 : ℚ), 5⟩,
    ⟨(50755173133/125000000000 : ℚ), (18354283463/10000000000 : ℚ), (-19612810079/25000000000 : ℚ), 5⟩,
    ⟨(411412154929/1000000000000 : ℚ), (3388718541/2500000000 : ℚ), (-588420442397/1000000000000 : ℚ), 4⟩,
    ⟨(26064902777/62500000000 : ℚ), (9911530191/10000000000 : ℚ), (-4375559889/10000000000 : ℚ), 4⟩,
    ⟨(42286606933/100000000000 : ℚ), (3544396641/5000000000 : ℚ), (-159526132611/500000000000 : ℚ), 4⟩,
    ⟨(428838906409/1000000000000 : ℚ), (2431875701/5000000000 : ℚ), (-56081478777/250000000000 : ℚ), 4⟩,
    ⟨(434899433983/1000000000000 : ℚ), (3083819801/10000000000 : ℚ), (-36869116633/250000000000 : ℚ), 4⟩,
    ⟨(220494642929/500000000000 : ℚ), (410473083/2500000000 : ℚ), (-1054288047/12500000000 : ℚ), 4⟩,
    ⟨(55881226679/125000000000 : ℚ), (461156263/10000000000 : ℚ), (-1277083847/40000000000 : ℚ), 4⟩,
    ⟨(453022650511/1000000000000 : ℚ), (-102898737/2000000000 : ℚ), (598628549/50000000000 : ℚ), 4⟩,
    ⟨(458850275409/1000000000000 : ℚ), (-331670157/2500000000 : ℚ), (48997207029/1000000000000 : ℚ), 4⟩,
    ⟨(464476564913/1000000000000 : ℚ), (-1003345297/5000000000 : ℚ), (20096622439/250000000000 : ℚ), 3⟩,
    ⟨(234923667389/500000000000 : ℚ), (-2578294519/10000000000 : ℚ), (10708658633/100000000000 : ℚ), 3⟩,
    ⟨(118727715389/250000000000 : ℚ), (-3059708157/10000000000 : ℚ), (12982541051/100000000000 : ℚ), 3⟩,
    ⟨(95923676143/200000000000 : ℚ), (-3464977963/10000000000 : ℚ), (149166030727/1000000000000 : ℚ), 3⟩,
    ⟨(30245284767/62500000000 : ℚ), (-1902488549/5000000000 : ℚ), (165545239223/1000000000000 : ℚ), 3⟩,
    ⟨(487787917403/1000000000000 : ℚ), (-4088131581/10000000000 : ℚ), (89650925577/500000000000 : ℚ), 3⟩,
    ⟨(491171257829/1000000000000 : ℚ), (-540119521/1250000000 : ℚ), (95348880983/500000000000 : ℚ), 3⟩,
    ⟨(49404199413/100000000000 : ℚ), (-4508453351/10000000000 : ℚ), (19993378669/100000000000 : ℚ), 3⟩,
    ⟨(496372479549/1000000000000 : ℚ), (-581801451/1250000000 : ℚ), (103580820231/500000000000 : ℚ), 3⟩,
    ⟨(99628054047/200000000000 : ℚ), (-1190406861/2500000000 : ℚ), (106246486561/500000000000 : ℚ), 3⟩,
    ⟨(249664170699/500000000000 : ℚ), (-4832067813/10000000000 : ℚ), (108003031691/500000000000 : ℚ), 3⟩,
    ⟨(7811332051/15625000000 : ℚ), (-1216745997/2500000000 : ℚ), (217750567497/1000000000000 : ℚ), 3⟩,
    ⟨(1/2 : ℚ), (-4871334429/10000000000 : ℚ), (43593614653/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (95174534863/250000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control757.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control757.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate757
