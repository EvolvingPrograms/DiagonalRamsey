import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate449
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289773900541/1000000000000 : ℚ), (6735787828623/5000000000 : ℚ), (-24445293467451/62500000000 : ℚ), 12⟩,
    ⟨(290544968051/1000000000000 : ℚ), (367916295277/2500000000 : ℚ), (-10807081894673/250000000000 : ℚ), 9⟩,
    ⟨(292079677271/1000000000000 : ℚ), (515441649179/10000000000 : ℚ), (-3079298600407/200000000000 : ℚ), 7⟩,
    ⟨(18397703007/62500000000 : ℚ), (126852022227/5000000000 : ℚ), (-3864189457123/500000000000 : ℚ), 6⟩,
    ⟨(297373688537/1000000000000 : ℚ), (146952392137/10000000000 : ℚ), (-2286298023521/500000000000 : ℚ), 6⟩,
    ⟨(7527050159/25000000000 : ℚ), (93516280821/10000000000 : ℚ), (-594990087183/200000000000 : ℚ), 5⟩,
    ⟨(305452488453/1000000000000 : ℚ), (31593076713/5000000000 : ℚ), (-2055866237061/1000000000000 : ℚ), 5⟩,
    ⟨(62088608937/200000000000 : ℚ), (8887990937/2000000000 : ℚ), (-92438779529/62500000000 : ℚ), 4⟩,
    ⟨(316005613271/1000000000000 : ℚ), (32116530501/10000000000 : ℚ), (-1093300722559/1000000000000 : ℚ), 4⟩,
    ⟨(161043311817/500000000000 : ℚ), (5906830269/2500000000 : ℚ), (-411320788019/500000000000 : ℚ), 4⟩,
    ⟨(64185061/195312500 : ℚ), (8780094949/5000000000 : ℚ), (-156342578171/250000000000 : ℚ), 3⟩,
    ⟨(83891321749/250000000000 : ℚ), (13093038179/10000000000 : ℚ), (-238553414381/500000000000 : ℚ), 3⟩,
    ⟨(3428331331/10000000000 : ℚ), (607616329/625000000 : ℚ), (-566906527/1562500000 : ℚ), 3⟩,
    ⟨(350361057299/1000000000000 : ℚ), (7124393257/10000000000 : ℚ), (-34104803063/125000000000 : ℚ), 3⟩,
    ⟨(35807656157/100000000000 : ℚ), (1271819409/2500000000 : ℚ), (-25089155183/125000000000 : ℚ), 3⟩,
    ⟨(365905341387/1000000000000 : ℚ), (433135157/1250000000 : ℚ), (-7100778107/50000000000 : ℚ), 3⟩,
    ⟨(186886000661/500000000000 : ℚ), (2156192303/10000000000 : ℚ), (-9362566841/100000000000 : ℚ), 3⟩,
    ⟨(19080039057/50000000000 : ℚ), (68006603/625000000 : ℚ), (-13324653613/250000000000 : ℚ), 3⟩,
    ⟨(38931628541/100000000000 : ℚ), (208144299/10000000000 : ℚ), (-4847340411/250000000000 : ℚ), 3⟩,
    ⟨(39684420961/100000000000 : ℚ), (-522558173/10000000000 : ℚ), (9326115077/1000000000000 : ℚ), 3⟩,
    ⟨(404112055713/1000000000000 : ℚ), (-113305773/1000000000 : ℚ), (16885120489/500000000000 : ℚ), 2⟩,
    ⟨(411049830389/1000000000000 : ℚ), (-164531733/1000000000 : ℚ), (27322685251/500000000000 : ℚ), 2⟩,
    ⟨(104397679769/250000000000 : ℚ), (-519022239/2500000000 : ℚ), (9061324237/125000000000 : ℚ), 2⟩,
    ⟨(423671729439/1000000000000 : ℚ), (-2438239489/10000000000 : ℚ), (43861025833/500000000000 : ℚ), 2⟩,
    ⟨(53654287253/125000000000 : ℚ), (-2741698941/10000000000 : ℚ), (5033101289/50000000000 : ℚ), 2⟩,
    ⟨(27139053391/62500000000 : ℚ), (-1497073711/5000000000 : ℚ), (892481939/8000000000 : ℚ), 2⟩,
    ⟨(438595336349/1000000000000 : ℚ), (-3201518079/10000000000 : ℚ), (24121933157/200000000000 : ℚ), 2⟩,
    ⟨(442303654173/1000000000000 : ℚ), (-3368368003/10000000000 : ℚ), (127958315713/1000000000000 : ℚ), 2⟩,
    ⟨(222657047299/500000000000 : ℚ), (-1749076223/5000000000 : ℚ), (33429535461/250000000000 : ℚ), 2⟩,
    ⟨(223798832719/500000000000 : ℚ), (-359342657/1000000000 : ℚ), (27594332109/200000000000 : ℚ), 2⟩,
    ⟨(224566187329/500000000000 : ℚ), (-3655991289/10000000000 : ℚ), (140776828929/1000000000000 : ℚ), 2⟩,
    ⟨(449903442169/1000000000000 : ℚ), (-368699441/1000000000 : ℚ), (71085236467/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3690856859/10000000000 : ℚ), (142344264479/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (161709637009/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control449.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control449.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate449
