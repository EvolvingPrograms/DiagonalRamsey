import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate546
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(297201642329/500000000000 : ℚ), (19760792578579/10000000000 : ℚ), (-294012510845603/250000000000 : ℚ), 12⟩,
    ⟨(595392692427/1000000000000 : ℚ), (542187255041/2500000000 : ℚ), (-130052794759931/1000000000000 : ℚ), 9⟩,
    ⟨(298680989713/500000000000 : ℚ), (764865179609/10000000000 : ℚ), (-46373773453437/1000000000000 : ℚ), 7⟩,
    ⟨(300146090173/500000000000 : ℚ), (379680757513/10000000000 : ℚ), (-23320314810359/1000000000000 : ℚ), 6⟩,
    ⟨(2416620303/4000000000 : ℚ), (44416439619/2000000000 : ℚ), (-6917191296799/500000000000 : ℚ), 6⟩,
    ⟨(608913463843/1000000000000 : ℚ), (4465415721/312500000 : ℚ), (-225844661561/25000000000 : ℚ), 5⟩,
    ⟨(614521518747/1000000000000 : ℚ), (48877292217/5000000000 : ℚ), (-6273955544343/1000000000000 : ℚ), 5⟩,
    ⟨(155231307957/250000000000 : ℚ), (8716314603/1250000000 : ℚ), (-141989977961/31250000000 : ℚ), 4⟩,
    ⟨(628062931827/1000000000000 : ℚ), (12806443831/2500000000 : ℚ), (-26473466127/7812500000 : ℚ), 4⟩,
    ⟨(635865878793/1000000000000 : ℚ), (19212596079/5000000000 : ℚ), (-645002147649/250000000000 : ℚ), 4⟩,
    ⟨(251663643/390625000 : ℚ), (14621802811/5000000000 : ℚ), (-49814364261/25000000000 : ℚ), 4⟩,
    ⟨(130632248811/200000000000 : ℚ), (4492866229/2000000000 : ℚ), (-24265131101/15625000000 : ℚ), 3⟩,
    ⟨(20702721829/31250000000 : ℚ), (17339374499/10000000000 : ℚ), (-243191918551/200000000000 : ℚ), 3⟩,
    ⟨(26885867057/40000000000 : ℚ), (669442119/500000000 : ℚ), (-952423253391/1000000000000 : ℚ), 3⟩,
    ⟨(85255868841/125000000000 : ℚ), (10293728019/10000000000 : ℚ), (-148583880443/200000000000 : ℚ), 3⟩,
    ⟨(138418515277/200000000000 : ℚ), (3917763669/5000000000 : ℚ), (-574071955029/1000000000000 : ℚ), 3⟩,
    ⟨(43886675533/62500000000 : ℚ), (5860699499/10000000000 : ℚ), (-436434353199/1000000000000 : ℚ), 3⟩,
    ⟨(142446486837/200000000000 : ℚ), (4258949181/10000000000 : ℚ), (-161591608189/500000000000 : ℚ), 3⟩,
    ⟨(90266588561/125000000000 : ℚ), (589903653/2000000000 : ℚ), (-22929238507/100000000000 : ℚ), 3⟩,
    ⟨(146358457277/200000000000 : ℚ), (936142999/5000000000 : ℚ), (-7549787083/50000000000 : ℚ), 3⟩,
    ⟨(741118140859/1000000000000 : ℚ), (981846991/10000000000 : ℚ), (-10678640543/125000000000 : ℚ), 2⟩,
    ⟨(750020458833/1000000000000 : ℚ), (48696951/2000000000 : ℚ), (-3798303293/125000000000 : ℚ), 2⟩,
    ⟨(18960337653/25000000000 : ℚ), (-23101143/625000000 : ℚ), (1981211531/125000000000 : ℚ), 2⟩,
    ⟨(383108226543/500000000000 : ℚ), (-439173161/5000000000 : ℚ), (13656811879/250000000000 : ℚ), 2⟩,
    ⟨(154670830617/200000000000 : ℚ), (-1299054961/10000000000 : ℚ), (43505207821/500000000000 : ℚ), 2⟩,
    ⟨(389878933083/500000000000 : ℚ), (-822293917/5000000000 : ℚ), (113841464191/1000000000000 : ℚ), 2⟩,
    ⟨(78536592107/100000000000 : ℚ), (-96250991/500000000 : ℚ), (6789304277/50000000000 : ℚ), 2⟩,
    ⟨(790124309163/1000000000000 : ℚ), (-107410227/500000000 : ℚ), (153366839169/1000000000000 : ℚ), 2⟩,
    ⟨(793987204567/1000000000000 : ℚ), (-2320179103/10000000000 : ℚ), (166987927367/1000000000000 : ℚ), 2⟩,
    ⟨(796917405487/1000000000000 : ℚ), (-97818493/400000000 : ℚ), (8847675221/50000000000 : ℚ), 2⟩,
    ⟨(399443346243/500000000000 : ℚ), (-2527270997/10000000000 : ℚ), (183481004219/1000000000000 : ℚ), 2⟩,
    ⟨(159975220051/200000000000 : ℚ), (-2567670559/10000000000 : ℚ), (18671046623/100000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1286348533/5000000000 : ℚ), (93556277807/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (27600438173/200000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control546.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control546.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate546
