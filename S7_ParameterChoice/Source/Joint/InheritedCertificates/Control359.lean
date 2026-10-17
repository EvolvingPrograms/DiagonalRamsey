import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate359
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(308012894081/1000000000000 : ℚ), (14081192234927/10000000000 : ℚ), (-108641282248563/250000000000 : ℚ), 12⟩,
    ⟨(77210139981/250000000000 : ℚ), (769100892999/5000000000 : ℚ), (-9606759753201/200000000000 : ℚ), 9⟩,
    ⟨(62097584147/200000000000 : ℚ), (538742325559/10000000000 : ℚ), (-17111192164891/1000000000000 : ℚ), 7⟩,
    ⟨(312939111529/1000000000000 : ℚ), (265189202509/10000000000 : ℚ), (-4295784919863/500000000000 : ℚ), 6⟩,
    ⟨(316170525999/1000000000000 : ℚ), (153629941613/10000000000 : ℚ), (-317837867007/62500000000 : ℚ), 5⟩,
    ⟨(320151043857/1000000000000 : ℚ), (48897568409/5000000000 : ℚ), (-413804094463/125000000000 : ℚ), 5⟩,
    ⟨(16242116527/50000000000 : ℚ), (16527331073/2500000000 : ℚ), (-2289393791359/1000000000000 : ℚ), 4⟩,
    ⟨(330199206393/1000000000000 : ℚ), (9305951503/2000000000 : ℚ), (-1648614979159/1000000000000 : ℚ), 4⟩,
    ⟨(336170081773/1000000000000 : ℚ), (33662182817/10000000000 : ℚ), (-1220201036721/1000000000000 : ℚ), 4⟩,
    ⟨(171348726943/500000000000 : ℚ), (2480120537/1000000000 : ℚ), (-229909469493/250000000000 : ℚ), 4⟩,
    ⟨(349718460571/1000000000000 : ℚ), (2308874447/1250000000 : ℚ), (-175155882669/250000000000 : ℚ), 3⟩,
    ⟨(178582742847/500000000000 : ℚ), (13812401411/10000000000 : ℚ), (-536069054843/1000000000000 : ℚ), 3⟩,
    ⟨(182483405167/500000000000 : ℚ), (82389749/80000000 : ℚ), (-409272934269/1000000000000 : ℚ), 3⟩,
    ⟨(93261825867/250000000000 : ℚ), (7593177181/10000000000 : ℚ), (-309487802169/1000000000000 : ℚ), 3⟩,
    ⟨(95332286383/250000000000 : ℚ), (5472823819/10000000000 : ℚ), (-229547867533/1000000000000 : ℚ), 3⟩,
    ⟨(194866288929/500000000000 : ℚ), (3785686257/10000000000 : ℚ), (-164530802953/1000000000000 : ℚ), 3⟩,
    ⟨(995441677/2500000000 : ℚ), (2425583699/10000000000 : ℚ), (-22193793067/200000000000 : ℚ), 3⟩,
    ⟨(203290051563/500000000000 : ℚ), (658374279/5000000000 : ℚ), (-13273307519/200000000000 : ℚ), 3⟩,
    ⟨(414861945189/1000000000000 : ℚ), (404129687/10000000000 : ℚ), (-28894122799/1000000000000 : ℚ), 2⟩,
    ⟨(105735609581/250000000000 : ℚ), (-352896161/10000000000 : ℚ), (2810023487/1000000000000 : ℚ), 2⟩,
    ⟨(430743762963/1000000000000 : ℚ), (-3846501/39062500 : ℚ), (14886332699/500000000000 : ℚ), 2⟩,
    ⟨(219095394043/500000000000 : ℚ), (-757130599/5000000000 : ℚ), (26388077831/500000000000 : ℚ), 2⟩,
    ⟨(445211794771/1000000000000 : ℚ), (-979545501/5000000000 : ℚ), (7242152571/100000000000 : ℚ), 2⟩,
    ⟨(112934791721/250000000000 : ℚ), (-233265987/1000000000 : ℚ), (89173242771/1000000000000 : ℚ), 2⟩,
    ⟨(57213755283/125000000000 : ℚ), (-2645366227/10000000000 : ℚ), (10339148749/100000000000 : ℚ), 2⟩,
    ⟨(463066918117/1000000000000 : ℚ), (-581051543/2000000000 : ℚ), (57677886879/500000000000 : ℚ), 2⟩,
    ⟨(146174439/312500000 : ℚ), (-779638969/2500000000 : ℚ), (31320610973/250000000000 : ℚ), 2⟩,
    ⟨(235869361329/500000000000 : ℚ), (-822510727/2500000000 : ℚ), (133337744821/1000000000000 : ℚ), 2⟩,
    ⟨(59371267141/125000000000 : ℚ), (-684669493/2000000000 : ℚ), (17455954719/125000000000 : ℚ), 2⟩,
    ⟨(477421327923/1000000000000 : ℚ), (-3521154831/10000000000 : ℚ), (144305126153/1000000000000 : ℚ), 2⟩,
    ⟨(239534344367/500000000000 : ℚ), (-1792679393/5000000000 : ℚ), (36843907929/250000000000 : ℚ), 2⟩,
    ⟨(479896354577/1000000000000 : ℚ), (-1808583449/5000000000 : ℚ), (74450386531/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-905282323/2500000000 : ℚ), (74545473731/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (57739281889/200000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control359.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control359.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate359
