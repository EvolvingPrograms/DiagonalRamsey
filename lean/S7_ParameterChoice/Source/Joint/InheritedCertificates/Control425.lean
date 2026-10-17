import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate425
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (37747190126887/447055892788900 : ℚ), (400017535659/400000000 : ℚ), (-5284289539407/62500000000 : ℚ)⟩,
  ⟨(37747190126887/447055892788900 : ℚ), (1510136573718/17792036896825 : ℚ), (1059320535697/10000000000 : ℚ), (-4527126188369/500000000000 : ℚ)⟩,
  ⟨(1510136573718/17792036896825 : ℚ), (333093097207/3891239705880 : ℚ), (21727441239/625000000 : ℚ), (-1506853040933/500000000000 : ℚ)⟩,
  ⟨(333093097207/3891239705880 : ℚ), (686701687043/7931820353000 : ℚ), (15307707453/1000000000 : ℚ), (-1348240595831/1000000000000 : ℚ)⟩,
  ⟨(686701687043/7931820353000 : ℚ), (38769471689/441747979200 : ℚ), (73758871/10000000 : ℚ), (-165384727197/250000000000 : ℚ)⟩,
  ⟨(38769471689/441747979200 : ℚ), (201910460241/2265607372900 : ℚ), (4250194109/1250000000 : ℚ), (-312613663587/1000000000000 : ℚ)⟩,
  ⟨(201910460241/2265607372900 : ℚ), (127732883419/1409988295100 : ℚ), (11345479143/10000000000 : ℚ), (-55351601673/500000000000 : ℚ)⟩,
  ⟨(127732883419/1409988295100 : ℚ), (21539348776/233813099375 : ℚ), (-86075119/312500000 : ℚ), (17029680073/1000000000000 : ℚ)⟩,
  ⟨(21539348776/233813099375 : ℚ), (7606204459/81217162325 : ℚ), (-12106927783/10000000000 : ℚ), (103187075177/1000000000000 : ℚ)⟩,
  ⟨(7606204459/81217162325 : ℚ), (44295112469/465655489700 : ℚ), (-18604300769/10000000000 : ℚ), (164036710849/1000000000000 : ℚ)⟩,
  ⟨(44295112469/465655489700 : ℚ), (10897323661/112949038900 : ℚ), (-11630427833/5000000000 : ℚ), (104165911659/500000000000 : ℚ)⟩,
  ⟨(10897323661/112949038900 : ℚ), (23968981537/245413054900 : ℚ), (-26649326833/10000000000 : ℚ), (241023794301/1000000000000 : ℚ)⟩,
  ⟨(23968981537/245413054900 : ℚ), (8466106633/85826234100 : ℚ), (-14551728691/5000000000 : ℚ), (132496387919/500000000000 : ℚ)⟩,
  ⟨(8466106633/85826234100 : ℚ), (2172870699/21867290620 : ℚ), (-1926248879/625000000 : ℚ), (17620311819/62500000000 : ℚ)⟩,
  ⟨(2172870699/21867290620 : ℚ), (1772929253/17762711100 : ℚ), (-6382669319/2000000000 : ℚ), (292789342599/1000000000000 : ℚ)⟩,
  ⟨(1772929253/17762711100 : ℚ), (659856613/6599810900 : ℚ), (-4055778491/1250000000 : ℚ), (149054065179/500000000000 : ℚ)⟩,
  ⟨(659856613/6599810900 : ℚ), (1/10 : ℚ), (-32512226037/10000000000 : ℚ), (298767986971/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (7487773963/40000000000 : ℚ), (-2/5 : ℚ), (373645726601/1000000000000 : ℚ)⟩,
  ⟨(7487773963/40000000000 : ℚ), (944221509/5000000000 : ℚ), (-659856613/1649952725 : ℚ), (12329489667978702579/32999054500000000000 : ℚ)⟩,
  ⟨(944221509/5000000000 : ℚ), (1617330681/8000000000 : ℚ), (-1772929253/4440677775 : ℚ), (11057398239674359659/29604518500000000000 : ℚ)⟩,
  ⟨(1617330681/8000000000 : ℚ), (573751121/2500000000 : ℚ), (-2172870699/5466822655 : ℚ), (3187357370593901223/8541910398437500000 : ℚ)⟩,
  ⟨(573751121/2500000000 : ℚ), (5448271309/20000000000 : ℚ), (-8466106633/21456558525 : ℚ), (1248768015132137117/3352587269531250000 : ℚ)⟩,
  ⟨(5448271309/20000000000 : ℚ), (13350673167/40000000000 : ℚ), (-23968981537/61353263725 : ℚ), (4382239881136156341/11798704562500000000 : ℚ)⟩,
  ⟨(13350673167/40000000000 : ℚ), (8369572167/20000000000 : ℚ), (-10897323661/28237259725 : ℚ), (104430166444079844369/282372597250000000000 : ℚ)⟩,
  ⟨(8369572167/20000000000 : ℚ), (21395699231/40000000000 : ℚ), (-44295112469/116413872425 : ℚ), (427892713245431447223/1164138724250000000000 : ℚ)⟩,
  ⟨(21395699231/40000000000 : ℚ), (27893072217/40000000000 : ℚ), (-30424817836/81217162325 : ℚ), (1183864098468313146673/3248686493000000000000 : ℚ)⟩,
  ⟨(27893072217/40000000000 : ℚ), (1163924881/1250000000 : ℚ), (-86157395104/233813099375 : ℚ), (3368254038167494094143/9352523975000000000000 : ℚ)⟩,
  ⟨(1163924881/1250000000 : ℚ), (51345479143/40000000000 : ℚ), (-127732883419/352497073775 : ℚ), (713943413140880496553/2014268993000000000000 : ℚ)⟩,
  ⟨(51345479143/40000000000 : ℚ), (9250194109/5000000000 : ℚ), (-201910460241/566401843225 : ℚ), (7859089388014340756229/22656073729000000000000 : ℚ)⟩,
  ⟨(9250194109/5000000000 : ℚ), (113758871/40000000 : ℚ), (-38769471689/110436994800 : ℚ), (186004570926797738363/552184974000000000000 : ℚ)⟩,
  ⟨(113758871/40000000 : ℚ), (19307707453/4000000000 : ℚ), (-686701687043/1982955088250 : ℚ), (20036195954333061587/61967346507812500000 : ℚ)⟩,
  ⟨(19307707453/4000000000 : ℚ), (24227441239/2500000000 : ℚ), (-333093097207/972809926470 : ℚ), (14811709198869387369809/48640496323500000000000 : ℚ)⟩,
  ⟨(24227441239/2500000000 : ℚ), (1099320535697/40000000000 : ℚ), (-6040546294872/17792036896825 : ℚ), (19675289437769771060351/71168147587300000000000 : ℚ)⟩,
  ⟨(1099320535697/40000000000 : ℚ), (32/1 : ℚ), (-37747190126887/111763973197225 : ℚ), (1018692473159662839939157/4470558927889000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (171821284579/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(84379814979/1000000000000 : ℚ), (400017535659/400000000 : ℚ), (-5284289539407/62500000000 : ℚ), 11⟩,
    ⟨(10584903511/125000000000 : ℚ), (1059320535697/10000000000 : ℚ), (-4527126188369/500000000000 : ℚ), 8⟩,
    ⟨(21316637007/250000000000 : ℚ), (21727441239/625000000 : ℚ), (-1506853040933/500000000000 : ℚ), 7⟩,
    ⟨(10764900553/125000000000 : ℚ), (15307707453/1000000000 : ℚ), (-1348240595831/1000000000000 : ℚ), 6⟩,
    ⟨(87204430169/1000000000000 : ℚ), (73758871/10000000 : ℚ), (-165384727197/250000000000 : ℚ), 5⟩,
    ⟨(17696104129/200000000000 : ℚ), (4250194109/1250000000 : ℚ), (-312613663587/1000000000000 : ℚ), 5⟩,
    ⟨(89898436411/1000000000000 : ℚ), (11345479143/10000000000 : ℚ), (-55351601673/500000000000 : ℚ), 4⟩,
    ⟨(91403687759/1000000000000 : ℚ), (-86075119/312500000 : ℚ), (17029680073/1000000000000 : ℚ), 4⟩,
    ⟨(3717537149/40000000000 : ℚ), (-12106927783/10000000000 : ℚ), (103187075177/1000000000000 : ℚ), 4⟩,
    ⟨(47221840037/500000000000 : ℚ), (-18604300769/10000000000 : ℚ), (164036710849/1000000000000 : ℚ), 4⟩,
    ⟨(299567487/3125000000 : ℚ), (-11630427833/5000000000 : ℚ), (104165911659/500000000000 : ℚ), 4⟩,
    ⟨(19427537263/200000000000 : ℚ), (-26649326833/10000000000 : ℚ), (241023794301/1000000000000 : ℚ), 3⟩,
    ⟨(4911145603/50000000000 : ℚ), (-14551728691/5000000000 : ℚ), (132496387919/500000000000 : ℚ), 3⟩,
    ⟨(12384446057/125000000000 : ℚ), (-1926248879/625000000 : ℚ), (17620311819/62500000000 : ℚ), 3⟩,
    ⟨(24915722099/250000000000 : ℚ), (-6382669319/2000000000 : ℚ), (292789342599/1000000000000 : ℚ), 3⟩,
    ⟨(49981150753/500000000000 : ℚ), (-4055778491/1250000000 : ℚ), (149054065179/500000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32512226037/10000000000 : ℚ), (298767986971/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control425.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control425.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate425
