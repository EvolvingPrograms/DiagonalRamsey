import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate750
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(81666068773/200000000000 : ℚ), (13132053027299/10000000000 : ℚ), (-33554970427039/62500000000 : ℚ), 13⟩,
    ⟨(409012110877/1000000000000 : ℚ), (1439899402947/10000000000 : ℚ), (-59306681211177/1000000000000 : ℚ), 10⟩,
    ⟨(51296134889/125000000000 : ℚ), (506839933521/10000000000 : ℚ), (-5275229376981/250000000000 : ℚ), 8⟩,
    ⟨(16495527209/40000000000 : ℚ), (50166071621/2000000000 : ℚ), (-105749221253/10000000000 : ℚ), 7⟩,
    ⟨(25940623073/62500000000 : ℚ), (1141217813/78125000 : ℚ), (-312166550229/50000000000 : ℚ), 7⟩,
    ⟨(209164405729/500000000000 : ℚ), (9343048947/1000000000 : ℚ), (-2025394980879/500000000000 : ℚ), 6⟩,
    ⟨(422193130051/1000000000000 : ℚ), (7926505977/1250000000 : ℚ), (-1394932786239/500000000000 : ℚ), 6⟩,
    ⟨(53325713681/125000000000 : ℚ), (11191262763/2500000000 : ℚ), (-1998870910567/1000000000000 : ℚ), 5⟩,
    ⟨(26970253381/62500000000 : ℚ), (8110427609/2500000000 : ℚ), (-1470364414673/1000000000000 : ℚ), 5⟩,
    ⟨(436900797647/1000000000000 : ℚ), (1494163501/625000000 : ℚ), (-21998462457/20000000000 : ℚ), 5⟩,
    ⟨(442684159123/1000000000000 : ℚ), (8887080361/5000000000 : ℚ), (-830334443113/1000000000000 : ℚ), 5⟩,
    ⟨(448818441591/1000000000000 : ℚ), (13235951199/10000000000 : ℚ), (-314060996913/500000000000 : ℚ), 4⟩,
    ⟨(113811142139/250000000000 : ℚ), (9795103577/10000000000 : ℚ), (-59080156021/125000000000 : ℚ), 4⟩,
    ⟨(57737581613/125000000000 : ℚ), (7132930811/10000000000 : ℚ), (-350602175653/1000000000000 : ℚ), 4⟩,
    ⟨(58590324113/125000000000 : ℚ), (5037689579/10000000000 : ℚ), (-253138056471/1000000000000 : ℚ), 4⟩,
    ⟨(59455586193/125000000000 : ℚ), (3364451989/10000000000 : ℚ), (-10884530851/62500000000 : ℚ), 4⟩,
    ⟨(482600279249/1000000000000 : ℚ), (402297851/2000000000 : ℚ), (-54672605361/500000000000 : ℚ), 4⟩,
    ⟨(489522375889/1000000000000 : ℚ), (452920519/5000000000 : ℚ), (-55615869923/1000000000000 : ℚ), 4⟩,
    ⟨(496344315889/1000000000000 : ℚ), (-2896509/5000000000 : ℚ), (-10687163331/1000000000000 : ℚ), 4⟩,
    ⟨(503000400237/1000000000000 : ℚ), (-152593487/2000000000 : ℚ), (3392542471/125000000000 : ℚ), 3⟩,
    ⟨(509426527203/1000000000000 : ℚ), (-697713903/5000000000 : ℚ), (59151697517/1000000000000 : ℚ), 3⟩,
    ⟨(51556080967/100000000000 : ℚ), (-1925790143/10000000000 : ℚ), (17265823901/200000000000 : ℚ), 3⟩,
    ⟨(260672085573/500000000000 : ℚ), (-94856033/400000000 : ℚ), (109429592297/1000000000000 : ℚ), 3⟩,
    ⟨(526720914697/1000000000000 : ℚ), (-686412749/2500000000 : ℚ), (32259981527/250000000000 : ℚ), 3⟩,
    ⟨(106327851869/200000000000 : ℚ), (-1529460219/5000000000 : ℚ), (18202057751/125000000000 : ℚ), 3⟩,
    ⟨(268025919371/500000000000 : ℚ), (-829816281/2500000000 : ℚ), (79757085639/500000000000 : ℚ), 3⟩,
    ⟨(107983231467/200000000000 : ℚ), (-1766462041/5000000000 : ℚ), (171008273253/1000000000000 : ℚ), 3⟩,
    ⟨(4345559997/8000000000 : ℚ), (-115771763/312500000 : ℚ), (45077617989/250000000000 : ℚ), 3⟩,
    ⟨(68232098571/125000000000 : ℚ), (-3838222861/10000000000 : ℚ), (93790609713/500000000000 : ℚ), 3⟩,
    ⟨(547875889681/1000000000000 : ℚ), (-1968097607/5000000000 : ℚ), (1929389509/10000000000 : ℚ), 3⟩,
    ⟨(137308214479/250000000000 : ℚ), (-1000127363/2500000000 : ℚ), (19646692299/100000000000 : ℚ), 3⟩,
    ⟨(17184832029/31250000000 : ℚ), (-252023313/625000000 : ℚ), (49554514671/250000000000 : ℚ), 3⟩,
    ⟨(11/20 : ℚ), (-4036342351/10000000000 : ℚ), (39687271111/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (93655711977/250000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control750.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control750.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate750
