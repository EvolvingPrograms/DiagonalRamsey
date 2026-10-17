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

-- Control737
namespace DiagonalRamsey.JointInheritedCertificate737
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44171291987/1000000000000 : ℚ), (2182430469081/10000000000 : ℚ), (-604878677139/62500000000 : ℚ), 10⟩,
    ⟨(8922134397/200000000000 : ℚ), (1554522569/78125000 : ℚ), (-900661034273/1000000000000 : ℚ), 7⟩,
    ⟨(22711270179/500000000000 : ℚ), (42212498579/10000000000 : ℚ), (-39391140433/200000000000 : ℚ), 6⟩,
    ⟨(23241648753/500000000000 : ℚ), (-216406513/5000000000 : ℚ), (-1429782293/1000000000000 : ℚ), 5⟩,
    ⟨(4763145277/100000000000 : ℚ), (-1114029359/625000000 : ℚ), (80284255703/1000000000000 : ℚ), 5⟩,
    ⟨(24346104959/500000000000 : ℚ), (-6617324119/2500000000 : ℚ), (60941500209/500000000000 : ℚ), 5⟩,
    ⟨(49504078291/1000000000000 : ℚ), (-1241555339/400000000 : ℚ), (72155275343/500000000000 : ℚ), 4⟩,
    ⟨(3121466143/62500000000 : ℚ), (-16541612849/5000000000 : ℚ), (15447491299/100000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-8332459231/2500000000 : ℚ), (155707270323/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (71528080367/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control737.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control737.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate737

-- Control738
namespace DiagonalRamsey.JointInheritedCertificate738
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11053862907/125000000000 : ℚ), (110077885333/500000000 : ℚ), (-2443013170297/125000000000 : ℚ), 10⟩,
    ⟨(89303005561/1000000000000 : ℚ), (200908755977/10000000000 : ℚ), (-909840291117/500000000000 : ℚ), 7⟩,
    ⟨(45457220251/500000000000 : ℚ), (2139783677/500000000 : ℚ), (-398955646881/1000000000000 : ℚ), 6⟩,
    ⟨(18603976343/200000000000 : ℚ), (-94950513/5000000000 : ℚ), (-56425257/12500000000 : ℚ), 5⟩,
    ⟨(95298794863/1000000000000 : ℚ), (-3539185387/2000000000 : ℚ), (160068189799/1000000000000 : ℚ), 5⟩,
    ⟨(97404236077/1000000000000 : ℚ), (-5276198087/2000000000 : ℚ), (30459670797/125000000000 : ℚ), 4⟩,
    ⟨(99015671017/1000000000000 : ℚ), (-774094789/250000000 : ℚ), (288668475869/1000000000000 : ℚ), 4⟩,
    ⟨(99887773323/1000000000000 : ℚ), (-33011802767/10000000000 : ℚ), (77258636147/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-6651752013/2000000000 : ℚ), (311502728597/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (28369798543/62500000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control738.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control738.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate738

-- Control739
namespace DiagonalRamsey.JointInheritedCertificate739
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(132733872049/1000000000000 : ℚ), (9096457565393/10000000000 : ℚ), (-120906089628567/1000000000000 : ℚ), 12⟩,
    ⟨(66532417581/500000000000 : ℚ), (963452514099/10000000000 : ℚ), (-12903888531853/1000000000000 : ℚ), 9⟩,
    ⟨(6685702133/50000000000 : ℚ), (315123583313/10000000000 : ℚ), (-2131361839083/500000000000 : ℚ), 8⟩,
    ⟨(16832068233/125000000000 : ℚ), (68738187057/5000000000 : ℚ), (-940382379983/500000000000 : ℚ), 7⟩,
    ⟨(27171224981/200000000000 : ℚ), (12971009979/2000000000 : ℚ), (-89920587027/100000000000 : ℚ), 6⟩,
    ⟨(137266680631/1000000000000 : ℚ), (28350571323/10000000000 : ℚ), (-401011975663/1000000000000 : ℚ), 6⟩,
    ⟨(138834006179/1000000000000 : ℚ), (299720499/400000000 : ℚ), (-113232663309/1000000000000 : ℚ), 5⟩,
    ⟨(28099574021/200000000000 : ℚ), (-5516936923/10000000000 : ℚ), (68386650469/1000000000000 : ℚ), 5⟩,
    ⟨(142194331053/1000000000000 : ℚ), (-14162623493/10000000000 : ℚ), (95271728653/500000000000 : ℚ), 5⟩,
    ⟨(143858194979/1000000000000 : ℚ), (-20178812133/10000000000 : ℚ), (55313073101/200000000000 : ℚ), 5⟩,
    ⟨(145425520527/1000000000000 : ℚ), (-24497747457/10000000000 : ℚ), (67804355729/200000000000 : ℚ), 4⟩,
    ⟨(73418038127/500000000000 : ℚ), (-6911653413/2500000000 : ℚ), (385029653979/1000000000000 : ℚ), 4⟩,
    ⟨(74017827647/500000000000 : ℚ), (-1870769411/625000000 : ℚ), (418725949441/1000000000000 : ℚ), 4⟩,
    ⟨(74489079249/500000000000 : ℚ), (-788370323/250000000 : ℚ), (221261517831/500000000000 : ℚ), 4⟩,
    ⟨(37406841499/250000000000 : ℚ), (-3255773971/1000000000 : ℚ), (457795289079/1000000000000 : ℚ), 4⟩,
    ⟨(149958329109/1000000000000 : ℚ), (-6611408619/2000000000 : ℚ), (93054891527/200000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-1655946023/500000000 : ℚ), (466202489117/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (355096745451/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control739.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control739.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate739

-- Control740
namespace DiagonalRamsey.JointInheritedCertificate740
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(91295306143/500000000000 : ℚ), (639659002717/2000000000 : ℚ), (-29314286441981/500000000000 : ℚ), 11⟩,
    ⟨(36776547749/200000000000 : ℚ), (13534769883/400000000 : ℚ), (-3170445456297/500000000000 : ℚ), 8⟩,
    ⟨(186417335969/1000000000000 : ℚ), (22381188241/2000000000 : ℚ), (-2157311605091/1000000000000 : ℚ), 7⟩,
    ⟨(190097000807/1000000000000 : ℚ), (50512414153/10000000000 : ℚ), (-501996173919/500000000000 : ℚ), 6⟩,
    ⟨(194780325803/1000000000000 : ℚ), (12880756301/5000000000 : ℚ), (-264311162699/500000000000 : ℚ), 5⟩,
    ⟨(50071833351/250000000000 : ℚ), (6760212903/5000000000 : ℚ), (-143621521401/500000000000 : ℚ), 5⟩,
    ⟨(206406392397/1000000000000 : ℚ), (6648824983/10000000000 : ℚ), (-73861622189/500000000000 : ℚ), 4⟩,
    ⟨(8516094031/40000000000 : ℚ), (2440495691/10000000000 : ℚ), (-29802866661/500000000000 : ℚ), 4⟩,
    ⟨(109762786251/500000000000 : ℚ), (-152624853/5000000000 : ℚ), (-299400561/1000000000000 : ℚ), 4⟩,
    ⟨(176579321/781250000 : ℚ), (-2181899117/10000000000 : ℚ), (41474684311/1000000000000 : ℚ), 4⟩,
    ⟨(14508786867/62500000000 : ℚ), (-1753045633/5000000000 : ℚ), (71792167773/1000000000000 : ℚ), 4⟩,
    ⟨(237647597473/1000000000000 : ℚ), (-4456026171/10000000000 : ℚ), (47048471723/500000000000 : ℚ), 3⟩,
    ⟨(24233092247/100000000000 : ℚ), (-205419913/400000000 : ℚ), (55199800181/500000000000 : ℚ), 3⟩,
    ⟨(61502646827/250000000000 : ℚ), (-700739087/1250000000 : ℚ), (4875369607/40000000000 : ℚ), 3⟩,
    ⟨(248545184531/1000000000000 : ℚ), (-2951639539/5000000000 : ℚ), (6461851619/50000000000 : ℚ), 3⟩,
    ⟨(249837310991/1000000000000 : ℚ), (-188985327/312500000 : ℚ), (13283160009/100000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6065364357/10000000000 : ℚ), (133277302253/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (531489840613/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control740.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control740.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate740

-- Control741
namespace DiagonalRamsey.JointInheritedCertificate741
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(220806655009/1000000000000 : ℚ), (658563607121/2000000000 : ℚ), (-72987441095667/1000000000000 : ℚ), 11⟩,
    ⟨(222324660437/1000000000000 : ℚ), (174341053333/5000000000 : ℚ), (-7896569198077/1000000000000 : ℚ), 8⟩,
    ⟨(225302335197/1000000000000 : ℚ), (115488655203/10000000000 : ℚ), (-2688742271751/1000000000000 : ℚ), 7⟩,
    ⟨(57406312229/250000000000 : ℚ), (6531126333/1250000000 : ℚ), (-1253243033127/1000000000000 : ℚ), 6⟩,
    ⟨(47025454889/200000000000 : ℚ), (26746909329/10000000000 : ℚ), (-165440982493/250000000000 : ℚ), 5⟩,
    ⟨(241596972029/1000000000000 : ℚ), (2826779153/2000000000 : ℚ), (-361630325639/1000000000000 : ℚ), 5⟩,
    ⟨(124392857409/500000000000 : ℚ), (5644913/8000000 : ℚ), (-23543345691/125000000000 : ℚ), 4⟩,
    ⟨(256417243457/1000000000000 : ℚ), (2725424409/10000000000 : ℚ), (-79087887557/1000000000000 : ℚ), 4⟩,
    ⟨(264198282581/1000000000000 : ℚ), (-96089297/10000000000 : ℚ), (-5715064241/1000000000000 : ℚ), 4⟩,
    ⟨(271829811221/1000000000000 : ℚ), (-2020807963/10000000000 : ℚ), (45830439669/1000000000000 : ℚ), 4⟩,
    ⟨(279018554009/1000000000000 : ℚ), (-675175087/2000000000 : ℚ), (41565673773/500000000000 : ℚ), 4⟩,
    ⟨(285488251593/1000000000000 : ℚ), (-4345697559/10000000000 : ℚ), (11049443153/100000000000 : ℚ), 3⟩,
    ⟨(290990277123/1000000000000 : ℚ), (-5037881989/10000000000 : ℚ), (130441133051/1000000000000 : ℚ), 3⟩,
    ⟨(147656595421/500000000000 : ℚ), (-2758107897/5000000000 : ℚ), (72230866519/500000000000 : ℚ), 3⟩,
    ⟨(149145432801/500000000000 : ℚ), (-5818172143/10000000000 : ℚ), (76711674181/500000000000 : ℚ), 3⟩,
    ⟨(29980887103/100000000000 : ℚ), (-2982263361/5000000000 : ℚ), (19725002349/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2991307439/5000000000 : ℚ), (79171245249/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (247294607737/500000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control741.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control741.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate741

-- Control742
namespace DiagonalRamsey.JointInheritedCertificate742
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30132727657/200000000000 : ℚ), (3607396699899/10000000000 : ℚ), (-54540482047769/1000000000000 : ℚ), 11⟩,
    ⟨(151609334731/1000000000000 : ℚ), (4774393959/125000000 : ℚ), (-235540400741/40000000000 : ℚ), 8⟩,
    ⟨(153464385039/1000000000000 : ℚ), (126243476347/10000000000 : ℚ), (-997887067831/500000000000 : ℚ), 7⟩,
    ⟨(31231500133/200000000000 : ℚ), (11357716259/2000000000 : ℚ), (-922568163541/1000000000000 : ℚ), 6⟩,
    ⟨(1246759271/7812500000 : ℚ), (1794718861/625000000 : ℚ), (-19205879407/40000000000 : ℚ), 5⟩,
    ⟨(81807859527/500000000000 : ℚ), (7393848049/5000000000 : ℚ), (-127712103289/500000000000 : ℚ), 5⟩,
    ⟨(84047103333/500000000000 : ℚ), (3470498277/5000000000 : ℚ), (-125458922257/1000000000000 : ℚ), 4⟩,
    ⟨(43212135939/250000000000 : ℚ), (2116372007/10000000000 : ℚ), (-43306042233/1000000000000 : ℚ), 4⟩,
    ⟨(177696023817/1000000000000 : ℚ), (-8358367/80000000 : ℚ), (12050021737/1000000000000 : ℚ), 4⟩,
    ⟨(182450360907/1000000000000 : ℚ), (-1607382911/5000000000 : ℚ), (408784481/8000000000 : ℚ), 4⟩,
    ⟨(186928848519/1000000000000 : ℚ), (-2376254727/5000000000 : ℚ), (3974208239/50000000000 : ℚ), 4⟩,
    ⟨(38191876177/200000000000 : ℚ), (-2930061137/5000000000 : ℚ), (100404632513/1000000000000 : ℚ), 4⟩,
    ⟨(194387066907/1000000000000 : ℚ), (-6655259843/10000000000 : ℚ), (115721511829/1000000000000 : ℚ), 4⟩,
    ⟨(98540091267/500000000000 : ℚ), (-7207421859/10000000000 : ℚ), (126527910137/1000000000000 : ℚ), 4⟩,
    ⟨(99467616421/500000000000 : ℚ), (-944657229/1250000000 : ℚ), (65163369/488281250 : ℚ), 3⟩,
    ⟨(24985116161/125000000000 : ℚ), (-3863600599/5000000000 : ℚ), (27368669083/200000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-1937055671/2500000000 : ℚ), (137263649893/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (270966214701/500000000000 : ℚ)
  μ := (1/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control742.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control742.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate742

-- Control743
namespace DiagonalRamsey.JointInheritedCertificate743
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120233989647/1000000000000 : ℚ), (142745042863/312500000 : ℚ), (-27532931340237/500000000000 : ℚ), 12⟩,
    ⟨(120804554829/1000000000000 : ℚ), (242136698799/5000000000 : ℚ), (-1481130030281/250000000000 : ℚ), 8⟩,
    ⟨(121923758693/1000000000000 : ℚ), (159810982731/10000000000 : ℚ), (-1992637904019/1000000000000 : ℚ), 7⟩,
    ⟨(61774295431/500000000000 : ℚ), (17841425611/2500000000 : ℚ), (-908650699539/1000000000000 : ℚ), 6⟩,
    ⟨(125616609947/1000000000000 : ℚ), (886249721/250000000 : ℚ), (-461796471693/1000000000000 : ℚ), 6⟩,
    ⟨(25609668627/200000000000 : ℚ), (17533832237/10000000000 : ℚ), (-46966388059/200000000000 : ℚ), 5⟩,
    ⟨(65375170141/500000000000 : ℚ), (7379910027/10000000000 : ℚ), (-103576985129/1000000000000 : ℚ), 5⟩,
    ⟨(26723753031/200000000000 : ℚ), (43917119/400000000 : ℚ), (-5152786347/250000000000 : ℚ), 4⟩,
    ⟨(2133490403/15625000000 : ℚ), (-1521873043/5000000000 : ℚ), (7059154443/200000000000 : ℚ), 4⟩,
    ⟨(27882362133/200000000000 : ℚ), (-23062791/39062500 : ℚ), (7474058707/100000000000 : ℚ), 4⟩,
    ⟨(35528451953/250000000000 : ℚ), (-7942815851/10000000000 : ℚ), (103427203723/1000000000000 : ℚ), 4⟩,
    ⟨(144545541/1000000000 : ℚ), (-2354807149/2500000000 : ℚ), (124582922587/1000000000000 : ℚ), 4⟩,
    ⟨(29322712017/200000000000 : ℚ), (-10484256093/10000000000 : ℚ), (140084966443/1000000000000 : ℚ), 4⟩,
    ⟨(29647678451/200000000000 : ℚ), (-11226860131/10000000000 : ℚ), (151031885769/1000000000000 : ℚ), 4⟩,
    ⟨(149357596119/1000000000000 : ℚ), (-2924706223/2500000000 : ℚ), (79027175631/500000000000 : ℚ), 4⟩,
    ⟨(149928161301/1000000000000 : ℚ), (-5964273233/5000000000 : ℚ), (80745968977/500000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-5978491901/5000000000 : ℚ), (20239799473/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (547161234021/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control743.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control743.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate743

-- Control744
namespace DiagonalRamsey.JointInheritedCertificate744
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(202130264593/1000000000000 : ℚ), (4776180555967/10000000000 : ℚ), (-48392704309709/500000000000 : ℚ), 12⟩,
    ⟨(203047848239/1000000000000 : ℚ), (101405676889/2000000000 : ℚ), (-10420665023667/1000000000000 : ℚ), 8⟩,
    ⟨(40969550661/200000000000 : ℚ), (83866784867/5000000000 : ℚ), (-3510790707581/1000000000000 : ℚ), 7⟩,
    ⟨(4149216209/20000000000 : ℚ), (752193251/100000000 : ℚ), (-1606187575453/1000000000000 : ℚ), 6⟩,
    ⟨(26348325169/125000000000 : ℚ), (37647670161/10000000000 : ℚ), (-82147304443/100000000000 : ℚ), 6⟩,
    ⟨(214697317733/1000000000000 : ℚ), (3782306731/2000000000 : ℚ), (-423332140943/1000000000000 : ℚ), 5⟩,
    ⟨(43808534591/200000000000 : ℚ), (1660627549/2000000000 : ℚ), (-193497101221/1000000000000 : ℚ), 5⟩,
    ⟨(223655677453/1000000000000 : ℚ), (1751480617/10000000000 : ℚ), (-48598450043/1000000000000 : ℚ), 4⟩,
    ⟨(228359056053/1000000000000 : ℚ), (-1278476109/5000000000 : ℚ), (24354565687/500000000000 : ℚ), 4⟩,
    ⟨(29121507569/125000000000 : ℚ), (-5522865831/10000000000 : ℚ), (182947833/1562500000 : ℚ), 4⟩,
    ⟨(118658707887/500000000000 : ℚ), (-305169253/400000000 : ℚ), (166597666893/1000000000000 : ℚ), 4⟩,
    ⟨(120614066077/500000000000 : ℚ), (-571815347/625000000 : ℚ), (202953142671/1000000000000 : ℚ), 4⟩,
    ⟨(244553923057/1000000000000 : ℚ), (-5120853891/5000000000 : ℚ), (114744289777/500000000000 : ℚ), 4⟩,
    ⟨(247166980201/1000000000000 : ℚ), (-2750365199/2500000000 : ℚ), (1985329817/8000000000 : ℚ), 4⟩,
    ⟨(248966885267/1000000000000 : ℚ), (-5741667461/5000000000 : ℚ), (260119466503/1000000000000 : ℚ), 4⟩,
    ⟨(249884468913/1000000000000 : ℚ), (-5858794097/5000000000 : ℚ), (132981144427/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2936643243/2500000000 : ℚ), (33335842597/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (109832506043/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control744.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control744.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate744
