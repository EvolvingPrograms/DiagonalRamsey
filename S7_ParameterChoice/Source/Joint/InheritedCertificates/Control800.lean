import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate800
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (42173065926677/204550259678600 : ℚ), (2288537651551/5000000000 : ℚ), (-94511490710381/1000000000000 : ℚ)⟩,
  ⟨(42173065926677/204550259678600 : ℚ), (3374150166483/16267306033000 : ℚ), (48607010953/1000000000 : ℚ), (-10165358857027/1000000000000 : ℚ)⟩,
  ⟨(3374150166483/16267306033000 : ℚ), (37199666123/177600962802 : ℚ), (16072398887/1000000000 : ℚ), (-3417058524061/1000000000000 : ℚ)⟩,
  ⟨(37199666123/177600962802 : ℚ), (383120757049/1805464088900 : ℚ), (71923507469/10000000000 : ℚ), (-1557075217911/1000000000000 : ℚ)⟩,
  ⟨(383120757049/1805464088900 : ℚ), (194340624047/901620855550 : ℚ), (35814225691/10000000000 : ℚ), (-790833703813/1000000000000 : ℚ)⟩,
  ⟨(194340624047/901620855550 : ℚ), (56073718676/255620305525 : ℚ), (889090429/500000000 : ℚ), (-402152455719/1000000000000 : ℚ)⟩,
  ⟨(56073718676/255620305525 : ℚ), (14133819533/63236742200 : ℚ), (7556996359/10000000000 : ℚ), (-35571516203/200000000000 : ℚ)⟩,
  ⟨(14133819533/63236742200 : ℚ), (47431616147/208201606950 : ℚ), (1233322139/10000000000 : ℚ), (-7303877137/200000000000 : ℚ)⟩,
  ⟨(47431616147/208201606950 : ℚ), (66621877501/287008185700 : ℚ), (-293071/1000000 : ℚ), (58343846609/1000000000000 : ℚ)⟩,
  ⟨(66621877501/287008185700 : ℚ), (4383297133/18552150300 : ℚ), (-5800791857/10000000000 : ℚ), (12496572411/100000000000 : ℚ)⟩,
  ⟨(4383297133/18552150300 : ℚ), (35392890217/147417005300 : ℚ), (-784152839/1000000000 : ℚ), (173181992573/1000000000000 : ℚ)⟩,
  ⟨(35392890217/147417005300 : ℚ), (25829002769/106103453100 : ℚ), (-9315698443/10000000000 : ℚ), (20857488279/100000000000 : ℚ)⟩,
  ⟨(25829002769/106103453100 : ℚ), (909030951/3692595715 : ℚ), (-5188366487/5000000000 : ℚ), (234403885559/1000000000000 : ℚ)⟩,
  ⟨(909030951/3692595715 : ℚ), (5818178933/23440057450 : ℚ), (-11115252117/10000000000 : ℚ), (252584504579/1000000000000 : ℚ)⟩,
  ⟨(5818178933/23440057450 : ℚ), (5688549457/22802523200 : ℚ), (-5792026633/5000000000 : ℚ), (52844172489/200000000000 : ℚ)⟩,
  ⟨(5688549457/22802523200 : ℚ), (176339939/705509625 : ℚ), (-5906039249/5000000000 : ℚ), (134954705951/500000000000 : ℚ)⟩,
  ⟨(176339939/705509625 : ℚ), (1/4 : ℚ), (-11840298883/10000000000 : ℚ), (135307385829/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3159701117/15000000000 : ℚ), (-3/8 : ℚ), (349607299583/1000000000000 : ℚ)⟩,
  ⟨(3159701117/15000000000 : ℚ), (1593960751/7500000000 : ℚ), (-176339939/470339750 : ℚ), (4932789525897947891/14110192500000000000 : ℚ)⟩,
  ⟨(1593960751/7500000000 : ℚ), (1707973367/7500000000 : ℚ), (-17065648371/45605046400 : ℚ), (39840402698548917839/114012616000000000000 : ℚ)⟩,
  ⟨(1707973367/7500000000 : ℚ), (1294915961/5000000000 : ℚ), (-17454536799/46880114900 : ℚ), (163616222552004858949/468801149000000000000 : ℚ)⟩,
  ⟨(1294915961/5000000000 : ℚ), (2311633513/7500000000 : ℚ), (-2727092853/7385191430 : ℚ), (257165613106337190457/738519143000000000000 : ℚ)⟩,
  ⟨(2311633513/7500000000 : ℚ), (5684301557/15000000000 : ℚ), (-25829002769/70735635400 : ℚ), (368124993595051632823/1061034531000000000000 : ℚ)⟩,
  ⟨(5684301557/15000000000 : ℚ), (715847161/1500000000 : ℚ), (-106178670651/294834010600 : ℚ), (508658706984226255739/1474170053000000000000 : ℚ)⟩,
  ⟨(715847161/1500000000 : ℚ), (9199208143/15000000000 : ℚ), (-4383297133/12368100200 : ℚ), (63506691639452691349/185521503000000000000 : ℚ)⟩,
  ⟨(9199208143/15000000000 : ℚ), (1206929/1500000 : ℚ), (-199865632503/574016371400 : ℚ), (971530375524126162913/2870081857000000000000 : ℚ)⟩,
  ⟨(1206929/1500000 : ℚ), (16233322139/15000000000 : ℚ), (-47431616147/138801071300 : ℚ), (1387877513286413426651/4164032139000000000000 : ℚ)⟩,
  ⟨(16233322139/15000000000 : ℚ), (22556996359/15000000000 : ℚ), (-42401458599/126473484400 : ℚ), (206345175755032387017/632367422000000000000 : ℚ)⟩,
  ⟨(22556996359/15000000000 : ℚ), (1639090429/750000000 : ℚ), (-84110578014/255620305525 : ℚ), (3240858304080819618421/10224812221000000000000 : ℚ)⟩,
  ⟨(1639090429/750000000 : ℚ), (50814225691/15000000000 : ℚ), (-583021872141/1803241711100 : ℚ), (5489893449915032438711/18032417111000000000000 : ℚ)⟩,
  ⟨(50814225691/15000000000 : ℚ), (86923507469/15000000000 : ℚ), (-1149362271147/3610928177800 : ℚ), (2594883045166580068051/9027320444500000000000 : ℚ)⟩,
  ⟨(86923507469/15000000000 : ℚ), (17572398887/1500000000 : ℚ), (-37199666123/118400641868 : ℚ), (23407243876281061061039/88800481401000000000000 : ℚ)⟩,
  ⟨(17572398887/1500000000 : ℚ), (32/1 : ℚ), (-10122450499449/32534612066000 : ℚ), (463196985813144118051/2033413254125000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (466339423869/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(1287619171/6250000000 : ℚ), (2288537651551/5000000000 : ℚ), (-94511490710381/1000000000000 : ℚ), 12⟩,
    ⟨(206862109089/1000000000000 : ℚ), (48607010953/1000000000 : ℚ), (-10165358857027/1000000000000 : ℚ), 9⟩,
    ⟨(104257897463/500000000000 : ℚ), (16072398887/1000000000 : ℚ), (-3417058524061/1000000000000 : ℚ), 7⟩,
    ⟨(52729143663/250000000000 : ℚ), (71923507469/10000000000 : ℚ), (-1557075217911/1000000000000 : ℚ), 6⟩,
    ⟨(213972187649/1000000000000 : ℚ), (35814225691/10000000000 : ℚ), (-790833703813/1000000000000 : ℚ), 6⟩,
    ⟨(108782604211/500000000000 : ℚ), (889090429/500000000 : ℚ), (-402152455719/1000000000000 : ℚ), 5⟩,
    ⟨(110778779599/500000000000 : ℚ), (7556996359/10000000000 : ℚ), (-35571516203/200000000000 : ℚ), 5⟩,
    ⟨(14112238511/62500000000 : ℚ), (1233322139/10000000000 : ℚ), (-7303877137/200000000000 : ℚ), 5⟩,
    ⟨(230117105517/1000000000000 : ℚ), (-293071/1000000 : ℚ), (58343846609/1000000000000 : ℚ), 5⟩,
    ⟨(46871072499/200000000000 : ℚ), (-5800791857/10000000000 : ℚ), (12496572411/100000000000 : ℚ), 4⟩,
    ⟨(29793464159/125000000000 : ℚ), (-784152839/1000000000 : ℚ), (173181992573/1000000000000 : ℚ), 4⟩,
    ⟨(48388146809/200000000000 : ℚ), (-9315698443/10000000000 : ℚ), (20857488279/100000000000 : ℚ), 4⟩,
    ⟨(244996347041/1000000000000 : ℚ), (-5188366487/5000000000 : ℚ), (234403885559/1000000000000 : ℚ), 4⟩,
    ⟨(247397126767/1000000000000 : ℚ), (-11115252117/10000000000 : ℚ), (252584504579/1000000000000 : ℚ), 4⟩,
    ⟨(49810162521/200000000000 : ℚ), (-5792026633/5000000000 : ℚ), (52844172489/200000000000 : ℚ), 4⟩,
    ⟨(124946927167/500000000000 : ℚ), (-5906039249/5000000000 : ℚ), (134954705951/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-11840298883/10000000000 : ℚ), (135307385829/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control800.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control800.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate800
