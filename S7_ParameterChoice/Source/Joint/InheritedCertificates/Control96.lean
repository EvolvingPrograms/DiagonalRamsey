import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate96
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(227531156959/1000000000000 : ℚ), (6836821811159/10000000000 : ℚ), (-156291181771643/1000000000000 : ℚ), 10⟩,
    ⟨(229082996821/1000000000000 : ℚ), (735615172329/10000000000 : ℚ), (-17295653776741/1000000000000 : ℚ), 7⟩,
    ⟨(232171731479/1000000000000 : ℚ), (252403141323/10000000000 : ℚ), (-193003020497/31250000000 : ℚ), 6⟩,
    ⟨(236767614731/1000000000000 : ℚ), (6073142733/500000000 : ℚ), (-1556319802171/500000000000 : ℚ), 5⟩,
    ⟨(121413192853/500000000000 : ℚ), (68781620673/10000000000 : ℚ), (-463010625139/250000000000 : ℚ), 4⟩,
    ⟨(25028969513/100000000000 : ℚ), (42850286039/10000000000 : ℚ), (-242798859031/200000000000 : ℚ), 4⟩,
    ⟨(259085667253/1000000000000 : ℚ), (28414768561/10000000000 : ℚ), (-211764832981/250000000000 : ℚ), 3⟩,
    ⟨(134564796027/500000000000 : ℚ), (19682073217/10000000000 : ℚ), (-154212518629/250000000000 : ℚ), 3⟩,
    ⟨(35040592631/125000000000 : ℚ), (14071428741/10000000000 : ℚ), (-231489512289/500000000000 : ℚ), 3⟩,
    ⟨(292563298829/1000000000000 : ℚ), (2574314463/2500000000 : ℚ), (-177522778209/500000000000 : ℚ), 3⟩,
    ⟨(76431850349/250000000000 : ℚ), (766408743/1000000000 : ℚ), (-17274589941/62500000000 : ℚ), 2⟩,
    ⟨(63938054249/200000000000 : ℚ), (5771084877/10000000000 : ℚ), (-108639334957/500000000000 : ℚ), 2⟩,
    ⟨(167158719153/500000000000 : ℚ), (4375384503/10000000000 : ℚ), (-171695425599/1000000000000 : ℚ), 2⟩,
    ⟨(69893606993/200000000000 : ℚ), (664752383/2000000000 : ℚ), (-8486334709/62500000000 : ℚ), 2⟩,
    ⟨(364996152693/1000000000000 : ℚ), (314533797/1250000000 : ℚ), (-106963851793/1000000000000 : ℚ), 2⟩,
    ⟨(380752247229/1000000000000 : ℚ), (1885865917/10000000000 : ℚ), (-8347832559/100000000000 : ℚ), 2⟩,
    ⟨(24786536173/62500000000 : ℚ), (346622597/2500000000 : ℚ), (-32042033617/500000000000 : ℚ), 2⟩,
    ⟨(51542584163/125000000000 : ℚ), (985844147/10000000000 : ℚ), (-5986273207/125000000000 : ℚ), 2⟩,
    ⟨(53483598879/125000000000 : ℚ), (660865153/10000000000 : ℚ), (-33442803/976562500 : ℚ), 2⟩,
    ⟨(443019387691/1000000000000 : ℚ), (394824643/10000000000 : ℚ), (-4533286839/200000000000 : ℚ), 2⟩,
    ⟨(3575363709/7812500000 : ℚ), (175417609/10000000000 : ℚ), (-12789792777/1000000000000 : ℚ), 2⟩,
    ⟨(471609424601/1000000000000 : ℚ), (-101849/156250000 : ℚ), (-867869553/200000000000 : ℚ), 2⟩,
    ⟨(3787293181/7812500000 : ℚ), (-157877967/10000000000 : ℚ), (579318087/200000000000 : ℚ), 2⟩,
    ⟨(497012084949/1000000000000 : ℚ), (-35486937/1250000000 : ℚ), (4540687129/500000000000 : ℚ), 2⟩,
    ⟨(508207233943/1000000000000 : ℚ), (-388571549/10000000000 : ℚ), (2868323583/200000000000 : ℚ), 2⟩,
    ⟨(64781394843/125000000000 : ℚ), (-474977009/10000000000 : ℚ), (9387821077/500000000000 : ℚ), 2⟩,
    ⟨(263523565433/500000000000 : ℚ), (-109094259/2000000000 : ℚ), (22459685277/1000000000000 : ℚ), 2⟩,
    ⟨(53451044029/100000000000 : ℚ), (-120372043/2000000000 : ℚ), (6363125769/250000000000 : ℚ), 2⟩,
    ⟨(270284605633/500000000000 : ℚ), (-5164083/80000000 : ℚ), (3474847559/125000000000 : ℚ), 1⟩,
    ⟨(545165094517/1000000000000 : ℚ), (-169357937/2500000000 : ℚ), (14765824413/500000000000 : ℚ), 1⟩,
    ⟨(68531728647/125000000000 : ℚ), (-69833631/1000000000 : ℚ), (7668627479/250000000000 : ℚ), 1⟩,
    ⟨(274902834519/500000000000 : ℚ), (-708678081/10000000000 : ℚ), (7810575637/250000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-709965679/10000000000 : ℚ), (31313107889/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (148941152833/500000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control96.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control96.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate96
