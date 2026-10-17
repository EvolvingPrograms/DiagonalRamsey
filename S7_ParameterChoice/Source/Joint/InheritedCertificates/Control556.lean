import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate556
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264113239397/1000000000000 : ℚ), (13273383138023/10000000000 : ℚ), (-43899665131133/125000000000 : ℚ), 12⟩,
    ⟨(33095897121/125000000000 : ℚ), (58032983549/400000000 : ℚ), (-2425350668731/62500000000 : ℚ), 9⟩,
    ⟨(266068754333/1000000000000 : ℚ), (101694957949/2000000000 : ℚ), (-3453530679963/250000000000 : ℚ), 7⟩,
    ⟨(268005436591/1000000000000 : ℚ), (62604122151/2500000000 : ℚ), (-6928520572063/1000000000000 : ℚ), 7⟩,
    ⟨(270558572433/1000000000000 : ℚ), (18137318699/1250000000 : ℚ), (-2047361836039/500000000000 : ℚ), 6⟩,
    ⟨(54740714753/200000000000 : ℚ), (46168781853/5000000000 : ℚ), (-2660030441809/1000000000000 : ℚ), 5⟩,
    ⟨(138705076253/500000000000 : ℚ), (62361572713/10000000000 : ℚ), (-1834631711749/1000000000000 : ℚ), 5⟩,
    ⟨(11265704491/40000000000 : ℚ), (43813408441/10000000000 : ℚ), (-164566173867/125000000000 : ℚ), 4⟩,
    ⟨(71590048043/250000000000 : ℚ), (31604677119/10000000000 : ℚ), (-485017112709/500000000000 : ℚ), 4⟩,
    ⟨(145758729661/500000000000 : ℚ), (11591325557/5000000000 : ℚ), (-726844983027/1000000000000 : ℚ), 4⟩,
    ⟨(11882589857/40000000000 : ℚ), (17154314753/10000000000 : ℚ), (-17173221939/31250000000 : ℚ), 4⟩,
    ⟨(302948630073/1000000000000 : ℚ), (6354205249/5000000000 : ℚ), (-208118883311/500000000000 : ℚ), 4⟩,
    ⟨(1236449781/4000000000 : ℚ), (1168421951/1250000000 : ℚ), (-156716567379/500000000000 : ℚ), 3⟩,
    ⟨(157748415523/500000000000 : ℚ), (3376458023/5000000000 : ℚ), (-58111359859/250000000000 : ℚ), 3⟩,
    ⟨(1257969931/3906250000 : ℚ), (589274767/1250000000 : ℚ), (-20935693827/125000000000 : ℚ), 3⟩,
    ⟨(164339920957/500000000000 : ℚ), (1543715659/5000000000 : ℚ), (-28644396891/250000000000 : ℚ), 3⟩,
    ⟨(167675753693/500000000000 : ℚ), (221512081/1250000000 : ℚ), (-7092149907/100000000000 : ℚ), 3⟩,
    ⟨(85497761741/250000000000 : ℚ), (696431101/10000000000 : ℚ), (-34502877569/1000000000000 : ℚ), 3⟩,
    ⟨(174267259127/500000000000 : ℚ), (-38345553/2000000000 : ℚ), (-1923087409/500000000000 : ℚ), 3⟩,
    ⟨(7098378081/20000000000 : ℚ), (-93088133/1000000000 : ℚ), (22145917791/1000000000000 : ℚ), 3⟩,
    ⟨(361082719227/1000000000000 : ℚ), (-1549819747/10000000000 : ℚ), (44299694961/1000000000000 : ℚ), 3⟩,
    ⟨(183483301437/500000000000 : ℚ), (-2070306687/10000000000 : ℚ), (15810915123/250000000000 : ℚ), 3⟩,
    ⟨(372513889977/1000000000000 : ℚ), (-2508939987/10000000000 : ℚ), (79459566911/1000000000000 : ℚ), 3⟩,
    ⟨(47208894641/125000000000 : ℚ), (-2878463601/10000000000 : ℚ), (23329665281/250000000000 : ℚ), 3⟩,
    ⟨(15295549481/40000000000 : ℚ), (-3188706867/10000000000 : ℚ), (52553931993/500000000000 : ℚ), 3⟩,
    ⟨(193310598397/500000000000 : ℚ), (-430908229/1250000000 : ℚ), (115048965349/1000000000000 : ℚ), 3⟩,
    ⟨(195163887767/500000000000 : ℚ), (-3660002789/10000000000 : ℚ), (24662575877/200000000000 : ℚ), 3⟩,
    ⟨(393472776867/1000000000000 : ℚ), (-3831415231/10000000000 : ℚ), (8126895553/62500000000 : ℚ), 2⟩,
    ⟨(396025912709/1000000000000 : ℚ), (-1982454537/5000000000 : ℚ), (8456242853/62500000000 : ℚ), 2⟩,
    ⟨(397962594967/1000000000000 : ℚ), (-2031499997/5000000000 : ℚ), (139193995941/1000000000000 : ℚ), 2⟩,
    ⟨(99816043083/250000000000 : ℚ), (-2063729589/5000000000 : ℚ), (8860213301/62500000000 : ℚ), 2⟩,
    ⟨(399918109903/1000000000000 : ℚ), (-4159414523/10000000000 : ℚ), (3576007963/25000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-832679247/2000000000 : ℚ), (28639914141/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (92316179179/250000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control556.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control556.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate556
