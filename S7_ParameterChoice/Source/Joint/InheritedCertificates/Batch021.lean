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

-- Control189
namespace DiagonalRamsey.JointInheritedCertificate189
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(113510447981/500000000000 : ℚ), (4415902177459/5000000000 : ℚ), (-201171010230091/1000000000000 : ℚ), 11⟩,
    ⟨(114046977121/500000000000 : ℚ), (23938165769/250000000 : ℚ), (-22253030212033/1000000000000 : ℚ), 8⟩,
    ⟨(46045947333/200000000000 : ℚ), (165981700307/5000000000 : ℚ), (-3969760170433/500000000000 : ℚ), 6⟩,
    ⟨(233407674477/1000000000000 : ℚ), (161588342081/10000000000 : ℚ), (-998976629841/250000000000 : ℚ), 5⟩,
    ⟨(237597162401/1000000000000 : ℚ), (92569336499/10000000000 : ℚ), (-593226255019/250000000000 : ℚ), 5⟩,
    ⟨(121378926689/500000000000 : ℚ), (14577039413/2500000000 : ℚ), (-155121194487/100000000000 : ℚ), 4⟩,
    ⟨(62210011783/250000000000 : ℚ), (312389011/80000000 : ℚ), (-33702153633/31250000000 : ℚ), 4⟩,
    ⟨(255785168813/1000000000000 : ℚ), (27271357763/10000000000 : ℚ), (-390852537659/500000000000 : ℚ), 4⟩,
    ⟨(131763166551/500000000000 : ℚ), (19616952797/10000000000 : ℚ), (-583201669319/1000000000000 : ℚ), 3⟩,
    ⟨(67997247089/250000000000 : ℚ), (14405978381/10000000000 : ℚ), (-443836884011/1000000000000 : ℚ), 3⟩,
    ⟨(140545817289/500000000000 : ℚ), (5362942757/5000000000 : ℚ), (-342178094131/1000000000000 : ℚ), 3⟩,
    ⟨(290746608309/1000000000000 : ℚ), (8047950963/10000000000 : ℚ), (-66421892459/250000000000 : ℚ), 3⟩,
    ⟨(150430463437/500000000000 : ℚ), (6049851137/10000000000 : ℚ), (-8265487167/40000000000 : ℚ), 3⟩,
    ⟨(311337183857/1000000000000 : ℚ), (2263411647/5000000000 : ℚ), (-80028069379/500000000000 : ℚ), 2⟩,
    ⟨(12882979487/40000000000 : ℚ), (26754333/80000000 : ℚ), (-122632574341/1000000000000 : ℚ), 2⟩,
    ⟨(332969430729/1000000000000 : ℚ), (150703579/625000000 : ℚ), (-23023472841/250000000000 : ℚ), 2⟩,
    ⟨(68783418051/200000000000 : ℚ), (1664685893/10000000000 : ℚ), (-6684141701/100000000000 : ℚ), 2⟩,
    ⟨(354812033809/1000000000000 : ℚ), (1060002757/10000000000 : ℚ), (-45726657831/1000000000000 : ℚ), 2⟩,
    ⟨(365549337127/1000000000000 : ℚ), (565119553/10000000000 : ℚ), (-6977428937/250000000000 : ℚ), 2⟩,
    ⟨(37602559411/100000000000 : ℚ), (78288267/5000000000 : ℚ), (-3191772437/250000000000 : ℚ), 2⟩,
    ⟨(15445596507/40000000000 : ℚ), (-45752349/2500000000 : ℚ), (16990069/100000000000 : ℚ), 2⟩,
    ⟨(197897443203/500000000000 : ℚ), (-466668333/10000000000 : ℚ), (1125717359/100000000000 : ℚ), 2⟩,
    ⟨(101224383157/250000000000 : ℚ), (-704263181/10000000000 : ℚ), (10383596811/500000000000 : ℚ), 2⟩,
    ⟨(206680093941/500000000000 : ℚ), (-112914839/1250000000 : ℚ), (14454882713/500000000000 : ℚ), 2⟩,
    ⟨(421101352171/1000000000000 : ℚ), (-1069609423/10000000000 : ℚ), (35847021567/1000000000000 : ℚ), 2⟩,
    ⟨(107011618463/250000000000 : ℚ), (-1207581403/10000000000 : ℚ), (41704376247/1000000000000 : ℚ), 2⟩,
    ⟨(217064333803/500000000000 : ℚ), (-264131603/2000000000 : ℚ), (2911163837/62500000000 : ℚ), 2⟩,
    ⟨(439289358583/1000000000000 : ℚ), (-1411462843/10000000000 : ℚ), (50543956451/1000000000000 : ℚ), 2⟩,
    ⟨(443478846507/1000000000000 : ℚ), (-296396533/2000000000 : ℚ), (13414123267/250000000000 : ℚ), 2⟩,
    ⟨(446656784319/1000000000000 : ℚ), (-306737201/2000000000 : ℚ), (13989400657/250000000000 : ℚ), 2⟩,
    ⟨(224396283371/500000000000 : ℚ), (-391901983/2500000000 : ℚ), (57476359447/1000000000000 : ℚ), 2⟩,
    ⟨(224932812511/500000000000 : ℚ), (-792204159/5000000000 : ℚ), (7278906031/125000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1586500923/10000000000 : ℚ), (58325401389/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (340374717379/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control189.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control189.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate189

-- Control190
namespace DiagonalRamsey.JointInheritedCertificate190
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(233130961283/1000000000000 : ℚ), (4457173882589/5000000000 : ℚ), (-208510274373451/1000000000000 : ℚ), 11⟩,
    ⟨(117111369687/500000000000 : ℚ), (966638120283/10000000000 : ℚ), (-23064946057249/1000000000000 : ℚ), 8⟩,
    ⟨(47279156227/200000000000 : ℚ), (167600518739/5000000000 : ℚ), (-4114626401439/500000000000 : ℚ), 6⟩,
    ⟨(59907289747/250000000000 : ℚ), (40802135821/2500000000 : ℚ), (-4141777764617/1000000000000 : ℚ), 5⟩,
    ⟨(48778346747/200000000000 : ℚ), (23381217419/2500000000 : ℚ), (-1229790155427/500000000000 : ℚ), 5⟩,
    ⟨(62285613613/250000000000 : ℚ), (58928197709/10000000000 : ℚ), (-1607928770657/1000000000000 : ℚ), 4⟩,
    ⟨(63832688457/250000000000 : ℚ), (39476651469/10000000000 : ℚ), (-44718466973/40000000000 : ℚ), 4⟩,
    ⟨(65599258789/250000000000 : ℚ), (27579813931/10000000000 : ℚ), (-202599437309/250000000000 : ℚ), 4⟩,
    ⟨(135136623143/500000000000 : ℚ), (9923173351/5000000000 : ℚ), (-604682799867/1000000000000 : ℚ), 3⟩,
    ⟨(278883534997/1000000000000 : ℚ), (7290359503/5000000000 : ℚ), (-115066904683/250000000000 : ℚ), 3⟩,
    ⟨(18009061219/62500000000 : ℚ), (10861546067/10000000000 : ℚ), (-177468734531/500000000000 : ℚ), 3⟩,
    ⟨(37246048379/125000000000 : ℚ), (1630984463/2000000000 : ℚ), (-137848477959/500000000000 : ℚ), 3⟩,
    ⟨(308259152797/1000000000000 : ℚ), (1533829771/2500000000 : ℚ), (-21453568979/100000000000 : ℚ), 3⟩,
    ⟨(3189181711/10000000000 : ℚ), (574487967/1250000000 : ℚ), (-83150585289/500000000000 : ℚ), 2⟩,
    ⟨(164921394883/500000000000 : ℚ), (1700357441/5000000000 : ℚ), (-797251753/6250000000 : ℚ), 2⟩,
    ⟨(85231949687/250000000000 : ℚ), (2457797849/10000000000 : ℚ), (-95957054211/1000000000000 : ℚ), 2⟩,
    ⟨(352066443347/1000000000000 : ℚ), (1703442011/10000000000 : ℚ), (-69833998641/1000000000000 : ℚ), 2⟩,
    ⟨(45393931541/125000000000 : ℚ), (1092583593/10000000000 : ℚ), (-48000193579/1000000000000 : ℚ), 2⟩,
    ⟨(74815214199/200000000000 : ℚ), (296387043/5000000000 : ℚ), (-14792274911/500000000000 : ℚ), 2⟩,
    ⟨(384735089297/1000000000000 : ℚ), (180284167/10000000000 : ℚ), (-13940254089/1000000000000 : ℚ), 2⟩,
    ⟨(197512927531/500000000000 : ℚ), (-40618441/2500000000 : ℚ), (-29047701/50000000000 : ℚ), 2⟩,
    ⟨(404849262591/1000000000000 : ℚ), (-448686737/10000000000 : ℚ), (10862826761/1000000000000 : ℚ), 2⟩,
    ⟨(414110707097/1000000000000 : ℚ), (-344169607/5000000000 : ℚ), (1292128601/62500000000 : ℚ), 2⟩,
    ⟨(422720995809/1000000000000 : ℚ), (-88905081/1000000000 : ℚ), (29070744309/1000000000000 : ℚ), 2⟩,
    ⟨(215298603469/500000000000 : ℚ), (-264167597/2500000000 : ℚ), (18110727777/500000000000 : ℚ), 2⟩,
    ⟨(437663488267/1000000000000 : ℚ), (-1195702459/10000000000 : ℚ), (21128333549/500000000000 : ℚ), 2⟩,
    ⟨(221925893821/500000000000 : ℚ), (-1309616211/10000000000 : ℚ), (23638572751/500000000000 : ℚ), 2⟩,
    ⟨(449102508359/1000000000000 : ℚ), (-350267733/2500000000 : ℚ), (51360190447/1000000000000 : ℚ), 2⟩,
    ⟨(226682541553/500000000000 : ℚ), (-1472080833/10000000000 : ℚ), (54564298123/1000000000000 : ℚ), 2⟩,
    ⟨(456598460959/1000000000000 : ℚ), (-304826991/2000000000 : ℚ), (28466312461/500000000000 : ℚ), 2⟩,
    ⟨(458771502721/1000000000000 : ℚ), (-311656593/2000000000 : ℚ), (11699103233/200000000000 : ℚ), 2⟩,
    ⟨(459863280811/1000000000000 : ℚ), (-1575194103/10000000000 : ℚ), (2963613633/50000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1577300447/10000000000 : ℚ), (11873830023/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (336626374287/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control190.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control190.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate190

-- Control191
namespace DiagonalRamsey.JointInheritedCertificate191
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29916698517/125000000000 : ℚ), (9001229355449/10000000000 : ℚ), (-6754308084553/31250000000 : ℚ), 11⟩,
    ⟨(240443640597/1000000000000 : ℚ), (195245873187/2000000000 : ℚ), (-2390879358737/100000000000 : ℚ), 8⟩,
    ⟨(242653055107/1000000000000 : ℚ), (169304889117/5000000000 : ℚ), (-8530406360923/1000000000000 : ℚ), 6⟩,
    ⟨(245940553797/1000000000000 : ℚ), (164914836911/10000000000 : ℚ), (-4293419815901/1000000000000 : ℚ), 5⟩,
    ⟨(7821077383/31250000000 : ℚ), (47265769303/5000000000 : ℚ), (-2549701839137/1000000000000 : ℚ), 5⟩,
    ⟨(255613084443/1000000000000 : ℚ), (930964173/156250000 : ℚ), (-20836448087/12500000000 : ℚ), 4⟩,
    ⟨(130952482321/500000000000 : ℚ), (1247750429/312500000 : ℚ), (-1159049057561/1000000000000 : ℚ), 4⟩,
    ⟨(16818095163/62500000000 : ℚ), (27905278419/10000000000 : ℚ), (-840261921767/1000000000000 : ℚ), 4⟩,
    ⟨(277097567119/1000000000000 : ℚ), (20088546393/10000000000 : ℚ), (-125410685813/200000000000 : ℚ), 3⟩,
    ⟨(28585197633/100000000000 : ℚ), (14765344461/10000000000 : ℚ), (-119347727497/250000000000 : ℚ), 3⟩,
    ⟨(147634220247/500000000000 : ℚ), (11004988773/10000000000 : ℚ), (-92061697667/250000000000 : ℚ), 3⟩,
    ⟨(152628136957/500000000000 : ℚ), (2067029979/2500000000 : ℚ), (-286150025547/1000000000000 : ℚ), 3⟩,
    ⟨(315719288293/1000000000000 : ℚ), (3112918189/5000000000 : ℚ), (-222796868669/1000000000000 : ℚ), 3⟩,
    ⟨(65311343817/200000000000 : ℚ), (933825471/2000000000 : ℚ), (-172845950699/1000000000000 : ℚ), 2⟩,
    ⟨(67532839181/200000000000 : ℚ), (3460573431/10000000000 : ℚ), (-6636906503/50000000000 : ℚ), 2⟩,
    ⟨(348934747681/1000000000000 : ℚ), (626803539/2500000000 : ℚ), (-25007694009/250000000000 : ℚ), 2⟩,
    ⟨(360259832837/1000000000000 : ℚ), (109039201/625000000 : ℚ), (-18251310537/250000000000 : ℚ), 2⟩,
    ⟨(371530384613/1000000000000 : ℚ), (225446843/2000000000 : ℚ), (-50426491227/1000000000000 : ℚ), 2⟩,
    ⟨(382637861433/1000000000000 : ℚ), (622207547/10000000000 : ℚ), (-15695496139/500000000000 : ℚ), 2⟩,
    ⟨(15739011689/40000000000 : ℚ), (205534139/10000000000 : ℚ), (-380691929/25000000000 : ℚ), 2⟩,
    ⟨(100984576651/250000000000 : ℚ), (-1405889/100000000 : ℚ), (-357949939/250000000000 : ℚ), 2⟩,
    ⟨(51740767503/125000000000 : ℚ), (-214756919/5000000000 : ℚ), (5190117417/500000000000 : ℚ), 2⟩,
    ⟨(105835651047/250000000000 : ℚ), (-41959573/625000000 : ℚ), (10251170931/500000000000 : ℚ), 2⟩,
    ⟨(432097013399/1000000000000 : ℚ), (-873826431/10000000000 : ℚ), (14580539373/500000000000 : ℚ), 2⟩,
    ⟨(440105057911/1000000000000 : ℚ), (-52143043/500000000 : ℚ), (36531729843/1000000000000 : ℚ), 2⟩,
    ⟨(111822403969/250000000000 : ℚ), (-1183022567/10000000000 : ℚ), (42750057531/1000000000000 : ℚ), 2⟩,
    ⟨(18143259843/40000000000 : ℚ), (-1297829077/10000000000 : ℚ), (23960491629/500000000000 : ℚ), 2⟩,
    ⟨(229460052131/500000000000 : ℚ), (-1389977361/10000000000 : ℚ), (26062525467/500000000000 : ℚ), 2⟩,
    ⟨(231627013361/500000000000 : ℚ), (-1461510589/10000000000 : ℚ), (55423253579/1000000000000 : ℚ), 2⟩,
    ⟨(466541525411/1000000000000 : ℚ), (-756969739/5000000000 : ℚ), (28930309477/500000000000 : ℚ), 2⟩,
    ⟨(468750939921/1000000000000 : ℚ), (-1548329117/10000000000 : ℚ), (7433603153/125000000000 : ℚ), 2⟩,
    ⟨(234930496191/500000000000 : ℚ), (-31307173/200000000 : ℚ), (1883375933/31250000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2449187/15625000 : ℚ), (60367703509/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (83204320803/250000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control191.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control191.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate191

-- Control192
namespace DiagonalRamsey.JointInheritedCertificate192
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(245567328709/1000000000000 : ℚ), (9087663290087/10000000000 : ℚ), (-22389058995311/100000000000 : ℚ), 11⟩,
    ⟨(246695505809/1000000000000 : ℚ), (985770877499/10000000000 : ℚ), (-24766448374801/1000000000000 : ℚ), 8⟩,
    ⟨(31117624381/125000000000 : ℚ), (342000605067/10000000000 : ℚ), (-1767292054447/200000000000 : ℚ), 6⟩,
    ⟨(985477231/3906250000 : ℚ), (166611970643/10000000000 : ℚ), (-2223754356529/500000000000 : ℚ), 5⟩,
    ⟨(256686856721/1000000000000 : ℚ), (9553263671/1000000000 : ℚ), (-2641261026979/1000000000000 : ℚ), 5⟩,
    ⟨(262112632273/1000000000000 : ℚ), (470558197/78125000 : ℚ), (-863415125729/500000000000 : ℚ), 4⟩,
    ⟨(4195425697/15625000000 : ℚ), (40376633717/10000000000 : ℚ), (-1200770785509/1000000000000 : ℚ), 4⟩,
    ⟨(275809110113/1000000000000 : ℚ), (14114316233/5000000000 : ℚ), (-870577158401/1000000000000 : ℚ), 4⟩,
    ⟨(35493488479/125000000000 : ℚ), (813161921/400000000 : ℚ), (-129950634681/200000000000 : ℚ), 3⟩,
    ⟨(292845256693/1000000000000 : ℚ), (14948552569/10000000000 : ℚ), (-247379172419/500000000000 : ℚ), 3⟩,
    ⟨(302415470363/1000000000000 : ℚ), (5573605753/5000000000 : ℚ), (-38173891351/100000000000 : ℚ), 3⟩,
    ⟨(312566382453/1000000000000 : ℚ), (4190120007/5000000000 : ℚ), (-296740368081/1000000000000 : ℚ), 3⟩,
    ⟨(323200234131/1000000000000 : ℚ), (6315381349/10000000000 : ℚ), (-231160781869/1000000000000 : ℚ), 3⟩,
    ⟨(334214615591/1000000000000 : ℚ), (1185364477/2500000000 : ℚ), (-179466805997/1000000000000 : ℚ), 2⟩,
    ⟨(2159396577/6250000000 : ℚ), (3519599817/10000000000 : ℚ), (-8623199693/62500000000 : ℚ), 2⟩,
    ⟨(44619753331/125000000000 : ℚ), (638961503/2500000000 : ℚ), (-65089511/625000000 : ℚ), 2⟩,
    ⟨(368468024763/1000000000000 : ℚ), (446266521/2500000000 : ℚ), (-9525257051/125000000000 : ℚ), 2⟩,
    ⟨(379922599091/1000000000000 : ℚ), (1161169537/10000000000 : ℚ), (-13216954467/250000000000 : ℚ), 2⟩,
    ⟨(19560571791/50000000000 : ℚ), (130190291/2000000000 : ℚ), (-16601990171/500000000000 : ℚ), 2⟩,
    ⟨(402225817281/1000000000000 : ℚ), (23011629/1000000000 : ℚ), (-3302961173/200000000000 : ℚ), 2⟩,
    ⟨(206429834479/500000000000 : ℚ), (-119353243/10000000000 : ℚ), (-455366871/200000000000 : ℚ), 2⟩,
    ⟨(423010581049/1000000000000 : ℚ), (-410974023/10000000000 : ℚ), (1238487309/125000000000 : ℚ), 2⟩,
    ⟨(432580794719/1000000000000 : ℚ), (-327493067/5000000000 : ℚ), (2543056523/125000000000 : ℚ), 2⟩,
    ⟨(22073907179/50000000000 : ℚ), (-171841749/2000000000 : ℚ), (5853618999/200000000000 : ℚ), 2⟩,
    ⟨(449616941299/1000000000000 : ℚ), (-514823637/5000000000 : ℚ), (36860956501/1000000000000 : ℚ), 2⟩,
    ⟨(456918806803/1000000000000 : ℚ), (-292732327/2500000000 : ℚ), (10816047449/250000000000 : ℚ), 2⟩,
    ⟨(231656709569/500000000000 : ℚ), (-1286620641/10000000000 : ℚ), (48586956207/1000000000000 : ℚ), 2⟩,
    ⟨(468739194691/1000000000000 : ℚ), (-1379455889/10000000000 : ℚ), (52913111963/1000000000000 : ℚ), 2⟩,
    ⟨(118285970069/250000000000 : ℚ), (-1451507167/10000000000 : ℚ), (7038275131/125000000000 : ℚ), 2⟩,
    ⟨(119121264091/250000000000 : ℚ), (-75215343/500000000 : ℚ), (3675822727/62500000000 : ℚ), 2⟩,
    ⟨(239365272801/500000000000 : ℚ), (-384733871/2500000000 : ℚ), (483736329/8000000000 : ℚ), 2⟩,
    ⟨(479858722703/1000000000000 : ℚ), (-1556082089/10000000000 : ℚ), (30644433581/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1558217641/10000000000 : ℚ), (61391358579/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (164489706499/500000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control192.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control192.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate192

-- Control193
namespace DiagonalRamsey.JointInheritedCertificate193
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25824837821/100000000000 : ℚ), (18536727283/20000000 : ℚ), (-24012014525149/100000000000 : ℚ), 11⟩,
    ⟨(259411776819/1000000000000 : ℚ), (1005719780761/10000000000 : ℚ), (-13280940317823/500000000000 : ℚ), 8⟩,
    ⟨(261727369873/1000000000000 : ℚ), (34909084277/1000000000 : ℚ), (-592323416073/62500000000 : ℚ), 6⟩,
    ⟨(16573303559/62500000000 : ℚ), (21270164117/1250000000 : ℚ), (-59626269/12500000 : ℚ), 5⟩,
    ⟨(67428764027/250000000000 : ℚ), (97626770739/10000000000 : ℚ), (-708239038399/250000000000 : ℚ), 5⟩,
    ⟨(55062044701/200000000000 : ℚ), (61590949177/10000000000 : ℚ), (-463070627111/250000000000 : ℚ), 4⟩,
    ⟨(140952237307/500000000000 : ℚ), (41315568351/10000000000 : ℚ), (-1288141207569/1000000000000 : ℚ), 4⟩,
    ⟨(36179287899/125000000000 : ℚ), (28905579831/10000000000 : ℚ), (-467036186101/500000000000 : ℚ), 4⟩,
    ⟨(148913596437/500000000000 : ℚ), (5208168479/2500000000 : ℚ), (-697309693571/1000000000000 : ℚ), 3⟩,
    ⟨(307002315543/1000000000000 : ℚ), (38330723/25000000 : ℚ), (-531156219881/1000000000000 : ℚ), 3⟩,
    ⟨(158435654877/500000000000 : ℚ), (11445153841/10000000000 : ℚ), (-25626790093/62500000000 : ℚ), 3⟩,
    ⟨(20458695731/62500000000 : ℚ), (4307571297/5000000000 : ℚ), (-318960336971/1000000000000 : ℚ), 3⟩,
    ⟨(169152485261/500000000000 : ℚ), (3251492893/5000000000 : ℚ), (-49745027483/200000000000 : ℚ), 3⟩,
    ⟨(34966321921/100000000000 : ℚ), (2446488511/5000000000 : ℚ), (-38677553081/200000000000 : ℚ), 2⟩,
    ⟨(72260898323/200000000000 : ℚ), (1821607437/5000000000 : ℚ), (-74496379011/500000000000 : ℚ), 2⟩,
    ⟨(186558337961/500000000000 : ℚ), (2657646873/10000000000 : ℚ), (-56412451301/500000000000 : ℚ), 2⟩,
    ⟨(384986014337/1000000000000 : ℚ), (373932499/2000000000 : ℚ), (-82973177051/1000000000000 : ℚ), 2⟩,
    ⟨(396798198643/1000000000000 : ℚ), (123210069/1000000000 : ℚ), (-7257965513/125000000000 : ℚ), 2⟩,
    ⟨(408439471049/1000000000000 : ℚ), (5687741/80000000 : ℚ), (-18545446943/500000000000 : ℚ), 2⟩,
    ⟨(419797719737/1000000000000 : ℚ), (70344243/2500000000 : ℚ), (-19307234619/1000000000000 : ℚ), 2⟩,
    ⟨(430763558563/1000000000000 : ℚ), (-1878427/250000000 : ℚ), (-4150038417/1000000000000 : ℚ), 2⟩,
    ⟨(88246276101/200000000000 : ℚ), (-372435923/10000000000 : ℚ), (4404406973/500000000000 : ℚ), 2⟩,
    ⟨(90220074943/200000000000 : ℚ), (-155256703/2500000000 : ℚ), (19897787531/1000000000000 : ℚ), 2⟩,
    ⟨(57534437173/125000000000 : ℚ), (-207234413/2500000000 : ℚ), (14685230799/500000000000 : ℚ), 2⟩,
    ⟨(234334193533/500000000000 : ℚ), (-6264611/62500000 : ℚ), (7484673689/200000000000 : ℚ), 2⟩,
    ⟨(119049553911/250000000000 : ℚ), (-11459837/100000000 : ℚ), (8841803549/200000000000 : ℚ), 2⟩,
    ⟨(482792466753/1000000000000 : ℚ), (-315885649/2500000000 : ℚ), (24922756067/500000000000 : ℚ), 2⟩,
    ⟨(9767752683/20000000000 : ℚ), (-339457039/2500000000 : ℚ), (2721185101/50000000000 : ℚ), 2⟩,
    ⟨(98585966663/200000000000 : ℚ), (-28619467/200000000 : ℚ), (7251565497/125000000000 : ℚ), 2⟩,
    ⟨(248187660193/500000000000 : ℚ), (-371139037/2500000000 : ℚ), (60662965177/1000000000000 : ℚ), 2⟩,
    ⟨(498690913439/1000000000000 : ℚ), (-1519689537/10000000000 : ℚ), (62410954303/1000000000000 : ℚ), 2⟩,
    ⟨(31240894503/62500000000 : ℚ), (-61483337/400000000 : ℚ), (63279381843/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1539249651/10000000000 : ℚ), (15846919347/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (160576500533/500000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control193.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control193.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate193

-- Control194
namespace DiagonalRamsey.JointInheritedCertificate194
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(271233376929/1000000000000 : ℚ), (9460668816811/10000000000 : ℚ), (-257411047083567/1000000000000 : ℚ), 11⟩,
    ⟨(27243053433/100000000000 : ℚ), (1026951698457/10000000000 : ℚ), (-14237380108131/500000000000 : ℚ), 8⟩,
    ⟨(68703329963/250000000000 : ℚ), (17831919269/500000000 : ℚ), (-5079913131653/500000000000 : ℚ), 6⟩,
    ⟨(17397424123/62500000000 : ℚ), (173940515039/10000000000 : ℚ), (-1278457531243/250000000000 : ℚ), 5⟩,
    ⟨(283032787901/1000000000000 : ℚ), (49928608857/5000000000 : ℚ), (-3037229505147/1000000000000 : ℚ), 5⟩,
    ⟨(288790312457/1000000000000 : ℚ), (63039464007/10000000000 : ℚ), (-1985984037393/1000000000000 : ℚ), 4⟩,
    ⟨(295575911527/1000000000000 : ℚ), (21158185677/5000000000 : ℚ), (-345318529027/250000000000 : ℚ), 4⟩,
    ⟨(75831059021/250000000000 : ℚ), (29627421109/10000000000 : ℚ), (-1001772929049/1000000000000 : ℚ), 4⟩,
    ⟨(12478426621/40000000000 : ℚ), (21369906541/10000000000 : ℚ), (-187008506463/250000000000 : ℚ), 3⟩,
    ⟨(160701013157/500000000000 : ℚ), (787088711/500000000 : ℚ), (-569997563463/1000000000000 : ℚ), 3⟩,
    ⟨(165778696493/500000000000 : ℚ), (11763176787/10000000000 : ℚ), (-440237557577/1000000000000 : ℚ), 3⟩,
    ⟨(10697780119/31250000000 : ℚ), (2216480799/2500000000 : ℚ), (-342709058489/1000000000000 : ℚ), 3⟩,
    ⟨(44201625333/125000000000 : ℚ), (6703282741/10000000000 : ℚ), (-133760395323/500000000000 : ℚ), 3⟩,
    ⟨(365300838093/1000000000000 : ℚ), (5054731087/10000000000 : ℚ), (-104154606303/500000000000 : ℚ), 2⟩,
    ⟨(377279909849/1000000000000 : ℚ), (235946359/625000000 : ℚ), (-40208260803/250000000000 : ℚ), 2⟩,
    ⟨(389434852923/1000000000000 : ℚ), (2766237277/10000000000 : ℚ), (-122180455821/1000000000000 : ℚ), 2⟩,
    ⟨(40164860857/100000000000 : ℚ), (244979049/1250000000 : ℚ), (-4515081637/50000000000 : ℚ), 2⟩,
    ⟨(103450887911/250000000000 : ℚ), (1307626847/10000000000 : ℚ), (-63722525553/1000000000000 : ℚ), 2⟩,
    ⟨(2128913117/5000000000 : ℚ), (193696779/2500000000 : ℚ), (-41363746543/1000000000000 : ℚ), 2⟩,
    ⟨(437470458829/1000000000000 : ℚ), (20987367/625000000 : ℚ), (-5605663629/250000000000 : ℚ), 2⟩,
    ⟨(89750899537/200000000000 : ℚ), (-14142221/5000000000 : ℚ), (-3147314247/500000000000 : ℚ), 2⟩,
    ⟨(459526068507/1000000000000 : ℚ), (-165844183/5000000000 : ℚ), (1870169861/250000000000 : ℚ), 2⟩,
    ⟨(469681435179/1000000000000 : ℚ), (-29260303/500000000 : ℚ), (3851354811/200000000000 : ℚ), 2⟩,
    ⟨(7486293687/15625000000 : ℚ), (-797088183/10000000000 : ℚ), (29306846529/1000000000000 : ℚ), 2⟩,
    ⟨(48775922541/100000000000 : ℚ), (-486839557/5000000000 : ℚ), (2365179763/62500000000 : ℚ), 2⟩,
    ⟨(247753774983/500000000000 : ℚ), (-559936651/5000000000 : ℚ), (45029570083/1000000000000 : ℚ), 2⟩,
    ⟨(125573287259/250000000000 : ℚ), (-154930789/1250000000 : ℚ), (1593582793/31250000000 : ℚ), 2⟩,
    ⟨(63506334199/125000000000 : ℚ), (-667648287/5000000000 : ℚ), (55836499771/1000000000000 : ℚ), 2⟩,
    ⟨(20508987021/40000000000 : ℚ), (-1409622309/10000000000 : ℚ), (1192597531/20000000000 : ℚ), 2⟩,
    ⟨(516270141641/1000000000000 : ℚ), (-1464050411/10000000000 : ℚ), (31215070021/500000000000 : ℚ), 2⟩,
    ⟨(518652927163/1000000000000 : ℚ), (-749864369/5000000000 : ℚ), (32138171061/500000000000 : ℚ), 2⟩,
    ⟨(129962521141/250000000000 : ℚ), (-758694807/5000000000 : ℚ), (6519338403/100000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-759794479/5000000000 : ℚ), (65307733411/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (313113265991/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control194.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control194.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate194

-- Control195
namespace DiagonalRamsey.JointInheritedCertificate195
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291328699981/1000000000000 : ℚ), (9773757712497/10000000000 : ℚ), (-71401481397249/250000000000 : ℚ), 11⟩,
    ⟨(292573522367/1000000000000 : ℚ), (530761476727/5000000000 : ℚ), (-3159401401129/100000000000 : ℚ), 8⟩,
    ⟨(295051178819/1000000000000 : ℚ), (92232633/2500000 : ℚ), (-2254610930033/200000000000 : ℚ), 6⟩,
    ⟨(298737808151/1000000000000 : ℚ), (90048700543/5000000000 : ℚ), (-226976359483/40000000000 : ℚ), 5⟩,
    ⟨(151798953053/500000000000 : ℚ), (1293655179/125000000 : ℚ), (-842603738679/250000000000 : ℚ), 5⟩,
    ⟨(154792333643/500000000000 : ℚ), (13080273133/2000000000 : ℚ), (-1763279629/800000000 : ℚ), 4⟩,
    ⟨(316640435907/1000000000000 : ℚ), (21974539131/5000000000 : ℚ), (-766622242299/500000000000 : ℚ), 4⟩,
    ⟨(16234863053/50000000000 : ℚ), (15402823523/5000000000 : ℚ), (-278070190429/250000000000 : ℚ), 4⟩,
    ⟨(166838775557/500000000000 : ℚ), (4449450231/2000000000 : ℚ), (-830869178623/1000000000000 : ℚ), 3⟩,
    ⟨(42936852621/125000000000 : ℚ), (3282161171/2000000000 : ℚ), (-316733146137/500000000000 : ℚ), 3⟩,
    ⟨(177027262473/500000000000 : ℚ), (12282972553/10000000000 : ℚ), (-97928277387/200000000000 : ℚ), 3⟩,
    ⟨(182627483663/500000000000 : ℚ), (9275922139/10000000000 : ℚ), (-47698889533/125000000000 : ℚ), 3⟩,
    ⟨(15079531269/40000000000 : ℚ), (3515390747/5000000000 : ℚ), (-4661556153/15625000000 : ℚ), 3⟩,
    ⟨(389141469911/1000000000000 : ℚ), (5319185869/10000000000 : ℚ), (-58206212107/250000000000 : ℚ), 2⟩,
    ⟨(10039937251/25000000000 : ℚ), (3990760651/10000000000 : ℚ), (-90169713063/500000000000 : ℚ), 2⟩,
    ⟨(207118191913/500000000000 : ℚ), (588721529/2000000000 : ℚ), (-137650770263/1000000000000 : ℚ), 2⟩,
    ⟨(53367053977/125000000000 : ℚ), (2106978627/10000000000 : ℚ), (-51241298581/500000000000 : ℚ), 2⟩,
    ⟨(219787662801/500000000000 : ℚ), (1430719001/10000000000 : ℚ), (-36598664509/500000000000 : ℚ), 2⟩,
    ⟨(452031345731/1000000000000 : ℚ), (878628027/10000000000 : ℚ), (-6074396451/125000000000 : ℚ), 2⟩,
    ⟨(464184533917/1000000000000 : ℚ), (6627591/156250000 : ℚ), (-13891655779/500000000000 : ℚ), 2⟩,
    ⟨(118979462079/250000000000 : ℚ), (2975641/625000000 : ℚ), (-10088595321/1000000000000 : ℚ), 2⟩,
    ⟨(60889786337/125000000000 : ℚ), (-5317319/200000000 : ℚ), (2501037009/500000000000 : ℚ), 2⟩,
    ⟨(248838997337/500000000000 : ℚ), (-8242499/156250000 : ℚ), (715329289/40000000000 : ℚ), 2⟩,
    ⟨(31718454033/62500000000 : ℚ), (-745966263/10000000000 : ℚ), (28860253553/1000000000000 : ℚ), 2⟩,
    ⟨(258237777291/500000000000 : ℚ), (-185567121/2000000000 : ℚ), (4771313281/125000000000 : ℚ), 2⟩,
    ⟨(104906475947/200000000000 : ℚ), (-215649637/2000000000 : ℚ), (22999390733/500000000000 : ℚ), 2⟩,
    ⟨(132897037089/250000000000 : ℚ), (-15014467/125000000 : ℚ), (1640270901/31250000000 : ℚ), 2⟩,
    ⟨(107514981907/200000000000 : ℚ), (-649800323/5000000000 : ℚ), (57751009657/1000000000000 : ℚ), 2⟩,
    ⟨(542435007491/1000000000000 : ℚ), (-687941763/5000000000 : ℚ), (30935098033/500000000000 : ℚ), 2⟩,
    ⟨(546121636823/1000000000000 : ℚ), (-1431713403/10000000000 : ℚ), (32454421441/500000000000 : ℚ), 2⟩,
    ⟨(21943971731/40000000000 : ℚ), (-1468295587/10000000000 : ℚ), (66911191799/1000000000000 : ℚ), 2⟩,
    ⟨(549844115661/1000000000000 : ℚ), (-29727987/200000000 : ℚ), (16976371969/250000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-297730727/2000000000 : ℚ), (13605891193/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (300621930033/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control195.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control195.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate195

-- Control196
namespace DiagonalRamsey.JointInheritedCertificate196
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(326618343141/1000000000000 : ℚ), (5185195994071/5000000000 : ℚ), (-33969441988881/100000000000 : ℚ), 11⟩,
    ⟨(327933957229/1000000000000 : ℚ), (1127414550109/10000000000 : ℚ), (-18789054477213/500000000000 : ℚ), 8⟩,
    ⟨(330552515321/1000000000000 : ℚ), (392366753657/10000000000 : ℚ), (-6704425139309/500000000000 : ℚ), 6⟩,
    ⟨(334448799273/1000000000000 : ℚ), (95920879963/5000000000 : ℚ), (-6750025385519/1000000000000 : ℚ), 6⟩,
    ⟨(169792642869/500000000000 : ℚ), (22086155751/2000000000 : ℚ), (-4009817715237/1000000000000 : ℚ), 5⟩,
    ⟨(172956253773/500000000000 : ℚ), (34956276611/5000000000 : ℚ), (-327846258021/125000000000 : ℚ), 4⟩,
    ⟨(353369530091/1000000000000 : ℚ), (47069831181/10000000000 : ℚ), (-91252099993/50000000000 : ℚ), 4⟩,
    ⟨(361884538169/1000000000000 : ℚ), (33059392381/10000000000 : ℚ), (-132455888797/100000000000 : ℚ), 4⟩,
    ⟨(371375527599/1000000000000 : ℚ), (5981661807/2500000000 : ℚ), (-247521300517/250000000000 : ℚ), 3⟩,
    ⟨(381751094963/1000000000000 : ℚ), (3538446777/2000000000 : ℚ), (-755557863299/1000000000000 : ℚ), 3⟩,
    ⟨(98227829469/250000000000 : ℚ), (6639507011/5000000000 : ℚ), (-146195465843/250000000000 : ℚ), 3⟩,
    ⟨(40474871729/100000000000 : ℚ), (5030876997/5000000000 : ℚ), (-228290222849/500000000000 : ℚ), 3⟩,
    ⟨(417149292579/1000000000000 : ℚ), (7658456383/10000000000 : ℚ), (-71579367169/200000000000 : ℚ), 3⟩,
    ⟨(214996809711/500000000000 : ℚ), (364114167/625000000 : ℚ), (-140164481731/500000000000 : ℚ), 2⟩,
    ⟨(443157999933/1000000000000 : ℚ), (4403497349/10000000000 : ℚ), (-27284348243/125000000000 : ℚ), 2⟩,
    ⟨(57064456741/125000000000 : ℚ), (3282675781/10000000000 : ℚ), (-41971531673/250000000000 : ℚ), 2⟩,
    ⟨(4699379399/10000000000 : ℚ), (477546587/2000000000 : ℚ), (-2529037553/20000000000 : ℚ), 2⟩,
    ⟨(60411949237/125000000000 : ℚ), (416245463/2500000000 : ℚ), (-5751270813/62500000000 : ℚ), 2⟩,
    ⟨(248229987203/500000000000 : ℚ), (268904071/2500000000 : ℚ), (-3158013067/50000000000 : ℚ), 2⟩,
    ⟨(407443441/800000000 : ℚ), (295571329/5000000000 : ℚ), (-19402689349/500000000000 : ℚ), 2⟩,
    ⟨(260852438269/500000000000 : ℚ), (23794121/1250000000 : ℚ), (-18150542771/1000000000000 : ℚ), 2⟩,
    ⟨(533542275953/1000000000000 : ℚ), (-142723913/10000000000 : ℚ), (-290460159/500000000000 : ℚ), 2⟩,
    ⟨(272351249433/500000000000 : ℚ), (-420234631/10000000000 : ℚ), (14377302119/1000000000000 : ℚ), 2⟩,
    ⟨(55507806623/100000000000 : ℚ), (-651490993/10000000000 : ℚ), (27091814989/1000000000000 : ℚ), 2⟩,
    ⟨(564569055659/1000000000000 : ℚ), (-421836623/5000000000 : ℚ), (18924635717/500000000000 : ℚ), 2⟩,
    ⟨(573084063737/1000000000000 : ℚ), (-200467181/2000000000 : ℚ), (2343677963/50000000000 : ℚ), 2⟩,
    ⟨(290270543141/500000000000 : ℚ), (-282943773/2500000000 : ℚ), (543392523/10000000000 : ℚ), 2⟩,
    ⟨(58686830809/100000000000 : ℚ), (-1235297087/10000000000 : ℚ), (7547698559/125000000000 : ℚ), 2⟩,
    ⟨(148001198639/250000000000 : ℚ), (-20553361/156250000 : ℚ), (65103892503/1000000000000 : ℚ), 2⟩,
    ⟨(595901078507/1000000000000 : ℚ), (-1373992793/10000000000 : ℚ), (2743322873/40000000000 : ℚ), 2⟩,
    ⟨(598519636599/1000000000000 : ℚ), (-28246943/200000000 : ℚ), (35436808177/500000000000 : ℚ), 2⟩,
    ⟨(599835250687/1000000000000 : ℚ), (-286263877/2000000000 : ℚ), (14402077549/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-143368141/1000000000 : ℚ), (72152089747/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (2176150019/7812500000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control196.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control196.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate196
