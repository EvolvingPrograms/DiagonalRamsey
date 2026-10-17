import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate649
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (11154941858877/85518599900590 : ℚ), (298921481343/312500000 : ℚ), (-124902773714921/1000000000000 : ℚ)⟩,
  ⟨(11154941858877/85518599900590 : ℚ), (8925078349647/68133294575200 : ℚ), (1013627412917/10000000000 : ℚ), (-13353355126151/1000000000000 : ℚ)⟩,
  ⟨(8925078349647/68133294575200 : ℚ), (307543262129/2331570623825 : ℚ), (66458893433/2000000000 : ℚ), (-553534597063/125000000000 : ℚ)⟩,
  ⟨(307543262129/2331570623825 : ℚ), (202798291973/1523321575440 : ℚ), (145768817259/10000000000 : ℚ), (-122995667467/62500000000 : ℚ)⟩,
  ⟨(202798291973/1523321575440 : ℚ), (514779518759/3823879048900 : ℚ), (69602738487/10000000000 : ℚ), (-953939219607/1000000000000 : ℚ)⟩,
  ⟨(514779518759/3823879048900 : ℚ), (11898770623/87281435108 : ℚ), (15681973999/5000000000 : ℚ), (-27447481303/62500000000 : ℚ)⟩,
  ⟨(11898770623/87281435108 : ℚ), (187822695273/1359301127000 : ℚ), (9543589221/10000000000 : ℚ), (-141690435273/1000000000000 : ℚ)⟩,
  ⟨(187822695273/1359301127000 : ℚ), (63196034831/451079678550 : ℚ), (-4049422049/10000000000 : ℚ), (2306613/50000000 : ℚ)⟩,
  ⟨(63196034831/451079678550 : ℚ), (11130191583/78368913425 : ℚ), (-653550781/500000000 : ℚ), (86262164831/500000000000 : ℚ)⟩,
  ⟨(11130191583/78368913425 : ℚ), (5388600534/37454023825 : ℚ), (-9670264347/5000000000 : ℚ), (130782931163/500000000000 : ℚ)⟩,
  ⟨(5388600534/37454023825 : ℚ), (23815543573/163594902850 : ℚ), (-23835011553/10000000000 : ℚ), (163114534367/500000000000 : ℚ)⟩,
  ⟨(23815543573/163594902850 : ℚ), (34873785133/237124939600 : ℚ), (-2710690961/1000000000 : ℚ), (9346503897/25000000000 : ℚ)⟩,
  ⟨(34873785133/237124939600 : ℚ), (24615974783/165994487100 : ℚ), (-14739079503/5000000000 : ℚ), (408733941013/1000000000000 : ℚ)⟩,
  ⟨(24615974783/165994487100 : ℚ), (631562595/4232891552 : ℚ), (-31138103877/10000000000 : ℚ), (108337478949/250000000000 : ℚ)⟩,
  ⟨(631562595/4232891552 : ℚ), (77290143/516081064 : ℚ), (-6439265353/2000000000 : ℚ), (449138980671/1000000000000 : ℚ)⟩,
  ⟨(77290143/516081064 : ℚ), (958863331/6393432500 : ℚ), (-32712407829/10000000000 : ℚ), (456867994971/1000000000000 : ℚ)⟩,
  ⟨(958863331/6393432500 : ℚ), (3/20 : ℚ), (-16388171077/5000000000 : ℚ), (228913429151/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3611828923/20000000000 : ℚ), (-3/5 : ℚ), (70772715749/125000000000 : ℚ)⟩,
  ⟨(3611828923/20000000000 : ℚ), (7287592171/40000000000 : ℚ), (-958863331/1598358125 : ℚ), (4524668972078607647/7991790625000000000 : ℚ)⟩,
  ⟨(7287592171/40000000000 : ℚ), (1560734647/8000000000 : ℚ), (-77290143/129020266 : ℚ), (73026706263601843611/129020266000000000000 : ℚ)⟩,
  ⟨(1560734647/8000000000 : ℚ), (8861896123/40000000000 : ℚ), (-631562595/1058222888 : ℚ), (598501852209757918473/1058222888000000000000 : ℚ)⟩,
  ⟨(8861896123/40000000000 : ℚ), (5260920497/20000000000 : ℚ), (-24615974783/41498621775 : ℚ), (7499849452537484389/13279558968000000000 : ℚ)⟩,
  ⟨(5260920497/20000000000 : ℚ), (1289309039/4000000000 : ℚ), (-34873785133/59281234900 : ℚ), (26722930655602460407/47424987920000000000 : ℚ)⟩,
  ⟨(1289309039/4000000000 : ℚ), (16164988447/40000000000 : ℚ), (-47631087146/81797451425 : ℚ), (18373442295608342521/32718980570000000000 : ℚ)⟩,
  ⟨(16164988447/40000000000 : ℚ), (10329735653/20000000000 : ℚ), (-21554402136/37454023825 : ℚ), (418585157010632033147/749080476500000000000 : ℚ)⟩,
  ⟨(10329735653/20000000000 : ℚ), (1346449219/2000000000 : ℚ), (-44520766332/78368913425 : ℚ), (12982990980145935781/23393705500000000000 : ℚ)⟩,
  ⟨(1346449219/2000000000 : ℚ), (35950577951/40000000000 : ℚ), (-126392069662/225539839275 : ℚ), (2480027226501826841281/4510796785500000000000 : ℚ)⟩,
  ⟨(35950577951/40000000000 : ℚ), (49543589221/40000000000 : ℚ), (-187822695273/339825281750 : ℚ), (7379410777469475925623/13593011270000000000000 : ℚ)⟩,
  ⟨(49543589221/40000000000 : ℚ), (35681973999/20000000000 : ℚ), (-11898770623/21820358777 : ℚ), (831854211899585744711/1558597055500000000000 : ℚ)⟩,
  ⟨(35681973999/20000000000 : ℚ), (109602738487/40000000000 : ℚ), (-514779518759/955969762225 : ℚ), (117316253030671493293/224934061700000000000 : ℚ)⟩,
  ⟨(109602738487/40000000000 : ℚ), (185768817259/40000000000 : ℚ), (-202798291973/380830393860 : ℚ), (38478431059347982441651/76166078772000000000000 : ℚ)⟩,
  ⟨(185768817259/40000000000 : ℚ), (74458893433/8000000000 : ℚ), (-1230173048516/2331570623825 : ℚ), (11248254441870064668207/23315706238250000000000 : ℚ)⟩,
  ⟨(74458893433/8000000000 : ℚ), (1053627412917/40000000000 : ℚ), (-8925078349647/17033323643800 : ℚ), (305626427847066170629747/681332945752000000000000 : ℚ)⟩,
  ⟨(1053627412917/40000000000 : ℚ), (32/1 : ℚ), (-22309883717754/42759299950295 : ℚ), (3335501883701256658209181/8551859990059000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (64077520851/200000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(130369342867/1000000000000 : ℚ), (298921481343/312500000 : ℚ), (-124902773714921/1000000000000 : ℚ), 12⟩,
    ⟨(130745630093/1000000000000 : ℚ), (1013627412917/10000000000 : ℚ), (-13353355126151/1000000000000 : ℚ), 9⟩,
    ⟨(65741872019/500000000000 : ℚ), (66458893433/2000000000 : ℚ), (-553534597063/125000000000 : ℚ), 7⟩,
    ⟨(33138829849/250000000000 : ℚ), (145768817259/10000000000 : ℚ), (-122995667467/62500000000 : ℚ), 6⟩,
    ⟨(2092487127/15625000000 : ℚ), (69602738487/10000000000 : ℚ), (-953939219607/1000000000000 : ℚ), 6⟩,
    ⟨(27104580397/200000000000 : ℚ), (15681973999/5000000000 : ℚ), (-27447481303/62500000000 : ℚ), 5⟩,
    ⟨(3432621667/25000000000 : ℚ), (9543589221/10000000000 : ℚ), (-141690435273/1000000000000 : ℚ), 5⟩,
    ⟨(139196590311/1000000000000 : ℚ), (-4049422049/10000000000 : ℚ), (2306613/50000000 : ℚ), 5⟩,
    ⟨(141125374999/1000000000000 : ℚ), (-653550781/500000000 : ℚ), (86262164831/500000000000 : ℚ), 4⟩,
    ⟨(143017098629/1000000000000 : ℚ), (-9670264347/5000000000 : ℚ), (130782931163/500000000000 : ℚ), 4⟩,
    ⟨(5791962533/40000000000 : ℚ), (-23835011553/10000000000 : ℚ), (163114534367/500000000000 : ℚ), 4⟩,
    ⟨(146402789181/1000000000000 : ℚ), (-2710690961/1000000000 : ℚ), (9346503897/25000000000 : ℚ), 4⟩,
    ⟨(147766645913/1000000000000 : ℚ), (-14739079503/5000000000 : ℚ), (408733941013/1000000000000 : ℚ), 4⟩,
    ⟨(18604777659/125000000000 : ℚ), (-31138103877/10000000000 : ℚ), (108337478949/250000000000 : ℚ), 4⟩,
    ⟨(9348520951/62500000000 : ℚ), (-6439265353/2000000000 : ℚ), (449138980671/1000000000000 : ℚ), 4⟩,
    ⟨(74976311221/500000000000 : ℚ), (-32712407829/10000000000 : ℚ), (456867994971/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16388171077/5000000000 : ℚ), (228913429151/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control649.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control649.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate649
