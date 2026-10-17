import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate717
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (95668620087947/360086613968300 : ℚ), (503526035623/1250000000 : ℚ), (-107268768706989/1000000000000 : ℚ)⟩,
  ⟨(95668620087947/360086613968300 : ℚ), (1913517175567/7137968601550 : ℚ), (427342145301/10000000000 : ℚ), (-5800074309521/500000000000 : ℚ)⟩,
  ⟨(1913517175567/7137968601550 : ℚ), (42189779619/155112648404 : ℚ), (141823401239/10000000000 : ℚ), (-1973039958387/500000000000 : ℚ)⟩,
  ⟨(42189779619/155112648404 : ℚ), (868863174801/3133602451100 : ℚ), (64267077037/10000000000 : ℚ), (-114786933489/62500000000 : ℚ)⟩,
  ⟨(868863174801/3133602451100 : ℚ), (440556259467/1552853852000 : ℚ), (16465526263/5000000000 : ℚ), (-967727761023/1000000000000 : ℚ)⟩,
  ⟨(440556259467/1552853852000 : ℚ), (127018799903/436414287750 : ℚ), (8701257003/5000000000 : ℚ), (-131792875389/250000000000 : ℚ)⟩,
  ⟨(127018799903/436414287750 : ℚ), (31975947843/106935365660 : ℚ), (8674228251/10000000000 : ℚ), (-1092535607/4000000000 : ℚ)⟩,
  ⟨(31975947843/106935365660 : ℚ), (53552597051/174261473650 : ℚ), (25995781/78125000 : ℚ), (-22650832507/200000000000 : ℚ)⟩,
  ⟨(53552597051/174261473650 : ℚ), (3000920573/9508528420 : ℚ), (-31553901/2000000000 : ℚ), (-6148968433/1000000000000 : ℚ)⟩,
  ⟨(3000920573/9508528420 : ℚ), (13529206974/41811584575 : ℚ), (-253490161/1000000000 : ℚ), (17218511473/250000000000 : ℚ)⟩,
  ⟨(13529206974/41811584575 : ℚ), (3297647513/9965029025 : ℚ), (-4207364993/10000000000 : ℚ), (30747718447/250000000000 : ℚ)⟩,
  ⟨(3297647513/9965029025 : ℚ), (5752357341/17051111440 : ℚ), (-1350792119/2500000000 : ℚ), (20320330493/125000000000 : ℚ)⟩,
  ⟨(5752357341/17051111440 : ℚ), (5041839689/14714627725 : ℚ), (-390982753/625000000 : ℚ), (191324430649/1000000000000 : ℚ)⟩,
  ⟨(5041839689/14714627725 : ℚ), (643357672/1856384945 : ℚ), (-6844309157/10000000000 : ℚ), (42298357881/200000000000 : ℚ)⟩,
  ⟨(643357672/1856384945 : ℚ), (261547171/749461175 : ℚ), (-3607793073/5000000000 : ℚ), (44871788569/200000000000 : ℚ)⟩,
  ⟨(261547171/749461175 : ℚ), (388851913/1111329900 : ℚ), (-1848864207/2500000000 : ℚ), (230636074949/1000000000000 : ℚ)⟩,
  ⟨(388851913/1111329900 : ℚ), (7/20 : ℚ), (-3708841713/5000000000 : ℚ), (9256551151/40000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1291158287/5000000000 : ℚ), (-7/20 : ℚ), (64358971773/200000000000 : ℚ)⟩,
  ⟨(1291158287/5000000000 : ℚ), (651135793/2500000000 : ℚ), (-388851913/1111329900 : ℚ), (3575909256017934787/11113299000000000000 : ℚ)⟩,
  ⟨(651135793/2500000000 : ℚ), (1392206927/5000000000 : ℚ), (-261547171/749461175 : ℚ), (9638954942682489851/29978447000000000000 : ℚ)⟩,
  ⟨(1392206927/5000000000 : ℚ), (3155690843/10000000000 : ℚ), (-643357672/1856384945 : ℚ), (23825358610918890293/74255397800000000000 : ℚ)⟩,
  ⟨(3155690843/10000000000 : ℚ), (234017247/625000000 : ℚ), (-5041839689/14714627725 : ℚ), (188122867273352041453/588585109000000000000 : ℚ)⟩,
  ⟨(234017247/625000000 : ℚ), (1149207881/2500000000 : ℚ), (-5752357341/17051111440 : ℚ), (67701693926404336097/213138893000000000000 : ℚ)⟩,
  ⟨(1149207881/2500000000 : ℚ), (5792635007/10000000000 : ℚ), (-3297647513/9965029025 : ℚ), (15679072347812802279/49825145125000000000 : ℚ)⟩,
  ⟨(5792635007/10000000000 : ℚ), (746509839/1000000000 : ℚ), (-13529206974/41811584575 : ℚ), (129794191147942065019/418115845750000000000 : ℚ)⟩,
  ⟨(746509839/1000000000 : ℚ), (1968446099/2000000000 : ℚ), (-3000920573/9508528420 : ℚ), (72377688914162099941/237713210500000000000 : ℚ)⟩,
  ⟨(1968446099/2000000000 : ℚ), (104120781/78125000 : ℚ), (-53552597051/174261473650 : ℚ), (1032723441552360314681/3485229473000000000000 : ℚ)⟩,
  ⟨(104120781/78125000 : ℚ), (18674228251/10000000000 : ℚ), (-31975947843/106935365660 : ℚ), (305049411984465473543/1069353656600000000000 : ℚ)⟩,
  ⟨(18674228251/10000000000 : ℚ), (13701257003/5000000000 : ℚ), (-127018799903/436414287750 : ℚ), (42142238915381120501/155862245625000000000 : ℚ)⟩,
  ⟨(13701257003/5000000000 : ℚ), (21465526263/5000000000 : ℚ), (-440556259467/1552853852000 : ℚ), (1943073050958425828841/7764269260000000000000 : ℚ)⟩,
  ⟨(21465526263/5000000000 : ℚ), (74267077037/10000000000 : ℚ), (-868863174801/3133602451100 : ℚ), (6976469755896972162573/31336024511000000000000 : ℚ)⟩,
  ⟨(74267077037/10000000000 : ℚ), (151823401239/10000000000 : ℚ), (-42189779619/155112648404 : ℚ), (7113169305847777716351/38778162101000000000000 : ℚ)⟩,
  ⟨(151823401239/10000000000 : ℚ), (32/1 : ℚ), (-1913517175567/7137968601550 : ℚ), (2211685118107039163379/17844921503875000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (99796286609/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(53076635279/200000000000 : ℚ), (503526035623/1250000000 : ℚ), (-107268768706989/1000000000000 : ℚ), 11⟩,
    ⟨(267005140937/1000000000000 : ℚ), (427342145301/10000000000 : ℚ), (-5800074309521/500000000000 : ℚ), 8⟩,
    ⟨(135093369417/500000000000 : ℚ), (141823401239/10000000000 : ℚ), (-1973039958387/500000000000 : ℚ), 6⟩,
    ⟨(274805703063/1000000000000 : ℚ), (64267077037/10000000000 : ℚ), (-114786933489/62500000000 : ℚ), 6⟩,
    ⟨(140342264709/500000000000 : ℚ), (16465526263/5000000000 : ℚ), (-967727761023/1000000000000 : ℚ), 5⟩,
    ⟨(2875972979/10000000000 : ℚ), (8701257003/5000000000 : ℚ), (-131792875389/250000000000 : ℚ), 4⟩,
    ⟨(295278354693/1000000000000 : ℚ), (8674228251/10000000000 : ℚ), (-1092535607/4000000000 : ℚ), 4⟩,
    ⟨(303432521091/1000000000000 : ℚ), (25995781/78125000 : ℚ), (-22650832507/200000000000 : ℚ), 4⟩,
    ⟨(311746437053/1000000000000 : ℚ), (-31553901/2000000000 : ℚ), (-6148968433/1000000000000 : ℚ), 4⟩,
    ⟨(79975150863/250000000000 : ℚ), (-253490161/1000000000 : ℚ), (17218511473/250000000000 : ℚ), 4⟩,
    ⟨(65516332049/200000000000 : ℚ), (-4207364993/10000000000 : ℚ), (30747718447/250000000000 : ℚ), 3⟩,
    ⟨(334494428727/1000000000000 : ℚ), (-1350792119/2500000000 : ℚ), (20320330493/125000000000 : ℚ), 3⟩,
    ⟨(170186627541/500000000000 : ℚ), (-390982753/625000000 : ℚ), (191324430649/1000000000000 : ℚ), 3⟩,
    ⟨(344992219311/1000000000000 : ℚ), (-6844309157/10000000000 : ℚ), (42298357881/200000000000 : ℚ), 3⟩,
    ⟨(348173817207/1000000000000 : ℚ), (-3607793073/5000000000 : ℚ), (44871788569/200000000000 : ℚ), 3⟩,
    ⟨(1399183127/4000000000 : ℚ), (-1848864207/2500000000 : ℚ), (230636074949/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-3708841713/5000000000 : ℚ), (9256551151/40000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control717.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control717.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate717
