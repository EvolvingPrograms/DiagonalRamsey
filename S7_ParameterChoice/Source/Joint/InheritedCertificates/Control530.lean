import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate530
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(256059657457/1000000000000 : ℚ), (1453832721687/1000000000 : ℚ), (-372897298987919/1000000000000 : ℚ), 12⟩,
    ⟨(256656104427/1000000000000 : ℚ), (1589824952417/10000000000 : ℚ), (-8239250235403/200000000000 : ℚ), 9⟩,
    ⟨(51568650851/200000000000 : ℚ), (557504732201/10000000000 : ℚ), (-14659995897091/1000000000000 : ℚ), 7⟩,
    ⟨(6490241851/25000000000 : ℚ), (54941329727/2000000000 : ℚ), (-918596069251/125000000000 : ℚ), 7⟩,
    ⟨(130969176097/500000000000 : ℚ), (159234827279/10000000000 : ℚ), (-4339788035897/1000000000000 : ℚ), 6⟩,
    ⟨(264806862273/1000000000000 : ℚ), (50675547341/5000000000 : ℚ), (-352048250303/125000000000 : ℚ), 5⟩,
    ⟨(134093789479/500000000000 : ℚ), (17110088311/2500000000 : ℚ), (-1939934284779/1000000000000 : ℚ), 5⟩,
    ⟨(272047944097/1000000000000 : ℚ), (48059083263/10000000000 : ℚ), (-694884014139/500000000000 : ℚ), 5⟩,
    ⟨(138175390133/500000000000 : ℚ), (34631195317/10000000000 : ℚ), (-1021810988159/1000000000000 : ℚ), 4⟩,
    ⟨(281054648799/1000000000000 : ℚ), (5071741523/2000000000 : ℚ), (-76354029831/100000000000 : ℚ), 4⟩,
    ⟨(286114248871/1000000000000 : ℚ), (9357194223/5000000000 : ℚ), (-143806171321/250000000000 : ℚ), 4⟩,
    ⟨(291480853767/1000000000000 : ℚ), (13808556413/10000000000 : ℚ), (-2168102239/5000000000 : ℚ), 4⟩,
    ⟨(297102780149/1000000000000 : ℚ), (10095366781/10000000000 : ℚ), (-324397810881/1000000000000 : ℚ), 3⟩,
    ⟨(9466433931/31250000000 : ℚ), (7225507861/10000000000 : ℚ), (-59584144451/250000000000 : ℚ), 3⟩,
    ⟨(61778818201/200000000000 : ℚ), (4967504953/10000000000 : ℚ), (-84645092287/500000000000 : ℚ), 3⟩,
    ⟨(314949918711/1000000000000 : ℚ), (3163420809/10000000000 : ℚ), (-14129685201/125000000000 : ℚ), 3⟩,
    ⟨(321035047977/1000000000000 : ℚ), (1702796933/10000000000 : ℚ), (-66605920707/1000000000000 : ℚ), 3⟩,
    ⟨(327090875683/1000000000000 : ℚ), (7917789/156250000 : ℚ), (-696431381/25000000000 : ℚ), 3⟩,
    ⟨(5204048139/15625000000 : ℚ), (-120531431/2500000000 : ℚ), (2387249659/500000000000 : ℚ), 3⟩,
    ⟨(338882186539/1000000000000 : ℚ), (-261231701/2000000000 : ℚ), (32453620101/1000000000000 : ℚ), 3⟩,
    ⟨(344504112921/1000000000000 : ℚ), (-1997048159/10000000000 : ℚ), (2802827051/50000000000 : ℚ), 3⟩,
    ⟨(349870717817/1000000000000 : ℚ), (-161172219/625000000 : ℚ), (76249617653/1000000000000 : ℚ), 3⟩,
    ⟨(354930317889/1000000000000 : ℚ), (-1534778587/5000000000 : ℚ), (18708668331/200000000000 : ℚ), 3⟩,
    ⟨(179817093211/500000000000 : ℚ), (-3483487137/10000000000 : ℚ), (27082712493/250000000000 : ℚ), 3⟩,
    ⟨(363937022591/1000000000000 : ℚ), (-1915684679/5000000000 : ℚ), (60457873877/500000000000 : ℚ), 3⟩,
    ⟨(367797387731/1000000000000 : ℚ), (-4121567399/10000000000 : ℚ), (2055195573/15625000000 : ℚ), 3⟩,
    ⟨(74235620883/200000000000 : ℚ), (-174421377/400000000 : ℚ), (28072335509/200000000000 : ℚ), 3⟩,
    ⟨(187023307247/500000000000 : ℚ), (-2276609879/5000000000 : ℚ), (73770580021/500000000000 : ℚ), 2⟩,
    ⟨(47046911581/125000000000 : ℚ), (-1175842549/2500000000 : ℚ), (76587431961/500000000000 : ℚ), 2⟩,
    ⟨(378141712433/1000000000000 : ℚ), (-4813752209/10000000000 : ℚ), (157339075893/1000000000000 : ℚ), 2⟩,
    ⟨(379328862261/1000000000000 : ℚ), (-2443156457/5000000000 : ℚ), (160087193173/1000000000000 : ℚ), 2⟩,
    ⟨(379925309231/1000000000000 : ℚ), (-2461145957/5000000000 : ℚ), (161453051911/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-153961729/312500000 : ℚ), (10101462807/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (35130305803/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control530.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control530.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate530
