import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate436
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(269433827713/1000000000000 : ℚ), (6248558402187/5000000000 : ℚ), (-168706549290537/500000000000 : ℚ), 12⟩,
    ⟨(270206531781/1000000000000 : ℚ), (1364146450013/10000000000 : ℚ), (-37294910301961/1000000000000 : ℚ), 9⟩,
    ⟨(135872249177/500000000000 : ℚ), (238637835107/5000000000 : ℚ), (-664265997191/50000000000 : ℚ), 7⟩,
    ⟨(68508228993/250000000000 : ℚ), (234642374909/10000000000 : ℚ), (-1334051956899/200000000000 : ℚ), 6⟩,
    ⟨(11081989837/40000000000 : ℚ), (33937301403/2500000000 : ℚ), (-3947817240963/1000000000000 : ℚ), 6⟩,
    ⟨(280765934489/1000000000000 : ℚ), (86287563797/10000000000 : ℚ), (-128475563453/50000000000 : ℚ), 5⟩,
    ⟨(285145692737/1000000000000 : ℚ), (11647973961/2000000000 : ℚ), (-14212497961/8000000000 : ℚ), 5⟩,
    ⟨(58029368241/200000000000 : ℚ), (40922298211/10000000000 : ℚ), (-1278836149139/1000000000000 : ℚ), 4⟩,
    ⟨(9241288003/31250000000 : ℚ), (14775198923/5000000000 : ℚ), (-472986940793/500000000000 : ℚ), 4⟩,
    ⟨(18863445821/62500000000 : ℚ), (21725303207/10000000000 : ℚ), (-712357005233/1000000000000 : ℚ), 4⟩,
    ⟨(30836990457/100000000000 : ℚ), (1008679269/625000000 : ℚ), (-542036690933/1000000000000 : ℚ), 3⟩,
    ⟨(315322404367/1000000000000 : ℚ), (150373629/125000000 : ℚ), (-413982080923/1000000000000 : ℚ), 3⟩,
    ⟨(322605676153/1000000000000 : ℚ), (1786391609/2000000000 : ℚ), (-157613868793/500000000000 : ℚ), 3⟩,
    ⟨(330149578039/1000000000000 : ℚ), (6547037719/10000000000 : ℚ), (-237431471543/1000000000000 : ℚ), 3⟩,
    ⟨(337881458127/1000000000000 : ℚ), (584745453/1250000000 : ℚ), (-17503217777/100000000000 : ℚ), 3⟩,
    ⟨(43215856773/125000000000 : ℚ), (3190452501/10000000000 : ℚ), (-24842173137/200000000000 : ℚ), 3⟩,
    ⟨(176805105379/500000000000 : ℚ), (995385157/5000000000 : ℚ), (-41139104193/500000000000 : ℚ), 3⟩,
    ⟨(11295487713/31250000000 : ℚ), (101210067/1000000000 : ℚ), (-9459923093/200000000000 : ℚ), 3⟩,
    ⟨(369187486903/1000000000000 : ℚ), (205951599/10000000000 : ℚ), (-8929040003/500000000000 : ℚ), 3⟩,
    ⟨(37673138879/100000000000 : ℚ), (-463415689/10000000000 : ℚ), (1775045911/250000000000 : ℚ), 2⟩,
    ⟨(12000458143/31250000000 : ℚ), (-204537747/2000000000 : ℚ), (3546098943/125000000000 : ℚ), 2⟩,
    ⟨(390967160373/1000000000000 : ℚ), (-746008767/5000000000 : ℚ), (11637889653/250000000000 : ℚ), 2⟩,
    ⟨(397521931807/1000000000000 : ℚ), (-1886754463/10000000000 : ℚ), (15527884549/250000000000 : ℚ), 2⟩,
    ⟨(201807924423/500000000000 : ℚ), (-277334903/1250000000 : ℚ), (75405831353/1000000000000 : ℚ), 2⟩,
    ⟨(204595111869/500000000000 : ℚ), (-2496874203/10000000000 : ℚ), (86710710257/1000000000000 : ℚ), 2⟩,
    ⟨(82838274441/200000000000 : ℚ), (-545671611/2000000000 : ℚ), (96240017869/1000000000000 : ℚ), 2⟩,
    ⟨(209285565227/500000000000 : ℚ), (-1459274539/5000000000 : ℚ), (13019851403/125000000000 : ℚ), 2⟩,
    ⟨(211143659509/500000000000 : ℚ), (-3071606517/10000000000 : ℚ), (22118713501/200000000000 : ℚ), 2⟩,
    ⟨(42530414897/100000000000 : ℚ), (-3190682571/10000000000 : ℚ), (57819923789/500000000000 : ℚ), 2⟩,
    ⟨(427592566589/1000000000000 : ℚ), (-65562151/200000000 : ℚ), (23873605029/200000000000 : ℚ), 2⟩,
    ⟨(214565266581/500000000000 : ℚ), (-208470221/625000000 : ℚ), (121827491723/1000000000000 : ℚ), 2⟩,
    ⟨(429903237229/1000000000000 : ℚ), (-3363976967/10000000000 : ℚ), (961325101/7812500000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-67350437/200000000 : ℚ), (15400253223/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (172957780563/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control436.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control436.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate436
