import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate285
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46712257803/200000000000 : ℚ), (13196302707787/10000000000 : ℚ), (-61776986853807/200000000000 : ℚ), 12⟩,
    ⟨(234266006491/1000000000000 : ℚ), (1439554995777/10000000000 : ℚ), (-6828071470923/200000000000 : ℚ), 8⟩,
    ⟨(58917163657/250000000000 : ℚ), (503197608853/10000000000 : ℚ), (-6080312268989/500000000000 : ℚ), 7⟩,
    ⟨(118877862579/500000000000 : ℚ), (123558186891/5000000000 : ℚ), (-3052385161369/500000000000 : ℚ), 6⟩,
    ⟨(4810142369/20000000000 : ℚ), (7139557353/500000000 : ℚ), (-3612406847969/1000000000000 : ℚ), 5⟩,
    ⟨(60974084271/250000000000 : ℚ), (362567539/40000000 : ℚ), (-2350514751539/1000000000000 : ℚ), 5⟩,
    ⟨(30986342629/125000000000 : ℚ), (3818025983/625000000 : ℚ), (-1624465029027/1000000000000 : ℚ), 4⟩,
    ⟨(126225930999/500000000000 : ℚ), (42852747739/10000000000 : ℚ), (-584326310723/500000000000 : ℚ), 4⟩,
    ⟨(32191971737/125000000000 : ℚ), (3860663069/1250000000 : ℚ), (-86373946979/100000000000 : ℚ), 4⟩,
    ⟨(2104748127/8000000000 : ℚ), (11327447447/5000000000 : ℚ), (-324827538539/500000000000 : ℚ), 3⟩,
    ⟨(269071563841/1000000000000 : ℚ), (4195407263/2500000000 : ℚ), (-493490625047/1000000000000 : ℚ), 3⟩,
    ⟨(68853086481/250000000000 : ℚ), (12462861259/10000000000 : ℚ), (-187997283521/500000000000 : ℚ), 3⟩,
    ⟨(282054796927/1000000000000 : ℚ), (2301754833/2500000000 : ℚ), (-285299442971/1000000000000 : ℚ), 3⟩,
    ⟨(57786989283/200000000000 : ℚ), (6700174231/10000000000 : ℚ), (-213770715313/1000000000000 : ℚ), 3⟩,
    ⟨(73996633697/250000000000 : ℚ), (47347903/100000000 : ℚ), (-15632031613/100000000000 : ℚ), 3⟩,
    ⟨(151570825697/500000000000 : ℚ), (633927797/2000000000 : ℚ), (-109455462311/1000000000000 : ℚ), 3⟩,
    ⟨(6206627771/20000000000 : ℚ), (1906233013/10000000000 : ℚ), (-17679478781/250000000000 : ℚ), 3⟩,
    ⟨(317486505157/1000000000000 : ℚ), (437222119/5000000000 : ℚ), (-9585167851/250000000000 : ℚ), 2⟩,
    ⟨(32453809353/100000000000 : ℚ), (23438611/10000000000 : ℚ), (-2757693387/250000000000 : ℚ), 2⟩,
    ⟨(165709121509/500000000000 : ℚ), (-684199857/10000000000 : ℚ), (2434418739/200000000000 : ℚ), 2⟩,
    ⟨(338060694021/1000000000000 : ℚ), (-1276372593/10000000000 : ℚ), (31990033627/1000000000000 : ℚ), 2⟩,
    ⟨(43050184513/125000000000 : ℚ), (-887058097/5000000000 : ℚ), (24485723143/500000000000 : ℚ), 2⟩,
    ⟨(350379524069/1000000000000 : ℚ), (-2193435737/10000000000 : ℚ), (63536006147/1000000000000 : ℚ), 2⟩,
    ⟨(2780759891/7812500000 : ℚ), (-1273297379/5000000000 : ℚ), (7600660571/100000000000 : ℚ), 2⟩,
    ⟨(180510588973/500000000000 : ℚ), (-2843036403/10000000000 : ℚ), (21658105293/250000000000 : ℚ), 2⟩,
    ⟨(365582298913/1000000000000 : ℚ), (-618009909/2000000000 : ℚ), (9560581247/100000000000 : ℚ), 2⟩,
    ⟨(18478835143/50000000000 : ℚ), (-823313841/2500000000 : ℚ), (51537427947/500000000000 : ℚ), 2⟩,
    ⟨(186482960747/500000000000 : ℚ), (-864241307/2500000000 : ℚ), (109152717887/1000000000000 : ℚ), 2⟩,
    ⟨(375717314787/1000000000000 : ℚ), (-3584444503/10000000000 : ℚ), (113924690431/1000000000000 : ℚ), 2⟩,
    ⟨(377804385317/1000000000000 : ℚ), (-114940813/312500000 : ℚ), (58726722661/500000000000 : ℚ), 2⟩,
    ⟨(189603516727/500000000000 : ℚ), (-747929891/2000000000 : ℚ), (374321521/3125000000 : ℚ), 2⟩,
    ⟨(37991175093/100000000000 : ℚ), (-11781743/31250000 : ℚ), (120940856479/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3773959091/10000000000 : ℚ), (121085290263/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (32228420807/100000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control285.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control285.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate285
