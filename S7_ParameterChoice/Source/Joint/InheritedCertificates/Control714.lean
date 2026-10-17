import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate714
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (65781384754453/302144958403000 : ℚ), (3378983986283/10000000000 : ℚ), (-73766057269969/1000000000000 : ℚ)⟩,
  ⟨(65781384754453/302144958403000 : ℚ), (1315779406764/5979451569475 : ℚ), (357534402253/10000000000 : ℚ), (-1996168128879/250000000000 : ℚ)⟩,
  ⟨(1315779406764/5979451569475 : ℚ), (1450794436387/6480412527300 : ℚ), (59178169737/5000000000 : ℚ), (-136077744423/50000000000 : ℚ)⟩,
  ⟨(1450794436387/6480412527300 : ℚ), (298920359159/1305188993700 : ℚ), (53552214201/10000000000 : ℚ), (-1270760452073/1000000000000 : ℚ)⟩,
  ⟨(298920359159/1305188993700 : ℚ), (303421454559/1289488158700 : ℚ), (27448434327/10000000000 : ℚ), (-134583946751/200000000000 : ℚ)⟩,
  ⟨(303421454559/1289488158700 : ℚ), (87619180959/361360391050 : ℚ), (727677637/500000000 : ℚ), (-92374569799/250000000000 : ℚ)⟩,
  ⟨(87619180959/361360391050 : ℚ), (110541733051/441727159100 : ℚ), (7326344919/10000000000 : ℚ), (-97129958639/500000000000 : ℚ)⟩,
  ⟨(110541733051/441727159100 : ℚ), (74276205627/287513317100 : ℚ), (181817083/625000000 : ℚ), (-83718184227/1000000000000 : ℚ)⟩,
  ⟨(74276205627/287513317100 : ℚ), (52212452743/195969155000 : ℚ), (33940157/10000000000 : ℚ), (-47209893/5000000000 : ℚ)⟩,
  ⟨(52212452743/195969155000 : ℚ), (37806335551/137872317700 : ℚ), (-1925751393/10000000000 : ℚ), (42770474143/1000000000000 : ℚ)⟩,
  ⟨(37806335551/137872317700 : ℚ), (27748277283/98614200100 : ℚ), (-330447457/1000000000 : ℚ), (40288404847/500000000000 : ℚ)⟩,
  ⟨(27748277283/98614200100 : ℚ), (2023546217/7034393840 : ℚ), (-4290616571/10000000000 : ℚ), (108325086977/1000000000000 : ℚ)⟩,
  ⟨(2023546217/7034393840 : ℚ), (7113626381/24293606000 : ℚ), (-998811191/2000000000 : ℚ), (128560549147/1000000000000 : ℚ)⟩,
  ⟨(7113626381/24293606000 : ℚ), (9095017181/30659324200 : ℚ), (-219197123/400000000 : ℚ), (142787801909/1000000000000 : ℚ)⟩,
  ⟨(9095017181/30659324200 : ℚ), (111052819/371408050 : ℚ), (-5786521317/10000000000 : ℚ), (15188281909/100000000000 : ℚ)⟩,
  ⟨(111052819/371408050 : ℚ), (137648474/458980825 : ℚ), (-5935084537/10000000000 : ℚ), (3126498637/20000000000 : ℚ)⟩,
  ⟨(137648474/458980825 : ℚ), (3/10 : ℚ), (-595344377/1000000000 : ℚ), (78437762873/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (204655623/800000000 : ℚ), (-6/25 : ℚ), (109136106323/500000000000 : ℚ)⟩,
  ⟨(204655623/800000000 : ℚ), (2064915463/8000000000 : ℚ), (-550593896/2294904125 : ℚ), (2003467848613542449/9179616500000000000 : ℚ)⟩,
  ⟨(2064915463/8000000000 : ℚ), (2213478683/8000000000 : ℚ), (-222105638/928520125 : ℚ), (31150694777336697/142849250000000000 : ℚ)⟩,
  ⟨(2213478683/8000000000 : ℚ), (100802877/320000000 : ℚ), (-9095017181/38324155250 : ℚ), (66697872560564842403/306593242000000000000 : ℚ)⟩,
  ⟨(100802877/320000000 : ℚ), (601188809/1600000000 : ℚ), (-7113626381/30367007500 : ℚ), (10523031227906078393/48587212000000000000 : ℚ)⟩,
  ⟨(601188809/1600000000 : ℚ), (3709383429/8000000000 : ℚ), (-2023546217/8792992300 : ℚ), (75630610253200841549/351719692000000000000 : ℚ)⟩,
  ⟨(3709383429/8000000000 : ℚ), (469552543/800000000 : ℚ), (-27748277283/123267750125 : ℚ), (6554778686464223887/30816937531250000000 : ℚ)⟩,
  ⟨(469552543/800000000 : ℚ), (6074248607/8000000000 : ℚ), (-37806335551/172340397125 : ℚ), (36076715631083704971/172340397125000000000 : ℚ)⟩,
  ⟨(6074248607/8000000000 : ℚ), (8033940157/8000000000 : ℚ), (-52212452743/244961443750 : ℚ), (400968355109751670651/1959691550000000000000 : ℚ)⟩,
  ⟨(8033940157/8000000000 : ℚ), (681817083/500000000 : ℚ), (-74276205627/359391646375 : ℚ), (569583645223612522839/2875133171000000000000 : ℚ)⟩,
  ⟨(681817083/500000000 : ℚ), (15326344919/8000000000 : ℚ), (-110541733051/552158948875 : ℚ), (836101914821528768571/4417271591000000000000 : ℚ)⟩,
  ⟨(15326344919/8000000000 : ℚ), (1127677637/400000000 : ℚ), (-175238361918/903400977625 : ℚ), (320451696084361940851/1806801955250000000000 : ℚ)⟩,
  ⟨(1127677637/400000000 : ℚ), (35448434327/8000000000 : ℚ), (-303421454559/1611860198375 : ℚ), (259824402626404297201/1611860198375000000000 : ℚ)⟩,
  ⟨(35448434327/8000000000 : ℚ), (61552214201/8000000000 : ℚ), (-298920359159/1631486242125 : ℚ), (906692209622730363779/6525944968500000000000 : ℚ)⟩,
  ⟨(61552214201/8000000000 : ℚ), (63178169737/4000000000 : ℚ), (-1450794436387/8100515659125 : ℚ), (3474545190999443995429/32402062636500000000000 : ℚ)⟩,
  ⟨(63178169737/4000000000 : ℚ), (32/1 : ℚ), (-5263117627056/29897257847375 : ℚ), (95216564914196220123/1616067991750000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (118519932437/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(43484575101/200000000000 : ℚ), (3378983986283/10000000000 : ℚ), (-73766057269969/1000000000000 : ℚ), 11⟩,
    ⟨(219005742389/1000000000000 : ℚ), (357534402253/10000000000 : ℚ), (-1996168128879/250000000000 : ℚ), 8⟩,
    ⟨(222110647471/1000000000000 : ℚ), (59178169737/5000000000 : ℚ), (-136077744423/50000000000 : ℚ), 6⟩,
    ⟨(226618270989/1000000000000 : ℚ), (53552214201/10000000000 : ℚ), (-1270760452073/1000000000000 : ℚ), 5⟩,
    ⟨(232355387501/1000000000000 : ℚ), (27448434327/10000000000 : ℚ), (-134583946751/200000000000 : ℚ), 5⟩,
    ⟨(119550761417/500000000000 : ℚ), (727677637/500000000 : ℚ), (-92374569799/250000000000 : ℚ), 4⟩,
    ⟨(246597426793/1000000000000 : ℚ), (7326344919/10000000000 : ℚ), (-97129958639/500000000000 : ℚ), 4⟩,
    ⟨(254555035991/1000000000000 : ℚ), (181817083/625000000 : ℚ), (-83718184227/1000000000000 : ℚ), 4⟩,
    ⟨(26266854397/100000000000 : ℚ), (33940157/10000000000 : ℚ), (-47209893/5000000000 : ℚ), 4⟩,
    ⟨(16914134573/62500000000 : ℚ), (-1925751393/10000000000 : ℚ), (42770474143/1000000000000 : ℚ), 3⟩,
    ⟨(278122057127/1000000000000 : ℚ), (-330447457/1000000000 : ℚ), (40288404847/500000000000 : ℚ), 3⟩,
    ⟨(14243409623/50000000000 : ℚ), (-4290616571/10000000000 : ℚ), (108325086977/1000000000000 : ℚ), 3⟩,
    ⟨(72651327243/250000000000 : ℚ), (-998811191/2000000000 : ℚ), (128560549147/1000000000000 : ℚ), 3⟩,
    ⟨(29511293249/100000000000 : ℚ), (-219197123/400000000 : ℚ), (142787801909/1000000000000 : ℚ), 3⟩,
    ⟨(74554459393/250000000000 : ℚ), (-5786521317/10000000000 : ℚ), (15188281909/100000000000 : ℚ), 3⟩,
    ⟨(37475088057/125000000000 : ℚ), (-5935084537/10000000000 : ℚ), (3126498637/20000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-595344377/1000000000 : ℚ), (78437762873/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control714.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control714.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate714
