import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate627
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(246877677543/1000000000000 : ℚ), (14868645791347/10000000000 : ℚ), (-367609798008813/1000000000000 : ℚ), 12⟩,
    ⟨(123686970233/500000000000 : ℚ), (101723845783/625000000 : ℚ), (-10149132541029/250000000000 : ℚ), 9⟩,
    ⟨(248361687029/1000000000000 : ℚ), (17857461267/312500000 : ℚ), (-2887059424639/200000000000 : ℚ), 8⟩,
    ⟨(249831404693/1000000000000 : ℚ), (56377732119/2000000000 : ℚ), (-7227392855457/1000000000000 : ℚ), 7⟩,
    ⟨(31471117409/125000000000 : ℚ), (40883328447/2500000000 : ℚ), (-66577087093/15625000000 : ℚ), 6⟩,
    ⟨(254155631251/1000000000000 : ℚ), (52062418851/5000000000 : ℚ), (-68976455421/25000000000 : ℚ), 6⟩,
    ⟨(6424212387/25000000000 : ℚ), (35147001217/5000000000 : ℚ), (-236873895507/125000000000 : ℚ), 5⟩,
    ⟨(260180442539/1000000000000 : ℚ), (49305635453/10000000000 : ℚ), (-135259988887/100000000000 : ℚ), 5⟩,
    ⟨(263760539623/1000000000000 : ℚ), (17725397411/5000000000 : ℚ), (-989844685253/1000000000000 : ℚ), 5⟩,
    ⟨(133837154219/500000000000 : ℚ), (25863524611/10000000000 : ℚ), (-735227801531/1000000000000 : ℚ), 4⟩,
    ⟨(271884057253/1000000000000 : ℚ), (9489316499/5000000000 : ℚ), (-549579429381/1000000000000 : ℚ), 4⟩,
    ⟨(69087310971/250000000000 : ℚ), (3470933141/2500000000 : ℚ), (-102496023999/250000000000 : ℚ), 4⟩,
    ⟨(8782089567/31250000000 : ℚ), (2003724409/2000000000 : ℚ), (-151157034943/500000000000 : ℚ), 4⟩,
    ⟨(285871875973/1000000000000 : ℚ), (3512244219/5000000000 : ℚ), (-54369703519/250000000000 : ℚ), 4⟩,
    ⟨(145418806639/500000000000 : ℚ), (4663326037/10000000000 : ℚ), (-3735446627/25000000000 : ℚ), 3⟩,
    ⟨(147938127647/500000000000 : ℚ), (2772564769/10000000000 : ℚ), (-46984451693/500000000000 : ℚ), 3⟩,
    ⟨(37617409643/125000000000 : ℚ), (1238373581/10000000000 : ℚ), (-9640114449/200000000000 : ℚ), 3⟩,
    ⟨(7649447979/25000000000 : ℚ), (-4129869/2000000000 : ℚ), (-10004099233/1000000000000 : ℚ), 3⟩,
    ⟨(62188731293/200000000000 : ℚ), (-1063769513/10000000000 : ℚ), (22164978691/1000000000000 : ℚ), 3⟩,
    ⟨(157894333147/500000000000 : ℚ), (-1934798483/10000000000 : ℚ), (24727453819/500000000000 : ℚ), 3⟩,
    ⟨(320466288553/1000000000000 : ℚ), (-2666541739/10000000000 : ℚ), (72729932797/1000000000000 : ℚ), 3⟩,
    ⟨(64986295037/200000000000 : ℚ), (-1641912733/5000000000 : ℚ), (9264694177/100000000000 : ℚ), 3⟩,
    ⟨(41142653/125000000 : ℚ), (-3805597303/10000000000 : ℚ), (1714201661/15625000000 : ℚ), 3⟩,
    ⟨(66610998563/200000000000 : ℚ), (-4246410349/10000000000 : ℚ), (12430286041/100000000000 : ℚ), 3⟩,
    ⟨(336635089899/1000000000000 : ℚ), (-4617488017/10000000000 : ℚ), (136727359487/1000000000000 : ℚ), 3⟩,
    ⟨(169923518479/500000000000 : ℚ), (-4927498603/10000000000 : ℚ), (147212646161/1000000000000 : ℚ), 3⟩,
    ⟨(342659901187/1000000000000 : ℚ), (-2591562509/5000000000 : ℚ), (77967828747/500000000000 : ℚ), 3⟩,
    ⟨(69009318633/200000000000 : ℚ), (-1347371779/2500000000 : ℚ), (6521252063/40000000000 : ℚ), 3⟩,
    ⟨(69396825549/200000000000 : ℚ), (-5550455687/10000000000 : ℚ), (84300485027/500000000000 : ℚ), 3⟩,
    ⟨(348453845409/1000000000000 : ℚ), (-1417221187/2500000000 : ℚ), (172718935657/1000000000000 : ℚ), 3⟩,
    ⟨(87360397993/250000000000 : ℚ), (-2873390183/5000000000 : ℚ), (43859268623/250000000000 : ℚ), 3⟩,
    ⟨(69987570979/200000000000 : ℚ), (-1157083653/2000000000 : ℚ), (88394100377/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-115804673/200000000 : ℚ), (44239181073/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (194825547417/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control627.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control627.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate627
