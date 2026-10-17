import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate184
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264463640861/1000000000000 : ℚ), (12674216050811/10000000000 : ℚ), (-336001328385461/1000000000000 : ℚ), 11⟩,
    ⟨(265356510743/1000000000000 : ℚ), (1380942993537/10000000000 : ℚ), (-9287445280041/250000000000 : ℚ), 8⟩,
    ⟨(267133651683/1000000000000 : ℚ), (48197727003/1000000000 : ℚ), (-165519394087/12500000000 : ℚ), 7⟩,
    ⟨(134888974421/500000000000 : ℚ), (236339953849/10000000000 : ℚ), (-66544520097/10000000000 : ℚ), 6⟩,
    ⟨(4269749003/15625000000 : ℚ), (5455681479/400000000 : ℚ), (-788710035143/200000000000 : ℚ), 5⟩,
    ⟨(277558041771/1000000000000 : ℚ), (86508149443/10000000000 : ℚ), (-2571116532767/1000000000000 : ℚ), 4⟩,
    ⟨(17663681937/62500000000 : ℚ), (58290748451/10000000000 : ℚ), (-1781569489009/1000000000000 : ℚ), 4⟩,
    ⟨(288397804921/1000000000000 : ℚ), (20458257803/5000000000 : ℚ), (-321498822713/250000000000 : ℚ), 4⟩,
    ⟨(18427441853/62500000000 : ℚ), (461586303/156250000 : ℚ), (-954581222381/1000000000000 : ℚ), 3⟩,
    ⟨(301880672273/1000000000000 : ℚ), (5434731201/2500000000 : ℚ), (-721982679091/1000000000000 : ℚ), 3⟩,
    ⟨(61890959663/200000000000 : ℚ), (16186535659/10000000000 : ℚ), (-276200145117/500000000000 : ℚ), 3⟩,
    ⟨(158744252399/500000000000 : ℚ), (3028960169/2500000000 : ℚ), (-212445308731/500000000000 : ℚ), 3⟩,
    ⟨(325904422737/1000000000000 : ℚ), (4528286047/5000000000 : ℚ), (-326542520487/1000000000000 : ℚ), 3⟩,
    ⟨(334621502243/1000000000000 : ℚ), (1677174437/2500000000 : ℚ), (-31131180467/125000000000 : ℚ), 3⟩,
    ⟨(343555793073/1000000000000 : ℚ), (4874082421/10000000000 : ℚ), (-11679681901/62500000000 : ℚ), 2⟩,
    ⟨(112838801/320000000 : ℚ), (1709025331/5000000000 : ℚ), (-34054446871/250000000000 : ℚ), 2⟩,
    ⟨(361730577061/1000000000000 : ℚ), (2246798243/10000000000 : ℚ), (-4720112761/50000000000 : ℚ), 2⟩,
    ⟨(46349504639/125000000000 : ℚ), (1293612217/10000000000 : ℚ), (-29752147593/500000000000 : ℚ), 2⟩,
    ⟨(379730327943/1000000000000 : ℚ), (63773753/1250000000 : ℚ), (-30115380381/1000000000000 : ℚ), 2⟩,
    ⟨(48555925931/125000000000 : ℚ), (-138983833/10000000000 : ℚ), (-518862279/100000000000 : ℚ), 2⟩,
    ⟨(99215831347/250000000000 : ℚ), (-5315393/78125000 : ℚ), (16063960419/1000000000000 : ℚ), 2⟩,
    ⟨(404897031871/1000000000000 : ℚ), (-1133906863/10000000000 : ℚ), (34241610169/1000000000000 : ℚ), 2⟩,
    ⟨(51558894739/125000000000 : ℚ), (-757378251/5000000000 : ℚ), (4980371891/100000000000 : ℚ), 2⟩,
    ⟨(209756380269/500000000000 : ℚ), (-917268273/5000000000 : ℚ), (31552263167/500000000000 : ℚ), 2⟩,
    ⟨(85190805053/200000000000 : ℚ), (-1051097297/5000000000 : ℚ), (74418140677/1000000000000 : ℚ), 2⟩,
    ⟨(431732919193/1000000000000 : ℚ), (-2324640689/10000000000 : ℚ), (5247302529/62500000000 : ℚ), 2⟩,
    ⟨(87358757683/200000000000 : ℚ), (-2507208101/10000000000 : ℚ), (2871394311/31250000000 : ℚ), 2⟩,
    ⟨(441087893993/1000000000000 : ℚ), (-1326995731/5000000000 : ℚ), (49163642189/500000000000 : ℚ), 2⟩,
    ⟨(444573881343/1000000000000 : ℚ), (-346011931/1250000000 : ℚ), (25845008649/250000000000 : ℚ), 2⟩,
    ⟨(223609089251/500000000000 : ℚ), (-2851816743/10000000000 : ℚ), (107113081631/1000000000000 : ℚ), 2⟩,
    ⟨(224497659721/500000000000 : ℚ), (-726693723/2500000000 : ℚ), (109575778119/1000000000000 : ℚ), 2⟩,
    ⟨(17995527573/40000000000 : ℚ), (-293400263/1000000000 : ℚ), (110799504483/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2937394447/10000000000 : ℚ), (6934507329/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (280086483427/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control184.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control184.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate184
