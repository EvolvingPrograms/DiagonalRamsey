import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate375
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264217097757/1000000000000 : ℚ), (15302228592477/10000000000 : ℚ), (-202518242684711/500000000000 : ℚ), 12⟩,
    ⟨(264870535523/1000000000000 : ℚ), (418147513857/2500000000 : ℚ), (-8950844320063/200000000000 : ℚ), 9⟩,
    ⟨(66542779523/250000000000 : ℚ), (73274676379/1250000000 : ℚ), (-7965734007509/500000000000 : ℚ), 7⟩,
    ⟨(134053160071/500000000000 : ℚ), (288691588571/10000000000 : ℚ), (-1598057000891/200000000000 : ℚ), 6⟩,
    ⟨(13532875231/50000000000 : ℚ), (16727330243/1000000000 : ℚ), (-2361029961997/500000000000 : ℚ), 6⟩,
    ⟨(136900051113/500000000000 : ℚ), (1663215261/156250000 : ℚ), (-3067423360407/1000000000000 : ℚ), 5⟩,
    ⟨(11100153921/40000000000 : ℚ), (280805497/39062500 : ℚ), (-264435629181/125000000000 : ℚ), 5⟩,
    ⟨(140866536461/500000000000 : ℚ), (10100269699/2000000000 : ℚ), (-379487153897/250000000000 : ℚ), 4⟩,
    ⟨(559466889/1953125000 : ℚ), (455311907/125000000 : ℚ), (-1118322360459/1000000000000 : ℚ), 4⟩,
    ⟨(36450046577/125000000000 : ℚ), (5342808583/2000000000 : ℚ), (-837833513897/1000000000000 : ℚ), 4⟩,
    ⟨(148571709961/500000000000 : ℚ), (9881319757/5000000000 : ℚ), (-633326644263/1000000000000 : ℚ), 3⟩,
    ⟨(303022806513/1000000000000 : ℚ), (14635460811/10000000000 : ℚ), (-47955479747/100000000000 : ℚ), 3⟩,
    ⟨(309181910681/1000000000000 : ℚ), (134486049/125000000 : ℚ), (-360953263111/1000000000000 : ℚ), 3⟩,
    ⟨(157780708443/500000000000 : ℚ), (7765968683/10000000000 : ℚ), (-267507398669/1000000000000 : ℚ), 3⟩,
    ⟨(64419977399/200000000000 : ℚ), (5413670643/10000000000 : ℚ), (-96270607589/500000000000 : ℚ), 3⟩,
    ⟨(10272948499/31250000000 : ℚ), (1768121657/5000000000 : ℚ), (-131470169407/1000000000000 : ℚ), 3⟩,
    ⟨(8385022957/25000000000 : ℚ), (2017830613/10000000000 : ℚ), (-81065974283/1000000000000 : ℚ), 3⟩,
    ⟨(171017691627/500000000000 : ℚ), (775730069/10000000000 : ℚ), (-39006539533/1000000000000 : ℚ), 3⟩,
    ⟨(348573853363/1000000000000 : ℚ), (-50032793/2000000000 : ℚ), (-897824147/250000000000 : ℚ), 3⟩,
    ⟨(22184584973/62500000000 : ℚ), (-220841881/2000000000 : ℚ), (26444101367/1000000000000 : ℚ), 3⟩,
    ⟨(45139057967/125000000000 : ℚ), (-113723207/625000000 : ℚ), (13012873327/250000000000 : ℚ), 2⟩,
    ⟨(366991850327/1000000000000 : ℚ), (-2421317931/10000000000 : ℚ), (73954701967/1000000000000 : ℚ), 2⟩,
    ⟨(372534897633/1000000000000 : ℚ), (-732141567/2500000000 : ℚ), (11588553733/125000000000 : ℚ), 2⟩,
    ⟨(377688223081/1000000000000 : ℚ), (-1677997379/5000000000 : ℚ), (27185020717/250000000000 : ℚ), 2⟩,
    ⟨(382402197327/1000000000000 : ℚ), (-3714925961/10000000000 : ℚ), (122379972139/1000000000000 : ℚ), 2⟩,
    ⟨(24164463889/62500000000 : ℚ), (-4014111629/10000000000 : ℚ), (66941724769/500000000000 : ℚ), 2⟩,
    ⟨(390335168023/1000000000000 : ℚ), (-266269249/625000000 : ℚ), (71723667557/500000000000 : ℚ), 2⟩,
    ⟨(393477765629/1000000000000 : ℚ), (-557337539/1250000000 : ℚ), (75611108817/500000000000 : ℚ), 2⟩,
    ⟨(396028950107/1000000000000 : ℚ), (-36905737/80000000 : ℚ), (31464340143/200000000000 : ℚ), 2⟩,
    ⟨(397964152157/1000000000000 : ℚ), (-1181690361/2500000000 : ℚ), (40457330387/250000000000 : ℚ), 2⟩,
    ⟨(199632367363/500000000000 : ℚ), (-4801378057/10000000000 : ℚ), (32960726613/200000000000 : ℚ), 2⟩,
    ⟨(399918172491/1000000000000 : ℚ), (-967673913/2000000000 : ℚ), (83140890167/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-605372353/1250000000 : ℚ), (83233065917/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (302749107711/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control375.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control375.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate375
