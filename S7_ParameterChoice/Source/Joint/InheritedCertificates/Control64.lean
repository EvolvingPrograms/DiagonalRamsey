import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate64
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(206411428921/1000000000000 : ℚ), (6782025660853/10000000000 : ℚ), (-8793134626421/62500000000 : ℚ), 10⟩,
    ⟨(41584106723/200000000000 : ℚ), (364199372249/5000000000 : ℚ), (-15568442135001/1000000000000 : ℚ), 7⟩,
    ⟨(105462104751/500000000000 : ℚ), (124650474281/5000000000 : ℚ), (-5558824715619/1000000000000 : ℚ), 6⟩,
    ⟨(215393529539/1000000000000 : ℚ), (11962903313/1000000000 : ℚ), (-1400603641053/500000000000 : ℚ), 5⟩,
    ⟨(55321362933/250000000000 : ℚ), (33770614311/5000000000 : ℚ), (-416627251953/250000000000 : ℚ), 4⟩,
    ⟨(228543233649/1000000000000 : ℚ), (20975871461/5000000000 : ℚ), (-136528096539/125000000000 : ℚ), 3⟩,
    ⟨(118548489441/500000000000 : ℚ), (13868981377/5000000000 : ℚ), (-190497749819/250000000000 : ℚ), 3⟩,
    ⟨(24686431019/100000000000 : ℚ), (19159875417/10000000000 : ℚ), (-138707076499/250000000000 : ℚ), 3⟩,
    ⟨(16109447677/62500000000 : ℚ), (13662090911/10000000000 : ℚ), (-416372107661/1000000000000 : ℚ), 3⟩,
    ⟨(269652690467/1000000000000 : ℚ), (2493203847/2500000000 : ℚ), (-159626398919/500000000000 : ℚ), 2⟩,
    ⟨(70613568719/250000000000 : ℚ), (3702403999/5000000000 : ℚ), (-248474526021/1000000000000 : ℚ), 2⟩,
    ⟨(74008157451/250000000000 : ℚ), (1112505201/2000000000 : ℚ), (-97632440361/500000000000 : ℚ), 2⟩,
    ⟨(31025698827/100000000000 : ℚ), (4206698191/10000000000 : ℚ), (-38554372449/250000000000 : ℚ), 2⟩,
    ⟨(324990361927/1000000000000 : ℚ), (3186647623/10000000000 : ℚ), (-30464074443/250000000000 : ℚ), 2⟩,
    ⟨(85022715083/250000000000 : ℚ), (601072603/2500000000 : ℚ), (-1917337277/20000000000 : ℚ), 2⟩,
    ⟨(355413057431/1000000000000 : ℚ), (448494179/2500000000 : ℚ), (-74662552453/1000000000000 : ℚ), 2⟩,
    ⟨(370809392089/1000000000000 : ℚ), (1310709817/10000000000 : ℚ), (-5712861633/100000000000 : ℚ), 2⟩,
    ⟨(96532897297/250000000000 : ℚ), (461504353/5000000000 : ℚ), (-42465394827/1000000000000 : ℚ), 2⟩,
    ⟨(401232087593/1000000000000 : ℚ), (152112253/2500000000 : ℚ), (-30089045039/1000000000000 : ℚ), 2⟩,
    ⟨(415965461249/1000000000000 : ℚ), (21925159/625000000 : ℚ), (-9783438591/500000000000 : ℚ), 2⟩,
    ⟨(107547454929/250000000000 : ℚ), (34539921/2500000000 : ℚ), (-10574163873/1000000000000 : ℚ), 2⟩,
    ⟨(110942043661/250000000000 : ℚ), (-38328137/10000000000 : ℚ), (-716161593/250000000000 : ℚ), 1⟩,
    ⟨(456569759053/1000000000000 : ℚ), (-46326427/2500000000 : ℚ), (117187583/31250000000 : ℚ), 1⟩,
    ⟨(468471286687/1000000000000 : ℚ), (-6156153/200000000 : ℚ), (9414728699/1000000000000 : ℚ), 1⟩,
    ⟨(47935813933/100000000000 : ℚ), (-409675123/10000000000 : ℚ), (7120779647/500000000000 : ℚ), 1⟩,
    ⟨(244562735319/500000000000 : ℚ), (-493851793/10000000000 : ℚ), (18317225639/1000000000000 : ℚ), 1⟩,
    ⟨(497679215871/1000000000000 : ℚ), (-112519211/2000000000 : ℚ), (4341754183/200000000000 : ℚ), 1⟩,
    ⟨(126234249447/250000000000 : ℚ), (-61763421/1000000000 : ℚ), (6116926013/250000000000 : ℚ), 1⟩,
    ⟨(510828919981/1000000000000 : ℚ), (-82533913/1250000000 : ℚ), (2663308293/100000000000 : ℚ), 1⟩,
    ⟨(257649120009/500000000000 : ℚ), (-34573549/500000000 : ℚ), (14116894513/500000000000 : ℚ), 1⟩,
    ⟨(103660383181/200000000000 : ℚ), (-711912103/10000000000 : ℚ), (7322544021/250000000000 : ℚ), 1⟩,
    ⟨(519811020599/1000000000000 : ℚ), (-180506843/2500000000 : ℚ), (7453803589/250000000000 : ℚ), 1⟩,
    ⟨(13/25 : ℚ), (-7232869/100000000 : ℚ), (7470174471/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (68487472787/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control64.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control64.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate64
