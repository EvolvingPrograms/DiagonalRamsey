import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate39
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (79031916585769/990976777679900 : ℚ), (11082883646253/10000000000 : ℚ), (-88547107532153/1000000000000 : ℚ)⟩,
  ⟨(79031916585769/990976777679900 : ℚ), (6323828451109/78726576886200 : ℚ), (586557934727/5000000000 : ℚ), (-594699434149/62500000000 : ℚ)⟩,
  ⟨(6323828451109/78726576886200 : ℚ), (871933173319/10729143981900 : ℚ), (24115631287/625000000 : ℚ), (-127654499811/40000000000 : ℚ)⟩,
  ⟨(871933173319/10729143981900 : ℚ), (143870986397/1743136966720 : ℚ), (85633610477/5000000000 : ℚ), (-1447496148637/1000000000000 : ℚ)⟩,
  ⟨(143870986397/1743136966720 : ℚ), (14634006467/174045813512 : ℚ), (42055186309/5000000000 : ℚ), (-182035304163/250000000000 : ℚ)⟩,
  ⟨(14634006467/174045813512 : ℚ), (212019689547/2469786330200 : ℚ), (1014972981/250000000 : ℚ), (-362291054977/1000000000000 : ℚ)⟩,
  ⟨(212019689547/2469786330200 : ℚ), (67201939369/765748039200 : ℚ), (7950527969/5000000000 : ℚ), (-15027136543/100000000000 : ℚ)⟩,
  ⟨(67201939369/765748039200 : ℚ), (22719100091/253134521600 : ℚ), (293047577/5000000000 : ℚ), (-3966871673/250000000000 : ℚ)⟩,
  ⟨(22719100091/253134521600 : ℚ), (64337392479/701284076500 : ℚ), (-953928571/1000000000 : ℚ), (9376114209/125000000000 : ℚ)⟩,
  ⟨(64337392479/701284076500 : ℚ), (46926650847/501050117600 : ℚ), (-662085059/400000000 : ℚ), (139346306151/1000000000000 : ℚ)⟩,
  ⟨(46926650847/501050117600 : ℚ), (4334513471/45425456100 : ℚ), (-21562627651/10000000000 : ℚ), (93136478499/500000000000 : ℚ)⟩,
  ⟨(4334513471/45425456100 : ℚ), (25432284639/262281043600 : ℚ), (-25196664139/10000000000 : ℚ), (110474532383/500000000000 : ℚ)⟩,
  ⟨(25432284639/262281043600 : ℚ), (718366847/7312841948 : ℚ), (-1112778983/400000000 : ℚ), (49276269881/200000000000 : ℚ)⟩,
  ⟨(718366847/7312841948 : ℚ), (3838294267/38702082900 : ℚ), (-14823842531/5000000000 : ℚ), (13217026029/50000000000 : ℚ)⟩,
  ⟨(3838294267/38702082900 : ℚ), (5633534999/56473595000 : ℚ), (-30808747549/10000000000 : ℚ), (275855403381/1000000000000 : ℚ)⟩,
  ⟨(5633534999/56473595000 : ℚ), (349348619/3494343600 : ℚ), (-31373483499/10000000000 : ℚ), (14074446919/50000000000 : ℚ)⟩,
  ⟨(349348619/3494343600 : ℚ), (1/10 : ℚ), (-31443370371/10000000000 : ℚ), (141093817809/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8556629629/40000000000 : ℚ), (-2/5 : ℚ), (91938482977/250000000000 : ℚ)⟩,
  ⟨(8556629629/40000000000 : ℚ), (8626516501/40000000000 : ℚ), (-349348619/873585900 : ℚ), (12849852329394535799/34943436000000000000 : ℚ)⟩,
  ⟨(8626516501/40000000000 : ℚ), (9191252451/40000000000 : ℚ), (-5633534999/14118398750 : ℚ), (207564705658355279499/564735950000000000000 : ℚ)⟩,
  ⟨(9191252451/40000000000 : ℚ), (5176157469/20000000000 : ℚ), (-3838294267/9675520725 : ℚ), (23673419748311170211/64503471500000000000 : ℚ)⟩,
  ⟨(5176157469/20000000000 : ℚ), (487221017/1600000000 : ℚ), (-718366847/1828210487 : ℚ), (66918910789244683461/182821048700000000000 : ℚ)⟩,
  ⟨(487221017/1600000000 : ℚ), (14803335861/40000000000 : ℚ), (-25432284639/65570260900 : ℚ), (191198032823274567431/524562087200000000000 : ℚ)⟩,
  ⟨(14803335861/40000000000 : ℚ), (18437372349/40000000000 : ℚ), (-4334513471/11356364025 : ℚ), (54844126374627260419/151418187000000000000 : ℚ)⟩,
  ⟨(18437372349/40000000000 : ℚ), (937914941/1600000000 : ℚ), (-46926650847/125262529400 : ℚ), (1798525004853131659251/5010501176000000000000 : ℚ)⟩,
  ⟨(937914941/1600000000 : ℚ), (3046071429/4000000000 : ℚ), (-64337392479/175321019125 : ℚ), (248578849800378126399/701284076500000000000 : ℚ)⟩,
  ⟨(3046071429/4000000000 : ℚ), (20293047577/20000000000 : ℚ), (-22719100091/63283630400 : ℚ), (440956735789419096771/1265672608000000000000 : ℚ)⟩,
  ⟨(20293047577/20000000000 : ℚ), (27950527969/20000000000 : ℚ), (-67201939369/191437009800 : ℚ), (1302979668774630887281/3828740196000000000000 : ℚ)⟩,
  ⟨(27950527969/20000000000 : ℚ), (2014972981/1000000000 : ℚ), (-212019689547/617446582550 : ℚ), (581481634552086602159/1764133093000000000000 : ℚ)⟩,
  ⟨(2014972981/1000000000 : ℚ), (62055186309/20000000000 : ℚ), (-14634006467/43511453378 : ℚ), (6861658643443048882347/21755726689000000000000 : ℚ)⟩,
  ⟨(62055186309/20000000000 : ℚ), (105633610477/20000000000 : ℚ), (-143870986397/435784241680 : ℚ), (12908457533162757347829/43578424168000000000000 : ℚ)⟩,
  ⟨(105633610477/20000000000 : ℚ), (26615631287/2500000000 : ℚ), (-871933173319/2682285995475 : ℚ), (28906952464986586149623/107291439819000000000000 : ℚ)⟩,
  ⟨(26615631287/2500000000 : ℚ), (606557934727/20000000000 : ℚ), (-6323828451109/19681644221550 : ℚ), (90276266735647743414739/393632884431000000000000 : ℚ)⟩,
  ⟨(606557934727/20000000000 : ℚ), (32/1 : ℚ), (-79031916585769/247744194419975 : ℚ), (158153957299541911005531/990976777679900000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (187375733713/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(3983984519/50000000000 : ℚ), (11082883646253/10000000000 : ℚ), (-88547107532153/1000000000000 : ℚ), 10⟩,
    ⟨(80069197103/1000000000000 : ℚ), (586557934727/5000000000 : ℚ), (-594699434149/62500000000 : ℚ), 7⟩,
    ⟨(3233329681/40000000000 : ℚ), (24115631287/625000000 : ℚ), (-127654499811/40000000000 : ℚ), 5⟩,
    ⟨(81942463327/1000000000000 : ℚ), (85633610477/5000000000 : ℚ), (-1447496148637/1000000000000 : ℚ), 5⟩,
    ⟨(5209639641/62500000000 : ℚ), (42055186309/5000000000 : ℚ), (-182035304163/250000000000 : ℚ), 4⟩,
    ⟨(85014301249/1000000000000 : ℚ), (1014972981/250000000 : ℚ), (-362291054977/1000000000000 : ℚ), 3⟩,
    ⟨(86858868861/1000000000000 : ℚ), (7950527969/5000000000 : ℚ), (-15027136543/100000000000 : ℚ), 3⟩,
    ⟨(88817051393/1000000000000 : ℚ), (293047577/5000000000 : ℚ), (-3966871673/250000000000 : ℚ), 3⟩,
    ⟨(90813596989/1000000000000 : ℚ), (-953928571/1000000000 : ℚ), (9376114209/125000000000 : ℚ), 3⟩,
    ⟨(92771779521/1000000000000 : ℚ), (-662085059/400000000 : ℚ), (139346306151/1000000000000 : ℚ), 3⟩,
    ⟨(94616347133/1000000000000 : ℚ), (-21562627651/10000000000 : ℚ), (93136478499/500000000000 : ℚ), 2⟩,
    ⟨(48138207063/500000000000 : ℚ), (-25196664139/10000000000 : ℚ), (110474532383/500000000000 : ℚ), 2⟩,
    ⟨(19537637011/200000000000 : ℚ), (-1112778983/400000000 : ℚ), (49276269881/200000000000 : ℚ), 2⟩,
    ⟨(98797406357/1000000000000 : ℚ), (-14823842531/5000000000 : ℚ), (13217026029/50000000000 : ℚ), 2⟩,
    ⟨(99561451279/1000000000000 : ℚ), (-30808747549/10000000000 : ℚ), (275855403381/1000000000000 : ℚ), 2⟩,
    ⟨(49975479001/500000000000 : ℚ), (-31373483499/10000000000 : ℚ), (14074446919/50000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31443370371/10000000000 : ℚ), (141093817809/500000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control39.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control39.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate39
