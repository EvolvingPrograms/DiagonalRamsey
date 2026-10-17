import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate260
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(145901868067/500000000000 : ℚ), (5796237075281/5000000000 : ℚ), (-21194339216133/62500000000 : ℚ), 11⟩,
    ⟨(36600706737/125000000000 : ℚ), (1262920584733/10000000000 : ℚ), (-37498768246143/1000000000000 : ℚ), 8⟩,
    ⟨(294799840403/1000000000000 : ℚ), (440739457269/10000000000 : ℚ), (-835615244929/62500000000 : ℚ), 7⟩,
    ⟨(297767090551/1000000000000 : ℚ), (108057956327/5000000000 : ℚ), (-26887939607/4000000000 : ℚ), 6⟩,
    ⟨(301678828097/1000000000000 : ℚ), (124737393191/10000000000 : ℚ), (-39861299977/10000000000 : ℚ), 5⟩,
    ⟨(306497380871/1000000000000 : ℚ), (39571530477/5000000000 : ℚ), (-1300560541263/500000000000 : ℚ), 5⟩,
    ⟨(39022042947/125000000000 : ℚ), (10672227903/2000000000 : ℚ), (-112775093327/62500000000 : ℚ), 4⟩,
    ⟨(63732204939/200000000000 : ℚ), (18746708839/5000000000 : ℚ), (-326097691727/250000000000 : ℚ), 4⟩,
    ⟨(162944486603/500000000000 : ℚ), (27110297813/10000000000 : ℚ), (-194015628237/200000000000 : ℚ), 4⟩,
    ⟨(333790580013/1000000000000 : ℚ), (9996344779/5000000000 : ℚ), (-367757922727/500000000000 : ℚ), 3⟩,
    ⟨(171144874161/500000000000 : ℚ), (7465850131/5000000000 : ℚ), (-564573726279/1000000000000 : ℚ), 3⟩,
    ⟨(175652313249/500000000000 : ℚ), (11224724237/10000000000 : ℚ), (-109028568829/250000000000 : ℚ), 3⟩,
    ⟨(180374198167/500000000000 : ℚ), (8441856779/10000000000 : ℚ), (-13484238657/40000000000 : ℚ), 3⟩,
    ⟨(185265054583/500000000000 : ℚ), (6308831471/10000000000 : ℚ), (-51832777219/200000000000 : ℚ), 3⟩,
    ⟨(1522222247/4000000000 : ℚ), (290283167/625000000 : ℚ), (-98349149681/500000000000 : ℚ), 3⟩,
    ⟨(390728203499/1000000000000 : ℚ), (166292051/500000000 : ℚ), (-72935193401/500000000000 : ℚ), 2⟩,
    ⟨(400950066311/1000000000000 : ℚ), (2267002019/10000000000 : ℚ), (-103976621509/1000000000000 : ℚ), 2⟩,
    ⟨(20556135403/50000000000 : ℚ), (351752351/2500000000 : ℚ), (-34535929639/500000000000 : ℚ), 2⟩,
    ⟨(84229632129/200000000000 : ℚ), (87710111/1250000000 : ℚ), (-9932726889/250000000000 : ℚ), 2⟩,
    ⟨(107732468369/250000000000 : ℚ), (59258707/5000000000 : ℚ), (-1861665231/125000000000 : ℚ), 2⟩,
    ⟨(440373643313/1000000000000 : ℚ), (-366707041/10000000000 : ℚ), (1248040353/200000000000 : ℚ), 2⟩,
    ⟨(28086782593/62500000000 : ℚ), (-4826609/62500000 : ℚ), (6069639261/250000000000 : ℚ), 2⟩,
    ⟨(228943844899/500000000000 : ℚ), (-222406983/2000000000 : ℚ), (1984474533/50000000000 : ℚ), 2⟩,
    ⟨(116447324151/250000000000 : ℚ), (-1396698677/10000000000 : ℚ), (52834535171/1000000000000 : ℚ), 2⟩,
    ⟨(94603449023/200000000000 : ℚ), (-1634465581/10000000000 : ℚ), (6399418111/100000000000 : ℚ), 2⟩,
    ⟨(95900385247/200000000000 : ℚ), (-1831687079/10000000000 : ℚ), (9173284053/125000000000 : ℚ), 2⟩,
    ⟨(485180888939/1000000000000 : ℚ), (-996634861/5000000000 : ℚ), (8117960677/100000000000 : ℚ), 2⟩,
    ⟨(489999441713/1000000000000 : ℚ), (-1061491879/5000000000 : ℚ), (43752037829/500000000000 : ℚ), 2⟩,
    ⟨(24695558963/50000000000 : ℚ), (-222369013/1000000000 : ℚ), (92458249861/1000000000000 : ℚ), 2⟩,
    ⟨(496878429407/1000000000000 : ℚ), (-28718833/125000000 : ℚ), (48057514047/500000000000 : ℚ), 2⟩,
    ⟨(99774523183/200000000000 : ℚ), (-938371/4000000 : ℚ), (4926288433/50000000000 : ℚ), 2⟩,
    ⟨(124968633419/250000000000 : ℚ), (-2369905897/10000000000 : ℚ), (49861592269/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-59322311/250000000 : ℚ), (99872492923/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (303791838897/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control260.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control260.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate260
