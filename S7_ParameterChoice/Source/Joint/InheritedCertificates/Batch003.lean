import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control30
namespace DiagonalRamsey.JointInheritedCertificate30
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79221068551/1000000000000 : ℚ), (11166801875313/10000000000 : ℚ), (-44355384305447/500000000000 : ℚ), 10⟩,
    ⟨(9952420787/125000000000 : ℚ), (1181770322377/10000000000 : ℚ), (-953493068933/100000000000 : ℚ), 7⟩,
    ⟨(80400655427/1000000000000 : ℚ), (19434283167/500000000 : ℚ), (-399947151197/125000000000 : ℚ), 5⟩,
    ⟨(81534911441/1000000000000 : ℚ), (172585687293/10000000000 : ℚ), (-36312968801/25000000000 : ℚ), 4⟩,
    ⟨(20744636379/250000000000 : ℚ), (42423988347/5000000000 : ℚ), (-731828371031/1000000000000 : ℚ), 4⟩,
    ⟨(84676079603/1000000000000 : ℚ), (20532989073/5000000000 : ℚ), (-91319172897/250000000000 : ℚ), 3⟩,
    ⟨(4328113921/50000000000 : ℚ), (4056376321/2500000000 : ℚ), (-30565298961/200000000000 : ℚ), 3⟩,
    ⟨(88564656403/1000000000000 : ℚ), (414169953/5000000000 : ℚ), (-9063320407/500000000000 : ℚ), 3⟩,
    ⟨(9060626329/100000000000 : ℚ), (-9347780601/10000000000 : ℚ), (36484854409/500000000000 : ℚ), 3⟩,
    ⟨(46304320637/500000000000 : ℚ), (-16393548067/10000000000 : ℚ), (27495565691/200000000000 : ℚ), 2⟩,
    ⟨(94494840091/1000000000000 : ℚ), (-10713039739/5000000000 : ℚ), (184538733861/1000000000000 : ℚ), 2⟩,
    ⟨(48096187089/500000000000 : ℚ), (-6268749597/2500000000 : ℚ), (219319119029/1000000000000 : ℚ), 2⟩,
    ⟨(24409002063/250000000000 : ℚ), (-2770773931/1000000000 : ℚ), (244829656291/1000000000000 : ℚ), 2⟩,
    ⟨(49385132133/500000000000 : ℚ), (-5908464849/2000000000 : ℚ), (131422063569/500000000000 : ℚ), 2⟩,
    ⟨(99551553397/1000000000000 : ℚ), (-191919611/62500000 : ℚ), (137197020697/500000000000 : ℚ), 2⟩,
    ⟨(99949851143/1000000000000 : ℚ), (-31273599991/10000000000 : ℚ), (56008896749/200000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7835923907/2500000000 : ℚ), (280745264237/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (287499/1000000 : ℚ)
  x := (171346854441/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control30.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control30.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate30

-- Control31
namespace DiagonalRamsey.JointInheritedCertificate31
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(214858977857/1000000000000 : ℚ), (7396830674077/10000000000 : ℚ), (-159742098533857/1000000000000 : ℚ), 10⟩,
    ⟨(216471800953/1000000000000 : ℚ), (793715166933/10000000000 : ℚ), (-552264897221/31250000000 : ℚ), 7⟩,
    ⟨(27460239347/125000000000 : ℚ), (135643653611/5000000000 : ℚ), (-3153615666351/500000000000 : ℚ), 5⟩,
    ⟨(8978336167/40000000000 : ℚ), (519853551/40000000 : ℚ), (-794092553793/250000000000 : ℚ), 4⟩,
    ⟨(230755268947/1000000000000 : ℚ), (36620210583/5000000000 : ℚ), (-377665399313/200000000000 : ℚ), 4⟩,
    ⟨(238511866841/1000000000000 : ℚ), (45404151829/10000000000 : ℚ), (-1236661696327/1000000000000 : ℚ), 3⟩,
    ⟨(12382674879/50000000000 : ℚ), (749098873/250000000 : ℚ), (-862141960013/1000000000000 : ℚ), 3⟩,
    ⟨(129046061131/500000000000 : ℚ), (20661518391/10000000000 : ℚ), (-156846442167/250000000000 : ℚ), 3⟩,
    ⟨(134863605613/500000000000 : ℚ), (14711243189/10000000000 : ℚ), (-470650905493/1000000000000 : ℚ), 2⟩,
    ⟨(70611678051/250000000000 : ℚ), (2145425609/2000000000 : ℚ), (-18042453861/50000000000 : ℚ), 2⟩,
    ⟨(37016016181/125000000000 : ℚ), (3980251661/5000000000 : ℚ), (-140472183367/500000000000 : ℚ), 2⟩,
    ⟨(310639703431/1000000000000 : ℚ), (373794107/625000000 : ℚ), (-6905303463/31250000000 : ℚ), 2⟩,
    ⟨(81460419941/250000000000 : ℚ), (4527412919/10000000000 : ℚ), (-174782153397/1000000000000 : ℚ), 2⟩,
    ⟨(5337307111/15625000000 : ℚ), (137473971/400000000 : ℚ), (-69216131191/500000000000 : ℚ), 2⟩,
    ⟨(3577259871/10000000000 : ℚ), (162658121/625000000 : ℚ), (-21858181397/200000000000 : ℚ), 2⟩,
    ⟨(374101254793/1000000000000 : ℚ), (1953280199/10000000000 : ℚ), (-85556319763/1000000000000 : ℚ), 1⟩,
    ⟨(78111151081/200000000000 : ℚ), (288078339/2000000000 : ℚ), (-6596320151/100000000000 : ℚ), 1⟩,
    ⟨(406931023099/1000000000000 : ℚ), (51492161/500000000 : ℚ), (-4960442783/100000000000 : ℚ), 1⟩,
    ⟨(84613871019/200000000000 : ℚ), (34872149/500000000 : ℚ), (-8954534801/250000000000 : ℚ), 1⟩,
    ⟨(219407665217/500000000000 : ℚ), (85142893/2000000000 : ℚ), (-12057087323/500000000000 : ℚ), 1⟩,
    ⟨(454017306767/1000000000000 : ℚ), (100927053/5000000000 : ℚ), (-14124929341/1000000000000 : ℚ), 1⟩,
    ⟨(468528880751/1000000000000 : ℚ), (16364901/10000000000 : ℚ), (-5571800697/1000000000000 : ℚ), 1⟩,
    ⟨(96442059599/200000000000 : ℚ), (-137873901/10000000000 : ℚ), (879085249/500000000000 : ℚ), 1⟩,
    ⟨(123732449743/250000000000 : ℚ), (-266250073/10000000000 : ℚ), (4014419457/500000000000 : ℚ), 1⟩,
    ⟨(3957538187/7812500000 : ℚ), (-372869269/10000000000 : ℚ), (13366838749/1000000000000 : ℚ), 1⟩,
    ⟨(258501756309/500000000000 : ℚ), (-460874703/10000000000 : ℚ), (8935114471/500000000000 : ℚ), 1⟩,
    ⟨(526145143357/1000000000000 : ℚ), (-266337979/5000000000 : ℚ), (21614844021/1000000000000 : ℚ), 1⟩,
    ⟨(133475435313/250000000000 : ℚ), (-23604553/400000000 : ℚ), (3082373561/125000000000 : ℚ), 1⟩,
    ⟨(540198606023/1000000000000 : ℚ), (-634579343/10000000000 : ℚ), (6761728031/250000000000 : ℚ), 1⟩,
    ⟨(544975095423/1000000000000 : ℚ), (-166774849/2500000000 : ℚ), (28811367137/1000000000000 : ℚ), 1⟩,
    ⟨(274092604623/500000000000 : ℚ), (-137679461/2000000000 : ℚ), (7493864209/250000000000 : ℚ), 1⟩,
    ⟨(549798032341/1000000000000 : ℚ), (-349467041/5000000000 : ℚ), (1527695783/50000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-700245979/10000000000 : ℚ), (30626056711/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (299999/1000000 : ℚ)
  x := (202758919979/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control31.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control31.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate31

-- Control32
namespace DiagonalRamsey.JointInheritedCertificate32
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38754058987/125000000000 : ℚ), (36917585893711/10000000000 : ℚ), (-1146067484044907/1000000000000 : ℚ), 12⟩,
    ⟨(62100426823/200000000000 : ℚ), (4063562678589/10000000000 : ℚ), (-63601113892847/500000000000 : ℚ), 9⟩,
    ⟨(311440327093/1000000000000 : ℚ), (720573615687/5000000000 : ℚ), (-22846582230341/500000000000 : ℚ), 7⟩,
    ⟨(78211197661/250000000000 : ℚ), (721361748721/10000000000 : ℚ), (-23236782313783/1000000000000 : ℚ), 6⟩,
    ⟨(31471214129/100000000000 : ℚ), (426705608501/10000000000 : ℚ), (-699784507287/50000000000 : ℚ), 6⟩,
    ⟨(317037880421/1000000000000 : ℚ), (139274449327/5000000000 : ℚ), (-9318091956987/1000000000000 : ℚ), 5⟩,
    ⟨(39977050641/125000000000 : ℚ), (194027497641/10000000000 : ℚ), (-6628011669221/1000000000000 : ℚ), 5⟩,
    ⟨(3230410217/10000000000 : ℚ), (141500789619/10000000000 : ℚ), (-4940464497339/1000000000000 : ℚ), 4⟩,
    ⟨(65340792351/200000000000 : ℚ), (21355139627/2000000000 : ℚ), (-762575325501/200000000000 : ℚ), 4⟩,
    ⟨(82699100237/250000000000 : ℚ), (20680307047/2500000000 : ℚ), (-60449085781/20000000000 : ℚ), 4⟩,
    ⟨(83827120059/250000000000 : ℚ), (65438758123/10000000000 : ℚ), (-244712094519/100000000000 : ℚ), 3⟩,
    ⟨(42528666203/125000000000 : ℚ), (52652560939/10000000000 : ℚ), (-125964794239/62500000000 : ℚ), 3⟩,
    ⟨(172773547177/500000000000 : ℚ), (21481435347/5000000000 : ℚ), (-1683334403551/1000000000000 : ℚ), 3⟩,
    ⟨(351248963467/1000000000000 : ℚ), (8867770089/2500000000 : ℚ), (-177804206523/125000000000 : ℚ), 3⟩,
    ⟨(357321200659/1000000000000 : ℚ), (14789695523/5000000000 : ℚ), (-1213786931491/1000000000000 : ℚ), 3⟩,
    ⟨(18187458869/50000000000 : ℚ), (24877959771/10000000000 : ℚ), (-104435249901/100000000000 : ℚ), 3⟩,
    ⟨(370517408071/1000000000000 : ℚ), (21078468623/10000000000 : ℚ), (-904915383693/1000000000000 : ℚ), 2⟩,
    ⟨(37760958747/100000000000 : ℚ), (17973519821/10000000000 : ℚ), (-788814802173/1000000000000 : ℚ), 2⟩,
    ⟨(192504314949/500000000000 : ℚ), (15410995277/10000000000 : ℚ), (-345569675773/500000000000 : ℚ), 2⟩,
    ⟨(392696710411/1000000000000 : ℚ), (13277398701/10000000000 : ℚ), (-304101653707/500000000000 : ℚ), 2⟩,
    ⟨(50081913469/125000000000 : ℚ), (5743379407/5000000000 : ℚ), (-268598581647/500000000000 : ℚ), 2⟩,
    ⟨(408865248961/1000000000000 : ℚ), (997307079/1000000000 : ℚ), (-29746822883/62500000000 : ℚ), 2⟩,
    ⟨(104326688893/250000000000 : ℚ), (1737008869/2000000000 : ℚ), (-422759308237/1000000000000 : ℚ), 2⟩,
    ⟨(85191898251/200000000000 : ℚ), (1895597173/2500000000 : ℚ), (-94070414391/250000000000 : ℚ), 2⟩,
    ⟨(434802610813/1000000000000 : ℚ), (6633141829/10000000000 : ℚ), (-335439580687/1000000000000 : ℚ), 2⟩,
    ⟨(110953702599/250000000000 : ℚ), (581172223/1000000000 : ℚ), (-149681875441/500000000000 : ℚ), 2⟩,
    ⟨(226487189413/500000000000 : ℚ), (5097488419/10000000000 : ℚ), (-53469239613/200000000000 : ℚ), 2⟩,
    ⟨(4622592499/10000000000 : ℚ), (4473660959/10000000000 : ℚ), (-23880582361/100000000000 : ℚ), 2⟩,
    ⟨(9432941111/20000000000 : ℚ), (3926506589/10000000000 : ℚ), (-53315555189/250000000000 : ℚ), 2⟩,
    ⟨(48111517973/100000000000 : ℚ), (172235719/500000000 : ℚ), (-190315588957/1000000000000 : ℚ), 2⟩,
    ⟨(4906408129/10000000000 : ℚ), (150945709/500000000 : ℚ), (-169631172133/1000000000000 : ℚ), 2⟩,
    ⟨(3907820367/7812500000 : ℚ), (2641301629/10000000000 : ℚ), (-30185418313/200000000000 : ℚ), 1⟩,
    ⟨(127443182653/250000000000 : ℚ), (288167973/1250000000 : ℚ), (-26792950283/200000000000 : ℚ), 1⟩,
    ⟨(519332924687/1000000000000 : ℚ), (2005546297/10000000000 : ℚ), (-118541214117/1000000000000 : ℚ), 1⟩,
    ⟨(528858557857/1000000000000 : ℚ), (108579249/625000000 : ℚ), (-104483095627/1000000000000 : ℚ), 1⟩,
    ⟨(269163341019/500000000000 : ℚ), (748286087/5000000000 : ℚ), (-45820821499/500000000000 : ℚ), 1⟩,
    ⟨(68464310961/125000000000 : ℚ), (1280106839/10000000000 : ℚ), (-39944370807/500000000000 : ℚ), 1⟩,
    ⟨(278499679381/500000000000 : ℚ), (108500737/1000000000 : ℚ), (-8639206837/125000000000 : ℚ), 1⟩,
    ⟨(566158927191/1000000000000 : ℚ), (227204329/2500000000 : ℚ), (-29610173453/500000000000 : ℚ), 1⟩,
    ⟨(287585563387/500000000000 : ℚ), (149884689/2000000000 : ℚ), (-25062637617/500000000000 : ℚ), 1⟩,
    ⟨(146003561583/250000000000 : ℚ), (605002299/10000000000 : ℚ), (-20877778539/500000000000 : ℚ), 1⟩,
    ⟨(118533396403/200000000000 : ℚ), (118494003/2500000000 : ℚ), (-8511860793/250000000000 : ℚ), 1⟩,
    ⟨(300554244313/500000000000 : ℚ), (8874391/250000000 : ℚ), (-13472519641/500000000000 : ℚ), 1⟩,
    ⟨(152329607459/250000000000 : ℚ), (246810621/10000000000 : ℚ), (-20399233111/1000000000000 : ℚ), 1⟩,
    ⟨(77159628397/125000000000 : ℚ), (29688647/2000000000 : ℚ), (-1795848503/125000000000 : ℚ), 1⟩,
    ⟨(62496510769/100000000000 : ℚ), (58967187/10000000000 : ℚ), (-8809576487/1000000000000 : ℚ), 1⟩,
    ⟨(632364150117/1000000000000 : ℚ), (-5602601/2500000000 : ℚ), (-461741249/125000000000 : ℚ), 1⟩,
    ⟨(639456329517/1000000000000 : ℚ), (-6024013/625000000 : ℚ), (1009915733/1000000000000 : ℚ), 1⟩,
    ⟨(646224560207/1000000000000 : ℚ), (-20445441/1250000000 : ℚ), (5328292657/1000000000000 : ℚ), 1⟩,
    ⟨(20395391779/31250000000 : ℚ), (-28060399/1250000000 : ℚ), (4642252529/500000000000 : ℚ), 1⟩,
    ⟨(16468119353/25000000000 : ℚ), (-279612793/10000000000 : ℚ), (12899175217/1000000000000 : ℚ), 1⟩,
    ⟨(664426643233/1000000000000 : ℚ), (-82341137/2500000000 : ℚ), (4047635087/250000000000 : ℚ), 1⟩,
    ⟨(167436101991/250000000000 : ℚ), (-74819997/2000000000 : ℚ), (19174707337/1000000000000 : ℚ), 1⟩,
    ⟨(84333157169/125000000000 : ℚ), (-414135627/10000000000 : ℚ), (21865870169/1000000000000 : ℚ), 1⟩,
    ⟨(679177336639/1000000000000 : ℚ), (-449747843/10000000000 : ℚ), (12138249149/500000000000 : ℚ), 1⟩,
    ⟨(683269775833/1000000000000 : ℚ), (-120294239/2500000000 : ℚ), (5283499163/200000000000 : ℚ), 1⟩,
    ⟨(686932715887/1000000000000 : ℚ), (-254315367/5000000000 : ℚ), (5659667681/200000000000 : ℚ), 1⟩,
    ⟨(34507866623/50000000000 : ℚ), (-266143667/5000000000 : ℚ), (5985437827/200000000000 : ℚ), 1⟩,
    ⟨(346467928583/500000000000 : ℚ), (-22091911/400000000 : ℚ), (7827749127/250000000000 : ℚ), 1⟩,
    ⟨(695261596297/1000000000000 : ℚ), (-142196997/2500000000 : ℚ), (32455575551/1000000000000 : ℚ), 1⟩,
    ⟨(2723159949/3906250000 : ℚ), (-72732563/1250000000 : ℚ), (6673135129/200000000000 : ℚ), 1⟩,
    ⟨(349266705247/500000000000 : ℚ), (-591595799/10000000000 : ℚ), (8511258467/250000000000 : ℚ), 1⟩,
    ⟨(699471603473/1000000000000 : ℚ), (-299026673/5000000000 : ℚ), (34496417767/1000000000000 : ℚ), 1⟩,
    ⟨(699941265691/1000000000000 : ℚ), (-300636187/5000000000 : ℚ), (3472165521/100000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-601674297/10000000000 : ℚ), (34749788651/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (299999/1000000 : ℚ)
  x := (39804236067/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control32.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control32.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate32

-- Control34
namespace DiagonalRamsey.JointInheritedCertificate34
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
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

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (299999/1000000 : ℚ)
  x := (179359139127/1000000000000 : ℚ)
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

-- Control35
namespace DiagonalRamsey.JointInheritedCertificate35
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43213415347/200000000000 : ℚ), (458280935533/625000000 : ℚ), (-15923659320077/100000000000 : ℚ), 10⟩,
    ⟨(21767408601/100000000000 : ℚ), (393518419407/5000000000 : ℚ), (-3523488270699/200000000000 : ℚ), 7⟩,
    ⟨(110436314091/500000000000 : ℚ), (67279247089/2500000000 : ℚ), (-6288196486497/1000000000000 : ℚ), 5⟩,
    ⟨(112815949771/500000000000 : ℚ), (100771687/7812500 : ℚ), (-25337676447/8000000000 : ℚ), 4⟩,
    ⟨(28988258213/125000000000 : ℚ), (36365083669/5000000000 : ℚ), (-1883184346527/1000000000000 : ℚ), 4⟩,
    ⟨(239634703019/1000000000000 : ℚ), (9022659153/2000000000 : ℚ), (-1233509885693/1000000000000 : ℚ), 3⟩,
    ⟨(62185845121/250000000000 : ℚ), (5957748951/2000000000 : ℚ), (-430048229797/500000000000 : ℚ), 3⟩,
    ⟨(64786094139/250000000000 : ℚ), (20551775591/10000000000 : ℚ), (-313000485209/500000000000 : ℚ), 3⟩,
    ⟨(135368761979/500000000000 : ℚ), (2928080437/2000000000 : ℚ), (-469679816001/1000000000000 : ℚ), 2⟩,
    ⟨(141705587171/500000000000 : ℚ), (10680217017/10000000000 : ℚ), (-72029109891/200000000000 : ℚ), 2⟩,
    ⟨(297043273527/1000000000000 : ℚ), (3964350057/5000000000 : ℚ), (-140208975961/500000000000 : ℚ), 2⟩,
    ⟨(62300507389/200000000000 : ℚ), (372415001/625000000 : ℚ), (-220562694691/1000000000000 : ℚ), 2⟩,
    ⟨(163324856993/500000000000 : ℚ), (563966889/1250000000 : ℚ), (-6978278311/40000000000 : ℚ), 2⟩,
    ⟨(68467785811/200000000000 : ℚ), (3345147/9765625 : ℚ), (-138164108613/1000000000000 : ℚ), 2⟩,
    ⟨(179209543217/500000000000 : ℚ), (324249603/1250000000 : ℚ), (-218126679/2000000000 : ℚ), 2⟩,
    ⟨(46841915677/125000000000 : ℚ), (973367697/5000000000 : ℚ), (-85358374657/1000000000000 : ℚ), 2⟩,
    ⟨(195565255851/500000000000 : ℚ), (358810561/2500000000 : ℚ), (-1315751321/20000000000 : ℚ), 1⟩,
    ⟨(81489350137/200000000000 : ℚ), (20513859/200000000 : ℚ), (-49446219469/1000000000000 : ℚ), 1⟩,
    ⟨(13235215877/31250000000 : ℚ), (694024073/10000000000 : ℚ), (-17837042313/500000000000 : ℚ), 1⟩,
    ⟨(439216123133/1000000000000 : ℚ), (422843411/10000000000 : ℚ), (-23982051829/1000000000000 : ℚ), 1⟩,
    ⟨(227181650087/500000000000 : ℚ), (199403087/10000000000 : ℚ), (-7001593933/500000000000 : ℚ), 1⟩,
    ⟨(58602820449/125000000000 : ℚ), (1780381/1250000000 : ℚ), (-2729651333/500000000000 : ℚ), 1⟩,
    ⟨(482454662777/1000000000000 : ℚ), (-2794657/200000000 : ℚ), (465581291/250000000000 : ℚ), 1⟩,
    ⟨(495128313161/1000000000000 : ℚ), (-33486993/1250000000 : ℚ), (8125429133/1000000000000 : ℚ), 1⟩,
    ⟨(506721460563/1000000000000 : ℚ), (-2994727/80000000 : ℚ), (6728298777/500000000000 : ℚ), 1⟩,
    ⟨(103424491327/200000000000 : ℚ), (-462203459/10000000000 : ℚ), (8976945209/500000000000 : ℚ), 1⟩,
    ⟨(5262311341/10000000000 : ℚ), (-533888291/10000000000 : ℚ), (21693169567/1000000000000 : ℚ), 1⟩,
    ⟨(106791954283/200000000000 : ℚ), (-73904099/1250000000 : ℚ), (6183194841/250000000000 : ℚ), 1⟩,
    ⟨(540233937577/1000000000000 : ℚ), (-317812863/5000000000 : ℚ), (13558506297/500000000000 : ℚ), 1⟩,
    ⟨(544993208937/1000000000000 : ℚ), (-334046227/5000000000 : ℚ), (14439330623/500000000000 : ℚ), 1⟩,
    ⟨(548191751109/1000000000000 : ℚ), (-86169413/1250000000 : ℚ), (30040860951/1000000000000 : ℚ), 1⟩,
    ⟨(8590605631/15625000000 : ℚ), (-699874691/10000000000 : ℚ), (15309184431/500000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-350592211/5000000000 : ℚ), (767259773/25000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (213042814983/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control35.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control35.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate35

-- Control36
namespace DiagonalRamsey.JointInheritedCertificate36
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(244597035229/1000000000000 : ℚ), (31380052896987/10000000000 : ℚ), (-768697752635273/1000000000000 : ℚ), 12⟩,
    ⟨(245025069187/1000000000000 : ℚ), (862522993003/2500000000 : ℚ), (-17063855962801/200000000000 : ℚ), 9⟩,
    ⟨(245880105933/1000000000000 : ℚ), (244298353533/2000000000 : ℚ), (-15324547344497/500000000000 : ℚ), 7⟩,
    ⟨(30895010701/125000000000 : ℚ), (610152553321/10000000000 : ℚ), (-7793508707497/500000000000 : ℚ), 6⟩,
    ⟨(62215481157/250000000000 : ℚ), (180045423261/5000000000 : ℚ), (-2347189913543/250000000000 : ℚ), 6⟩,
    ⟨(50196304623/200000000000 : ℚ), (117241830807/5000000000 : ℚ), (-6251344331519/1000000000000 : ℚ), 5⟩,
    ⟨(253513774769/1000000000000 : ℚ), (81456392167/5000000000 : ℚ), (-4446999080439/1000000000000 : ℚ), 5⟩,
    ⟨(32056572397/125000000000 : ℚ), (59247922617/5000000000 : ℚ), (-3315069242749/1000000000000 : ℚ), 4⟩,
    ⟨(129895428249/500000000000 : ℚ), (44588689367/5000000000 : ℚ), (-2558708790077/1000000000000 : ℚ), 4⟩,
    ⟨(263520564531/1000000000000 : ℚ), (34451140961/5000000000 : ℚ), (-2028483695361/1000000000000 : ℚ), 4⟩,
    ⟨(66908179521/250000000000 : ℚ), (27180675887/5000000000 : ℚ), (-82125677589/50000000000 : ℚ), 3⟩,
    ⟨(136058705309/500000000000 : ℚ), (10905935541/2500000000 : ℚ), (-338220323491/250000000000 : ℚ), 3⟩,
    ⟨(55392767623/200000000000 : ℚ), (35502402769/10000000000 : ℚ), (-1130029513987/1000000000000 : ℚ), 3⟩,
    ⟨(70540081277/250000000000 : ℚ), (29235715721/10000000000 : ℚ), (-238730609137/250000000000 : ℚ), 3⟩,
    ⟨(71923588201/250000000000 : ℚ), (4863468817/2000000000 : ℚ), (-203712814333/250000000000 : ℚ), 3⟩,
    ⟨(58710517849/200000000000 : ℚ), (4080081603/2000000000 : ℚ), (-350534224223/500000000000 : ℚ), 3⟩,
    ⟨(299720921427/1000000000000 : ℚ), (8620544509/5000000000 : ℚ), (-607393315733/1000000000000 : ℚ), 2⟩,
    ⟨(153092244649/500000000000 : ℚ), (1833020759/1250000000 : ℚ), (-132339610203/250000000000 : ℚ), 2⟩,
    ⟨(78231930389/250000000000 : ℚ), (12541257923/10000000000 : ℚ), (-231834935089/500000000000 : ℚ), 2⟩,
    ⟨(79983593291/250000000000 : ℚ), (5388345541/5000000000 : ℚ), (-407855846363/1000000000000 : ℚ), 2⟩,
    ⟨(65437512897/200000000000 : ℚ), (9298088123/10000000000 : ℚ), (-90008101167/250000000000 : ℚ), 2⟩,
    ⟨(66933964389/200000000000 : ℚ), (8049958771/10000000000 : ℚ), (-159371709371/500000000000 : ℚ), 2⟩,
    ⟨(85590780033/250000000000 : ℚ), (1747312053/2500000000 : ℚ), (-282849242083/1000000000000 : ℚ), 2⟩,
    ⟨(70049785043/200000000000 : ℚ), (6082189271/10000000000 : ℚ), (-31430971677/125000000000 : ℚ), 2⟩,
    ⟨(358308239599/1000000000000 : ℚ), (5302040417/10000000000 : ℚ), (-111908791879/500000000000 : ℚ), 2⟩,
    ⟨(366521647691/1000000000000 : ℚ), (185097457/400000000 : ℚ), (-99688163649/500000000000 : ℚ), 2⟩,
    ⟨(37486936267/100000000000 : ℚ), (1010292417/2500000000 : ℚ), (-177649912387/1000000000000 : ℚ), 2⟩,
    ⟨(383331274161/1000000000000 : ℚ), (44115983/125000000 : ℚ), (-15824936439/100000000000 : ℚ), 2⟩,
    ⟨(391886996677/1000000000000 : ℚ), (385044829/1250000000 : ℚ), (-140853259231/1000000000000 : ℚ), 2⟩,
    ⟨(200257959367/500000000000 : ℚ), (26850351/100000000 : ℚ), (-125194246607/1000000000000 : ℚ), 2⟩,
    ⟨(409197252501/1000000000000 : ℚ), (29194469/125000000 : ℚ), (-11104860703/100000000000 : ℚ), 2⟩,
    ⟨(417910083887/1000000000000 : ℚ), (202548347/1000000000 : ℚ), (-98228088261/1000000000000 : ℚ), 2⟩,
    ⟨(426633422917/1000000000000 : ℚ), (109339431/625000000 : ℚ), (-676355207/7812500000 : ℚ), 1⟩,
    ⟨(217673127151/500000000000 : ℚ), (1502882431/10000000000 : ℚ), (-15189886101/200000000000 : ℚ), 1⟩,
    ⟨(44402758807/100000000000 : ℚ), (641014873/5000000000 : ℚ), (-66240484911/1000000000000 : ℚ), 1⟩,
    ⟨(226328255063/500000000000 : ℚ), (3386403/31250000 : ℚ), (-57347647903/1000000000000 : ℚ), 1⟩,
    ⟨(230606116321/500000000000 : ℚ), (905000311/10000000000 : ℚ), (-9837154321/200000000000 : ℚ), 1⟩,
    ⟨(469674144133/1000000000000 : ℚ), (743746913/10000000000 : ℚ), (-651271163/15625000000 : ℚ), 1⟩,
    ⟨(478021859113/1000000000000 : ℚ), (298944317/5000000000 : ℚ), (-34770745867/1000000000000 : ℚ), 1⟩,
    ⟨(97247053441/200000000000 : ℚ), (58213501/1250000000 : ℚ), (-28398664351/1000000000000 : ℚ), 1⟩,
    ⟨(494294581589/1000000000000 : ℚ), (345725783/10000000000 : ℚ), (-2814620867/125000000000 : ℚ), 1⟩,
    ⟨(31386274167/62500000000 : ℚ), (236664257/10000000000 : ℚ), (-17083625949/1000000000000 : ℚ), 1⟩,
    ⟨(254936842429/500000000000 : ℚ), (68708441/5000000000 : ℚ), (-12061870397/1000000000000 : ℚ), 1⟩,
    ⟨(517355942319/1000000000000 : ℚ), (2938937/625000000 : ℚ), (-7419465157/1000000000000 : ℚ), 1⟩,
    ⟨(524609133639/1000000000000 : ℚ), (-35353287/10000000000 : ℚ), (-1564051547/500000000000 : ℚ), 1⟩,
    ⟨(16612993289/31250000000 : ℚ), (-22088141/2000000000 : ℚ), (837110479/1000000000000 : ℚ), 1⟩,
    ⟨(269179508753/500000000000 : ℚ), (-44718931/2500000000 : ℚ), (4498095299/1000000000000 : ℚ), 1⟩,
    ⟨(17025705793/31250000000 : ℚ), (-60303753/2500000000 : ℚ), (1968542143/250000000000 : ℚ), 1⟩,
    ⟨(550990917559/1000000000000 : ℚ), (-74486501/2500000000 : ℚ), (2196472857/200000000000 : ℚ), 1⟩,
    ⟨(278424577/500000000 : ℚ), (-349495829/10000000000 : ℚ), (6918852633/500000000000 : ℚ), 1⟩,
    ⟨(4393618607/7812500000 : ℚ), (-396238891/10000000000 : ℚ), (8226718883/500000000000 : ℚ), 1⟩,
    ⟨(567579668689/1000000000000 : ℚ), (-4385033/100000000 : ℚ), (9420616041/500000000000 : ℚ), 1⟩,
    ⟨(286213048093/500000000000 : ℚ), (-95315269/2000000000 : ℚ), (4202271119/200000000000 : ℚ), 1⟩,
    ⟨(576910788719/1000000000000 : ℚ), (-15959661/312500000 : ℚ), (5743205457/250000000000 : ℚ), 1⟩,
    ⟨(9078483473/15625000000 : ℚ), (-541120639/10000000000 : ℚ), (24733517739/1000000000000 : ℚ), 1⟩,
    ⟨(292376325153/500000000000 : ℚ), (-568000887/10000000000 : ℚ), (3287539277/125000000000 : ℚ), 1⟩,
    ⟨(588090927627/1000000000000 : ℚ), (-59151399/1000000000 : ℚ), (27679159751/1000000000000 : ℚ), 1⟩,
    ⟨(295514866017/500000000000 : ℚ), (-611800463/10000000000 : ℚ), (14437580203/500000000000 : ℚ), 1⟩,
    ⟨(593561983689/1000000000000 : ℚ), (-157244817/2500000000 : ℚ), (14946324051/500000000000 : ℚ), 1⟩,
    ⟨(18615049443/31250000000 : ℚ), (-321574747/5000000000 : ℚ), (30735237289/1000000000000 : ℚ), 1⟩,
    ⟨(149345855299/250000000000 : ℚ), (-130878347/2000000000 : ℚ), (6281174361/200000000000 : ℚ), 1⟩,
    ⟨(598663400871/1000000000000 : ℚ), (-331384599/5000000000 : ℚ), (1276274519/40000000000 : ℚ), 1⟩,
    ⟨(37469902351/62500000000 : ℚ), (-668328561/10000000000 : ℚ), (8059979791/250000000000 : ℚ), 1⟩,
    ⟨(23997858863/40000000000 : ℚ), (-671100599/10000000000 : ℚ), (32406167231/1000000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-671446747/10000000000 : ℚ), (16213467607/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (199604306309/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control36.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control36.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate36

-- Control37
namespace DiagonalRamsey.JointInheritedCertificate37
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155783088677/500000000000 : ℚ), (36582142497877/10000000000 : ℚ), (-1141260119108647/1000000000000 : ℚ), 12⟩,
    ⟨(62406798487/200000000000 : ℚ), (4026948550741/10000000000 : ℚ), (-63335109887541/500000000000 : ℚ), 9⟩,
    ⟨(31296849559/100000000000 : ℚ), (1428333742049/10000000000 : ℚ), (-11375792559463/250000000000 : ℚ), 7⟩,
    ⟨(157183717759/500000000000 : ℚ), (357528401107/5000000000 : ℚ), (-23140998606731/1000000000000 : ℚ), 6⟩,
    ⟨(6324548841/20000000000 : ℚ), (423051073867/10000000000 : ℚ), (-13938656452769/1000000000000 : ℚ), 6⟩,
    ⟨(318544034269/1000000000000 : ℚ), (276217885809/10000000000 : ℚ), (-1856130557731/200000000000 : ℚ), 5⟩,
    ⟨(3213116313/10000000000 : ℚ), (192445081433/10000000000 : ℚ), (-1650455317957/250000000000 : ℚ), 5⟩,
    ⟨(1014136143/3125000000 : ℚ), (140378792363/10000000000 : ℚ), (-2460655396619/500000000000 : ℚ), 4⟩,
    ⟨(328172099817/1000000000000 : ℚ), (26488592343/2500000000 : ℚ), (-237400325193/62500000000 : ℚ), 4⟩,
    ⟨(166124221917/500000000000 : ℚ), (82105228673/10000000000 : ℚ), (-1505623092553/500000000000 : ℚ), 4⟩,
    ⟨(16837138877/50000000000 : ℚ), (32483946743/5000000000 : ℚ), (-2438270049897/1000000000000 : ℚ), 3⟩,
    ⟨(85411068423/250000000000 : ℚ), (10457421353/2000000000 : ℚ), (-10041686411/5000000000 : ℚ), 3⟩,
    ⟨(86735281039/250000000000 : ℚ), (42675662847/10000000000 : ℚ), (-838783108427/500000000000 : ℚ), 3⟩,
    ⟨(88155142089/250000000000 : ℚ), (1101343637/312500000 : ℚ), (-88606008903/62500000000 : ℚ), 3⟩,
    ⟨(358668924013/1000000000000 : ℚ), (14698321097/5000000000 : ℚ), (-151232449989/125000000000 : ℚ), 3⟩,
    ⟨(365071620109/1000000000000 : ℚ), (24730401603/10000000000 : ℚ), (-104107009707/100000000000 : ℚ), 3⟩,
    ⟨(371813231987/1000000000000 : ℚ), (20958510477/10000000000 : ℚ), (-112768977363/125000000000 : ℚ), 2⟩,
    ⟨(75775503703/200000000000 : ℚ), (17875399799/10000000000 : ℚ), (-393236189147/500000000000 : ℚ), 2⟩,
    ⟨(386247461207/1000000000000 : ℚ), (1916285723/1250000000 : ℚ), (-344570692209/500000000000 : ℚ), 2⟩,
    ⟨(196952652613/500000000000 : ℚ), (206416587/156250000 : ℚ), (-303244468303/500000000000 : ℚ), 2⟩,
    ⟨(80366520431/200000000000 : ℚ), (2286259993/2000000000 : ℚ), (-535717629727/1000000000000 : ℚ), 2⟩,
    ⟨(410010254441/1000000000000 : ℚ), (9926762651/10000000000 : ℚ), (-237332545783/500000000000 : ℚ), 2⟩,
    ⟨(418418561403/1000000000000 : ℚ), (2161548821/2500000000 : ℚ), (-21081933641/50000000000 : ℚ), 2⟩,
    ⟨(85407453339/200000000000 : ℚ), (3774822853/5000000000 : ℚ), (-93824568337/250000000000 : ℚ), 2⟩,
    ⟨(435845607099/1000000000000 : ℚ), (3302708563/5000000000 : ℚ), (-167285962071/500000000000 : ℚ), 2⟩,
    ⟨(55602795319/125000000000 : ℚ), (2894068613/5000000000 : ℚ), (-298594058141/1000000000000 : ℚ), 2⟩,
    ⟨(7092904801/15625000000 : ℚ), (507733061/1000000000 : ℚ), (-133329878243/500000000000 : ℚ), 2⟩,
    ⟨(57899282727/125000000000 : ℚ), (278521901/625000000 : ℚ), (-29773801363/125000000000 : ℚ), 2⟩,
    ⟨(472545146113/1000000000000 : ℚ), (3911569737/10000000000 : ℚ), (-212707657869/1000000000000 : ℚ), 2⟩,
    ⟨(15061751033/31250000000 : ℚ), (3431763329/10000000000 : ℚ), (-23726672471/125000000000 : ℚ), 2⟩,
    ⟨(49146420281/100000000000 : ℚ), (1503815169/5000000000 : ℚ), (-16917421159/100000000000 : ℚ), 2⟩,
    ⟨(100197359509/200000000000 : ℚ), (2631422637/10000000000 : ℚ), (-9406839217/62500000000 : ℚ), 2⟩,
    ⟨(31907554781/62500000000 : ℚ), (2296653053/10000000000 : ℚ), (-66790694667/500000000000 : ℚ), 1⟩,
    ⟨(520043471231/1000000000000 : ℚ), (124866537/625000000 : ℚ), (-5909397837/50000000000 : ℚ), 1⟩,
    ⟨(264765820493/500000000000 : ℚ), (865223309/5000000000 : ℚ), (-52078204341/500000000000 : ℚ), 1⟩,
    ⟨(67370315991/125000000000 : ℚ), (93155469/625000000 : ℚ), (-2854329539/31250000000 : ℚ), 1⟩,
    ⟨(21932536489/40000000000 : ℚ), (1274655783/10000000000 : ℚ), (-79606712099/1000000000000 : ℚ), 1⟩,
    ⟨(278780883389/500000000000 : ℚ), (270025939/2500000000 : ℚ), (-8606319453/125000000000 : ℚ), 1⟩,
    ⟨(56668531149/100000000000 : ℚ), (904388897/10000000000 : ℚ), (-14743589727/250000000000 : ℚ), 1⟩,
    ⟨(575662066943/1000000000000 : ℚ), (372704727/5000000000 : ℚ), (-3118427689/62500000000 : ℚ), 1⟩,
    ⟨(584470407347/1000000000000 : ℚ), (601351443/10000000000 : ℚ), (-20769671941/500000000000 : ℚ), 1⟩,
    ⟨(296544556319/500000000000 : ℚ), (23532241/500000000 : ℚ), (-6768858413/200000000000 : ℚ), 1⟩,
    ⟨(601497419601/1000000000000 : ℚ), (351927107/10000000000 : ℚ), (-26753941243/1000000000000 : ℚ), 1⟩,
    ⟨(609675071887/1000000000000 : ℚ), (61003271/2500000000 : ℚ), (-5054824853/250000000000 : ℚ), 1⟩,
    ⟨(38600148051/62500000000 : ℚ), (18233681/1250000000 : ℚ), (-443663357/31250000000 : ℚ), 1⟩,
    ⟨(125052042567/200000000000 : ℚ), (56593559/10000000000 : ℚ), (-540604777/62500000000 : ℚ), 1⟩,
    ⟨(632630155527/1000000000000 : ℚ), (-12302223/5000000000 : ℚ), (-1384/390625 : ℚ), 1⟩,
    ⟨(127938888411/200000000000 : ℚ), (-4920837/500000000 : ℚ), (288099277/250000000000 : ℚ), 1⟩,
    ⟨(646436053933/1000000000000 : ℚ), (-165450563/10000000000 : ℚ), (1092585797/200000000000 : ℚ), 1⟩,
    ⟨(652838750029/1000000000000 : ℚ), (-706997/31250000 : ℚ), (9411831317/1000000000000 : ℚ), 1⟩,
    ⟨(329443552843/500000000000 : ℚ), (-140625179/5000000000 : ℚ), (1627463153/125000000000 : ℚ), 1⟩,
    ⟨(332283274943/500000000000 : ℚ), (-165447787/5000000000 : ℚ), (2038096597/125000000000 : ℚ), 1⟩,
    ⟨(13397268007/20000000000 : ℚ), (-375535261/10000000000 : ℚ), (301298917/15625000000 : ℚ), 1⟩,
    ⟨(337382448251/500000000000 : ℚ), (-415485157/10000000000 : ℚ), (5492241677/250000000000 : ℚ), 1⟩,
    ⟨(165834773/244140625 : ℚ), (-56377623/1250000000 : ℚ), (24374746679/1000000000000 : ℚ), 1⟩,
    ⟨(42708473389/62500000000 : ℚ), (-60297817/1250000000 : ℚ), (26511373491/1000000000000 : ℚ), 1⟩,
    ⟨(343492054141/500000000000 : ℚ), (-509777151/10000000000 : ℚ), (7097080873/250000000000 : ℚ), 1⟩,
    ⟨(345098021371/500000000000 : ℚ), (-533382633/10000000000 : ℚ), (30013760937/1000000000000 : ℚ), 1⟩,
    ⟨(692963639773/1000000000000 : ℚ), (-276674859/5000000000 : ℚ), (15697318217/500000000000 : ℚ), 1⟩,
    ⟨(695280231991/1000000000000 : ℚ), (-35612757/625000000 : ℚ), (813419187/25000000000 : ℚ), 1⟩,
    ⟨(174285059631/250000000000 : ℚ), (-582848169/10000000000 : ℚ), (2090306611/62500000000 : ℚ), 1⟩,
    ⟨(174634794613/250000000000 : ℚ), (-592562233/10000000000 : ℚ), (853069771/25000000000 : ℚ), 1⟩,
    ⟨(349736840803/500000000000 : ℚ), (-149751419/2500000000 : ℚ), (34573191341/1000000000000 : ℚ), 1⟩,
    ⟨(699941496687/1000000000000 : ℚ), (-602217667/10000000000 : ℚ), (34797936721/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-602618711/10000000000 : ℚ), (278608069/8000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (33646911237/200000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control37.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control37.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate37

-- Control38
namespace DiagonalRamsey.JointInheritedCertificate38
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19847227503/500000000000 : ℚ), (435419942829/400000000 : ℚ), (-8665674749929/200000000000 : ℚ), 10⟩,
    ⟨(39891995257/1000000000000 : ℚ), (1151555985123/10000000000 : ℚ), (-290909637897/62500000000 : ℚ), 7⟩,
    ⟨(20139742199/500000000000 : ℚ), (47292555263/1250000000 : ℚ), (-779977232987/500000000000 : ℚ), 5⟩,
    ⟨(20421015719/500000000000 : ℚ), (167609448841/10000000000 : ℚ), (-706497443817/1000000000000 : ℚ), 5⟩,
    ⟨(41558018011/1000000000000 : ℚ), (41008925529/5000000000 : ℚ), (-354348905087/1000000000000 : ℚ), 4⟩,
    ⟨(42399929153/1000000000000 : ℚ), (39279503053/10000000000 : ℚ), (-35032137677/200000000000 : ℚ), 4⟩,
    ⟨(10833852673/250000000000 : ℚ), (15008621641/10000000000 : ℚ), (-7122924493/100000000000 : ℚ), 3⟩,
    ⟨(44328512597/1000000000000 : ℚ), (-54056337/10000000000 : ℚ), (-131652783/25000000000 : ℚ), 3⟩,
    ⟨(45341070519/1000000000000 : ℚ), (-501207939/500000000 : ℚ), (9850566581/250000000000 : ℚ), 3⟩,
    ⟨(5791771553/125000000000 : ℚ), (-4234788293/2500000000 : ℚ), (17770339721/250000000000 : ℚ), 3⟩,
    ⟨(47269653963/1000000000000 : ℚ), (-10943645789/5000000000 : ℚ), (94230251401/1000000000000 : ℚ), 2⟩,
    ⟨(9622313021/200000000000 : ℚ), (-12740755053/5000000000 : ℚ), (27841648111/250000000000 : ℚ), 2⟩,
    ⟨(48827551677/1000000000000 : ℚ), (-44926583/16000000 : ℚ), (24790981609/200000000000 : ℚ), 2⟩,
    ⟨(24695049359/500000000000 : ℚ), (-5978356851/2000000000 : ℚ), (132855880499/1000000000000 : ℚ), 2⟩,
    ⟨(49777587859/1000000000000 : ℚ), (-31043925107/10000000000 : ℚ), (13856840427/100000000000 : ℚ), 2⟩,
    ⟨(4997512811/100000000000 : ℚ), (-31604601631/10000000000 : ℚ), (141364826431/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31673999181/10000000000 : ℚ), (141711727823/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (243801060407/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control38.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control38.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate38
