import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate635
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2261019490689/52240167585650 : ℚ), (143769145699/625000000 : ℚ), (-9980739805149/1000000000000 : ℚ)⟩,
  ⟨(2261019490689/52240167585650 : ℚ), (181319260238/4118625071675 : ℚ), (105349813879/5000000000 : ℚ), (-936661842393/1000000000000 : ℚ)⟩,
  ⟨(181319260238/4118625071675 : ℚ), (8068665255/178719363488 : ℚ), (45954624891/10000000000 : ℚ), (-211384801441/1000000000000 : ℚ)⟩,
  ⟨(8068665255/178719363488 : ℚ), (84447723051/1817080314800 : ℚ), (1274784019/10000000000 : ℚ), (-4834085033/500000000000 : ℚ)⟩,
  ⟨(84447723051/1817080314800 : ℚ), (10765488827/225212018000 : ℚ), (-16896019129/10000000000 : ℚ), (14955910597/200000000000 : ℚ)⟩,
  ⟨(10765488827/225212018000 : ℚ), (4645899651/94961128720 : ℚ), (-25904499849/10000000000 : ℚ), (117841508293/1000000000000 : ℚ)⟩,
  ⟨(4645899651/94961128720 : ℚ), (10522923733/211848442700 : ℚ), (-6130511257/2000000000 : ℚ), (35267751637/250000000000 : ℚ)⟩,
  ⟨(10522923733/211848442700 : ℚ), (318818403/6380595800 : ℚ), (-4096380089/1250000000 : ℚ), (151593930281/1000000000000 : ℚ)⟩,
  ⟨(318818403/6380595800 : ℚ), (1/20 : ℚ), (-1032070767/312500000 : ℚ), (152869203893/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (217929233/1250000000 : ℚ), (-1/5 : ℚ), (187737881173/1000000000000 : ℚ)⟩,
  ⟨(217929233/1250000000 : ℚ), (903619911/5000000000 : ℚ), (-318818403/1595148950 : ℚ), (5988660602058295631/31902979000000000000 : ℚ)⟩,
  ⟨(903619911/5000000000 : ℚ), (1869488743/8000000000 : ℚ), (-10522923733/52962110675 : ℚ), (397219167784608216091/2118484427000000000000 : ℚ)⟩,
  ⟨(1869488743/8000000000 : ℚ), (14095500151/40000000000 : ℚ), (-4645899651/23740282180 : ℚ), (886949528039532760253/4748056436000000000000 : ℚ)⟩,
  ⟨(14095500151/40000000000 : ℚ), (23103980871/40000000000 : ℚ), (-10765488827/56303004500 : ℚ), (417138188254869965617/2252120180000000000000 : ℚ)⟩,
  ⟨(23103980871/40000000000 : ℚ), (41274784019/40000000000 : ℚ), (-84447723051/454270078700 : ℚ), (3309883114755680554201/18170803148000000000000 : ℚ)⟩,
  ⟨(41274784019/40000000000 : ℚ), (85954624891/40000000000 : ℚ), (-8068665255/44679840872 : ℚ), (7893838092971050258573/44679840872000000000000 : ℚ)⟩,
  ⟨(85954624891/40000000000 : ℚ), (125349813879/20000000000 : ℚ), (-725277040952/4118625071675 : ℚ), (5503265255529166960977/32949000573400000000000 : ℚ)⟩,
  ⟨(125349813879/20000000000 : ℚ), (32/1 : ℚ), (-4522038981378/26120083792825 : ℚ), (31009211396949988264263/208960670342600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (127479819347/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(43185588493/1000000000000 : ℚ), (143769145699/625000000 : ℚ), (-9980739805149/1000000000000 : ℚ), 10⟩,
    ⟨(21849636423/500000000000 : ℚ), (105349813879/5000000000 : ℚ), (-936661842393/1000000000000 : ℚ), 7⟩,
    ⟨(5581054721/125000000000 : ℚ), (45954624891/10000000000 : ℚ), (-211384801441/1000000000000 : ℚ), 5⟩,
    ⟨(22944290751/500000000000 : ℚ), (1274784019/10000000000 : ℚ), (-4834085033/500000000000 : ℚ), 5⟩,
    ⟨(47230903407/1000000000000 : ℚ), (-16896019129/10000000000 : ℚ), (14955910597/200000000000 : ℚ), 4⟩,
    ⟨(48471047141/1000000000000 : ℚ), (-25904499849/10000000000 : ℚ), (117841508293/1000000000000 : ℚ), 4⟩,
    ⟨(24710106031/500000000000 : ℚ), (-6130511257/2000000000 : ℚ), (35267751637/250000000000 : ℚ), 4⟩,
    ⟨(1560434263/31250000000 : ℚ), (-4096380089/1250000000 : ℚ), (151593930281/1000000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-1032070767/312500000 : ℚ), (152869203893/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control635.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control635.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate635
