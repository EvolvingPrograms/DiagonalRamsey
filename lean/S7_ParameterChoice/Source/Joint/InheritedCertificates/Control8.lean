import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate8
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (80079769499171/1025726749974000 : ℚ), (11470714516923/10000000000 : ℚ), (-350516305723/3906250000 : ℚ)⟩,
  ⟨(80079769499171/1025726749974000 : ℚ), (6407645694613/81424984101100 : ℚ), (1213447017183/10000000000 : ℚ), (-9652404765917/1000000000000 : ℚ)⟩,
  ⟨(6407645694613/81424984101100 : ℚ), (1766959800847/22166480890800 : ℚ), (99799294043/2500000000 : ℚ), (-405594883913/125000000000 : ℚ)⟩,
  ⟨(1766959800847/22166480890800 : ℚ), (728878719707/8988934027800 : ℚ), (5547886477/312500000 : ℚ), (-1477799270457/1000000000000 : ℚ)⟩,
  ⟨(728878719707/8988934027800 : ℚ), (41190080681/497704597000 : ℚ), (43821513493/5000000000 : ℚ), (-2995682203/4000000000 : ℚ)⟩,
  ⟨(41190080681/497704597000 : ℚ), (4297358809/50753935210 : ℚ), (5356201657/1250000000 : ℚ), (-378209824621/1000000000000 : ℚ)⟩,
  ⟨(4297358809/50753935210 : ℚ), (68123387171/785339922250 : ℚ), (17472645651/10000000000 : ℚ), (-163341884171/1000000000000 : ℚ)⟩,
  ⟨(68123387171/785339922250 : ℚ), (4388412979/49363303500 : ℚ), (882923603/5000000000 : ℚ), (-27095109829/1000000000000 : ℚ)⟩,
  ⟨(4388412979/49363303500 : ℚ), (8158531391/89598328325 : ℚ), (-8600446529/10000000000 : ℚ), (6506156273/100000000000 : ℚ)⟩,
  ⟨(8158531391/89598328325 : ℚ), (47617734231/511304237000 : ℚ), (-3153662559/2000000000 : ℚ), (65164906929/500000000000 : ℚ)⟩,
  ⟨(47617734231/511304237000 : ℚ), (35188045199/370244231800 : ℚ), (-4176271033/2000000000 : ℚ), (177947548089/1000000000000 : ℚ)⟩,
  ⟨(35188045199/370244231800 : ℚ), (3225297703/33348892700 : ℚ), (-24583797483/10000000000 : ℚ), (26641949161/125000000000 : ℚ)⟩,
  ⟨(3225297703/33348892700 : ℚ), (9106717187/92843369800 : ℚ), (-27251708899/10000000000 : ℚ), (1866702929/7812500000 : ℚ)⟩,
  ⟨(9106717187/92843369800 : ℚ), (2334554881/23555928880 : ℚ), (-5821715259/2000000000 : ℚ), (128575704643/500000000000 : ℚ)⟩,
  ⟨(2334554881/23555928880 : ℚ), (380588651/3816003880 : ℚ), (-30286372739/10000000000 : ℚ), (268824183691/1000000000000 : ℚ)⟩,
  ⟨(380588651/3816003880 : ℚ), (707932909/7081210800 : ℚ), (-30858773321/10000000000 : ℚ), (17158313341/62500000000 : ℚ)⟩,
  ⟨(707932909/7081210800 : ℚ), (1/10 : ℚ), (-30929585429/10000000000 : ℚ), (55048189273/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (9070414571/40000000000 : ℚ), (-2/5 : ℚ), (14637803683/40000000000 : ℚ)⟩,
  ⟨(9070414571/40000000000 : ℚ), (9141226679/40000000000 : ℚ), (-707932909/1770302700 : ℚ), (25911636593104604459/70812108000000000000 : ℚ)⟩,
  ⟨(9141226679/40000000000 : ℚ), (9713627261/40000000000 : ℚ), (-380588651/954000970 : ℚ), (5367399067541423893/14676938000000000000 : ℚ)⟩,
  ⟨(9713627261/40000000000 : ℚ), (2178284741/8000000000 : ℚ), (-2334554881/5888982220 : ℚ), (430005147284373649509/1177796444000000000000 : ℚ)⟩,
  ⟨(2178284741/8000000000 : ℚ), (12748291101/40000000000 : ℚ), (-9106717187/23210842450 : ℚ), (337933149314535237463/928433698000000000000 : ℚ)⟩,
  ⟨(12748291101/40000000000 : ℚ), (15416202517/40000000000 : ℚ), (-3225297703/8337223175 : ℚ), (120800202878186440427/333488927000000000000 : ℚ)⟩,
  ⟨(15416202517/40000000000 : ℚ), (3823728967/8000000000 : ℚ), (-35188045199/92561057950 : ℚ), (1331588271026661527467/3702442318000000000000 : ℚ)⟩,
  ⟨(3823728967/8000000000 : ℚ), (4846337441/8000000000 : ℚ), (-47617734231/127826059250 : ℚ), (364047980325316075563/1022608474000000000000 : ℚ)⟩,
  ⟨(4846337441/8000000000 : ℚ), (31399553471/40000000000 : ℚ), (-32634125564/89598328325 : ℚ), (57176057317225043897/162906051500000000000 : ℚ)⟩,
  ⟨(31399553471/40000000000 : ℚ), (20882923603/20000000000 : ℚ), (-4388412979/12340825875 : ℚ), (169910744659193685659/493633035000000000000 : ℚ)⟩,
  ⟨(20882923603/20000000000 : ℚ), (57472645651/40000000000 : ℚ), (-136246774342/392669961125 : ℚ), (5264884530549091772547/15706798445000000000000 : ℚ)⟩,
  ⟨(57472645651/40000000000 : ℚ), (10356201657/5000000000 : ℚ), (-8594717618/25376967605 : ℚ), (1640781460019178040499/5075393521000000000000 : ℚ)⟩,
  ⟨(10356201657/5000000000 : ℚ), (63821513493/20000000000 : ℚ), (-41190080681/124426149250 : ℚ), (765107285479966139983/2488522985000000000000 : ℚ)⟩,
  ⟨(63821513493/20000000000 : ℚ), (6797886477/1250000000 : ℚ), (-728878719707/2247233506950 : ℚ), (4286051976921302150767/14981556713000000000000 : ℚ)⟩,
  ⟨(6797886477/1250000000 : ℚ), (109799294043/10000000000 : ℚ), (-1766959800847/5541620222700 : ℚ), (4732904620695098953471/18472067409000000000000 : ℚ)⟩,
  ⟨(109799294043/10000000000 : ℚ), (1253447017183/40000000000 : ℚ), (-6407645694613/20356246025275 : ℚ), (43043834264105264978273/203562460252750000000000 : ℚ)⟩,
  ⟨(1253447017183/40000000000 : ℚ), (32/1 : ℚ), (-80079769499171/256431687493500 : ℚ), (1368450515662145182893713/10257267499740000000000000 : ℚ)⟩ ]
