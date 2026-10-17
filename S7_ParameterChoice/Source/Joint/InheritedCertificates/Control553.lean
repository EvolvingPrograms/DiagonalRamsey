import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate553
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18348866273/62500000000 : ℚ), (6847088815613/5000000000 : ℚ), (-402737817135867/1000000000000 : ℚ), 12⟩,
    ⟨(294286478847/1000000000000 : ℚ), (748672428643/5000000000 : ℚ), (-44502760926327/1000000000000 : ℚ), 9⟩,
    ⟨(295688929943/1000000000000 : ℚ), (2050996623/39062500 : ℚ), (-792191520211/50000000000 : ℚ), 7⟩,
    ⟨(297775707287/1000000000000 : ℚ), (258750611979/10000000000 : ℚ), (-7947842348359/1000000000000 : ℚ), 7⟩,
    ⟨(30052671407/100000000000 : ℚ), (75020980997/5000000000 : ℚ), (-939656936717/200000000000 : ℚ), 6⟩,
    ⟨(60783091319/200000000000 : ℚ), (95567524559/10000000000 : ℚ), (-3053172456613/1000000000000 : ℚ), 5⟩,
    ⟨(153954649709/500000000000 : ℚ), (16152250647/2500000000 : ℚ), (-2106791775767/1000000000000 : ℚ), 5⟩,
    ⟨(6249395593/20000000000 : ℚ), (22723661881/5000000000 : ℚ), (-1512825760087/1000000000000 : ℚ), 4⟩,
    ⟨(79388244343/250000000000 : ℚ), (32831436213/10000000000 : ℚ), (-557835968851/500000000000 : ℚ), 4⟩,
    ⟨(323109938613/1000000000000 : ℚ), (2412668547/1000000000 : ℚ), (-167400962741/200000000000 : ℚ), 4⟩,
    ⟨(329087146797/1000000000000 : ℚ), (17895125191/10000000000 : ℚ), (-633913352563/1000000000000 : ℚ), 4⟩,
    ⟨(335427038143/1000000000000 : ℚ), (415599009/312500000 : ℚ), (-481292708873/1000000000000 : ℚ), 4⟩,
    ⟨(34206855603/100000000000 : ℚ), (2456244819/2500000000 : ℚ), (-363664713751/1000000000000 : ℚ), 3⟩,
    ⟨(87236934753/250000000000 : ℚ), (892969591/1250000000 : ℚ), (-271069183779/1000000000000 : ℚ), 3⟩,
    ⟨(177999168397/500000000000 : ℚ), (1007525727/2000000000 : ℚ), (-196865102269/1000000000000 : ℚ), 3⟩,
    ⟨(90788112067/250000000000 : ℚ), (26233909/78125000 : ℚ), (-13649054931/100000000000 : ℚ), 3⟩,
    ⟨(370341175427/1000000000000 : ℚ), (1000360019/5000000000 : ℚ), (-5420734871/62500000000 : ℚ), 3⟩,
    ⟨(3774952869/10000000000 : ℚ), (445848013/5000000000 : ℚ), (-22637847953/500000000000 : ℚ), 3⟩,
    ⟨(384545884683/1000000000000 : ℚ), (-23153717/10000000000 : ℚ), (-10427099779/1000000000000 : ℚ), 3⟩,
    ⟨(78285013533/200000000000 : ℚ), (-783733109/10000000000 : ℚ), (19075673473/1000000000000 : ℚ), 3⟩,
    ⟨(24879161597/62500000000 : ℚ), (-1419905823/10000000000 : ℚ), (8836711699/200000000000 : ℚ), 3⟩,
    ⟨(202203238449/500000000000 : ℚ), (-30535427/156250000 : ℚ), (65620695327/1000000000000 : ℚ), 3⟩,
    ⟨(205191842541/500000000000 : ℚ), (-2404066251/10000000000 : ℚ), (83942900327/1000000000000 : ℚ), 3⟩,
    ⟨(207970323161/500000000000 : ℚ), (-2782559337/10000000000 : ℚ), (49789585559/500000000000 : ℚ), 3⟩,
    ⟨(84204768809/200000000000 : ℚ), (-387497711/1250000000 : ℚ), (7053853047/62500000000 : ℚ), 3⟩,
    ⟨(425584324277/1000000000000 : ℚ), (-1682125371/5000000000 : ℚ), (6202378693/50000000000 : ℚ), 3⟩,
    ⟨(4295781671/10000000000 : ℚ), (-3581482601/10000000000 : ℚ), (133335582931/1000000000000 : ℚ), 2⟩,
    ⟨(3463735277/8000000000 : ℚ), (-187818679/500000000 : ℚ), (14087791723/100000000000 : ℚ), 2⟩,
    ⟨(54464739551/125000000000 : ℚ), (-3892482923/10000000000 : ℚ), (29357921441/200000000000 : ℚ), 2⟩,
    ⟨(54725586719/125000000000 : ℚ), (-3992441287/10000000000 : ℚ), (30231070773/200000000000 : ℚ), 2⟩,
    ⟨(27450446553/62500000000 : ℚ), (-2029050891/5000000000 : ℚ), (154034591467/1000000000000 : ℚ), 2⟩,
    ⟨(439911763327/1000000000000 : ℚ), (-163625797/400000000 : ℚ), (15546505439/100000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2047349757/5000000000 : ℚ), (31128687681/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (172806973371/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control553.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control553.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate553
