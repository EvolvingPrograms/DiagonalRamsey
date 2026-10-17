import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate782
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(92968408579/200000000000 : ℚ), (935072515493/625000000 : ℚ), (-87021974592829/125000000000 : ℚ), 13⟩,
    ⟨(58186559149/125000000000 : ℚ), (1642174747223/10000000000 : ℚ), (-38446937542667/500000000000 : ℚ), 10⟩,
    ⟨(116696767447/250000000000 : ℚ), (115773547711/2000000000 : ℚ), (-5470304172189/200000000000 : ℚ), 9⟩,
    ⟨(468713365009/1000000000000 : ℚ), (286930778173/10000000000 : ℚ), (-13702351637631/1000000000000 : ℚ), 8⟩,
    ⟨(23562640379/50000000000 : ℚ), (167369931251/10000000000 : ℚ), (-8085697649667/1000000000000 : ℚ), 7⟩,
    ⟨(474380941279/1000000000000 : ℚ), (53609181503/5000000000 : ℚ), (-5242867093033/1000000000000 : ℚ), 6⟩,
    ⟨(478067640471/1000000000000 : ℚ), (36438580621/5000000000 : ℚ), (-225509109907/62500000000 : ℚ), 6⟩,
    ⟨(19291096009/40000000000 : ℚ), (25757899933/5000000000 : ℚ), (-2582849207481/1000000000000 : ℚ), 5⟩,
    ⟨(97393935651/200000000000 : ℚ), (9344573757/2500000000 : ℚ), (-1897979546111/1000000000000 : ℚ), 5⟩,
    ⟨(492099285357/1000000000000 : ℚ), (13786200931/5000000000 : ℚ), (-283625088763/200000000000 : ℚ), 5⟩,
    ⟨(124404205153/250000000000 : ℚ), (10258381141/5000000000 : ℚ), (-1069094022609/1000000000000 : ℚ), 5⟩,
    ⟨(251734573569/500000000000 : ℚ), (15288258423/10000000000 : ℚ), (-807471245493/1000000000000 : ℚ), 4⟩,
    ⟨(509599903833/1000000000000 : ℚ), (2263821659/2000000000 : ℚ), (-606481929491/1000000000000 : ℚ), 4⟩,
    ⟨(515950048157/1000000000000 : ℚ), (206121533/250000000 : ℚ), (-4488871139/10000000000 : ℚ), 4⟩,
    ⟨(522458424749/1000000000000 : ℚ), (5823139241/10000000000 : ℚ), (-323183134811/1000000000000 : ℚ), 4⟩,
    ⟨(264531177193/500000000000 : ℚ), (3887863461/10000000000 : ℚ), (-221458192539/1000000000000 : ℚ), 4⟩,
    ⟨(267849118807/500000000000 : ℚ), (2322311263/10000000000 : ℚ), (-138129137357/1000000000000 : ℚ), 4⟩,
    ⟨(2169208669/4000000000 : ℚ), (521324193/5000000000 : ℚ), (-17292115603/250000000000 : ℚ), 4⟩,
    ⟨(548810543843/1000000000000 : ℚ), (-6233653/5000000000 : ℚ), (-11615651557/1000000000000 : ℚ), 4⟩,
    ⟨(555160688167/1000000000000 : ℚ), (-222159423/2500000000 : ℚ), (36740603867/1000000000000 : ℚ), 4⟩,
    ⟨(561291444861/1000000000000 : ℚ), (-12657969/78125000 : ℚ), (38787151077/500000000000 : ℚ), 4⟩,
    ⟨(141785942847/250000000000 : ℚ), (-279173423/1250000000 : ℚ), (28041653401/250000000000 : ℚ), 3⟩,
    ⟨(572661306643/1000000000000 : ℚ), (-274825381/1000000000 : ℚ), (35376601193/250000000000 : ℚ), 3⟩,
    ⟨(115558182749/200000000000 : ℚ), (-1590188463/5000000000 : ℚ), (166361486967/1000000000000 : ℚ), 3⟩,
    ⟨(23299327671/40000000000 : ℚ), (-3541837659/10000000000 : ℚ), (93664993841/500000000000 : ℚ), 3⟩,
    ⟨(586692951529/1000000000000 : ℚ), (-3842027587/10000000000 : ℚ), (204877982247/1000000000000 : ℚ), 3⟩,
    ⟨(590379650721/1000000000000 : ℚ), (-817646053/2000000000 : ℚ), (219367450419/1000000000000 : ℚ), 3⟩,
    ⟨(29675389221/50000000000 : ℚ), (-4286054517/10000000000 : ℚ), (115538639873/500000000000 : ℚ), 3⟩,
    ⟨(596047226991/1000000000000 : ℚ), (-1109939717/2500000000 : ℚ), (60054785749/250000000000 : ℚ), 3⟩,
    ⟨(149493380553/250000000000 : ℚ), (-4552493629/10000000000 : ℚ), (123474736683/500000000000 : ℚ), 3⟩,
    ⟨(74908514851/125000000000 : ℚ), (-4626478443/10000000000 : ℚ), (251378343279/1000000000000 : ℚ), 3⟩,
    ⟨(119983709821/200000000000 : ℚ), (-582890887/1250000000 : ℚ), (126787885107/500000000000 : ℚ), 3⟩,
    ⟨(3/5 : ℚ), (-4667692251/10000000000 : ℚ), (50769932179/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (156441924119/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control782.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control782.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate782
