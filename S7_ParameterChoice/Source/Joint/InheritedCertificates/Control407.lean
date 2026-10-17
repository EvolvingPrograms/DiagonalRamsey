import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate407
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(286036952267/1000000000000 : ℚ), (2844807070899/2000000000 : ℚ), (-203812405535771/500000000000 : ℚ), 12⟩,
    ⟨(143388939823/500000000000 : ℚ), (1243378819/8000000 : ℚ), (-9009722421893/200000000000 : ℚ), 9⟩,
    ⟨(288252598869/1000000000000 : ℚ), (136128217761/2500000000 : ℚ), (-3208475934917/200000000000 : ℚ), 7⟩,
    ⟨(4538232931/15625000000 : ℚ), (268086904513/10000000000 : ℚ), (-4025346124467/500000000000 : ℚ), 6⟩,
    ⟨(293339673397/1000000000000 : ℚ), (77658827883/5000000000 : ℚ), (-148804215271/31250000000 : ℚ), 6⟩,
    ⟨(296903037393/1000000000000 : ℚ), (49426243587/5000000000 : ℚ), (-3096658462839/1000000000000 : ℚ), 5⟩,
    ⟨(75275670607/250000000000 : ℚ), (13358343001/2000000000 : ℚ), (-2138772490057/1000000000000 : ℚ), 5⟩,
    ⟨(152949081813/500000000000 : ℚ), (46967820293/10000000000 : ℚ), (-1537562444769/1000000000000 : ℚ), 4⟩,
    ⟨(7781082447/25000000000 : ℚ), (33930058077/10000000000 : ℚ), (-567769758887/500000000000 : ℚ), 4⟩,
    ⟨(158543304313/500000000000 : ℚ), (24944344137/10000000000 : ℚ), (-426714309963/500000000000 : ℚ), 4⟩,
    ⟨(323371821587/1000000000000 : ℚ), (2314871491/1250000000 : ℚ), (-647798629117/1000000000000 : ℚ), 3⟩,
    ⟨(330038406727/1000000000000 : ℚ), (13785396097/10000000000 : ℚ), (-493240773387/1000000000000 : ℚ), 3⟩,
    ⟨(168511080593/500000000000 : ℚ), (2552762659/2500000000 : ℚ), (-374089999229/1000000000000 : ℚ), 3⟩,
    ⟨(344255827591/1000000000000 : ℚ), (7455345873/10000000000 : ℚ), (-140133234357/500000000000 : ℚ), 3⟩,
    ⟨(17583487089/50000000000 : ℚ), (2646375059/5000000000 : ℚ), (-205050051219/1000000000000 : ℚ), 3⟩,
    ⟨(359192503707/1000000000000 : ℚ), (713899947/2000000000 : ℚ), (-143825165543/1000000000000 : ℚ), 3⟩,
    ⟨(183375832531/500000000000 : ℚ), (2178140319/10000000000 : ℚ), (-46670454347/500000000000 : ℚ), 3⟩,
    ⟨(374274426989/1000000000000 : ℚ), (208396457/2000000000 : ℚ), (-51258138913/1000000000000 : ℚ), 3⟩,
    ⟨(190844170589/500000000000 : ℚ), (105298007/10000000000 : ℚ), (-7931502633/500000000000 : ℚ), 3⟩,
    ⟨(388922007583/1000000000000 : ℚ), (-673036663/10000000000 : ℚ), (14119505273/1000000000000 : ℚ), 2⟩,
    ⟨(197952881021/500000000000 : ℚ), (-1323769779/10000000000 : ℚ), (7930006537/200000000000 : ℚ), 2⟩,
    ⟨(201286173591/500000000000 : ℚ), (-1870145739/10000000000 : ℚ), (6145982923/100000000000 : ℚ), 2⟩,
    ⟨(408857560143/1000000000000 : ℚ), (-1164947533/5000000000 : ℚ), (16021995763/200000000000 : ℚ), 2⟩,
    ⟨(414700870889/1000000000000 : ℚ), (-1358318281/5000000000 : ℚ), (19206686211/200000000000 : ℚ), 2⟩,
    ⟨(52505750643/125000000000 : ℚ), (-760220089/2500000000 : ℚ), (109565337103/1000000000000 : ℚ), 2⟩,
    ⟨(424841486341/1000000000000 : ℚ), (-1655377401/5000000000 : ℚ), (120965268477/1000000000000 : ℚ), 2⟩,
    ⟨(429041131377/1000000000000 : ℚ), (-1766269407/5000000000 : ℚ), (130433693729/1000000000000 : ℚ), 2⟩,
    ⟨(432604495373/1000000000000 : ℚ), (-3711054551/10000000000 : ℚ), (138124307343/1000000000000 : ℚ), 2⟩,
    ⟨(217748630593/500000000000 : ℚ), (-60155591/156250000 : ℚ), (1801916137/12500000000 : ℚ), 2⟩,
    ⟨(4376915699/10000000000 : ℚ), (-3951951799/10000000000 : ℚ), (74303119659/500000000000 : ℚ), 2⟩,
    ⟨(439166289123/1000000000000 : ℚ), (-4018941509/10000000000 : ℚ), (151543246941/1000000000000 : ℚ), 2⟩,
    ⟨(219953608251/500000000000 : ℚ), (-202607051/500000000 : ℚ), (153002485581/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-507034659/1250000000 : ℚ), (76592230737/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (308721350179/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control407.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control407.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate407
