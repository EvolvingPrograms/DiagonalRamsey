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

-- Control865
namespace DiagonalRamsey.JointInheritedCertificate865
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19914366827/125000000000 : ℚ), (2616703051093/10000000000 : ℚ), (-41801848726177/1000000000000 : ℚ), 12⟩,
    ⟨(80047400011/500000000000 : ℚ), (69402620971/2500000000 : ℚ), (-5628706601/1250000000 : ℚ), 9⟩,
    ⟨(80812280521/500000000000 : ℚ), (2295091319/250000000 : ℚ), (-94920232853/62500000000 : ℚ), 8⟩,
    ⟨(163845429821/1000000000000 : ℚ), (41180320117/10000000000 : ℚ), (-696123109783/1000000000000 : ℚ), 7⟩,
    ⟨(83336029807/500000000000 : ℚ), (20641166967/10000000000 : ℚ), (-357159731183/1000000000000 : ℚ), 6⟩,
    ⟨(84997912313/500000000000 : ℚ), (2602301233/2500000000 : ℚ), (-185132698383/1000000000000 : ℚ), 6⟩,
    ⟨(173688994429/1000000000000 : ℚ), (1155320753/2500000000 : ℚ), (-17155620063/200000000000 : ℚ), 5⟩,
    ⟨(177609642581/1000000000000 : ℚ), (104925107/1000000000 : ℚ), (-23092077843/1000000000000 : ℚ), 5⟩,
    ⟨(181607100771/1000000000000 : ℚ), (-649434457/5000000000 : ℚ), (3810291349/200000000000 : ℚ), 5⟩,
    ⟨(185527748923/1000000000000 : ℚ), (-291533919/1000000000 : ℚ), (48707953803/1000000000000 : ℚ), 5⟩,
    ⟨(189220918727/1000000000000 : ℚ), (-40638053/100000000 : ℚ), (35109233181/500000000000 : ℚ), 5⟩,
    ⟨(96272341869/500000000000 : ℚ), (-4893047609/10000000000 : ℚ), (86042870259/1000000000000 : ℚ), 5⟩,
    ⟨(48842828383/250000000000 : ℚ), (-5489747199/10000000000 : ℚ), (48807165299/500000000000 : ℚ), 5⟩,
    ⟨(19759218231/100000000000 : ℚ), (-5905011993/10000000000 : ℚ), (105772754477/1000000000000 : ℚ), 5⟩,
    ⟨(19912194333/100000000000 : ℚ), (-6168590137/10000000000 : ℚ), (13875099927/125000000000 : ℚ), 5⟩,
    ⟨(6246931523/31250000000 : ℚ), (-1259357287/2000000000 : ℚ), (28389610543/250000000000 : ℚ), 5⟩,
    ⟨(1/5 : ℚ), (-6312651577/10000000000 : ℚ), (113875667077/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (340485460047/500000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control865.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control865.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate865

-- Control866
namespace DiagonalRamsey.JointInheritedCertificate866
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(61354316883/500000000000 : ℚ), (365659185357/5000000000 : ℚ), (-4517073739847/500000000000 : ℚ), 11⟩,
    ⟨(3119147827/25000000000 : ℚ), (68181553111/10000000000 : ℚ), (-174302499263/200000000000 : ℚ), 7⟩,
    ⟨(64283634791/500000000000 : ℚ), (3257031691/2000000000 : ℚ), (-43456545939/200000000000 : ℚ), 6⟩,
    ⟨(133533981203/1000000000000 : ℚ), (1188790159/5000000000 : ℚ), (-17853334271/500000000000 : ℚ), 5⟩,
    ⟨(138909911123/1000000000000 : ℚ), (-3194286219/10000000000 : ℚ), (40000148917/1000000000000 : ℚ), 5⟩,
    ⟨(17984577843/125000000000 : ℚ), (-5914548029/10000000000 : ℚ), (78407403/1000000000 : ℚ), 5⟩,
    ⟨(29535595849/200000000000 : ℚ), (-3665122287/5000000000 : ℚ), (99032442701/1000000000000 : ℚ), 5⟩,
    ⟨(149735258559/1000000000000 : ℚ), (-7956843117/10000000000 : ℚ), (108349037547/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-4016051277/5000000000 : ℚ), (4379077217/40000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (87118940301/125000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control866.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control866.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate866

-- Control867
namespace DiagonalRamsey.JointInheritedCertificate867
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17228105307/200000000000 : ℚ), (186839162101/2000000000 : ℚ), (-323449340717/40000000000 : ℚ), 11⟩,
    ⟨(21796320537/250000000000 : ℚ), (86297683201/10000000000 : ℚ), (-765900134851/1000000000000 : ℚ), 8⟩,
    ⟨(44557869401/500000000000 : ℚ), (39017303/20000000 : ℚ), (-89592789219/500000000000 : ℚ), 7⟩,
    ⟨(91638001973/1000000000000 : ℚ), (1441347727/10000000000 : ℚ), (-4086572383/250000000000 : ℚ), 6⟩,
    ⟨(23592019989/250000000000 : ℚ), (-5874410269/10000000000 : ℚ), (25782356031/500000000000 : ℚ), 6⟩,
    ⟨(48445171563/500000000000 : ℚ), (-4742139317/5000000000 : ℚ), (43024510433/500000000000 : ℚ), 5⟩,
    ⟨(98820799781/1000000000000 : ℚ), (-8891441/7812500 : ℚ), (104601616857/1000000000000 : ℚ), 5⟩,
    ⟨(49932777697/500000000000 : ℚ), (-764153839/625000000 : ℚ), (56499688171/500000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-1232830259/1000000000 : ℚ), (57008550891/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (716050953211/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control867.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control867.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate867

-- Control868
namespace DiagonalRamsey.JointInheritedCertificate868
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(88379437371/1000000000000 : ℚ), (1143399761957/10000000000 : ℚ), (-40580571609/4000000000 : ℚ), 11⟩,
    ⟨(89255419281/1000000000000 : ℚ), (104840103181/10000000000 : ℚ), (-949462557567/1000000000000 : ℚ), 8⟩,
    ⟨(18174804559/200000000000 : ℚ), (22784263263/10000000000 : ℚ), (-106260366959/500000000000 : ℚ), 7⟩,
    ⟨(46494415101/500000000000 : ℚ), (247195511/5000000000 : ℚ), (-8067876499/1000000000000 : ℚ), 6⟩,
    ⟨(23819470311/250000000000 : ℚ), (-857141701/1000000000 : ℚ), (38569796947/500000000000 : ℚ), 6⟩,
    ⟨(97392688651/1000000000000 : ℚ), (-6532120699/5000000000 : ℚ), (120383504671/1000000000000 : ℚ), 5⟩,
    ⟨(49505646083/500000000000 : ℚ), (-3858635229/2500000000 : ℚ), (71825863003/500000000000 : ℚ), 5⟩,
    ⟨(3995490963/40000000000 : ℚ), (-16494382601/10000000000 : ℚ), (301154039/1953125000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-8311116961/5000000000 : ℚ), (155468658907/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (339460345119/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control868.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control868.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate868

-- Control869
namespace DiagonalRamsey.JointInheritedCertificate869
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(362117203/7812500000 : ℚ), (59659997441/312500000 : ℚ), (-2217559691513/250000000000 : ℚ), 12⟩,
    ⟨(46626070959/1000000000000 : ℚ), (171488768829/10000000000 : ℚ), (-807231299031/1000000000000 : ℚ), 9⟩,
    ⟨(47134332151/1000000000000 : ℚ), (33427116107/10000000000 : ℚ), (-40274260169/250000000000 : ℚ), 7⟩,
    ⟨(47798407401/1000000000000 : ℚ), (-1095821723/2500000000 : ℚ), (18131358289/1000000000000 : ℚ), 7⟩,
    ⟨(6064649659/125000000000 : ℚ), (-19906278647/10000000000 : ℚ), (9281655601/100000000000 : ℚ), 6⟩,
    ⟨(49181272521/1000000000000 : ℚ), (-13836899481/5000000000 : ℚ), (130740160369/1000000000000 : ℚ), 6⟩,
    ⟨(49689533713/1000000000000 : ℚ), (-31809533477/10000000000 : ℚ), (151180771521/1000000000000 : ℚ), 6⟩,
    ⟨(780696917/15625000000 : ℚ), (-16835969443/5000000000 : ℚ), (160460113417/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-33897304801/10000000000 : ℚ), (161586543259/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (343651461891/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control869.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control869.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate869

-- Control870
namespace DiagonalRamsey.JointInheritedCertificate870
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46300343147/500000000000 : ℚ), (376003602547/2000000000 : ℚ), (-8725086143399/500000000000 : ℚ), 12⟩,
    ⟨(93158461779/1000000000000 : ℚ), (42031998621/2500000000 : ℚ), (-1580148042799/1000000000000 : ℚ), 9⟩,
    ⟨(47094548243/500000000000 : ℚ), (32141046303/10000000000 : ℚ), (-308507393671/1000000000000 : ℚ), 7⟩,
    ⟨(47767842813/500000000000 : ℚ), (-101659267/200000000 : ℚ), (8824279599/200000000000 : ℚ), 7⟩,
    ⟨(96993223207/1000000000000 : ℚ), (-10177611821/5000000000 : ℚ), (190998979861/1000000000000 : ℚ), 6⟩,
    ⟨(98339812347/1000000000000 : ℚ), (-3499268969/1250000000 : ℚ), (265565561333/1000000000000 : ℚ), 6⟩,
    ⟨(19874089411/200000000000 : ℚ), (-32062148727/10000000000 : ℚ), (305770721317/1000000000000 : ℚ), 6⟩,
    ⟨(99928222539/1000000000000 : ℚ), (-10846419/3200000 : ℚ), (324034604219/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-8529232779/2500000000 : ℚ), (65250504727/200000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (549277468453/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control870.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control870.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate870

-- Control871
namespace DiagonalRamsey.JointInheritedCertificate871
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(86853866599/125000000000 : ℚ), (2042525547143/5000000000 : ℚ), (-284321691316457/1000000000000 : ℚ), 12⟩,
    ⟨(696846849849/1000000000000 : ℚ), (438962348907/10000000000 : ℚ), (-30844534942651/1000000000000 : ℚ), 9⟩,
    ⟨(3504006067/5000000000 : ℚ), (148575381099/10000000000 : ℚ), (-2114063886791/200000000000 : ℚ), 8⟩,
    ⟨(706542059471/1000000000000 : ℚ), (3459808051/500000000 : ℚ), (-4989555282401/1000000000000 : ℚ), 7⟩,
    ⟨(89231096321/125000000000 : ℚ), (18454916271/5000000000 : ℚ), (-2698478208651/1000000000000 : ℚ), 6⟩,
    ⟨(361220276941/500000000000 : ℚ), (1301849929/625000000 : ℚ), (-772273590137/500000000000 : ℚ), 6⟩,
    ⟨(731987231997/1000000000000 : ℚ), (11778536901/10000000000 : ℚ), (-2771179393/3125000000 : ℚ), 5⟩,
    ⟨(742121931427/1000000000000 : ℚ), (6256260179/10000000000 : ℚ), (-95997640921/200000000000 : ℚ), 5⟩,
    ⟨(752455181357/1000000000000 : ℚ), (1347252823/5000000000 : ℚ), (-213949612937/1000000000000 : ℚ), 5⟩,
    ⟨(762589880787/1000000000000 : ℚ), (306810693/10000000000 : ℚ), (-33145875317/1000000000000 : ℚ), 4⟩,
    ⟨(386068279451/500000000000 : ℚ), (-333755799/2500000000 : ℚ), (46402680881/500000000000 : ℚ), 4⟩,
    ⟨(156145668443/200000000000 : ℚ), (-1239217911/5000000000 : ℚ), (90782464003/500000000000 : ℚ), 4⟩,
    ⟨(788035053313/1000000000000 : ℚ), (-1636068239/5000000000 : ℚ), (243812789449/1000000000000 : ℚ), 4⟩,
    ⟨(99221987423/125000000000 : ℚ), (-237941753/625000000 : ℚ), (286117511137/1000000000000 : ℚ), 4⟩,
    ⟨(159546052587/200000000000 : ℚ), (-4138215961/10000000000 : ℚ), (312467789267/1000000000000 : ℚ), 4⟩,
    ⟨(99968272499/125000000000 : ℚ), (-2148377943/5000000000 : ℚ), (325130868663/1000000000000 : ℚ), 4⟩,
    ⟨(4/5 : ℚ), (-1079064489/2500000000 : ℚ), (163345393293/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (204400248491/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control871.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control871.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate871

-- Control872
namespace DiagonalRamsey.JointInheritedCertificate872
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60254885113/500000000000 : ℚ), (38323051483/625000000 : ℚ), (-7443927397899/1000000000000 : ℚ), 11⟩,
    ⟨(24546560879/200000000000 : ℚ), (57247165777/10000000000 : ℚ), (-180388091021/250000000000 : ℚ), 8⟩,
    ⟨(63420217967/500000000000 : ℚ), (6920327467/5000000000 : ℚ), (-91362216341/500000000000 : ℚ), 6⟩,
    ⟨(132207315177/1000000000000 : ℚ), (1122069497/5000000000 : ℚ), (-33139372747/1000000000000 : ℚ), 6⟩,
    ⟨(8626023963/62500000000 : ℚ), (-2387239481/10000000000 : ℚ), (29260938613/1000000000000 : ℚ), 5⟩,
    ⟨(2867665253/20000000000 : ℚ), (-928424523/2000000000 : ℚ), (30468610713/500000000000 : ℚ), 5⟩,
    ⟨(147490894189/1000000000000 : ℚ), (-1453254409/2500000000 : ℚ), (15591007457/200000000000 : ℚ), 5⟩,
    ⟨(149713928359/1000000000000 : ℚ), (-3165233041/5000000000 : ℚ), (85643239449/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-799071973/1250000000 : ℚ), (43286997183/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (849999/1000000 : ℚ)
  x := (91551496217/125000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control872.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control872.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate872
