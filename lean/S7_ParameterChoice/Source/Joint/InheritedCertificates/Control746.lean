import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate746
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (27135798269299/129626282052925 : ℚ), (5801111382759/10000000000 : ℚ), (-15201049076603/125000000000 : ℚ)⟩,
  ⟨(27135798269299/129626282052925 : ℚ), (8684245826341/41256610191500 : ℚ), (308030050321/5000000000 : ℚ), (-3266299883907/250000000000 : ℚ)⟩,
  ⟨(8684245826341/41256610191500 : ℚ), (478716038477/2254014153880 : ℚ), (203493998727/10000000000 : ℚ), (-4380953709287/1000000000000 : ℚ)⟩,
  ⟨(478716038477/2254014153880 : ℚ), (986069644403/4587863790900 : ℚ), (90793291033/10000000000 : ℚ), (-993686758451/500000000000 : ℚ)⟩,
  ⟨(986069644403/4587863790900 : ℚ), (20007863567/91764988712 : ℚ), (11228663281/2500000000 : ℚ), (-1001303872499/1000000000000 : ℚ)⟩,
  ⟨(20007863567/91764988712 : ℚ), (36081429876/162840206875 : ℚ), (10986702973/5000000000 : ℚ), (-125276820831/250000000000 : ℚ)⟩,
  ⟨(36081429876/162840206875 : ℚ), (181895525921/806919293600 : ℚ), (2236547349/2500000000 : ℚ), (-53113961079/250000000000 : ℚ)⟩,
  ⟨(181895525921/806919293600 : ℚ), (122086491519/532157523500 : ℚ), (43849823/500000000 : ℚ), (-6112063679/200000000000 : ℚ)⟩,
  ⟨(122086491519/532157523500 : ℚ), (85741571499/367333212800 : ℚ), (-177783151/400000000 : ℚ), (22881543281/250000000000 : ℚ)⟩,
  ⟨(85741571499/367333212800 : ℚ), (20684696893/87181301400 : ℚ), (-8117910903/10000000000 : ℚ), (177267744623/1000000000000 : ℚ)⟩,
  ⟨(20684696893/87181301400 : ℚ), (22775275827/94580568400 : ℚ), (-2146669989/2000000000 : ℚ), (119660917651/500000000000 : ℚ)⟩,
  ⟨(22775275827/94580568400 : ℚ), (8310487361/34072409600 : ℚ), (-12624961313/10000000000 : ℚ), (71218096739/250000000000 : ℚ)⟩,
  ⟨(8310487361/34072409600 : ℚ), (23398632237/94941617800 : ℚ), (-13987857697/10000000000 : ℚ), (795285841/2500000000 : ℚ)⟩,
  ⟨(23398632237/94941617800 : ℚ), (7488127783/30152222900 : ℚ), (-119498191/80000000 : ℚ), (341512968637/1000000000000 : ℚ)⟩,
  ⟨(7488127783/30152222900 : ℚ), (2440453117/9781044200 : ℚ), (-15540318333/10000000000 : ℚ), (356489224203/1000000000000 : ℚ)⟩,
  ⟨(2440453117/9781044200 : ℚ), (907826189/3632020600 : ℚ), (-15833749659/10000000000 : ℚ), (181905291777/500000000000 : ℚ)⟩,
  ⟨(907826189/3632020600 : ℚ), (1/4 : ℚ), (-3174013973/2000000000 : ℚ), (364718409743/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (825986027/4000000000 : ℚ), (-1/2 : ℚ), (233983331559/500000000000 : ℚ)⟩,
  ⟨(825986027/4000000000 : ℚ), (4166250341/20000000000 : ℚ), (-907826189/1816010300 : ℚ), (16995906509151472573/36320206000000000000 : ℚ)⟩,
  ⟨(4166250341/20000000000 : ℚ), (4459681667/20000000000 : ℚ), (-2440453117/4890522100 : ℚ), (9150402522518086753/19562088400000000000 : ℚ)⟩,
  ⟨(4459681667/20000000000 : ℚ), (40501809/160000000 : ℚ), (-7488127783/15076111450 : ℚ), (35221022922541940687/75380557250000000000 : ℚ)⟩,
  ⟨(40501809/160000000 : ℚ), (6012142303/20000000000 : ℚ), (-23398632237/47470808900 : ℚ), (442698804136301501011/949416178000000000000 : ℚ)⟩,
  ⟨(6012142303/20000000000 : ℚ), (7375038687/20000000000 : ℚ), (-8310487361/17036204800 : ℚ), (158353052316144826783/340724096000000000000 : ℚ)⟩,
  ⟨(7375038687/20000000000 : ℚ), (1853330011/4000000000 : ℚ), (-22775275827/47290284200 : ℚ), (437402463128853177053/945805684000000000000 : ℚ)⟩,
  ⟨(1853330011/4000000000 : ℚ), (11882089097/20000000000 : ℚ), (-20684696893/43590650700 : ℚ), (400321738151824999343/871813014000000000000 : ℚ)⟩,
  ⟨(11882089097/20000000000 : ℚ), (622216849/800000000 : ℚ), (-85741571499/183666606400 : ℚ), (1669952293449678994147/3673332128000000000000 : ℚ)⟩,
  ⟨(622216849/800000000 : ℚ), (1043849823/1000000000 : ℚ), (-122086491519/266078761750 : ℚ), (477234043542287214983/1064315047000000000000 : ℚ)⟩,
  ⟨(1043849823/1000000000 : ℚ), (7236547349/5000000000 : ℚ), (-181895525921/403459646800 : ℚ), (177541757271385519097/403459646800000000000 : ℚ)⟩,
  ⟨(7236547349/5000000000 : ℚ), (20986702973/10000000000 : ℚ), (-72162859752/162840206875 : ℚ), (698456366466986466171/1628402068750000000000 : ℚ)⟩,
  ⟨(20986702973/10000000000 : ℚ), (16228663281/5000000000 : ℚ), (-20007863567/45882494356 : ℚ), (4749464220407451387439/11470623589000000000000 : ℚ)⟩,
  ⟨(16228663281/5000000000 : ℚ), (110793291033/20000000000 : ℚ), (-986069644403/2293931895450 : ℚ), (6023970373088549700127/15292879303000000000000 : ℚ)⟩,
  ⟨(110793291033/20000000000 : ℚ), (223493998727/20000000000 : ℚ), (-478716038477/1127007076940 : ℚ), (41214225058566364939717/112700707694000000000000 : ℚ)⟩,
  ⟨(223493998727/20000000000 : ℚ), (318030050321/10000000000 : ℚ), (-8684245826341/20628305095750 : ℚ), (66721915573306396541651/206283050957500000000000 : ℚ)⟩,
  ⟨(318030050321/10000000000 : ℚ), (32/1 : ℚ), (-54271596538598/129626282052925 : ℚ), (324066177340732753598839/1296262820529250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (378962706031/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(209194400227/1000000000000 : ℚ), (5801111382759/10000000000 : ℚ), (-15201049076603/125000000000 : ℚ), 12⟩,
    ⟨(104988288039/500000000000 : ℚ), (308030050321/5000000000 : ℚ), (-3266299883907/250000000000 : ℚ), 9⟩,
    ⟨(211510869199/1000000000000 : ℚ), (203493998727/10000000000 : ℚ), (-4380953709287/1000000000000 : ℚ), 7⟩,
    ⟨(213738317567/1000000000000 : ℚ), (90793291033/10000000000 : ℚ), (-993686758451/500000000000 : ℚ), 6⟩,
    ⟨(216573321591/1000000000000 : ℚ), (11228663281/2500000000 : ℚ), (-1001303872499/1000000000000 : ℚ), 6⟩,
    ⟨(43981386731/200000000000 : ℚ), (10986702973/5000000000 : ℚ), (-125276820831/250000000000 : ℚ), 5⟩,
    ⟨(111805522459/500000000000 : ℚ), (2236547349/2500000000 : ℚ), (-53113961079/250000000000 : ℚ), 5⟩,
    ⟨(11377165423/50000000000 : ℚ), (43849823/500000000 : ℚ), (-6112063679/200000000000 : ℚ), 5⟩,
    ⟨(144720381/625000000 : ℚ), (-177783151/400000000 : ℚ), (22881543281/250000000000 : ℚ), 4⟩,
    ⟨(117742436571/500000000000 : ℚ), (-8117910903/10000000000 : ℚ), (177267744623/1000000000000 : ℚ), 4⟩,
    ⟨(47837796881/200000000000 : ℚ), (-2146669989/2000000000 : ℚ), (119660917651/500000000000 : ℚ), 4⟩,
    ⟨(242522596469/1000000000000 : ℚ), (-12624961313/10000000000 : ℚ), (71218096739/250000000000 : ℚ), 4⟩,
    ⟨(61339400123/250000000000 : ℚ), (-13987857697/10000000000 : ℚ), (795285841/2500000000 : ℚ), 4⟩,
    ⟨(247585048861/1000000000000 : ℚ), (-119498191/80000000 : ℚ), (341512968637/1000000000000 : ℚ), 4⟩,
    ⟨(124559670991/500000000000 : ℚ), (-15540318333/10000000000 : ℚ), (356489224203/1000000000000 : ℚ), 4⟩,
    ⟨(249901517833/1000000000000 : ℚ), (-15833749659/10000000000 : ℚ), (181905291777/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-3174013973/2000000000 : ℚ), (364718409743/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control746.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control746.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate746
