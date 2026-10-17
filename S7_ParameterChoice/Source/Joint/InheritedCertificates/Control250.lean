import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate250
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133342552311/500000000000 : ℚ), (11079632099/8000000 : ℚ), (-74026666229689/200000000000 : ℚ), 11⟩,
    ⟨(133735518283/500000000000 : ℚ), (1511327596449/10000000000 : ℚ), (-40913136584471/1000000000000 : ℚ), 8⟩,
    ⟨(269035331501/1000000000000 : ℚ), (528560350859/10000000000 : ℚ), (-116603055679/8000000000 : ℚ), 7⟩,
    ⟨(271362924409/1000000000000 : ℚ), (259743551207/10000000000 : ℚ), (-7318882658139/1000000000000 : ℚ), 6⟩,
    ⟨(2744313993/10000000000 : ℚ), (75103795223/5000000000 : ℚ), (-4332464228159/1000000000000 : ℚ), 5⟩,
    ⟨(278211205083/1000000000000 : ℚ), (19088217207/2000000000 : ℚ), (-2820521372917/1000000000000 : ℚ), 5⟩,
    ⟨(141332970081/500000000000 : ℚ), (16099311807/2500000000 : ℚ), (-1950694758217/1000000000000 : ℚ), 4⟩,
    ⟨(287752703003/1000000000000 : ℚ), (45238020797/10000000000 : ℚ), (-1404714546547/1000000000000 : ℚ), 4⟩,
    ⟨(293422505299/1000000000000 : ℚ), (32662555097/10000000000 : ℚ), (-20791582653/20000000000 : ℚ), 4⟩,
    ⟨(149810371877/500000000000 : ℚ), (12006684267/5000000000 : ℚ), (-39165283977/50000000000 : ℚ), 3⟩,
    ⟨(38285965743/125000000000 : ℚ), (17841490453/10000000000 : ℚ), (-298229181783/500000000000 : ℚ), 3⟩,
    ⟨(313359245187/1000000000000 : ℚ), (665196051/500000000 : ℚ), (-113991586631/250000000000 : ℚ), 3⟩,
    ⟨(80191799721/250000000000 : ℚ), (154441297/156250000 : ℚ), (-17380337893/50000000000 : ℚ), 3⟩,
    ⟨(65688048879/200000000000 : ℚ), (1813139709/2500000000 : ℚ), (-13111436257/50000000000 : ℚ), 3⟩,
    ⟨(168152243047/500000000000 : ℚ), (259534761/500000000 : ℚ), (-19373253669/100000000000 : ℚ), 3⟩,
    ⟨(86071046759/250000000000 : ℚ), (1775059739/5000000000 : ℚ), (-137929862559/1000000000000 : ℚ), 3⟩,
    ⟨(352302498339/1000000000000 : ℚ), (1113598843/5000000000 : ℚ), (-2296796067/25000000000 : ℚ), 2⟩,
    ⟨(360282199281/1000000000000 : ℚ), (1148093481/10000000000 : ℚ), (-26718861873/500000000000 : ℚ), 2⟩,
    ⟨(368146440981/1000000000000 : ℚ), (129624443/5000000000 : ℚ), (-842985233/40000000000 : ℚ), 2⟩,
    ⟨(375819486491/1000000000000 : ℚ), (-478786807/10000000000 : ℚ), (6371839737/1000000000000 : ℚ), 2⟩,
    ⟨(383227440189/1000000000000 : ℚ), (-547728523/5000000000 : ℚ), (7442682849/250000000000 : ℚ), 2⟩,
    ⟨(390298959431/1000000000000 : ℚ), (-322596301/2000000000 : ℚ), (49782976779/1000000000000 : ℚ), 2⟩,
    ⟨(396965941621/1000000000000 : ℚ), (-2048282179/10000000000 : ℚ), (8364404507/125000000000 : ℚ), 2⟩,
    ⟨(100791045019/250000000000 : ℚ), (-2414338839/10000000000 : ℚ), (40779056343/500000000000 : ℚ), 2⟩,
    ⟨(102208495593/250000000000 : ℚ), (-2721157081/10000000000 : ℚ), (94013728473/1000000000000 : ℚ), 2⟩,
    ⟨(413920745213/1000000000000 : ℚ), (-1488234239/5000000000 : ℚ), (104515910657/1000000000000 : ℚ), 2⟩,
    ⟨(104593870073/250000000000 : ℚ), (-398280267/1250000000 : ℚ), (56622574263/500000000000 : ℚ), 2⟩,
    ⟨(16886211443/40000000000 : ℚ), (-838765263/2500000000 : ℚ), (15042471241/125000000000 : ℚ), 2⟩,
    ⟨(212611880483/500000000000 : ℚ), (-871599911/2500000000 : ℚ), (25180864497/200000000000 : ℚ), 2⟩,
    ⟨(3420410831/8000000000 : ℚ), (-1791413681/5000000000 : ℚ), (65007914207/500000000000 : ℚ), 2⟩,
    ⟨(429115648809/1000000000000 : ℚ), (-3646155471/10000000000 : ℚ), (132728368337/1000000000000 : ℚ), 2⟩,
    ⟨(429901580753/1000000000000 : ℚ), (-919384647/2500000000 : ℚ), (134076298371/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3681448457/10000000000 : ℚ), (134244403487/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (287657245259/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control250.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control250.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate250
