import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate353
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63270443231/200000000000 : ℚ), (541717859307/400000000 : ℚ), (-429302977820657/1000000000000 : ℚ), 12⟩,
    ⟨(39654499689/125000000000 : ℚ), (36972387251/250000000 : ℚ), (-1898313651851/40000000000 : ℚ), 8⟩,
    ⟨(9968595279/31250000000 : ℚ), (103550195607/2000000000 : ℚ), (-8455075642209/500000000000 : ℚ), 7⟩,
    ⟨(20100776861/62500000000 : ℚ), (796105493/31250000 : ℚ), (-8493848684219/1000000000000 : ℚ), 6⟩,
    ⟨(1269777083/3906250000 : ℚ), (1180305807/80000000 : ℚ), (-2515116205571/500000000000 : ℚ), 5⟩,
    ⟨(329313329109/1000000000000 : ℚ), (23475490129/2500000000 : ℚ), (-819206928313/250000000000 : ℚ), 5⟩,
    ⟨(83580670931/250000000000 : ℚ), (31740207019/5000000000 : ℚ), (-283528169973/125000000000 : ℚ), 4⟩,
    ⟨(340042754269/1000000000000 : ℚ), (22346938479/5000000000 : ℚ), (-1635281143617/1000000000000 : ℚ), 4⟩,
    ⟨(346418453339/1000000000000 : ℚ), (32356159499/10000000000 : ℚ), (-2424269539/2000000000 : ℚ), 4⟩,
    ⟨(70677675893/200000000000 : ℚ), (1193330773/500000000 : ℚ), (-183059250909/200000000000 : ℚ), 4⟩,
    ⟨(360885408449/1000000000000 : ℚ), (3561362993/2000000000 : ℚ), (-349512231279/500000000000 : ℚ), 3⟩,
    ⟨(368837339803/1000000000000 : ℚ), (13351196853/10000000000 : ℚ), (-53655835629/100000000000 : ℚ), 3⟩,
    ⟨(377167592083/1000000000000 : ℚ), (1998754691/2000000000 : ℚ), (-205699187047/500000000000 : ℚ), 3⟩,
    ⟨(385795940403/1000000000000 : ℚ), (1482221891/2000000000 : ℚ), (-312926884743/1000000000000 : ℚ), 3⟩,
    ⟨(197319644527/500000000000 : ℚ), (5389143807/10000000000 : ℚ), (-234064357861/1000000000000 : ℚ), 3⟩,
    ⟨(201806235877/500000000000 : ℚ), (1891005889/5000000000 : ℚ), (-8497372661/50000000000 : ℚ), 3⟩,
    ⟨(412629071847/1000000000000 : ℚ), (248783289/1000000000 : ℚ), (-117149785767/1000000000000 : ℚ), 3⟩,
    ⟨(421602254547/1000000000000 : ℚ), (143393123/1000000000 : ℚ), (-585639257/8000000000 : ℚ), 2⟩,
    ⟨(215222801599/500000000000 : ℚ), (113503511/2000000000 : ℚ), (-36304593451/1000000000000 : ℚ), 2⟩,
    ⟨(219536975759/500000000000 : ℚ), (-150352371/10000000000 : ℚ), (-1020497371/200000000000 : ℚ), 2⟩,
    ⟨(223702101899/500000000000 : ℚ), (-93599081/1250000000 : ℚ), (4283392429/200000000000 : ℚ), 2⟩,
    ⟨(28459758447/62500000000 : ℚ), (-124981361/1000000000 : ℚ), (22013975197/500000000000 : ℚ), 2⟩,
    ⟨(57856645517/125000000000 : ℚ), (-835104511/5000000000 : ℚ), (63325625201/1000000000000 : ℚ), 2⟩,
    ⟨(234911545131/500000000000 : ℚ), (-1011442347/5000000000 : ℚ), (3190810763/40000000000 : ℚ), 2⟩,
    ⟨(119049697333/250000000000 : ℚ), (-1158903941/5000000000 : ℚ), (46859575841/500000000000 : ℚ), 2⟩,
    ⟨(481918859877/1000000000000 : ℚ), (-1281347221/5000000000 : ℚ), (26362456183/250000000000 : ℚ), 2⟩,
    ⟨(121732053623/250000000000 : ℚ), (-690877839/2500000000 : ℚ), (28794341339/250000000000 : ℚ), 2⟩,
    ⟨(491178610353/1000000000000 : ℚ), (-2924846899/10000000000 : ℚ), (123067253971/1000000000000 : ℚ), 2⟩,
    ⟨(19785164553/40000000000 : ℚ), (-3050184003/10000000000 : ℚ), (3231125711/25000000000 : ℚ), 2⟩,
    ⟨(497246494673/1000000000000 : ℚ), (-628420229/2000000000 : ℚ), (16725436163/125000000000 : ℚ), 2⟩,
    ⟨(499005546089/1000000000000 : ℚ), (-3202417441/10000000000 : ℚ), (34201996039/250000000000 : ℚ), 2⟩,
    ⟨(249944663723/500000000000 : ℚ), (-404036647/1250000000 : ℚ), (138300117969/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-3236014553/10000000000 : ℚ), (138486166257/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (36220491311/125000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control353.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control353.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate353
