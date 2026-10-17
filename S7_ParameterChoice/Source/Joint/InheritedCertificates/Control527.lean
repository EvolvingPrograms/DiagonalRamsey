import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate527
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60176383009/200000000000 : ℚ), (380526265987/250000000 : ℚ), (-458716052442599/1000000000000 : ℚ), 12⟩,
    ⟨(301551402949/1000000000000 : ℚ), (166531219779/1000000000 : ℚ), (-50681362599371/1000000000000 : ℚ), 9⟩,
    ⟨(151441965611/500000000000 : ℚ), (36526015177/625000000 : ℚ), (-18038456116161/1000000000000 : ℚ), 7⟩,
    ⟨(304866666889/1000000000000 : ℚ), (57647806777/2000000000 : ℚ), (-4522417704199/500000000000 : ℚ), 7⟩,
    ⟨(307480515121/1000000000000 : ℚ), (167265805433/10000000000 : ℚ), (-667946203511/125000000000 : ℚ), 6⟩,
    ⟨(310700303131/1000000000000 : ℚ), (106601878287/10000000000 : ℚ), (-1734897798771/500000000000 : ℚ), 5⟩,
    ⟨(314495022601/1000000000000 : ℚ), (72096787483/10000000000 : ℚ), (-298986554117/125000000000 : ℚ), 5⟩,
    ⟨(318828128307/1000000000000 : ℚ), (12679963681/2500000000 : ℚ), (-1715400126683/1000000000000 : ℚ), 4⟩,
    ⟨(323657890073/1000000000000 : ℚ), (36631095993/10000000000 : ℚ), (-126308493949/100000000000 : ℚ), 4⟩,
    ⟨(82234448663/250000000000 : ℚ), (13449807901/5000000000 : ℚ), (-945732589103/1000000000000 : ℚ), 4⟩,
    ⟨(167308496839/500000000000 : ℚ), (1992529189/1000000000 : ℚ), (-714466263097/1000000000000 : ℚ), 4⟩,
    ⟨(340640793359/1000000000000 : ℚ), (3693932617/2500000000 : ℚ), (-540690564491/1000000000000 : ℚ), 4⟩,
    ⟨(346951181211/1000000000000 : ℚ), (1087868983/1000000000 : ℚ), (-406774943377/1000000000000 : ℚ), 3⟩,
    ⟨(1413949539/4000000000 : ℚ), (7867814099/10000000000 : ℚ), (-301373857739/1000000000000 : ℚ), 3⟩,
    ⟨(360186456763/1000000000000 : ℚ), (5500211619/10000000000 : ℚ), (-216922305643/1000000000000 : ℚ), 3⟩,
    ⟨(366983881523/1000000000000 : ℚ), (3610054773/10000000000 : ℚ), (-74111694261/500000000000 : ℚ), 3⟩,
    ⟨(93453549029/250000000000 : ℚ), (2081283423/10000000000 : ℚ), (-45807887829/500000000000 : ℚ), 3⟩,
    ⟨(95152905219/250000000000 : ℚ), (415466201/5000000000 : ℚ), (-11116026709/250000000000 : ℚ), 3⟩,
    ⟨(387310692889/1000000000000 : ℚ), (-50346833/2500000000 : ℚ), (-2418353691/500000000000 : ℚ), 3⟩,
    ⟨(98461724107/250000000000 : ℚ), (-530157599/5000000000 : ℚ), (5740829043/200000000000 : ℚ), 3⟩,
    ⟨(10003932107/25000000000 : ℚ), (-444820639/2500000000 : ℚ), (57242207303/1000000000000 : ℚ), 3⟩,
    ⟨(406181083961/1000000000000 : ℚ), (-2383601201/10000000000 : ℚ), (20400710109/250000000000 : ℚ), 3⟩,
    ⟨(411860282987/1000000000000 : ℚ), (-2892605081/10000000000 : ℚ), (20483921059/200000000000 : ℚ), 3⟩,
    ⟨(208570093783/500000000000 : ℚ), (-3321161519/10000000000 : ℚ), (120181534731/1000000000000 : ℚ), 3⟩,
    ⟨(105492487333/250000000000 : ℚ), (-3680754081/10000000000 : ℚ), (135267262973/1000000000000 : ℚ), 3⟩,
    ⟨(213151527519/500000000000 : ℚ), (-1990134449/5000000000 : ℚ), (18496254903/125000000000 : ℚ), 3⟩,
    ⟨(107524443627/250000000000 : ℚ), (-845314381/2000000000 : ℚ), (158516297001/1000000000000 : ℚ), 2⟩,
    ⟨(216658781259/500000000000 : ℚ), (-2212467911/5000000000 : ℚ), (104424731/625000000 : ℚ), 2⟩,
    ⟨(1743725643/4000000000 : ℚ), (-1144839219/2500000000 : ℚ), (678870947/3906250000 : ℚ), 2⟩,
    ⟨(437914146417/1000000000000 : ℚ), (-4692788609/10000000000 : ℚ), (178747001979/1000000000000 : ℚ), 2⟩,
    ⟨(43924667469/100000000000 : ℚ), (-2383655717/5000000000 : ℚ), (182015412159/1000000000000 : ℚ), 2⟩,
    ⟨(219958081297/500000000000 : ℚ), (-600531321/1250000000 : ℚ), (45909796499/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-4808853027/10000000000 : ℚ), (91920837451/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (78630657579/250000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control527.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control527.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate527
