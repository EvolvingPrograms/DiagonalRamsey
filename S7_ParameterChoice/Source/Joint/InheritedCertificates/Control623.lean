import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate623
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65740859277/250000000000 : ℚ), (13953134091329/10000000000 : ℚ), (-36748761160499/100000000000 : ℚ), 12⟩,
    ⟨(10541066421/40000000000 : ℚ), (1526809103519/10000000000 : ℚ), (-40591880970877/1000000000000 : ℚ), 9⟩,
    ⟨(264647683209/1000000000000 : ℚ), (535845656601/10000000000 : ℚ), (-14440069247899/1000000000000 : ℚ), 8⟩,
    ⟨(2663157091/10000000000 : ℚ), (264253374069/10000000000 : ℚ), (-904347996233/125000000000 : ℚ), 7⟩,
    ⟨(67128668549/250000000000 : ℚ), (76644187523/5000000000 : ℚ), (-4269428566767/1000000000000 : ℚ), 6⟩,
    ⟨(271223401261/1000000000000 : ℚ), (610132673/62500000 : ℚ), (-346017469113/125000000000 : ℚ), 6⟩,
    ⟨(274415803773/1000000000000 : ℚ), (65942602451/10000000000 : ℚ), (-1904438791613/1000000000000 : ℚ), 5⟩,
    ⟨(5561222743/20000000000 : ℚ), (46304984123/10000000000 : ℚ), (-1362306485011/1000000000000 : ℚ), 5⟩,
    ⟨(7053107371/25000000000 : ℚ), (266826751/80000000 : ℚ), (-249938463503/250000000000 : ℚ), 4⟩,
    ⟨(71641536603/250000000000 : ℚ), (4879977171/2000000000 : ℚ), (-931635607/1250000000 : ℚ), 4⟩,
    ⟨(36417989301/125000000000 : ℚ), (224712907/125000000 : ℚ), (-559814249607/1000000000000 : ℚ), 4⟩,
    ⟨(29641158631/100000000000 : ℚ), (13229510709/10000000000 : ℚ), (-420363457827/1000000000000 : ℚ), 4⟩,
    ⟨(75430089417/250000000000 : ℚ), (1926466961/2000000000 : ℚ), (-15641647033/50000000000 : ℚ), 4⟩,
    ⟨(307219102111/1000000000000 : ℚ), (6849352937/10000000000 : ℚ), (-114067417147/500000000000 : ℚ), 4⟩,
    ⟨(78213715931/250000000000 : ℚ), (4657666121/10000000000 : ℚ), (-160210166801/1000000000000 : ℚ), 3⟩,
    ⟨(318573367043/1000000000000 : ℚ), (290507671/1000000000 : ℚ), (-104897322319/1000000000000 : ℚ), 3⟩,
    ⟨(162159769877/500000000000 : ℚ), (742527111/5000000000 : ℚ), (-29632545107/500000000000 : ℚ), 3⟩,
    ⟨(5156844423/15625000000 : ℚ), (321443413/10000000000 : ℚ), (-165659591/7812500000 : ℚ), 3⟩,
    ⟨(67134760937/200000000000 : ℚ), (-128236917/2000000000 : ℚ), (10829723119/1000000000000 : ℚ), 3⟩,
    ⟨(42646568641/125000000000 : ℚ), (-1443795117/10000000000 : ℚ), (37986460423/1000000000000 : ℚ), 3⟩,
    ⟨(173240660243/500000000000 : ℚ), (-846823/4000000 : ℚ), (15282771713/250000000000 : ℚ), 3⟩,
    ⟨(87887248097/250000000000 : ℚ), (-1342090007/5000000000 : ℚ), (2528803311/31250000000 : ℚ), 3⟩,
    ⟨(5567605631/15625000000 : ℚ), (-790719173/2500000000 : ℚ), (97862619949/1000000000000 : ℚ), 3⟩,
    ⟨(360768611957/1000000000000 : ℚ), (-3566755939/10000000000 : ℚ), (112342263909/1000000000000 : ℚ), 3⟩,
    ⟨(182415884823/500000000000 : ℚ), (-3906316291/10000000000 : ℚ), (124660620629/1000000000000 : ℚ), 3⟩,
    ⟨(23029818939/62500000000 : ℚ), (-4189670169/10000000000 : ℚ), (135049342199/1000000000000 : ℚ), 3⟩,
    ⟨(725917003/1953125000 : ℚ), (-2211537883/5000000000 : ℚ), (143686713577/1000000000000 : ℚ), 3⟩,
    ⟨(374378232601/1000000000000 : ℚ), (-4611330947/10000000000 : ℚ), (6028355501/40000000000 : ℚ), 3⟩,
    ⟨(376577197697/1000000000000 : ℚ), (-475806581/1000000000 : ℚ), (19527294793/125000000000 : ℚ), 3⟩,
    ⟨(378245223587/1000000000000 : ℚ), (-4865958911/10000000000 : ℚ), (20036290649/125000000000 : ℚ), 3⟩,
    ⟨(2963798799/7812500000 : ℚ), (-617111783/1250000000 : ℚ), (81488692739/500000000000 : ℚ), 3⟩,
    ⟨(379929469689/1000000000000 : ℚ), (-7955313/16000000 : ℚ), (82156423519/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-155514193/312500000 : ℚ), (16447940651/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (77868295327/200000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control623.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control623.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate623
