import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate34
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (19745452334734/248368015227575 : ℚ), (11110586791051/10000000000 : ℚ), (-88491596217021/1000000000000 : ℚ)⟩,
  ⟨(19745452334734/248368015227575 : ℚ), (6319828123313/78916132108900 : ℚ), (293966545487/2500000000 : ℚ), (-1901957375617/200000000000 : ℚ)⟩,
  ⟨(6319828123313/78916132108900 : ℚ), (108923493227/1344141356325 : ℚ), (386704860859/10000000000 : ℚ), (-797489688693/250000000000 : ℚ)⟩,
  ⟨(108923493227/1344141356325 : ℚ), (359460375457/4366655464650 : ℚ), (171642243847/10000000000 : ℚ), (-72359143157/50000000000 : ℚ)⟩,
  ⟨(359460375457/4366655464650 : ℚ), (91411757727/1089737637400 : ℚ), (42154567277/5000000000 : ℚ), (-364131056113/500000000000 : ℚ)⟩,
  ⟨(91411757727/1089737637400 : ℚ), (17660032892/206140118775 : ℚ), (20359814529/5000000000 : ℚ), (-181307540659/500000000000 : ℚ)⟩,
  ⟨(17660032892/206140118775 : ℚ), (134358575783/1533629143700 : ℚ), (3196562961/2000000000 : ℚ), (-75347343307/500000000000 : ℚ)⟩,
  ⟨(134358575783/1533629143700 : ℚ), (45430611019/506901408400 : ℚ), (80815421/1250000000 : ℚ), (-16336110831/1000000000000 : ℚ)⟩,
  ⟨(45430611019/506901408400 : ℚ), (5361577859/58506964050 : ℚ), (-11864381/12500000 : ℚ), (74525111207/1000000000000 : ℚ)⟩,
  ⟨(5361577859/58506964050 : ℚ), (46936539379/501576460600 : ℚ), (-8256170243/5000000000 : ℚ), (27772809103/200000000000 : ℚ)⟩,
  ⟨(46936539379/501576460600 : ℚ), (8672229091/90938530175 : ℚ), (-5382026273/2500000000 : ℚ), (92900292447/500000000000 : ℚ)⟩,
  ⟨(8672229091/90938530175 : ℚ), (25444626749/262510079300 : ℚ), (-25165646299/10000000000 : ℚ), (110244750629/500000000000 : ℚ)⟩,
  ⟨(25444626749/262510079300 : ℚ), (8984583127/91481776900 : ℚ), (-6947686773/2500000000 : ℚ), (245934128007/1000000000000 : ℚ)⟩,
  ⟨(8984583127/91481776900 : ℚ), (11521699019/116186946300 : ℚ), (-2962038263/1000000000 : ℚ), (263903294261/1000000000000 : ℚ)⟩,
  ⟨(11521699019/116186946300 : ℚ), (2818472271/28254746050 : ℚ), (-30782252093/10000000000 : ℚ), (13448486/48828125 : ℚ)⟩,
  ⟨(2818472271/28254746050 : ℚ), (699122343/6992960500 : ℚ), (-15673673507/5000000000 : ℚ), (140530968911/500000000000 : ℚ)⟩,
  ⟨(699122343/6992960500 : ℚ), (1/10 : ℚ), (-31417276619/10000000000 : ℚ), (56352212033/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8582723381/40000000000 : ℚ), (-2/5 : ℚ), (14703531759/40000000000 : ℚ)⟩,
  ⟨(8582723381/40000000000 : ℚ), (4326326493/20000000000 : ℚ), (-699122343/1748240125 : ℚ), (6425953330291321627/17482401250000000000 : ℚ)⟩,
  ⟨(4326326493/20000000000 : ℚ), (9217747907/40000000000 : ℚ), (-5636944542/14127373025 : ℚ), (103800599286441352237/282547460500000000000 : ℚ)⟩,
  ⟨(9217747907/40000000000 : ℚ), (1037961737/4000000000 : ℚ), (-11521699019/29046736575 : ℚ), (426212006056483411873/1161869463000000000000 : ℚ)⟩,
  ⟨(1037961737/4000000000 : ℚ), (3052313227/10000000000 : ℚ), (-8984583127/22870444225 : ℚ), (334679957974816639699/914817769000000000000 : ℚ)⟩,
  ⟨(3052313227/10000000000 : ℚ), (14834353701/40000000000 : ℚ), (-25444626749/65627519825 : ℚ), (956261757585142045643/2625100793000000000000 : ℚ)⟩,
  ⟨(14834353701/40000000000 : ℚ), (4617973727/10000000000 : ℚ), (-34688916364/90938530175 : ℚ), (131662730138483620157/363754120700000000000 : ℚ)⟩,
  ⟨(4617973727/10000000000 : ℚ), (11743829757/20000000000 : ℚ), (-46936539379/125394115150 : ℚ), (224867352529939380487/626970575750000000000 : ℚ)⟩,
  ⟨(11743829757/20000000000 : ℚ), (38135619/50000000 : ℚ), (-10723155718/29253482025 : ℚ), (138117368265219858589/390046427000000000000 : ℚ)⟩,
  ⟨(38135619/50000000 : ℚ), (5080815421/5000000000 : ℚ), (-45430611019/126725352100 : ℚ), (440947104131544462047/1267253521000000000000 : ℚ)⟩,
  ⟨(5080815421/5000000000 : ℚ), (11196562961/8000000000 : ℚ), (-134358575783/383407285925 : ℚ), (5210673633603560142997/15336291437000000000000 : ℚ)⟩,
  ⟨(11196562961/8000000000 : ℚ), (40359814529/20000000000 : ℚ), (-70640131568/206140118775 : ℚ), (1356032289738661880563/4122802375500000000000 : ℚ)⟩,
  ⟨(40359814529/20000000000 : ℚ), (62154567277/20000000000 : ℚ), (-91411757727/272434409350 : ℚ), (1713585077626171625117/5448688187000000000000 : ℚ)⟩,
  ⟨(62154567277/20000000000 : ℚ), (211642243847/40000000000 : ℚ), (-718920750914/2183327732325 : ℚ), (12883510859023427483069/43666554646500000000000 : ℚ)⟩,
  ⟨(211642243847/40000000000 : ℚ), (426704860859/40000000000 : ℚ), (-435693972908/1344141356325 : ℚ), (450078643637852805083/1680176695406250000000 : ℚ)⟩,
  ⟨(426704860859/40000000000 : ℚ), (303966545487/10000000000 : ℚ), (-6319828123313/19729033027225 : ℚ), (179309314875775856119159/789161321089000000000000 : ℚ)⟩,
  ⟨(303966545487/10000000000 : ℚ), (32/1 : ℚ), (-78981809338936/248368015227575 : ℚ), (1554235278388676174519573/9934720609103000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (299999/1000000 : ℚ)
  x := (179359139127/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(79428055309/1000000000000 : ℚ), (11110586791051/10000000000 : ℚ), (-88491596217021/1000000000000 : ℚ), 10⟩,
    ⟨(3991119273/50000000000 : ℚ), (293966545487/2500000000 : ℚ), (-1901957375617/200000000000 : ℚ), 7⟩,
    ⟨(20148972969/250000000000 : ℚ), (386704860859/10000000000 : ℚ), (-797489688693/250000000000 : ℚ), 5⟩,
    ⟨(81718849139/1000000000000 : ℚ), (171642243847/10000000000 : ℚ), (-72359143157/50000000000 : ℚ), 5⟩,
    ⟨(83148102631/1000000000000 : ℚ), (42154567277/5000000000 : ℚ), (-364131056113/500000000000 : ℚ), 4⟩,
    ⟨(42414363471/500000000000 : ℚ), (20359814529/5000000000 : ℚ), (-181307540659/500000000000 : ℚ), 3⟩,
    ⟨(43348068311/500000000000 : ℚ), (3196562961/2000000000 : ℚ), (-75347343307/500000000000 : ℚ), 3⟩,
    ⟨(17735713633/200000000000 : ℚ), (80815421/1250000000 : ℚ), (-16336110831/1000000000000 : ℚ), 3⟩,
    ⟨(45349918919/500000000000 : ℚ), (-11864381/12500000 : ℚ), (74525111207/1000000000000 : ℚ), 3⟩,
    ⟨(4634113469/50000000000 : ℚ), (-8256170243/5000000000 : ℚ), (27772809103/200000000000 : ℚ), 3⟩,
    ⟨(94549679061/1000000000000 : ℚ), (-5382026273/2500000000 : ℚ), (92900292447/500000000000 : ℚ), 2⟩,
    ⟨(24057575843/250000000000 : ℚ), (-25165646299/10000000000 : ℚ), (110244750629/500000000000 : ℚ), 2⟩,
    ⟨(95370661/976562500 : ℚ), (-6947686773/2500000000 : ℚ), (245934128007/1000000000000 : ℚ), 2⟩,
    ⟨(98782514127/1000000000000 : ℚ), (-2962038263/1000000000 : ℚ), (263903294261/1000000000000 : ℚ), 2⟩,
    ⟨(99556020543/1000000000000 : ℚ), (-30782252093/10000000000 : ℚ), (13448486/48828125 : ℚ), 2⟩,
    ⟨(49975175347/500000000000 : ℚ), (-15673673507/5000000000 : ℚ), (140530968911/500000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31417276619/10000000000 : ℚ), (56352212033/200000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control34.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control34.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate34
