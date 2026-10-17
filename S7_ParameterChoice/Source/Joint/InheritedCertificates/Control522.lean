import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate522
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(35530420679/125000000000 : ℚ), (3430377832221/2500000000 : ℚ), (-195361984796793/500000000000 : ℚ), 12⟩,
    ⟨(284944800503/1000000000000 : ℚ), (749971580717/5000000000 : ℚ), (-43176230230247/1000000000000 : ℚ), 9⟩,
    ⟨(286340915441/1000000000000 : ℚ), (262889219009/5000000000 : ℚ), (-3843068622797/250000000000 : ℚ), 7⟩,
    ⟨(288418264897/1000000000000 : ℚ), (259003779273/10000000000 : ℚ), (-771182701669/100000000000 : ℚ), 6⟩,
    ⟨(291156842859/1000000000000 : ℚ), (150127087331/10000000000 : ℚ), (-4559183968793/1000000000000 : ℚ), 6⟩,
    ⟨(11781211013/40000000000 : ℚ), (95583019279/10000000000 : ℚ), (-740778168009/250000000000 : ℚ), 5⟩,
    ⟨(37313259287/125000000000 : ℚ), (32297184001/5000000000 : ℚ), (-204491958051/100000000000 : ℚ), 5⟩,
    ⟨(151522975327/500000000000 : ℚ), (11355092447/2500000000 : ℚ), (-293723916159/200000000000 : ℚ), 4⟩,
    ⟨(308106182909/1000000000000 : ℚ), (8200172397/2500000000 : ℚ), (-1083252427143/1000000000000 : ℚ), 4⟩,
    ⟨(156819019129/500000000000 : ℚ), (12048142671/5000000000 : ℚ), (-32513181749/40000000000 : ℚ), 4⟩,
    ⟨(319588241909/1000000000000 : ℚ), (17866997073/10000000000 : ℚ), (-615720419143/1000000000000 : ℚ), 4⟩,
    ⟨(325899490149/1000000000000 : ℚ), (530963079/400000000 : ℚ), (-93513931989/200000000000 : ℚ), 3⟩,
    ⟨(332511002207/1000000000000 : ℚ), (2450768241/2500000000 : ℚ), (-353361500909/1000000000000 : ℚ), 3⟩,
    ⟨(42419888201/125000000000 : ℚ), (890607749/1250000000 : ℚ), (-65858421309/250000000000 : ℚ), 3⟩,
    ⟨(86594462343/250000000000 : ℚ), (5021415727/10000000000 : ℚ), (-95672116251/500000000000 : ℚ), 3⟩,
    ⟨(353499639161/1000000000000 : ℚ), (1672008789/5000000000 : ℚ), (-66334173987/500000000000 : ℚ), 3⟩,
    ⟨(90163972061/250000000000 : ℚ), (1988687751/10000000000 : ℚ), (-84289265121/1000000000000 : ℚ), 3⟩,
    ⟨(367777678033/1000000000000 : ℚ), (881176861/10000000000 : ℚ), (-21982075507/500000000000 : ℚ), 3⟩,
    ⟨(374796421797/1000000000000 : ℚ), (-6499781/2000000000 : ℚ), (-10049557293/1000000000000 : ℚ), 3⟩,
    ⟨(190822262599/500000000000 : ℚ), (-792198073/10000000000 : ℚ), (18677261889/1000000000000 : ℚ), 3⟩,
    ⟨(48532004657/125000000000 : ℚ), (-142773713/1000000000 : ℚ), (43137620829/1000000000000 : ℚ), 3⟩,
    ⟨(49320910687/125000000000 : ℚ), (-1961665859/10000000000 : ℚ), (32016419321/500000000000 : ℚ), 3⟩,
    ⟨(400517489147/1000000000000 : ℚ), (-2411190643/10000000000 : ℚ), (16380197821/200000000000 : ℚ), 3⟩,
    ⟨(25378084031/62500000000 : ℚ), (-1394765243/5000000000 : ℚ), (12144648457/125000000000 : ℚ), 3⟩,
    ⟨(411109576751/1000000000000 : ℚ), (-776721931/2500000000 : ℚ), (110122676107/1000000000000 : ℚ), 2⟩,
    ⟨(415649453109/1000000000000 : ℚ), (-421394011/1250000000 : ℚ), (121046136603/1000000000000 : ℚ), 2⟩,
    ⟨(5245315651/12500000000 : ℚ), (-3588416843/10000000000 : ℚ), (130119509481/1000000000000 : ℚ), 2⟩,
    ⟨(211499342273/500000000000 : ℚ), (-3763359979/10000000000 : ℚ), (27497968291/200000000000 : ℚ), 2⟩,
    ⟨(106434315627/250000000000 : ℚ), (-779905297/2000000000 : ℚ), (143268196617/1000000000000 : ℚ), 2⟩,
    ⟨(106953652991/250000000000 : ℚ), (-3999536349/10000000000 : ℚ), (147536329421/1000000000000 : ℚ), 2⟩,
    ⟨(214605363451/500000000000 : ℚ), (-508154393/1250000000 : ℚ), (150351592157/1000000000000 : ℚ), 2⟩,
    ⟨(429912161973/1000000000000 : ℚ), (-4097798597/10000000000 : ℚ), (75875195417/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2050927889/5000000000 : ℚ), (151924831763/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (34214674181/100000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control522.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control522.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate522
