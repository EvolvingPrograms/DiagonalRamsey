import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate446
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32793627457/125000000000 : ℚ), (12393226858087/10000000000 : ℚ), (-325814747931829/1000000000000 : ℚ), 12⟩,
    ⟨(263107694737/1000000000000 : ℚ), (169082919723/1250000000 : ℚ), (-36012505418651/1000000000000 : ℚ), 9⟩,
    ⟨(264617738443/1000000000000 : ℚ), (94636914703/2000000000 : ℚ), (-6414092532653/500000000000 : ℚ), 7⟩,
    ⟨(266864608229/1000000000000 : ℚ), (232587160101/10000000000 : ℚ), (-3220244081023/500000000000 : ℚ), 6⟩,
    ⟨(67456666377/250000000000 : ℚ), (8408190337/625000000 : ℚ), (-3811602851401/1000000000000 : ℚ), 6⟩,
    ⟨(68368846013/250000000000 : ℚ), (85492332251/10000000000 : ℚ), (-248064697531/100000000000 : ℚ), 5⟩,
    ⟨(55555124941/200000000000 : ℚ), (14421773197/2500000000 : ℚ), (-342984501197/200000000000 : ℚ), 5⟩,
    ⟨(282685973799/1000000000000 : ℚ), (10130214711/2500000000 : ℚ), (-1234268319283/1000000000000 : ℚ), 4⟩,
    ⟨(288159141989/1000000000000 : ℚ), (1828083963/625000000 : ℚ), (-228201579659/250000000000 : ℚ), 4⟩,
    ⟨(294142419673/1000000000000 : ℚ), (21493912667/10000000000 : ℚ), (-34358689639/50000000000 : ℚ), 4⟩,
    ⟨(60115636923/200000000000 : ℚ), (3191503529/2000000000 : ℚ), (-522657860569/1000000000000 : ℚ), 3⟩,
    ⟨(307404456881/1000000000000 : ℚ), (11885459401/10000000000 : ℚ), (-398950895299/1000000000000 : ℚ), 3⟩,
    ⟨(314555495739/1000000000000 : ℚ), (550959183/625000000 : ℚ), (-30353351731/100000000000 : ℚ), 3⟩,
    ⟨(321962432773/1000000000000 : ℚ), (1612935627/2500000000 : ℚ), (-228350739831/1000000000000 : ℚ), 3⟩,
    ⟨(329553935133/1000000000000 : ℚ), (4599219263/10000000000 : ℚ), (-6721324977/40000000000 : ℚ), 3⟩,
    ⟨(337256892499/1000000000000 : ℚ), (624939061/2000000000 : ℚ), (-3715422507/31250000000 : ℚ), 3⟩,
    ⟨(172498560591/500000000000 : ℚ), (193528897/1000000000 : ℚ), (-78335660153/1000000000000 : ℚ), 3⟩,
    ⟨(352700078549/1000000000000 : ℚ), (96480263/1000000000 : ℚ), (-44492115509/1000000000000 : ℚ), 3⟩,
    ⟨(90072895227/250000000000 : ℚ), (82601227/5000000000 : ℚ), (-7997643107/500000000000 : ℚ), 3⟩,
    ⟨(367698517943/1000000000000 : ℚ), (-12472633/250000000 : ℚ), (1021458059/125000000000 : ℚ), 3⟩,
    ⟨(234280973/625000000 : ℚ), (-1053944607/10000000000 : ℚ), (230194643/8000000000 : ℚ), 2⟩,
    ⟨(381675829067/1000000000000 : ℚ), (-151986153/1000000000 : ℚ), (46395023637/1000000000000 : ℚ), 2⟩,
    ⟨(388111594009/1000000000000 : ℚ), (-477962319/2500000000 : ℚ), (61480141047/1000000000000 : ℚ), 2⟩,
    ⟨(98523717923/250000000000 : ℚ), (-448312473/2000000000 : ℚ), (37186895169/500000000000 : ℚ), 2⟩,
    ⟨(199784019941/500000000000 : ℚ), (-157374019/625000000 : ℚ), (2133551551/25000000000 : ℚ), 2⟩,
    ⟨(404478388977/1000000000000 : ℚ), (-1374027777/5000000000 : ℚ), (47295404721/500000000000 : ℚ), 2⟩,
    ⟨(40877862963/100000000000 : ℚ), (-587426547/2000000000 : ℚ), (12784854209/125000000000 : ℚ), 2⟩,
    ⟨(412427348173/1000000000000 : ℚ), (-96541463/312500000 : ℚ), (54263874317/500000000000 : ℚ), 2⟩,
    ⟨(415389405453/1000000000000 : ℚ), (-3207752787/10000000000 : ℚ), (113429389629/1000000000000 : ℚ), 2⟩,
    ⟨(208818137619/500000000000 : ℚ), (-102959783/312500000 : ℚ), (117051351423/1000000000000 : ℚ), 2⟩,
    ⟨(13098322467/31250000000 : ℚ), (-335182983/1000000000 : ℚ), (119441054437/1000000000000 : ℚ), 2⟩,
    ⟨(209952497013/500000000000 : ℚ), (-422517097/1250000000 : ℚ), (120628601797/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3383663493/10000000000 : ℚ), (120776707183/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (70243168481/200000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control446.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control446.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate446
