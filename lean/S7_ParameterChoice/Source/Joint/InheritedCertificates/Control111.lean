import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate111
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (38071856174003/933196262189100 : ℚ), (260915664147/250000000 : ℚ), (-42646603098251/1000000000000 : ℚ)⟩,
  ⟨(38071856174003/933196262189100 : ℚ), (3046385485067/74196048126800 : ℚ), (1104663943989/10000000000 : ℚ), (-571843365531/125000000000 : ℚ)⟩,
  ⟨(3046385485067/74196048126800 : ℚ), (840099541899/20249988740300 : ℚ), (362703462721/10000000000 : ℚ), (-1528361439181/1000000000000 : ℚ)⟩,
  ⟨(840099541899/20249988740300 : ℚ), (4620909283/109857573228 : ℚ), (80101787659/5000000000 : ℚ), (-344130948641/500000000000 : ℚ)⟩,
  ⟨(4620909283/109857573228 : ℚ), (88138303467/2060979052850 : ℚ), (77810395397/10000000000 : ℚ), (-341693701057/1000000000000 : ℚ)⟩,
  ⟨(88138303467/2060979052850 : ℚ), (102172793283/2345186882000 : ℚ), (1829540717/500000000 : ℚ), (-165417094123/1000000000000 : ℚ)⟩,
  ⟨(102172793283/2345186882000 : ℚ), (32392323151/728946747800 : ℚ), (164236819/125000000 : ℚ), (-1581107521/25000000000 : ℚ)⟩,
  ⟨(32392323151/728946747800 : ℚ), (21909942711/483213359200 : ℚ), (-359997359/2500000000 : ℚ), (770172731/500000000000 : ℚ)⟩,
  ⟨(21909942711/483213359200 : ℚ), (7760253678/167799620075 : ℚ), (-555212831/500000000 : ℚ), (11340057721/250000000000 : ℚ)⟩,
  ⟨(7760253678/167799620075 : ℚ), (83926867/1781236770 : ℚ), (-17816241423/10000000000 : ℚ), (19100311399/250000000000 : ℚ)⟩,
  ⟨(83926867/1781236770 : ℚ), (16763774303/349837244100 : ℚ), (-11312790351/5000000000 : ℚ), (49530749843/500000000000 : ℚ)⟩,
  ⟨(16763774303/349837244100 : ℚ), (12311530957/253213638000 : ℚ), (-26123953143/10000000000 : ℚ), (115825273989/1000000000000 : ℚ)⟩,
  ⟨(12311530957/253213638000 : ℚ), (290198233/5898662790 : ℚ), (-28656089523/10000000000 : ℚ), (64068402473/500000000000 : ℚ)⟩,
  ⟨(290198233/5898662790 : ℚ), (5588782427/112619677200 : ℚ), (-760642209/250000000 : ℚ), (2138167999/15625000000 : ℚ)⟩,
  ⟨(5588782427/112619677200 : ℚ), (2736529247/54852624900 : ℚ), (-7887971283/2500000000 : ℚ), (142431534363/1000000000000 : ℚ)⟩,
  ⟨(2736529247/54852624900 : ℚ), (169755193/3395861250 : ℚ), (-32100411381/10000000000 : ℚ), (14516806361/100000000000 : ℚ)⟩,
  ⟨(169755193/3395861250 : ℚ), (1/20 : ℚ), (-16084164303/5000000000 : ℚ), (36376893499/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3915835697/20000000000 : ℚ), (-1/5 : ℚ), (92332965483/500000000000 : ℚ)⟩,
  ⟨(3915835697/20000000000 : ℚ), (7899588619/40000000000 : ℚ), (-339510386/1697930625 : ℚ), (783837776268286199/4244826562500000000 : ℚ)⟩,
  ⟨(7899588619/40000000000 : ℚ), (2112028717/10000000000 : ℚ), (-2736529247/13713156225 : ℚ), (101245948701748538783/548526249000000000000 : ℚ)⟩,
  ⟨(2112028717/10000000000 : ℚ), (239357791/1000000000 : ℚ), (-5588782427/28154919300 : ℚ), (25952576268271687609/140774596500000000000 : ℚ)⟩,
  ⟨(239357791/1000000000 : ℚ), (11343910477/40000000000 : ℚ), (-580396466/2949331395 : ℚ), (6781463005862605459/36866642437500000000 : ℚ)⟩,
  ⟨(11343910477/40000000000 : ℚ), (13876046857/40000000000 : ℚ), (-12311530957/63303409500 : ℚ), (464120770431752671969/2532136380000000000000 : ℚ)⟩,
  ⟨(13876046857/40000000000 : ℚ), (8687209649/20000000000 : ℚ), (-16763774303/87459311025 : ℚ), (31890743211149612641/174918622050000000000 : ℚ)⟩,
  ⟨(8687209649/20000000000 : ℚ), (22183758577/40000000000 : ℚ), (-167853734/890618385 : ℚ), (16113502174729729541/89061838500000000000 : ℚ)⟩,
  ⟨(22183758577/40000000000 : ℚ), (1444787169/2000000000 : ℚ), (-31041014712/167799620075 : ℚ), (300352593931683965603/1677996200750000000000 : ℚ)⟩,
  ⟨(1444787169/2000000000 : ℚ), (9640002641/10000000000 : ℚ), (-21909942711/120803339800 : ℚ), (213072694360752439627/1208033398000000000000 : ℚ)⟩,
  ⟨(9640002641/10000000000 : ℚ), (664236819/500000000 : ℚ), (-32392323151/182236686950 : ℚ), (315069155261298913/1822366869500000000 : ℚ)⟩,
  ⟨(664236819/500000000 : ℚ), (3829540717/2000000000 : ℚ), (-102172793283/586296720500 : ℚ), (49326968112240789167/293148360250000000000 : ℚ)⟩,
  ⟨(3829540717/2000000000 : ℚ), (117810395397/40000000000 : ℚ), (-176276606934/1030489526425 : ℚ), (6682745554750753805549/41219581057000000000000 : ℚ)⟩,
  ⟨(117810395397/40000000000 : ℚ), (100101787659/20000000000 : ℚ), (-4620909283/27464393307 : ℚ), (352114045561959552773/2288699442250000000000 : ℚ)⟩,
  ⟨(100101787659/20000000000 : ℚ), (402703462721/40000000000 : ℚ), (-840099541899/5062497185075 : ℚ), (7204493801953397877559/50624971850750000000000 : ℚ)⟩,
  ⟨(402703462721/40000000000 : ℚ), (1144663943989/40000000000 : ℚ), (-3046385485067/18549012031700 : ℚ), (92806194653286264925799/741960481268000000000000 : ℚ)⟩,
  ⟨(1144663943989/40000000000 : ℚ), (32/1 : ℚ), (-38071856174003/233299065547275 : ℚ), (888113741423079786404999/9331962621891000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (335137036111/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(1273894067/31250000000 : ℚ), (260915664147/250000000 : ℚ), (-42646603098251/1000000000000 : ℚ), 11⟩,
    ⟨(40941637291/1000000000000 : ℚ), (1104663943989/10000000000 : ℚ), (-571843365531/125000000000 : ℚ), 7⟩,
    ⟨(10322222133/250000000000 : ℚ), (362703462721/10000000000 : ℚ), (-1528361439181/1000000000000 : ℚ), 6⟩,
    ⟨(8358603839/200000000000 : ℚ), (80101787659/5000000000 : ℚ), (-344130948641/500000000000 : ℚ), 5⟩,
    ⟨(21217327911/500000000000 : ℚ), (77810395397/10000000000 : ℚ), (-341693701057/1000000000000 : ℚ), 4⟩,
    ⟨(43189140677/1000000000000 : ℚ), (1829540717/500000000 : ℚ), (-165417094123/1000000000000 : ℚ), 4⟩,
    ⟨(44027479331/1000000000000 : ℚ), (164236819/125000000 : ℚ), (-1581107521/25000000000 : ℚ), 4⟩,
    ⟨(22458727449/500000000000 : ℚ), (-359997359/2500000000 : ℚ), (770172731/500000000000 : ℚ), 3⟩,
    ⟨(22912433059/500000000000 : ℚ), (-555212831/500000000 : ℚ), (11340057721/250000000000 : ℚ), 3⟩,
    ⟨(23357420843/500000000000 : ℚ), (-17816241423/10000000000 : ℚ), (19100311399/250000000000 : ℚ), 3⟩,
    ⟨(2377659017/50000000000 : ℚ), (-11312790351/5000000000 : ℚ), (49530749843/500000000000 : ℚ), 3⟩,
    ⟨(9661533039/200000000000 : ℚ), (-26123953143/10000000000 : ℚ), (115825273989/1000000000000 : ℚ), 3⟩,
    ⟨(24474650911/500000000000 : ℚ), (-28656089523/10000000000 : ℚ), (64068402473/500000000000 : ℚ), 3⟩,
    ⟨(9890686497/200000000000 : ℚ), (-760642209/250000000 : ℚ), (2138167999/15625000000 : ℚ), 3⟩,
    ⟨(24900341863/500000000000 : ℚ), (-7887971283/2500000000 : ℚ), (142431534363/1000000000000 : ℚ), 3⟩,
    ⟨(49977710873/1000000000000 : ℚ), (-32100411381/10000000000 : ℚ), (14516806361/100000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-16084164303/5000000000 : ℚ), (36376893499/250000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control111.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control111.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate111
