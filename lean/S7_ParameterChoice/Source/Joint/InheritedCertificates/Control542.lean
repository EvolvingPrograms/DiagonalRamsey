import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate542
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (65398302935861/554632064911800 : ℚ), (1550873990467/2500000000 : ℚ), (-9161156072069/125000000000 : ℚ)⟩,
  ⟨(65398302935861/554632064911800 : ℚ), (2616381207027/22018965053650 : ℚ), (2628701251/40000000 : ℚ), (-7890945640691/1000000000000 : ℚ)⟩,
  ⟨(2616381207027/22018965053650 : ℚ), (1442793878899/11991757990400 : ℚ), (216796011677/10000000000 : ℚ), (-2658183226637/1000000000000 : ℚ)⟩,
  ⟨(1442793878899/11991757990400 : ℚ), (594942189659/4863635514300 : ℚ), (96878431773/10000000000 : ℚ), (-607694673869/500000000000 : ℚ)⟩,
  ⟨(594942189659/4863635514300 : ℚ), (151177481131/1211612647500 : ℚ), (4824207663/1000000000 : ℚ), (-620447158079/1000000000000 : ℚ)⟩,
  ⟨(151177481131/1211612647500 : ℚ), (175014619597/1371921818800 : ℚ), (75030699/31250000 : ℚ), (-318092195817/1000000000000 : ℚ)⟩,
  ⟨(175014619597/1371921818800 : ℚ), (110765117769/848107800700 : ℚ), (2572651373/2500000000 : ℚ), (-7153878811/50000000000 : ℚ)⟩,
  ⟨(110765117769/848107800700 : ℚ), (74750588529/558849337600 : ℚ), (361905497/2000000000 : ℚ), (-32312458451/1000000000000 : ℚ)⟩,
  ⟨(74750588529/558849337600 : ℚ), (52820572771/385795313100 : ℚ), (-3778965891/10000000000 : ℚ), (21219065039/500000000000 : ℚ)⟩,
  ⟨(52820572771/385795313100 : ℚ), (9616566726/68715662225 : ℚ), (-3818459511/5000000000 : ℚ), (95258702849/1000000000000 : ℚ)⟩,
  ⟨(9616566726/68715662225 : ℚ), (28396318489/198933957900 : ℚ), (-10385545511/10000000000 : ℚ), (133724969753/1000000000000 : ℚ)⟩,
  ⟨(28396318489/198933957900 : ℚ), (10409738527/71696559100 : ℚ), (-1237488509/1000000000 : ℚ), (81060644121/500000000000 : ℚ)⟩,
  ⟨(10409738527/71696559100 : ℚ), (565560781/3842103450 : ℚ), (-863051017/625000000 : ℚ), (11433797831/62500000000 : ℚ)⟩,
  ⟨(565560781/3842103450 : ℚ), (9432450337/63435619800 : ℚ), (-14807763169/10000000000 : ℚ), (98822672801/500000000000 : ℚ)⟩,
  ⟨(9432450337/63435619800 : ℚ), (2308354407/15428930000 : ℚ), (-15442119367/10000000000 : ℚ), (207077795939/1000000000000 : ℚ)⟩,
  ⟨(2308354407/15428930000 : ℚ), (114539423/763794140 : ℚ), (-15750697967/10000000000 : ℚ), (211694504753/1000000000000 : ℚ)⟩,
  ⟨(114539423/763794140 : ℚ), (3/20 : ℚ), (-7894443837/5000000000 : ℚ), (53066800467/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2105556163/10000000000 : ℚ), (-3/10 : ℚ), (137716943379/500000000000 : ℚ)⟩,
  ⟨(2105556163/10000000000 : ℚ), (4249302033/20000000000 : ℚ), (-114539423/381897070 : ℚ), (5259057062544956083/19094853500000000000 : ℚ)⟩,
  ⟨(4249302033/20000000000 : ℚ), (4557880633/20000000000 : ℚ), (-2308354407/7714465000 : ℚ), (42471092026736652331/154289300000000000000 : ℚ)⟩,
  ⟨(4557880633/20000000000 : ℚ), (5192236831/20000000000 : ℚ), (-9432450337/31717809900 : ℚ), (174353066034830503243/634356198000000000000 : ℚ)⟩,
  ⟨(5192236831/20000000000 : ℚ), (386948983/1250000000 : ℚ), (-565560781/1921051725 : ℚ), (263256603985404757/960525862500000000 : ℚ)⟩,
  ⟨(386948983/1250000000 : ℚ), (762511491/2000000000 : ℚ), (-10409738527/35848279550 : ℚ), (6112838677798000581/22405174718750000000 : ℚ)⟩,
  ⟨(762511491/2000000000 : ℚ), (9614454489/20000000000 : ℚ), (-28396318489/99466978950 : ℚ), (14973319077718347253/55259432750000000000 : ℚ)⟩,
  ⟨(9614454489/20000000000 : ℚ), (6181540489/10000000000 : ℚ), (-19233133452/68715662225 : ℚ), (737392166614054519273/2748626489000000000000 : ℚ)⟩,
  ⟨(6181540489/10000000000 : ℚ), (16221034109/20000000000 : ℚ), (-52820572771/192897656550 : ℚ), (1020528629383513020257/3857953131000000000000 : ℚ)⟩,
  ⟨(16221034109/20000000000 : ℚ), (4361905497/4000000000 : ℚ), (-74750588529/279424668800 : ℚ), (1449697055027462498989/5588493376000000000000 : ℚ)⟩,
  ⟨(4361905497/4000000000 : ℚ), (7572651373/5000000000 : ℚ), (-110765117769/424053900350 : ℚ), (133855649977586874613/530067375437500000000 : ℚ)⟩,
  ⟨(7572651373/5000000000 : ℚ), (137530699/62500000 : ℚ), (-175014619597/685960909400 : ℚ), (834596577893199684341/3429804547000000000000 : ℚ)⟩,
  ⟨(137530699/62500000 : ℚ), (6824207663/2000000000 : ℚ), (-151177481131/605806323750 : ℚ), (559849802746519805401/2423225295000000000000 : ℚ)⟩,
  ⟨(6824207663/2000000000 : ℚ), (116878431773/20000000000 : ℚ), (-594942189659/2431817757150 : ℚ), (10423802169334165918873/48636355143000000000000 : ℚ)⟩,
  ⟨(116878431773/20000000000 : ℚ), (236796011677/20000000000 : ℚ), (-1442793878899/5995878995200 : ℚ), (915397468622269568031/4796703196160000000000 : ℚ)⟩,
  ⟨(236796011677/20000000000 : ℚ), (32/1 : ℚ), (-2616381207027/11009482526825 : ℚ), (68488398230923676627057/440379301073000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (399285623251/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(1472488931/12500000000 : ℚ), (1550873990467/2500000000 : ℚ), (-9161156072069/125000000000 : ℚ), 11⟩,
    ⟨(118416352191/1000000000000 : ℚ), (2628701251/40000000 : ℚ), (-7890945640691/1000000000000 : ℚ), 8⟩,
    ⟨(23925421503/200000000000 : ℚ), (216796011677/10000000000 : ℚ), (-2658183226637/1000000000000 : ℚ), 6⟩,
    ⟨(121384851803/1000000000000 : ℚ), (96878431773/10000000000 : ℚ), (-607694673869/500000000000 : ℚ), 5⟩,
    ⟨(15452754491/125000000000 : ℚ), (4824207663/1000000000 : ℚ), (-620447158079/1000000000000 : ℚ), 5⟩,
    ⟨(63126343079/500000000000 : ℚ), (75030699/31250000 : ℚ), (-318092195817/1000000000000 : ℚ), 4⟩,
    ⟨(129175708081/1000000000000 : ℚ), (2572651373/2500000000 : ℚ), (-7153878811/50000000000 : ℚ), 4⟩,
    ⟨(132278771603/1000000000000 : ℚ), (361905497/2000000000 : ℚ), (-32312458451/1000000000000 : ℚ), 4⟩,
    ⟨(67721313867/500000000000 : ℚ), (-3778965891/10000000000 : ℚ), (21219065039/500000000000 : ℚ), 4⟩,
    ⟨(138545691257/1000000000000 : ℚ), (-3818459511/5000000000 : ℚ), (95258702849/1000000000000 : ℚ), 3⟩,
    ⟨(7073435659/50000000000 : ℚ), (-10385545511/10000000000 : ℚ), (133724969753/1000000000000 : ℚ), 3⟩,
    ⟨(14409936341/100000000000 : ℚ), (-1237488509/1000000000 : ℚ), (81060644121/500000000000 : ℚ), 3⟩,
    ⟨(29267309507/200000000000 : ℚ), (-863051017/625000000 : ℚ), (11433797831/62500000000 : ℚ), 3⟩,
    ⟨(148094291823/1000000000000 : ℚ), (-14807763169/10000000000 : ℚ), (98822672801/500000000000 : ℚ), 3⟩,
    ⟨(74652523573/500000000000 : ℚ), (-15442119367/10000000000 : ℚ), (207077795939/1000000000000 : ℚ), 3⟩,
    ⟨(74961142429/500000000000 : ℚ), (-15750697967/10000000000 : ℚ), (211694504753/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-7894443837/5000000000 : ℚ), (53066800467/250000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control542.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control542.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate542