def data : ControlCertificate.Data where
  p := (212499/1000000 : ℚ)
  x := (61922979223/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(19498364057/250000000000 : ℚ), (11470714516923/10000000000 : ℚ), (-350516305723/3906250000 : ℚ), 10⟩,
    ⟨(78415285271/1000000000000 : ℚ), (1213447017183/10000000000 : ℚ), (-9652404765917/1000000000000 : ℚ), 6⟩,
    ⟨(39621366351/500000000000 : ℚ), (99799294043/2500000000 : ℚ), (-405594883913/125000000000 : ℚ), 5⟩,
    ⟨(80444000183/1000000000000 : ℚ), (5547886477/312500000 : ℚ), (-1477799270457/1000000000000 : ℚ), 4⟩,
    ⟨(20493230919/250000000000 : ℚ), (43821513493/5000000000 : ℚ), (-2995682203/4000000000 : ℚ), 4⟩,
    ⟨(83770747509/1000000000000 : ℚ), (5356201657/1250000000 : ℚ), (-378209824621/1000000000000 : ℚ), 3⟩,
    ⟨(85768382321/1000000000000 : ℚ), (17472645651/10000000000 : ℚ), (-163341884171/1000000000000 : ℚ), 3⟩,
    ⟨(87889060127/1000000000000 : ℚ), (882923603/5000000000 : ℚ), (-27095109829/1000000000000 : ℚ), 3⟩,
    ⟨(45025642233/500000000000 : ℚ), (-8600446529/10000000000 : ℚ), (6506156273/100000000000 : ℚ), 2⟩,
    ⟨(92171962271/1000000000000 : ℚ), (-3153662559/2000000000 : ℚ), (65164906929/500000000000 : ℚ), 2⟩,
    ⟨(23542399271/250000000000 : ℚ), (-4176271033/2000000000 : ℚ), (177947548089/1000000000000 : ℚ), 2⟩,
    ⟨(95967420917/1000000000000 : ℚ), (-24583797483/10000000000 : ℚ), (26641949161/125000000000 : ℚ), 2⟩,
    ⟨(9749634441/100000000000 : ℚ), (-27251708899/10000000000 : ℚ), (1866702929/7812500000 : ℚ), 2⟩,
    ⟨(9869761189/100000000000 : ℚ), (-5821715259/2000000000 : ℚ), (128575704643/500000000000 : ℚ), 2⟩,
    ⟨(49762529661/500000000000 : ℚ), (-30286372739/10000000000 : ℚ), (268824183691/1000000000000 : ℚ), 2⟩,
    ⟨(19989377673/200000000000 : ℚ), (-30858773321/10000000000 : ℚ), (17158313341/62500000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-30929585429/10000000000 : ℚ), (55048189273/200000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control8.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control8.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate8
