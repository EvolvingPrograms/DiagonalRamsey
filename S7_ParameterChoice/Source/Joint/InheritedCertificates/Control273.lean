import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate273
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(283503448367/1000000000000 : ℚ), (6645304393971/5000000000 : ℚ), (-377609660781451/1000000000000 : ℚ), 11⟩,
    ⟨(142176407669/500000000000 : ℚ), (1450155906769/10000000000 : ℚ), (-1304489791171/31250000000 : ℚ), 8⟩,
    ⟨(286043369411/1000000000000 : ℚ), (31694088349/625000000 : ℚ), (-7437140314291/500000000000 : ℚ), 7⟩,
    ⟨(288558829627/1000000000000 : ℚ), (249184310121/10000000000 : ℚ), (-3735670926391/500000000000 : ℚ), 6⟩,
    ⟨(291874970729/1000000000000 : ℚ), (144106520089/10000000000 : ℚ), (-4424696575971/1000000000000 : ℚ), 5⟩,
    ⟨(18497491029/62500000000 : ℚ), (5723818803/625000000 : ℚ), (-576461178307/200000000000 : ℚ), 5⟩,
    ⟨(300774147151/1000000000000 : ℚ), (30908067871/5000000000 : ℚ), (-1995007886213/1000000000000 : ℚ), 4⟩,
    ⟨(306271478539/1000000000000 : ℚ), (43452583833/10000000000 : ℚ), (-1438107734691/1000000000000 : ℚ), 4⟩,
    ⟨(1952493177/6250000000 : ℚ), (3140437221/1000000000 : ℚ), (-53285839583/50000000000 : ℚ), 4⟩,
    ⟨(319097425997/1000000000000 : ℚ), (23121861661/10000000000 : ℚ), (-402199334991/500000000000 : ℚ), 3⟩,
    ⟨(163151260591/500000000000 : ℚ), (17214984353/10000000000 : ℚ), (-613920854583/1000000000000 : ℚ), 3⟩,
    ⟨(33394480487/100000000000 : ℚ), (6437537101/5000000000 : ℚ), (-94149199231/200000000000 : ℚ), 3⟩,
    ⟨(85487669423/250000000000 : ℚ), (9606787267/10000000000 : ℚ), (-45045392093/125000000000 : ℚ), 3⟩,
    ⟨(87560759679/250000000000 : ℚ), (7093712861/10000000000 : ℚ), (-34179438343/125000000000 : ℚ), 3⟩,
    ⟨(89685506993/250000000000 : ℚ), (80103301/156250000 : ℚ), (-50934722497/250000000000 : ℚ), 3⟩,
    ⟨(91841448887/250000000000 : ℚ), (1781519329/5000000000 : ℚ), (-29399767899/200000000000 : ℚ), 3⟩,
    ⟨(376031289847/1000000000000 : ℚ), (71987853/312500000 : ℚ), (-50102605291/500000000000 : ℚ), 2⟩,
    ⟨(384655057423/1000000000000 : ℚ), (319379867/2500000000 : ℚ), (-61192510593/1000000000000 : ℚ), 2⟩,
    ⟨(393154046679/1000000000000 : ℚ), (433396961/10000000000 : ℚ), (-28374439021/1000000000000 : ℚ), 2⟩,
    ⟨(200723203851/500000000000 : ℚ), (-266597391/10000000000 : ℚ), (-14277269/25000000000 : ℚ), 2⟩,
    ⟨(102363070131/250000000000 : ℚ), (-850711297/10000000000 : ℚ), (11553202057/500000000000 : ℚ), 2⟩,
    ⟨(417094564213/1000000000000 : ℚ), (-268053539/2000000000 : ℚ), (43334649423/1000000000000 : ℚ), 2⟩,
    ⟨(212149829699/500000000000 : ℚ), (-1751511047/10000000000 : ℚ), (30316432457/500000000000 : ℚ), 2⟩,
    ⟨(17239927083/40000000000 : ℚ), (-2096906353/10000000000 : ℚ), (7540182811/100000000000 : ℚ), 2⟩,
    ⟨(54640700857/125000000000 : ℚ), (-2386066689/10000000000 : ℚ), (43975980607/500000000000 : ℚ), 2⟩,
    ⟨(110655734561/250000000000 : ℚ), (-1313211953/5000000000 : ℚ), (98523881659/1000000000000 : ℚ), 2⟩,
    ⟨(447437228931/1000000000000 : ℚ), (-176482411/625000000 : ℚ), (107303619981/1000000000000 : ℚ), 2⟩,
    ⟨(225761057333/500000000000 : ℚ), (-745590103/2500000000 : ℚ), (2288679733/20000000000 : ℚ), 2⟩,
    ⟨(56854781971/125000000000 : ℚ), (-1552847007/5000000000 : ℚ), (120023091089/1000000000000 : ℚ), 2⟩,
    ⟨(28584607249/62500000000 : ℚ), (-3196193853/10000000000 : ℚ), (62075349403/500000000000 : ℚ), 2⟩,
    ⟨(459044270057/1000000000000 : ℚ), (-3255604837/10000000000 : ℚ), (31718222113/250000000000 : ℚ), 2⟩,
    ⟨(114973409257/250000000000 : ℚ), (-821259893/2500000000 : ℚ), (16028165153/125000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-822176591/2500000000 : ℚ), (64196987069/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (146154890949/500000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control273.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control273.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate273
