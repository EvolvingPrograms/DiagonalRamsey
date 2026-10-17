import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate607
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(283208991627/1000000000000 : ℚ), (15563106124627/10000000000 : ℚ), (-441398191585107/1000000000000 : ℚ), 12⟩,
    ⟨(56754206669/200000000000 : ℚ), (851978164709/5000000000 : ℚ), (-24375616292277/500000000000 : ℚ), 9⟩,
    ⟨(28488970401/100000000000 : ℚ), (59847350721/1000000000 : ℚ), (-4334831327657/250000000000 : ℚ), 8⟩,
    ⟨(57310846043/200000000000 : ℚ), (295379889607/10000000000 : ℚ), (-1085604146813/125000000000 : ℚ), 7⟩,
    ⟨(14437429083/50000000000 : ℚ), (17148062999/1000000000 : ℚ), (-1024619988913/200000000000 : ℚ), 6⟩,
    ⟨(145725812771/500000000000 : ℚ), (27321396343/2500000000 : ℚ), (-3319929619531/1000000000000 : ℚ), 6⟩,
    ⟨(294637330071/1000000000000 : ℚ), (73866368489/10000000000 : ℚ), (-2282606471193/1000000000000 : ℚ), 5⟩,
    ⟨(298275015171/1000000000000 : ℚ), (25946196887/5000000000 : ℚ), (-1631547124603/1000000000000 : ℚ), 5⟩,
    ⟨(151164823973/500000000000 : ℚ), (18693793007/5000000000 : ℚ), (-47848096543/40000000000 : ℚ), 4⟩,
    ⟨(153381090033/500000000000 : ℚ), (6837934187/2500000000 : ℚ), (-890723161571/1000000000000 : ℚ), 4⟩,
    ⟨(155764961911/500000000000 : ℚ), (2518278167/1250000000 : ℚ), (-167019088289/250000000000 : ℚ), 4⟩,
    ⟨(316586963237/1000000000000 : ℚ), (2963155091/2000000000 : ℚ), (-500745433149/1000000000000 : ℚ), 4⟩,
    ⟨(321884596257/1000000000000 : ℚ), (673361389/625000000 : ℚ), (-371765105139/1000000000000 : ℚ), 4⟩,
    ⟨(327371803779/1000000000000 : ℚ), (7644461701/10000000000 : ℚ), (-67554503779/250000000000 : ℚ), 4⟩,
    ⟨(83248935249/250000000000 : ℚ), (5178499931/10000000000 : ℚ), (-94412390977/500000000000 : ℚ), 3⟩,
    ⟨(169351123159/500000000000 : ℚ), (1602778917/5000000000 : ℚ), (-7661555131/62500000000 : ℚ), 3⟩,
    ⟨(172218181489/500000000000 : ℚ), (160632479/1000000000 : ℚ), (-67975569107/1000000000000 : ℚ), 3⟩,
    ⟨(3501428683/10000000000 : ℚ), (14772257/500000000 : ℚ), (-449230947/20000000000 : ℚ), 3⟩,
    ⟨(88941701379/250000000000 : ℚ), (-98657089/1250000000 : ℚ), (15815113301/1000000000000 : ℚ), 3⟩,
    ⟨(361254013039/1000000000000 : ℚ), (-846885753/5000000000 : ℚ), (48236770089/1000000000000 : ℚ), 3⟩,
    ⟨(183275823029/500000000000 : ℚ), (-1226280541/5000000000 : ℚ), (75844898453/1000000000000 : ℚ), 3⟩,
    ⟨(185804342737/500000000000 : ℚ), (-1545863303/5000000000 : ℚ), (1242900777/12500000000 : ℚ), 3⟩,
    ⟨(37637642923/100000000000 : ℚ), (-1815603667/5000000000 : ℚ), (59803008911/500000000000 : ℚ), 3⟩,
    ⟨(7616179227/20000000000 : ℚ), (-408633371/1000000000 : ℚ), (68417623469/500000000000 : ℚ), 3⟩,
    ⟨(96215898531/250000000000 : ℚ), (-2234470847/5000000000 : ℚ), (9467615997/62500000000 : ℚ), 3⟩,
    ⟨(48562659903/125000000000 : ℚ), (-2394091629/5000000000 : ℚ), (81912860057/500000000000 : ℚ), 3⟩,
    ⟨(195843491877/500000000000 : ℚ), (-631390313/1250000000 : ℚ), (43520608841/250000000000 : ℚ), 3⟩,
    ⟨(98597506909/250000000000 : ℚ), (-1315794397/2500000000 : ℚ), (1425131239/7812500000 : ℚ), 3⟩,
    ⟨(396584379081/1000000000000 : ℚ), (-2714224651/5000000000 : ℚ), (23619121861/125000000000 : ℚ), 3⟩,
    ⟨(79649781057/200000000000 : ℚ), (-5549964223/10000000000 : ℚ), (193782135341/1000000000000 : ℚ), 3⟩,
    ⟨(399367575951/1000000000000 : ℚ), (-5629851457/10000000000 : ℚ), (196968090993/1000000000000 : ℚ), 3⟩,
    ⟨(99982404417/250000000000 : ℚ), (-5669465823/10000000000 : ℚ), (99275635991/500000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-5674402367/10000000000 : ℚ), (198748716359/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (17331526019/50000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control607.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control607.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate607
