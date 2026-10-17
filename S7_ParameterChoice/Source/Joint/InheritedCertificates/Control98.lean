import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate98
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7626614438821/187520525999420 : ℚ), (10485825120659/10000000000 : ℚ), (-21357995062601/500000000000 : ℚ)⟩,
  ⟨(7626614438821/187520525999420 : ℚ), (254274262193/6211546553875 : ℚ), (69362426293/625000000 : ℚ), (-4582917931097/1000000000000 : ℚ)⟩,
  ⟨(254274262193/6211546553875 : ℚ), (841461583163/20340173053400 : ℚ), (364413234223/10000000000 : ℚ), (-1531626784781/1000000000000 : ℚ)⟩,
  ⟨(841461583163/20340173053400 : ℚ), (173570110481/4137186006500 : ℚ), (161011503689/10000000000 : ℚ), (-345082600809/500000000000 : ℚ)⟩,
  ⟨(173570110481/4137186006500 : ℚ), (176577864953/4138623438800 : ℚ), (78267783559/10000000000 : ℚ), (-21439061291/62500000000 : ℚ)⟩,
  ⟨(176577864953/4138623438800 : ℚ), (34119060617/784731975900 : ℚ), (36881549171/10000000000 : ℚ), (-166447115703/1000000000000 : ℚ)⟩,
  ⟨(34119060617/784731975900 : ℚ), (64910175787/1463235487100 : ℚ), (6669794947/5000000000 : ℚ), (-16022483463/250000000000 : ℚ)⟩,
  ⟨(64910175787/1463235487100 : ℚ), (21955885811/484911130750 : ℚ), (-1292764977/10000000000 : ℚ), (164048387/200000000000 : ℚ)⟩,
  ⟨(21955885811/484911130750 : ℚ), (426181001/9225580600 : ℚ), (-1373873449/1250000000 : ℚ), (44732013557/1000000000000 : ℚ)⟩,
  ⟨(426181001/9225580600 : ℚ), (668081861/14191086400 : ℚ), (-1772566143/1000000000 : ℚ), (7584322663/100000000000 : ℚ)⟩,
  ⟨(668081861/14191086400 : ℚ), (4201468639/87731324250 : ℚ), (-11275315403/5000000000 : ℚ), (6159875619/62500000000 : ℚ)⟩,
  ⟨(4201468639/87731324250 : ℚ), (12343147633/253962903800 : ℚ), (-101796421/39062500 : ℚ), (5768194223/50000000000 : ℚ)⟩,
  ⟨(12343147633/253962903800 : ℚ), (8728426411/177456611400 : ℚ), (-14299756407/5000000000 : ℚ), (127707032093/1000000000000 : ℚ)⟩,
  ⟨(8728426411/177456611400 : ℚ), (1867715031/37640274200 : ℚ), (-1898379933/625000000 : ℚ), (17054432313/125000000000 : ℚ)⟩,
  ⟨(1867715031/37640274200 : ℚ), (1371756091/27497140500 : ℚ), (-15751643577/5000000000 : ℚ), (142038603597/1000000000000 : ℚ)⟩,
  ⟨(1371756091/27497140500 : ℚ), (340373617/6809011800 : ℚ), (-8013307491/2500000000 : ℚ), (144782115779/1000000000000 : ℚ)⟩,
  ⟨(340373617/6809011800 : ℚ), (1/20 : ℚ), (-16060660041/5000000000 : ℚ), (36280622349/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3939339959/20000000000 : ℚ), (-1/5 : ℚ), (92257944493/500000000000 : ℚ)⟩,
  ⟨(3939339959/20000000000 : ℚ), (1986692509/10000000000 : ℚ), (-340373617/1702252950 : ℚ), (6281551104151156067/34045059000000000000 : ℚ)⟩,
  ⟨(1986692509/10000000000 : ℚ), (4248356423/20000000000 : ℚ), (-1371756091/6874285125 : ℚ), (50711971995283588771/274971405000000000000 : ℚ)⟩,
  ⟨(4248356423/20000000000 : ℚ), (601620067/2500000000 : ℚ), (-1867715031/9410068550 : ℚ), (21666611925102141/117625856875000000 : ℚ)⟩,
  ⟨(601620067/2500000000 : ℚ), (5700243593/20000000000 : ℚ), (-8728426411/44364152850 : ℚ), (10191652660134305189/55455191062500000000 : ℚ)⟩,
  ⟨(5700243593/20000000000 : ℚ), (54453579/156250000 : ℚ), (-12343147633/63490725950 : ℚ), (58130797935637930909/317453629750000000000 : ℚ)⟩,
  ⟨(54453579/156250000 : ℚ), (8724684597/20000000000 : ℚ), (-8402937278/43865662125 : ℚ), (26629870780358176781/146218873750000000000 : ℚ)⟩,
  ⟨(8724684597/20000000000 : ℚ), (2227433857/4000000000 : ℚ), (-668081861/3547771600 : ℚ), (2564405938400078709/14191086400000000000 : ℚ)⟩,
  ⟨(2227433857/4000000000 : ℚ), (3626126551/5000000000 : ℚ), (-426181001/2306395150 : ℚ), (329797558215336447/1845116120000000000 : ℚ)⟩,
  ⟨(3626126551/5000000000 : ℚ), (38707235023/40000000000 : ℚ), (-43911771622/242455565375 : ℚ), (41650198861776689691/236542015000000000000 : ℚ)⟩,
  ⟨(38707235023/40000000000 : ℚ), (26669794947/20000000000 : ℚ), (-64910175787/365808871775 : ℚ), (1262247750322324351743/7316177435500000000000 : ℚ)⟩,
  ⟨(26669794947/20000000000 : ℚ), (76881549171/40000000000 : ℚ), (-34119060617/196182993975 : ℚ), (43898749886983467431/261577325300000000000 : ℚ)⟩,
  ⟨(76881549171/40000000000 : ℚ), (118267783559/40000000000 : ℚ), (-176577864953/1034655859700 : ℚ), (6686960463203353709199/41386234388000000000000 : ℚ)⟩,
  ⟨(118267783559/40000000000 : ℚ), (201011503689/40000000000 : ℚ), (-173570110481/1034296501625 : ℚ), (6336170760179261479239/41371860065000000000000 : ℚ)⟩,
  ⟨(201011503689/40000000000 : ℚ), (404413234223/40000000000 : ℚ), (-841461583163/5085043263350 : ℚ), (5752532352934587596859/40680346106800000000000 : ℚ)⟩,
  ⟨(404413234223/40000000000 : ℚ), (71862426293/2500000000 : ℚ), (-1017097048772/6211546553875 : ℚ), (30776663939390216661101/248461862155000000000000 : ℚ)⟩,
  ⟨(71862426293/2500000000 : ℚ), (32/1 : ℚ), (-7626614438821/46880131499855 : ℚ), (875802385418138394546053/9376026299971000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (324944318747/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(4063772071/100000000000 : ℚ), (10485825120659/10000000000 : ℚ), (-21357995062601/500000000000 : ℚ), 10⟩,
    ⟨(40817180117/1000000000000 : ℚ), (69362426293/625000000 : ℚ), (-4582917931097/1000000000000 : ℚ), 7⟩,
    ⟨(5146150301/125000000000 : ℚ), (364413234223/10000000000 : ℚ), (-1531626784781/1000000000000 : ℚ), 6⟩,
    ⟨(41680259563/1000000000000 : ℚ), (161011503689/10000000000 : ℚ), (-345082600809/500000000000 : ℚ), 5⟩,
    ⟨(42330711943/1000000000000 : ℚ), (78267783559/10000000000 : ℚ), (-21439061291/62500000000 : ℚ), 4⟩,
    ⟨(21547781513/500000000000 : ℚ), (36881549171/10000000000 : ℚ), (-166447115703/1000000000000 : ℚ), 4⟩,
    ⟨(8789084003/200000000000 : ℚ), (6669794947/5000000000 : ℚ), (-16022483463/250000000000 : ℚ), 4⟩,
    ⟨(44847623383/1000000000000 : ℚ), (-1292764977/10000000000 : ℚ), (164048387/200000000000 : ℚ), 3⟩,
    ⟨(45767501959/1000000000000 : ℚ), (-1373873449/1250000000 : ℚ), (44732013557/1000000000000 : ℚ), 3⟩,
    ⟨(23334852663/500000000000 : ℚ), (-1772566143/1000000000 : ℚ), (7584322663/100000000000 : ℚ), 3⟩,
    ⟨(9503912463/200000000000 : ℚ), (-11275315403/5000000000 : ℚ), (6159875619/62500000000 : ℚ), 3⟩,
    ⟨(48284413399/1000000000000 : ℚ), (-101796421/39062500 : ℚ), (5768194223/50000000000 : ℚ), 3⟩,
    ⟨(24467432889/500000000000 : ℚ), (-14299756407/5000000000 : ℚ), (127707032093/1000000000000 : ℚ), 3⟩,
    ⟨(49445922933/1000000000000 : ℚ), (-1898379933/625000000 : ℚ), (17054432313/125000000000 : ℚ), 3⟩,
    ⟨(6224743153/125000000000 : ℚ), (-15751643577/5000000000 : ℚ), (142038603597/1000000000000 : ℚ), 3⟩,
    ⟨(6247175579/125000000000 : ℚ), (-8013307491/2500000000 : ℚ), (144782115779/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-16060660041/5000000000 : ℚ), (36280622349/250000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control98.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control98.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate98
