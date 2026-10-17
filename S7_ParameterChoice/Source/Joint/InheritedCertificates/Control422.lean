import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate422
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144054202057/500000000000 : ℚ), (8365058304979/5000000000 : ℚ), (-482781483617367/1000000000000 : ℚ), 12⟩,
    ⟨(72185778867/250000000000 : ℚ), (1830455472927/10000000000 : ℚ), (-2666783236027/50000000000 : ℚ), 9⟩,
    ⟨(290006425559/1000000000000 : ℚ), (642359415789/10000000000 : ℚ), (-18979837159379/1000000000000 : ℚ), 7⟩,
    ⟨(14594308401/50000000000 : ℚ), (158394799937/5000000000 : ℚ), (-1189281182181/125000000000 : ℚ), 6⟩,
    ⟨(294364239903/1000000000000 : ℚ), (9189998327/500000000 : ℚ), (-2809356639553/500000000000 : ℚ), 6⟩,
    ⟨(297416776021/1000000000000 : ℚ), (117102769967/10000000000 : ℚ), (-3646550718043/1000000000000 : ℚ), 5⟩,
    ⟨(9406699337/31250000000 : ℚ), (79160514267/10000000000 : ℚ), (-1256003778319/500000000000 : ℚ), 5⟩,
    ⟨(30512240131/100000000000 : ℚ), (55649843199/10000000000 : ℚ), (-1799924768007/1000000000000 : ℚ), 4⟩,
    ⟨(61940256219/200000000000 : ℚ), (40151273019/10000000000 : ℚ), (-82735526179/62500000000 : ℚ), 4⟩,
    ⟨(157353460513/500000000000 : ℚ), (2944298871/1000000000 : ℚ), (-61852683939/62500000000 : ℚ), 4⟩,
    ⟨(80022778513/250000000000 : ℚ), (21765991617/10000000000 : ℚ), (-9326339321/12500000000 : ℚ), 4⟩,
    ⟨(325802007453/1000000000000 : ℚ), (16095284807/10000000000 : ℚ), (-14076644053/25000000000 : ℚ), 3⟩,
    ⟨(331784602201/1000000000000 : ℚ), (1180178201/1000000000 : ℚ), (-84392806519/200000000000 : ℚ), 3⟩,
    ⟨(337981282641/1000000000000 : ℚ), (4241366703/5000000000 : ℚ), (-155431148691/500000000000 : ℚ), 3⟩,
    ⟨(6886647427/20000000000 : ℚ), (1467780771/2500000000 : ℚ), (-221800101409/1000000000000 : ℚ), 3⟩,
    ⟨(2806213631/8000000000 : ℚ), (756932329/2000000000 : ℚ), (-5972384769/40000000000 : ℚ), 3⟩,
    ⟨(44656527221/125000000000 : ℚ), (2095778017/10000000000 : ℚ), (-44769700637/500000000000 : ℚ), 3⟩,
    ⟨(90924137573/250000000000 : ℚ), (356644833/5000000000 : ℚ), (-19858996883/500000000000 : ℚ), 3⟩,
    ⟨(185023819501/500000000000 : ℚ), (-3352833/78125000 : ℚ), (1092652283/500000000000 : ℚ), 3⟩,
    ⟨(376244319441/1000000000000 : ℚ), (-1380620991/10000000000 : ℚ), (37681235531/1000000000000 : ℚ), 3⟩,
    ⟨(38222691419/100000000000 : ℚ), (-217780473/1000000000 : ℚ), (2716318693/40000000000 : ℚ), 3⟩,
    ⟨(38793780759/100000000000 : ℚ), (-2848506971/10000000000 : ℚ), (18746347159/200000000000 : ℚ), 3⟩,
    ⟨(393322000617/1000000000000 : ℚ), (-3413950323/10000000000 : ℚ), (115816985093/1000000000000 : ℚ), 2⟩,
    ⟨(398327640547/1000000000000 : ℚ), (-3890449161/10000000000 : ℚ), (33669042369/250000000000 : ℚ), 2⟩,
    ⟨(402906520333/1000000000000 : ℚ), (-4290600751/10000000000 : ℚ), (75352857021/500000000000 : ℚ), 2⟩,
    ⟨(203507271429/500000000000 : ℚ), (-4624150137/10000000000 : ℚ), (41053093533/250000000000 : ℚ), 2⟩,
    ⟨(410612145621/1000000000000 : ℚ), (-97972499/200000000 : ℚ), (175432803391/1000000000000 : ℚ), 2⟩,
    ⟨(20683234087/50000000000 : ℚ), (-2559902421/5000000000 : ℚ), (184548215233/1000000000000 : ℚ), 2⟩,
    ⟨(416142753623/1000000000000 : ℚ), (-330754347/625000000 : ℚ), (191695412207/1000000000000 : ℚ), 2⟩,
    ⟨(104505624021/250000000000 : ℚ), (-2709327857/5000000000 : ℚ), (6155470233/31250000000 : ℚ), 2⟩,
    ⟨(209642903087/500000000000 : ℚ), (-1375460751/2500000000 : ℚ), (200457702249/1000000000000 : ℚ), 2⟩,
    ⟨(52490064691/125000000000 : ℚ), (-2165267/3906250 : ℚ), (101094082713/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2774111111/5000000000 : ℚ), (202403970481/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (140966386539/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control422.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control422.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate422
