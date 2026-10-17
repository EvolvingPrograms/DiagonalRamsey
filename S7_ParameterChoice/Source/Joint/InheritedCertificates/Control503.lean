import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate503
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(232666777873/1000000000000 : ℚ), (14363112756443/10000000000 : ℚ), (-334769355239289/1000000000000 : ℚ), 12⟩,
    ⟨(9329257157/40000000000 : ℚ), (157003122423/1000000000 : ℚ), (-36983902747331/1000000000000 : ℚ), 9⟩,
    ⟨(234355293129/1000000000000 : ℚ), (137561860917/2500000000 : ℚ), (-2632176012773/200000000000 : ℚ), 7⟩,
    ⟨(11801377353/50000000000 : ℚ), (270948413961/10000000000 : ℚ), (-3298578444689/500000000000 : ℚ), 6⟩,
    ⟨(119116042999/500000000000 : ℚ), (31388103089/2000000000 : ℚ), (-15217849993/3906250000 : ℚ), 6⟩,
    ⟨(240947679027/1000000000000 : ℚ), (19962347847/2000000000 : ℚ), (-632011830319/250000000000 : ℚ), 5⟩,
    ⟨(3814815211/15625000000 : ℚ), (67343598551/10000000000 : ℚ), (-1741109747479/1000000000000 : ℚ), 5⟩,
    ⟨(49560549383/200000000000 : ℚ), (47245087303/10000000000 : ℚ), (-1247079545283/1000000000000 : ℚ), 4⟩,
    ⟨(251876203721/1000000000000 : ℚ), (425114147/125000000 : ℚ), (-229153102073/250000000000 : ℚ), 4⟩,
    ⟨(64082328577/250000000000 : ℚ), (12436401003/5000000000 : ℚ), (-136920288867/200000000000 : ℚ), 4⟩,
    ⟨(16319949549/62500000000 : ℚ), (4582071127/2500000000 : ℚ), (-257689353553/500000000000 : ℚ), 4⟩,
    ⟨(133099855001/500000000000 : ℚ), (13497415563/10000000000 : ℚ), (-3031861199/7812500000 : ℚ), 3⟩,
    ⟨(54304387561/200000000000 : ℚ), (9841571519/10000000000 : ℚ), (-289836788581/1000000000000 : ℚ), 3⟩,
    ⟨(69258655057/250000000000 : ℚ), (7016181537/10000000000 : ℚ), (-212378497733/1000000000000 : ℚ), 3⟩,
    ⟨(282684667127/1000000000000 : ℚ), (1198251759/2500000000 : ℚ), (-75093529523/500000000000 : ℚ), 3⟩,
    ⟨(144208832731/500000000000 : ℚ), (603278867/2000000000 : ℚ), (-2486872661/25000000000 : ℚ), 3⟩,
    ⟨(294178403323/1000000000000 : ℚ), (1577542741/10000000000 : ℚ), (-57575572567/1000000000000 : ℚ), 3⟩,
    ⟨(299911401657/1000000000000 : ℚ), (49848797/1250000000 : ℚ), (-4514343439/200000000000 : ℚ), 3⟩,
    ⟨(76390362139/250000000000 : ℚ), (-576298163/10000000000 : ℚ), (6940156641/1000000000000 : ℚ), 3⟩,
    ⟨(15553706549/50000000000 : ℚ), (-1389363339/10000000000 : ℚ), (32002859367/1000000000000 : ℚ), 3⟩,
    ⟨(158198179391/500000000000 : ℚ), (-1035764201/5000000000 : ℚ), (53400778909/1000000000000 : ℚ), 3⟩,
    ⟨(321476876001/1000000000000 : ℚ), (-2646307603/10000000000 : ℚ), (71729738243/1000000000000 : ℚ), 3⟩,
    ⟨(326266754477/1000000000000 : ℚ), (-3131622137/10000000000 : ℚ), (21861426911/250000000000 : ℚ), 3⟩,
    ⟨(330719865063/1000000000000 : ℚ), (-3541221943/10000000000 : ℚ), (50449708337/500000000000 : ℚ), 3⟩,
    ⟨(33479332187/100000000000 : ℚ), (-1942851907/5000000000 : ℚ), (112361367023/1000000000000 : ℚ), 3⟩,
    ⟨(338447895281/1000000000000 : ℚ), (-4173250061/10000000000 : ℚ), (122040184729/1000000000000 : ℚ), 2⟩,
    ⟨(341648389757/1000000000000 : ℚ), (-4410170123/10000000000 : ℚ), (32524064029/250000000000 : ℚ), 2⟩,
    ⟨(344363982787/1000000000000 : ℚ), (-920260121/2000000000 : ℚ), (85407471/625000000 : ℚ), 2⟩,
    ⟨(13862740869/40000000000 : ℚ), (-148446921/312500000 : ℚ), (141799333061/1000000000000 : ℚ), 2⟩,
    ⟨(43530096957/125000000000 : ℚ), (-4859874253/10000000000 : ℚ), (18200737763/125000000000 : ℚ), 2⟩,
    ⟨(17468231993/50000000000 : ℚ), (-4931919953/10000000000 : ℚ), (148118863901/1000000000000 : ℚ), 2⟩,
    ⟨(10935290341/31250000000 : ℚ), (-620956081/1250000000 : ℚ), (149368105411/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-1243025277/2500000000 : ℚ), (29904785157/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (179946644443/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control503.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control503.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate503
