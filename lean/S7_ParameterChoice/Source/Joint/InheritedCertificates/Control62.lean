import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate62
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (78376979061677/971937772458900 : ℚ), (217404223821/200000000 : ℚ), (-87806495469017/1000000000000 : ℚ)⟩,
  ⟨(78376979061677/971937772458900 : ℚ), (6271398873629/77243817071700 : ℚ), (1150833466461/10000000000 : ℚ), (-471475820367/50000000000 : ℚ)⟩,
  ⟨(6271398873629/77243817071700 : ℚ), (864687480263/10533453886950 : ℚ), (369526656/9765625 : ℚ), (-3158117533711/1000000000000 : ℚ)⟩,
  ⟨(864687480263/10533453886950 : ℚ), (89167075643/1070407501250 : ℚ), (33545243601/2000000000 : ℚ), (-285748514637/200000000000 : ℚ)⟩,
  ⟨(89167075643/1070407501250 : ℚ), (36274452439/427866336300 : ℚ), (16418723581/2000000000 : ℚ), (-715405968041/1000000000000 : ℚ)⟩,
  ⟨(36274452439/427866336300 : ℚ), (1305433369/15097563100 : ℚ), (1572279371/400000000 : ℚ), (-352661443651/1000000000000 : ℚ)⟩,
  ⟨(1305433369/15097563100 : ℚ), (11099445452/125705807725 : ℚ), (3749976921/2500000000 : ℚ), (-71243335621/500000000000 : ℚ)⟩,
  ⟨(11099445452/125705807725 : ℚ), (90024790477/998047988000 : ℚ), (-84789243/10000000000 : ℚ), (-4646662909/500000000000 : ℚ)⟩,
  ⟨(90024790477/998047988000 : ℚ), (31855710197/345864208850 : ℚ), (-10065269123/10000000000 : ℚ), (80731464659/1000000000000 : ℚ)⟩,
  ⟨(31855710197/345864208850 : ℚ), (11614286229/123641715200 : ℚ), (-169825533/100000000 : ℚ), (144442885053/1000000000000 : ℚ)⟩,
  ⟨(11614286229/123641715200 : ℚ), (11441501969/119654214900 : ℚ), (-5482055477/2500000000 : ℚ), (190900029969/1000000000000 : ℚ)⟩,
  ⟨(11441501969/119654214900 : ℚ), (25174959157/259271090900 : ℚ), (-5103569671/2000000000 : ℚ), (56306133969/250000000000 : ℚ)⟩,
  ⟨(25174959157/259271090900 : ℚ), (17780017727/180854507900 : ℚ), (-878454977/312500000 : ℚ), (250399495033/1000000000000 : ℚ)⟩,
  ⟨(17780017727/180854507900 : ℚ), (11402219539/114928285700 : ℚ), (-29919104343/10000000000 : ℚ), (6704487819/25000000000 : ℚ)⟩,
  ⟨(11402219539/114928285700 : ℚ), (5579305997/55923948200 : ℚ), (-9708871/3125000 : ℚ), (279581732299/1000000000000 : ℚ)⟩,
  ⟨(5579305997/55923948200 : ℚ), (346009729/3460909200 : ℚ), (-15813813341/5000000000 : ℚ), (35645129787/125000000000 : ℚ)⟩,
  ⟨(346009729/3460909200 : ℚ), (1/10 : ℚ), (-15848422433/5000000000 : ℚ), (142926528877/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (4151577567/20000000000 : ℚ), (-2/5 : ℚ), (184442304547/500000000000 : ℚ)⟩,
  ⟨(4151577567/20000000000 : ℚ), (4186186659/20000000000 : ℚ), (-346009729/865227300 : ℚ), (2127681205341633009/5768182000000000000 : ℚ)⟩,
  ⟨(4186186659/20000000000 : ℚ), (2791129/12500000 : ℚ), (-5579305997/13980987050 : ℚ), (103092672002738695359/279619741000000000000 : ℚ)⟩,
  ⟨(2791129/12500000 : ℚ), (10080895657/40000000000 : ℚ), (-11402219539/28732071425 : ℚ), (423158702044546397443/1149282857000000000000 : ℚ)⟩,
  ⟨(10080895657/40000000000 : ℚ), (371545023/1250000000 : ℚ), (-17780017727/45213626975 : ℚ), (664253241576213019679/1808545079000000000000 : ℚ)⟩,
  ⟨(371545023/1250000000 : ℚ), (2896430329/8000000000 : ℚ), (-25174959157/64817772725 : ℚ), (948529687308522434549/2592710909000000000000 : ℚ)⟩,
  ⟨(2896430329/8000000000 : ℚ), (4517944523/10000000000 : ℚ), (-11441501969/29913553725 : ℚ), (435188216726220726529/1196542149000000000000 : ℚ)⟩,
  ⟨(4517944523/10000000000 : ℚ), (230174467/400000000 : ℚ), (-11614286229/30910428800 : ℚ), (111480718699611280839/309104288000000000000 : ℚ)⟩,
  ⟨(230174467/400000000 : ℚ), (29934730877/40000000000 : ℚ), (-63711420394/172932104425 : ℚ), (2465626706357534706181/6917284177000000000000 : ℚ)⟩,
  ⟨(29934730877/40000000000 : ℚ), (39915210757/40000000000 : ℚ), (-90024790477/249511997000 : ℚ), (3500606633899388019249/9980479880000000000000 : ℚ)⟩,
  ⟨(39915210757/40000000000 : ℚ), (13749976921/10000000000 : ℚ), (-44397781808/125705807725 : ℚ), (862708908436744527447/2514116154500000000000 : ℚ)⟩,
  ⟨(13749976921/10000000000 : ℚ), (3172279371/1600000000 : ℚ), (-1305433369/3774390775 : ℚ), (25143349841381301847/75487815500000000000 : ℚ)⟩,
  ⟨(3172279371/1600000000 : ℚ), (24418723581/8000000000 : ℚ), (-36274452439/106966584075 : ℚ), (113991485889315478201/356555280250000000000 : ℚ)⟩,
  ⟨(24418723581/8000000000 : ℚ), (41545243601/8000000000 : ℚ), (-178334151286/535203750625 : ℚ), (1291588686784653004961/4281630005000000000000 : ℚ)⟩,
  ⟨(41545243601/8000000000 : ℚ), (102147289/9765625 : ℚ), (-1729374960526/5266726943475 : ℚ), (11648927968656496728383/42133815547800000000000 : ℚ)⟩,
  ⟨(102147289/9765625 : ℚ), (1190833466461/40000000000 : ℚ), (-6271398873629/19310954267925 : ℚ), (184473255811585516994189/772438170717000000000000 : ℚ)⟩,
  ⟨(1190833466461/40000000000 : ℚ), (32/1 : ℚ), (-78376979061677/242984443114725 : ℚ), (1684897943611145771831837/9719377724589000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (2197255717/10000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(40285610109/500000000000 : ℚ), (217404223821/200000000 : ℚ), (-87806495469017/1000000000000 : ℚ), 10⟩,
    ⟨(80943637789/1000000000000 : ℚ), (1150833466461/10000000000 : ℚ), (-471475820367/50000000000 : ℚ), 7⟩,
    ⟨(81674161133/1000000000000 : ℚ), (369526656/9765625 : ℚ), (-3158117533711/1000000000000 : ℚ), 6⟩,
    ⟨(41367358323/500000000000 : ℚ), (33545243601/2000000000 : ℚ), (-285748514637/200000000000 : ℚ), 5⟩,
    ⟨(1313821059/15625000000 : ℚ), (16418723581/2000000000 : ℚ), (-715405968041/1000000000000 : ℚ), 4⟩,
    ⟨(8567178127/100000000000 : ℚ), (1572279371/400000000 : ℚ), (-352661443651/1000000000000 : ℚ), 4⟩,
    ⟨(87435420633/1000000000000 : ℚ), (3749976921/2500000000 : ℚ), (-71243335621/500000000000 : ℚ), 3⟩,
    ⟨(17861538039/200000000000 : ℚ), (-84789243/10000000000 : ℚ), (-4646662909/500000000000 : ℚ), 3⟩,
    ⟨(45608319843/500000000000 : ℚ), (-10065269123/10000000000 : ℚ), (80731464659/1000000000000 : ℚ), 3⟩,
    ⟨(1454514207/15625000000 : ℚ), (-169825533/100000000 : ℚ), (144442885053/1000000000000 : ℚ), 3⟩,
    ⟨(94852548611/1000000000000 : ℚ), (-5482055477/2500000000 : ℚ), (190900029969/1000000000000 : ℚ), 3⟩,
    ⟨(19287956421/200000000000 : ℚ), (-5103569671/2000000000 : ℚ), (56306133969/250000000000 : ℚ), 3⟩,
    ⟨(19557922647/200000000000 : ℚ), (-878454977/312500000 : ℚ), (250399495033/1000000000000 : ℚ), 3⟩,
    ⟨(24712542187/250000000000 : ℚ), (-29919104343/10000000000 : ℚ), (6704487819/25000000000 : ℚ), 2⟩,
    ⟨(24895173023/250000000000 : ℚ), (-9708871/3125000 : ℚ), (279581732299/1000000000000 : ℚ), 2⟩,
    ⟨(99953109663/1000000000000 : ℚ), (-15813813341/5000000000 : ℚ), (35645129787/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-15848422433/5000000000 : ℚ), (142926528877/500000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control62.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control62.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate62
