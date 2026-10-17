import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate298
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69950632899/250000000000 : ℚ), (11270697454073/10000000000 : ℚ), (-316138556297869/1000000000000 : ℚ), 11⟩,
    ⟨(140382978091/500000000000 : ℚ), (1227788613831/10000000000 : ℚ), (-34957395419583/1000000000000 : ℚ), 8⟩,
    ⟨(5653670541/20000000000 : ℚ), (214216776879/5000000000 : ℚ), (-3115702967631/250000000000 : ℚ), 7⟩,
    ⟨(285536776943/1000000000000 : ℚ), (21005027639/1000000000 : ℚ), (-313260342007/50000000000 : ℚ), 6⟩,
    ⟨(144649113753/500000000000 : ℚ), (15151504349/1250000000 : ℚ), (-464327002137/125000000000 : ℚ), 5⟩,
    ⟨(36741456739/125000000000 : ℚ), (38442884647/5000000000 : ℚ), (-484672244289/200000000000 : ℚ), 5⟩,
    ⟨(299392433733/1000000000000 : ℚ), (51820863971/10000000000 : ℚ), (-840269042017/500000000000 : ℚ), 4⟩,
    ⟨(12225119067/40000000000 : ℚ), (36394074071/10000000000 : ℚ), (-1214317069459/1000000000000 : ℚ), 4⟩,
    ⟨(312578231049/1000000000000 : ℚ), (26298930647/10000000000 : ℚ), (-902562242509/1000000000000 : ℚ), 4⟩,
    ⟨(320176262107/1000000000000 : ℚ), (19378080131/10000000000 : ℚ), (-341896828259/500000000000 : ℚ), 3⟩,
    ⟨(328348896657/1000000000000 : ℚ), (903518797/625000000 : ℚ), (-524329300187/1000000000000 : ℚ), 3⟩,
    ⟨(337017427759/1000000000000 : ℚ), (5425292529/5000000000 : ℚ), (-4044642841/10000000000 : ℚ), 3⟩,
    ⟨(346098372721/1000000000000 : ℚ), (8143041877/10000000000 : ℚ), (-312050642767/1000000000000 : ℚ), 3⟩,
    ⟨(177752138539/500000000000 : ℚ), (3033543037/5000000000 : ℚ), (-119636145197/500000000000 : ℚ), 3⟩,
    ⟨(36514455683/100000000000 : ℚ), (4446685949/10000000000 : ℚ), (-180919001327/1000000000000 : ℚ), 3⟩,
    ⟨(374926370813/1000000000000 : ℚ), (3162196163/10000000000 : ℚ), (-133412891127/1000000000000 : ℚ), 3⟩,
    ⟨(384755514811/1000000000000 : ℚ), (1065140541/5000000000 : ℚ), (-94234502203/1000000000000 : ℚ), 2⟩,
    ⟨(78907465759/200000000000 : ℚ), (1291669049/10000000000 : ℚ), (-61571433257/1000000000000 : ℚ), 2⟩,
    ⟨(404177608547/1000000000000 : ℚ), (603439359/10000000000 : ℚ), (-8524015881/250000000000 : ℚ), 2⟩,
    ⟨(51697939113/125000000000 : ℚ), (850673/250000000 : ℚ), (-10820862981/1000000000000 : ℚ), 2⟩,
    ⟨(211332228933/500000000000 : ℚ), (-440092713/10000000000 : ℚ), (1799640211/200000000000 : ℚ), 2⟩,
    ⟨(53916623621/125000000000 : ℚ), (-418325371/5000000000 : ℚ), (6481903101/250000000000 : ℚ), 2⟩,
    ⟨(219752811759/500000000000 : ℚ), (-1169137773/10000000000 : ℚ), (40402246263/1000000000000 : ℚ), 2⟩,
    ⟨(27943978411/62500000000 : ℚ), (-723947231/5000000000 : ℚ), (5275795479/100000000000 : ℚ), 2⟩,
    ⟨(9081078179/20000000000 : ℚ), (-336177771/2000000000 : ℚ), (63255056427/1000000000000 : ℚ), 2⟩,
    ⟨(460289451891/1000000000000 : ℚ), (-23428467/125000000 : ℚ), (4505969373/62500000000 : ℚ), 2⟩,
    ⟨(465750231713/1000000000000 : ℚ), (-1016406827/5000000000 : ℚ), (79435619669/1000000000000 : ℚ), 2⟩,
    ⟨(470383658119/1000000000000 : ℚ), (-1080074407/5000000000 : ℚ), (85395514613/1000000000000 : ℚ), 2⟩,
    ⟨(237072554341/500000000000 : ℚ), (-2259052107/10000000000 : ℚ), (22516561019/250000000000 : ℚ), 2⟩,
    ⟨(19079934343/40000000000 : ℚ), (-2331572633/10000000000 : ℚ), (46757532747/500000000000 : ℚ), 2⟩,
    ⟨(478915929443/1000000000000 : ℚ), (-594788907/2500000000 : ℚ), (95789314199/1000000000000 : ℚ), 2⟩,
    ⟨(479879354029/1000000000000 : ℚ), (-1201361397/5000000000 : ℚ), (4845955839/50000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2405658291/10000000000 : ℚ), (12132500363/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (40381975799/125000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control298.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control298.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate298
