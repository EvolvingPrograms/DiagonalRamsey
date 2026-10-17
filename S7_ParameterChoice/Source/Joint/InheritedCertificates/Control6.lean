import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate6
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (39187698225007/1010693253569800 : ℚ), (11301659452989/10000000000 : ℚ), (-43910102464609/1000000000000 : ℚ)⟩,
  ⟨(39187698225007/1010693253569800 : ℚ), (3135705805107/80213827290100 : ℚ), (1194726917291/10000000000 : ℚ), (-2361202119801/500000000000 : ℚ)⟩,
  ⟨(3135705805107/80213827290100 : ℚ), (864785064629/21830466350100 : ℚ), (39258864439/1000000000 : ℚ), (-317339686899/200000000000 : ℚ)⟩,
  ⟨(864785064629/21830466350100 : ℚ), (356824295333/8850541665600 : ℚ), (174283980889/10000000000 : ℚ), (-360956684933/500000000000 : ℚ)⟩,
  ⟨(356824295333/8850541665600 : ℚ), (60526665021/1470033835000 : ℚ), (85778564233/10000000000 : ℚ), (-365089074533/1000000000000 : ℚ)⟩,
  ⟨(60526665021/1470033835000 : ℚ), (105339244711/2499048906500 : ℚ), (41677549183/10000000000 : ℚ), (-18350907947/100000000000 : ℚ)⟩,
  ⟨(105339244711/2499048906500 : ℚ), (66880198103/1547677107900 : ℚ), (8343530059/5000000000 : ℚ), (-78169834759/1000000000000 : ℚ)⟩,
  ⟨(66880198103/1547677107900 : ℚ), (1812432859/40896671324 : ℚ), (1210289039/10000000000 : ℚ), (-705602291/62500000000 : ℚ)⟩,
  ⟨(1812432859/40896671324 : ℚ), (32150279929/707822051200 : ℚ), (-1126734849/1250000000 : ℚ), (34021184819/1000000000000 : ℚ)⟩,
  ⟨(32150279929/707822051200 : ℚ), (11750727673/252797121650 : ℚ), (-2011512413/1250000000 : ℚ), (16542866187/250000000000 : ℚ)⟩,
  ⟨(11750727673/252797121650 : ℚ), (8699570011/183300258250 : ℚ), (-21148041737/10000000000 : ℚ), (44836460047/500000000000 : ℚ)⟩,
  ⟨(8699570011/183300258250 : ℚ), (85194279/1763213434 : ℚ), (-12407023451/5000000000 : ℚ), (26768015029/250000000000 : ℚ)⟩,
  ⟨(85194279/1763213434 : ℚ), (2258109101/46064509800 : ℚ), (-27458867053/10000000000 : ℚ), (59925600983/500000000000 : ℚ)⟩,
  ⟨(2258109101/46064509800 : ℚ), (5794281007/116955121500 : ℚ), (-5860289489/2000000000 : ℚ), (12888363837/100000000000 : ℚ)⟩,
  ⟨(5794281007/116955121500 : ℚ), (1417717611/28431534850 : ℚ), (-1523549933/500000000 : ℚ), (134677919377/1000000000000 : ℚ)⟩,
  ⟨(1417717611/28431534850 : ℚ), (175843813/3517833400 : ℚ), (-31039629357/10000000000 : ℚ), (137513354599/1000000000000 : ℚ)⟩,
  ⟨(175843813/3517833400 : ℚ), (1/20 : ℚ), (-1244399441/400000000 : ℚ), (5514601689/40000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (355600559/1600000000 : ℚ), (-1/5 : ℚ), (1823151121/10000000000 : ℚ)⟩,
  ⟨(355600559/1600000000 : ℚ), (8960370643/40000000000 : ℚ), (-175843813/879458350 : ℚ), (256524658292097593/1407133360000000000 : ℚ)⟩,
  ⟨(8960370643/40000000000 : ℚ), (476450067/2000000000 : ℚ), (-2835435222/14215767425 : ℚ), (103600865195774513249/568630697000000000000 : ℚ)⟩,
  ⟨(476450067/2000000000 : ℚ), (2139710511/8000000000 : ℚ), (-5794281007/29238780375 : ℚ), (14181762381405462829/77970081000000000000 : ℚ)⟩,
  ⟨(2139710511/8000000000 : ℚ), (12541132947/40000000000 : ℚ), (-2258109101/11516127450 : ℚ), (5568541007967834221/30709673200000000000 : ℚ)⟩,
  ⟨(12541132947/40000000000 : ℚ), (7592976549/20000000000 : ℚ), (-170388558/881606717 : ℚ), (9942703978555607267/55100419812500000000 : ℚ)⟩,
  ⟨(7592976549/20000000000 : ℚ), (18851958263/40000000000 : ℚ), (-17399140022/91650129125 : ℚ), (20523414054127287103/114562661406250000000 : ℚ)⟩,
  ⟨(18851958263/40000000000 : ℚ), (2988487587/5000000000 : ℚ), (-23501455346/126398560825 : ℚ), (8964295770968231727/50559424330000000000 : ℚ)⟩,
  ⟨(2988487587/5000000000 : ℚ), (3873265151/5000000000 : ℚ), (-32150279929/176955512800 : ℚ), (30925547974487811039/176955512800000000000 : ℚ)⟩,
  ⟨(3873265151/5000000000 : ℚ), (41210289039/40000000000 : ℚ), (-1812432859/10224167831 : ℚ), (1751844909657324699389/10224167831000000000000 : ℚ)⟩,
  ⟨(41210289039/40000000000 : ℚ), (28343530059/20000000000 : ℚ), (-66880198103/386919276975 : ℚ), (860475057573403473731/5158923693000000000000 : ℚ)⟩,
  ⟨(28343530059/20000000000 : ℚ), (81677549183/40000000000 : ℚ), (-105339244711/624762226625 : ℚ), (4017869696959524125563/24990489065000000000000 : ℚ)⟩,
  ⟨(81677549183/40000000000 : ℚ), (125778564233/40000000000 : ℚ), (-60526665021/367508458750 : ℚ), (2246024100629654553343/14700338350000000000000 : ℚ)⟩,
  ⟨(125778564233/40000000000 : ℚ), (214283980889/40000000000 : ℚ), (-356824295333/2212635416400 : ℚ), (12568486892340099002941/88505416656000000000000 : ℚ)⟩,
  ⟨(214283980889/40000000000 : ℚ), (43258864439/4000000000 : ℚ), (-864785064629/5457616587525 : ℚ), (5542506195316636482863/43660932700200000000000 : ℚ)⟩,
  ⟨(43258864439/4000000000 : ℚ), (1234726917291/40000000000 : ℚ), (-3135705805107/20053456822525 : ℚ), (2391976616472882479421/22918236368600000000000 : ℚ)⟩,
  ⟨(1234726917291/40000000000 : ℚ), (32/1 : ℚ), (-39187698225007/252673313392450 : ℚ), (657084769141258186583841/10106932535698000000000000 : ℚ)⟩ ]
