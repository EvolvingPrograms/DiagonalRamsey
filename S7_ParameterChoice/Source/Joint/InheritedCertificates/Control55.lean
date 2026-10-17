import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate55
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120917128277/1000000000000 : ℚ), (559801911587/125000000 : ℚ), (-541968846336709/1000000000000 : ℚ), 12⟩,
    ⟨(121057085859/1000000000000 : ℚ), (4910423616197/10000000000 : ℚ), (-29862210980689/500000000000 : ℚ), 9⟩,
    ⟨(30333913289/250000000000 : ℚ), (862979512173/5000000000 : ℚ), (-4228887443059/200000000000 : ℚ), 8⟩,
    ⟨(121750147411/1000000000000 : ℚ), (212766297039/2500000000 : ℚ), (-525735603801/50000000000 : ℚ), 7⟩,
    ⟨(6114828841/50000000000 : ℚ), (492396356971/10000000000 : ℚ), (-6139728585283/1000000000000 : ℚ), 6⟩,
    ⟨(122969678967/1000000000000 : ℚ), (155845073659/5000000000 : ℚ), (-3924469843891/1000000000000 : ℚ), 5⟩,
    ⟨(123762971511/1000000000000 : ℚ), (208321787527/10000000000 : ℚ), (-82803057497/31250000000 : ℚ), 5⟩,
    ⟨(124668814611/1000000000000 : ℚ), (2877148061/200000000 : ℚ), (-462304327627/250000000000 : ℚ), 5⟩,
    ⟨(15709810563/125000000000 : ℚ), (50525527041/5000000000 : ℚ), (-52542692077/40000000000 : ℚ), 4⟩,
    ⟨(25356451503/200000000000 : ℚ), (14247031753/2000000000 : ℚ), (-937315449193/1000000000000 : ℚ), 4⟩,
    ⟨(127969503709/1000000000000 : ℚ), (49669790497/10000000000 : ℚ), (-662704073539/1000000000000 : ℚ), 4⟩,
    ⟨(129228789253/1000000000000 : ℚ), (33587765713/10000000000 : ℚ), (-14248330423/31250000000 : ℚ), 4⟩,
    ⟨(65273993271/500000000000 : ℚ), (4257437577/2000000000 : ℚ), (-74054122967/250000000000 : ℚ), 3⟩,
    ⟨(131914390983/1000000000000 : ℚ), (5837988293/5000000000 : ℚ), (-3402331691/20000000000 : ℚ), 3⟩,
    ⟨(66657421677/500000000000 : ℚ), (161132849/400000000 : ℚ), (-68718871321/1000000000000 : ℚ), 3⟩,
    ⟨(26947171307/200000000000 : ℚ), (-430509941/2000000000 : ℚ), (14104710177/1000000000000 : ℚ), 3⟩,
    ⟨(13616374539/100000000000 : ℚ), (-7215182311/10000000000 : ℚ), (82666321353/1000000000000 : ℚ), 3⟩,
    ⟨(137584758571/1000000000000 : ℚ), (-5704658369/5000000000 : ℚ), (70032308009/500000000000 : ℚ), 3⟩,
    ⟨(69492605471/500000000000 : ℚ), (-7458555323/5000000000 : ℚ), (94282899059/500000000000 : ℚ), 3⟩,
    ⟨(140351615383/1000000000000 : ℚ), (-3574687503/2000000000 : ℚ), (57462925817/250000000000 : ℚ), 3⟩,
    ⟨(141670812671/1000000000000 : ℚ), (-10189709507/5000000000 : ℚ), (66296371017/250000000000 : ℚ), 3⟩,
    ⟨(17866262277/125000000000 : ℚ), (-22511651131/10000000000 : ℚ), (147762416033/500000000000 : ℚ), 3⟩,
    ⟨(144117344409/1000000000000 : ℚ), (-12164310827/5000000000 : ℚ), (32160097201/100000000000 : ℚ), 3⟩,
    ⟨(145221117421/1000000000000 : ℚ), (-6468813717/2500000000 : ℚ), (2751798633/8000000000 : ℚ), 2⟩,
    ⟨(146230787313/1000000000000 : ℚ), (-27186181753/10000000000 : ℚ), (363077658277/1000000000000 : ℚ), 2⟩,
    ⟨(73568315207/500000000000 : ℚ), (-3536015743/1250000000 : ℚ), (379240886659/1000000000000 : ℚ), 2⟩,
    ⟨(73964961479/500000000000 : ℚ), (-1825104021/625000000 : ℚ), (392718316641/1000000000000 : ℚ), 2⟩,
    ⟨(29720605021/200000000000 : ℚ), (-14971268267/5000000000 : ℚ), (80740559779/200000000000 : ℚ), 2⟩,
    ⟨(149149454513/1000000000000 : ℚ), (-30522621519/10000000000 : ℚ), (103084700513/250000000000 : ℚ), 2⟩,
    ⟨(149563948769/1000000000000 : ℚ), (-773766561/250000000 : ℚ), (3349854763/8000000000 : ℚ), 2⟩,
    ⟨(74921258033/500000000000 : ℚ), (-31232794779/10000000000 : ℚ), (422955447561/1000000000000 : ℚ), 2⟩,
    ⟨(9373904603/62500000000 : ℚ), (-31372915159/10000000000 : ℚ), (10626400647/25000000000 : ℚ), 2⟩,
    ⟨(3/20 : ℚ), (-1569519321/500000000 : ℚ), (425318079487/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (80333855209/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control55.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control55.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate55
