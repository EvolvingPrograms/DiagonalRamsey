import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate164
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(106707748407/500000000000 : ℚ), (2187481550067/2500000000 : ℚ), (-187380708023781/1000000000000 : ℚ), 11⟩,
    ⟨(214457781899/1000000000000 : ℚ), (237021020997/2500000000 : ℚ), (-20727736922587/1000000000000 : ℚ), 8⟩,
    ⟨(43306462859/200000000000 : ℚ), (328418181771/10000000000 : ℚ), (-3697713074703/500000000000 : ℚ), 6⟩,
    ⟨(219619115119/1000000000000 : ℚ), (159712680747/10000000000 : ℚ), (-1861070142889/500000000000 : ℚ), 5⟩,
    ⟨(111844228397/500000000000 : ℚ), (91404374159/10000000000 : ℚ), (-2210381507051/1000000000000 : ℚ), 5⟩,
    ⟨(228701149333/1000000000000 : ℚ), (28758287021/5000000000 : ℚ), (-722497447621/500000000000 : ℚ), 4⟩,
    ⟨(234608917769/1000000000000 : ℚ), (9619989331/2500000000 : ℚ), (-200926170751/200000000000 : ℚ), 4⟩,
    ⟨(12067743353/50000000000 : ℚ), (26847483673/10000000000 : ℚ), (-71110851/97656250 : ℚ), 3⟩,
    ⟨(248874030027/1000000000000 : ℚ), (19292777063/10000000000 : ℚ), (-543236070073/1000000000000 : ℚ), 3⟩,
    ⟨(128546996511/500000000000 : ℚ), (3538339569/2500000000 : ℚ), (-413373429637/1000000000000 : ℚ), 3⟩,
    ⟨(265935593307/1000000000000 : ℚ), (5263096261/5000000000 : ℚ), (-12744949573/40000000000 : ℚ), 3⟩,
    ⟨(275313681437/1000000000000 : ℚ), (246508851/312500000 : ℚ), (-247308951187/1000000000000 : ℚ), 3⟩,
    ⟨(285137941297/1000000000000 : ℚ), (5920953991/10000000000 : ℚ), (-96115581623/500000000000 : ℚ), 2⟩,
    ⟨(59062751979/200000000000 : ℚ), (884374887/2000000000 : ℚ), (-148761029023/1000000000000 : ℚ), 2⟩,
    ⟨(61148627707/200000000000 : ℚ), (814538367/2500000000 : ℚ), (-56907293319/500000000000 : ℚ), 2⟩,
    ⟨(316325636599/1000000000000 : ℚ), (2339995839/10000000000 : ℚ), (-17055214251/200000000000 : ℚ), 2⟩,
    ⟨(163479669423/500000000000 : ℚ), (401312311/2500000000 : ℚ), (-1541439221/25000000000 : ℚ), 2⟩,
    ⟨(33754183691/100000000000 : ℚ), (252499701/2500000000 : ℚ), (-41890578421/1000000000000 : ℚ), 2⟩,
    ⟨(347971215549/1000000000000 : ℚ), (261329143/5000000000 : ℚ), (-25194102523/1000000000000 : ℚ), 2⟩,
    ⟨(89536758537/250000000000 : ℚ), (6007759/500000000 : ℚ), (-1373592531/125000000000 : ℚ), 2⟩,
    ⟨(45996411751/125000000000 : ℚ), (-53647923/2500000000 : ℚ), (1160695663/1000000000000 : ℚ), 2⟩,
    ⟨(188674691069/500000000000 : ℚ), (-247187519/5000000000 : ℚ), (11584378149/1000000000000 : ℚ), 2⟩,
    ⟨(386190982423/1000000000000 : ℚ), (-45554373/625000000 : ℚ), (2566848669/125000000000 : ℚ), 2⟩,
    ⟨(394410945417/1000000000000 : ℚ), (-9254521/100000000 : ℚ), (14103054219/500000000000 : ℚ), 2⟩,
    ⟨(80386021677/200000000000 : ℚ), (-1089777291/10000000000 : ℚ), (6949638331/200000000000 : ℚ), 2⟩,
    ⟨(102169014419/250000000000 : ℚ), (-245239473/2000000000 : ℚ), (40276790749/1000000000000 : ℚ), 2⟩,
    ⟨(414583826111/1000000000000 : ℚ), (-669030561/5000000000 : ℚ), (44881107213/1000000000000 : ℚ), 2⟩,
    ⟨(419596518651/1000000000000 : ℚ), (-89245857/625000000 : ℚ), (4862942007/100000000000 : ℚ), 2⟩,
    ⟨(16946634413/40000000000 : ℚ), (-748878431/5000000000 : ℚ), (51573290139/1000000000000 : ℚ), 2⟩,
    ⟨(8535053223/20000000000 : ℚ), (-1548965331/10000000000 : ℚ), (53750683849/1000000000000 : ℚ), 2⟩,
    ⟨(214413596773/500000000000 : ℚ), (-49455317/312500000 : ℚ), (13797063209/250000000000 : ℚ), 2⟩,
    ⟨(429869478631/1000000000000 : ℚ), (-12493873/78125000 : ℚ), (55902927561/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-200161147/1250000000 : ℚ), (55992071593/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (42116703551/125000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control164.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control164.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate164
