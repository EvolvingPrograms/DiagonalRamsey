import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate23
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (79487118470233/1007727901159900 : ℚ), (1126980897799/1000000000 : ℚ), (-89062631839673/1000000000000 : ℚ)⟩,
  ⟨(79487118470233/1007727901159900 : ℚ), (1272051548937/16005219556640 : ℚ), (1192529966391/10000000000 : ℚ), (-59846958559/6250000000 : ℚ)⟩,
  ⟨(1272051548937/16005219556640 : ℚ), (116928346707/1453263691280 : ℚ), (392268988559/10000000000 : ℚ), (-643051124951/200000000000 : ℚ)⟩,
  ⟨(116928346707/1453263691280 : ℚ), (144705225129/1769406722380 : ℚ), (174279434867/10000000000 : ℚ), (-29226608483/20000000000 : ℚ)⟩,
  ⟨(144705225129/1769406722380 : ℚ), (368001131509/4412793851700 : ℚ), (21452274687/2500000000 : ℚ), (-147560859701/200000000000 : ℚ)⟩,
  ⟨(368001131509/4412793851700 : ℚ), (11850008969/139028686000 : ℚ), (41681160231/10000000000 : ℚ), (-92450791749/250000000000 : ℚ)⟩,
  ⟨(11850008969/139028686000 : ℚ), (3381231509/38761628370 : ℚ), (16655996751/10000000000 : ℚ), (-78251502777/500000000000 : ℚ)⟩,
  ⟨(3381231509/38761628370 : ℚ), (22869237577/256069822750 : ℚ), (1151345403/10000000000 : ℚ), (-10626872597/500000000000 : ℚ)⟩,
  ⟨(22869237577/256069822750 : ℚ), (10797294971/118150777800 : ℚ), (-9091447507/10000000000 : ℚ), (35111602557/500000000000 : ℚ)⟩,
  ⟨(10797294971/118150777800 : ℚ), (47264785193/506140731500 : ℚ), (-647219767/400000000 : ℚ), (6750348747/50000000000 : ℚ)⟩,
  ⟨(47264785193/506140731500 : ℚ), (17465516133/183417777050 : ℚ), (-2124190149/1000000000 : ℚ), (182271760133/1000000000000 : ℚ)⟩,
  ⟨(17465516133/183417777050 : ℚ), (5123872847/52913589620 : ℚ), (-24910257031/10000000000 : ℚ), (217202792399/1000000000000 : ℚ)⟩,
  ⟨(5123872847/52913589620 : ℚ), (18089309809/184288983400 : ℚ), (-107640377/39062500 : ℚ), (121411078317/500000000000 : ℚ)⟩,
  ⟨(18089309809/184288983400 : ℚ), (11596480949/116971031800 : ℚ), (-14699413173/5000000000 : ℚ), (260911466443/1000000000000 : ℚ)⟩,
  ⟨(11596480949/116971031800 : ℚ), (283634597/2843607720 : ℚ), (-3821067083/1250000000 : ℚ), (2128968339/7812500000 : ℚ)⟩,
  ⟨(283634597/2843607720 : ℚ), (58626011/586410200 : ℚ), (-973039319/312500000 : ℚ), (69545159833/250000000000 : ℚ)⟩,
  ⟨(58626011/586410200 : ℚ), (1/10 : ℚ), (-3900953429/1250000000 : ℚ), (34860518933/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1099046571/5000000000 : ℚ), (-2/5 : ℚ), (45850984643/125000000000 : ℚ)⟩,
  ⟨(1099046571/5000000000 : ℚ), (276960681/1250000000 : ℚ), (-58626011/146602550 : ℚ), (268858355157001447/733012750000000000 : ℚ)⟩,
  ⟨(276960681/1250000000 : ℚ), (1178932917/5000000000 : ℚ), (-283634597/710901930 : ℚ), (2171697152516476303/5924182750000000000 : ℚ)⟩,
  ⟨(1178932917/5000000000 : ℚ), (5300586827/20000000000 : ℚ), (-11596480949/29242757950 : ℚ), (10703178567463489413/29242757950000000000 : ℚ)⟩,
  ⟨(5300586827/20000000000 : ℚ), (48609623/156250000 : ℚ), (-18089309809/46072245850 : ℚ), (168149750912012853137/460722458500000000000 : ℚ)⟩,
  ⟨(48609623/156250000 : ℚ), (15089742969/40000000000 : ℚ), (-5123872847/13228397405 : ℚ), (480619296200639189317/1322839740500000000000 : ℚ)⟩,
  ⟨(15089742969/40000000000 : ℚ), (1875809851/4000000000 : ℚ), (-34931032266/91708888525 : ℚ), (1323877365553329970613/3668355541000000000000 : ℚ)⟩,
  ⟨(1875809851/4000000000 : ℚ), (952780233/1600000000 : ℚ), (-47264785193/126535182875 : ℚ), (72365964670374997413/202456292600000000000 : ℚ)⟩,
  ⟨(952780233/1600000000 : ℚ), (30908552493/40000000000 : ℚ), (-10797294971/29537694450 : ℚ), (27779868095455919293/78767185200000000000 : ℚ)⟩,
  ⟨(30908552493/40000000000 : ℚ), (41151345403/40000000000 : ℚ), (-45738475154/128034911375 : ℚ), (3958372620483845379/11431688515625000000 : ℚ)⟩,
  ⟨(41151345403/40000000000 : ℚ), (56655996751/40000000000 : ℚ), (-6762463018/19380814185 : ℚ), (327259819968902218973/969040709250000000000 : ℚ)⟩,
  ⟨(56655996751/40000000000 : ℚ), (81681160231/40000000000 : ℚ), (-11850008969/34757171500 : ℚ), (453789997474751639279/1390286860000000000000 : ℚ)⟩,
  ⟨(81681160231/40000000000 : ℚ), (31452274687/10000000000 : ℚ), (-368001131509/1103198462925 : ℚ), (13740107971384560233647/44127938517000000000000 : ℚ)⟩,
  ⟨(31452274687/10000000000 : ℚ), (214279434867/40000000000 : ℚ), (-144705225129/442351680595 : ℚ), (5150475101849860198073/17694067223800000000000 : ℚ)⟩,
  ⟨(214279434867/40000000000 : ℚ), (432268988559/40000000000 : ℚ), (-116928346707/363315922820 : ℚ), (3818355588508629868849/14532636912800000000000 : ℚ)⟩,
  ⟨(432268988559/40000000000 : ℚ), (1232529966391/40000000000 : ℚ), (-1272051548937/4001304889160 : ℚ), (35259714404651408525551/160052195566400000000000 : ℚ)⟩,
  ⟨(1232529966391/40000000000 : ℚ), (32/1 : ℚ), (-79487118470233/251931975289975 : ℚ), (1475135553490381491804543/10077279011599000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (262499/1000000 : ℚ)
  x := (6216094017/40000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(78802622511/1000000000000 : ℚ), (1126980897799/1000000000 : ℚ), (-89062631839673/1000000000000 : ℚ), 10⟩,
    ⟨(39604470587/500000000000 : ℚ), (1192529966391/10000000000 : ℚ), (-59846958559/6250000000 : ℚ), 7⟩,
    ⟨(80005963903/1000000000000 : ℚ), (392268988559/10000000000 : ℚ), (-643051124951/200000000000 : ℚ), 5⟩,
    ⟨(2029076539/25000000000 : ℚ), (174279434867/10000000000 : ℚ), (-29226608483/20000000000 : ℚ), 4⟩,
    ⟨(20658941883/250000000000 : ℚ), (21452274687/2500000000 : ℚ), (-147560859701/200000000000 : ℚ), 4⟩,
    ⟨(42183743277/500000000000 : ℚ), (41681160231/10000000000 : ℚ), (-92450791749/250000000000 : ℚ), 3⟩,
    ⟨(17258333927/200000000000 : ℚ), (16655996751/10000000000 : ℚ), (-78251502777/500000000000 : ℚ), 3⟩,
    ⟨(44167185749/500000000000 : ℚ), (1151345403/10000000000 : ℚ), (-10626872597/500000000000 : ℚ), 3⟩,
    ⟨(90417092257/1000000000000 : ℚ), (-9091447507/10000000000 : ℚ), (35111602557/500000000000 : ℚ), 3⟩,
    ⟨(92459794121/1000000000000 : ℚ), (-647219767/400000000 : ℚ), (6750348747/50000000000 : ℚ), 2⟩,
    ⟨(47191988601/500000000000 : ℚ), (-2124190149/1000000000 : ℚ), (182271760133/1000000000000 : ℚ), 2⟩,
    ⟨(3003615507/31250000000 : ℚ), (-24910257031/10000000000 : ℚ), (217202792399/1000000000000 : ℚ), 2⟩,
    ⟨(24397100549/250000000000 : ℚ), (-107640377/39062500 : ℚ), (121411078317/500000000000 : ℚ), 2⟩,
    ⟨(98745499853/1000000000000 : ℚ), (-14699413173/5000000000 : ℚ), (260911466443/1000000000000 : ℚ), 2⟩,
    ⟨(49771261291/500000000000 : ℚ), (-3821067083/1250000000 : ℚ), (2128968339/7812500000 : ℚ), 2⟩,
    ⟨(19989768249/200000000000 : ℚ), (-973039319/312500000 : ℚ), (69545159833/250000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-3900953429/1250000000 : ℚ), (34860518933/125000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control23.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control23.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate23
