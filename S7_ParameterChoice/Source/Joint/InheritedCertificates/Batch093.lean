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

-- Control822
namespace DiagonalRamsey.JointInheritedCertificate822
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(45278216533/500000000000 : ℚ), (1020697794823/5000000000 : ℚ), (-9271539511459/500000000000 : ℚ), 11⟩,
    ⟨(91268308563/1000000000000 : ℚ), (92325333887/5000000000 : ℚ), (-426105713049/250000000000 : ℚ), 8⟩,
    ⟨(46291841483/500000000000 : ℚ), (9380496823/2500000000 : ℚ), (-354970607249/1000000000000 : ℚ), 7⟩,
    ⟨(47151151223/500000000000 : ℚ), (-1307998709/5000000000 : ℚ), (1213656129/62500000000 : ℚ), 6⟩,
    ⟨(48081261383/500000000000 : ℚ), (-9510945583/5000000000 : ℚ), (175462870303/1000000000000 : ℚ), 5⟩,
    ⟨(19576228449/200000000000 : ℚ), (-13596586377/5000000000 : ℚ), (254686774679/1000000000000 : ℚ), 5⟩,
    ⟨(12399564581/125000000000 : ℚ), (-15761985779/5000000000 : ℚ), (59469879671/200000000000 : ℚ), 5⟩,
    ⟨(19981678429/200000000000 : ℚ), (-33467060999/10000000000 : ℚ), (316692007291/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-8425451251/2500000000 : ℚ), (79759592427/250000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (505689408499/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control822.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control822.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate822

-- Control823
namespace DiagonalRamsey.JointInheritedCertificate823
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27195812751/200000000000 : ℚ), (2065010585069/10000000000 : ℚ), (-28164926521407/1000000000000 : ℚ), 11⟩,
    ⟨(34258997691/250000000000 : ℚ), (23386291721/1250000000 : ℚ), (-2592147450701/1000000000000 : ℚ), 8⟩,
    ⟨(138988937227/1000000000000 : ℚ), (7658964527/2000000000 : ℚ), (-4243385991/7812500000 : ℚ), 7⟩,
    ⟨(35385146187/250000000000 : ℚ), (-1136629569/5000000000 : ℚ), (12432105757/500000000000 : ℚ), 6⟩,
    ⟨(72151234061/500000000000 : ℚ), (-9415641159/5000000000 : ℚ), (16326515817/62500000000 : ℚ), 5⟩,
    ⟨(146854115643/1000000000000 : ℚ), (-27061701887/10000000000 : ℚ), (190479067023/500000000000 : ℚ), 5⟩,
    ⟨(74403531053/500000000000 : ℚ), (-31415460349/10000000000 : ℚ), (445301138531/1000000000000 : ℚ), 5⟩,
    ⟨(29972797823/200000000000 : ℚ), (-8341604277/2500000000 : ℚ), (7413029173/15625000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-33602003371/10000000000 : ℚ), (477966055273/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (79479149729/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control823.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control823.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate823

-- Control824
namespace DiagonalRamsey.JointInheritedCertificate824
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(91769664997/500000000000 : ℚ), (120519564307/500000000 : ℚ), (-44411674808393/1000000000000 : ℚ), 12⟩,
    ⟨(2887707361/15625000000 : ℚ), (127544518219/5000000000 : ℚ), (-960556838383/200000000000 : ℚ), 8⟩,
    ⟨(93656098241/500000000000 : ℚ), (42194941423/5000000000 : ℚ), (-816843151301/500000000000 : ℚ), 7⟩,
    ⟨(190940073827/1000000000000 : ℚ), (19050995471/5000000000 : ℚ), (-760088003877/1000000000000 : ℚ), 6⟩,
    ⟨(195557485847/1000000000000 : ℚ), (19436181219/10000000000 : ℚ), (-100016770687/250000000000 : ℚ), 6⟩,
    ⟨(50246746997/250000000000 : ℚ), (5101491473/5000000000 : ℚ), (-217313361821/1000000000000 : ℚ), 5⟩,
    ⟨(207019927527/1000000000000 : ℚ), (313732171/625000000 : ℚ), (-11173061101/100000000000 : ℚ), 5⟩,
    ⟨(213424461981/1000000000000 : ℚ), (922904829/5000000000 : ℚ), (-22545682931/500000000000 : ℚ), 4⟩,
    ⟨(219954468683/1000000000000 : ℚ), (-28051827/1250000000 : ℚ), (-69202887/250000000000 : ℚ), 4⟩,
    ⟨(226359003137/1000000000000 : ℚ), (-327766383/2000000000 : ℚ), (15631267461/500000000000 : ℚ), 4⟩,
    ⟨(232391942677/1000000000000 : ℚ), (-2636502853/10000000000 : ℚ), (54133828777/1000000000000 : ℚ), 4⟩,
    ⟨(237821444817/1000000000000 : ℚ), (-1340803/4000000 : ℚ), (70949403521/1000000000000 : ℚ), 4⟩,
    ⟨(121219428419/500000000000 : ℚ), (-482965747/1250000000 : ℚ), (83234385387/1000000000000 : ℚ), 4⟩,
    ⟨(246066734183/1000000000000 : ℚ), (-1054499503/2500000000 : ℚ), (91886454039/1000000000000 : ℚ), 4⟩,
    ⟨(248565659561/1000000000000 : ℚ), (-2220980657/5000000000 : ℚ), (48712558567/500000000000 : ℚ), 4⟩,
    ⟨(249839600671/1000000000000 : ℚ), (-2275306741/5000000000 : ℚ), (25033180067/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-1141011679/2500000000 : ℚ), (100468443311/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (316940024943/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control824.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control824.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate824

-- Control825
namespace DiagonalRamsey.JointInheritedCertificate825
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(149690227579/1000000000000 : ℚ), (2597616953007/10000000000 : ℚ), (-304870672091/7812500000 : ℚ), 12⟩,
    ⟨(75327291349/500000000000 : ℚ), (137494733977/5000000000 : ℚ), (-4214685834757/1000000000000 : ℚ), 9⟩,
    ⟨(15254623331/100000000000 : ℚ), (22725344863/2500000000 : ℚ), (-285919263077/200000000000 : ℚ), 7⟩,
    ⟨(77646242171/500000000000 : ℚ), (40921001011/10000000000 : ℚ), (-132358608701/200000000000 : ℚ), 6⟩,
    ⟨(39696949727/250000000000 : ℚ), (1036577501/500000000 : ℚ), (-172652195733/500000000000 : ℚ), 6⟩,
    ⟨(40724463507/250000000000 : ℚ), (5361427747/5000000000 : ℚ), (-4614484039/25000000000 : ℚ), 5⟩,
    ⟨(16746470259/100000000000 : ℚ), (1272362583/2500000000 : ℚ), (-91655208323/1000000000000 : ℚ), 5⟩,
    ⟨(43078210791/250000000000 : ℚ), (325879521/2000000000 : ℚ), (-4117634857/125000000000 : ℚ), 5⟩,
    ⟨(177255964427/1000000000000 : ℚ), (-79391083/1250000000 : ℚ), (66023529/10000000000 : ℚ), 4⟩,
    ⟨(91052052501/500000000000 : ℚ), (-273487681/1250000000 : ℚ), (1379303661/40000000000 : ℚ), 4⟩,
    ⟨(46667738391/250000000000 : ℚ), (-657439857/2000000000 : ℚ), (27370861363/500000000000 : ℚ), 4⟩,
    ⟨(47695252171/250000000000 : ℚ), (-4078385927/10000000000 : ℚ), (13933637913/200000000000 : ℚ), 4⟩,
    ⟨(194276323249/1000000000000 : ℚ), (-464604477/1000000000 : ℚ), (40297422521/500000000000 : ℚ), 4⟩,
    ⟨(197022574281/1000000000000 : ℚ), (-5040097691/10000000000 : ℚ), (4415177141/50000000000 : ℚ), 4⟩,
    ⟨(198914224893/1000000000000 : ℚ), (-211588383/400000000 : ℚ), (93244812443/1000000000000 : ℚ), 4⟩,
    ⟨(49969645003/250000000000 : ℚ), (-5410954839/10000000000 : ℚ), (23915592131/250000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-2712976043/5000000000 : ℚ), (23990555589/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (650424482521/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control825.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control825.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate825

-- Control826
namespace DiagonalRamsey.JointInheritedCertificate826
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39516722413/250000000000 : ℚ), (1646791961957/5000000000 : ℚ), (-3263014033937/62500000000 : ℚ), 12⟩,
    ⟨(31774135603/200000000000 : ℚ), (174652620549/5000000000 : ℚ), (-225011181453/40000000000 : ℚ), 9⟩,
    ⟨(32089473121/200000000000 : ℚ), (57743881603/5000000000 : ℚ), (-379638613421/200000000000 : ℚ), 7⟩,
    ⟨(81368180601/500000000000 : ℚ), (3238088431/625000000 : ℚ), (-870782595667/1000000000000 : ℚ), 6⟩,
    ⟨(16564969999/100000000000 : ℚ), (25985645921/10000000000 : ℚ), (-447375990413/1000000000000 : ℚ), 6⟩,
    ⟨(169075423991/1000000000000 : ℚ), (13127069009/10000000000 : ℚ), (-46489162137/200000000000 : ℚ), 5⟩,
    ⟨(34576376911/200000000000 : ℚ), (1464073719/2500000000 : ℚ), (-108268994099/1000000000000 : ℚ), 5⟩,
    ⟨(1382209387/7812500000 : ℚ), (685250307/5000000000 : ℚ), (-7471134273/250000000000 : ℚ), 5⟩,
    ⟨(181042884761/1000000000000 : ℚ), (-1577663191/10000000000 : ℚ), (4568567163/200000000000 : ℚ), 5⟩,
    ⟨(92541900871/500000000000 : ℚ), (-1803448643/5000000000 : ℚ), (29984572591/500000000000 : ℚ), 4⟩,
    ⟨(94445131153/500000000000 : ℚ), (-5048409179/10000000000 : ℚ), (86912163461/1000000000000 : ℚ), 4⟩,
    ⟨(192315986307/1000000000000 : ℚ), (-608904621/1000000000 : ℚ), (53370662797/500000000000 : ℚ), 4⟩,
    ⟨(39045865019/200000000000 : ℚ), (-3418836863/5000000000 : ℚ), (1515563519/12500000000 : ℚ), 4⟩,
    ⟨(49379580173/250000000000 : ℚ), (-1471704299/2000000000 : ℚ), (8217010511/62500000000 : ℚ), 4⟩,
    ⟨(99547504141/500000000000 : ℚ), (-7689025379/10000000000 : ℚ), (34506500803/250000000000 : ℚ), 4⟩,
    ⟨(39979759329/200000000000 : ℚ), (-3924870301/5000000000 : ℚ), (141232188859/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-98370357/125000000 : ℚ), (141629847311/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (60656026127/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control826.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control826.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate826

-- Control827
namespace DiagonalRamsey.JointInheritedCertificate827
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(198586363539/1000000000000 : ℚ), (67506567119/200000000 : ℚ), (-67215221855709/1000000000000 : ℚ), 12⟩,
    ⟨(39914375581/200000000000 : ℚ), (358233683667/10000000000 : ℚ), (-724499504979/100000000000 : ℚ), 9⟩,
    ⟨(1612040271/8000000000 : ℚ), (59298208999/5000000000 : ℚ), (-611727780447/250000000000 : ℚ), 7⟩,
    ⟨(102155770673/500000000000 : ℚ), (6665171503/1250000000 : ℚ), (-1124411695153/1000000000000 : ℚ), 6⟩,
    ⟨(51970886953/250000000000 : ℚ), (3355954241/1250000000 : ℚ), (-72443842273/125000000000 : ℚ), 6⟩,
    ⟨(212083783067/1000000000000 : ℚ), (13667053603/10000000000 : ℚ), (-75781223529/250000000000 : ℚ), 5⟩,
    ⟨(108375417213/500000000000 : ℚ), (3108834349/5000000000 : ℚ), (-35892653297/250000000000 : ℚ), 5⟩,
    ⟨(110852674861/500000000000 : ℚ), (1625768489/10000000000 : ℚ), (-42995263519/1000000000000 : ℚ), 5⟩,
    ⟨(226756929711/1000000000000 : ℚ), (-1388110559/10000000000 : ℚ), (4907066653/200000000000 : ℚ), 5⟩,
    ⟨(231711445007/1000000000000 : ℚ), (-172951821/500000000 : ℚ), (14396187603/200000000000 : ℚ), 4⟩,
    ⟨(118189248183/500000000000 : ℚ), (-615914499/1250000000 : ℚ), (106330951599/1000000000000 : ℚ), 4⟩,
    ⟨(240578731621/1000000000000 : ℚ), (-598518143/1000000000 : ℚ), (131551598189/1000000000000 : ℚ), 4⟩,
    ⟨(244150738087/1000000000000 : ℚ), (-674481257/1000000000 : ℚ), (37489776831/250000000000 : ℚ), 4⟩,
    ⟨(246957245559/1000000000000 : ℚ), (-7272509731/10000000000 : ℚ), (32583132591/200000000000 : ℚ), 4⟩,
    ⟨(31111300191/125000000000 : ℚ), (-3803491023/5000000000 : ℚ), (171207679573/1000000000000 : ℚ), 4⟩,
    ⟨(124937957947/500000000000 : ℚ), (-310780617/400000000 : ℚ), (175260946431/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-486851449/625000000 : ℚ), (175763515569/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (561868251703/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control827.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control827.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate827

-- Control828
namespace DiagonalRamsey.JointInheritedCertificate828
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25090907081/200000000000 : ℚ), (40948869007/400000000 : ℚ), (-12918546423687/1000000000000 : ℚ), 10⟩,
    ⟨(63652411503/500000000000 : ℚ), (4755752837/500000000 : ℚ), (-123678263427/100000000000 : ℚ), 7⟩,
    ⟨(65361854347/500000000000 : ℚ), (22239428071/10000000000 : ℚ), (-150261229111/500000000000 : ℚ), 6⟩,
    ⟨(27038139623/200000000000 : ℚ), (1316380817/5000000000 : ℚ), (-2543851241/62500000000 : ℚ), 5⟩,
    ⟨(140025732623/1000000000000 : ℚ), (-1051106067/2000000000 : ℚ), (67601701561/1000000000000 : ℚ), 5⟩,
    ⟨(36123180511/250000000000 : ℚ), (-2280396353/2500000000 : ℚ), (122529567213/1000000000000 : ℚ), 5⟩,
    ⟨(36977901933/250000000000 : ℚ), (-2784981963/2500000000 : ℚ), (15202216489/100000000000 : ℚ), 5⟩,
    ⟨(149761895333/1000000000000 : ℚ), (-1203518051/1000000000 : ℚ), (82672556649/500000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3035700439/2500000000 : ℚ), (166958147617/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (304919389419/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control828.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control828.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate828

-- Control829
namespace DiagonalRamsey.JointInheritedCertificate829
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11370473763/250000000000 : ℚ), (2017219859611/10000000000 : ℚ), (-4601060757357/500000000000 : ℚ), 11⟩,
    ⟨(22911239547/500000000000 : ℚ), (91193868313/5000000000 : ℚ), (-845308395389/1000000000000 : ℚ), 8⟩,
    ⟨(46451796347/1000000000000 : ℚ), (36902502711/10000000000 : ℚ), (-87760034651/500000000000 : ℚ), 7⟩,
    ⟨(47274038963/1000000000000 : ℚ), (-1417250507/5000000000 : ℚ), (10381100409/1000000000000 : ℚ), 6⟩,
    ⟨(12041006989/250000000000 : ℚ), (-19104225727/10000000000 : ℚ), (87927345789/1000000000000 : ℚ), 6⟩,
    ⟨(12246567643/250000000000 : ℚ), (-5444627703/2000000000 : ℚ), (127338867187/1000000000000 : ℚ), 5⟩,
    ⟨(1984623513/40000000000 : ℚ), (-1576661351/500000000 : ℚ), (148582053803/1000000000000 : ℚ), 5⟩,
    ⟨(12489042967/250000000000 : ℚ), (-8367257907/2500000000 : ℚ), (158219000369/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-16851493171/5000000000 : ℚ), (79694130053/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (322661337531/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control829.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control829.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate829