def data : ControlCertificate.Data where
  p := (199999/1000000 : ℚ)
  x := (38398339849/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 32
  tangents := [
    ⟨(9683315273/250000000000 : ℚ), (11301659452989/10000000000 : ℚ), (-43910102464609/1000000000000 : ℚ), 10⟩,
    ⟨(486865323/12500000000 : ℚ), (1194726917291/10000000000 : ℚ), (-2361202119801/500000000000 : ℚ), 6⟩,
    ⟨(39372855933/1000000000000 : ℚ), (39258864439/1000000000 : ℚ), (-317339686899/200000000000 : ℚ), 5⟩,
    ⟨(39987871503/1000000000000 : ℚ), (174283980889/10000000000 : ℚ), (-360956684933/500000000000 : ℚ), 4⟩,
    ⟨(20385318923/500000000000 : ℚ), (85778564233/10000000000 : ℚ), (-365089074533/1000000000000 : ℚ), 4⟩,
    ⟨(10422768423/250000000000 : ℚ), (41677549183/10000000000 : ℚ), (-18350907947/100000000000 : ℚ), 3⟩,
    ⟨(42713807207/1000000000000 : ℚ), (8343530059/5000000000 : ℚ), (-78169834759/1000000000000 : ℚ), 3⟩,
    ⟨(10949883829/250000000000 : ℚ), (1210289039/10000000000 : ℚ), (-705602291/62500000000 : ℚ), 2⟩,
    ⟨(8981306819/200000000000 : ℚ), (-1126734849/1250000000 : ℚ), (34021184819/1000000000000 : ℚ), 2⟩,
    ⟨(45992262203/1000000000000 : ℚ), (-2011512413/1250000000 : ℚ), (16542866187/250000000000 : ℚ), 2⟩,
    ⟨(23507497859/500000000000 : ℚ), (-21148041737/10000000000 : ℚ), (44836460047/500000000000 : ℚ), 2⟩,
    ⟨(11983857891/250000000000 : ℚ), (-12407023451/5000000000 : ℚ), (26768015029/250000000000 : ℚ), 2⟩,
    ⟨(12179549477/250000000000 : ℚ), (-27458867053/10000000000 : ℚ), (59925600983/500000000000 : ℚ), 2⟩,
    ⟨(24666606739/500000000000 : ℚ), (-5860289489/2000000000 : ℚ), (12888363837/100000000000 : ℚ), 2⟩,
    ⟨(4975684357/100000000000 : ℚ), (-1523549933/500000000 : ℚ), (134677919377/1000000000000 : ℚ), 2⟩,
    ⟨(49972808319/1000000000000 : ℚ), (-31039629357/10000000000 : ℚ), (137513354599/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-1244399441/400000000 : ℚ), (5514601689/40000000000 : ℚ), 2⟩]
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control6.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control6.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate6
