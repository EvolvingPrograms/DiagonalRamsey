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

-- Control39
namespace DiagonalRamsey.JointInheritedCertificate39
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3983984519/50000000000 : ℚ), (11082883646253/10000000000 : ℚ), (-88547107532153/1000000000000 : ℚ), 10⟩,
    ⟨(80069197103/1000000000000 : ℚ), (586557934727/5000000000 : ℚ), (-594699434149/62500000000 : ℚ), 7⟩,
    ⟨(3233329681/40000000000 : ℚ), (24115631287/625000000 : ℚ), (-127654499811/40000000000 : ℚ), 5⟩,
    ⟨(81942463327/1000000000000 : ℚ), (85633610477/5000000000 : ℚ), (-1447496148637/1000000000000 : ℚ), 5⟩,
    ⟨(5209639641/62500000000 : ℚ), (42055186309/5000000000 : ℚ), (-182035304163/250000000000 : ℚ), 4⟩,
    ⟨(85014301249/1000000000000 : ℚ), (1014972981/250000000 : ℚ), (-362291054977/1000000000000 : ℚ), 3⟩,
    ⟨(86858868861/1000000000000 : ℚ), (7950527969/5000000000 : ℚ), (-15027136543/100000000000 : ℚ), 3⟩,
    ⟨(88817051393/1000000000000 : ℚ), (293047577/5000000000 : ℚ), (-3966871673/250000000000 : ℚ), 3⟩,
    ⟨(90813596989/1000000000000 : ℚ), (-953928571/1000000000 : ℚ), (9376114209/125000000000 : ℚ), 3⟩,
    ⟨(92771779521/1000000000000 : ℚ), (-662085059/400000000 : ℚ), (139346306151/1000000000000 : ℚ), 3⟩,
    ⟨(94616347133/1000000000000 : ℚ), (-21562627651/10000000000 : ℚ), (93136478499/500000000000 : ℚ), 2⟩,
    ⟨(48138207063/500000000000 : ℚ), (-25196664139/10000000000 : ℚ), (110474532383/500000000000 : ℚ), 2⟩,
    ⟨(19537637011/200000000000 : ℚ), (-1112778983/400000000 : ℚ), (49276269881/200000000000 : ℚ), 2⟩,
    ⟨(98797406357/1000000000000 : ℚ), (-14823842531/5000000000 : ℚ), (13217026029/50000000000 : ℚ), 2⟩,
    ⟨(99561451279/1000000000000 : ℚ), (-30808747549/10000000000 : ℚ), (275855403381/1000000000000 : ℚ), 2⟩,
    ⟨(49975479001/500000000000 : ℚ), (-31373483499/10000000000 : ℚ), (14074446919/50000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31443370371/10000000000 : ℚ), (141093817809/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (312499/1000000 : ℚ)
  x := (187375733713/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control39.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control39.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate39

-- Control40
namespace DiagonalRamsey.JointInheritedCertificate40
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7693010853/31250000000 : ℚ), (7744795241167/10000000000 : ℚ), (-191566776103393/1000000000000 : ℚ), 10⟩,
    ⟨(4957581563/20000000000 : ℚ), (832863638071/10000000000 : ℚ), (-5298750573621/250000000000 : ℚ), 7⟩,
    ⟨(251268141629/1000000000000 : ℚ), (285528413093/10000000000 : ℚ), (-7565579321303/1000000000000 : ℚ), 5⟩,
    ⟨(256310899199/1000000000000 : ℚ), (34314084021/2500000000 : ℚ), (-762182135697/200000000000 : ℚ), 4⟩,
    ⟨(65739696587/250000000000 : ℚ), (77630790697/10000000000 : ℚ), (-2266157697899/1000000000000 : ℚ), 4⟩,
    ⟨(4236684067/15625000000 : ℚ), (24151074287/5000000000 : ℚ), (-1484553647449/1000000000000 : ℚ), 3⟩,
    ⟨(70199754133/250000000000 : ℚ), (7997845737/2500000000 : ℚ), (-207062769367/200000000000 : ℚ), 3⟩,
    ⟨(291819548399/1000000000000 : ℚ), (5534190541/2500000000 : ℚ), (-753697985807/1000000000000 : ℚ), 3⟩,
    ⟨(304103242141/1000000000000 : ℚ), (247111911/156250000 : ℚ), (-35354491523/62500000000 : ℚ), 2⟩,
    ⟨(158765899537/500000000000 : ℚ), (2314111343/2000000000 : ℚ), (-433959458509/1000000000000 : ℚ), 2⟩,
    ⟨(165987947427/500000000000 : ℚ), (1723070997/2000000000 : ℚ), (-67626834553/200000000000 : ℚ), 2⟩,
    ⟨(173648212471/500000000000 : ℚ), (6495731477/10000000000 : ℚ), (-133122184867/500000000000 : ℚ), 2⟩,
    ⟨(181672922129/500000000000 : ℚ), (4936809609/10000000000 : ℚ), (-52730648397/250000000000 : ℚ), 2⟩,
    ⟨(9499239703/25000000000 : ℚ), (3765259989/10000000000 : ℚ), (-167430545541/1000000000000 : ℚ), 2⟩,
    ⟨(397007560789/1000000000000 : ℚ), (2868101163/10000000000 : ℚ), (-66306132977/500000000000 : ℚ), 2⟩,
    ⟨(414295677273/1000000000000 : ℚ), (2169612237/10000000000 : ℚ), (-13037913269/125000000000 : ℚ), 2⟩,
    ⟨(10791686089/25000000000 : ℚ), (808914061/5000000000 : ℚ), (-80982128967/1000000000000 : ℚ), 2⟩,
    ⟨(112238890011/250000000000 : ℚ), (1176349129/10000000000 : ℚ), (-6155648571/100000000000 : ℚ), 1⟩,
    ⟨(465993532713/1000000000000 : ℚ), (819218183/10000000000 : ℚ), (-44168119/976562500 : ℚ), 1⟩,
    ⟨(15081789893/31250000000 : ℚ), (105526137/2000000000 : ℚ), (-6280963569/200000000000 : ℚ), 1⟩,
    ⟨(124666673973/250000000000 : ℚ), (35971537/1250000000 : ℚ), (-9820607009/500000000000 : ℚ), 1⟩,
    ⟨(513987225979/1000000000000 : ℚ), (89369151/10000000000 : ℚ), (-1199868651/125000000000 : ℚ), 1⟩,
    ⟨(528431321759/1000000000000 : ℚ), (-75301509/10000000000 : ℚ), (-203707057/200000000000 : ℚ), 1⟩,
    ⟨(135464969673/250000000000 : ℚ), (-42419407/2000000000 : ℚ), (78755061/12500000000 : ℚ), 1⟩,
    ⟨(110828714487/200000000000 : ℚ), (-325491067/10000000000 : ℚ), (12513353377/1000000000000 : ℚ), 1⟩,
    ⟨(565164104301/1000000000000 : ℚ), (-26182239/625000000 : ℚ), (4435307587/250000000000 : ℚ), 1⟩,
    ⟨(114963068109/200000000000 : ℚ), (-61875951/1250000000 : ℚ), (11038988871/500000000000 : ℚ), 1⟩,
    ⟨(116600866897/200000000000 : ℚ), (-555783989/10000000000 : ℚ), (6399039021/250000000000 : ℚ), 1⟩,
    ⟨(294826110817/500000000000 : ℚ), (-602771989/10000000000 : ℚ), (28351083161/1000000000000 : ℚ), 1⟩,
    ⟨(148673744801/250000000000 : ℚ), (-127420077/2000000000 : ℚ), (30383873943/1000000000000 : ℚ), 1⟩,
    ⟨(598084042683/1000000000000 : ℚ), (-659565119/10000000000 : ℚ), (31723633647/1000000000000 : ℚ), 1⟩,
    ⟨(599786773537/1000000000000 : ℚ), (-20958559/312500000 : ℚ), (3238897547/100000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-336028377/5000000000 : ℚ), (6494386533/200000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (52399107301/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control40.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control40.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate40

-- Control41
namespace DiagonalRamsey.JointInheritedCertificate41
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(313175989917/1000000000000 : ℚ), (18126703376439/5000000000 : ℚ), (-568417924370617/500000000000 : ℚ), 12⟩,
    ⟨(1568209331/5000000000 : ℚ), (3991074488611/10000000000 : ℚ), (-31545142046259/250000000000 : ℚ), 9⟩,
    ⟨(31457249643/100000000000 : ℚ), (1415782957389/10000000000 : ℚ), (-22664137344249/500000000000 : ℚ), 7⟩,
    ⟨(315965638637/1000000000000 : ℚ), (708883093559/10000000000 : ℚ), (-11526402618931/500000000000 : ℚ), 6⟩,
    ⟨(158908968309/500000000000 : ℚ), (52434216869/1250000000 : ℚ), (-13886124960587/1000000000000 : ℚ), 6⟩,
    ⟨(320124928027/1000000000000 : ℚ), (10957470961/400000000 : ℚ), (-577884649747/62500000000 : ℚ), 5⟩,
    ⟨(322881055119/1000000000000 : ℚ), (1491382261/78125000 : ℚ), (-263107016453/40000000000 : ℚ), 5⟩,
    ⟨(326079678141/1000000000000 : ℚ), (34820327309/2500000000 : ℚ), (-612955141111/125000000000 : ℚ), 4⟩,
    ⟨(82428272833/250000000000 : ℚ), (105151097169/10000000000 : ℚ), (-1892522502517/500000000000 : ℚ), 4⟩,
    ⟨(333772541481/1000000000000 : ℚ), (81502813657/10000000000 : ℚ), (-150044481203/50000000000 : ℚ), 4⟩,
    ⟨(42281031127/125000000000 : ℚ), (1612685241/250000000 : ℚ), (-2430083268239/1000000000000 : ℚ), 4⟩,
    ⟨(68625886313/200000000000 : ℚ), (25964838769/5000000000 : ℚ), (-2001762855223/1000000000000 : ℚ), 3⟩,
    ⟨(174202164967/500000000000 : ℚ), (21197355931/5000000000 : ℚ), (-33444348821/20000000000 : ℚ), 3⟩,
    ⟨(354060236429/1000000000000 : ℚ), (35019820867/10000000000 : ℚ), (-88331027799/62500000000 : ℚ), 3⟩,
    ⟨(360083525477/1000000000000 : ℚ), (14608880189/5000000000 : ℚ), (-603103043897/500000000000 : ℚ), 3⟩,
    ⟨(183229843223/500000000000 : ℚ), (6146474531/2500000000 : ℚ), (-1038010723987/1000000000000 : ℚ), 3⟩,
    ⟨(186586679303/500000000000 : ℚ), (10420484207/5000000000 : ℚ), (-44978528581/50000000000 : ℚ), 3⟩,
    ⟨(190104184067/500000000000 : ℚ), (1111199427/625000000 : ℚ), (-156855875257/200000000000 : ℚ), 2⟩,
    ⟨(193773883537/500000000000 : ℚ), (7625543077/5000000000 : ℚ), (-137453216639/200000000000 : ℚ), 2⟩,
    ⟨(98793468543/250000000000 : ℚ), (13145114563/10000000000 : ℚ), (-604875353243/1000000000000 : ℚ), 2⟩,
    ⟨(100767079367/250000000000 : ℚ), (2275355177/2000000000 : ℚ), (-66790114633/125000000000 : ℚ), 2⟩,
    ⟨(411212078557/1000000000000 : ℚ), (2470296277/2500000000 : ℚ), (-47344903469/100000000000 : ℚ), 2⟩,
    ⟨(104896384601/250000000000 : ℚ), (8607913541/10000000000 : ℚ), (-420573827631/1000000000000 : ℚ), 2⟩,
    ⟨(107042131153/250000000000 : ℚ), (1879334891/2500000000 : ℚ), (-374360562279/1000000000000 : ℚ), 2⟩,
    ⟨(87388072003/200000000000 : ℚ), (3289012589/5000000000 : ℚ), (-333741560727/1000000000000 : ℚ), 2⟩,
    ⟨(445879912493/1000000000000 : ℚ), (5764802163/10000000000 : ℚ), (-148927357517/500000000000 : ℚ), 2⟩,
    ⟨(227482822941/500000000000 : ℚ), (1011471421/2000000000 : ℚ), (-132998956401/500000000000 : ℚ), 2⟩,
    ⟨(464175671853/1000000000000 : ℚ), (1109793107/2500000000 : ℚ), (-59398709191/250000000000 : ℚ), 2⟩,
    ⟨(59185975331/125000000000 : ℚ), (3896724917/10000000000 : ℚ), (-8486760073/40000000000 : ℚ), 2⟩,
    ⟨(30179975283/62500000000 : ℚ), (3418872861/10000000000 : ℚ), (-47330959353/250000000000 : ℚ), 2⟩,
    ⟨(492328451819/1000000000000 : ℚ), (37454787/125000000 : ℚ), (-33745451403/200000000000 : ℚ), 2⟩,
    ⟨(25090579071/50000000000 : ℚ), (163847619/625000000 : ℚ), (-150099593977/1000000000000 : ℚ), 2⟩,
    ⟨(511306147643/1000000000000 : ℚ), (457593427/2000000000 : ℚ), (-26640817881/200000000000 : ℚ), 2⟩,
    ⟨(104157855449/200000000000 : ℚ), (497544517/2500000000 : ℚ), (-58919666813/500000000000 : ℚ), 2⟩,
    ⟨(66279765567/125000000000 : ℚ), (344722771/2000000000 : ℚ), (-103833214171/1000000000000 : ℚ), 1⟩,
    ⟨(107925985283/200000000000 : ℚ), (296877457/2000000000 : ℚ), (-18207607451/200000000000 : ℚ), 1⟩,
    ⟨(54894205721/100000000000 : ℚ), (1269186941/10000000000 : ℚ), (-39663284687/500000000000 : ℚ), 1⟩,
    ⟨(279076041591/500000000000 : ℚ), (1075181619/10000000000 : ℚ), (-68588806957/1000000000000 : ℚ), 1⟩,
    ⟨(56723781657/100000000000 : ℚ), (899942379/10000000000 : ℚ), (-7341165421/125000000000 : ℚ), 1⟩,
    ⟨(72022171131/125000000000 : ℚ), (370689337/5000000000 : ℚ), (-49665080033/1000000000000 : ℚ), 1⟩,
    ⟨(146237301113/250000000000 : ℚ), (597685767/10000000000 : ℚ), (-10330902701/250000000000 : ℚ), 1⟩,
    ⟨(29676609533/50000000000 : ℚ), (467301257/10000000000 : ℚ), (-33641509323/1000000000000 : ℚ), 1⟩,
    ⟨(601905650507/1000000000000 : ℚ), (348868981/10000000000 : ℚ), (-26563162103/1000000000000 : ℚ), 1⟩,
    ⟨(152512352899/250000000000 : ℚ), (241208943/10000000000 : ℚ), (-20039685147/1000000000000 : ℚ), 1⟩,
    ⟨(154485963723/250000000000 : ℚ), (28658433/2000000000 : ℚ), (-14028026727/1000000000000 : ℚ), 1⟩,
    ⟨(62556996199/100000000000 : ℚ), (2710979/500000000 : ℚ), (-8490207003/1000000000000 : ℚ), 1⟩,
    ⟨(63290936093/100000000000 : ℚ), (-13397857/5000000000 : ℚ), (-424084313/125000000000 : ℚ), 1⟩,
    ⟨(639944370457/1000000000000 : ℚ), (-100443441/10000000000 : ℚ), (51769737/40000000000 : ℚ), 1⟩,
    ⟨(646658042617/1000000000000 : ℚ), (-10458051/625000000 : ℚ), (5596808539/1000000000000 : ℚ), 1⟩,
    ⟨(653034203587/1000000000000 : ℚ), (-227983289/10000000000 : ℚ), (953827243/100000000000 : ℚ), 1⟩,
    ⟨(329528746317/500000000000 : ℚ), (-282873661/10000000000 : ℚ), (1642402337/125000000000 : ℚ), 1⟩,
    ⟨(664713399129/1000000000000 : ℚ), (-332409847/10000000000 : ℚ), (8208928887/500000000000 : ℚ), 1⟩,
    ⟨(334994148749/500000000000 : ℚ), (-188475737/5000000000 : ℚ), (1211892411/62500000000 : ℚ), 1⟩,
    ⟨(42179342503/62500000000 : ℚ), (-416813503/10000000000 : ℚ), (11035332441/500000000000 : ℚ), 1⟩,
    ⟨(679345187583/1000000000000 : ℚ), (-226135507/5000000000 : ℚ), (4894296157/200000000000 : ℚ), 1⟩,
    ⟨(683404637731/1000000000000 : ℚ), (-120890819/2500000000 : ℚ), (13301814831/500000000000 : ℚ), 1⟩,
    ⟨(343519025461/500000000000 : ℚ), (-510897193/10000000000 : ℚ), (14238294527/500000000000 : ℚ), 1⟩,
    ⟨(138047334789/200000000000 : ℚ), (-26722511/500000000 : ℚ), (15049262977/500000000000 : ℚ), 1⟩,
    ⟨(173248200259/250000000000 : ℚ), (-69296601/1250000000 : ℚ), (7869098427/250000000000 : ℚ), 1⟩,
    ⟨(139059958489/200000000000 : ℚ), (-142697609/2500000000 : ℚ), (32616012803/1000000000000 : ℚ), 1⟩,
    ⟨(697152090427/1000000000000 : ℚ), (-583805279/10000000000 : ℚ), (16761068831/500000000000 : ℚ), 1⟩,
    ⟨(349272616317/500000000000 : ℚ), (-74187193/1250000000 : ℚ), (34198510101/1000000000000 : ℚ), 1⟩,
    ⟨(699475862863/1000000000000 : ℚ), (-599926509/10000000000 : ℚ), (34647901309/1000000000000 : ℚ), 1⟩,
    ⟨(699941739147/1000000000000 : ℚ), (-150782819/2500000000 : ℚ), (34872141607/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-301765709/5000000000 : ℚ), (17450075199/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (11084865401/62500000000 : ℚ)
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
theorem certOK : JointInheritedControls.control41.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control41.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate41

-- Control42
namespace DiagonalRamsey.JointInheritedCertificate42
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4974451541/125000000000 : ℚ), (2164264236587/2000000000 : ℚ), (-5397638626877/125000000000 : ℚ), 10⟩,
    ⟨(39991213561/1000000000000 : ℚ), (228952905999/2000000000 : ℚ), (-2318874485947/500000000000 : ℚ), 7⟩,
    ⟨(2018744959/50000000000 : ℚ), (75207738577/2000000000 : ℚ), (-155358917837/100000000000 : ℚ), 6⟩,
    ⟨(40931924363/1000000000000 : ℚ), (83250742077/5000000000 : ℚ), (-140602567849/200000000000 : ℚ), 5⟩,
    ⟨(162659699/3906250000 : ℚ), (16275838789/2000000000 : ℚ), (-176027509917/500000000000 : ℚ), 4⟩,
    ⟨(21237265021/500000000000 : ℚ), (38866336277/10000000000 : ℚ), (-17347525653/100000000000 : ℚ), 4⟩,
    ⟨(43400829067/1000000000000 : ℚ), (7359117393/5000000000 : ℚ), (-17474844723/250000000000 : ℚ), 3⟩,
    ⟨(11096045717/250000000000 : ℚ), (-271521543/10000000000 : ℚ), (-832844909/200000000000 : ℚ), 3⟩,
    ⟨(11346700427/250000000000 : ℚ), (-101955049/100000000 : ℚ), (161392713/4000000000 : ℚ), 3⟩,
    ⟨(11592538877/250000000000 : ℚ), (-17080022181/10000000000 : ℚ), (8989495149/125000000000 : ℚ), 3⟩,
    ⟨(23648227267/500000000000 : ℚ), (-22007481567/10000000000 : ℚ), (94983679419/1000000000000 : ℚ), 3⟩,
    ⟨(376016419/7812500000 : ℚ), (-25587543321/10000000000 : ℚ), (112060692077/1000000000000 : ℚ), 2⟩,
    ⟨(48839060213/1000000000000 : ℚ), (-3521944041/1250000000 : ℚ), (124606420491/1000000000000 : ℚ), 2⟩,
    ⟨(12349021349/250000000000 : ℚ), (-7495486299/2500000000 : ℚ), (8342385021/62500000000 : ℚ), 2⟩,
    ⟨(9955954203/200000000000 : ℚ), (-486411213/156250000 : ℚ), (139172471603/1000000000000 : ℚ), 2⟩,
    ⟨(49975372247/1000000000000 : ℚ), (-31689231927/10000000000 : ℚ), (141960172683/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31758414869/10000000000 : ℚ), (35576500537/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (253907547987/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control42.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control42.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate42

-- Control43
namespace DiagonalRamsey.JointInheritedCertificate43
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79870803003/1000000000000 : ℚ), (5505638516837/5000000000 : ℚ), (-88182902292937/1000000000000 : ℚ), 10⟩,
    ⟨(80256646413/1000000000000 : ℚ), (582752826259/5000000000 : ℚ), (-118423323963/12500000000 : ℚ), 7⟩,
    ⟨(5063344093/62500000000 : ℚ), (383258057013/10000000000 : ℚ), (-1587936154491/500000000000 : ℚ), 5⟩,
    ⟨(41056147279/500000000000 : ℚ), (1700141227/100000000 : ℚ), (-11513040863/8000000000 : ℚ), 5⟩,
    ⟨(41755393887/500000000000 : ℚ), (41692934023/5000000000 : ℚ), (-722714885279/1000000000000 : ℚ), 4⟩,
    ⟨(21288810457/250000000000 : ℚ), (10032371339/2500000000 : ℚ), (-5599400871/15625000000 : ℚ), 4⟩,
    ⟨(86982461271/1000000000000 : ℚ), (15571023103/10000000000 : ℚ), (-147211644069/1000000000000 : ℚ), 3⟩,
    ⟨(44461113543/500000000000 : ℚ), (42383193/1250000000 : ℚ), (-13360796891/1000000000000 : ℚ), 3⟩,
    ⟨(2272499879/25000000000 : ℚ), (-9733760211/10000000000 : ℚ), (2410657723/31250000000 : ℚ), 3⟩,
    ⟨(46419880487/500000000000 : ℚ), (-16711872397/10000000000 : ℚ), (35303513539/250000000000 : ℚ), 3⟩,
    ⟨(47333490209/500000000000 : ℚ), (-1084941337/500000000 : ℚ), (187949945207/1000000000000 : ℚ), 3⟩,
    ⟨(96311434471/1000000000000 : ℚ), (-25316755509/10000000000 : ℚ), (111243974511/500000000000 : ℚ), 2⟩,
    ⟨(12213740961/125000000000 : ℚ), (-5585730419/2000000000 : ℚ), (1982574947/8000000000 : ℚ), 2⟩,
    ⟨(98808716757/1000000000000 : ℚ), (-14874860549/5000000000 : ℚ), (265713915493/1000000000000 : ℚ), 2⟩,
    ⟨(12445696979/125000000000 : ℚ), (-1931655821/625000000 : ℚ), (277187146041/1000000000000 : ℚ), 2⟩,
    ⟨(49975709621/500000000000 : ℚ), (-31469221259/10000000000 : ℚ), (35350097707/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7884715881/2500000000 : ℚ), (28349703503/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (195444022037/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control43.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control43.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate43

-- Control44
namespace DiagonalRamsey.JointInheritedCertificate44
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(380546728677/1000000000000 : ℚ), (2668484408549/500000000 : ℚ), (-1016394995482951/500000000000 : ℚ), 12⟩,
    ⟨(380931466177/1000000000000 : ℚ), (1177926492653/2000000000 : ℚ), (-225615918175087/1000000000000 : ℚ), 9⟩,
    ⟨(47712501789/125000000000 : ℚ), (2096928908551/10000000000 : ℚ), (-4052106889081/50000000000 : ℚ), 8⟩,
    ⟨(382850521581/1000000000000 : ℚ), (65914189259/625000000 : ℚ), (-41210769924867/1000000000000 : ℚ), 7⟩,
    ⟨(384380216311/1000000000000 : ℚ), (156800112049/2500000000 : ℚ), (-6204866234871/250000000000 : ℚ), 6⟩,
    ⟨(193142706667/500000000000 : ℚ), (411808219343/10000000000 : ℚ), (-16522428940803/1000000000000 : ℚ), 6⟩,
    ⟨(388561522863/1000000000000 : ℚ), (72150095959/2500000000 : ℚ), (-11750626513831/1000000000000 : ℚ), 5⟩,
    ⟨(24450191347/62500000000 : ℚ), (211792340481/10000000000 : ℚ), (-1094623007147/125000000000 : ℚ), 5⟩,
    ⟨(197101832851/500000000000 : ℚ), (20104372633/1250000000 : ℚ), (-1351301922037/200000000000 : ℚ), 4⟩,
    ⟨(198778053297/500000000000 : ℚ), (12539714907/1000000000 : ℚ), (-21416152603/4000000000 : ℚ), 4⟩,
    ⟨(200626153953/500000000000 : ℚ), (99826415791/10000000000 : ℚ), (-541631028297/125000000000 : ℚ), 4⟩,
    ⟨(101320841291/250000000000 : ℚ), (404102447/50000000 : ℚ), (-3566833221121/1000000000000 : ℚ), 4⟩,
    ⟨(409639567199/1000000000000 : ℚ), (13269241261/2000000000 : ℚ), (-1488618831871/500000000000 : ℚ), 3⟩,
    ⟨(207155209769/500000000000 : ℚ), (27548451377/5000000000 : ℚ), (-1256964813679/500000000000 : ℚ), 3⟩,
    ⟨(52410583711/125000000000 : ℚ), (46202240903/10000000000 : ℚ), (-535826981829/250000000000 : ℚ), 3⟩,
    ⟨(212275167123/500000000000 : ℚ), (19532347001/5000000000 : ℚ), (-1842246009707/1000000000000 : ℚ), 3⟩,
    ⟨(86018945553/200000000000 : ℚ), (16631625269/5000000000 : ℚ), (-1594404321733/1000000000000 : ℚ), 3⟩,
    ⟨(217952246657/500000000000 : ℚ), (28494527297/10000000000 : ℚ), (-277594614093/200000000000 : ℚ), 3⟩,
    ⟨(441965634659/1000000000000 : ℚ), (24535566497/10000000000 : ℚ), (-303561176819/250000000000 : ℚ), 3⟩,
    ⟨(448263549981/1000000000000 : ℚ), (5304913451/2500000000 : ℚ), (-133335628691/125000000000 : ℚ), 2⟩,
    ⟨(454783067049/1000000000000 : ℚ), (1842020079/1000000000 : ℚ), (-94031335277/100000000000 : ℚ), 2⟩,
    ⟨(461508479777/1000000000000 : ℚ), (16039760409/10000000000 : ℚ), (-207819893281/250000000000 : ℚ), 2⟩,
    ⟨(234211793027/500000000000 : ℚ), (14002390143/10000000000 : ℚ), (-184142438637/250000000000 : ℚ), 2⟩,
    ⟨(237755863393/500000000000 : ℚ), (6124123263/5000000000 : ℚ), (-653797462377/1000000000000 : ℚ), 2⟩,
    ⟨(24137791301/50000000000 : ℚ), (10729696557/10000000000 : ℚ), (-72631680579/125000000000 : ℚ), 2⟩,
    ⟨(245069216043/500000000000 : ℚ), (147007481/156250000 : ℚ), (-516795727761/1000000000000 : ℚ), 2⟩,
    ⟨(12441043991/25000000000 : ℚ), (8253602677/10000000000 : ℚ), (-229884084227/500000000000 : ℚ), 2⟩,
    ⟨(126311933127/250000000000 : ℚ), (7239775009/10000000000 : ℚ), (-408939337701/1000000000000 : ℚ), 2⟩,
    ⟨(128234506809/250000000000 : ℚ), (6346207621/10000000000 : ℚ), (-181728067907/500000000000 : ℚ), 2⟩,
    ⟨(52069411723/100000000000 : ℚ), (2777852327/5000000000 : ℚ), (-322608212603/1000000000000 : ℚ), 2⟩,
    ⟨(52849731739/100000000000 : ℚ), (4853956973/10000000000 : ℚ), (-28580040777/100000000000 : ℚ), 2⟩,
    ⟨(536328829123/1000000000000 : ℚ), (211449593/500000000 : ℚ), (-252531208557/1000000000000 : ℚ), 2⟩,
    ⟨(17005305801/31250000000 : ℚ), (3670740237/10000000000 : ℚ), (-222375767691/1000000000000 : ℚ), 2⟩,
    ⟨(110400259473/200000000000 : ℚ), (3170693683/10000000000 : ℚ), (-97486204757/500000000000 : ℚ), 2⟩,
    ⟨(22392179901/40000000000 : ℚ), (2721630661/10000000000 : ℚ), (-170011828631/1000000000000 : ℚ), 2⟩,
    ⟨(567560587519/1000000000000 : ℚ), (1158698261/5000000000 : ℚ), (-73614191729/500000000000 : ℚ), 2⟩,
    ⟨(575250882247/1000000000000 : ℚ), (3124361/16000000 : ℚ), (-126393033783/1000000000000 : ℚ), 2⟩,
    ⟨(116571371023/200000000000 : ℚ), (324619331/2000000000 : ℚ), (-5365378749/50000000000 : ℚ), 2⟩,
    ⟨(590360182669/1000000000000 : ℚ), (1324614313/10000000000 : ℚ), (-89799905401/1000000000000 : ℚ), 1⟩,
    ⟨(119548557747/200000000000 : ℚ), (1053912081/10000000000 : ℚ), (-3686006069/50000000000 : ℚ), 1⟩,
    ⟨(604986887969/1000000000000 : ℚ), (202017977/2500000000 : ℚ), (-14734319129/250000000000 : ℚ), 1⟩,
    ⟨(612075028701/1000000000000 : ℚ), (584557603/10000000000 : ℚ), (-45336682909/1000000000000 : ℚ), 1⟩,
    ⟨(618990134979/1000000000000 : ℚ), (19057967/500000000 : ℚ), (-32817650497/1000000000000 : ℚ), 1⟩,
    ⟨(312857773853/500000000000 : ℚ), (195947267/10000000000 : ℚ), (-4258317769/200000000000 : ℚ), 1⟩,
    ⟨(316117532387/500000000000 : ℚ), (27232561/10000000000 : ℚ), (-427216159/40000000000 : ℚ), 1⟩,
    ⟨(4988538907/7812500000 : ℚ), (-31616337/2500000000 : ℚ), (-457571599/500000000000 : ℚ), 1⟩,
    ⟨(322297060721/500000000000 : ℚ), (-266446473/10000000000 : ℚ), (8065157727/1000000000000 : ℚ), 1⟩,
    ⟨(650403886991/1000000000000 : ℚ), (-98463429/2500000000 : ℚ), (16314455131/1000000000000 : ℚ), 1⟩,
    ⟨(655948280509/1000000000000 : ℚ), (-254846389/5000000000 : ℚ), (23880535227/1000000000000 : ℚ), 1⟩,
    ⟨(661213945067/1000000000000 : ℚ), (-307424549/5000000000 : ℚ), (30805730823/1000000000000 : ℚ), 1⟩,
    ⟨(666188195217/1000000000000 : ℚ), (-88762787/1250000000 : ℚ), (37127536303/1000000000000 : ℚ), 1⟩,
    ⟨(167714761889/250000000000 : ℚ), (-398069247/5000000000 : ℚ), (21439567241/500000000000 : ℚ), 1⟩,
    ⟨(675215249591/1000000000000 : ℚ), (-174712171/2000000000 : ℚ), (9617970173/200000000000 : ℚ), 1⟩,
    ⟨(679246306849/1000000000000 : ℚ), (-942898577/10000000000 : ℚ), (26392771049/500000000000 : ℚ), 1⟩,
    ⟨(682942508161/1000000000000 : ℚ), (-502307297/5000000000 : ℚ), (14247232963/250000000000 : ℚ), 1⟩,
    ⟨(686294949053/1000000000000 : ℚ), (-1059112133/10000000000 : ℚ), (7589987113/125000000000 : ℚ), 1⟩,
    ⟨(689295553203/1000000000000 : ℚ), (-553370153/5000000000 : ℚ), (31997856651/500000000000 : ℚ), 1⟩,
    ⟨(172984272973/250000000000 : ℚ), (-1147798847/10000000000 : ℚ), (66831265559/1000000000000 : ℚ), 1⟩,
    ⟨(694213201421/1000000000000 : ℚ), (-73908881/625000000 : ℚ), (69239222791/1000000000000 : ℚ), 1⟩,
    ⟨(174029599611/250000000000 : ℚ), (-605591167/5000000000 : ℚ), (14246037569/200000000000 : ℚ), 1⟩,
    ⟨(27905923727/40000000000 : ℚ), (-1233892517/10000000000 : ℚ), (72812819221/1000000000000 : ℚ), 1⟩,
    ⟨(698798600443/1000000000000 : ℚ), (-1250808477/10000000000 : ℚ), (7399392969/100000000000 : ℚ), 1⟩,
    ⟨(349783574289/500000000000 : ℚ), (-631015317/5000000000 : ℚ), (37389281663/500000000000 : ℚ), 1⟩,
    ⟨(349975943039/500000000000 : ℚ), (-1267625249/10000000000 : ℚ), (75170051809/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-634161903/5000000000 : ℚ), (9402368639/125000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (131564303293/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control44.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control44.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate44

-- Control45
namespace DiagonalRamsey.JointInheritedCertificate45
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(123694496409/500000000000 : ℚ), (15413710613323/5000000000 : ℚ), (-47735025927991/62500000000 : ℚ), 12⟩,
    ⟨(247813664247/1000000000000 : ℚ), (847485848621/2500000000 : ℚ), (-1324579343241/15625000000 : ℚ), 9⟩,
    ⟨(248661984037/1000000000000 : ℚ), (600265394683/5000000000 : ℚ), (-1522708222071/50000000000 : ℚ), 7⟩,
    ⟨(62482977127/250000000000 : ℚ), (299945506941/5000000000 : ℚ), (-15488842069581/1000000000000 : ℚ), 6⟩,
    ⟨(251620378303/1000000000000 : ℚ), (44272102979/1250000000 : ℚ), (-9330374619069/1000000000000 : ℚ), 6⟩,
    ⟨(253723325749/1000000000000 : ℚ), (230734602579/10000000000 : ℚ), (-3106536719651/500000000000 : ℚ), 5⟩,
    ⟨(256235684663/1000000000000 : ℚ), (8019207273/500000000 : ℚ), (-2210134432871/500000000000 : ℚ), 5⟩,
    ⟨(259151402551/1000000000000 : ℚ), (3647340367/312500000 : ℚ), (-3295552120329/1000000000000 : ℚ), 4⟩,
    ⟨(262463455193/1000000000000 : ℚ), (87882534381/10000000000 : ℚ), (-2543985411013/1000000000000 : ℚ), 4⟩,
    ⟨(53232772713/200000000000 : ℚ), (1698444587/250000000 : ℚ), (-2017095772837/1000000000000 : ℚ), 4⟩,
    ⟨(270243713059/1000000000000 : ℚ), (13407278051/2500000000 : ℚ), (-816764903467/500000000000 : ℚ), 3⟩,
    ⟨(3433664687/12500000000 : ℚ), (43059227213/10000000000 : ℚ), (-1345679219241/1000000000000 : ℚ), 3⟩,
    ⟨(69875382531/250000000000 : ℚ), (35061636751/10000000000 : ℚ), (-1124177382413/1000000000000 : ℚ), 3⟩,
    ⟨(284657194803/1000000000000 : ℚ), (28887863417/10000000000 : ℚ), (-950111659609/1000000000000 : ℚ), 3⟩,
    ⟨(290147748549/1000000000000 : ℚ), (2404026853/1000000000 : ℚ), (-405427841561/500000000000 : ℚ), 3⟩,
    ⟨(295959964137/1000000000000 : ℚ), (20177901649/10000000000 : ℚ), (-139543770251/200000000000 : ℚ), 3⟩,
    ⟨(302079839431/1000000000000 : ℚ), (17061088097/10000000000 : ℚ), (-302280418931/500000000000 : ℚ), 3⟩,
    ⟨(61698526223/200000000000 : ℚ), (14517565007/10000000000 : ℚ), (-263471757567/500000000000 : ℚ), 2⟩,
    ⟨(78795722553/250000000000 : ℚ), (12421101763/10000000000 : ℚ), (-230797304567/500000000000 : ℚ), 2⟩,
    ⟨(161067249651/500000000000 : ℚ), (10677613237/10000000000 : ℚ), (-406058687973/1000000000000 : ℚ), 2⟩,
    ⟨(6586614227/20000000000 : ℚ), (460795559/500000000 : ℚ), (-179232133271/500000000000 : ℚ), 2⟩,
    ⟨(6735083801/20000000000 : ℚ), (997675777/1250000000 : ℚ), (-158682441427/500000000000 : ℚ), 2⟩,
    ⟨(344387051593/1000000000000 : ℚ), (6931733089/10000000000 : ℚ), (-281628459227/1000000000000 : ℚ), 2⟩,
    ⟨(176105453873/500000000000 : ℚ), (241346287/400000000 : ℚ), (-250358880021/1000000000000 : ℚ), 2⟩,
    ⟨(72041382031/200000000000 : ℚ), (5260851467/10000000000 : ℚ), (-222839488857/1000000000000 : ℚ), 2⟩,
    ⟨(368355795749/1000000000000 : ℚ), (4592275621/10000000000 : ℚ), (-19849177261/100000000000 : ℚ), 2⟩,
    ⟨(376637933149/1000000000000 : ℚ), (1002744543/2500000000 : ℚ), (-176844735689/1000000000000 : ℚ), 2⟩,
    ⟨(385033369961/1000000000000 : ℚ), (700640133/2000000000 : ℚ), (-157511916493/1000000000000 : ℚ), 2⟩,
    ⟨(393521880841/1000000000000 : ℚ), (1528850053/5000000000 : ℚ), (-17521742447/125000000000 : ℚ), 2⟩,
    ⟨(16083320649/40000000000 : ℚ), (106609251/400000000 : ℚ), (-62282564663/500000000000 : ℚ), 2⟩,
    ⟨(410696151587/1000000000000 : ℚ), (2318147459/10000000000 : ℚ), (-22092627851/200000000000 : ℚ), 2⟩,
    ⟨(419340537129/1000000000000 : ℚ), (1005044917/5000000000 : ℚ), (-48840421893/500000000000 : ℚ), 2⟩,
    ⟨(42799534777/100000000000 : ℚ), (1735743873/10000000000 : ℚ), (-86059945301/1000000000000 : ℚ), 2⟩,
    ⟨(6822495833/15625000000 : ℚ), (745323447/5000000000 : ℚ), (-75465893609/1000000000000 : ℚ), 2⟩,
    ⟨(445252868673/1000000000000 : ℚ), (635517479/5000000000 : ℚ), (-65783818311/1000000000000 : ℚ), 2⟩,
    ⟨(453814004057/1000000000000 : ℚ), (536860149/5000000000 : ℚ), (-14228812649/250000000000 : ℚ), 1⟩,
    ⟨(231151257469/500000000000 : ℚ), (111999073/1250000000 : ℚ), (-12193865549/250000000000 : ℚ), 1⟩,
    ⟨(1882791807/4000000000 : ℚ), (367769483/5000000000 : ℚ), (-41291294567/1000000000000 : ℚ), 1⟩,
    ⟨(9579601783/20000000000 : ℚ), (118075793/2000000000 : ℚ), (-17199687879/500000000000 : ℚ), 1⟩,
    ⟨(60891121843/125000000000 : ℚ), (57351401/1250000000 : ℚ), (-1121785973/40000000000 : ℚ), 1⟩,
    ⟨(967040971/1953125000 : ℚ), (84842411/2500000000 : ℚ), (-22179153689/1000000000000 : ℚ), 1⟩,
    ⟨(100589766661/200000000000 : ℚ), (115393703/5000000000 : ℚ), (-8380502699/500000000000 : ℚ), 1⟩,
    ⟨(3988919491/7812500000 : ℚ), (2639337/200000000 : ℚ), (-1469193381/125000000000 : ℚ), 1⟩,
    ⟨(518005173549/1000000000000 : ℚ), (41954639/10000000000 : ℚ), (-1424926451/200000000000 : ℚ), 1⟩,
    ⟨(525201385597/1000000000000 : ℚ), (-20039533/5000000000 : ℚ), (-355752711/125000000000 : ℚ), 1⟩,
    ⟨(532152994687/1000000000000 : ℚ), (-57429021/5000000000 : ℚ), (276782213/250000000000 : ℚ), 1⟩,
    ⟨(67355406723/125000000000 : ℚ), (-45753661/2500000000 : ℚ), (47567021/10000000000 : ℚ), 1⟩,
    ⟨(545256045467/1000000000000 : ℚ), (-122551077/5000000000 : ℚ), (324879611/40000000000 : ℚ), 1⟩,
    ⟨(551375920761/1000000000000 : ℚ), (-150802601/5000000000 : ℚ), (5610005339/500000000000 : ℚ), 1⟩,
    ⟨(557188136349/1000000000000 : ℚ), (-352948601/10000000000 : ℚ), (1406577723/100000000000 : ℚ), 1⟩,
    ⟨(112535738019/200000000000 : ℚ), (-199752417/5000000000 : ℚ), (1667253247/100000000000 : ℚ), 1⟩,
    ⟨(22713374191/40000000000 : ℚ), (-22080021/500000000 : ℚ), (9525973691/500000000000 : ℚ), 1⟩,
    ⟨(572642709939/1000000000000 : ℚ), (-479521331/10000000000 : ℚ), (21214293463/1000000000000 : ℚ), 1⟩,
    ⟨(1803413037/3125000000 : ℚ), (-128379399/2500000000 : ℚ), (2316858999/100000000000 : ℚ), 1⟩,
    ⟨(581172021333/1000000000000 : ℚ), (-135951807/2500000000 : ℚ), (24922731739/1000000000000 : ℚ), 1⟩,
    ⟨(116974485941/200000000000 : ℚ), (-285289777/5000000000 : ℚ), (13241798839/500000000000 : ℚ), 1⟩,
    ⟨(147046120587/250000000000 : ℚ), (-18562439/312500000 : ℚ), (27857145091/1000000000000 : ℚ), 1⟩,
    ⟨(147775050059/250000000000 : ℚ), (-614202713/10000000000 : ℚ), (1161939539/40000000000 : ℚ), 1⟩,
    ⟨(593612559149/1000000000000 : ℚ), (-631312093/10000000000 : ℚ), (3006196777/100000000000 : ℚ), 1⟩,
    ⟨(148928876649/250000000000 : ℚ), (-645424939/10000000000 : ℚ), (15450602327/500000000000 : ℚ), 1⟩,
    ⟨(59740397639/100000000000 : ℚ), (-656621579/10000000000 : ℚ), (15784574737/500000000000 : ℚ), 1⟩,
    ⟨(299336950431/500000000000 : ℚ), (-664965013/10000000000 : ℚ), (4008514823/125000000000 : ℚ), 1⟩,
    ⟨(599522220651/1000000000000 : ℚ), (-670501771/10000000000 : ℚ), (6479964899/200000000000 : ℚ), 1⟩,
    ⟨(599946892081/1000000000000 : ℚ), (-673262531/10000000000 : ℚ), (8141349201/250000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-67360727/1000000000 : ℚ), (32586080241/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (6866213709/31250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control45.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control45.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate45

-- Control46
namespace DiagonalRamsey.JointInheritedCertificate46
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(78697743509/250000000000 : ℚ), (35916042507643/10000000000 : ℚ), (-1132052336895311/1000000000000 : ℚ), 12⟩,
    ⟨(157627452647/500000000000 : ℚ), (988559833731/2500000000 : ℚ), (-62825421878631/500000000000 : ℚ), 9⟩,
    ⟨(316181650157/1000000000000 : ℚ), (1402884553231/10000000000 : ℚ), (-45138842399187/1000000000000 : ℚ), 7⟩,
    ⟨(317568976017/1000000000000 : ℚ), (702530820907/10000000000 : ℚ), (-22957111921591/1000000000000 : ℚ), 7⟩,
    ⟨(79853385171/250000000000 : ℚ), (25986715233/625000000 : ℚ), (-3457247701979/250000000000 : ℚ), 6⟩,
    ⟨(8042772511/25000000000 : ℚ), (67895497637/2500000000 : ℚ), (-9208521515263/1000000000000 : ℚ), 5⟩,
    ⟨(64891104149/200000000000 : ℚ), (189295440327/10000000000 : ℚ), (-3275620534709/500000000000 : ℚ), 5⟩,
    ⟨(327640789567/1000000000000 : ℚ), (69071644521/5000000000 : ℚ), (-488421535307/100000000000 : ℚ), 4⟩,
    ⟨(66251806663/200000000000 : ℚ), (104315882387/10000000000 : ℚ), (-1885143016783/500000000000 : ℚ), 4⟩,
    ⟨(335301535323/1000000000000 : ℚ), (80874519981/10000000000 : ℚ), (-93418323197/31250000000 : ℚ), 4⟩,
    ⟨(6795171137/20000000000 : ℚ), (8003187183/1250000000 : ℚ), (-484186945507/200000000000 : ℚ), 4⟩,
    ⟨(17230968027/50000000000 : ℚ), (51554192661/10000000000 : ℚ), (-997183434937/500000000000 : ℚ), 3⟩,
    ⟨(87468059073/250000000000 : ℚ), (42098330297/10000000000 : ℚ), (-1666156303007/1000000000000 : ℚ), 3⟩,
    ⟨(355504529467/1000000000000 : ℚ), (3478330431/1000000000 : ℚ), (-56330856739/40000000000 : ℚ), 3⟩,
    ⟨(180751335689/500000000000 : ℚ), (3628404099/1250000000 : ℚ), (-1201998008779/1000000000000 : ℚ), 3⟩,
    ⟨(45981526497/125000000000 : ℚ), (4886229367/2000000000 : ℚ), (-1034455315767/1000000000000 : ℚ), 3⟩,
    ⟨(374537854661/1000000000000 : ℚ), (20714347541/10000000000 : ℚ), (-896542438813/1000000000000 : ℚ), 3⟩,
    ⟨(76308698627/200000000000 : ℚ), (17674892381/10000000000 : ℚ), (-781681306127/1000000000000 : ℚ), 2⟩,
    ⟨(388852250201/1000000000000 : ℚ), (15164642989/10000000000 : ℚ), (-68502170561/100000000000 : ℚ), 2⟩,
    ⟨(396446518423/1000000000000 : ℚ), (6536526913/5000000000 : ℚ), (-602923986161/1000000000000 : ℚ), 2⟩,
    ⟨(404308002543/1000000000000 : ℚ), (1131637251/1000000000 : ℚ), (-532613869763/1000000000000 : ℚ), 2⟩,
    ⟨(206208881779/500000000000 : ℚ), (4915141727/5000000000 : ℚ), (-471946908473/1000000000000 : ℚ), 2⟩,
    ⟨(420756264343/1000000000000 : ℚ), (4282398147/5000000000 : ℚ), (-419244510047/1000000000000 : ℚ), 2⟩,
    ⟨(429303416719/1000000000000 : ℚ), (1496126011/2000000000 : ℚ), (-186588857477/500000000000 : ℚ), 2⟩,
    ⟨(54754828731/125000000000 : ℚ), (65466137/100000000 : ℚ), (-166341731753/500000000000 : ℚ), 2⟩,
    ⟨(446940859837/1000000000000 : ℚ), (2868894887/5000000000 : ℚ), (-296903370741/1000000000000 : ℚ), 2⟩,
    ⟨(28499291277/62500000000 : ℚ), (125850309/250000000 : ℚ), (-132569173777/500000000000 : ℚ), 2⟩,
    ⟨(465160234691/1000000000000 : ℚ), (2209448879/5000000000 : ℚ), (-236814545781/1000000000000 : ℚ), 2⟩,
    ⟨(474433487487/1000000000000 : ℚ), (969757579/2500000000 : ℚ), (-211457508247/1000000000000 : ℚ), 2⟩,
    ⟨(241893039371/500000000000 : ℚ), (3403355137/10000000000 : ℚ), (-94336168457/500000000000 : ℚ), 2⟩,
    ⟨(246597738623/500000000000 : ℚ), (745677319/2500000000 : ℚ), (-168128329961/1000000000000 : ℚ), 2⟩,
    ⟨(502639014931/1000000000000 : ℚ), (52189133/200000000 : ℚ), (-74773485439/500000000000 : ℚ), 2⟩,
    ⟨(51209394149/100000000000 : ℚ), (1138600701/5000000000 : ℚ), (-132692458463/1000000000000 : ℚ), 2⟩,
    ⟨(65192184897/125000000000 : ℚ), (198056117/1000000000 : ℚ), (-117364181959/1000000000000 : ℚ), 2⟩,
    ⟨(530946877679/1000000000000 : ℚ), (214373309/1250000000 : ℚ), (-2067813923/20000000000 : ℚ), 2⟩,
    ⟨(270149734467/500000000000 : ℚ), (14766159/100000000 : ℚ), (-22656216329/250000000000 : ℚ), 1⟩,
    ⟨(54957272173/100000000000 : ℚ), (78884957/625000000 : ℚ), (-78939923179/1000000000000 : ℚ), 1⟩,
    ⟨(558744295989/1000000000000 : ℚ), (1043753/9765625 : ℚ), (-213207051/3125000000 : ℚ), 1⟩,
    ⟨(113558419317/200000000000 : ℚ), (894132779/10000000000 : ℚ), (-3649297781/62500000000 : ℚ), 1⟩,
    ⟨(576694326573/1000000000000 : ℚ), (147213987/2000000000 : ℚ), (-4934468157/100000000000 : ℚ), 1⟩,
    ⟨(292714769851/500000000000 : ℚ), (148204951/2500000000 : ℚ), (-41021768571/1000000000000 : ℚ), 1⟩,
    ⟨(296988346039/500000000000 : ℚ), (115707073/2500000000 : ℚ), (-208480047/6250000000 : ℚ), 1⟩,
    ⟨(602315192863/1000000000000 : ℚ), (43093269/1250000000 : ℚ), (-5258868343/200000000000 : ℚ), 1⟩,
    ⟨(305212476939/500000000000 : ℚ), (29674893/1250000000 : ℚ), (-2473202021/125000000000 : ℚ), 1⟩,
    ⟨(618286437999/1000000000000 : ℚ), (139763087/10000000000 : ℚ), (-6893842543/500000000000 : ℚ), 1⟩,
    ⟨(31294035311/50000000000 : ℚ), (50942919/10000000000 : ℚ), (-826265567/100000000000 : ℚ), 1⟩,
    ⟨(316594731643/500000000000 : ℚ), (-14922461/5000000000 : ℚ), (-794261683/250000000000 : ℚ), 1⟩,
    ⟨(2000609693/3125000000 : ℚ), (-12910921/1250000000 : ℚ), (749378719/500000000000 : ℚ), 1⟩,
    ⟨(129376148889/200000000000 : ℚ), (-169987303/10000000000 : ℚ), (361935837/62500000000 : ℚ), 1⟩,
    ⟨(653230285043/1000000000000 : ℚ), (-9218969/400000000 : ℚ), (2430704139/250000000000 : ℚ), 1⟩,
    ⟨(329614213477/500000000000 : ℚ), (-285213307/10000000000 : ℚ), (1664355357/125000000000 : ℚ), 1⟩,
    ⟨(66486072013/100000000000 : ℚ), (-167306549/5000000000 : ℚ), (2073155107/125000000000 : ℚ), 1⟩,
    ⟨(670113595881/1000000000000 : ℚ), (-75806417/2000000000 : ℚ), (9775041607/500000000000 : ℚ), 1⟩,
    ⟨(674974399571/1000000000000 : ℚ), (-16751371/400000000 : ℚ), (277794269/12500000000 : ℚ), 1⟩,
    ⟨(339715710549/500000000000 : ℚ), (-227071977/5000000000 : ℚ), (2461807141/100000000000 : ℚ), 1⟩,
    ⟨(341736961553/500000000000 : ℚ), (-19413989/400000000 : ℚ), (2674456981/100000000000 : ℚ), 1⟩,
    ⟨(343546083427/500000000000 : ℚ), (-512607943/10000000000 : ℚ), (357656381/12500000000 : ℚ), 1⟩,
    ⟨(690277435677/1000000000000 : ℚ), (-268047803/5000000000 : ℚ), (30230057653/1000000000000 : ℚ), 1⟩,
    ⟨(693022055981/1000000000000 : ℚ), (-555962793/10000000000 : ℚ), (31604163423/1000000000000 : ℚ), 1⟩,
    ⟨(695319415737/1000000000000 : ℚ), (-572334679/10000000000 : ℚ), (32740647359/1000000000000 : ℚ), 1⟩,
    ⟨(174290995101/250000000000 : ℚ), (-1463283/25000000 : ℚ), (16822131911/500000000000 : ℚ), 1⟩,
    ⟨(87318913283/125000000000 : ℚ), (-29748919/500000000 : ℚ), (4289844363/125000000000 : ℚ), 1⟩,
    ⟨(87434756391/125000000000 : ℚ), (-601389359/10000000000 : ℚ), (8691722859/250000000000 : ℚ), 1⟩,
    ⟨(139988396477/200000000000 : ℚ), (-151146289/2500000000 : ℚ), (17495252271/500000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-604984177/10000000000 : ℚ), (17509217413/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (18661658301/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control46.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control46.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate46
