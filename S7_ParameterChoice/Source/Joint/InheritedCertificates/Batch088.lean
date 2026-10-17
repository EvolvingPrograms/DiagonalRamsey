import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control770
namespace DiagonalRamsey.JointInheritedCertificate770
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(167621467417/1000000000000 : ℚ), (5591411666089/10000000000 : ℚ), (-93916554986407/1000000000000 : ℚ), 12⟩,
    ⟨(168242110329/1000000000000 : ℚ), (148344553849/2500000000 : ℚ), (-2520388592581/250000000000 : ℚ), 9⟩,
    ⟨(84729772597/500000000000 : ℚ), (195664235879/10000000000 : ℚ), (-337401888243/100000000000 : ℚ), 7⟩,
    ⟨(171226986671/1000000000000 : ℚ), (8700221113/1000000000 : ℚ), (-1525110454241/1000000000000 : ℚ), 6⟩,
    ⟨(86738256489/500000000000 : ℚ), (106882077/25000000 : ℚ), (-763257098317/1000000000000 : ℚ), 6⟩,
    ⟨(176121676079/1000000000000 : ℚ), (20613459427/10000000000 : ℚ), (-47078138617/125000000000 : ℚ), 5⟩,
    ⟨(1119130149/6250000000 : ℚ), (4015146747/5000000000 : ℚ), (-15334178709/100000000000 : ℚ), 5⟩,
    ⟨(182181006461/1000000000000 : ℚ), (56569051/2500000000 : ℚ), (-12482118277/1000000000000 : ℚ), 5⟩,
    ⟨(185362317073/1000000000000 : ℚ), (-2464423911/5000000000 : ℚ), (321099691/3906250000 : ℚ), 5⟩,
    ⟨(188482499693/1000000000000 : ℚ), (-4247113183/5000000000 : ℚ), (148817654501/1000000000000 : ℚ), 4⟩,
    ⟨(95710823727/500000000000 : ℚ), (-11038248491/10000000000 : ℚ), (2464082889/12500000000 : ℚ), 4⟩,
    ⟨(38813362111/200000000000 : ℚ), (-6441108059/5000000000 : ℚ), (232660391859/1000000000000 : ℚ), 4⟩,
    ⟨(98158168431/500000000000 : ℚ), (-14213491387/10000000000 : ℚ), (258642277789/1000000000000 : ℚ), 4⟩,
    ⟨(9904188917/50000000000 : ℚ), (-15142490999/10000000000 : ℚ), (27696081467/100000000000 : ℚ), 4⟩,
    ⟨(49825303301/250000000000 : ℚ), (-1966668077/1250000000 : ℚ), (288700261307/1000000000000 : ℚ), 4⟩,
    ⟨(49980464029/250000000000 : ℚ), (-4005269819/2500000000 : ℚ), (147221866237/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16056705463/10000000000 : ℚ), (147578058471/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (5594969839/12500000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control770.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control770.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate770

-- Control771
namespace DiagonalRamsey.JointInheritedCertificate771
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13143514183/62500000000 : ℚ), (228854936409/400000000 : ℚ), (-60280170818411/500000000000 : ℚ), 12⟩,
    ⟨(211057282583/1000000000000 : ℚ), (607595786447/10000000000 : ℚ), (-2589544589687/200000000000 : ℚ), 9⟩,
    ⟨(212550146951/1000000000000 : ℚ), (200630334931/10000000000 : ℚ), (-4337953092243/1000000000000 : ℚ), 7⟩,
    ⟨(53679362523/250000000000 : ℚ), (89429317807/10000000000 : ℚ), (-392985706419/200000000000 : ℚ), 6⟩,
    ⟨(217475903761/1000000000000 : ℚ), (5518198249/1250000000 : ℚ), (-987356670063/1000000000000 : ℚ), 6⟩,
    ⟨(220719502131/1000000000000 : ℚ), (2686628817/1250000000 : ℚ), (-30718690247/62500000000 : ℚ), 5⟩,
    ⟨(44864719107/200000000000 : ℚ), (8624538489/10000000000 : ℚ), (-5134418277/25000000000 : ℚ), 5⟩,
    ⟨(114074840343/500000000000 : ℚ), (26017871/400000000 : ℚ), (-25095623481/1000000000000 : ℚ), 5⟩,
    ⟨(58012680819/250000000000 : ℚ), (-576310377/1250000000 : ℚ), (47945998309/500000000000 : ℚ), 4⟩,
    ⟨(117938404213/500000000000 : ℚ), (-4121681971/5000000000 : ℚ), (180852092301/1000000000000 : ℚ), 4⟩,
    ⟨(23948090183/100000000000 : ℚ), (-10831012221/10000000000 : ℚ), (121167929499/500000000000 : ℚ), 4⟩,
    ⟨(1213622501/5000000000 : ℚ), (-1587908357/1250000000 : ℚ), (57493362063/200000000000 : ℚ), 4⟩,
    ⟨(245482953869/1000000000000 : ℚ), (-14052748797/10000000000 : ℚ), (320403787773/1000000000000 : ℚ), 4⟩,
    ⟨(24765025701/100000000000 : ℚ), (-2998633101/2000000000 : ℚ), (343589638587/1000000000000 : ℚ), 4⟩,
    ⟨(124571560689/500000000000 : ℚ), (-1559067521/1000000000 : ℚ), (179215557651/500000000000 : ℚ), 4⟩,
    ⟨(249904177033/1000000000000 : ℚ), (-15881472117/10000000000 : ℚ), (91421782471/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7958734559/5000000000 : ℚ), (366586882333/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (96698738767/250000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control771.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control771.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate771

-- Control772
namespace DiagonalRamsey.JointInheritedCertificate772
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11136031249/250000000000 : ℚ), (1073609789553/5000000000 : ℚ), (-9599766694793/1000000000000 : ℚ), 11⟩,
    ⟨(22477700037/500000000000 : ℚ), (39109463433/2000000000 : ℚ), (-891257009101/1000000000000 : ℚ), 7⟩,
    ⟨(45715337329/1000000000000 : ℚ), (10287976681/2500000000 : ℚ), (-48286508617/250000000000 : ℚ), 6⟩,
    ⟨(7298163/156250000 : ℚ), (-223594973/2500000000 : ℚ), (375025299/500000000000 : ℚ), 5⟩,
    ⟨(11945739193/250000000000 : ℚ), (-18057927699/10000000000 : ℚ), (81723498607/1000000000000 : ℚ), 5⟩,
    ⟨(12193965661/250000000000 : ℚ), (-26596088989/10000000000 : ℚ), (122911710163/1000000000000 : ℚ), 5⟩,
    ⟨(24767899949/500000000000 : ℚ), (-6222589173/2000000000 : ℚ), (72553532099/500000000000 : ℚ), 5⟩,
    ⟨(1560846093/31250000000 : ℚ), (-33135227779/10000000000 : ℚ), (155165376807/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-33379268523/10000000000 : ℚ), (19548116657/125000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (14826357441/25000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control772.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control772.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate772

-- Control773
namespace DiagonalRamsey.JointInheritedCertificate773
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11139427719/125000000000 : ℚ), (2153177887443/10000000000 : ℚ), (-9628792280541/500000000000 : ℚ), 10⟩,
    ⟨(44967961823/500000000000 : ℚ), (196029624179/10000000000 : ℚ), (-1786453504551/1000000000000 : ℚ), 7⟩,
    ⟨(91452013457/1000000000000 : ℚ), (41221754839/10000000000 : ℚ), (-38613334027/100000000000 : ℚ), 6⟩,
    ⟨(729944377/7812500000 : ℚ), (-455775809/5000000000 : ℚ), (2542316081/1000000000000 : ℚ), 5⟩,
    ⟨(95576955029/1000000000000 : ℚ), (-9044796317/5000000000 : ℚ), (82324833201/500000000000 : ℚ), 5⟩,
    ⟨(24389455457/250000000000 : ℚ), (-26621813943/10000000000 : ℚ), (30872006383/125000000000 : ℚ), 5⟩,
    ⟨(2476847791/25000000000 : ℚ), (-15564896061/5000000000 : ℚ), (18205086197/62500000000 : ℚ), 5⟩,
    ⟨(99894413533/1000000000000 : ℚ), (-33146719879/10000000000 : ℚ), (3891812529/12500000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-33390063567/10000000000 : ℚ), (313777151557/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (235554650523/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control773.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control773.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate773

-- Control774
namespace DiagonalRamsey.JointInheritedCertificate774
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16716464643/125000000000 : ℚ), (8881433237037/10000000000 : ℚ), (-59462359967039/500000000000 : ℚ), 12⟩,
    ⟨(2094430519/15625000000 : ℚ), (117545277689/1250000000 : ℚ), (-12681711385097/1000000000000 : ℚ), 9⟩,
    ⟨(33663810419/250000000000 : ℚ), (307185773667/10000000000 : ℚ), (-4181334091923/1000000000000 : ℚ), 8⟩,
    ⟨(135543275679/1000000000000 : ℚ), (33406710907/2500000000 : ℚ), (-919113602931/500000000000 : ℚ), 7⟩,
    ⟨(533880971/3906250000 : ℚ), (31321875157/5000000000 : ℚ), (-436361642711/500000000000 : ℚ), 6⟩,
    ⟨(69001282691/500000000000 : ℚ), (6735978663/2500000000 : ℚ), (-191360016603/500000000000 : ℚ), 6⟩,
    ⟨(69739655979/500000000000 : ℚ), (3267343879/5000000000 : ℚ), (-12463484947/125000000000 : ℚ), 5⟩,
    ⟨(70523508881/500000000000 : ℚ), (-3101460797/5000000000 : ℚ), (4929700493/62500000000 : ℚ), 5⟩,
    ⟨(142645436737/1000000000000 : ℚ), (-7336307383/5000000000 : ℚ), (19897166291/100000000000 : ℚ), 5⟩,
    ⟨(144213142541/1000000000000 : ℚ), (-10284997037/5000000000 : ℚ), (11341358189/40000000000 : ℚ), 5⟩,
    ⟨(145689889117/1000000000000 : ℚ), (-12403238941/5000000000 : ℚ), (68986003407/200000000000 : ℚ), 5⟩,
    ⟨(147018925923/1000000000000 : ℚ), (-2789747139/1000000000 : ℚ), (195080922371/500000000000 : ℚ), 5⟩,
    ⟨(7407458941/50000000000 : ℚ), (-1507142727/500000000 : ℚ), (105824322221/250000000000 : ℚ), 5⟩,
    ⟨(149037212823/1000000000000 : ℚ), (-31718235111/10000000000 : ℚ), (446705286851/1000000000000 : ℚ), 5⟩,
    ⟨(149648901283/1000000000000 : ℚ), (-32724464461/10000000000 : ℚ), (461732324033/1000000000000 : ℚ), 4⟩,
    ⟨(37490184339/250000000000 : ℚ), (-16607909739/5000000000 : ℚ), (469093023161/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16638360889/5000000000 : ℚ), (11750160951/25000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (184559545727/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control774.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control774.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate774

-- Control776
namespace DiagonalRamsey.JointInheritedCertificate776
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(647523579291/1000000000000 : ℚ), (1847991124397/1000000000 : ℚ), (-1197635910012007/1000000000000 : ℚ), 13⟩,
    ⟨(162064338117/250000000000 : ℚ), (2032015353677/10000000000 : ℚ), (-132373674758189/1000000000000 : ℚ), 10⟩,
    ⟨(649717832187/1000000000000 : ℚ), (71840631429/1000000000 : ℚ), (-11788397114121/250000000000 : ℚ), 8⟩,
    ⟨(651890953229/1000000000000 : ℚ), (89380573451/2500000000 : ℚ), (-11837861801121/500000000000 : ℚ), 7⟩,
    ⟨(2619023149/4000000000 : ℚ), (209603516433/10000000000 : ℚ), (-3503833854507/250000000000 : ℚ), 7⟩,
    ⟨(658284744333/1000000000000 : ℚ), (67556768083/5000000000 : ℚ), (-9126643379591/1000000000000 : ℚ), 6⟩,
    ⟨(662443838691/1000000000000 : ℚ), (11567816309/1250000000 : ℚ), (-6316369785603/1000000000000 : ℚ), 6⟩,
    ⟨(333596507987/500000000000 : ℚ), (66034940237/10000000000 : ℚ), (-4554679539463/1000000000000 : ℚ), 5⟩,
    ⟨(336243269503/500000000000 : ℚ), (48475455953/10000000000 : ℚ), (-168942453189/50000000000 : ℚ), 5⟩,
    ⟨(169568357067/250000000000 : ℚ), (9071855189/2500000000 : ℚ), (-319492884681/125000000000 : ℚ), 5⟩,
    ⟨(171124488213/250000000000 : ℚ), (27514338341/10000000000 : ℚ), (-489582416547/250000000000 : ℚ), 5⟩,
    ⟨(138220033437/200000000000 : ℚ), (525335733/250000000 : ℚ), (-302263787217/200000000000 : ℚ), 4⟩,
    ⟨(698016488333/1000000000000 : ℚ), (8040641589/5000000000 : ℚ), (-58441978493/50000000000 : ℚ), 4⟩,
    ⟨(352590154171/500000000000 : ℚ), (1533245747/1250000000 : ℚ), (-901220727237/1000000000000 : ℚ), 4⟩,
    ⟨(71252263571/100000000000 : ℚ), (1853311049/2000000000 : ℚ), (-344326707/500000000 : ℚ), 4⟩,
    ⟨(71997275981/100000000000 : ℚ), (6876535981/10000000000 : ℚ), (-129375758879/250000000000 : ℚ), 4⟩,
    ⟨(181864732969/250000000000 : ℚ), (4950473403/10000000000 : ℚ), (-47267017151/125000000000 : ℚ), 4⟩,
    ⟨(91863631997/125000000000 : ℚ), (1691819929/5000000000 : ℚ), (-263590494059/1000000000000 : ℚ), 4⟩,
    ⟨(46390711459/62500000000 : ℚ), (2099150957/10000000000 : ℚ), (-16873449049/100000000000 : ℚ), 3⟩,
    ⟨(749415203353/1000000000000 : ℚ), (519805691/5000000000 : ℚ), (-5607538983/62500000000 : ℚ), 3⟩,
    ⟨(756331524501/1000000000000 : ℚ), (80777073/5000000000 : ℚ), (-2952673259/125000000000 : ℚ), 3⟩,
    ⟨(381466869417/500000000000 : ℚ), (-568341869/10000000000 : ℚ), (15909312793/500000000000 : ℚ), 3⟩,
    ⟨(384579131709/500000000000 : ℚ), (-18373041/156250000 : ℚ), (19588679109/250000000000 : ℚ), 3⟩,
    ⟨(19373628817/25000000000 : ℚ), (-840584431/5000000000 : ℚ), (11736348993/100000000000 : ℚ), 3⟩,
    ⟨(3047807327/3906250000 : ℚ), (-105000057/500000000 : ℚ), (74964922653/500000000000 : ℚ), 3⟩,
    ⟨(156997570599/200000000000 : ℚ), (-2444762081/10000000000 : ℚ), (88455101587/500000000000 : ℚ), 3⟩,
    ⟨(789146947353/1000000000000 : ℚ), (-2725163683/10000000000 : ℚ), (99489519483/500000000000 : ℚ), 3⟩,
    ⟨(198168976109/250000000000 : ℚ), (-1474382169/5000000000 : ℚ), (216663500903/1000000000000 : ℚ), 3⟩,
    ⟨(795540738457/1000000000000 : ℚ), (-3121360763/10000000000 : ℚ), (230369342701/1000000000000 : ℚ), 3⟩,
    ⟨(797713859499/1000000000000 : ℚ), (-3247280099/10000000000 : ℚ), (240400344833/1000000000000 : ℚ), 3⟩,
    ⟨(399587169609/500000000000 : ℚ), (-3329594311/10000000000 : ℚ), (246972652417/1000000000000 : ℚ), 3⟩,
    ⟨(159981622479/200000000000 : ℚ), (-210641953/625000000 : ℚ), (3127811731/12500000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-675066717/2000000000 : ℚ), (5012598043/20000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (44639555379/250000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control776.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control776.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate776

-- Control782
namespace DiagonalRamsey.JointInheritedCertificate782
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(92968408579/200000000000 : ℚ), (935072515493/625000000 : ℚ), (-87021974592829/125000000000 : ℚ), 13⟩,
    ⟨(58186559149/125000000000 : ℚ), (1642174747223/10000000000 : ℚ), (-38446937542667/500000000000 : ℚ), 10⟩,
    ⟨(116696767447/250000000000 : ℚ), (115773547711/2000000000 : ℚ), (-5470304172189/200000000000 : ℚ), 9⟩,
    ⟨(468713365009/1000000000000 : ℚ), (286930778173/10000000000 : ℚ), (-13702351637631/1000000000000 : ℚ), 8⟩,
    ⟨(23562640379/50000000000 : ℚ), (167369931251/10000000000 : ℚ), (-8085697649667/1000000000000 : ℚ), 7⟩,
    ⟨(474380941279/1000000000000 : ℚ), (53609181503/5000000000 : ℚ), (-5242867093033/1000000000000 : ℚ), 6⟩,
    ⟨(478067640471/1000000000000 : ℚ), (36438580621/5000000000 : ℚ), (-225509109907/62500000000 : ℚ), 6⟩,
    ⟨(19291096009/40000000000 : ℚ), (25757899933/5000000000 : ℚ), (-2582849207481/1000000000000 : ℚ), 5⟩,
    ⟨(97393935651/200000000000 : ℚ), (9344573757/2500000000 : ℚ), (-1897979546111/1000000000000 : ℚ), 5⟩,
    ⟨(492099285357/1000000000000 : ℚ), (13786200931/5000000000 : ℚ), (-283625088763/200000000000 : ℚ), 5⟩,
    ⟨(124404205153/250000000000 : ℚ), (10258381141/5000000000 : ℚ), (-1069094022609/1000000000000 : ℚ), 5⟩,
    ⟨(251734573569/500000000000 : ℚ), (15288258423/10000000000 : ℚ), (-807471245493/1000000000000 : ℚ), 4⟩,
    ⟨(509599903833/1000000000000 : ℚ), (2263821659/2000000000 : ℚ), (-606481929491/1000000000000 : ℚ), 4⟩,
    ⟨(515950048157/1000000000000 : ℚ), (206121533/250000000 : ℚ), (-4488871139/10000000000 : ℚ), 4⟩,
    ⟨(522458424749/1000000000000 : ℚ), (5823139241/10000000000 : ℚ), (-323183134811/1000000000000 : ℚ), 4⟩,
    ⟨(264531177193/500000000000 : ℚ), (3887863461/10000000000 : ℚ), (-221458192539/1000000000000 : ℚ), 4⟩,
    ⟨(267849118807/500000000000 : ℚ), (2322311263/10000000000 : ℚ), (-138129137357/1000000000000 : ℚ), 4⟩,
    ⟨(2169208669/4000000000 : ℚ), (521324193/5000000000 : ℚ), (-17292115603/250000000000 : ℚ), 4⟩,
    ⟨(548810543843/1000000000000 : ℚ), (-6233653/5000000000 : ℚ), (-11615651557/1000000000000 : ℚ), 4⟩,
    ⟨(555160688167/1000000000000 : ℚ), (-222159423/2500000000 : ℚ), (36740603867/1000000000000 : ℚ), 4⟩,
    ⟨(561291444861/1000000000000 : ℚ), (-12657969/78125000 : ℚ), (38787151077/500000000000 : ℚ), 4⟩,
    ⟨(141785942847/250000000000 : ℚ), (-279173423/1250000000 : ℚ), (28041653401/250000000000 : ℚ), 3⟩,
    ⟨(572661306643/1000000000000 : ℚ), (-274825381/1000000000 : ℚ), (35376601193/250000000000 : ℚ), 3⟩,
    ⟨(115558182749/200000000000 : ℚ), (-1590188463/5000000000 : ℚ), (166361486967/1000000000000 : ℚ), 3⟩,
    ⟨(23299327671/40000000000 : ℚ), (-3541837659/10000000000 : ℚ), (93664993841/500000000000 : ℚ), 3⟩,
    ⟨(586692951529/1000000000000 : ℚ), (-3842027587/10000000000 : ℚ), (204877982247/1000000000000 : ℚ), 3⟩,
    ⟨(590379650721/1000000000000 : ℚ), (-817646053/2000000000 : ℚ), (219367450419/1000000000000 : ℚ), 3⟩,
    ⟨(29675389221/50000000000 : ℚ), (-4286054517/10000000000 : ℚ), (115538639873/500000000000 : ℚ), 3⟩,
    ⟨(596047226991/1000000000000 : ℚ), (-1109939717/2500000000 : ℚ), (60054785749/250000000000 : ℚ), 3⟩,
    ⟨(149493380553/250000000000 : ℚ), (-4552493629/10000000000 : ℚ), (123474736683/500000000000 : ℚ), 3⟩,
    ⟨(74908514851/125000000000 : ℚ), (-4626478443/10000000000 : ℚ), (251378343279/1000000000000 : ℚ), 3⟩,
    ⟨(119983709821/200000000000 : ℚ), (-582890887/1250000000 : ℚ), (126787885107/500000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-4667692251/10000000000 : ℚ), (50769932179/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (156441924119/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control782.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control782.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate782

-- Control783
namespace DiagonalRamsey.JointInheritedCertificate783
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131700544383/200000000000 : ℚ), (20253148540373/10000000000 : ℚ), (-1334711154516511/1000000000000 : ℚ), 13⟩,
    ⟨(32959182969/50000000000 : ℚ), (22277181521/100000000 : ℚ), (-147505681057399/1000000000000 : ℚ), 10⟩,
    ⟨(66053897651/100000000000 : ℚ), (157581732467/2000000000 : ℚ), (-820785474313/15625000000 : ℚ), 8⟩,
    ⟨(662555620861/1000000000000 : ℚ), (392258032869/10000000000 : ℚ), (-13182441902543/500000000000 : ℚ), 7⟩,
    ⟨(665214171043/1000000000000 : ℚ), (230035247683/10000000000 : ℚ), (-3899677489459/250000000000 : ℚ), 7⟩,
    ⟨(668489023767/1000000000000 : ℚ), (148308030839/10000000000 : ℚ), (-5075236961211/500000000000 : ℚ), 6⟩,
    ⟨(67234864041/100000000000 : ℚ), (50789036183/5000000000 : ℚ), (-877323788997/125000000000 : ℚ), 6⟩,
    ⟨(338377925377/500000000000 : ℚ), (72464692497/10000000000 : ℚ), (-1011066905229/200000000000 : ℚ), 5⟩,
    ⟨(136333642191/200000000000 : ℚ), (10633456921/2000000000 : ℚ), (-468126488927/125000000000 : ℚ), 5⟩,
    ⟨(687038412297/1000000000000 : ℚ), (19882090699/5000000000 : ℚ), (-2828020335683/1000000000000 : ℚ), 5⟩,
    ⟨(346407368403/500000000000 : ℚ), (1204392631/400000000 : ℚ), (-2162115186321/1000000000000 : ℚ), 5⟩,
    ⟨(698941555321/1000000000000 : ℚ), (22950737341/10000000000 : ℚ), (-208006767453/125000000000 : ℚ), 4⟩,
    ⟨(176339965807/250000000000 : ℚ), (350304911/200000000 : ℚ), (-641244703907/500000000000 : ℚ), 4⟩,
    ⟨(142401569743/200000000000 : ℚ), (3326851331/2500000000 : ℚ), (-984351073163/1000000000000 : ℚ), 4⟩,
    ⟨(44926343003/62500000000 : ℚ), (999690053/1000000000 : ℚ), (-186890010801/250000000000 : ℚ), 4⟩,
    ⟨(725735162153/1000000000000 : ℚ), (1839242703/2500000000 : ℚ), (-556918582117/1000000000000 : ℚ), 4⟩,
    ⟨(183170572143/250000000000 : ℚ), (2613933723/5000000000 : ℚ), (-401688367421/1000000000000 : ℚ), 4⟩,
    ⟨(739595962677/1000000000000 : ℚ), (698902421/2000000000 : ℚ), (-137054218483/500000000000 : ℚ), 4⟩,
    ⟨(746409602009/1000000000000 : ℚ), (414477847/2000000000 : ℚ), (-168458432707/1000000000000 : ℚ), 3⟩,
    ⟨(753057587497/1000000000000 : ℚ), (28074481/312500000 : ℚ), (-40224813359/500000000000 : ℚ), 3⟩,
    ⟨(189868973851/250000000000 : ℚ), (-37660123/5000000000 : ℚ), (-5327487/781250000 : ℚ), 3⟩,
    ⟨(765602713919/1000000000000 : ℚ), (-885385383/10000000000 : ℚ), (54946072009/1000000000000 : ℚ), 3⟩,
    ⟨(192844759607/250000000000 : ℚ), (-780101227/5000000000 : ℚ), (106801347851/1000000000000 : ℚ), 3⟩,
    ⟨(77674923977/100000000000 : ℚ), (-2121919241/10000000000 : ℚ), (150279215291/1000000000000 : ℚ), 3⟩,
    ⟨(78166159997/100000000000 : ℚ), (-2587896127/10000000000 : ℚ), (46646660683/250000000000 : ℚ), 3⟩,
    ⟨(393034405157/500000000000 : ℚ), (-1485881891/5000000000 : ℚ), (216675576299/1000000000000 : ℚ), 3⟩,
    ⟨(789928426957/1000000000000 : ℚ), (-1642100747/5000000000 : ℚ), (60323737343/250000000000 : ℚ), 3⟩,
    ⟨(793203279681/1000000000000 : ℚ), (-1766757867/5000000000 : ℚ), (261029435313/1000000000000 : ℚ), 3⟩,
    ⟨(99482728733/125000000000 : ℚ), (-3726072797/10000000000 : ℚ), (276328532723/1000000000000 : ℚ), 3⟩,
    ⟨(398939237107/500000000000 : ℚ), (-3866621789/10000000000 : ℚ), (143764192367/500000000000 : ℚ), 3⟩,
    ⟨(49952111959/62500000000 : ℚ), (-98963303/250000000 : ℚ), (73716979483/250000000000 : ℚ), 3⟩,
    ⟨(799914728809/1000000000000 : ℚ), (-250247567/625000000 : ℚ), (59700059453/200000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-2004807639/5000000000 : ℚ), (298952609621/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (148567086271/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control783.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control783.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate783
