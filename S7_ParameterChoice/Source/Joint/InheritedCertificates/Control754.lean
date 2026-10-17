import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate754
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(171542841193/500000000000 : ℚ), (13369921443221/10000000000 : ℚ), (-45925325454433/100000000000 : ℚ), 13⟩,
    ⟨(171824158757/500000000000 : ℚ), (146572026663/1000000000 : ℚ), (-50713864841861/1000000000000 : ℚ), 10⟩,
    ⟨(86192042321/250000000000 : ℚ), (257847222907/5000000000 : ℚ), (-4507668590059/250000000000 : ℚ), 8⟩,
    ⟨(173217226457/500000000000 : ℚ), (255007227273/10000000000 : ℚ), (-4513036139953/500000000000 : ℚ), 7⟩,
    ⟨(348631121179/1000000000000 : ℚ), (2966483437/200000000 : ℚ), (-665052533627/125000000000 : ℚ), 7⟩,
    ⟨(175668509483/500000000000 : ℚ), (94698695997/10000000000 : ℚ), (-3444569144527/1000000000000 : ℚ), 6⟩,
    ⟨(354526086997/1000000000000 : ℚ), (8014074521/1250000000 : ℚ), (-236562163517/100000000000 : ℚ), 6⟩,
    ⟨(71633522561/200000000000 : ℚ), (45105429821/10000000000 : ℚ), (-844314498413/500000000000 : ℚ), 5⟩,
    ⟨(181113263253/500000000000 : ℚ), (1301494651/400000000 : ℚ), (-1236136785393/1000000000000 : ℚ), 5⟩,
    ⟨(183331869271/500000000000 : ℚ), (23826704539/10000000000 : ℚ), (-229704521281/250000000000 : ℚ), 5⟩,
    ⟨(74287303227/200000000000 : ℚ), (2195314789/1250000000 : ℚ), (-171933114059/250000000000 : ℚ), 5⟩,
    ⟨(376498894829/1000000000000 : ℚ), (12921644253/10000000000 : ℚ), (-514245039383/1000000000000 : ℚ), 4⟩,
    ⟨(95450530287/250000000000 : ℚ), (4699068099/5000000000 : ℚ), (-23793655493/62500000000 : ℚ), 4⟩,
    ⟨(3098360977/8000000000 : ℚ), (6667520423/10000000000 : ℚ), (-55145482901/200000000000 : ℚ), 4⟩,
    ⟨(392924997157/1000000000000 : ℚ), (4514240799/10000000000 : ℚ), (-191750950373/1000000000000 : ℚ), 4⟩,
    ⟨(39863752747/100000000000 : ℚ), (697699007/2500000000 : ℚ), (-123558722239/1000000000000 : ℚ), 4⟩,
    ⟨(202188849137/500000000000 : ℚ), (348422489/2500000000 : ℚ), (-16869369763/250000000000 : ℚ), 4⟩,
    ⟨(102522557147/250000000000 : ℚ), (248735057/10000000000 : ℚ), (-10430536147/500000000000 : ℚ), 4⟩,
    ⟨(20786005181/50000000000 : ℚ), (-174556217/2500000000 : ℚ), (18232011191/1000000000000 : ℚ), 4⟩,
    ⟨(105303276149/250000000000 : ℚ), (-371834881/2500000000 : ℚ), (1601513559/31250000000 : ℚ), 4⟩,
    ⟨(106629082729/250000000000 : ℚ), (-2148763771/10000000000 : ℚ), (79279974199/1000000000000 : ℚ), 4⟩,
    ⟨(431578709609/1000000000000 : ℚ), (-1352694443/5000000000 : ℚ), (20631810409/200000000000 : ℚ), 3⟩,
    ⟨(218175743601/500000000000 : ℚ), (-3174739551/10000000000 : ℚ), (61762639543/500000000000 : ℚ), 3⟩,
    ⟨(220394349619/500000000000 : ℚ), (-3570315323/10000000000 : ℚ), (35218177571/250000000000 : ℚ), 3⟩,
    ⟨(444847612939/1000000000000 : ℚ), (-1951277363/5000000000 : ℚ), (31116796823/200000000000 : ℚ), 3⟩,
    ⟨(112122284687/250000000000 : ℚ), (-6687261/16000000 : ℚ), (83977694281/500000000000 : ℚ), 3⟩,
    ⟨(451678206779/1000000000000 : ℚ), (-2203753169/5000000000 : ℚ), (178215522703/1000000000000 : ℚ), 3⟩,
    ⟨(90876820913/200000000000 : ℚ), (-2295623327/5000000000 : ℚ), (46634835019/250000000000 : ℚ), 3⟩,
    ⟨(456580772831/1000000000000 : ℚ), (-4734381237/10000000000 : ℚ), (38611754759/200000000000 : ℚ), 3⟩,
    ⟨(22912352823/50000000000 : ℚ), (-967916341/2000000000 : ℚ), (1582966003/8000000000 : ℚ), 3⟩,
    ⟨(459366908231/1000000000000 : ℚ), (-4908725961/10000000000 : ℚ), (40208625131/200000000000 : ℚ), 3⟩,
    ⟨(229964771679/500000000000 : ℚ), (-77234501/156250000 : ℚ), (10130944751/50000000000 : ℚ), 3⟩,
    ⟨(23/50 : ℚ), (-618409987/1250000000 : ℚ), (202815384251/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (410257908821/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control754.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control754.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate754
