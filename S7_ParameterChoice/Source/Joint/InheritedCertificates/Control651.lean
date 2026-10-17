import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate651
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(516197941199/1000000000000 : ℚ), (16285825614233/10000000000 : ℚ), (-841739327575837/1000000000000 : ℚ), 12⟩,
    ⟨(64635308123/125000000000 : ℚ), (893175807289/5000000000 : ℚ), (-18608676987317/200000000000 : ℚ), 9⟩,
    ⟨(518842994107/1000000000000 : ℚ), (629342015699/10000000000 : ℚ), (-33148072742737/1000000000000 : ℚ), 8⟩,
    ⟨(521462573709/1000000000000 : ℚ), (62385276297/2000000000 : ℚ), (-16646766440807/1000000000000 : ℚ), 7⟩,
    ⟨(524915975807/1000000000000 : ℚ), (18207204203/1000000000 : ℚ), (-1971325783153/200000000000 : ℚ), 6⟩,
    ⟨(529169942251/1000000000000 : ℚ), (58416092749/5000000000 : ℚ), (-1284007263673/200000000000 : ℚ), 6⟩,
    ⟨(534183505019/1000000000000 : ℚ), (7964840741/1000000000 : ℚ), (-4444080341533/1000000000000 : ℚ), 5⟩,
    ⟨(539908380761/1000000000000 : ℚ), (5656418333/1000000000 : ℚ), (-3204967032541/1000000000000 : ℚ), 5⟩,
    ⟨(546289435793/1000000000000 : ℚ), (41320634573/10000000000 : ℚ), (-1188742563233/500000000000 : ℚ), 4⟩,
    ⟨(553265217067/1000000000000 : ℚ), (6154832119/2000000000 : ℚ), (-359585225201/200000000000 : ℚ), 4⟩,
    ⟨(560768543997/1000000000000 : ℚ), (4641365253/2000000000 : ℚ), (-1376593005053/1000000000000 : ℚ), 4⟩,
    ⟨(568727155443/1000000000000 : ℚ), (4404090099/2500000000 : ℚ), (-265249835581/250000000000 : ℚ), 4⟩,
    ⟨(72133050703/125000000000 : ℚ), (3346673711/2500000000 : ℚ), (-409387117787/500000000000 : ℚ), 4⟩,
    ⟨(292850001133/500000000000 : ℚ), (5061333487/5000000000 : ℚ), (-157268788623/250000000000 : ℚ), 3⟩,
    ⟨(594550779851/1000000000000 : ℚ), (3780836581/5000000000 : ℚ), (-238996220537/500000000000 : ℚ), 3⟩,
    ⟨(75441437569/125000000000 : ℚ), (1104782973/2000000000 : ℚ), (-355957660067/1000000000000 : ℚ), 3⟩,
    ⟨(612555675121/1000000000000 : ℚ), (77662363/200000000 : ℚ), (-256216116747/1000000000000 : ℚ), 3⟩,
    ⟨(621536395823/1000000000000 : ℚ), (509728561/2000000000 : ℚ), (-21736506467/125000000000 : ℚ), 3⟩,
    ⟨(630387173407/1000000000000 : ℚ), (1454190949/10000000000 : ℚ), (-105397669093/1000000000000 : ℚ), 3⟩,
    ⟨(639022770049/1000000000000 : ℚ), (550477081/10000000000 : ℚ), (-48048821361/1000000000000 : ℚ), 3⟩,
    ⟨(647360020231/1000000000000 : ℚ), (-199649283/10000000000 : ℚ), (191186687/1000000000000 : ℚ), 3⟩,
    ⟨(163829657919/250000000000 : ℚ), (-16490411/200000000 : ℚ), (40886166531/1000000000000 : ℚ), 3⟩,
    ⟨(331410979303/500000000000 : ℚ), (-1345950881/10000000000 : ℚ), (75248337297/1000000000000 : ℚ), 3⟩,
    ⟨(669797739881/1000000000000 : ℚ), (-1780858533/10000000000 : ℚ), (26056021561/250000000000 : ℚ), 3⟩,
    ⟨(676178794913/1000000000000 : ℚ), (-2142428033/10000000000 : ℚ), (64277787239/500000000000 : ℚ), 3⟩,
    ⟨(340951835327/500000000000 : ℚ), (-2440954089/10000000000 : ℚ), (14882562879/100000000000 : ℚ), 3⟩,
    ⟨(343458616711/500000000000 : ℚ), (-1342230743/5000000000 : ℚ), (165490867177/1000000000000 : ℚ), 3⟩,
    ⟨(345585599933/500000000000 : ℚ), (-2879164403/10000000000 : ℚ), (22363298607/125000000000 : ℚ), 3⟩,
    ⟨(138924920393/200000000000 : ℚ), (-605961633/2000000000 : ℚ), (189344279277/1000000000000 : ℚ), 3⟩,
    ⟨(697244181567/1000000000000 : ℚ), (-3139922677/10000000000 : ℚ), (197007450897/1000000000000 : ℚ), 3⟩,
    ⟨(699004710689/1000000000000 : ℚ), (-1606003633/5000000000 : ℚ), (202039830099/1000000000000 : ℚ), 3⟩,
    ⟨(349944617237/500000000000 : ℚ), (-3247660029/10000000000 : ℚ), (20453354909/100000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-1626049279/5000000000 : ℚ), (102422110771/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (115114906339/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control651.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control651.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate651
