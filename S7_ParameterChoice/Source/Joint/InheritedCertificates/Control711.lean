import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate711
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(645409110407/1000000000000 : ℚ), (5406942202277/2500000000 : ℚ), (-69854200583031/50000000000 : ℚ), 13⟩,
    ⟨(129230611839/200000000000 : ℚ), (594501043437/2500000000 : ℚ), (-19302877031817/125000000000 : ℚ), 10⟩,
    ⟨(80954224017/125000000000 : ℚ), (840668337019/10000000000 : ℚ), (-55011160863303/1000000000000 : ℚ), 8⟩,
    ⟨(162459262241/250000000000 : ℚ), (26146274087/625000000 : ℚ), (-22098788367/800000000 : ℚ), 7⟩,
    ⟨(652741611111/1000000000000 : ℚ), (122624028733/5000000000 : ℚ), (-8177154579277/500000000000 : ℚ), 6⟩,
    ⟨(131263901211/200000000000 : ℚ), (79043899227/5000000000 : ℚ), (-10651451808319/1000000000000 : ℚ), 6⟩,
    ⟨(660536276713/1000000000000 : ℚ), (108280173617/10000000000 : ℚ), (-7373122074699/1000000000000 : ℚ), 5⟩,
    ⟨(665351313277/1000000000000 : ℚ), (77269572487/10000000000 : ℚ), (-1329496342197/250000000000 : ℚ), 5⟩,
    ⟨(670718244313/1000000000000 : ℚ), (14182299639/2500000000 : ℚ), (-986565040179/250000000000 : ℚ), 5⟩,
    ⟨(338292691671/500000000000 : ℚ), (42473526703/10000000000 : ℚ), (-2986220197557/1000000000000 : ℚ), 4⟩,
    ⟨(42681014163/62500000000 : ℚ), (16106536097/5000000000 : ℚ), (-572244769923/250000000000 : ℚ), 4⟩,
    ⟨(17239749931/25000000000 : ℚ), (384540813/156250000 : ℚ), (-883704598909/500000000000 : ℚ), 4⟩,
    ⟨(696602230567/1000000000000 : ℚ), (1884309187/1000000000 : ℚ), (-1367767722693/1000000000000 : ℚ), 4⟩,
    ⟨(14077307899/20000000000 : ℚ), (179771771/125000000 : ℚ), (-1055443832581/1000000000000 : ℚ), 4⟩,
    ⟨(142261908429/200000000000 : ℚ), (1087450607/1000000000 : ℚ), (-403665597379/500000000000 : ℚ), 4⟩,
    ⟨(143772596189/200000000000 : ℚ), (8079803859/10000000000 : ℚ), (-303763210563/500000000000 : ℚ), 3⟩,
    ⟨(145290593521/200000000000 : ℚ), (728440913/1250000000 : ℚ), (-11119846263/25000000000 : ℚ), 3⟩,
    ⟨(146801281281/200000000000 : ℚ), (499400081/1250000000 : ℚ), (-155507051177/500000000000 : ℚ), 3⟩,
    ⟨(115851649/156250000 : ℚ), (2492926081/10000000000 : ℚ), (-100101695151/500000000000 : ℚ), 3⟩,
    ⟨(748713717983/1000000000000 : ℚ), (1253606883/10000000000 : ℚ), (-107875926151/1000000000000 : ℚ), 3⟩,
    ⟨(75572595131/100000000000 : ℚ), (4528789/200000000 : ℚ), (-7654766949/250000000000 : ℚ), 3⟩,
    ⟨(381209860971/500000000000 : ℚ), (-627513703/10000000000 : ℚ), (4274493691/125000000000 : ℚ), 3⟩,
    ⟨(768730565207/1000000000000 : ℚ), (-1338393691/10000000000 : ℚ), (2769211067/31250000000 : ℚ), 3⟩,
    ⟨(774597704237/1000000000000 : ℚ), (-385942103/2000000000 : ℚ), (134241524931/1000000000000 : ℚ), 3⟩,
    ⟨(779964635273/1000000000000 : ℚ), (-1209946897/5000000000 : ℚ), (86170264133/500000000000 : ℚ), 3⟩,
    ⟨(784779671837/1000000000000 : ℚ), (-1411709313/5000000000 : ℚ), (101954947131/500000000000 : ℚ), 3⟩,
    ⟨(157799288499/200000000000 : ℚ), (-3151632739/10000000000 : ℚ), (45947177577/200000000000 : ℚ), 3⟩,
    ⟨(792574337439/1000000000000 : ℚ), (-3413369959/10000000000 : ℚ), (125216623339/500000000000 : ℚ), 3⟩,
    ⟨(397739449793/500000000000 : ℚ), (-903851909/2500000000 : ℚ), (266475357833/1000000000000 : ℚ), 3⟩,
    ⟨(398841078207/500000000000 : ℚ), (-1881403523/5000000000 : ℚ), (69554204431/250000000000 : ℚ), 3⟩,
    ⟨(159832577871/200000000000 : ℚ), (-964790711/2500000000 : ℚ), (285910055363/1000000000000 : ℚ), 3⟩,
    ⟨(799906838143/1000000000000 : ℚ), (-488347317/1250000000 : ℚ), (289717092727/1000000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-489088051/1250000000 : ℚ), (18136945929/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (31980690327/250000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control711.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control711.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate711
