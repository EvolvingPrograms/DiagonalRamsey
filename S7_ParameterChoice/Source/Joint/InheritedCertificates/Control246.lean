import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate246
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54929742131/200000000000 : ℚ), (13282651527243/10000000000 : ℚ), (-18280788837171/50000000000 : ℚ), 11⟩,
    ⟨(137746283099/500000000000 : ℚ), (1448851981987/10000000000 : ℚ), (-5052280046843/125000000000 : ℚ), 8⟩,
    ⟨(138586075247/500000000000 : ℚ), (101287483959/2000000000 : ℚ), (-14402317964643/1000000000000 : ℚ), 7⟩,
    ⟨(279671288229/1000000000000 : ℚ), (248737767427/10000000000 : ℚ), (-1808627833063/250000000000 : ℚ), 6⟩,
    ⟨(141482955669/500000000000 : ℚ), (143776315853/10000000000 : ℚ), (-4284619090169/1000000000000 : ℚ), 5⟩,
    ⟨(143512145401/500000000000 : ℚ), (45662492561/5000000000 : ℚ), (-2791194053489/1000000000000 : ℚ), 5⟩,
    ⟨(291807342207/1000000000000 : ℚ), (61612314063/10000000000 : ℚ), (-966023304243/500000000000 : ℚ), 4⟩,
    ⟨(297269002153/1000000000000 : ℚ), (2164396141/500000000 : ℚ), (-139279510421/100000000000 : ℚ), 4⟩,
    ⟨(30335667187/100000000000 : ℚ), (31270098833/10000000000 : ℚ), (-516092290657/500000000000 : ℚ), 4⟩,
    ⟨(31001172377/100000000000 : ℚ), (4602337789/2000000000 : ℚ), (-194777780667/250000000000 : ℚ), 3⟩,
    ⟨(158585033033/500000000000 : ℚ), (8562091477/5000000000 : ℚ), (-18581880721/31250000000 : ℚ), 3⟩,
    ⟨(40595345001/125000000000 : ℚ), (12799965233/10000000000 : ℚ), (-227961141389/500000000000 : ℚ), 3⟩,
    ⟨(166358341901/500000000000 : ℚ), (2386110623/2500000000 : ℚ), (-348967827757/1000000000000 : ℚ), 3⟩,
    ⟨(68191047363/200000000000 : ℚ), (880220663/1250000000 : ℚ), (-132358629961/500000000000 : ℚ), 3⟩,
    ⟨(174699538639/500000000000 : ℚ), (635391063/1250000000 : ℚ), (-98572445923/500000000000 : ℚ), 3⟩,
    ⟨(35796688639/100000000000 : ℚ), (1763216841/5000000000 : ℚ), (-142113033313/1000000000000 : ℚ), 3⟩,
    ⟨(366576151467/1000000000000 : ℚ), (113628849/500000000 : ℚ), (-96708269817/1000000000000 : ℚ), 2⟩,
    ⟨(18757198029/50000000000 : ℚ), (125097859/1000000000 : ℚ), (-29417555493/500000000000 : ℚ), 2⟩,
    ⟨(191793900521/500000000000 : ℚ), (51307859/1250000000 : ℚ), (-26958931489/1000000000000 : ℚ), 2⟩,
    ⟨(78365270811/200000000000 : ℚ), (-28665251/1000000000 : ℚ), (30684753/500000000000 : ℚ), 2⟩,
    ⟨(7995605557/20000000000 : ℚ), (-868482561/10000000000 : ℚ), (4617018989/200000000000 : ℚ), 2⟩,
    ⟨(407372971791/1000000000000 : ℚ), (-84764959/625000000 : ℚ), (21383022701/500000000000 : ℚ), 2⟩,
    ⟨(414531314087/1000000000000 : ℚ), (-1766074903/10000000000 : ℚ), (116417353/1953125000 : ℚ), 2⟩,
    ⟨(421186365987/1000000000000 : ℚ), (-2110377543/10000000000 : ℚ), (73990867841/1000000000000 : ℚ), 2⟩,
    ⟨(53409254463/125000000000 : ℚ), (-599674277/2500000000 : ℚ), (86221054463/1000000000000 : ℚ), 2⟩,
    ⟨(432735695651/1000000000000 : ℚ), (-527682757/2000000000 : ℚ), (96528222683/1000000000000 : ℚ), 2⟩,
    ⟨(87503749411/200000000000 : ℚ), (-2835226429/10000000000 : ℚ), (5254580719/50000000000 : ℚ), 2⟩,
    ⟨(441577126519/1000000000000 : ℚ), (-2993511593/10000000000 : ℚ), (112048747947/1000000000000 : ℚ), 2⟩,
    ⟨(444871749629/1000000000000 : ℚ), (-623317619/2000000000 : ℚ), (117503670887/1000000000000 : ℚ), 2⟩,
    ⟨(447370887363/1000000000000 : ℚ), (-3206911001/10000000000 : ℚ), (121533115319/1000000000000 : ℚ), 2⟩,
    ⟨(449050471659/1000000000000 : ℚ), (-3266211389/10000000000 : ℚ), (7761937911/62500000000 : ℚ), 2⟩,
    ⟨(224947163601/500000000000 : ℚ), (-102987281/312500000 : ℚ), (62755813329/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3299253243/10000000000 : ℚ), (125676318597/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (36006466233/125000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control246.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control246.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate246
