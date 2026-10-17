import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate338
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137423359811/500000000000 : ℚ), (2766565292077/2500000000 : ℚ), (-152450317719153/500000000000 : ℚ), 11⟩,
    ⟨(137892934851/500000000000 : ℚ), (1205620452821/10000000000 : ℚ), (-33713765126219/1000000000000 : ℚ), 8⟩,
    ⟨(277655125333/1000000000000 : ℚ), (420742056327/10000000000 : ℚ), (-3004678951173/250000000000 : ℚ), 7⟩,
    ⟨(140218242281/500000000000 : ℚ), (206299599593/10000000000 : ℚ), (-1208275921253/200000000000 : ℚ), 6⟩,
    ⟨(284103161379/1000000000000 : ℚ), (119056344967/10000000000 : ℚ), (-143256909491/40000000000 : ℚ), 5⟩,
    ⟨(144309921841/500000000000 : ℚ), (75520654893/10000000000 : ℚ), (-2336035153663/1000000000000 : ℚ), 5⟩,
    ⟨(293943033351/1000000000000 : ℚ), (50899146947/10000000000 : ℚ), (-1619581474047/1000000000000 : ℚ), 4⟩,
    ⟨(300021465159/1000000000000 : ℚ), (35742601027/10000000000 : ℚ), (-1169894705057/1000000000000 : ℚ), 4⟩,
    ⟨(306796600487/1000000000000 : ℚ), (12911150377/5000000000 : ℚ), (-869180735401/1000000000000 : ℚ), 4⟩,
    ⟨(78550797769/250000000000 : ℚ), (19019768641/10000000000 : ℚ), (-658145449859/1000000000000 : ℚ), 3⟩,
    ⟨(32216990741/100000000000 : ℚ), (1772614037/1250000000 : ℚ), (-252152281981/500000000000 : ℚ), 3⟩,
    ⟨(41327503207/125000000000 : ℚ), (10634970649/10000000000 : ℚ), (-194327024843/500000000000 : ℚ), 3⟩,
    ⟨(339472166557/1000000000000 : ℚ), (1992880309/2500000000 : ℚ), (-7486953429/25000000000 : ℚ), 3⟩,
    ⟨(87160269789/250000000000 : ℚ), (5928725601/10000000000 : ℚ), (-45847781611/200000000000 : ℚ), 3⟩,
    ⟨(89509615453/250000000000 : ℚ), (4333673081/10000000000 : ℚ), (-172911637627/1000000000000 : ℚ), 3⟩,
    ⟨(183786906297/500000000000 : ℚ), (3068829777/10000000000 : ℚ), (-127045891963/1000000000000 : ℚ), 3⟩,
    ⟨(18857765043/50000000000 : ℚ), (1026161773/5000000000 : ℚ), (-8921202877/100000000000 : ℚ), 2⟩,
    ⟨(193345325821/500000000000 : ℚ), (612959289/5000000000 : ℚ), (-57662329863/1000000000000 : ℚ), 2⟩,
    ⟨(198044017149/500000000000 : ℚ), (54744091/1000000000 : ℚ), (-31116638571/1000000000000 : ℚ), 2⟩,
    ⟨(405256946897/1000000000000 : ℚ), (-14127397/10000000000 : ℚ), (-4311411099/500000000000 : ℚ), 2⟩,
    ⟨(207054543899/500000000000 : ℚ), (-481904009/10000000000 : ℚ), (10536381817/1000000000000 : ℚ), 2⟩,
    ⟨(105639801511/250000000000 : ℚ), (-436656883/5000000000 : ℚ), (6726742143/250000000000 : ℚ), 2⟩,
    ⟨(430525922379/1000000000000 : ℚ), (-120161389/1000000000 : ℚ), (5113496849/125000000000 : ℚ), 2⟩,
    ⟨(437932512967/1000000000000 : ℚ), (-147696551/1000000000 : ℚ), (26431455709/500000000000 : ℚ), 2⟩,
    ⟨(88941529659/200000000000 : ℚ), (-21339969/125000000 : ℚ), (31511213567/500000000000 : ℚ), 2⟩,
    ⟨(450786080103/1000000000000 : ℚ), (-949178969/5000000000 : ℚ), (17895220773/250000000000 : ℚ), 2⟩,
    ⟨(114027317443/250000000000 : ℚ), (-2055115909/10000000000 : ℚ), (39344309681/500000000000 : ℚ), 2⟩,
    ⟨(18425038083/40000000000 : ℚ), (-43621137/200000000 : ℚ), (84461111071/1000000000000 : ℚ), 2⟩,
    ⟨(116073157223/250000000000 : ℚ), (-455779929/2000000000 : ℚ), (22246456539/250000000000 : ℚ), 2⟩,
    ⟨(467073988121/1000000000000 : ℚ), (-1175327843/5000000000 : ℚ), (46163668693/500000000000 : ℚ), 2⟩,
    ⟨(468943243753/1000000000000 : ℚ), (-2397743351/10000000000 : ℚ), (94531066761/1000000000000 : ℚ), 2⟩,
    ⟨(469882393833/1000000000000 : ℚ), (-96842683/400000000 : ℚ), (47812955271/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1211986169/5000000000 : ℚ), (95762440801/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (4222043313/12500000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control338.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control338.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate338
