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

-- Control639
namespace DiagonalRamsey.JointInheritedCertificate639
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(181866261317/1000000000000 : ℚ), (794728718057/2000000000 : ℚ), (-14511373354341/200000000000 : ℚ), 11⟩,
    ⟨(91586136193/500000000000 : ℚ), (13134458681/312500000 : ℚ), (-7848037534081/1000000000000 : ℚ), 8⟩,
    ⟨(46433526313/250000000000 : ℚ), (138971015399/10000000000 : ℚ), (-333822021229/125000000000 : ℚ), 6⟩,
    ⟨(94726655057/500000000000 : ℚ), (62717545213/10000000000 : ℚ), (-38849847181/31250000000 : ℚ), 5⟩,
    ⟨(97093480007/500000000000 : ℚ), (31981442401/10000000000 : ℚ), (-654786035631/1000000000000 : ℚ), 5⟩,
    ⟨(199753143443/1000000000000 : ℚ), (8390903933/5000000000 : ℚ), (-355930404041/1000000000000 : ℚ), 4⟩,
    ⟨(51484488773/250000000000 : ℚ), (8249113211/10000000000 : ℚ), (-11444661007/62500000000 : ℚ), 4⟩,
    ⟨(106251858059/500000000000 : ℚ), (3022465717/10000000000 : ℚ), (-73902678471/1000000000000 : ℚ), 4⟩,
    ⟨(219198108007/1000000000000 : ℚ), (-24301439/625000000 : ℚ), (-86405039/250000000000 : ℚ), 3⟩,
    ⟨(225763869033/1000000000000 : ℚ), (-340161173/1250000000 : ℚ), (25753146709/500000000000 : ℚ), 3⟩,
    ⟨(115974340341/500000000000 : ℚ), (-1091933161/2500000000 : ℚ), (22291132389/250000000000 : ℚ), 3⟩,
    ⟨(23751486411/100000000000 : ℚ), (-5549162631/10000000000 : ℚ), (116885602337/1000000000000 : ℚ), 3⟩,
    ⟨(242248514011/1000000000000 : ℚ), (-3197164231/5000000000 : ℚ), (137154640219/1000000000000 : ℚ), 3⟩,
    ⟨(245967718873/1000000000000 : ℚ), (-1744864413/2500000000 : ℚ), (18929526537/125000000000 : ℚ), 3⟩,
    ⟨(124264775869/500000000000 : ℚ), (-3674655567/5000000000 : ℚ), (802901297/5000000000 : ℚ), 3⟩,
    ⟨(31229445351/125000000000 : ℚ), (-7528710879/10000000000 : ℚ), (165050524407/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-1510177863/2000000000 : ℚ), (20700600357/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (439704573593/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control639.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control639.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate639

-- Control640
namespace DiagonalRamsey.JointInheritedCertificate640
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1373412017/6250000000 : ℚ), (16442074759753/10000000000 : ℚ), (-361768950023103/1000000000000 : ℚ), 13⟩,
    ⟨(13758258447/62500000000 : ℚ), (1801034473451/10000000000 : ℚ), (-39933973555229/1000000000000 : ℚ), 10⟩,
    ⟨(11045042029/50000000000 : ℚ), (158197151501/2500000000 : ℚ), (-3546745905407/250000000000 : ℚ), 8⟩,
    ⟨(4440892719/20000000000 : ℚ), (312304999041/10000000000 : ℚ), (-3546591029227/500000000000 : ℚ), 7⟩,
    ⟨(223552505887/1000000000000 : ℚ), (90596335543/5000000000 : ℚ), (-130426567957/31250000000 : ℚ), 6⟩,
    ⟨(11270496439/50000000000 : ℚ), (11530935407/1000000000 : ℚ), (-539099850303/200000000000 : ℚ), 6⟩,
    ⟨(227599016631/1000000000000 : ℚ), (77742671171/10000000000 : ℚ), (-369009232813/200000000000 : ℚ), 5⟩,
    ⟨(115049343663/500000000000 : ℚ), (27200911607/5000000000 : ℚ), (-327791200657/250000000000 : ℚ), 5⟩,
    ⟨(29110608459/125000000000 : ℚ), (38968312043/10000000000 : ℚ), (-119258138583/125000000000 : ℚ), 5⟩,
    ⟨(235930725227/1000000000000 : ℚ), (14134532971/5000000000 : ℚ), (-703381948963/1000000000000 : ℚ), 5⟩,
    ⟨(239206926719/1000000000000 : ℚ), (5142613019/2500000000 : ℚ), (-20822649247/40000000000 : ℚ), 4⟩,
    ⟨(242681920537/1000000000000 : ℚ), (14861410399/10000000000 : ℚ), (-383065835127/1000000000000 : ℚ), 4⟩,
    ⟨(246322240589/1000000000000 : ℚ), (328775471/312500000 : ℚ), (-138488635907/500000000000 : ℚ), 4⟩,
    ⟨(50018565721/200000000000 : ℚ), (7150586147/10000000000 : ℚ), (-48338637483/250000000000 : ℚ), 4⟩,
    ⟨(253957371761/1000000000000 : ℚ), (4486494113/10000000000 : ℚ), (-63116932447/500000000000 : ℚ), 4⟩,
    ⟨(32234831549/125000000000 : ℚ), (293490957/1250000000 : ℚ), (-71519620577/1000000000000 : ℚ), 4⟩,
    ⟨(32727363303/125000000000 : ℚ), (608330427/10000000000 : ℚ), (-13163919049/500000000000 : ℚ), 3⟩,
    ⟨(16608761691/62500000000 : ℚ), (-822864749/10000000000 : ℚ), (11415735543/1000000000000 : ℚ), 3⟩,
    ⟨(269604730211/1000000000000 : ℚ), (-2011640533/10000000000 : ℚ), (43229798711/1000000000000 : ℚ), 3⟩,
    ⟨(273375318227/1000000000000 : ℚ), (-601360413/2000000000 : ℚ), (70242921621/1000000000000 : ℚ), 3⟩,
    ⟨(6925390957/25000000000 : ℚ), (-3844909539/10000000000 : ℚ), (186607981/2000000000 : ℚ), 3⟩,
    ⟨(280490632097/1000000000000 : ℚ), (-4553636933/10000000000 : ℚ), (11305765389/100000000000 : ℚ), 3⟩,
    ⟨(283766833589/1000000000000 : ℚ), (-2577052521/5000000000 : ℚ), (129996946109/1000000000000 : ℚ), 3⟩,
    ⟨(57362538229/200000000000 : ℚ), (-1415632817/2500000000 : ℚ), (72250351213/500000000000 : ℚ), 3⟩,
    ⟨(28959887149/100000000000 : ℚ), (-95178359/156250000 : ℚ), (156860631733/1000000000000 : ℚ), 3⟩,
    ⟨(146049271093/500000000000 : ℚ), (-3225200549/5000000000 : ℚ), (167301219643/1000000000000 : ℚ), 3⟩,
    ⟨(73571907509/250000000000 : ℚ), (-105420571/156250000 : ℚ), (175994559377/1000000000000 : ℚ), 3⟩,
    ⟨(296145052929/1000000000000 : ℚ), (-1746660749/2500000000 : ℚ), (183071514997/1000000000000 : ℚ), 3⟩,
    ⟨(148826461433/500000000000 : ℚ), (-1793467309/2500000000 : ℚ), (37726032611/200000000000 : ℚ), 3⟩,
    ⟨(74699179559/250000000000 : ℚ), (-7311752433/10000000000 : ℚ), (24092768649/125000000000 : ℚ), 3⟩,
    ⟨(18722838979/62500000000 : ℚ), (-1850627119/2500000000 : ℚ), (97728694287/500000000000 : ℚ), 3⟩,
    ⟨(2343372157/7812500000 : ℚ), (-3723772423/5000000000 : ℚ), (19680739099/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-298126343/400000000 : ℚ), (1969757893/10000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (401369654423/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control640.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control640.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate640

-- Control641
namespace DiagonalRamsey.JointInheritedCertificate641
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51739572467/200000000000 : ℚ), (2109856314799/5000000000 : ℚ), (-27394396823229/250000000000 : ℚ), 11⟩,
    ⟨(26044797329/100000000000 : ℚ), (447149075631/10000000000 : ℚ), (-11860454256733/1000000000000 : ℚ), 8⟩,
    ⟨(32985117427/125000000000 : ℚ), (29659375487/2000000000 : ℚ), (-252649448161/62500000000 : ℚ), 6⟩,
    ⟨(33608104219/125000000000 : ℚ), (33618655591/5000000000 : ℚ), (-1887578057013/1000000000000 : ℚ), 5⟩,
    ⟨(8600254001/31250000000 : ℚ), (34545434767/10000000000 : ℚ), (-999908562941/1000000000000 : ℚ), 5⟩,
    ⟨(56533410603/200000000000 : ℚ), (1837732579/1000000000 : ℚ), (-274838673621/500000000000 : ℚ), 4⟩,
    ⟨(290954966397/1000000000000 : ℚ), (4653831257/5000000000 : ℚ), (-144964601699/500000000000 : ℚ), 4⟩,
    ⟨(59950673663/200000000000 : ℚ), (1881039891/5000000000 : ℚ), (-126338772399/1000000000000 : ℚ), 4⟩,
    ⟨(77181035279/250000000000 : ℚ), (153206311/10000000000 : ℚ), (-16651415513/1000000000000 : ℚ), 3⟩,
    ⟨(158761271517/500000000000 : ℚ), (-144045321/625000000 : ℚ), (30126722113/500000000000 : ℚ), 3⟩,
    ⟨(10181576763/31250000000 : ℚ), (-403183981/1000000000 : ℚ), (28944484823/250000000000 : ℚ), 3⟩,
    ⟨(333269381399/1000000000000 : ℚ), (-5265287211/10000000000 : ℚ), (39102356923/250000000000 : ℚ), 3⟩,
    ⟨(339612675679/1000000000000 : ℚ), (-153593421/250000000 : ℚ), (23244624927/125000000000 : ℚ), 3⟩,
    ⟨(68919314003/200000000000 : ℚ), (-1349922779/2000000000 : ℚ), (206681604543/1000000000000 : ℚ), 3⟩,
    ⟨(174014768071/500000000000 : ℚ), (-3565749231/5000000000 : ℚ), (13744125469/62500000000 : ℚ), 3⟩,
    ⟨(43722455887/125000000000 : ℚ), (-3658206049/5000000000 : ℚ), (28294704751/125000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1834814291/2500000000 : ℚ), (227156963441/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (36349063519/100000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control641.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control641.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate641

-- Control642
namespace DiagonalRamsey.JointInheritedCertificate642
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141064153697/500000000000 : ℚ), (4327880721977/2500000000 : ℚ), (-489001391041179/1000000000000 : ℚ), 13⟩,
    ⟨(4415614099/15625000000 : ℚ), (1897203432591/10000000000 : ℚ), (-53986163298217/1000000000000 : ℚ), 10⟩,
    ⟨(283536756281/1000000000000 : ℚ), (166774746223/2500000000 : ℚ), (-9592393968629/500000000000 : ℚ), 8⟩,
    ⟨(56986328207/200000000000 : ℚ), (329577422133/10000000000 : ℚ), (-1919290892627/200000000000 : ℚ), 7⟩,
    ⟨(35846315387/125000000000 : ℚ), (191458819881/10000000000 : ℚ), (-706301921587/125000000000 : ℚ), 6⟩,
    ⟨(289035693023/1000000000000 : ℚ), (3050860863/250000000 : ℚ), (-3652700859407/1000000000000 : ℚ), 6⟩,
    ⟨(291705335993/1000000000000 : ℚ), (2576147433/312500000 : ℚ), (-500695389177/200000000000 : ℚ), 5⟩,
    ⟨(294753741883/1000000000000 : ℚ), (57827187607/10000000000 : ℚ), (-356440293157/200000000000 : ℚ), 5⟩,
    ⟨(3726894411/12500000000 : ℚ), (41551319457/10000000000 : ℚ), (-1299921974807/1000000000000 : ℚ), 5⟩,
    ⟨(60373209241/200000000000 : ℚ), (1210672403/400000000 : ℚ), (-961525318849/1000000000000 : ℚ), 4⟩,
    ⟨(152930724629/500000000000 : ℚ), (22147227871/10000000000 : ℚ), (-714902735963/1000000000000 : ℚ), 4⟩,
    ⟨(155049642061/500000000000 : ℚ), (2015892517/1250000000 : ℚ), (-529567644041/1000000000000 : ℚ), 4⟩,
    ⟨(78634684533/250000000000 : ℚ), (2310364097/2000000000 : ℚ), (-386723081127/1000000000000 : ℚ), 4⟩,
    ⟨(319137056919/1000000000000 : ℚ), (8001493797/10000000000 : ℚ), (-274272501759/1000000000000 : ℚ), 4⟩,
    ⟨(161924978079/500000000000 : ℚ), (2598698287/5000000000 : ℚ), (-46037453483/250000000000 : ℚ), 4⟩,
    ⟨(164316024027/500000000000 : ℚ), (589774003/2000000000 : ℚ), (-55406834869/500000000000 : ℚ), 4⟩,
    ⟨(20839829903/62500000000 : ℚ), (1122221049/10000000000 : ℚ), (-25180004721/500000000000 : ℚ), 3⟩,
    ⟨(42277421293/125000000000 : ℚ), (-189153629/5000000000 : ℚ), (21108633/1000000000000 : ℚ), 3⟩,
    ⟨(342932269583/1000000000000 : ℚ), (-1622549237/10000000000 : ℚ), (42388992993/1000000000000 : ℚ), 3⟩,
    ⟨(34753058837/100000000000 : ℚ), (-133110963/500000000 : ℚ), (4892239699/62500000000 : ℚ), 3⟩,
    ⟨(17598502119/50000000000 : ℚ), (-3536107883/10000000000 : ℚ), (13604486941/125000000000 : ℚ), 3⟩,
    ⟨(89051969311/250000000000 : ℚ), (-2136810047/5000000000 : ℚ), (134947373413/1000000000000 : ℚ), 3⟩,
    ⟨(360203280297/1000000000000 : ℚ), (-2448616561/5000000000 : ℚ), (2457553499/15625000000 : ℚ), 3⟩,
    ⟨(181958886811/500000000000 : ℚ), (-16950733/31250000 : ℚ), (22045326849/125000000000 : ℚ), 3⟩,
    ⟨(367315584619/1000000000000 : ℚ), (-1466992851/2500000000 : ℚ), (96292704501/500000000000 : ℚ), 3⟩,
    ⟨(370363990509/1000000000000 : ℚ), (-1559690073/2500000000 : ℚ), (103130481201/500000000000 : ℚ), 3⟩,
    ⟨(373033633479/1000000000000 : ℚ), (-818069827/1250000000 : ℚ), (217627077669/1000000000000 : ℚ), 3⟩,
    ⟨(187649401703/500000000000 : ℚ), (-3395731719/5000000000 : ℚ), (226865214189/1000000000000 : ℚ), 3⟩,
    ⟨(377137685467/1000000000000 : ℚ), (-873010453/1250000000 : ℚ), (234111833639/1000000000000 : ℚ), 3⟩,
    ⟨(378532570221/1000000000000 : ℚ), (-356290807/500000000 : ℚ), (29933367917/125000000000 : ℚ), 3⟩,
    ⟨(189735012083/500000000000 : ℚ), (-144380951/200000000 : ℚ), (243000413443/1000000000000 : ℚ), 3⟩,
    ⟨(379941019107/1000000000000 : ℚ), (-3632647427/5000000000 : ℚ), (244756447581/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-7271058707/10000000000 : ℚ), (244975456977/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (341048005061/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control642.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control642.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate642

-- Control643
namespace DiagonalRamsey.JointInheritedCertificate643
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155323686439/1000000000000 : ℚ), (312619122241/625000000 : ℚ), (-77930015380511/1000000000000 : ℚ), 11⟩,
    ⟨(15618005747/100000000000 : ℚ), (6626230231/125000000 : ℚ), (-840163011703/100000000000 : ℚ), 8⟩,
    ⟨(78929944837/500000000000 : ℚ), (175186765941/10000000000 : ℚ), (-709636993621/250000000000 : ℚ), 6⟩,
    ⟨(160298628041/1000000000000 : ℚ), (78615599421/10000000000 : ℚ), (-326213860007/250000000000 : ℚ), 6⟩,
    ⟨(163402553223/1000000000000 : ℚ), (39492811097/10000000000 : ℚ), (-168155745433/250000000000 : ℚ), 5⟩,
    ⟨(41763095779/250000000000 : ℚ), (5007849777/2500000000 : ℚ), (-87877441527/250000000000 : ℚ), 5⟩,
    ⟨(34221571361/200000000000 : ℚ), (4517971251/5000000000 : ℚ), (-165820886993/1000000000000 : ℚ), 4⟩,
    ⟨(175413124709/1000000000000 : ℚ), (451169761/2000000000 : ℚ), (-48466521487/1000000000000 : ℚ), 4⟩,
    ⟨(179802737799/1000000000000 : ℚ), (-2198814493/10000000000 : ℚ), (30587884741/1000000000000 : ℚ), 4⟩,
    ⟨(184108005703/1000000000000 : ℚ), (-1316107247/2500000000 : ℚ), (86333718143/1000000000000 : ℚ), 4⟩,
    ⟨(5880108731/31250000000 : ℚ), (-93021363/125000000 : ℚ), (126842341813/1000000000000 : ℚ), 3⟩,
    ⟨(38362661857/200000000000 : ℚ), (-4506468087/5000000000 : ℚ), (15668463477/100000000000 : ℚ), 3⟩,
    ⟨(194917234467/1000000000000 : ℚ), (-10142636257/10000000000 : ℚ), (89262457417/500000000000 : ℚ), 3⟩,
    ⟨(98677986417/500000000000 : ℚ), (-2732016427/2500000000 : ℚ), (3878568861/20000000000 : ℚ), 3⟩,
    ⟨(99517902519/500000000000 : ℚ), (-2856529899/2500000000 : ℚ), (101899608447/500000000000 : ℚ), 3⟩,
    ⟨(199892176069/1000000000000 : ℚ), (-5834094301/5000000000 : ℚ), (208627567849/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11698137591/10000000000 : ℚ), (209226386067/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (434790950037/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control643.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control643.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate643

-- Control644
namespace DiagonalRamsey.JointInheritedCertificate644
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39042391101/200000000000 : ℚ), (2563473117163/5000000000 : ℚ), (-100384610475869/1000000000000 : ℚ), 11⟩,
    ⟨(49065537923/250000000000 : ℚ), (135938149223/2500000000 : ℚ), (-541321252777/50000000000 : ℚ), 8⟩,
    ⟨(39664437123/200000000000 : ℚ), (3598774929/200000000 : ℚ), (-3660905314769/1000000000000 : ℚ), 6⟩,
    ⟨(201312891327/1000000000000 : ℚ), (80925529179/10000000000 : ℚ), (-842829486033/500000000000 : ℚ), 6⟩,
    ⟨(51279834421/250000000000 : ℚ), (8161791399/2000000000 : ℚ), (-871648064029/1000000000000 : ℚ), 5⟩,
    ⟨(209595245087/1000000000000 : ℚ), (20855462759/10000000000 : ℚ), (-91690945073/200000000000 : ℚ), 5⟩,
    ⟨(53642151731/250000000000 : ℚ), (4793622469/5000000000 : ℚ), (-219756050757/1000000000000 : ℚ), 4⟩,
    ⟨(21984829969/100000000000 : ℚ), (1322623101/5000000000 : ℚ), (-34559158099/500000000000 : ℚ), 4⟩,
    ⟨(225231427753/1000000000000 : ℚ), (-1909604871/10000000000 : ℚ), (32164774419/1000000000000 : ℚ), 4⟩,
    ⟨(115255560259/500000000000 : ℚ), (-5038728011/10000000000 : ℚ), (103424847233/1000000000000 : ℚ), 4⟩,
    ⟨(58871120589/250000000000 : ℚ), (-907093631/1250000000 : ℚ), (38770288173/250000000000 : ℚ), 3⟩,
    ⟨(239960389759/1000000000000 : ℚ), (-8854174709/10000000000 : ℚ), (38608791847/200000000000 : ℚ), 3⟩,
    ⟨(60941709029/250000000000 : ℚ), (-10000589769/10000000000 : ℚ), (27595785449/125000000000 : ℚ), 3⟩,
    ⟨(246757541827/1000000000000 : ℚ), (-10796410511/10000000000 : ℚ), (48056543939/200000000000 : ℚ), 3⟩,
    ⟨(248817575751/1000000000000 : ℚ), (-11300476869/10000000000 : ℚ), (252772291097/1000000000000 : ℚ), 3⟩,
    ⟨(124933885969/500000000000 : ℚ), (-2886324391/2500000000 : ℚ), (1035506591/4000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2315115811/2000000000 : ℚ), (129816742357/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (1545436073/4000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control644.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control644.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate644

-- Control645
namespace DiagonalRamsey.JointInheritedCertificate645
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117758858017/500000000000 : ℚ), (1323961844753/625000000 : ℚ), (-499383844510641/1000000000000 : ℚ), 13⟩,
    ⟨(117914014369/500000000000 : ℚ), (1161634872907/5000000000 : ℚ), (-55086869567591/1000000000000 : ℚ), 10⟩,
    ⟨(47289133133/200000000000 : ℚ), (204348758439/2500000000 : ℚ), (-9771448647257/500000000000 : ℚ), 8⟩,
    ⟨(118682339317/500000000000 : ℚ), (201923229647/5000000000 : ℚ), (-9749899045941/1000000000000 : ℚ), 7⟩,
    ⟨(29822027131/125000000000 : ℚ), (234412164003/10000000000 : ℚ), (-5719555387037/1000000000000 : ℚ), 7⟩,
    ⟨(240068613129/1000000000000 : ℚ), (37279180713/2500000000 : ℚ), (-3679080428837/1000000000000 : ℚ), 6⟩,
    ⟨(241827494287/1000000000000 : ℚ), (100377054287/10000000000 : ℚ), (-100206965617/40000000000 : ℚ), 6⟩,
    ⟨(1904968137/7812500000 : ℚ), (35010645271/5000000000 : ℚ), (-44208053459/25000000000 : ℚ), 5⟩,
    ⟨(123037276311/500000000000 : ℚ), (24948365547/5000000000 : ℚ), (-63777058923/50000000000 : ℚ), 5⟩,
    ⟨(49704365661/200000000000 : ℚ), (35906651971/10000000000 : ℚ), (-929689606509/1000000000000 : ℚ), 5⟩,
    ⟨(251154179983/1000000000000 : ℚ), (25811121023/10000000000 : ℚ), (-677547839453/1000000000000 : ℚ), 5⟩,
    ⟨(253946256669/1000000000000 : ℚ), (9151330627/5000000000 : ℚ), (-12199498941/25000000000 : ℚ), 4⟩,
    ⟨(128435584569/500000000000 : ℚ), (12577227017/10000000000 : ℚ), (-68357851213/200000000000 : ℚ), 4⟩,
    ⟨(51980149777/200000000000 : ℚ), (4059447873/5000000000 : ℚ), (-226622632637/1000000000000 : ℚ), 4⟩,
    ⟨(263005819401/1000000000000 : ℚ), (4584758153/10000000000 : ℚ), (-134243705209/1000000000000 : ℚ), 4⟩,
    ⟨(266156477159/1000000000000 : ℚ), (1740070369/10000000000 : ℚ), (-11799004477/200000000000 : ℚ), 4⟩,
    ⟨(269322379603/1000000000000 : ℚ), (-36245283/625000000 : ℚ), (1554142609/500000000000 : ℚ), 4⟩,
    ⟨(272473037361/1000000000000 : ℚ), (-2493336037/10000000000 : ℚ), (5493323171/100000000000 : ℚ), 4⟩,
    ⟨(275578107877/1000000000000 : ℚ), (-4086366557/10000000000 : ℚ), (98579769833/1000000000000 : ℚ), 4⟩,
    ⟨(34825960953/125000000000 : ℚ), (-2711444871/5000000000 : ℚ), (135609072861/1000000000000 : ℚ), 3⟩,
    ⟨(140766300047/500000000000 : ℚ), (-655083321/1000000000 : ℚ), (20899490189/125000000000 : ℚ), 3⟩,
    ⟨(14216233839/50000000000 : ℚ), (-7506528359/10000000000 : ℚ), (1942327867/10000000000 : ℚ), 3⟩,
    ⟨(286957028457/1000000000000 : ℚ), (-1663547059/2000000000 : ℚ), (43480484823/200000000000 : ℚ), 3⟩,
    ⟨(14470215207/50000000000 : ℚ), (-9005785209/10000000000 : ℚ), (59307373551/250000000000 : ℚ), 3⟩,
    ⟨(291642935227/1000000000000 : ℚ), (-1917424589/2000000000 : ℚ), (50823586317/200000000000 : ℚ), 3⟩,
    ⟨(11746054499/40000000000 : ℚ), (-10074433987/10000000000 : ℚ), (26837844143/100000000000 : ℚ), 3⟩,
    ⟨(147705121817/500000000000 : ℚ), (-2095495597/2000000000 : ℚ), (56049804269/200000000000 : ℚ), 3⟩,
    ⟨(59380527943/200000000000 : ℚ), (-108037107/100000000 : ℚ), (289910441711/1000000000000 : ℚ), 3⟩,
    ⟨(18632136133/62500000000 : ℚ), (-2764687459/2500000000 : ℚ), (297497985133/1000000000000 : ℚ), 3⟩,
    ⟨(299033191097/1000000000000 : ℚ), (-1124672241/1000000000 : ℚ), (303110316347/1000000000000 : ℚ), 3⟩,
    ⟨(11986033121/40000000000 : ℚ), (-5685259587/5000000000 : ℚ), (76704015823/250000000000 : ℚ), 3⟩,
    ⟨(299961140729/1000000000000 : ℚ), (-11431973127/10000000000 : ℚ), (30865848833/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2287926861/2000000000 : ℚ), (308888308779/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (340192919427/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control645.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control645.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate645

-- Control646
namespace DiagonalRamsey.JointInheritedCertificate646
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60359764421/500000000000 : ℚ), (593403798039/1000000000 : ℚ), (-35910151957609/500000000000 : ℚ), 11⟩,
    ⟨(121280787041/1000000000000 : ℚ), (629030342149/10000000000 : ℚ), (-48272380901/6250000000 : ℚ), 8⟩,
    ⟨(122381734601/1000000000000 : ℚ), (207454891487/10000000000 : ℚ), (-2595050688169/1000000000000 : ℚ), 7⟩,
    ⟨(30995015681/250000000000 : ℚ), (46253657703/5000000000 : ℚ), (-236221067103/200000000000 : ℚ), 6⟩,
    ⟨(126014348557/1000000000000 : ℚ), (11452834387/2500000000 : ℚ), (-299088407649/500000000000 : ℚ), 5⟩,
    ⟨(128406415637/1000000000000 : ℚ), (22505231223/10000000000 : ℚ), (-302044836863/1000000000000 : ℚ), 5⟩,
    ⟨(131064338167/1000000000000 : ℚ), (9287812017/10000000000 : ℚ), (-130742252413/1000000000000 : ℚ), 4⟩,
    ⟨(5355438947/40000000000 : ℚ), (13803093/125000000 : ℚ), (-11211398557/500000000000 : ℚ), 4⟩,
    ⟨(136762888291/1000000000000 : ℚ), (-2147754021/5000000000 : ℚ), (10119767667/200000000000 : ℚ), 4⟩,
    ⟨(139584523799/1000000000000 : ℚ), (-200689713/250000000 : ℚ), (25534772591/250000000000 : ℚ), 4⟩,
    ⟨(142242446329/1000000000000 : ℚ), (-10689437959/10000000000 : ℚ), (139633685801/1000000000000 : ℚ), 4⟩,
    ⟨(144634513409/1000000000000 : ℚ), (-3154506713/2500000000 : ℚ), (16728981753/100000000000 : ℚ), 4⟩,
    ⟨(73334399621/500000000000 : ℚ), (-2801929117/2000000000 : ℚ), (37511133057/200000000000 : ℚ), 3⟩,
    ⟨(74133563683/500000000000 : ℚ), (-599203811/400000000 : ℚ), (100932706627/500000000000 : ℚ), 3⟩,
    ⟨(5974722997/40000000000 : ℚ), (-3899220503/2500000000 : ℚ), (211043931309/1000000000000 : ℚ), 3⟩,
    ⟨(37482333281/250000000000 : ℚ), (-3179417487/2000000000 : ℚ), (215536424009/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-318684989/200000000 : ℚ), (54023430709/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (223132589267/500000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control646.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control646.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate646
