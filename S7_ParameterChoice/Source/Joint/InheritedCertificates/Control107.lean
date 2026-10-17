import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate107
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(201594672037/1000000000000 : ℚ), (3202513942077/5000000000 : ℚ), (-129753943244099/1000000000000 : ℚ), 10⟩,
    ⟨(101515354663/500000000000 : ℚ), (344212435971/5000000000 : ℚ), (-897459955427/62500000000 : ℚ), 7⟩,
    ⟨(205888954079/1000000000000 : ℚ), (29484030419/1250000000 : ℚ), (-5127831170787/1000000000000 : ℚ), 6⟩,
    ⟨(105070939919/500000000000 : ℚ), (56663144723/5000000000 : ℚ), (-1292244229397/500000000000 : ℚ), 5⟩,
    ⟨(215748528601/1000000000000 : ℚ), (32033745659/5000000000 : ℚ), (-1537869762137/1000000000000 : ℚ), 4⟩,
    ⟨(222654905277/1000000000000 : ℚ), (3984659403/1000000000 : ℚ), (-1008077075757/1000000000000 : ℚ), 4⟩,
    ⟨(230794497683/1000000000000 : ℚ), (26378639017/10000000000 : ℚ), (-140669563361/200000000000 : ℚ), 3⟩,
    ⟨(48017783419/200000000000 : ℚ), (18240583157/10000000000 : ℚ), (-64014216487/125000000000 : ℚ), 3⟩,
    ⟨(62612163293/250000000000 : ℚ), (6508795747/5000000000 : ℚ), (-384241879909/1000000000000 : ℚ), 3⟩,
    ⟨(261773935993/1000000000000 : ℚ), (950746171/1000000000 : ℚ), (-294494722601/1000000000000 : ℚ), 3⟩,
    ⟨(136977848447/500000000000 : ℚ), (3530151233/5000000000 : ℚ), (-114522763189/500000000000 : ℚ), 2⟩,
    ⟨(286876618857/1000000000000 : ℚ), (2650939019/5000000000 : ℚ), (-89903118001/500000000000 : ℚ), 2⟩,
    ⟨(300412266341/1000000000000 : ℚ), (4005663021/10000000000 : ℚ), (-141792334681/1000000000000 : ℚ), 2⟩,
    ⟨(157216141831/500000000000 : ℚ), (3028898459/10000000000 : ℚ), (-111798888621/1000000000000 : ℚ), 2⟩,
    ⟨(82200412597/250000000000 : ℚ), (1139286481/5000000000 : ℚ), (-87691761593/1000000000000 : ℚ), 2⟩,
    ⟨(343381981663/1000000000000 : ℚ), (338474153/2000000000 : ℚ), (-68007674433/1000000000000 : ℚ), 2⟩,
    ⟨(14321314437/40000000000 : ℚ), (613767591/5000000000 : ℚ), (-51718306469/1000000000000 : ℚ), 2⟩,
    ⟨(1863065961/5000000000 : ℚ), (2669123/31250000 : ℚ), (-38085784291/1000000000000 : ℚ), 2⟩,
    ⟨(193491279463/500000000000 : ℚ), (137691957/2500000000 : ℚ), (-26571206987/1000000000000 : ℚ), 2⟩,
    ⟨(401002576247/1000000000000 : ℚ), (30200887/1000000000 : ℚ), (-524220811/31250000000 : ℚ), 2⟩,
    ⟨(414538223731/1000000000000 : ℚ), (96476009/10000000000 : ℚ), (-4198725577/500000000000 : ℚ), 2⟩,
    ⟨(213729572847/500000000000 : ℚ), (-37142047/5000000000 : ℚ), (-60543821/50000000000 : ℚ), 2⟩,
    ⟨(87928181319/200000000000 : ℚ), (-216625049/10000000000 : ℚ), (619830883/125000000000 : ℚ), 2⟩,
    ⟨(56370773677/125000000000 : ℚ), (-335364541/10000000000 : ℚ), (10245024119/1000000000000 : ℚ), 2⟩,
    ⟨(461325925493/1000000000000 : ℚ), (-108545133/2500000000 : ℚ), (3687931767/250000000000 : ℚ), 2⟩,
    ⟨(94124068981/200000000000 : ℚ), (-515893001/10000000000 : ℚ), (4639708129/250000000000 : ℚ), 2⟩,
    ⟨(478759937311/1000000000000 : ℚ), (-582666201/10000000000 : ℚ), (21728204007/1000000000000 : ℚ), 2⟩,
    ⟨(485666313987/1000000000000 : ℚ), (-127230967/2000000000 : ℚ), (12153668283/500000000000 : ℚ), 2⟩,
    ⟨(491272962751/1000000000000 : ℚ), (-135521991/2000000000 : ℚ), (6583053519/250000000000 : ℚ), 2⟩,
    ⟨(495525888509/1000000000000 : ℚ), (-4424721/62500000 : ℚ), (27829421967/1000000000000 : ℚ), 2⟩,
    ⟨(249192066631/500000000000 : ℚ), (-363920913/5000000000 : ℚ), (7204420087/250000000000 : ℚ), 2⟩,
    ⟨(499820170551/1000000000000 : ℚ), (-737684133/10000000000 : ℚ), (3663613857/125000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-738909743/10000000000 : ℚ), (29370180309/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (323525843123/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control107.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control107.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate107
