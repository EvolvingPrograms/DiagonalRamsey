import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate355
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12250333849/50000000000 : ℚ), (12424750265607/10000000000 : ℚ), (-305083025129501/1000000000000 : ℚ), 12⟩,
    ⟨(245752562427/1000000000000 : ℚ), (271061810969/2000000000 : ℚ), (-33722390764067/1000000000000 : ℚ), 8⟩,
    ⟨(61809287509/250000000000 : ℚ), (473727405557/10000000000 : ℚ), (-12013388253349/1000000000000 : ℚ), 7⟩,
    ⟨(15590383901/62500000000 : ℚ), (14540196773/625000000 : ℚ), (-3016071100571/500000000000 : ℚ), 6⟩,
    ⟨(50471653153/200000000000 : ℚ), (134437138289/10000000000 : ℚ), (-1785251902473/500000000000 : ℚ), 5⟩,
    ⟨(255945474741/1000000000000 : ℚ), (85353000433/10000000000 : ℚ), (-1162094535899/500000000000 : ℚ), 5⟩,
    ⟨(130086611281/500000000000 : ℚ), (7192634019/1250000000 : ℚ), (-200890606129/125000000000 : ℚ), 4⟩,
    ⟨(53000158741/200000000000 : ℚ), (20191716543/5000000000 : ℚ), (-578488867123/500000000000 : ℚ), 4⟩,
    ⟨(270381696021/1000000000000 : ℚ), (29126198423/10000000000 : ℚ), (-427939853871/500000000000 : ℚ), 4⟩,
    ⟨(138132054239/500000000000 : ℚ), (21386485481/10000000000 : ℚ), (-322250098841/500000000000 : ℚ), 4⟩,
    ⟨(28259138023/100000000000 : ℚ), (15865307483/10000000000 : ℚ), (-30645975323/62500000000 : ℚ), 3⟩,
    ⟨(28930257619/100000000000 : ℚ), (11807107887/10000000000 : ℚ), (-374371205799/1000000000000 : ℚ), 3⟩,
    ⟨(296333063873/1000000000000 : ℚ), (8749170113/10000000000 : ℚ), (-35610652399/125000000000 : ℚ), 3⟩,
    ⟨(1897594599/6250000000 : ℚ), (639600029/1000000000 : ℚ), (-107168228063/500000000000 : ℚ), 3⟩,
    ⟨(62215732351/200000000000 : ℚ), (455225163/1000000000 : ℚ), (-157698645227/1000000000000 : ℚ), 3⟩,
    ⟨(63730352757/200000000000 : ℚ), (1542494021/5000000000 : ℚ), (-111520979283/1000000000000 : ℚ), 3⟩,
    ⟨(163130754409/500000000000 : ℚ), (237687607/1250000000 : ℚ), (-18343575667/250000000000 : ℚ), 3⟩,
    ⟨(10432331589/31250000000 : ℚ), (467885633/5000000000 : ℚ), (-10378014401/250000000000 : ℚ), 3⟩,
    ⟨(341298136763/1000000000000 : ℚ), (139938263/10000000000 : ℚ), (-7327899271/500000000000 : ℚ), 2⟩,
    ⟨(348580208729/1000000000000 : ℚ), (-521231461/10000000000 : ℚ), (8144437401/1000000000000 : ℚ), 2⟩,
    ⟨(88902674103/250000000000 : ℚ), (-1074016869/10000000000 : ℚ), (27603365117/1000000000000 : ℚ), 2⟩,
    ⟨(362321892373/1000000000000 : ℚ), (-1538235859/10000000000 : ℚ), (22132066653/500000000000 : ℚ), 2⟩,
    ⟨(2949193313/8000000000 : ℚ), (-964485089/5000000000 : ℚ), (1463567927/25000000000 : ℚ), 2⟩,
    ⟨(187265788291/500000000000 : ℚ), (-451555809/2000000000 : ℚ), (35379719533/500000000000 : ℚ), 2⟩,
    ⟨(189956239449/500000000000 : ℚ), (-633391439/2500000000 : ℚ), (1623234517/20000000000 : ℚ), 2⟩,
    ⟨(9618501251/25000000000 : ℚ), (-2763204353/10000000000 : ℚ), (89940777481/1000000000000 : ℚ), 2⟩,
    ⟨(388967797861/1000000000000 : ℚ), (-737999359/2500000000 : ℚ), (12155491071/125000000000 : ℚ), 2⟩,
    ⟨(196277503419/500000000000 : ℚ), (-3104012931/10000000000 : ℚ), (51591946597/500000000000 : ℚ), 2⟩,
    ⟨(197733565093/500000000000 : ℚ), (-3222332399/10000000000 : ℚ), (53922852321/500000000000 : ℚ), 2⟩,
    ⟨(397676122567/1000000000000 : ℚ), (-1654616593/5000000000 : ℚ), (111291899347/1000000000000 : ℚ), 2⟩,
    ⟨(12473772193/31250000000 : ℚ), (-673263943/2000000000 : ℚ), (28391579751/250000000000 : ℚ), 2⟩,
    ⟨(199953297811/500000000000 : ℚ), (-3394614301/10000000000 : ℚ), (28674195337/250000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-8495349/25000000 : ℚ), (114837776831/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (5340328859/15625000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control355.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control355.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate355
