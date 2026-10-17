import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate110
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(64785467019/250000000000 : ℚ), (721292120107/1000000000 : ℚ), (-18773940280883/100000000000 : ℚ), 10⟩,
    ⟨(260782204027/1000000000000 : ℚ), (388735221343/5000000000 : ℚ), (-10387916361611/500000000000 : ℚ), 7⟩,
    ⟨(132023539299/500000000000 : ℚ), (53484141137/2000000000 : ℚ), (-3709427499651/500000000000 : ℚ), 6⟩,
    ⟨(134452524631/500000000000 : ℚ), (129046859459/10000000000 : ℚ), (-934748797761/250000000000 : ℚ), 5⟩,
    ⟨(137654665553/500000000000 : ℚ), (73288543779/10000000000 : ℚ), (-444953629951/200000000000 : ℚ), 4⟩,
    ⟨(141599123697/500000000000 : ℚ), (2289579301/500000000 : ℚ), (-729184832667/500000000000 : ℚ), 4⟩,
    ⟨(5849916471/20000000000 : ℚ), (1903299833/625000000 : ℚ), (-1017653229733/1000000000000 : ℚ), 3⟩,
    ⟨(303112518833/1000000000000 : ℚ), (21153404877/10000000000 : ℚ), (-46324581173/62500000000 : ℚ), 3⟩,
    ⟨(62989217733/200000000000 : ℚ), (15165572897/10000000000 : ℚ), (-69556685653/125000000000 : ℚ), 3⟩,
    ⟨(327882569297/1000000000000 : ℚ), (695577077/625000000 : ℚ), (-426917158993/1000000000000 : ℚ), 3⟩,
    ⟨(42724671919/125000000000 : ℚ), (1661556579/2000000000 : ℚ), (-41572092373/125000000000 : ℚ), 2⟩,
    ⟨(178278249819/500000000000 : ℚ), (3138052627/5000000000 : ℚ), (-261726873031/1000000000000 : ℚ), 2⟩,
    ⟨(186008901861/500000000000 : ℚ), (298513193/625000000 : ℚ), (-103575922633/500000000000 : ℚ), 2⟩,
    ⟨(388032386793/1000000000000 : ℚ), (28476893/78125000 : ℚ), (-164210126771/1000000000000 : ℚ), 2⟩,
    ⟨(404446019661/1000000000000 : ℚ), (694007153/2500000000 : ℚ), (-129808994479/1000000000000 : ℚ), 2⟩,
    ⟨(42110063007/100000000000 : ℚ), (131095817/625000000 : ℚ), (-12728248699/125000000000 : ℚ), 2⟩,
    ⟨(437835825017/1000000000000 : ℚ), (390058657/2500000000 : ℚ), (-39383851681/500000000000 : ℚ), 2⟩,
    ⟨(227245217713/500000000000 : ℚ), (1129468017/10000000000 : ℚ), (-59560769059/1000000000000 : ℚ), 2⟩,
    ⟨(235452034147/500000000000 : ℚ), (156085257/2000000000 : ℚ), (-8683915759/200000000000 : ℚ), 2⟩,
    ⟨(97383730273/200000000000 : ℚ), (495074459/10000000000 : ℚ), (-29760139439/1000000000000 : ℚ), 2⟩,
    ⟨(502379955449/1000000000000 : ℚ), (1040469/40000000 : ℚ), (-18142554889/1000000000000 : ℚ), 2⟩,
    ⟨(64642384967/125000000000 : ℚ), (65633291/10000000000 : ℚ), (-514485457/62500000000 : ℚ), 2⟩,
    ⟨(53105388579/100000000000 : ℚ), (-95859249/10000000000 : ℚ), (22976417/100000000000 : ℚ), 2⟩,
    ⟨(543990366423/1000000000000 : ℚ), (-46010403/2000000000 : ℚ), (930175197/125000000000 : ℚ), 2⟩,
    ⟨(277911968127/500000000000 : ℚ), (-170651977/5000000000 : ℚ), (6779110241/500000000000 : ℚ), 2⟩,
    ⟨(566440631537/1000000000000 : ℚ), (-108241847/2500000000 : ℚ), (584409791/31250000000 : ℚ), 2⟩,
    ⟨(287869103847/500000000000 : ℚ), (-507622613/10000000000 : ℚ), (22964210053/1000000000000 : ℚ), 2⟩,
    ⟨(291813561991/500000000000 : ℚ), (-113449553/2000000000 : ℚ), (6605090681/250000000000 : ℚ), 2⟩,
    ⟨(23601256233/40000000000 : ℚ), (-122668419/2000000000 : ℚ), (14562603327/500000000000 : ℚ), 2⟩,
    ⟨(594889376489/1000000000000 : ℚ), (-323507513/5000000000 : ℚ), (3112015071/100000000000 : ℚ), 2⟩,
    ⟨(29907712553/50000000000 : ℚ), (-13380989/200000000 : ℚ), (6486907881/200000000000 : ℚ), 2⟩,
    ⟨(149948646753/250000000000 : ℚ), (-339972497/5000000000 : ℚ), (16543576511/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-42581331/625000000 : ℚ), (4146064651/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (292552673833/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control110.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control110.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate110
