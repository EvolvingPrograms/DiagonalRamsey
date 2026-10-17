import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate748
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (3511642026703/39498346674540 : ℚ), (1086444588711/5000000000 : ℚ), (-604883514697/31250000000 : ℚ)⟩,
  ⟨(3511642026703/39498346674540 : ℚ), (703681154349/7807131368350 : ℚ), (39594368739/2000000000 : ℚ), (-1798062336789/1000000000000 : ℚ)⟩,
  ⟨(703681154349/7807131368350 : ℚ), (48836946197/530909599850 : ℚ), (5228652041/1250000000 : ℚ), (-390700028091/1000000000000 : ℚ)⟩,
  ⟨(48836946197/530909599850 : ℚ), (8149985467/86537386200 : ℚ), (-32177583/500000000 : ℚ), (-891703/200000000000 : ℚ)⟩,
  ⟨(8149985467/86537386200 : ℚ), (27601890569/286415182400 : ℚ), (-179510289/100000000 : ℚ), (6519810033/40000000000 : ℚ)⟩,
  ⟨(27601890569/286415182400 : ℚ), (44569703467/453755814000 : ℚ), (-6635871093/2500000000 : ℚ), (61450230633/250000000000 : ℚ)⟩,
  ⟨(44569703467/453755814000 : ℚ), (20182596183/202924892900 : ℚ), (-1942565157/625000000 : ℚ), (290370625999/1000000000000 : ℚ)⟩,
  ⟨(20182596183/202924892900 : ℚ), (1223216751/12238862300 : ℚ), (-33110291441/10000000000 : ℚ), (155276611091/500000000000 : ℚ)⟩,
  ⟨(1223216751/12238862300 : ℚ), (1/10 : ℚ), (-33355068687/10000000000 : ℚ), (78249913921/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6644931313/40000000000 : ℚ), (-2/5 : ℚ), (189724484407/500000000000 : ℚ)⟩,
  ⟨(6644931313/40000000000 : ℚ), (6889708559/40000000000 : ℚ), (-1223216751/3059715575 : ℚ), (9287157629988981439/24477724600000000000 : ℚ)⟩,
  ⟨(6889708559/40000000000 : ℚ), (557434843/2500000000 : ℚ), (-20182596183/50731223225 : ℚ), (6153935993401426987/16233991432000000000 : ℚ)⟩,
  ⟨(557434843/2500000000 : ℚ), (3364128907/10000000000 : ℚ), (-44569703467/113438953500 : ℚ), (428772222023399323189/1134389535000000000000 : ℚ)⟩,
  ⟨(3364128907/10000000000 : ℚ), (220489711/400000000 : ℚ), (-27601890569/71603795600 : ℚ), (10754364324150048107/28641518240000000000 : ℚ)⟩,
  ⟨(220489711/400000000 : ℚ), (1967822417/2000000000 : ℚ), (-8149985467/21634346550 : ℚ), (6415012474427838797/17307477240000000000 : ℚ)⟩,
  ⟨(1967822417/2000000000 : ℚ), (10228652041/5000000000 : ℚ), (-97673892394/265454799925 : ℚ), (768810031760577684301/2123638399400000000000 : ℚ)⟩,
  ⟨(10228652041/5000000000 : ℚ), (47594368739/8000000000 : ℚ), (-1407362308698/3903565684175 : ℚ), (54158425911832712654547/156142627367000000000000 : ℚ)⟩,
  ⟨(47594368739/8000000000 : ℚ), (32/1 : ℚ), (-3511642026703/9874586668635 : ℚ), (313667580705262839177661/987458666863500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (462515190381/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(22187004739/250000000000 : ℚ), (1086444588711/5000000000 : ℚ), (-604883514697/31250000000 : ℚ), 10⟩,
    ⟨(22399054107/250000000000 : ℚ), (39594368739/2000000000 : ℚ), (-1798062336789/1000000000000 : ℚ), 7⟩,
    ⟨(18232696199/200000000000 : ℚ), (5228652041/1250000000 : ℚ), (-390700028091/1000000000000 : ℚ), 6⟩,
    ⟨(18642242167/200000000000 : ℚ), (-32177583/500000000 : ℚ), (-891703/200000000000 : ℚ), 5⟩,
    ⟨(47713828821/500000000000 : ℚ), (-179510289/100000000 : ℚ), (6519810033/40000000000 : ℚ), 5⟩,
    ⟨(48737693741/500000000000 : ℚ), (-6635871093/2500000000 : ℚ), (61450230633/250000000000 : ℚ), 5⟩,
    ⟨(1980853041/20000000000 : ℚ), (-1942565157/625000000 : ℚ), (290370625999/1000000000000 : ℚ), 4⟩,
    ⟨(49945424761/500000000000 : ℚ), (-33110291441/10000000000 : ℚ), (155276611091/500000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-33355068687/10000000000 : ℚ), (78249913921/250000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control748.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control748.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate748
