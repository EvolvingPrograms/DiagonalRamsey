import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate312
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74931461557/250000000000 : ℚ), (838376337059/625000000 : ℚ), (-402896047358051/1000000000000 : ℚ), 12⟩,
    ⟨(37574174053/125000000000 : ℚ), (183027490067/1250000000 : ℚ), (-445388348213/10000000000 : ℚ), 8⟩,
    ⟨(302320129871/1000000000000 : ℚ), (512318468207/10000000000 : ℚ), (-7935079920931/500000000000 : ℚ), 7⟩,
    ⟨(304889429143/1000000000000 : ℚ), (25191333893/1000000000 : ℚ), (-1992880202343/250000000000 : ℚ), 6⟩,
    ⟨(61655309297/200000000000 : ℚ), (145788933647/10000000000 : ℚ), (-944181411389/200000000000 : ℚ), 5⟩,
    ⟨(62489772421/200000000000 : ℚ), (46359688571/5000000000 : ℚ), (-768823386877/250000000000 : ℚ), 5⟩,
    ⟨(317366194323/1000000000000 : ℚ), (62632631323/10000000000 : ℚ), (-266081835557/125000000000 : ℚ), 4⟩,
    ⟨(16149059327/50000000000 : ℚ), (4406168843/1000000000 : ℚ), (-306910548173/200000000000 : ℚ), 4⟩,
    ⟨(164619881657/500000000000 : ℚ), (15935739961/5000000000 : ℚ), (-1137329733461/1000000000000 : ℚ), 4⟩,
    ⟨(336081651127/1000000000000 : ℚ), (23487397299/10000000000 : ℚ), (-107328933711/125000000000 : ℚ), 3⟩,
    ⟨(343440958861/1000000000000 : ℚ), (17505483729/10000000000 : ℚ), (-81941357281/125000000000 : ℚ), 3⟩,
    ⟨(175623406179/500000000000 : ℚ), (327719899/250000000 : ℚ), (-502913678383/1000000000000 : ℚ), 3⟩,
    ⟨(359424036983/1000000000000 : ℚ), (391870917/400000000 : ℚ), (-24081016321/62500000000 : ℚ), 3⟩,
    ⟨(45986735199/125000000000 : ℚ), (7249558877/10000000000 : ℚ), (-292715331169/1000000000000 : ℚ), 3⟩,
    ⟨(376574776951/1000000000000 : ℚ), (1313887069/2500000000 : ℚ), (-54632083471/250000000000 : ℚ), 3⟩,
    ⟨(385383121293/1000000000000 : ℚ), (917654443/2500000000 : ℚ), (-158172813287/1000000000000 : ℚ), 3⟩,
    ⟨(394234085447/1000000000000 : ℚ), (37408707/156250000 : ℚ), (-10843507709/100000000000 : ℚ), 3⟩,
    ⟨(40304242979/100000000000 : ℚ), (1354439999/10000000000 : ℚ), (-3350124207/50000000000 : ℚ), 2⟩,
    ⟨(411723325149/1000000000000 : ℚ), (499400417/10000000000 : ℚ), (-16090125413/500000000000 : ℚ), 2⟩,
    ⟨(210096584879/500000000000 : ℚ), (-209344847/10000000000 : ℚ), (-2707127847/1000000000000 : ℚ), 2⟩,
    ⟨(428370394383/1000000000000 : ℚ), (-20011733/250000000 : ℚ), (2236763999/100000000000 : ℚ), 2⟩,
    ⟨(10904406197/25000000000 : ℚ), (-1295633701/10000000000 : ℚ), (1094207781/25000000000 : ℚ), 2⟩,
    ⟨(221767777807/500000000000 : ℚ), (-85567613/500000000 : ℚ), (62051162287/1000000000000 : ℚ), 2⟩,
    ⟨(450377443427/1000000000000 : ℚ), (-257538301/1250000000 : ℚ), (38822997661/500000000000 : ℚ), 2⟩,
    ⟨(2283180101/5000000000 : ℚ), (-1176141501/5000000000 : ℚ), (90886068883/1000000000000 : ℚ), 2⟩,
    ⟨(231125506209/500000000000 : ℚ), (-1297426577/5000000000 : ℚ), (5101499623/50000000000 : ℚ), 2⟩,
    ⟨(93433668927/200000000000 : ℚ), (-1396934193/5000000000 : ℚ), (22255587399/200000000000 : ℚ), 2⟩,
    ⟨(94268132051/200000000000 : ℚ), (-2953825861/10000000000 : ℚ), (2375674843/20000000000 : ℚ), 2⟩,
    ⟨(237363888799/500000000000 : ℚ), (-96191809/312500000 : ℚ), (124663991437/1000000000000 : ℚ), 2⟩,
    ⟨(47729707687/100000000000 : ℚ), (-1584664911/5000000000 : ℚ), (129004785133/1000000000000 : ℚ), 2⟩,
    ⟨(479023814317/1000000000000 : ℚ), (-201823929/625000000 : ℚ), (32966676163/250000000000 : ℚ), 2⟩,
    ⟨(479891360513/1000000000000 : ℚ), (-3258832929/10000000000 : ℚ), (66644148733/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1631263187/5000000000 : ℚ), (66732781399/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (291250659157/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control312.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control312.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate312
