import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate58
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(250617969321/1000000000000 : ℚ), (1885654100863/2500000000 : ℚ), (-94953978827941/500000000000 : ℚ), 10⟩,
    ⟨(12319303/48828125 : ℚ), (81180572083/1000000000 : ℚ), (-21013684755883/1000000000000 : ℚ), 7⟩,
    ⟨(255645845299/1000000000000 : ℚ), (13932355659/500000000 : ℚ), (-1500472927523/200000000000 : ℚ), 6⟩,
    ⟨(260625300083/1000000000000 : ℚ), (67069833197/5000000000 : ℚ), (-945029507323/250000000000 : ℚ), 5⟩,
    ⟨(267189734919/1000000000000 : ℚ), (75985250527/10000000000 : ℚ), (-2248587550679/1000000000000 : ℚ), 4⟩,
    ⟨(275275930713/1000000000000 : ℚ), (47353339957/10000000000 : ℚ), (-1473562552001/1000000000000 : ℚ), 3⟩,
    ⟨(142403006489/500000000000 : ℚ), (7853023377/2500000000 : ℚ), (-205600709619/200000000000 : ℚ), 3⟩,
    ⟨(73922050453/250000000000 : ℚ), (21768312701/10000000000 : ℚ), (-374303810307/500000000000 : ℚ), 3⟩,
    ⟨(76954423947/250000000000 : ℚ), (15573216091/10000000000 : ℚ), (-140497558187/250000000000 : ℚ), 3⟩,
    ⟨(10033677539/31250000000 : ℚ), (2851832253/2500000000 : ℚ), (-431204846163/1000000000000 : ℚ), 2⟩,
    ⟨(83835114321/250000000000 : ℚ), (850249377/1000000000 : ℚ), (-84001682763/250000000000 : ℚ), 2⟩,
    ⟨(175234332783/500000000000 : ℚ), (1283166109/2000000000 : ℚ), (-52910236663/200000000000 : ℚ), 2⟩,
    ⟨(366316613177/1000000000000 : ℚ), (243945083/500000000 : ℚ), (-209536654437/1000000000000 : ℚ), 2⟩,
    ⟨(9568291893/25000000000 : ℚ), (3722292537/10000000000 : ℚ), (-83133447879/500000000000 : ℚ), 2⟩,
    ⟨(3121529431/7812500000 : ℚ), (141773157/500000000 : ℚ), (-65806722377/500000000000 : ℚ), 2⟩,
    ⟨(16665074493/40000000000 : ℚ), (2144245561/10000000000 : ℚ), (-51715065707/500000000000 : ℚ), 2⟩,
    ⟨(43378055721/100000000000 : ℚ), (798839063/5000000000 : ℚ), (-80207685621/1000000000000 : ℚ), 2⟩,
    ⟨(225425826183/500000000000 : ℚ), (1160017637/10000000000 : ℚ), (-7607764783/125000000000 : ℚ), 2⟩,
    ⟨(233837871907/500000000000 : ℚ), (805740907/10000000000 : ℚ), (-22300375277/500000000000 : ℚ), 2⟩,
    ⟨(484090806357/1000000000000 : ℚ), (103266503/2000000000 : ℚ), (-7708737997/250000000000 : ℚ), 2⟩,
    ⟨(499938753969/1000000000000 : ℚ), (278172191/10000000000 : ℚ), (-9560931161/500000000000 : ℚ), 1⟩,
    ⟨(515066962251/1000000000000 : ℚ), (10139637/1250000000 : ℚ), (-4562304759/500000000000 : ℚ), 1⟩,
    ⟨(529329738287/1000000000000 : ℚ), (-82466607/10000000000 : ℚ), (-292310419/500000000000 : ℚ), 1⟩,
    ⟨(542589723747/1000000000000 : ℚ), (-218375621/10000000000 : ℚ), (6697974689/1000000000000 : ℚ), 1⟩,
    ⟨(554719217723/1000000000000 : ℚ), (-331042027/10000000000 : ℚ), (6439211973/500000000000 : ℚ), 1⟩,
    ⟨(565601406557/1000000000000 : ℚ), (-105967357/2500000000 : ℚ), (4519395983/250000000000 : ℚ), 1⟩,
    ⟨(287565744411/500000000000 : ℚ), (-499474329/10000000000 : ℚ), (1399339703/62500000000 : ℚ), 1⟩,
    ⟨(116643536923/200000000000 : ℚ), (-559860563/10000000000 : ℚ), (202239301/7812500000 : ℚ), 1⟩,
    ⟨(147445529863/250000000000 : ℚ), (-303272809/5000000000 : ℚ), (1789037397/62500000000 : ℚ), 1⟩,
    ⟨(118952314847/200000000000 : ℚ), (-25626069/400000000 : ℚ), (3064456169/100000000000 : ℚ), 1⟩,
    ⟨(299054047047/500000000000 : ℚ), (-165742617/2500000000 : ℚ), (31975716057/1000000000000 : ℚ), 1⟩,
    ⟨(599789450213/1000000000000 : ℚ), (-1078411/16000000 : ℚ), (32636738621/1000000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-337690363/5000000000 : ℚ), (16359577631/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (6003278241/25000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control58.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control58.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate58
