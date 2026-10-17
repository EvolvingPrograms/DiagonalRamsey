import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate328
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27392132097/125000000000 : ℚ), (540409233043/400000000 : ℚ), (-296672863009913/1000000000000 : ℚ), 12⟩,
    ⟨(219766817871/1000000000000 : ℚ), (737241381543/5000000000 : ℚ), (-32785538711823/1000000000000 : ℚ), 8⟩,
    ⟨(110510137559/500000000000 : ℚ), (103140144863/2000000000 : ℚ), (-182412028653/15625000000 : ℚ), 7⟩,
    ⟨(111442678519/500000000000 : ℚ), (253393813239/10000000000 : ℚ), (-1171558760131/200000000000 : ℚ), 6⟩,
    ⟨(225344101873/1000000000000 : ℚ), (146480017423/10000000000 : ℚ), (-692775414677/200000000000 : ℚ), 5⟩,
    ⟨(114186415283/500000000000 : ℚ), (23250945999/2500000000 : ℚ), (-562949145541/250000000000 : ℚ), 5⟩,
    ⟨(231942374803/1000000000000 : ℚ), (7834491759/1250000000 : ℚ), (-777187170471/500000000000 : ℚ), 4⟩,
    ⟨(236018357923/1000000000000 : ℚ), (21973272281/5000000000 : ℚ), (-558251160369/500000000000 : ℚ), 4⟩,
    ⟨(240561525981/1000000000000 : ℚ), (31643402829/10000000000 : ℚ), (-82355935551/100000000000 : ℚ), 4⟩,
    ⟨(245528125783/1000000000000 : ℚ), (23173309149/10000000000 : ℚ), (-24713987371/40000000000 : ℚ), 4⟩,
    ⟨(250870326259/1000000000000 : ℚ), (428055547/250000000 : ℚ), (-467765800089/1000000000000 : ℚ), 3⟩,
    ⟨(128268339549/500000000000 : ℚ), (12667392109/10000000000 : ℚ), (-177408850303/500000000000 : ℚ), 3⟩,
    ⟨(10498904569/40000000000 : ℚ), (2326191857/2500000000 : ℚ), (-267607612097/1000000000000 : ℚ), 3⟩,
    ⟨(268620965339/1000000000000 : ℚ), (6712327233/10000000000 : ℚ), (-12425210519/62500000000 : ℚ), 3⟩,
    ⟨(137461260229/500000000000 : ℚ), (4677098259/10000000000 : ℚ), (-4484957013/31250000000 : ℚ), 3⟩,
    ⟨(140658296081/500000000000 : ℚ), (305408743/1000000000 : ℚ), (-9839928507/100000000000 : ℚ), 3⟩,
    ⟨(71935400511/250000000000 : ℚ), (871068023/5000000000 : ℚ), (-30542473437/500000000000 : ℚ), 3⟩,
    ⟨(73533918437/250000000000 : ℚ), (669181167/10000000000 : ℚ), (-1195167061/40000000000 : ℚ), 3⟩,
    ⟨(300437228867/1000000000000 : ℚ), (-108518021/5000000000 : ℚ), (-1770459143/500000000000 : ℚ), 2⟩,
    ⟨(306585579981/1000000000000 : ℚ), (-954994827/10000000000 : ℚ), (18851313033/1000000000000 : ℚ), 2⟩,
    ⟨(78130378777/250000000000 : ℚ), (-786699147/5000000000 : ℚ), (37990129979/1000000000000 : ℚ), 2⟩,
    ⟨(318187867947/1000000000000 : ℚ), (-2093892097/10000000000 : ℚ), (10880247739/200000000000 : ℚ), 2⟩,
    ⟨(323530068423/1000000000000 : ℚ), (-2532946391/10000000000 : ℚ), (68486653083/1000000000000 : ℚ), 2⟩,
    ⟨(13139866729/40000000000 : ℚ), (-2903180821/10000000000 : ℚ), (40277698061/500000000000 : ℚ), 2⟩,
    ⟨(333039836283/1000000000000 : ℚ), (-3214311319/10000000000 : ℚ), (11355709843/125000000000 : ℚ), 2⟩,
    ⟨(337115819403/1000000000000 : ℚ), (-1736917653/5000000000 : ℚ), (99541160843/1000000000000 : ℚ), 2⟩,
    ⟨(8517134091/25000000000 : ℚ), (-3687532629/10000000000 : ℚ), (106783018609/1000000000000 : ℚ), 2⟩,
    ⟨(343714092333/1000000000000 : ℚ), (-1929917171/5000000000 : ℚ), (112678979001/1000000000000 : ℚ), 2⟩,
    ⟨(21635802323/62500000000 : ℚ), (-62407731/156250000 : ℚ), (117310105919/1000000000000 : ℚ), 2⟩,
    ⟨(21752369943/62500000000 : ℚ), (-4092791287/10000000000 : ℚ), (24147174729/200000000000 : ℚ), 2⟩,
    ⟨(69858275267/200000000000 : ℚ), (-4157668187/10000000000 : ℚ), (61498944917/500000000000 : ℚ), 2⟩,
    ⟨(34992113743/100000000000 : ℚ), (-2094918233/5000000000 : ℚ), (62061255761/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4193844983/10000000000 : ℚ), (124262793833/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (84613372199/250000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control328.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control328.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate328
