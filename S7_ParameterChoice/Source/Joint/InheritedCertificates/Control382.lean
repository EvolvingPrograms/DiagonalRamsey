import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate382
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137505745569/500000000000 : ℚ), (481105128891/400000000 : ℚ), (-165752587488661/500000000000 : ℚ), 12⟩,
    ⟨(137926800423/500000000000 : ℚ), (656009756143/5000000000 : ℚ), (-1465902866813/40000000000 : ℚ), 8⟩,
    ⟨(277529710287/1000000000000 : ℚ), (458641395911/10000000000 : ℚ), (-13058843400379/1000000000000 : ℚ), 7⟩,
    ⟨(280023677609/1000000000000 : ℚ), (225282026159/10000000000 : ℚ), (-6559754274591/1000000000000 : ℚ), 6⟩,
    ⟨(56662296909/200000000000 : ℚ), (130230644283/10000000000 : ℚ), (-3885057276141/1000000000000 : ℚ), 5⟩,
    ⟨(57472293543/200000000000 : ℚ), (41364552533/5000000000 : ℚ), (-2530941284169/1000000000000 : ℚ), 5⟩,
    ⟨(292134623569/1000000000000 : ℚ), (44654953/8000000 : ℚ), (-350385209593/200000000000 : ℚ), 4⟩,
    ⟨(59516996801/200000000000 : ℚ), (39221309969/10000000000 : ℚ), (-1262962352831/1000000000000 : ℚ), 4⟩,
    ⟨(151830029537/500000000000 : ℚ), (7083822639/2500000000 : ℚ), (-467987689233/500000000000 : ℚ), 4⟩,
    ⟨(155150671241/500000000000 : ℚ), (4170814833/2000000000 : ℚ), (-706496273283/1000000000000 : ℚ), 4⟩,
    ⟨(158722437519/500000000000 : ℚ), (15520286513/10000000000 : ℚ), (-269602928207/500000000000 : ℚ), 3⟩,
    ⟨(16251093031/50000000000 : ℚ), (11602569287/10000000000 : ℚ), (-82688311401/200000000000 : ℚ), 3⟩,
    ⟨(166479664357/500000000000 : ℚ), (1081626623/1250000000 : ℚ), (-79116241191/250000000000 : ℚ), 3⟩,
    ⟨(341180837163/1000000000000 : ℚ), (6385563521/10000000000 : ℚ), (-30009996423/125000000000 : ℚ), 3⟩,
    ⟨(349607208347/1000000000000 : ℚ), (4611096567/10000000000 : ℚ), (-178822865953/1000000000000 : ℚ), 3⟩,
    ⟨(71631458341/200000000000 : ℚ), (3200891687/10000000000 : ℚ), (-128941541453/1000000000000 : ℚ), 3⟩,
    ⟨(18337437263/50000000000 : ℚ), (516290357/2500000000 : ℚ), (-4389687239/50000000000 : ℚ), 3⟩,
    ⟨(375298828617/1000000000000 : ℚ), (56997453/500000000 : ℚ), (-5347868877/100000000000 : ℚ), 3⟩,
    ⟨(383725199801/1000000000000 : ℚ), (94717839/2500000000 : ℚ), (-615100737/25000000000 : ℚ), 2⟩,
    ⟨(391946708251/1000000000000 : ℚ), (-252232967/10000000000 : ℚ), (-67094553/500000000000 : ℚ), 2⟩,
    ⟨(79976835269/200000000000 : ℚ), (-778857673/10000000000 : ℚ), (1035545039/50000000000 : ℚ), 2⟩,
    ⟨(203730580963/500000000000 : ℚ), (-610120643/5000000000 : ℚ), (38524937661/1000000000000 : ℚ), 2⟩,
    ⟨(414604694483/1000000000000 : ℚ), (-79551787/500000000 : ℚ), (53763422021/1000000000000 : ℚ), 2⟩,
    ⟨(42124597789/100000000000 : ℚ), (-951240123/5000000000 : ℚ), (2671113703/40000000000 : ℚ), 2⟩,
    ⟨(427321052959/1000000000000 : ℚ), (-2163239403/10000000000 : ℚ), (19460084633/250000000000 : ℚ), 2⟩,
    ⟨(108192853349/250000000000 : ℚ), (-2380009193/10000000000 : ℚ), (10895218693/125000000000 : ℚ), 2⟩,
    ⟨(437544569249/1000000000000 : ℚ), (-1278979837/5000000000 : ℚ), (2372624727/25000000000 : ℚ), 2⟩,
    ⟨(22079727621/50000000000 : ℚ), (-168816291/625000000 : ℚ), (25298759833/250000000000 : ℚ), 2⟩,
    ⟨(88976471871/200000000000 : ℚ), (-2812321859/10000000000 : ℚ), (106126447689/1000000000000 : ℚ), 2⟩,
    ⟨(447376326677/1000000000000 : ℚ), (-578793829/2000000000 : ℚ), (5488446241/50000000000 : ℚ), 2⟩,
    ⟨(224526218059/500000000000 : ℚ), (-2947571597/10000000000 : ℚ), (1402143123/12500000000 : ℚ), 2⟩,
    ⟨(449894545827/1000000000000 : ℚ), (-2974129451/10000000000 : ℚ), (22673030653/200000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2977437903/10000000000 : ℚ), (56757008073/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (337843233711/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control382.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control382.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate382
