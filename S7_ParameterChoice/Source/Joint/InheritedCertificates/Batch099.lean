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

-- Control881
namespace DiagonalRamsey.JointInheritedCertificate881
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(89711778607/1000000000000 : ℚ), (1092583047813/10000000000 : ℚ), (-2458876098053/250000000000 : ℚ), 12⟩,
    ⟨(45243662947/500000000000 : ℚ), (49873243423/5000000000 : ℚ), (-457121009099/500000000000 : ℚ), 9⟩,
    ⟨(11490043803/125000000000 : ℚ), (10584779509/5000000000 : ℚ), (-99681018903/500000000000 : ℚ), 7⟩,
    ⟨(23448171801/250000000000 : ℚ), (-44789061/2000000000 : ℚ), (-275123211/250000000000 : ℚ), 7⟩,
    ⟨(9581928993/100000000000 : ℚ), (-1118237801/1250000000 : ℚ), (20369191651/250000000000 : ℚ), 6⟩,
    ⟨(97691626709/1000000000000 : ℚ), (-663928887/500000000 : ℚ), (123365616569/1000000000000 : ℚ), 6⟩,
    ⟨(99124651239/1000000000000 : ℚ), (-973116353/625000000 : ℚ), (145906425443/1000000000000 : ℚ), 6⟩,
    ⟨(99900198527/1000000000000 : ℚ), (-1037277237/625000000 : ℚ), (78060672837/500000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1672038853/1000000000 : ℚ), (78680126563/500000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (700437003851/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control881.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control881.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate881

-- Control882
namespace DiagonalRamsey.JointInheritedCertificate882
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4686059233/100000000000 : ℚ), (934985065153/5000000000 : ℚ), (-1756237088717/200000000000 : ℚ), 12⟩,
    ⟨(5887155917/125000000000 : ℚ), (41933538821/2500000000 : ℚ), (-31875728439/40000000000 : ℚ), 9⟩,
    ⟨(4753452877/100000000000 : ℚ), (32327930163/10000000000 : ℚ), (-78567764201/500000000000 : ℚ), 8⟩,
    ⟨(48105864497/1000000000000 : ℚ), (-2404610427/5000000000 : ℚ), (20249227367/1000000000000 : ℚ), 7⟩,
    ⟨(48724273831/1000000000000 : ℚ), (-1003792747/500000000 : ℚ), (47051749667/500000000000 : ℚ), 7⟩,
    ⟨(24647804779/500000000000 : ℚ), (-27723159539/10000000000 : ℚ), (65782935841/500000000000 : ℚ), 7⟩,
    ⟨(3108305687/62500000000 : ℚ), (-15899380953/5000000000 : ℚ), (30348411923/200000000000 : ℚ), 6⟩,
    ⟨(24984772999/500000000000 : ℚ), (-16817805931/5000000000 : ℚ), (160898577083/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-16928987369/5000000000 : ℚ), (162010052137/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (708347972427/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control882.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control882.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate882

-- Control885
namespace DiagonalRamsey.JointInheritedCertificate885
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30864686179/250000000000 : ℚ), (291074992853/5000000000 : ℚ), (-1808470975083/250000000000 : ℚ), 11⟩,
    ⟨(31364869781/250000000000 : ℚ), (6786578487/1250000000 : ℚ), (-139475676753/200000000000 : ℚ), 8⟩,
    ⟨(129156354263/1000000000000 : ℚ), (12955212507/10000000000 : ℚ), (-21692457823/125000000000 : ℚ), 7⟩,
    ⟨(26797310881/200000000000 : ℚ), (1869477681/10000000000 : ℚ), (-28212728609/1000000000000 : ℚ), 6⟩,
    ⟨(34803681341/250000000000 : ℚ), (-2573908053/10000000000 : ℚ), (16166813903/500000000000 : ℚ), 6⟩,
    ⟨(72022462753/500000000000 : ℚ), (-2371927183/5000000000 : ℚ), (63023574093/1000000000000 : ℚ), 5⟩,
    ⟨(29548360129/200000000000 : ℚ), (-1468389631/2500000000 : ℚ), (79495442881/1000000000000 : ℚ), 5⟩,
    ⟨(149742535053/1000000000000 : ℚ), (-6373787891/10000000000 : ℚ), (21733731379/250000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-3216941601/5000000000 : ℚ), (43917789829/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (378035244053/500000000000 : ℚ)
  μ := (3/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control885.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control885.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate885

-- Control886
namespace DiagonalRamsey.JointInheritedCertificate886
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(84242055207/1000000000000 : ℚ), (669369039603/10000000000 : ℚ), (-567083130571/100000000000 : ℚ), 11⟩,
    ⟨(85429921493/1000000000000 : ℚ), (3106944769/500000000 : ℚ), (-108395106497/200000000000 : ℚ), 8⟩,
    ⟨(87624812191/1000000000000 : ℚ), (14437424593/10000000000 : ℚ), (-65440837459/500000000000 : ℚ), 7⟩,
    ⟨(9049257509/100000000000 : ℚ), (316476891/2000000000 : ℚ), (-16759420261/1000000000000 : ℚ), 6⟩,
    ⟨(93596619283/1000000000000 : ℚ), (-3601814919/10000000000 : ℚ), (30854874883/1000000000000 : ℚ), 6⟩,
    ⟨(96464382181/1000000000000 : ℚ), (-6150247783/10000000000 : ℚ), (550431883/10000000000 : ℚ), 5⟩,
    ⟨(1233240911/12500000000 : ℚ), (-3742469773/5000000000 : ℚ), (13611592547/200000000000 : ℚ), 5⟩,
    ⟨(49923569583/500000000000 : ℚ), (-8078425449/10000000000 : ℚ), (73947787227/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-407492317/500000000 : ℚ), (74661448967/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (779150949953/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control886.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control886.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate886

-- Control887
namespace DiagonalRamsey.JointInheritedCertificate887
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19012312493/500000000000 : ℚ), (11903200514549/10000000000 : ℚ), (-45412874567337/1000000000000 : ℚ), 9⟩,
    ⟨(9563543279/250000000000 : ℚ), (628880485709/5000000000 : ℚ), (-4888931344871/1000000000000 : ℚ), 6⟩,
    ⟨(38704447971/1000000000000 : ℚ), (206753967239/5000000000 : ℚ), (-411629206831/250000000000 : ℚ), 4⟩,
    ⟨(1967907287/50000000000 : ℚ), (46012999459/2500000000 : ℚ), (-2939644267/3906250000 : ℚ), 4⟩,
    ⟨(8038029037/200000000000 : ℚ), (22804013283/2500000000 : ℚ), (-383921035381/1000000000000 : ℚ), 3⟩,
    ⟨(41168473033/1000000000000 : ℚ), (140889807/31250000 : ℚ), (-39308729953/200000000000 : ℚ), 3⟩,
    ⟨(21127766347/500000000000 : ℚ), (237901433/125000000 : ℚ), (-22003550011/250000000000 : ℚ), 2⟩,
    ⟨(1736381963/40000000000 : ℚ), (2959473373/10000000000 : ℚ), (-19245741211/1000000000000 : ℚ), 2⟩,
    ⟨(44586173973/1000000000000 : ℚ), (-761479067/1000000000 : ℚ), (1702390193/62500000000 : ℚ), 2⟩,
    ⟨(9148038071/200000000000 : ℚ), (-3726179949/2500000000 : ℚ), (2936519/48828125 : ℚ), 2⟩,
    ⟨(1463351563/31250000000 : ℚ), (-5022592253/2500000000 : ℚ), (84129373101/1000000000000 : ℚ), 2⟩,
    ⟨(5975697233/125000000000 : ℚ), (-11917797411/5000000000 : ℚ), (25461142477/250000000000 : ℚ), 2⟩,
    ⟨(48637577309/1000000000000 : ℚ), (-26527817191/10000000000 : ℚ), (114824196997/1000000000000 : ℚ), 2⟩,
    ⟨(24645637539/500000000000 : ℚ), (-28397607589/10000000000 : ℚ), (123978471873/1000000000000 : ℚ), 1⟩,
    ⟨(12435387483/250000000000 : ℚ), (-7395395393/2500000000 : ℚ), (64920396789/500000000000 : ℚ), 1⟩,
    ⟨(49971098063/1000000000000 : ℚ), (-15078173579/5000000000 : ℚ), (132706328141/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-6045484199/2000000000 : ℚ), (133061594551/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (87499/1000000 : ℚ)
  x := (65169549129/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control887.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control887.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate887

-- Control888
namespace DiagonalRamsey.JointInheritedCertificate888
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17697152051/200000000000 : ℚ), (866696260249/10000000000 : ℚ), (-1924785656759/250000000000 : ℚ), 12⟩,
    ⟨(89353727327/1000000000000 : ℚ), (15920669829/2000000000 : ℚ), (-144352735447/200000000000 : ℚ), 9⟩,
    ⟨(90957521353/1000000000000 : ℚ), (34006211/19531250 : ℚ), (-162637205157/1000000000000 : ℚ), 7⟩,
    ⟨(9305297923/100000000000 : ℚ), (518127949/10000000000 : ℚ), (-3779290177/500000000000 : ℚ), 7⟩,
    ⟨(23830271623/250000000000 : ℚ), (-6350823879/10000000000 : ℚ), (28519439541/500000000000 : ℚ), 6⟩,
    ⟨(97416544369/1000000000000 : ℚ), (-4876872943/5000000000 : ℚ), (1796080369/20000000000 : ℚ), 6⟩,
    ⟨(49510169197/500000000000 : ℚ), (-5774333291/5000000000 : ℚ), (6714187561/62500000000 : ℚ), 6⟩,
    ⟨(49944152733/500000000000 : ℚ), (-6175611133/5000000000 : ℚ), (7213005209/62500000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-6224019813/5000000000 : ℚ), (116375714999/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (149998937097/200000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control888.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control888.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate888

-- Control889
namespace DiagonalRamsey.JointInheritedCertificate889
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23549184209/500000000000 : ℚ), (914925130463/5000000000 : ℚ), (-215875032127/25000000000 : ℚ), 13⟩,
    ⟨(23658549687/500000000000 : ℚ), (163585899439/10000000000 : ℚ), (-195092387339/250000000000 : ℚ), 10⟩,
    ⟨(47721261481/1000000000000 : ℚ), (967724441/312500000 : ℚ), (-75508435899/500000000000 : ℚ), 8⟩,
    ⟨(24124662361/500000000000 : ℚ), (-5434066593/10000000000 : ℚ), (23469244971/1000000000000 : ℚ), 7⟩,
    ⟨(9764179251/200000000000 : ℚ), (-20411947649/10000000000 : ℚ), (96110904483/1000000000000 : ℚ), 7⟩,
    ⟨(6168619937/125000000000 : ℚ), (-3490332377/1250000000 : ℚ), (132961762491/1000000000000 : ℚ), 7⟩,
    ⟨(49753121603/1000000000000 : ℚ), (-31930340051/10000000000 : ℚ), (152816754981/1000000000000 : ℚ), 7⟩,
    ⟨(49971852559/1000000000000 : ℚ), (-2108657687/625000000 : ℚ), (80916220303/500000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-33957525493/10000000000 : ℚ), (16292714423/100000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (28755923167/40000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control889.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control889.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate889

-- Control890
namespace DiagonalRamsey.JointInheritedCertificate890
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(125056013621/1000000000000 : ℚ), (112986000551/2000000000 : ℚ), (-1421484346711/200000000000 : ℚ), 11⟩,
    ⟨(63468171307/500000000000 : ℚ), (26316947133/5000000000 : ℚ), (-170731885163/250000000000 : ℚ), 8⟩,
    ⟨(26082147511/200000000000 : ℚ), (622628981/500000000 : ℚ), (-168108553637/1000000000000 : ℚ), 7⟩,
    ⟨(527149427/3906250000 : ℚ), (206871589/1250000000 : ℚ), (-25329456097/1000000000000 : ℚ), 6⟩,
    ⟨(139863789759/1000000000000 : ℚ), (-83798423/312500000 : ℚ), (3411961173/100000000000 : ℚ), 6⟩,
    ⟨(28880661103/200000000000 : ℚ), (-600376893/1250000000 : ℚ), (32116702941/500000000000 : ℚ), 5⟩,
    ⟨(147877700457/1000000000000 : ℚ), (-2954585351/5000000000 : ℚ), (80389877339/1000000000000 : ℚ), 5⟩,
    ⟨(2995160589/20000000000 : ℚ), (-6399549541/10000000000 : ℚ), (87686641529/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-6458492183/10000000000 : ℚ), (88570066307/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (191991092757/250000000000 : ℚ)
  μ := (3/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control890.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control890.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate890
