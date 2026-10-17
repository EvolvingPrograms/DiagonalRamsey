import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate251
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(259656105693/1000000000000 : ℚ), (13734033946309/10000000000 : ℚ), (-357378033386263/1000000000000 : ℚ), 11⟩,
    ⟨(65106935019/250000000000 : ℚ), (37464038383/250000000 : ℚ), (-1975139154843/50000000000 : ℚ), 8⟩,
    ⟨(130981788791/500000000000 : ℚ), (20960514557/400000000 : ℚ), (-7036308666153/500000000000 : ℚ), 7⟩,
    ⟨(33031103407/125000000000 : ℚ), (128729785743/5000000000 : ℚ), (-706615963073/100000000000 : ℚ), 6⟩,
    ⟨(267261480893/1000000000000 : ℚ), (148854222867/10000000000 : ℚ), (-418262964299/100000000000 : ℚ), 5⟩,
    ⟨(270972524993/1000000000000 : ℚ), (94557886939/10000000000 : ℚ), (-2722758872501/1000000000000 : ℚ), 5⟩,
    ⟨(275346220173/1000000000000 : ℚ), (63783554217/10000000000 : ℚ), (-1882871242363/1000000000000 : ℚ), 4⟩,
    ⟨(70085111339/250000000000 : ℚ), (11198130723/2500000000 : ℚ), (-677832329389/500000000000 : ℚ), 4⟩,
    ⟨(11436284137/40000000000 : ℚ), (32328598749/10000000000 : ℚ), (-1003065558481/1000000000000 : ℚ), 4⟩,
    ⟨(145996292209/500000000000 : ℚ), (11878398097/5000000000 : ℚ), (-188892973831/250000000000 : ℚ), 3⟩,
    ⟨(74634570457/250000000000 : ℚ), (17640484329/10000000000 : ℚ), (-575107129271/1000000000000 : ℚ), 3⟩,
    ⟨(30548115701/100000000000 : ℚ), (105151169/80000000 : ℚ), (-439395834849/1000000000000 : ℚ), 3⟩,
    ⟨(312754346281/1000000000000 : ℚ), (4877542753/5000000000 : ℚ), (-167352860701/500000000000 : ℚ), 3⟩,
    ⟨(320287804851/1000000000000 : ℚ), (7147042329/10000000000 : ℚ), (-126100890957/500000000000 : ℚ), 3⟩,
    ⟨(328008981397/1000000000000 : ℚ), (40828219/80000000 : ℚ), (-185995091333/1000000000000 : ℚ), 3⟩,
    ⟨(335843516769/1000000000000 : ℚ), (3477344147/10000000000 : ℚ), (-8252643729/62500000000 : ℚ), 3⟩,
    ⟨(171857980053/500000000000 : ℚ), (541451649/2500000000 : ℚ), (-87496868311/1000000000000 : ℚ), 2⟩,
    ⟨(351550495477/1000000000000 : ℚ), (1095766239/10000000000 : ℚ), (-6288984319/125000000000 : ℚ), 2⟩,
    ⟨(44908959003/125000000000 : ℚ), (26771773/1250000000 : ℚ), (-18988741867/1000000000000 : ℚ), 2⟩,
    ⟨(183402565297/500000000000 : ℚ), (-259018559/5000000000 : ℚ), (474146251/62500000000 : ℚ), 2⟩,
    ⟨(74815663973/200000000000 : ℚ), (-282504643/2500000000 : ℚ), (30251640001/1000000000000 : ℚ), 2⟩,
    ⟨(381021195047/1000000000000 : ℚ), (-1643763813/10000000000 : ℚ), (24822242883/500000000000 : ℚ), 2⟩,
    ⟨(48445861557/125000000000 : ℚ), (-259502313/1250000000 : ℚ), (66253260341/1000000000000 : ℚ), 2⟩,
    ⟨(7873047469/20000000000 : ℚ), (-609905969/2500000000 : ℚ), (3218172577/40000000000 : ℚ), 2⟩,
    ⟨(199609515759/500000000000 : ℚ), (-1372238097/5000000000 : ℚ), (23134651213/250000000000 : ℚ), 2⟩,
    ⟨(202106628351/500000000000 : ℚ), (-1499110317/5000000000 : ℚ), (102731198847/1000000000000 : ℚ), 2⟩,
    ⟨(408586951881/1000000000000 : ℚ), (-200422387/625000000 : ℚ), (111205726669/1000000000000 : ℚ), 2⟩,
    ⟨(206148997991/500000000000 : ℚ), (-3374618581/10000000000 : ℚ), (7380948987/62500000000 : ℚ), 2⟩,
    ⟨(415310649619/1000000000000 : ℚ), (-876308789/2500000000 : ℚ), (30875007911/250000000000 : ℚ), 2⟩,
    ⟨(417595899293/1000000000000 : ℚ), (-1800573291/5000000000 : ℚ), (127494243881/1000000000000 : ℚ), 2⟩,
    ⟨(209565868399/500000000000 : ℚ), (-1832071093/5000000000 : ℚ), (65064868639/500000000000 : ℚ), 2⟩,
    ⟨(209951685591/500000000000 : ℚ), (-57740039/156250000 : ℚ), (65719741143/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1849626087/5000000000 : ℚ), (3290070749/25000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (292688756293/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control251.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control251.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate251
