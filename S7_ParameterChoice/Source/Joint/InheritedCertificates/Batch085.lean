import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control745
namespace DiagonalRamsey.JointInheritedCertificate745
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48753463219/200000000000 : ℚ), (4904096405371/10000000000 : ℚ), (-59920649657203/500000000000 : ℚ), 12⟩,
    ⟨(24484520363/100000000000 : ℚ), (10420237097/200000000 : ℚ), (-12908874596441/1000000000000 : ℚ), 8⟩,
    ⟨(246959556087/1000000000000 : ℚ), (172610465447/10000000000 : ℚ), (-2176812643269/500000000000 : ℚ), 7⟩,
    ⟨(125014560043/500000000000 : ℚ), (38798541991/5000000000 : ℚ), (-997877119283/500000000000 : ℚ), 6⟩,
    ⟨(63483983501/250000000000 : ℚ), (39007402587/10000000000 : ℚ), (-51228281913/50000000000 : ℚ), 5⟩,
    ⟨(258529861173/1000000000000 : ℚ), (19766262863/10000000000 : ℚ), (-532093856113/1000000000000 : ℚ), 5⟩,
    ⟨(263634359549/1000000000000 : ℚ), (4438580803/5000000000 : ℚ), (-3100945373/12500000000 : ℚ), 5⟩,
    ⟨(134526633061/500000000000 : ℚ), (2158247989/10000000000 : ℚ), (-34634262027/500000000000 : ℚ), 4⟩,
    ⟨(274578335351/1000000000000 : ℚ), (-2254181289/10000000000 : ℚ), (50588346381/1000000000000 : ℚ), 4⟩,
    ⟨(279997241923/1000000000000 : ℚ), (-5286393097/10000000000 : ℚ), (13462446751/100000000000 : ℚ), 4⟩,
    ⟨(285101740299/1000000000000 : ℚ), (-29742251/40000000 : ℚ), (48831539957/250000000000 : ℚ), 4⟩,
    ⟨(289695667469/1000000000000 : ℚ), (-4491547/5000000 : ℚ), (119895238437/500000000000 : ℚ), 4⟩,
    ⟨(293602481387/1000000000000 : ℚ), (-10093566899/10000000000 : ℚ), (136086030473/500000000000 : ℚ), 4⟩,
    ⟨(148336022693/500000000000 : ℚ), (-10864468469/10000000000 : ℚ), (294922215439/1000000000000 : ℚ), 4⟩,
    ⟨(149393198921/500000000000 : ℚ), (-2270566189/2000000000 : ℚ), (77365408099/250000000000 : ℚ), 4⟩,
    ⟨(299864285377/1000000000000 : ℚ), (-1159006553/1000000000 : ℚ), (158281298693/500000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11619411131/10000000000 : ℚ), (317442766149/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (388807281183/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control745.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control745.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate745

-- Control746
namespace DiagonalRamsey.JointInheritedCertificate746
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
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

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (378962706031/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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

-- Control747
namespace DiagonalRamsey.JointInheritedCertificate747
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44369173413/1000000000000 : ℚ), (135684494387/625000000 : ℚ), (-4834513149293/500000000000 : ℚ), 10⟩,
    ⟨(44793636701/1000000000000 : ℚ), (98969482019/5000000000 : ℚ), (-899327408669/1000000000000 : ℚ), 7⟩,
    ⟨(4557794259/100000000000 : ℚ), (41923090263/10000000000 : ℚ), (-19628333743/100000000000 : ℚ), 6⟩,
    ⟨(23301343809/500000000000 : ℚ), (-270570777/5000000000 : ℚ), (-494558051/500000000000 : ℚ), 5⟩,
    ⟨(47711863643/1000000000000 : ℚ), (-17865877843/10000000000 : ℚ), (16117579677/200000000000 : ℚ), 5⟩,
    ⟨(48736608671/1000000000000 : ℚ), (-3309930963/1250000000 : ℚ), (61045615327/500000000000 : ℚ), 5⟩,
    ⟨(77376429/1562500000 : ℚ), (-3879172373/1250000000 : ℚ), (144456171511/1000000000000 : ℚ), 5⟩,
    ⟨(6243172231/125000000000 : ℚ), (-33071112207/10000000000 : ℚ), (30917923219/200000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-1665847583/500000000 : ℚ), (77909070201/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (72828497853/125000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control747.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control747.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate747

-- Control748
namespace DiagonalRamsey.JointInheritedCertificate748
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22187004739/250000000000 : ℚ), (1086444588711/5000000000 : ℚ), (-604883514697/31250000000 : ℚ), 10⟩,
    ⟨(22399054107/250000000000 : ℚ), (39594368739/2000000000 : ℚ), (-1798062336789/1000000000000 : ℚ), 7⟩,
    ⟨(18232696199/200000000000 : ℚ), (5228652041/1250000000 : ℚ), (-390700028091/1000000000000 : ℚ), 6⟩,
    ⟨(18642242167/200000000000 : ℚ), (-32177583/500000000 : ℚ), (-891703/200000000000 : ℚ), 5⟩,
    ⟨(47713828821/500000000000 : ℚ), (-179510289/100000000 : ℚ), (6519810033/40000000000 : ℚ), 5⟩,
    ⟨(48737693741/500000000000 : ℚ), (-6635871093/2500000000 : ℚ), (61450230633/250000000000 : ℚ), 5⟩,
    ⟨(1980853041/20000000000 : ℚ), (-1942565157/625000000 : ℚ), (290370625999/1000000000000 : ℚ), 4⟩,
    ⟨(49945424761/500000000000 : ℚ), (-33110291441/10000000000 : ℚ), (155276611091/500000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-33355068687/10000000000 : ℚ), (78249913921/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (462515190381/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control748.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control748.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate748

-- Control749
namespace DiagonalRamsey.JointInheritedCertificate749
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(33339005117/250000000000 : ℚ), (137997800283/625000000 : ℚ), (-29553199550867/1000000000000 : ℚ), 10⟩,
    ⟨(1076885423/8000000000 : ℚ), (20165105121/1000000000 : ℚ), (-2750896930243/1000000000000 : ℚ), 7⟩,
    ⟨(17116122809/125000000000 : ℚ), (43029707827/10000000000 : ℚ), (-603087284843/1000000000000 : ℚ), 6⟩,
    ⟨(699789967/5000000000 : ℚ), (-90381959/10000000000 : ℚ), (-7394775823/1000000000000 : ℚ), 5⟩,
    ⟨(143236571203/1000000000000 : ℚ), (-3526673681/2000000000 : ℚ), (3760049447/15625000000 : ℚ), 5⟩,
    ⟨(146265582131/1000000000000 : ℚ), (-13161012721/5000000000 : ℚ), (22894209659/62500000000 : ℚ), 5⟩,
    ⟨(148583886729/1000000000000 : ℚ), (-15449768057/5000000000 : ℚ), (27110454927/62500000000 : ℚ), 4⟩,
    ⟨(18729818017/125000000000 : ℚ), (-8235841519/2500000000 : ℚ), (464260982771/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-8297437701/2500000000 : ℚ), (11698869001/25000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (362095420257/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control749.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control749.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate749

-- Control750
namespace DiagonalRamsey.JointInheritedCertificate750
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(81666068773/200000000000 : ℚ), (13132053027299/10000000000 : ℚ), (-33554970427039/62500000000 : ℚ), 13⟩,
    ⟨(409012110877/1000000000000 : ℚ), (1439899402947/10000000000 : ℚ), (-59306681211177/1000000000000 : ℚ), 10⟩,
    ⟨(51296134889/125000000000 : ℚ), (506839933521/10000000000 : ℚ), (-5275229376981/250000000000 : ℚ), 8⟩,
    ⟨(16495527209/40000000000 : ℚ), (50166071621/2000000000 : ℚ), (-105749221253/10000000000 : ℚ), 7⟩,
    ⟨(25940623073/62500000000 : ℚ), (1141217813/78125000 : ℚ), (-312166550229/50000000000 : ℚ), 7⟩,
    ⟨(209164405729/500000000000 : ℚ), (9343048947/1000000000 : ℚ), (-2025394980879/500000000000 : ℚ), 6⟩,
    ⟨(422193130051/1000000000000 : ℚ), (7926505977/1250000000 : ℚ), (-1394932786239/500000000000 : ℚ), 6⟩,
    ⟨(53325713681/125000000000 : ℚ), (11191262763/2500000000 : ℚ), (-1998870910567/1000000000000 : ℚ), 5⟩,
    ⟨(26970253381/62500000000 : ℚ), (8110427609/2500000000 : ℚ), (-1470364414673/1000000000000 : ℚ), 5⟩,
    ⟨(436900797647/1000000000000 : ℚ), (1494163501/625000000 : ℚ), (-21998462457/20000000000 : ℚ), 5⟩,
    ⟨(442684159123/1000000000000 : ℚ), (8887080361/5000000000 : ℚ), (-830334443113/1000000000000 : ℚ), 5⟩,
    ⟨(448818441591/1000000000000 : ℚ), (13235951199/10000000000 : ℚ), (-314060996913/500000000000 : ℚ), 4⟩,
    ⟨(113811142139/250000000000 : ℚ), (9795103577/10000000000 : ℚ), (-59080156021/125000000000 : ℚ), 4⟩,
    ⟨(57737581613/125000000000 : ℚ), (7132930811/10000000000 : ℚ), (-350602175653/1000000000000 : ℚ), 4⟩,
    ⟨(58590324113/125000000000 : ℚ), (5037689579/10000000000 : ℚ), (-253138056471/1000000000000 : ℚ), 4⟩,
    ⟨(59455586193/125000000000 : ℚ), (3364451989/10000000000 : ℚ), (-10884530851/62500000000 : ℚ), 4⟩,
    ⟨(482600279249/1000000000000 : ℚ), (402297851/2000000000 : ℚ), (-54672605361/500000000000 : ℚ), 4⟩,
    ⟨(489522375889/1000000000000 : ℚ), (452920519/5000000000 : ℚ), (-55615869923/1000000000000 : ℚ), 4⟩,
    ⟨(496344315889/1000000000000 : ℚ), (-2896509/5000000000 : ℚ), (-10687163331/1000000000000 : ℚ), 4⟩,
    ⟨(503000400237/1000000000000 : ℚ), (-152593487/2000000000 : ℚ), (3392542471/125000000000 : ℚ), 3⟩,
    ⟨(509426527203/1000000000000 : ℚ), (-697713903/5000000000 : ℚ), (59151697517/1000000000000 : ℚ), 3⟩,
    ⟨(51556080967/100000000000 : ℚ), (-1925790143/10000000000 : ℚ), (17265823901/200000000000 : ℚ), 3⟩,
    ⟨(260672085573/500000000000 : ℚ), (-94856033/400000000 : ℚ), (109429592297/1000000000000 : ℚ), 3⟩,
    ⟨(526720914697/1000000000000 : ℚ), (-686412749/2500000000 : ℚ), (32259981527/250000000000 : ℚ), 3⟩,
    ⟨(106327851869/200000000000 : ℚ), (-1529460219/5000000000 : ℚ), (18202057751/125000000000 : ℚ), 3⟩,
    ⟨(268025919371/500000000000 : ℚ), (-829816281/2500000000 : ℚ), (79757085639/500000000000 : ℚ), 3⟩,
    ⟨(107983231467/200000000000 : ℚ), (-1766462041/5000000000 : ℚ), (171008273253/1000000000000 : ℚ), 3⟩,
    ⟨(4345559997/8000000000 : ℚ), (-115771763/312500000 : ℚ), (45077617989/250000000000 : ℚ), 3⟩,
    ⟨(68232098571/125000000000 : ℚ), (-3838222861/10000000000 : ℚ), (93790609713/500000000000 : ℚ), 3⟩,
    ⟨(547875889681/1000000000000 : ℚ), (-1968097607/5000000000 : ℚ), (1929389509/10000000000 : ℚ), 3⟩,
    ⟨(137308214479/250000000000 : ℚ), (-1000127363/2500000000 : ℚ), (19646692299/100000000000 : ℚ), 3⟩,
    ⟨(17184832029/31250000000 : ℚ), (-252023313/625000000 : ℚ), (49554514671/250000000000 : ℚ), 3⟩,
    ⟨(11/20 : ℚ), (-4036342351/10000000000 : ℚ), (39687271111/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (93655711977/250000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control750.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control750.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate750

-- Control751
namespace DiagonalRamsey.JointInheritedCertificate751
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(451352225839/1000000000000 : ℚ), (6917752549041/5000000000 : ℚ), (-312599256798423/500000000000 : ℚ), 13⟩,
    ⟨(452067574147/1000000000000 : ℚ), (1517714073379/10000000000 : ℚ), (-69070069991381/1000000000000 : ℚ), 10⟩,
    ⟨(7085802837/15625000000 : ℚ), (534605933709/10000000000 : ℚ), (-24579950264713/1000000000000 : ℚ), 8⟩,
    ⟨(455609936059/1000000000000 : ℚ), (26481037637/1000000000 : ℚ), (-3080666938159/250000000000 : ℚ), 7⟩,
    ⟨(229201417391/500000000000 : ℚ), (38596481497/2500000000 : ℚ), (-7278744660349/1000000000000 : ℚ), 7⟩,
    ⟨(230921590297/500000000000 : ℚ), (19774771949/2000000000 : ℚ), (-4725763709393/1000000000000 : ℚ), 6⟩,
    ⟨(93179568217/200000000000 : ℚ), (67210200957/10000000000 : ℚ), (-3257680786387/1000000000000 : ℚ), 6⟩,
    ⟨(470527767659/1000000000000 : ℚ), (23767277333/5000000000 : ℚ), (-1168432698209/500000000000 : ℚ), 5⟩,
    ⟨(475688371591/1000000000000 : ℚ), (1726365203/500000000 : ℚ), (-1721752793837/1000000000000 : ℚ), 5⟩,
    ⟨(120332488361/250000000000 : ℚ), (25516161949/10000000000 : ℚ), (-645370992847/500000000000 : ℚ), 5⟩,
    ⟨(487398181701/1000000000000 : ℚ), (9520242371/5000000000 : ℚ), (-195441520619/200000000000 : ℚ), 5⟩,
    ⟨(493834616007/1000000000000 : ℚ), (2849586393/2000000000 : ℚ), (-742164451799/1000000000000 : ℚ), 4⟩,
    ⟨(500577269981/1000000000000 : ℚ), (10614477589/10000000000 : ℚ), (-140392367191/250000000000 : ℚ), 4⟩,
    ⟨(507561208179/1000000000000 : ℚ), (3901961229/5000000000 : ℚ), (-83988673011/200000000000 : ℚ), 4⟩,
    ⟨(257359585729/500000000000 : ℚ), (2796400907/5000000000 : ℚ), (-306957266593/1000000000000 : ℚ), 4⟩,
    ⟨(6524777809/12500000000 : ℚ), (3828092133/10000000000 : ℚ), (-13469238427/62500000000 : ℚ), 4⟩,
    ⟨(52928042079/100000000000 : ℚ), (300289899/1250000000 : ℚ), (-35145679721/250000000000 : ℚ), 4⟩,
    ⟨(134135868513/250000000000 : ℚ), (1238347117/10000000000 : ℚ), (-39283263537/500000000000 : ℚ), 4⟩,
    ⟨(543701437331/1000000000000 : ℚ), (17486061/625000000 : ℚ), (-134008787/5000000000 : ℚ), 3⟩,
    ⟨(550685375529/1000000000000 : ℚ), (-64410943/1250000000 : ℚ), (1043532499/62500000000 : ℚ), 3⟩,
    ⟨(557428029503/1000000000000 : ℚ), (-589195059/5000000000 : ℚ), (26715500923/500000000000 : ℚ), 3⟩,
    ⟨(563864463809/1000000000000 : ℚ), (-1733545959/10000000000 : ℚ), (422759593/5000000000 : ℚ), 3⟩,
    ⟨(284966346033/500000000000 : ℚ), (-2199202079/10000000000 : ℚ), (110947309649/1000000000000 : ℚ), 3⟩,
    ⟨(575574273919/1000000000000 : ℚ), (-1294811171/5000000000 : ℚ), (66653495631/500000000000 : ℚ), 3⟩,
    ⟨(580734877851/1000000000000 : ℚ), (-728970481/2500000000 : ℚ), (152168657953/1000000000000 : ℚ), 3⟩,
    ⟨(73170600553/125000000000 : ℚ), (-637318319/2000000000 : ℚ), (167951627587/1000000000000 : ℚ), 3⟩,
    ⟨(147354866229/250000000000 : ℚ), (-1704215839/5000000000 : ℚ), (180981884567/1000000000000 : ℚ), 3⟩,
    ⟨(74107476341/125000000000 : ℚ), (-35865493/100000000 : ℚ), (191510869161/1000000000000 : ℚ), 3⟩,
    ⟨(595652709451/1000000000000 : ℚ), (-372485519/1000000000 : ℚ), (6241551781/31250000000 : ℚ), 3⟩,
    ⟨(597771263941/1000000000000 : ℚ), (-3826244629/10000000000 : ℚ), (205779634277/1000000000000 : ℚ), 3⟩,
    ⟨(599195071363/1000000000000 : ℚ), (-121648723/312500000 : ℚ), (209760400361/1000000000000 : ℚ), 3⟩,
    ⟨(599910419671/1000000000000 : ℚ), (-1962849941/5000000000 : ℚ), (211735369997/1000000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-491225351/1250000000 : ℚ), (211981527151/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (337241264671/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control751.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control751.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate751

-- Control752
namespace DiagonalRamsey.JointInheritedCertificate752
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12111039397/40000000000 : ℚ), (11765552071799/10000000000 : ℚ), (-356716836187339/1000000000000 : ℚ), 13⟩,
    ⟨(9479378451/31250000000 : ℚ), (322191310173/2500000000 : ℚ), (-3939610189207/100000000000 : ℚ), 10⟩,
    ⟨(9514466519/31250000000 : ℚ), (452929936371/10000000000 : ℚ), (-14010363902919/1000000000000 : ℚ), 8⟩,
    ⟨(3061336261/10000000000 : ℚ), (111850032647/5000000000 : ℚ), (-7016233756887/1000000000000 : ℚ), 7⟩,
    ⟨(308336113179/1000000000000 : ℚ), (32489691731/2500000000 : ℚ), (-1034469847933/250000000000 : ℚ), 7⟩,
    ⟨(31104917869/100000000000 : ℚ), (82880566611/10000000000 : ℚ), (-134037193291/50000000000 : ℚ), 6⟩,
    ⟨(314246694329/1000000000000 : ℚ), (7007030607/1250000000 : ℚ), (-1842555949891/1000000000000 : ℚ), 6⟩,
    ⟨(317897866273/1000000000000 : ℚ), (39405396699/10000000000 : ℚ), (-1316551979007/1000000000000 : ℚ), 5⟩,
    ⟨(321967531739/1000000000000 : ℚ), (28408325523/10000000000 : ℚ), (-964900664567/1000000000000 : ℚ), 5⟩,
    ⟨(40802062203/125000000000 : ℚ), (10397779603/5000000000 : ℚ), (-718221352177/1000000000000 : ℚ), 5⟩,
    ⟨(82800479489/250000000000 : ℚ), (7663648709/5000000000 : ℚ), (-107700520717/200000000000 : ℚ), 5⟩,
    ⟨(336277706519/1000000000000 : ℚ), (2820139793/2500000000 : ℚ), (-16140198807/40000000000 : ℚ), 4⟩,
    ⟨(341594980697/1000000000000 : ℚ), (8211226707/10000000000 : ℚ), (-74878924051/250000000000 : ℚ), 4⟩,
    ⟨(347102532231/1000000000000 : ℚ), (2917335007/5000000000 : ℚ), (-217709350679/1000000000000 : ℚ), 4⟩,
    ⟨(352747320389/1000000000000 : ℚ), (3961951293/10000000000 : ℚ), (-15220023351/100000000000 : ℚ), 4⟩,
    ⟨(44809372847/125000000000 : ℚ), (2463901449/10000000000 : ℚ), (-98944055593/1000000000000 : ℚ), 4⟩,
    ⟨(364230358873/1000000000000 : ℚ), (62499057/500000000 : ℚ), (-55090611883/1000000000000 : ℚ), 4⟩,
    ⟨(18497901063/50000000000 : ℚ), (63841361/2500000000 : ℚ), (-580862603/31250000000 : ℚ), 4⟩,
    ⟨(187801404709/500000000000 : ℚ), (-567207391/10000000000 : ℚ), (12069873371/1000000000000 : ℚ), 4⟩,
    ⟨(47638795119/125000000000 : ℚ), (-1252728281/10000000000 : ℚ), (19001158667/500000000000 : ℚ), 4⟩,
    ⟨(38642763513/100000000000 : ℚ), (-114215019/625000000 : ℚ), (60054592077/1000000000000 : ℚ), 3⟩,
    ⟨(391503423693/1000000000000 : ℚ), (-577809121/2500000000 : ℚ), (4929385993/62500000000 : ℚ), 3⟩,
    ⟨(15851553761/40000000000 : ℚ), (-543864897/2000000000 : ℚ), (47471453761/500000000000 : ℚ), 3⟩,
    ⟨(40073780991/100000000000 : ℚ), (-3063403139/10000000000 : ℚ), (108653737717/1000000000000 : ℚ), 3⟩,
    ⟨(25300467211/62500000000 : ℚ), (-1676253677/5000000000 : ℚ), (120297291861/1000000000000 : ℚ), 3⟩,
    ⟨(408458647319/1000000000000 : ℚ), (-898405861/2500000000 : ℚ), (32525344049/250000000000 : ℚ), 3⟩,
    ⟨(205828081479/500000000000 : ℚ), (-3792142509/10000000000 : ℚ), (432004687/3125000000 : ℚ), 3⟩,
    ⟨(414369228469/1000000000000 : ℚ), (-1976098649/5000000000 : ℚ), (144851799669/1000000000000 : ℚ), 3⟩,
    ⟨(416571715549/1000000000000 : ℚ), (-4076913357/10000000000 : ℚ), (4688540659/31250000000 : ℚ), 3⟩,
    ⟨(418242413041/1000000000000 : ℚ), (-416859543/1000000000 : ℚ), (153860141509/1000000000000 : ℚ), 3⟩,
    ⟨(419365231217/1000000000000 : ℚ), (-2114431691/5000000000 : ℚ), (78192088231/500000000000 : ℚ), 3⟩,
    ⟨(104982339181/250000000000 : ℚ), (-2129373591/5000000000 : ℚ), (157638240797/1000000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-4262471071/10000000000 : ℚ), (39448657743/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (466284340221/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control752.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control752.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate752
