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

-- Control814
namespace DiagonalRamsey.JointInheritedCertificate814
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(24693878871/200000000000 : ℚ), (4307314430957/10000000000 : ℚ), (-53303713499613/1000000000000 : ℚ), 12⟩,
    ⟨(123977942181/1000000000000 : ℚ), (45684326307/1000000000 : ℚ), (-5726055786861/1000000000000 : ℚ), 9⟩,
    ⟨(3905484207/31250000000 : ℚ), (75312949627/5000000000 : ℚ), (-959673456259/500000000000 : ℚ), 8⟩,
    ⟨(7901482269/62500000000 : ℚ), (4189791009/625000000 : ℚ), (-6959543261/8000000000 : ℚ), 7⟩,
    ⟨(64133476437/500000000000 : ℚ), (16516565487/5000000000 : ℚ), (-54677924681/125000000000 : ℚ), 6⟩,
    ⟨(26086873957/200000000000 : ℚ), (16037850853/10000000000 : ℚ), (-217816454899/1000000000000 : ℚ), 6⟩,
    ⟨(132842674423/1000000000000 : ℚ), (6386833193/10000000000 : ℚ), (-90886839649/1000000000000 : ℚ), 5⟩,
    ⟨(13539931699/100000000000 : ℚ), (20236839/500000000 : ℚ), (-2678867303/250000000000 : ℚ), 5⟩,
    ⟨(27601209429/200000000000 : ℚ), (-3546102691/10000000000 : ℚ), (43260326757/1000000000000 : ℚ), 5⟩,
    ⟨(8785168107/62500000000 : ℚ), (-6279047037/10000000000 : ℚ), (81307912519/1000000000000 : ℚ), 5⟩,
    ⟨(142970994349/1000000000000 : ℚ), (-4114995293/5000000000 : ℚ), (108956261733/1000000000000 : ℚ), 4⟩,
    ⟨(145138411261/1000000000000 : ℚ), (-1928989387/2000000000 : ℚ), (129334579127/1000000000000 : ℚ), 4⟩,
    ⟨(146981647831/1000000000000 : ℚ), (-10667137039/10000000000 : ℚ), (36065626831/250000000000 : ℚ), 4⟩,
    ⟨(148429869511/1000000000000 : ℚ), (-5690418521/5000000000 : ℚ), (154803427419/1000000000000 : ℚ), 4⟩,
    ⟨(74713710977/500000000000 : ℚ), (-11834939057/10000000000 : ℚ), (161566074581/1000000000000 : ℚ), 4⟩,
    ⟨(7496798489/50000000000 : ℚ), (-1507016327/1250000000 : ℚ), (164876879449/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3020880021/2500000000 : ℚ), (165287633723/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (58884613653/100000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control814.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control814.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate814

-- Control815
namespace DiagonalRamsey.JointInheritedCertificate815
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127706553889/1000000000000 : ℚ), (1291260513877/10000000000 : ℚ), (-4144123763111/250000000000 : ℚ), 10⟩,
    ⟨(25877415941/200000000000 : ℚ), (119578227047/10000000000 : ℚ), (-1576690506007/1000000000000 : ℚ), 7⟩,
    ⟨(132492286517/1000000000000 : ℚ), (13712105851/5000000000 : ℚ), (-374547543703/1000000000000 : ℚ), 6⟩,
    ⟨(68274717367/500000000000 : ℚ), (79843587/312500000 : ℚ), (-8199479969/200000000000 : ℚ), 5⟩,
    ⟨(140940860321/1000000000000 : ℚ), (-7482957977/10000000000 : ℚ), (24497762477/250000000000 : ℚ), 5⟩,
    ⟨(72499004269/500000000000 : ℚ), (-12417008539/10000000000 : ℚ), (168451801821/1000000000000 : ℚ), 5⟩,
    ⟨(148103215349/1000000000000 : ℚ), (-14999119241/10000000000 : ℚ), (25784291489/125000000000 : ℚ), 4⟩,
    ⟨(74891870583/500000000000 : ℚ), (-8073172357/5000000000 : ℚ), (223359546057/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16284351629/10000000000 : ℚ), (56357038481/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (542018524627/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control815.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control815.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate815

-- Control816
namespace DiagonalRamsey.JointInheritedCertificate816
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9020042747/200000000000 : ℚ), (2075130979279/10000000000 : ℚ), (-4694742932179/500000000000 : ℚ), 11⟩,
    ⟨(45469569701/1000000000000 : ℚ), (94147340379/5000000000 : ℚ), (-108353116411/125000000000 : ℚ), 8⟩,
    ⟨(23076025267/500000000000 : ℚ), (38825057649/10000000000 : ℚ), (-36739300957/200000000000 : ℚ), 7⟩,
    ⟨(9408750943/200000000000 : ℚ), (-975089063/5000000000 : ℚ), (5953278237/1000000000000 : ℚ), 6⟩,
    ⟨(24004464183/500000000000 : ℚ), (-3724648363/2000000000 : ℚ), (85092599969/1000000000000 : ℚ), 5⟩,
    ⟨(48900632547/1000000000000 : ℚ), (-26931611527/10000000000 : ℚ), (12532143283/100000000000 : ℚ), 5⟩,
    ⟨(49583113381/1000000000000 : ℚ), (-31335196927/10000000000 : ℚ), (146998878451/1000000000000 : ℚ), 5⟩,
    ⟨(24976234673/500000000000 : ℚ), (-8327535211/2500000000 : ℚ), (156827037481/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-33548663371/10000000000 : ℚ), (158019081979/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (624384144573/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control816.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control816.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate816

-- Control817
namespace DiagonalRamsey.JointInheritedCertificate817
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22549771387/250000000000 : ℚ), (129663068639/625000000 : ℚ), (-18772995963303/1000000000000 : ℚ), 11⟩,
    ⟨(22734474659/250000000000 : ℚ), (188073377329/10000000000 : ℚ), (-865319685467/500000000000 : ℚ), 8⟩,
    ⟨(5768940451/62500000000 : ℚ), (38650548117/10000000000 : ℚ), (-364828335227/1000000000000 : ℚ), 6⟩,
    ⟨(94086699793/1000000000000 : ℚ), (-208837039/1000000000 : ℚ), (7064503157/500000000000 : ℚ), 6⟩,
    ⟨(9601731143/100000000000 : ℚ), (-936408023/500000000 : ℚ), (21511285667/125000000000 : ℚ), 5⟩,
    ⟨(97800964007/1000000000000 : ℚ), (-27009031743/10000000000 : ℚ), (63070287641/250000000000 : ℚ), 5⟩,
    ⟨(99166112587/1000000000000 : ℚ), (-1569683159/500000000 : ℚ), (295449305277/1000000000000 : ℚ), 5⟩,
    ⟨(3996197027/40000000000 : ℚ), (-667184111/200000000 : ℚ), (157506017891/500000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-8399141557/2500000000 : ℚ), (79346127917/250000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (248507138377/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control817.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control817.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate817

-- Control818
namespace DiagonalRamsey.JointInheritedCertificate818
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(33862982319/250000000000 : ℚ), (1049629829813/5000000000 : ℚ), (-28524921272007/1000000000000 : ℚ), 11⟩,
    ⟨(136548592767/1000000000000 : ℚ), (190621888717/10000000000 : ℚ), (-164565209719/62500000000 : ℚ), 8⟩,
    ⟨(138574962673/1000000000000 : ℚ), (19729526913/5000000000 : ℚ), (-558438434419/1000000000000 : ℚ), 6⟩,
    ⟨(28244508509/200000000000 : ℚ), (-1729089563/10000000000 : ℚ), (16714399617/1000000000000 : ℚ), 6⟩,
    ⟨(144088262349/1000000000000 : ℚ), (-2315998213/1250000000 : ℚ), (125026563/488281250 : ℚ), 5⟩,
    ⟨(146735842221/1000000000000 : ℚ), (-13435427039/5000000000 : ℚ), (18864106037/50000000000 : ℚ), 5⟩,
    ⟨(148762212127/1000000000000 : ℚ), (-15639815877/5000000000 : ℚ), (442401486191/1000000000000 : ℚ), 5⟩,
    ⟨(149858875617/1000000000000 : ℚ), (-8313367723/2500000000 : ℚ), (47187088741/100000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-16745860413/5000000000 : ℚ), (9508859029/20000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (390287764529/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control818.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control818.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate818

-- Control819
namespace DiagonalRamsey.JointInheritedCertificate819
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46618895011/250000000000 : ℚ), (1356782339007/5000000000 : ℚ), (-12696480952683/250000000000 : ℚ), 12⟩,
    ⟨(93846619049/500000000000 : ℚ), (287366641781/10000000000 : ℚ), (-2744393785011/500000000000 : ℚ), 8⟩,
    ⟨(190081760289/1000000000000 : ℚ), (95098215063/10000000000 : ℚ), (-932293196307/500000000000 : ℚ), 7⟩,
    ⟨(3870987141/20000000000 : ℚ), (21456203463/5000000000 : ℚ), (-216387085049/250000000000 : ℚ), 6⟩,
    ⟨(9898138529/50000000000 : ℚ), (21842932221/10000000000 : ℚ), (-226923962539/500000000000 : ℚ), 6⟩,
    ⟨(1625219167/8000000000 : ℚ), (11406473357/10000000000 : ℚ), (-48975297523/200000000000 : ℚ), 5⟩,
    ⟨(208918798543/1000000000000 : ℚ), (2769645063/5000000000 : ℚ), (-62080931423/500000000000 : ℚ), 5⟩,
    ⟨(53760094741/250000000000 : ℚ), (48536773/250000000 : ℚ), (-9597084617/200000000000 : ℚ), 4⟩,
    ⟨(55320472059/250000000000 : ℚ), (-408428563/10000000000 : ℚ), (3231557853/1000000000000 : ℚ), 4⟩,
    ⟨(227403468657/1000000000000 : ℚ), (-2015910111/10000000000 : ℚ), (981697427/25000000000 : ℚ), 4⟩,
    ⟨(9326794853/40000000000 : ℚ), (-1575505401/5000000000 : ℚ), (1021778999/15625000000 : ℚ), 4⟩,
    ⟨(11917974831/50000000000 : ℚ), (-247866287/625000000 : ℚ), (84598180797/1000000000000 : ℚ), 4⟩,
    ⟨(4855458203/20000000000 : ℚ), (-45491067/100000000 : ℚ), (2465648601/25000000000 : ℚ), 4⟩,
    ⟨(246240506911/1000000000000 : ℚ), (-2476583801/5000000000 : ℚ), (108504284679/1000000000000 : ℚ), 4⟩,
    ⟨(124314514551/500000000000 : ℚ), (-1041746659/2000000000 : ℚ), (28706882537/250000000000 : ℚ), 4⟩,
    ⟨(62461671789/250000000000 : ℚ), (-53327551/100000000 : ℚ), (117918582409/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5348090371/10000000000 : ℚ), (14787730819/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (603640724447/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control819.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control819.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate819

-- Control820
namespace DiagonalRamsey.JointInheritedCertificate820
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(156719164959/1000000000000 : ℚ), (104672277403/312500000 : ℚ), (-52648162561869/1000000000000 : ℚ), 12⟩,
    ⟨(6301951479/40000000000 : ℚ), (177570877937/5000000000 : ℚ), (-5674813778593/1000000000000 : ℚ), 9⟩,
    ⟨(79588074549/500000000000 : ℚ), (117417544019/10000000000 : ℚ), (-11977958893/6250000000 : ℚ), 7⟩,
    ⟨(32307742543/200000000000 : ℚ), (13176377189/2500000000 : ℚ), (-880425560587/1000000000000 : ℚ), 6⟩,
    ⟨(164545685831/1000000000000 : ℚ), (26477902359/10000000000 : ℚ), (-11335900677/25000000000 : ℚ), 6⟩,
    ⟨(33616302431/200000000000 : ℚ), (3356670263/2500000000 : ℚ), (-23666402857/100000000000 : ℚ), 5⟩,
    ⟨(21501288983/125000000000 : ℚ), (6051799793/10000000000 : ℚ), (-6962606931/62500000000 : ℚ), 5⟩,
    ⟨(17618110339/100000000000 : ℚ), (752295841/5000000000 : ℚ), (-4039172691/125000000000 : ℚ), 5⟩,
    ⟨(11277100347/62500000000 : ℚ), (-370563437/2500000000 : ℚ), (1306418673/62500000000 : ℚ), 4⟩,
    ⟨(184604397077/1000000000000 : ℚ), (-3537075909/10000000000 : ℚ), (1459614331/25000000000 : ℚ), 4⟩,
    ⟨(94266598393/500000000000 : ℚ), (-4996096141/10000000000 : ℚ), (20896832/244140625 : ℚ), 4⟩,
    ⟨(19206902311/100000000000 : ℚ), (-189028873/312500000 : ℚ), (105622883793/1000000000000 : ℚ), 4⟩,
    ⟨(97537998113/500000000000 : ℚ), (-1361204053/2000000000 : ℚ), (120275468109/1000000000000 : ℚ), 4⟩,
    ⟨(197438559843/1000000000000 : ℚ), (-3666286069/5000000000 : ℚ), (65304192451/500000000000 : ℚ), 4⟩,
    ⟨(99532960983/500000000000 : ℚ), (-1916649703/2500000000 : ℚ), (27446049649/200000000000 : ℚ), 4⟩,
    ⟨(199895543983/1000000000000 : ℚ), (-7828996097/10000000000 : ℚ), (140469726337/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7849090693/10000000000 : ℚ), (140871513237/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (595702526919/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control820.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control820.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate820

-- Control821
namespace DiagonalRamsey.JointInheritedCertificate821
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22642108783/500000000000 : ℚ), (408906547829/2000000000 : ℚ), (-9287486277559/1000000000000 : ℚ), 11⟩,
    ⟨(1426240717/31250000000 : ℚ), (92578566371/5000000000 : ℚ), (-85512915817/100000000000 : ℚ), 8⟩,
    ⟨(23148277137/500000000000 : ℚ), (18898107097/5000000000 : ℚ), (-35852043159/200000000000 : ℚ), 7⟩,
    ⟨(5894346487/125000000000 : ℚ), (-607021783/2500000000 : ℚ), (8354318557/1000000000000 : ℚ), 6⟩,
    ⟨(12020924989/250000000000 : ℚ), (-18886776877/10000000000 : ℚ), (86632852097/1000000000000 : ℚ), 5⟩,
    ⟨(48941917577/1000000000000 : ℚ), (-6773618157/2500000000 : ℚ), (12642298327/100000000000 : ℚ), 5⟩,
    ⟨(12399692227/250000000000 : ℚ), (-31448445827/10000000000 : ℚ), (29573773377/200000000000 : ℚ), 5⟩,
    ⟨(24977127143/500000000000 : ℚ), (-835066227/250000000 : ℚ), (157595545241/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-8409688097/2500000000 : ℚ), (158775520537/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (634850670171/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control821.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control821.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate821
