import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate209
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6825204021/25000000000 : ℚ), (792555504511/625000000 : ℚ), (-173510435449651/500000000000 : ℚ), 11⟩,
    ⟨(273908035033/1000000000000 : ℚ), (172762697259/1250000000 : ℚ), (-19183846076509/500000000000 : ℚ), 8⟩,
    ⟨(137849558569/500000000000 : ℚ), (482591146563/10000000000 : ℚ), (-547013396039/40000000000 : ℚ), 7⟩,
    ⟨(278364158057/1000000000000 : ℚ), (236757556603/10000000000 : ℚ), (-26844548123/3906250000 : ℚ), 6⟩,
    ⟨(70469372997/250000000000 : ℚ), (34175927883/2500000000 : ℚ), (-1018101536741/250000000000 : ℚ), 5⟩,
    ⟨(71551320901/250000000000 : ℚ), (43375527883/5000000000 : ℚ), (-1327489978483/500000000000 : ℚ), 5⟩,
    ⟨(291305853907/1000000000000 : ℚ), (58484470447/10000000000 : ℚ), (-367912707709/200000000000 : ℚ), 4⟩,
    ⟨(18570630101/62500000000 : ℚ), (41073074977/10000000000 : ℚ), (-663884039497/500000000000 : ℚ), 4⟩,
    ⟨(60724375247/200000000000 : ℚ), (1186762919/400000000 : ℚ), (-985523819577/1000000000000 : ℚ), 4⟩,
    ⟨(38839839779/125000000000 : ℚ), (2184337671/1000000000 : ℚ), (-186335835001/250000000000 : ℚ), 3⟩,
    ⟨(15917613057/50000000000 : ℚ), (16272376971/10000000000 : ℚ), (-285126628233/500000000000 : ℚ), 3⟩,
    ⟨(40806123721/125000000000 : ℚ), (12186584227/10000000000 : ℚ), (-438623128027/1000000000000 : ℚ), 3⟩,
    ⟨(5233295753/15625000000 : ℚ), (9115026147/10000000000 : ℚ), (-1685590103/5000000000 : ℚ), 3⟩,
    ⟨(34371639071/100000000000 : ℚ), (6757138517/10000000000 : ℚ), (-51431676853/200000000000 : ℚ), 3⟩,
    ⟨(176360384257/500000000000 : ℚ), (4914370997/10000000000 : ℚ), (-48256349839/250000000000 : ℚ), 3⟩,
    ⟨(90464336131/250000000000 : ℚ), (3451716351/10000000000 : ℚ), (-70396166361/500000000000 : ℚ), 2⟩,
    ⟨(185519064259/500000000000 : ℚ), (45502011/200000000 : ℚ), (-1953890617/20000000000 : ℚ), 2⟩,
    ⟨(380174704527/1000000000000 : ℚ), (1317588623/10000000000 : ℚ), (-7717961403/125000000000 : ℚ), 2⟩,
    ⟨(389179082331/1000000000000 : ℚ), (106138777/2000000000 : ℚ), (-31483836153/1000000000000 : ℚ), 2⟩,
    ⟨(397964544849/1000000000000 : ℚ), (-24250507/2000000000 : ℚ), (-2916223839/500000000000 : ℚ), 2⟩,
    ⟨(406446483273/1000000000000 : ℚ), (-664839581/10000000000 : ℚ), (3205120939/200000000000 : ℚ), 2⟩,
    ⟨(414543211901/1000000000000 : ℚ), (-8750871/78125000 : ℚ), (1388419947/40000000000 : ℚ), 2⟩,
    ⟨(422176754809/1000000000000 : ℚ), (-751160041/5000000000 : ℚ), (50697930253/1000000000000 : ℚ), 2⟩,
    ⟨(214636798403/500000000000 : ℚ), (-1823156287/10000000000 : ℚ), (64354924949/1000000000000 : ℚ), 2⟩,
    ⟨(17430615657/40000000000 : ℚ), (-2091628293/10000000000 : ℚ), (18991415201/250000000000 : ℚ), 2⟩,
    ⟨(220794809567/500000000000 : ℚ), (-462939119/2000000000 : ℚ), (42875177587/500000000000 : ℚ), 2⟩,
    ⟨(446690189437/1000000000000 : ℚ), (-1248865683/5000000000 : ℚ), (93879241543/1000000000000 : ℚ), 2⟩,
    ⟨(451017981053/1000000000000 : ℚ), (-2644861949/10000000000 : ℚ), (100482999481/1000000000000 : ℚ), 2⟩,
    ⟨(56816414373/125000000000 : ℚ), (-2759216683/10000000000 : ℚ), (105660563437/1000000000000 : ℚ), 2⟩,
    ⟨(457196355903/1000000000000 : ℚ), (-1421555409/5000000000 : ℚ), (54742470321/500000000000 : ℚ), 2⟩,
    ⟨(57373429751/125000000000 : ℚ), (-2898177143/10000000000 : ℚ), (112007468921/1000000000000 : ℚ), 2⟩,
    ⟨(229943656101/500000000000 : ℚ), (-2925456893/10000000000 : ℚ), (113260800703/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-585771023/2000000000 : ℚ), (113417099739/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (284871023569/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control209.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control209.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate209
