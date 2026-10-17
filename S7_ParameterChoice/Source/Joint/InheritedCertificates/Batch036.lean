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

-- Control315
namespace DiagonalRamsey.JointInheritedCertificate315
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28726230579/125000000000 : ℚ), (12342148112821/10000000000 : ℚ), (-35534612741141/125000000000 : ℚ), 12⟩,
    ⟨(57633153863/250000000000 : ℚ), (168220403833/1250000000 : ℚ), (-1963931359403/62500000000 : ℚ), 8⟩,
    ⟨(231971196413/1000000000000 : ℚ), (470129165957/10000000000 : ℚ), (-5597211284383/500000000000 : ℚ), 7⟩,
    ⟨(46822346639/200000000000 : ℚ), (115364520051/5000000000 : ℚ), (-1405266540567/250000000000 : ℚ), 6⟩,
    ⟨(118466805629/500000000000 : ℚ), (133240494009/10000000000 : ℚ), (-3327272408021/1000000000000 : ℚ), 5⟩,
    ⟨(120204827187/500000000000 : ℚ), (84533911201/10000000000 : ℚ), (-433181586771/200000000000 : ℚ), 5⟩,
    ⟨(244506386347/1000000000000 : ℚ), (56947999433/10000000000 : ℚ), (-1497689180093/1000000000000 : ℚ), 4⟩,
    ⟨(24918435341/100000000000 : ℚ), (4992215699/1250000000 : ℚ), (-1078173612279/1000000000000 : ℚ), 4⟩,
    ⟨(254398504181/1000000000000 : ℚ), (1151297651/400000000 : ℚ), (-797531754529/1000000000000 : ℚ), 4⟩,
    ⟨(260098623539/1000000000000 : ℚ), (21116301669/10000000000 : ℚ), (-150119881541/250000000000 : ℚ), 3⟩,
    ⟨(266229816219/1000000000000 : ℚ), (15649864049/10000000000 : ℚ), (-456730427701/1000000000000 : ℚ), 3⟩,
    ⟨(272733035483/1000000000000 : ℚ), (5816653273/5000000000 : ℚ), (-348567105553/1000000000000 : ℚ), 3⟩,
    ⟨(139772825887/500000000000 : ℚ), (8607560953/10000000000 : ℚ), (-53013596443/200000000000 : ℚ), 3⟩,
    ⟨(143301027937/500000000000 : ℚ), (6279567221/10000000000 : ℚ), (-199207155691/1000000000000 : ℚ), 3⟩,
    ⟨(293834290753/1000000000000 : ℚ), (2227834003/5000000000 : ℚ), (-14630230871/100000000000 : ℚ), 3⟩,
    ⟨(301172706037/1000000000000 : ℚ), (3004139737/10000000000 : ℚ), (-103139302527/1000000000000 : ℚ), 3⟩,
    ⟨(154273314387/500000000000 : ℚ), (458292147/2500000000 : ℚ), (-8432013499/125000000000 : ℚ), 3⟩,
    ⟨(157942522029/500000000000 : ℚ), (877411557/10000000000 : ℚ), (-37626844781/1000000000000 : ℚ), 2⟩,
    ⟨(323117278937/1000000000000 : ℚ), (17905539/2000000000 : ℚ), (-12461891687/1000000000000 : ℚ), 2⟩,
    ⟨(330173683037/1000000000000 : ℚ), (-35331879/625000000 : ℚ), (8922252733/1000000000000 : ℚ), 2⟩,
    ⟨(5265410927/15625000000 : ℚ), (-278264921/2500000000 : ℚ), (27189879281/1000000000000 : ℚ), 2⟩,
    ⟨(335438983/976562500 : ℚ), (-1573283299/10000000000 : ℚ), (42845438453/1000000000000 : ℚ), 2⟩,
    ⟨(349620711271/1000000000000 : ℚ), (-1960857773/10000000000 : ℚ), (281374677/5000000000 : ℚ), 2⟩,
    ⟨(355320830629/1000000000000 : ℚ), (-1143588893/5000000000 : ℚ), (13555065717/200000000000 : ℚ), 2⟩,
    ⟨(360534981401/1000000000000 : ℚ), (-512202907/2000000000 : ℚ), (9696969753/125000000000 : ℚ), 2⟩,
    ⟨(365212948463/1000000000000 : ℚ), (-69728409/250000000 : ℚ), (85853097809/1000000000000 : ℚ), 2⟩,
    ⟨(369309680437/1000000000000 : ℚ), (-1488380929/5000000000 : ℚ), (23185872453/250000000000 : ℚ), 2⟩,
    ⟨(372785723553/1000000000000 : ℚ), (-1563946479/5000000000 : ℚ), (1229387121/12500000000 : ℚ), 2⟩,
    ⟨(23475475101/62500000000 : ℚ), (-324556031/1000000000 : ℚ), (51376970427/500000000000 : ℚ), 2⟩,
    ⟨(188874069199/500000000000 : ℚ), (-833000783/2500000000 : ℚ), (53005004311/500000000000 : ℚ), 2⟩,
    ⟨(379186719359/1000000000000 : ℚ), (-3388798749/10000000000 : ℚ), (10815952547/100000000000 : ℚ), 2⟩,
    ⟨(379909490179/1000000000000 : ℚ), (-683390423/2000000000 : ℚ), (54614039809/500000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1710229979/5000000000 : ℚ), (54680680883/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (68357930351/200000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control315.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control315.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate315

-- Control316
namespace DiagonalRamsey.JointInheritedCertificate316
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(243370719843/1000000000000 : ℚ), (12533688158529/10000000000 : ℚ), (-152857096904719/500000000000 : ℚ), 12⟩,
    ⟨(244124478123/1000000000000 : ℚ), (683464304333/5000000000 : ℚ), (-33793077652817/1000000000000 : ℚ), 8⟩,
    ⟨(245624735579/1000000000000 : ℚ), (477665695707/10000000000 : ℚ), (-481569462917/40000000000 : ℚ), 7⟩,
    ⟨(30982130489/125000000000 : ℚ), (58628024263/2500000000 : ℚ), (-604563684127/100000000000 : ℚ), 6⟩,
    ⟨(250799904771/1000000000000 : ℚ), (33870115983/2500000000 : ℚ), (-28631311473/8000000000 : ℚ), 5⟩,
    ⟨(254424976799/1000000000000 : ℚ), (3439775253/400000000 : ℚ), (-2330024067087/1000000000000 : ℚ), 5⟩,
    ⟨(258697348569/1000000000000 : ℚ), (57961754483/10000000000 : ℚ), (-1611476629203/1000000000000 : ℚ), 4⟩,
    ⟨(263575874807/1000000000000 : ℚ), (10168197407/2500000000 : ℚ), (-1160395993293/1000000000000 : ℚ), 4⟩,
    ⟨(269013572637/1000000000000 : ℚ), (29332777181/10000000000 : ℚ), (-858670355733/1000000000000 : ℚ), 4⟩,
    ⟨(274958074057/1000000000000 : ℚ), (21538561883/10000000000 : ℚ), (-40427896687/62500000000 : ℚ), 3⟩,
    ⟨(281352130269/1000000000000 : ℚ), (3995058283/2500000000 : ℚ), (-123088269491/250000000000 : ℚ), 3⟩,
    ⟨(36016770377/125000000000 : ℚ), (2973992647/2500000000 : ℚ), (-376136500991/1000000000000 : ℚ), 3⟩,
    ⟨(59047771523/200000000000 : ℚ), (8819287813/10000000000 : ℚ), (-286450682431/1000000000000 : ℚ), 3⟩,
    ⟨(302597791973/1000000000000 : ℚ), (645233339/1000000000 : ℚ), (-215739014479/1000000000000 : ℚ), 3⟩,
    ⟨(310140095531/1000000000000 : ℚ), (4598240153/10000000000 : ℚ), (-3974127237/25000000000 : ℚ), 3⟩,
    ⟨(15889656589/50000000000 : ℚ), (3123066713/10000000000 : ℚ), (-112671289711/1000000000000 : ℚ), 3⟩,
    ⟨(1627415989/5000000000 : ℚ), (1933425847/10000000000 : ℚ), (-9302976649/125000000000 : ℚ), 3⟩,
    ⟨(6662724681/20000000000 : ℚ), (962832731/10000000000 : ℚ), (-21236450103/500000000000 : ℚ), 2⟩,
    ⟨(340678537607/1000000000000 : ℚ), (163101483/10000000000 : ℚ), (-15537887153/1000000000000 : ℚ), 2⟩,
    ⟨(174018735983/500000000000 : ℚ), (-125307687/2500000000 : ℚ), (7332729139/1000000000000 : ℚ), 2⟩,
    ⟨(71028433313/200000000000 : ℚ), (-264151787/2500000000 : ℚ), (6713683181/250000000000 : ℚ), 2⟩,
    ⟨(22620262457/62500000000 : ℚ), (-1522964553/10000000000 : ℚ), (43572014793/1000000000000 : ℚ), 2⟩,
    ⟨(368318255523/1000000000000 : ℚ), (-957735951/5000000000 : ℚ), (57901066701/1000000000000 : ℚ), 2⟩,
    ⟨(23391422309/62500000000 : ℚ), (-2245753123/10000000000 : ℚ), (14032514497/200000000000 : ℚ), 2⟩,
    ⟨(189850227387/500000000000 : ℚ), (-504552023/2000000000 : ℚ), (80604215483/1000000000000 : ℚ), 2⟩,
    ⟨(384578981011/1000000000000 : ℚ), (-688350957/2500000000 : ℚ), (89417382857/1000000000000 : ℚ), 2⟩,
    ⟨(194425676391/500000000000 : ℚ), (-294301511/1000000000 : ℚ), (604684683/6250000000 : ℚ), 2⟩,
    ⟨(392476424809/1000000000000 : ℚ), (-3095683581/10000000000 : ℚ), (102713537627/1000000000000 : ℚ), 2⟩,
    ⟨(395419285669/1000000000000 : ℚ), (-1607253681/5000000000 : ℚ), (53697233391/500000000000 : ℚ), 2⟩,
    ⟨(397651594001/1000000000000 : ℚ), (-3301776189/10000000000 : ℚ), (55427470207/500000000000 : ℚ), 2⟩,
    ⟨(399151851457/1000000000000 : ℚ), (-419887917/1250000000 : ℚ), (113138850791/1000000000000 : ℚ), 2⟩,
    ⟨(199952804869/500000000000 : ℚ), (-3387516831/10000000000 : ℚ), (57137024979/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3391056929/10000000000 : ℚ), (114415637183/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (331913113047/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control316.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control316.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate316

-- Control317
namespace DiagonalRamsey.JointInheritedCertificate317
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(64290214879/250000000000 : ℚ), (12739441977671/10000000000 : ℚ), (-164164533829461/500000000000 : ℚ), 12⟩,
    ⟨(257944501951/1000000000000 : ℚ), (694833507691/5000000000 : ℚ), (-36293612236679/1000000000000 : ℚ), 8⟩,
    ⟨(64876059979/250000000000 : ℚ), (242882021461/5000000000 : ℚ), (-6465316957957/500000000000 : ℚ), 7⟩,
    ⟨(261825052281/1000000000000 : ℚ), (238578423143/10000000000 : ℚ), (-1623428213209/250000000000 : ℚ), 6⟩,
    ⟨(52976917671/200000000000 : ℚ), (137889130383/10000000000 : ℚ), (-1922283496789/500000000000 : ℚ), 5⟩,
    ⟨(134326691567/500000000000 : ℚ), (10945701393/1250000000 : ℚ), (-2503349549559/1000000000000 : ℚ), 5⟩,
    ⟨(136547570531/500000000000 : ℚ), (59053008163/10000000000 : ℚ), (-173171517647/100000000000 : ℚ), 4⟩,
    ⟨(278167085583/1000000000000 : ℚ), (41464545677/10000000000 : ℚ), (-249468547971/200000000000 : ℚ), 4⟩,
    ⟨(283820371099/1000000000000 : ℚ), (29925960931/10000000000 : ℚ), (-184676638861/200000000000 : ℚ), 4⟩,
    ⟨(14500027669/50000000000 : ℚ), (21994022827/10000000000 : ℚ), (-695984857521/1000000000000 : ℚ), 3⟩,
    ⟨(296648113891/1000000000000 : ℚ), (8168418479/5000000000 : ℚ), (-530166939791/1000000000000 : ℚ), 3⟩,
    ⟨(9490594781/31250000000 : ℚ), (48718787/40000000 : ℚ), (-101366306629/250000000000 : ℚ), 3⟩,
    ⟨(311085406477/1000000000000 : ℚ), (9048149347/10000000000 : ℚ), (-309264081747/1000000000000 : ℚ), 3⟩,
    ⟨(79684024883/250000000000 : ℚ), (1327839679/2000000000 : ℚ), (-116723480529/500000000000 : ℚ), 3⟩,
    ⟨(326577431799/1000000000000 : ℚ), (4752530399/10000000000 : ℚ), (-34520764731/200000000000 : ℚ), 3⟩,
    ⟨(334533886963/1000000000000 : ℚ), (1625911477/5000000000 : ℚ), (-61510046287/500000000000 : ℚ), 3⟩,
    ⟨(85632210003/250000000000 : ℚ), (2041999793/10000000000 : ℚ), (-41040320113/500000000000 : ℚ), 3⟩,
    ⟨(43810661897/125000000000 : ℚ), (1055350389/10000000000 : ℚ), (-23952447403/500000000000 : ℚ), 2⟩,
    ⟨(89581656861/250000000000 : ℚ), (242781831/10000000000 : ℚ), (-19116011421/1000000000000 : ℚ), 2⟩,
    ⟨(182988660249/500000000000 : ℚ), (-215925647/5000000000 : ℚ), (5309394839/1000000000000 : ℚ), 2⟩,
    ⟨(373363693983/1000000000000 : ℚ), (-995513201/10000000000 : ℚ), (2614158109/100000000000 : ℚ), 2⟩,
    ⟨(95103653271/250000000000 : ℚ), (-1468543187/10000000000 : ℚ), (43966199597/1000000000000 : ℚ), 2⟩,
    ⟨(96765543399/250000000000 : ℚ), (-933212017/5000000000 : ℚ), (59232057447/1000000000000 : ℚ), 2⟩,
    ⟨(393242355877/1000000000000 : ℚ), (-440205227/2000000000 : ℚ), (72285020583/1000000000000 : ℚ), 2⟩,
    ⟨(398895641393/1000000000000 : ℚ), (-1240747893/5000000000 : ℚ), (10424060291/125000000000 : ℚ), 2⟩,
    ⟨(201983792957/500000000000 : ℚ), (-2714897461/10000000000 : ℚ), (92761279791/1000000000000 : ℚ), 2⟩,
    ⟨(204204671921/500000000000 : ℚ), (-1453341477/5000000000 : ℚ), (12568871567/125000000000 : ℚ), 2⟩,
    ⟨(20608906931/50000000000 : ℚ), (-3061036441/10000000000 : ℚ), (106883768979/1000000000000 : ℚ), 2⟩,
    ⟨(207618837347/500000000000 : ℚ), (-3181128861/10000000000 : ℚ), (27962993171/250000000000 : ℚ), 2⟩,
    ⟨(20877924353/50000000000 : ℚ), (-1634652253/5000000000 : ℚ), (23104708463/200000000000 : ℚ), 2⟩,
    ⟨(16764729001/40000000000 : ℚ), (-1663607751/5000000000 : ℚ), (117946167581/1000000000000 : ℚ), 2⟩,
    ⟨(419901867459/1000000000000 : ℚ), (-134236593/400000000 : ℚ), (119150131331/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-52492037/156250000 : ℚ), (29825071647/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (5029832953/15625000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control317.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control317.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate317

-- Control318
namespace DiagonalRamsey.JointInheritedCertificate318
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(277086618021/1000000000000 : ℚ), (6861480469081/5000000000 : ℚ), (-381023694513419/1000000000000 : ℚ), 12⟩,
    ⟨(138935308867/500000000000 : ℚ), (187272634243/1250000000 : ℚ), (-42115029109273/1000000000000 : ℚ), 8⟩,
    ⟨(279431066813/1000000000000 : ℚ), (104856075729/2000000000 : ℚ), (-187527519199/12500000000 : ℚ), 7⟩,
    ⟨(281752937281/1000000000000 : ℚ), (128906501069/5000000000 : ℚ), (-3766084208649/500000000000 : ℚ), 6⟩,
    ⟨(284813868257/1000000000000 : ℚ), (149192469271/10000000000 : ℚ), (-1114471152709/250000000000 : ℚ), 5⟩,
    ⟨(288584381301/1000000000000 : ℚ), (5928619893/625000000 : ℚ), (-2901475089061/1000000000000 : ℚ), 5⟩,
    ⟨(36628520539/125000000000 : ℚ), (12808421941/2000000000 : ℚ), (-2006086308351/1000000000000 : ℚ), 4⟩,
    ⟨(29810242123/100000000000 : ℚ), (45012225559/10000000000 : ℚ), (-722041528653/500000000000 : ℚ), 4⟩,
    ⟨(75939571047/250000000000 : ℚ), (6502756199/2000000000 : ℚ), (-1068256080723/1000000000000 : ℚ), 4⟩,
    ⟨(77485321033/250000000000 : ℚ), (1494504479/625000000 : ℚ), (-804504631681/1000000000000 : ℚ), 4⟩,
    ⟨(63318375079/200000000000 : ℚ), (1110639513/625000000 : ℚ), (-153058124377/250000000000 : ℚ), 3⟩,
    ⟨(64729201829/200000000000 : ℚ), (6626041163/5000000000 : ℚ), (-46768973033/100000000000 : ℚ), 3⟩,
    ⟨(16551787511/50000000000 : ℚ), (1969043373/2000000000 : ℚ), (-356234408329/1000000000000 : ℚ), 3⟩,
    ⟨(84672482843/250000000000 : ℚ), (451385943/625000000 : ℚ), (-268445558683/1000000000000 : ℚ), 3⟩,
    ⟨(173267419327/500000000000 : ℚ), (5166297541/10000000000 : ℚ), (-198042878279/1000000000000 : ℚ), 3⟩,
    ⟨(354494921319/1000000000000 : ℚ), (882501457/2500000000 : ℚ), (-70356726991/500000000000 : ℚ), 3⟩,
    ⟨(362493519421/1000000000000 : ℚ), (2210272119/10000000000 : ℚ), (-46710062599/500000000000 : ℚ), 3⟩,
    ⟨(185226801043/500000000000 : ℚ), (226729059/2000000000 : ℚ), (-53978067473/1000000000000 : ℚ), 2⟩,
    ⟨(47287313671/125000000000 : ℚ), (246810757/10000000000 : ℚ), (-20786959409/1000000000000 : ℚ), 2⟩,
    ⟨(9648817263/25000000000 : ℚ), (-122382633/2500000000 : ℚ), (7343357547/1000000000000 : ℚ), 2⟩,
    ⟨(78668486319/200000000000 : ℚ), (-1104729617/10000000000 : ℚ), (31309269851/1000000000000 : ℚ), 2⟩,
    ⟨(80079313069/200000000000 : ℚ), (-162095179/1000000000 : ℚ), (51792871013/1000000000000 : ℚ), 2⟩,
    ⟨(3180055911/7812500000 : ℚ), (-256886083/1250000000 : ℚ), (34658673573/500000000000 : ℚ), 2⟩,
    ⟨(51653769569/125000000000 : ℚ), (-605026089/2500000000 : ℚ), (84286286471/1000000000000 : ℚ), 2⟩,
    ⟨(41888601951/100000000000 : ℚ), (-681499367/2500000000 : ℚ), (12126505519/125000000000 : ℚ), 2⟩,
    ⟨(105990069107/250000000000 : ℚ), (-1490248661/5000000000 : ℚ), (107736508893/1000000000000 : ℚ), 2⟩,
    ⟨(428404059439/1000000000000 : ℚ), (-797393269/2500000000 : ℚ), (116646492871/1000000000000 : ℚ), 2⟩,
    ⟨(432174572483/1000000000000 : ℚ), (-839452163/2500000000 : ℚ), (123885237593/1000000000000 : ℚ), 2⟩,
    ⟨(435235503459/1000000000000 : ℚ), (-3488679497/10000000000 : ℚ), (16195130821/125000000000 : ℚ), 2⟩,
    ⟨(437557373927/1000000000000 : ℚ), (-716951173/2000000000 : ℚ), (133753733257/1000000000000 : ℚ), 2⟩,
    ⟨(219558911503/500000000000 : ℚ), (-364784953/1000000000 : ℚ), (136519350703/1000000000000 : ℚ), 2⟩,
    ⟨(439901822719/1000000000000 : ℚ), (-1839557687/5000000000 : ℚ), (137893513399/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-1841505291/5000000000 : ℚ), (138064883431/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (150492084549/500000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control318.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control318.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate318

-- Control319
namespace DiagonalRamsey.JointInheritedCertificate319
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(284263459283/1000000000000 : ℚ), (13838906717391/10000000000 : ℚ), (-394189053750171/1000000000000 : ℚ), 12⟩,
    ⟨(71265261271/250000000000 : ℚ), (1510996227463/10000000000 : ℚ), (-21785329931351/500000000000 : ℚ), 8⟩,
    ⟨(286648535499/1000000000000 : ℚ), (66105710687/1250000000 : ℚ), (-15521061560589/1000000000000 : ℚ), 7⟩,
    ⟨(289010642127/1000000000000 : ℚ), (52021230473/2000000000 : ℚ), (-311717928653/40000000000 : ℚ), 6⟩,
    ⟨(292124616591/1000000000000 : ℚ), (30110282469/2000000000 : ℚ), (-2306234679811/500000000000 : ℚ), 5⟩,
    ⟨(295960469613/1000000000000 : ℚ), (95744837537/10000000000 : ℚ), (-3002315557201/1000000000000 : ℚ), 5⟩,
    ⟨(300481259833/1000000000000 : ℚ), (8082302743/1250000000 : ℚ), (-259503468293/125000000000 : ℚ), 4⟩,
    ⟨(30564344957/100000000000 : ℚ), (22729810467/5000000000 : ℚ), (-747325166577/500000000000 : ℚ), 4⟩,
    ⟨(311397324113/1000000000000 : ℚ), (2053070307/625000000 : ℚ), (-221177515473/200000000000 : ℚ), 4⟩,
    ⟨(158843735253/500000000000 : ℚ), (24169650383/10000000000 : ℚ), (-833078179621/1000000000000 : ℚ), 4⟩,
    ⟨(324453311201/1000000000000 : ℚ), (17971947523/10000000000 : ℚ), (-317111466937/500000000000 : ℚ), 3⟩,
    ⟨(331629687453/1000000000000 : ℚ), (104785763/78125000 : ℚ), (-24237544463/50000000000 : ℚ), 3⟩,
    ⟨(84786871709/250000000000 : ℚ), (1246831141/1250000000 : ℚ), (-369513744247/1000000000000 : ℚ), 3⟩,
    ⟨(10841697151/31250000000 : ℚ), (7327804029/10000000000 : ℚ), (-69691116463/250000000000 : ℚ), 3⟩,
    ⟨(354915162089/1000000000000 : ℚ), (2626721201/5000000000 : ℚ), (-103002568267/500000000000 : ℚ), 3⟩,
    ⟨(181506593313/500000000000 : ℚ), (3602645143/10000000000 : ℚ), (-73386569973/500000000000 : ℚ), 3⟩,
    ⟨(185575197021/500000000000 : ℚ), (2271433177/10000000000 : ℚ), (-48962816069/500000000000 : ℚ), 3⟩,
    ⟨(379248418579/1000000000000 : ℚ), (296416209/2500000000 : ℚ), (-11440300669/200000000000 : ℚ), 2⟩,
    ⟨(96807317959/250000000000 : ℚ), (9109819/312500000 : ℚ), (-11472150039/500000000000 : ℚ), 2⟩,
    ⟨(49377011729/125000000000 : ℚ), (-90140569/2000000000 : ℚ), (379882987/62500000000 : ℚ), 2⟩,
    ⟨(80506778643/200000000000 : ℚ), (-1070631651/10000000000 : ℚ), (15397013369/500000000000 : ℚ), 2⟩,
    ⟨(409710269467/1000000000000 : ℚ), (-795332563/5000000000 : ℚ), (51909951191/1000000000000 : ℚ), 2⟩,
    ⟨(208238055081/500000000000 : ℚ), (-405574531/2000000000 : ℚ), (34984023543/500000000000 : ℚ), 2⟩,
    ⟨(84553251311/200000000000 : ℚ), (-2339217/9765625 : ℚ), (85386705607/1000000000000 : ℚ), 2⟩,
    ⟨(214260065549/500000000000 : ℚ), (-675807723/2500000000 : ℚ), (98489891921/1000000000000 : ℚ), 2⟩,
    ⟨(86736464167/200000000000 : ℚ), (-2959307467/10000000000 : ℚ), (109528615673/1000000000000 : ℚ), 2⟩,
    ⟨(87640622211/200000000000 : ℚ), (-633925219/2000000000 : ℚ), (59348419421/500000000000 : ℚ), 2⟩,
    ⟨(442038964077/1000000000000 : ℚ), (-3338824737/10000000000 : ℚ), (126143367729/1000000000000 : ℚ), 2⟩,
    ⟨(445152938541/1000000000000 : ℚ), (-3470420519/10000000000 : ℚ), (26396154873/200000000000 : ℚ), 2⟩,
    ⟨(447515045169/1000000000000 : ℚ), (-1783507481/5000000000 : ℚ), (68146029733/500000000000 : ℚ), 2⟩,
    ⟨(14034454237/31250000000 : ℚ), (-3630442129/10000000000 : ℚ), (6956776981/50000000000 : ℚ), 2⟩,
    ⟨(89980024277/200000000000 : ℚ), (-1830935611/5000000000 : ℚ), (17568534951/125000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3665786673/10000000000 : ℚ), (70362227663/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (147864601593/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control319.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control319.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate319

-- Control320
namespace DiagonalRamsey.JointInheritedCertificate320
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291531713829/1000000000000 : ℚ), (3490737849093/2500000000 : ℚ), (-407884877827127/1000000000000 : ℚ), 12⟩,
    ⟨(73085611451/250000000000 : ℚ), (762354205151/5000000000 : ℚ), (-45085072948437/1000000000000 : ℚ), 8⟩,
    ⟨(146978050981/500000000000 : ℚ), (33358243781/625000000 : ℚ), (-3212194067919/200000000000 : ℚ), 7⟩,
    ⟨(37044642739/125000000000 : ℚ), (262561510449/10000000000 : ℚ), (-4032190915333/500000000000 : ℚ), 6⟩,
    ⟨(299522442327/1000000000000 : ℚ), (38001821151/2500000000 : ℚ), (-4773431356693/1000000000000 : ℚ), 5⟩,
    ⟨(303421519633/1000000000000 : ℚ), (19339134727/2000000000 : ℚ), (-621473951141/200000000000 : ℚ), 5⟩,
    ⟨(61603364717/200000000000 : ℚ), (1632992409/250000000 : ℚ), (-2148939906613/1000000000000 : ℚ), 4⟩,
    ⟨(313264098893/1000000000000 : ℚ), (22970059267/5000000000 : ℚ), (-773704917971/500000000000 : ℚ), 4⟩,
    ⟨(319112811427/1000000000000 : ℚ), (33209676803/10000000000 : ℚ), (-286298106633/250000000000 : ℚ), 4⟩,
    ⟨(32550663489/100000000000 : ℚ), (1222346649/500000000 : ℚ), (-862962679297/1000000000000 : ℚ), 4⟩,
    ⟨(66476798653/200000000000 : ℚ), (18189389107/10000000000 : ℚ), (-328630935811/500000000000 : ℚ), 3⟩,
    ⟨(42459831729/125000000000 : ℚ), (3396460599/2500000000 : ℚ), (-502664965813/1000000000000 : ℚ), 3⟩,
    ⟨(173660182511/500000000000 : ℚ), (505730119/500000000 : ℚ), (-383496865773/1000000000000 : ℚ), 3⟩,
    ⟨(355235532979/1000000000000 : ℚ), (744221267/1000000000 : ℚ), (-72417830707/250000000000 : ℚ), 3⟩,
    ⟨(363347930309/1000000000000 : ℚ), (5347998151/10000000000 : ℚ), (-107232006787/500000000000 : ℚ), 3⟩,
    ⟨(37157943019/100000000000 : ℚ), (3681606169/10000000000 : ℚ), (-4789267457/31250000000 : ℚ), 3⟩,
    ⟨(379850758779/1000000000000 : ℚ), (2338040667/10000000000 : ℚ), (-51398069999/500000000000 : ℚ), 3⟩,
    ⟨(19404112933/50000000000 : ℚ), (1242421807/10000000000 : ℚ), (-60742252577/1000000000000 : ℚ), 2⟩,
    ⟨(39619465599/100000000000 : ℚ), (340377167/10000000000 : ℚ), (-6345002189/250000000000 : ℚ), 2⟩,
    ⟨(404109823947/1000000000000 : ℚ), (-408188957/10000000000 : ℚ), (4566468251/1000000000000 : ℚ), 2⟩,
    ⟨(411751535137/1000000000000 : ℚ), (-32288637/312500000 : ℚ), (6011722927/200000000000 : ℚ), 2⟩,
    ⟨(52380774463/125000000000 : ℚ), (-1557401277/10000000000 : ℚ), (51828478577/1000000000000 : ℚ), 2⟩,
    ⟨(425923554079/1000000000000 : ℚ), (-1997943023/10000000000 : ℚ), (70437979489/1000000000000 : ℚ), 2⟩,
    ⟨(216158688771/500000000000 : ℚ), (-2368115079/10000000000 : ℚ), (21580239193/250000000000 : ℚ), 2⟩,
    ⟨(438166090077/1000000000000 : ℚ), (-2678144711/10000000000 : ℚ), (49906751237/500000000000 : ℚ), 2⟩,
    ⟨(88682673077/200000000000 : ℚ), (-1467971099/5000000000 : ℚ), (1737127517/15625000000 : ℚ), 2⟩,
    ⟨(56001083667/125000000000 : ℚ), (-3147619547/10000000000 : ℚ), (120610376849/1000000000000 : ℚ), 2⟩,
    ⟨(225953873321/500000000000 : ℚ), (-1658936289/5000000000 : ℚ), (25654157061/200000000000 : ℚ), 2⟩,
    ⟨(455073047057/1000000000000 : ℚ), (-3450263069/10000000000 : ℚ), (134274434437/1000000000000 : ℚ), 2⟩,
    ⟨(457474087007/1000000000000 : ℚ), (-443428257/1250000000 : ℚ), (17338458759/125000000000 : ℚ), 2⟩,
    ⟨(91817548633/200000000000 : ℚ), (-1805609751/5000000000 : ℚ), (14163118601/100000000000 : ℚ), 2⟩,
    ⟨(22994923757/50000000000 : ℚ), (-3642827977/10000000000 : ℚ), (143083571683/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-911691419/2500000000 : ℚ), (143264685813/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (290430479477/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control320.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control320.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate320

-- Control321
namespace DiagonalRamsey.JointInheritedCertificate321
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(149410925427/500000000000 : ℚ), (14085875546201/10000000000 : ℚ), (-210879196262343/500000000000 : ℚ), 12⟩,
    ⟨(299645623697/1000000000000 : ℚ), (769147804539/5000000000 : ℚ), (-23309533694821/500000000000 : ℚ), 8⟩,
    ⟨(150642617999/500000000000 : ℚ), (269286383117/5000000000 : ℚ), (-664312489183/40000000000 : ℚ), 7⟩,
    ⟨(303724897397/1000000000000 : ℚ), (52998690569/2000000000 : ℚ), (-333570583499/40000000000 : ℚ), 6⟩,
    ⟨(306941112619/1000000000000 : ℚ), (76724380383/5000000000 : ℚ), (-2468204810999/500000000000 : ℚ), 5⟩,
    ⟨(62180581551/200000000000 : ℚ), (19527334547/2000000000 : ℚ), (-3213715814517/1000000000000 : ℚ), 5⟩,
    ⟨(315572128551/1000000000000 : ℚ), (32986874813/5000000000 : ℚ), (-2222728227919/1000000000000 : ℚ), 4⟩,
    ⟨(160451903929/500000000000 : ℚ), (9283006067/2000000000 : ℚ), (-320157128991/200000000000 : ℚ), 4⟩,
    ⟨(32684659869/100000000000 : ℚ), (33565730569/10000000000 : ℚ), (-592470439931/500000000000 : ℚ), 4⟩,
    ⟨(333343268723/1000000000000 : ℚ), (3090059441/1250000000 : ℚ), (-893170647557/1000000000000 : ℚ), 4⟩,
    ⟨(340331251473/1000000000000 : ℚ), (14722911/8000000 : ℚ), (-680537749917/1000000000000 : ℚ), 3⟩,
    ⟨(173871624423/500000000000 : ℚ), (2751264691/2000000000 : ℚ), (-520751960767/1000000000000 : ℚ), 3⟩,
    ⟨(71101575851/200000000000 : ℚ), (10252083707/10000000000 : ℚ), (-397604533461/1000000000000 : ℚ), 3⟩,
    ⟨(181775182533/500000000000 : ℚ), (7554392549/10000000000 : ℚ), (-300665580717/1000000000000 : ℚ), 3⟩,
    ⟨(371793252743/1000000000000 : ℚ), (5440518367/10000000000 : ℚ), (-27872676553/125000000000 : ℚ), 3⟩,
    ⟨(95039289693/250000000000 : ℚ), (751737553/2000000000 : ℚ), (-15977583977/100000000000 : ℚ), 3⟩,
    ⟨(77712306833/200000000000 : ℚ), (600724177/2500000000 : ℚ), (-53842308337/500000000000 : ℚ), 3⟩,
    ⟨(198462720097/500000000000 : ℚ), (1297533631/10000000000 : ℚ), (-64286783217/1000000000000 : ℚ), 2⟩,
    ⟨(40516832787/100000000000 : ℚ), (193842141/5000000000 : ℚ), (-27808228657/1000000000000 : ℚ), 2⟩,
    ⟨(413210813681/1000000000000 : ℚ), (-183577589/5000000000 : ℚ), (3071250333/1000000000000 : ℚ), 2⟩,
    ⟨(42097544409/100000000000 : ℚ), (-498628261/5000000000 : ℚ), (7336685949/250000000000 : ℚ), 2⟩,
    ⟨(428387441463/1000000000000 : ℚ), (-1525497281/10000000000 : ℚ), (809002483/15625000000 : ℚ), 2⟩,
    ⟨(435375424213/1000000000000 : ℚ), (-1969325439/10000000000 : ℚ), (35470739469/500000000000 : ℚ), 2⟩,
    ⟨(220936047123/500000000000 : ℚ), (-1171071449/5000000000 : ℚ), (87292225581/1000000000000 : ℚ), 2⟩,
    ⟨(447814885079/1000000000000 : ℚ), (-2654294297/10000000000 : ℚ), (202353613/2000000000 : ℚ), 2⟩,
    ⟨(226573282193/500000000000 : ℚ), (-2913782857/10000000000 : ℚ), (56432727543/500000000000 : ℚ), 2⟩,
    ⟨(228907892591/500000000000 : ℚ), (-3126793989/10000000000 : ℚ), (122567221519/1000000000000 : ℚ), 2⟩,
    ⟨(461777580317/1000000000000 : ℚ), (-3298081047/10000000000 : ℚ), (26088534027/200000000000 : ℚ), 2⟩,
    ⟨(464993795539/1000000000000 : ℚ), (-1715625107/5000000000 : ℚ), (68306701349/500000000000 : ℚ), 2⟩,
    ⟨(233716728469/500000000000 : ℚ), (-3528969863/10000000000 : ℚ), (141169169793/1000000000000 : ℚ), 2⟩,
    ⟨(11726826731/25000000000 : ℚ), (-1796560867/5000000000 : ℚ), (36043271423/250000000000 : ℚ), 2⟩,
    ⟨(234948421041/500000000000 : ℚ), (-906226421/2500000000 : ℚ), (145665292321/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-453608143/1250000000 : ℚ), (4557855203/31250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (285125519959/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control321.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control321.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate321

-- Control322
namespace DiagonalRamsey.JointInheritedCertificate322
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19133196097/62500000000 : ℚ), (1775928333479/1250000000 : ℚ), (-217898163248887/500000000000 : ℚ), 12⟩,
    ⟨(153483929553/500000000000 : ℚ), (1551729758583/10000000000 : ℚ), (-3010697647211/62500000000 : ℚ), 8⟩,
    ⟨(9644788879/31250000000 : ℚ), (135839542149/2500000000 : ℚ), (-2145131191797/125000000000 : ℚ), 7⟩,
    ⟨(311111254051/1000000000000 : ℚ), (13369840599/500000000 : ℚ), (-8617318674923/1000000000000 : ℚ), 6⟩,
    ⟨(78594506071/250000000000 : ℚ), (77436354269/5000000000 : ℚ), (-1275308324949/250000000000 : ℚ), 5⟩,
    ⟨(318402094043/1000000000000 : ℚ), (98565732577/10000000000 : ℚ), (-664247406207/200000000000 : ℚ), 5⟩,
    ⟨(161572354669/500000000000 : ℚ), (16654767893/2500000000 : ℚ), (-574326790663/250000000000 : ℚ), 4⟩,
    ⟨(32856019619/100000000000 : ℚ), (46883217333/10000000000 : ℚ), (-827355884329/500000000000 : ℚ), 4⟩,
    ⟨(334596400501/1000000000000 : ℚ), (16958197471/5000000000 : ℚ), (-245016004867/200000000000 : ℚ), 4⟩,
    ⟨(341195190323/1000000000000 : ℚ), (24989560131/10000000000 : ℚ), (-923658348967/1000000000000 : ℚ), 4⟩,
    ⟨(348293015703/1000000000000 : ℚ), (18614104477/10000000000 : ℚ), (-176003380797/250000000000 : ℚ), 3⟩,
    ⟨(355821520703/1000000000000 : ℚ), (2784704613/2000000000 : ℚ), (-107795971207/200000000000 : ℚ), 3⟩,
    ⟨(45463525213/125000000000 : ℚ), (10386667533/10000000000 : ℚ), (-411808604567/1000000000000 : ℚ), 3⟩,
    ⟨(46484638207/125000000000 : ℚ), (1532794909/2000000000 : ℚ), (-974131711/3125000000 : ℚ), 3⟩,
    ⟨(7604991231/20000000000 : ℚ), (1106135763/2000000000 : ℚ), (-231534685801/1000000000000 : ℚ), 3⟩,
    ⟨(388744938057/1000000000000 : ℚ), (3833601889/10000000000 : ℚ), (-33262064993/200000000000 : ℚ), 3⟩,
    ⟨(397281420059/1000000000000 : ℚ), (1232871397/5000000000 : ℚ), (-56286021551/500000000000 : ℚ), 3⟩,
    ⟨(202888398283/500000000000 : ℚ), (270153229/2000000000 : ℚ), (-67817442033/1000000000000 : ℚ), 2⟩,
    ⟨(20707462623/50000000000 : ℚ), (433221619/10000000000 : ℚ), (-15106227417/500000000000 : ℚ), 2⟩,
    ⟨(105579539103/250000000000 : ℚ), (-327798523/10000000000 : ℚ), (1608006907/1000000000000 : ℚ), 2⟩,
    ⟨(430204837413/1000000000000 : ℚ), (-962874861/10000000000 : ℚ), (7168279971/250000000000 : ℚ), 2⟩,
    ⟨(437733342413/1000000000000 : ℚ), (-747561973/5000000000 : ℚ), (51766991581/1000000000000 : ℚ), 2⟩,
    ⟨(444831167793/1000000000000 : ℚ), (-971090297/5000000000 : ℚ), (446824633/6250000000 : ℚ), 2⟩,
    ⟨(90285991523/200000000000 : ℚ), (-1158796913/5000000000 : ℚ), (88313392713/1000000000000 : ℚ), 2⟩,
    ⟨(228733080963/500000000000 : ℚ), (-131591233/500000000 : ℚ), (102592248043/1000000000000 : ℚ), 2⟩,
    ⟨(231440824389/500000000000 : ℚ), (-180810531/625000000 : ℚ), (1790758967/15625000000 : ℚ), 2⟩,
    ⟨(467624264073/1000000000000 : ℚ), (-3107283579/10000000000 : ℚ), (31144786009/250000000000 : ℚ), 2⟩,
    ⟨(58956041729/125000000000 : ℚ), (-655916073/2000000000 : ℚ), (66335272959/500000000000 : ℚ), 2⟩,
    ⟨(94983020813/200000000000 : ℚ), (-3413509117/10000000000 : ℚ), (69504504661/500000000000 : ℚ), 2⟩,
    ⟨(119348278497/250000000000 : ℚ), (-438971413/1250000000 : ℚ), (143687746151/1000000000000 : ℚ), 2⟩,
    ⟨(47905849901/100000000000 : ℚ), (-143050891/400000000 : ℚ), (36693083057/250000000000 : ℚ), 2⟩,
    ⟨(95979044113/200000000000 : ℚ), (-3608227063/10000000000 : ℚ), (148304488293/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1806103853/5000000000 : ℚ), (148495538309/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (69954083167/250000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control322.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control322.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate322
