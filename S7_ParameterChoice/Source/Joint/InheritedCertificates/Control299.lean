import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate299
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11749242047/40000000000 : ℚ), (71776090487/62500000 : ℚ), (-338147576390053/1000000000000 : ℚ), 11⟩,
    ⟨(294723693981/1000000000000 : ℚ), (10010995827/80000000 : ℚ), (-1869578347729/50000000000 : ℚ), 8⟩,
    ⟨(2966994199/10000000000 : ℚ), (87365877381/2000000000 : ℚ), (-6665505488809/500000000000 : ℚ), 7⟩,
    ⟨(299639201611/1000000000000 : ℚ), (42852534471/2000000000 : ℚ), (-1675495998271/250000000000 : ℚ), 6⟩,
    ⟨(303514727409/1000000000000 : ℚ), (61852286539/5000000000 : ℚ), (-3973874977831/1000000000000 : ℚ), 5⟩,
    ⟨(308288673863/1000000000000 : ℚ), (7850949759/1000000000 : ℚ), (-2592783805597/1000000000000 : ℚ), 5⟩,
    ⟨(156957532629/500000000000 : ℚ), (26473338127/5000000000 : ℚ), (-71932611347/40000000000 : ℚ), 4⟩,
    ⟨(320339716369/1000000000000 : ℚ), (18604613853/5000000000 : ℚ), (-1299715832709/1000000000000 : ℚ), 4⟩,
    ⟨(163750377147/500000000000 : ℚ), (3363516999/1250000000 : ℚ), (-9663465159/10000000000 : ℚ), 4⟩,
    ⟨(83832303581/250000000000 : ℚ), (3968892361/2000000000 : ℚ), (-36622346121/50000000000 : ℚ), 3⟩,
    ⟨(343749704109/1000000000000 : ℚ), (14820170407/10000000000 : ℚ), (-14049740983/25000000000 : ℚ), 3⟩,
    ⟨(352681129729/1000000000000 : ℚ), (5569440949/5000000000 : ℚ), (-433897275347/1000000000000 : ℚ), 3⟩,
    ⟨(5656835573/15625000000 : ℚ), (8374438481/10000000000 : ℚ), (-335175309891/1000000000000 : ℚ), 3⟩,
    ⟨(92932159551/250000000000 : ℚ), (1563729243/2500000000 : ℚ), (-16091408431/62500000000 : ℚ), 3⟩,
    ⟨(381661283141/1000000000000 : ℚ), (4600710989/10000000000 : ℚ), (-39036976367/200000000000 : ℚ), 3⟩,
    ⟨(195869877341/500000000000 : ℚ), (411213323/1250000000 : ℚ), (-144514137247/1000000000000 : ℚ), 3⟩,
    ⟨(401866991637/1000000000000 : ℚ), (2236817999/10000000000 : ℚ), (-102754086967/1000000000000 : ℚ), 2⟩,
    ⟨(205972731589/500000000000 : ℚ), (1381504489/10000000000 : ℚ), (-67964696891/1000000000000 : ℚ), 2⟩,
    ⟨(210939054057/500000000000 : ℚ), (679906993/10000000000 : ℚ), (-1936219031/50000000000 : ℚ), 2⟩,
    ⟨(215784634823/500000000000 : ℚ), (4987743/500000000 : ℚ), (-2795051183/200000000000 : ℚ), 2⟩,
    ⟨(44092561659/100000000000 : ℚ), (-76602909/2000000000 : ℚ), (1770037741/250000000000 : ℚ), 2⟩,
    ⟨(44985704221/100000000000 : ℚ), (-393273967/5000000000 : ℚ), (25049419923/1000000000000 : ℚ), 2⟩,
    ⟨(229138765997/500000000000 : ℚ), (-112465987/1000000000 : ℚ), (40399348697/1000000000000 : ℚ), 2⟩,
    ⟨(58263249003/125000000000 : ℚ), (-1407945467/10000000000 : ℚ), (6686347311/125000000000 : ℚ), 2⟩,
    ⟨(9465340599/20000000000 : ℚ), (-822286801/5000000000 : ℚ), (4037730633/62500000000 : ℚ), 2⟩,
    ⟨(479691681061/1000000000000 : ℚ), (-92042973/500000000 : ℚ), (9244443213/125000000000 : ℚ), 2⟩,
    ⟨(60664759057/125000000000 : ℚ), (-2001681977/10000000000 : ℚ), (5107178233/62500000000 : ℚ), 2⟩,
    ⟨(49009201891/100000000000 : ℚ), (-85231613/400000000 : ℚ), (11001409357/125000000000 : ℚ), 2⟩,
    ⟨(123491886177/250000000000 : ℚ), (-44620589/200000000 : ℚ), (5808950683/62500000000 : ℚ), 2⟩,
    ⟨(496907326419/1000000000000 : ℚ), (-288063157/1250000000 : ℚ), (96583424897/1000000000000 : ℚ), 2⟩,
    ⟨(249441526169/500000000000 : ℚ), (-2352703493/10000000000 : ℚ), (98983176627/1000000000000 : ℚ), 2⟩,
    ⟨(499875695143/1000000000000 : ℚ), (-2376571909/10000000000 : ℚ), (50087557087/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2379544767/10000000000 : ℚ), (100323738601/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (313519180677/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control299.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control299.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate299
