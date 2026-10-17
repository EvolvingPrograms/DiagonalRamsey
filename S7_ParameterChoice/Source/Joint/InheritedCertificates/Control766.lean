import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate766
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (31211865730551/163295298153100 : ℚ), (182655971387/500000000 : ℚ), (-218686497123/3125000000 : ℚ)⟩,
  ⟨(31211865730551/163295298153100 : ℚ), (499448817669/2590386262820 : ℚ), (193606732339/5000000000 : ℚ), (-3777973809129/500000000000 : ℚ)⟩,
  ⟨(499448817669/2590386262820 : ℚ), (275352722291/1408134526440 : ℚ), (32043709599/2500000000 : ℚ), (-80045607549/31250000000 : ℚ)⟩,
  ⟨(275352722291/1408134526440 : ℚ), (141838748911/711936488500 : ℚ), (28884056037/5000000000 : ℚ), (-1184695830113/1000000000000 : ℚ)⟩,
  ⟨(141838748911/711936488500 : ℚ), (57594651133/282712224360 : ℚ), (14645326267/5000000000 : ℚ), (-617340834469/1000000000000 : ℚ)⟩,
  ⟨(57594651133/282712224360 : ℚ), (166344737929/796484047600 : ℚ), (3788760329/2500000000 : ℚ), (-82341894701/250000000000 : ℚ)⟩,
  ⟨(166344737929/796484047600 : ℚ), (52482226433/244771207250 : ℚ), (179755021/250000000 : ℚ), (-1304182727/8000000000 : ℚ)⟩,
  ⟨(52482226433/244771207250 : ℚ), (70565555623/320459075100 : ℚ), (458955339/2000000000 : ℚ), (-58058388009/1000000000000 : ℚ)⟩,
  ⟨(70565555623/320459075100 : ℚ), (4136933386/18305832325 : ℚ), (-113726757/1250000000 : ℚ), (6253583807/500000000000 : ℚ)⟩,
  ⟨(4136933386/18305832325 : ℚ), (35984591203/155403721200 : ℚ), (-621302787/2000000000 : ℚ), (31075184123/500000000000 : ℚ)⟩,
  ⟨(35984591203/155403721200 : ℚ), (26445962467/111735409600 : ℚ), (-4660551147/10000000000 : ℚ), (98134959449/1000000000000 : ℚ)⟩,
  ⟨(26445962467/111735409600 : ℚ), (429192151/1779570120 : ℚ), (-5777905243/10000000000 : ℚ), (31145230479/250000000000 : ℚ)⟩,
  ⟨(429192151/1779570120 : ℚ), (3399572381/13883514375 : ℚ), (-6578711797/10000000000 : ℚ), (143894568711/1000000000000 : ℚ)⟩,
  ⟨(3399572381/13883514375 : ℚ), (870324989/3515010440 : ℚ), (-1783513093/2500000000 : ℚ), (31498571647/200000000000 : ℚ)⟩,
  ⟨(870324989/3515010440 : ℚ), (1063532421/4266275500 : ℚ), (-935694177/1250000000 : ℚ), (265913773/1600000000 : ℚ)⟩,
  ⟨(1063532421/4266275500 : ℚ), (527458617/2110436600 : ℚ), (-1914051109/2500000000 : ℚ), (170450237809/1000000000000 : ℚ)⟩,
  ⟨(527458617/2110436600 : ℚ), (1/4 : ℚ), (-3838654401/5000000000 : ℚ), (85488848213/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1161345599/5000000000 : ℚ), (-1/4 : ℚ), (28630622047/125000000000 : ℚ)⟩,
  ⟨(1161345599/5000000000 : ℚ), (585948891/2500000000 : ℚ), (-527458617/2110436600 : ℚ), (2416749685113174541/10552183000000000000 : ℚ)⟩,
  ⟨(585948891/2500000000 : ℚ), (314305823/1250000000 : ℚ), (-1063532421/4266275500 : ℚ), (9764579305847084239/42662755000000000000 : ℚ)⟩,
  ⟨(314305823/1250000000 : ℚ), (716486907/2500000000 : ℚ), (-870324989/3515010440 : ℚ), (4015098123514162913/17575052200000000000 : ℚ)⟩,
  ⟨(716486907/2500000000 : ℚ), (3421288203/10000000000 : ℚ), (-3399572381/13883514375 : ℚ), (42144720018927811399/185113525000000000000 : ℚ)⟩,
  ⟨(3421288203/10000000000 : ℚ), (4222094757/10000000000 : ℚ), (-429192151/1779570120 : ℚ), (6715157986867199677/29659502000000000000 : ℚ)⟩,
  ⟨(4222094757/10000000000 : ℚ), (5339448853/10000000000 : ℚ), (-26445962467/111735409600 : ℚ), (50171672572407650691/223470819200000000000 : ℚ)⟩,
  ⟨(5339448853/10000000000 : ℚ), (1378697213/2000000000 : ℚ), (-35984591203/155403721200 : ℚ), (344643263006389256347/1554037212000000000000 : ℚ)⟩,
  ⟨(1378697213/2000000000 : ℚ), (1136273243/1250000000 : ℚ), (-4136933386/18305832325 : ℚ), (79790069697414139219/366116646500000000000 : ℚ)⟩,
  ⟨(1136273243/1250000000 : ℚ), (2458955339/2000000000 : ℚ), (-70565555623/320459075100 : ℚ), (340767187755887950613/1602295375500000000000 : ℚ)⟩,
  ⟨(2458955339/2000000000 : ℚ), (429755021/250000000 : ℚ), (-52482226433/244771207250 : ℚ), (201258814884257136113/979084829000000000000 : ℚ)⟩,
  ⟨(429755021/250000000 : ℚ), (6288760329/2500000000 : ℚ), (-166344737929/796484047600 : ℚ), (78052426608148420193/398242023800000000000 : ℚ)⟩,
  ⟨(6288760329/2500000000 : ℚ), (19645326267/5000000000 : ℚ), (-57594651133/282712224360 : ℚ), (215680591864065385989/1177967601500000000000 : ℚ)⟩,
  ⟨(19645326267/5000000000 : ℚ), (33884056037/5000000000 : ℚ), (-141838748911/711936488500 : ℚ), (1177862340324175669409/7119364885000000000000 : ℚ)⟩,
  ⟨(33884056037/5000000000 : ℚ), (34543709599/2500000000 : ℚ), (-275352722291/1408134526440 : ℚ), (2472528908726708218321/17601681580500000000000 : ℚ)⟩,
  ⟨(34543709599/2500000000 : ℚ), (32/1 : ℚ), (-499448817669/2590386262820 : ℚ), (3324457708004984512383/32379828285250000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (51022577437/100000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(11933048423/62500000000 : ℚ), (182655971387/500000000 : ℚ), (-218686497123/3125000000 : ℚ), 11⟩,
    ⟨(38412214489/200000000000 : ℚ), (193606732339/5000000000 : ℚ), (-3777973809129/500000000000 : ℚ), 8⟩,
    ⟨(97141077117/500000000000 : ℚ), (32043709599/2500000000 : ℚ), (-80045607549/31250000000 : ℚ), 7⟩,
    ⟨(24688333151/125000000000 : ℚ), (28884056037/5000000000 : ℚ), (-1184695830113/1000000000000 : ℚ), 6⟩,
    ⟨(100805344609/500000000000 : ℚ), (14645326267/5000000000 : ℚ), (-617340834469/1000000000000 : ℚ), 5⟩,
    ⟨(206436510923/1000000000000 : ℚ), (3788760329/2500000000 : ℚ), (-82341894701/250000000000 : ℚ), 5⟩,
    ⟨(105899338351/500000000000 : ℚ), (179755021/250000000 : ℚ), (-1304182727/8000000000 : ℚ), 4⟩,
    ⟨(21749112153/100000000000 : ℚ), (458955339/2000000000 : ℚ), (-58058388009/1000000000000 : ℚ), 4⟩,
    ⟨(44659017589/200000000000 : ℚ), (-113726757/1250000000 : ℚ), (6253583807/500000000000 : ℚ), 4⟩,
    ⟨(228987532773/1000000000000 : ℚ), (-621302787/2000000000 : ℚ), (31075184123/500000000000 : ℚ), 4⟩,
    ⟨(29293712319/125000000000 : ℚ), (-4660551147/10000000000 : ℚ), (98134959449/1000000000000 : ℚ), 4⟩,
    ⟨(239175520257/1000000000000 : ℚ), (-5777905243/10000000000 : ℚ), (31145230479/250000000000 : ℚ), 4⟩,
    ⟨(243279544267/1000000000000 : ℚ), (-6578711797/10000000000 : ℚ), (143894568711/1000000000000 : ℚ), 4⟩,
    ⟨(246504055241/1000000000000 : ℚ), (-1783513093/2500000000 : ℚ), (31498571647/200000000000 : ℚ), 4⟩,
    ⟨(24872513703/100000000000 : ℚ), (-935694177/1250000000 : ℚ), (265913773/1600000000 : ℚ), 4⟩,
    ⟨(249857434707/1000000000000 : ℚ), (-1914051109/2500000000 : ℚ), (170450237809/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-3838654401/5000000000 : ℚ), (85488848213/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control766.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control766.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate766
