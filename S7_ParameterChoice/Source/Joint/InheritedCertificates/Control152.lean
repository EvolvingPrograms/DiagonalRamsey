import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate152
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(124278362069/250000000000 : ℚ), (14939911481743/10000000000 : ℚ), (-372141056680111/500000000000 : ℚ), 11⟩,
    ⟨(249285525439/500000000000 : ℚ), (1631503987327/10000000000 : ℚ), (-41173154217629/500000000000 : ℚ), 8⟩,
    ⟨(125368054643/250000000000 : ℚ), (571451934209/10000000000 : ℚ), (-23513602883/800000000 : ℚ), 6⟩,
    ⟨(63223626441/125000000000 : ℚ), (17594122119/625000000 : ℚ), (-3700813558631/250000000000 : ℚ), 5⟩,
    ⟨(511479856669/1000000000000 : ℚ), (32675570579/2000000000 : ℚ), (-4400213752033/500000000000 : ℚ), 5⟩,
    ⟨(259244974023/500000000000 : ℚ), (104336147733/10000000000 : ℚ), (-5762614315429/1000000000000 : ℚ), 4⟩,
    ⟨(263375887323/500000000000 : ℚ), (35445646121/5000000000 : ℚ), (-16064966551/4000000000 : ℚ), 4⟩,
    ⟨(134046442641/250000000000 : ℚ), (2010927607/400000000 : ℚ), (-2921371783797/1000000000000 : ℚ), 4⟩,
    ⟨(546701081261/1000000000000 : ℚ), (9190780507/2500000000 : ℚ), (-1095231142487/500000000000 : ℚ), 3⟩,
    ⟨(558196438547/1000000000000 : ℚ), (27493673641/10000000000 : ℚ), (-209845017501/125000000000 : ℚ), 3⟩,
    ⟨(71320141981/125000000000 : ℚ), (20901026743/10000000000 : ℚ), (-261389976803/200000000000 : ℚ), 3⟩,
    ⟨(18239877949/31250000000 : ℚ), (16075029847/10000000000 : ℚ), (-514308861687/500000000000 : ℚ), 3⟩,
    ⟨(597415009889/1000000000000 : ℚ), (3114459127/2500000000 : ℚ), (-163027524841/200000000000 : ℚ), 2⟩,
    ⟨(611645569143/1000000000000 : ℚ), (9692825689/10000000000 : ℚ), (-324039577679/500000000000 : ℚ), 2⟩,
    ⟨(313115362033/500000000000 : ℚ), (1508784329/2000000000 : ℚ), (-257572090101/500000000000 : ℚ), 2⟩,
    ⟨(320515005821/500000000000 : ℚ), (1170039401/2000000000 : ℚ), (-25492187137/62500000000 : ℚ), 2⟩,
    ⟨(655900906643/1000000000000 : ℚ), (4499180767/10000000000 : ℚ), (-160151582267/500000000000 : ℚ), 2⟩,
    ⟨(670700194219/1000000000000 : ℚ), (3410564851/10000000000 : ℚ), (-49624454083/200000000000 : ℚ), 2⟩,
    ⟨(342642674571/500000000000 : ℚ), (1262965951/5000000000 : ℚ), (-11760286699/62500000000 : ℚ), 2⟩,
    ⟨(174878977099/250000000000 : ℚ), (1802095253/10000000000 : ℚ), (-5522419651/40000000000 : ℚ), 2⟩,
    ⟨(713254823917/1000000000000 : ℚ), (603337051/5000000000 : ℚ), (-24002800131/250000000000 : ℚ), 2⟩,
    ⟨(726369782437/1000000000000 : ℚ), (178772601/2500000000 : ℚ), (-60633805151/1000000000000 : ℚ), 2⟩,
    ⟨(369367239869/500000000000 : ℚ), (77123121/2500000000 : ℚ), (-30853578091/1000000000000 : ℚ), 2⟩,
    ⟨(23444682407/31250000000 : ℚ), (-27703751/10000000000 : ℚ), (-1456981601/250000000000 : ℚ), 2⟩,
    ⟨(760745147721/1000000000000 : ℚ), (-304853679/10000000000 : ℚ), (7554018163/500000000000 : ℚ), 2⟩,
    ⟨(770179143639/1000000000000 : ℚ), (-265915989/5000000000 : ℚ), (8120213071/250000000000 : ℚ), 2⟩,
    ⟨(778440970239/1000000000000 : ℚ), (-715575711/10000000000 : ℚ), (5838424807/125000000000 : ℚ), 2⟩,
    ⟨(49090691351/62500000000 : ℚ), (-430740303/5000000000 : ℚ), (29057930509/500000000000 : ℚ), 2⟩,
    ⟨(791141906757/1000000000000 : ℚ), (-194738081/2000000000 : ℚ), (13392212913/200000000000 : ℚ), 2⟩,
    ⟨(795458699713/1000000000000 : ℚ), (-263826721/2500000000 : ℚ), (73435596821/1000000000000 : ℚ), 2⟩,
    ⟨(798359867407/1000000000000 : ℚ), (-221707927/2000000000 : ℚ), (38838866649/500000000000 : ℚ), 2⟩,
    ⟨(799817470009/1000000000000 : ℚ), (-567404353/5000000000 : ℚ), (39888430601/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-71129763/625000000 : ℚ), (16007646309/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (152985659651/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control152.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control152.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate152
