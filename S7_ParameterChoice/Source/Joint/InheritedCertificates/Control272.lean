import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate272
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62257082941/250000000000 : ℚ), (12048312053363/10000000000 : ℚ), (-300750418843803/1000000000000 : ℚ), 11⟩,
    ⟨(7807847217/31250000000 : ℚ), (1313047640489/10000000000 : ℚ), (-2078087088451/62500000000 : ℚ), 8⟩,
    ⟨(251488745489/1000000000000 : ℚ), (91681591987/2000000000 : ℚ), (-2962294352389/250000000000 : ℚ), 7⟩,
    ⟨(50785092817/200000000000 : ℚ), (22483961609/1000000000 : ℚ), (-148825670659/25000000000 : ℚ), 6⟩,
    ⟨(1285688999/5000000000 : ℚ), (129777722839/10000000000 : ℚ), (-1763214981991/500000000000 : ℚ), 5⟩,
    ⟨(261094816083/1000000000000 : ℚ), (20579085831/2500000000 : ℚ), (-2297875636483/1000000000000 : ℚ), 5⟩,
    ⟨(132879202353/500000000000 : ℚ), (554579873/100000000 : ℚ), (-1591047377399/1000000000000 : ℚ), 4⟩,
    ⟨(6777091319/25000000000 : ℚ), (9728066623/2500000000 : ℚ), (-35854424831/31250000000 : ℚ), 4⟩,
    ⟨(55403855039/200000000000 : ℚ), (14036700481/5000000000 : ℚ), (-850565460157/1000000000000 : ℚ), 4⟩,
    ⟨(70877027181/250000000000 : ℚ), (2063364239/1000000000 : ℚ), (-642231215339/1000000000000 : ℚ), 3⟩,
    ⟨(290487662331/1000000000000 : ℚ), (613422177/400000000 : ℚ), (-4902967629/10000000000 : ℚ), 3⟩,
    ⟨(297890719101/1000000000000 : ℚ), (11448160237/10000000000 : ℚ), (-9400432339/25000000000 : ℚ), 3⟩,
    ⟨(305645983549/1000000000000 : ℚ), (2131023233/2500000000 : ℚ), (-287837470791/1000000000000 : ℚ), 3⟩,
    ⟨(313678768239/1000000000000 : ℚ), (6277879327/10000000000 : ℚ), (-218323314569/1000000000000 : ℚ), 3⟩,
    ⟨(40238964133/125000000000 : ℚ), (4520959621/10000000000 : ℚ), (-32504034841/200000000000 : ℚ), 3⟩,
    ⟨(66053106053/200000000000 : ℚ), (3125137663/10000000000 : ℚ), (-23405316659/200000000000 : ℚ), 3⟩,
    ⟨(169329884007/500000000000 : ℚ), (1000550347/5000000000 : ℚ), (-9931033679/125000000000 : ℚ), 2⟩,
    ⟨(69402717043/200000000000 : ℚ), (4239511/39062500 : ℚ), (-1922554759/40000000000 : ℚ), 2⟩,
    ⟨(8881163251/25000000000 : ℚ), (331768987/10000000000 : ℚ), (-2701680699/125000000000 : ℚ), 2⟩,
    ⟨(36327931473/100000000000 : ℚ), (-293373643/10000000000 : ℚ), (839192981/1000000000000 : ℚ), 2⟩,
    ⟨(185517289589/500000000000 : ℚ), (-815326483/10000000000 : ℚ), (624950989/31250000000 : ℚ), 2⟩,
    ⟨(94609408987/250000000000 : ℚ), (-1253087847/10000000000 : ℚ), (36399642087/1000000000000 : ℚ), 2⟩,
    ⟨(77083437911/200000000000 : ℚ), (-1583111/9765625 : ℚ), (12613237697/250000000000 : ℚ), 2⟩,
    ⟨(97976505771/250000000000 : ℚ), (-1930447531/10000000000 : ℚ), (62474307763/1000000000000 : ℚ), 2⟩,
    ⟨(397841645519/1000000000000 : ℚ), (-2189635201/10000000000 : ℚ), (72707905893/1000000000000 : ℚ), 2⟩,
    ⟨(201583446787/500000000000 : ℚ), (-3006559/12500000 : ℚ), (5083912009/62500000000 : ℚ), 2⟩,
    ⟨(101957620549/250000000000 : ℚ), (-322794799/1250000000 : ℚ), (88524025519/1000000000000 : ℚ), 2⟩,
    ⟨(5147343731/12500000000 : ℚ), (-272486279/1000000000 : ℚ), (94363759223/1000000000000 : ℚ), 2⟩,
    ⟨(207499917097/500000000000 : ℚ), (-44307987/156250000 : ℚ), (9894604923/100000000000 : ℚ), 2⟩,
    ⟨(41743655279/100000000000 : ℚ), (-1458542533/5000000000 : ℚ), (102332932799/1000000000000 : ℚ), 2⟩,
    ⟨(83814837467/200000000000 : ℚ), (-2970522019/10000000000 : ℚ), (104567948623/1000000000000 : ℚ), 2⟩,
    ⟨(83979393303/200000000000 : ℚ), (-2997002051/10000000000 : ℚ), (105678746121/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-750075251/2500000000 : ℚ), (105817285147/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (323054190959/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control272.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control272.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate272
