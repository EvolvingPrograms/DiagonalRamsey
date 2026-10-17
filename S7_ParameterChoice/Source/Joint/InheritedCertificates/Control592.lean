import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate592
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13857729531/50000000000 : ℚ), (1785636817447/1000000000 : ℚ), (-247770639905759/500000000000 : ℚ), 12⟩,
    ⟨(138824760467/500000000000 : ℚ), (1956194049171/10000000000 : ℚ), (-1709868717473/31250000000 : ℚ), 9⟩,
    ⟨(139317307557/500000000000 : ℚ), (687534677673/10000000000 : ℚ), (-9724791393309/500000000000 : ℚ), 8⟩,
    ⟨(280100386163/1000000000000 : ℚ), (339532672779/10000000000 : ℚ), (-4866577638293/500000000000 : ℚ), 7⟩,
    ⟨(141016358953/500000000000 : ℚ), (197180166353/10000000000 : ℚ), (-2867186780409/500000000000 : ℚ), 6⟩,
    ⟨(28441300093/100000000000 : ℚ), (62830871389/5000000000 : ℚ), (-1854964784127/500000000000 : ℚ), 6⟩,
    ⟨(28721831181/100000000000 : ℚ), (84892286461/10000000000 : ℚ), (-2545299518033/1000000000000 : ℚ), 5⟩,
    ⟨(72605408467/250000000000 : ℚ), (14892549859/2500000000 : ℚ), (-226790558233/125000000000 : ℚ), 5⟩,
    ⟨(146996058681/500000000000 : ℚ), (42834209457/10000000000 : ℚ), (-33138213731/25000000000 : ℚ), 5⟩,
    ⟨(297895376583/1000000000000 : ℚ), (31238745979/10000000000 : ℚ), (-491264364067/500000000000 : ℚ), 4⟩,
    ⟨(302093821013/1000000000000 : ℚ), (22901324151/10000000000 : ℚ), (-183130233151/250000000000 : ℚ), 4⟩,
    ⟨(153273508667/500000000000 : ℚ), (16724077329/10000000000 : ℚ), (-544612266107/1000000000000 : ℚ), 4⟩,
    ⟨(155606039417/500000000000 : ℚ), (12032540941/10000000000 : ℚ), (-399755774159/1000000000000 : ℚ), 4⟩,
    ⟨(316044078419/1000000000000 : ℚ), (839443021/1000000000 : ℚ), (-71423645929/250000000000 : ℚ), 4⟩,
    ⟨(80249120323/250000000000 : ℚ), (5522785883/10000000000 : ℚ), (-194256248363/1000000000000 : ℚ), 3⟩,
    ⟨(163010796553/500000000000 : ℚ), (3221430199/10000000000 : ℚ), (-2396537769/20000000000 : ℚ), 3⟩,
    ⟨(331071019287/1000000000000 : ℚ), (1352867083/10000000000 : ℚ), (-11690367093/200000000000 : ℚ), 3⟩,
    ⟨(3360961311/10000000000 : ℚ), (-90666423/5000000000 : ℚ), (-7285157733/1000000000000 : ℚ), 3⟩,
    ⟨(341048533973/1000000000000 : ℚ), (-726457059/5000000000 : ℚ), (8939615929/250000000000 : ℚ), 3⟩,
    ⟨(172940266779/500000000000 : ℚ), (-628744307/2500000000 : ℚ), (72230284139/1000000000000 : ℚ), 3⟩,
    ⟨(175272797529/500000000000 : ℚ), (-3407332513/10000000000 : ℚ), (103298717419/1000000000000 : ℚ), 3⟩,
    ⟨(17749939569/50000000000 : ℚ), (-520018117/1250000000 : ℚ), (129852601831/1000000000000 : ℚ), 3⟩,
    ⟨(359197235809/1000000000000 : ℚ), (-4796465047/10000000000 : ℚ), (30514637967/200000000000 : ℚ), 3⟩,
    ⟨(36310049503/100000000000 : ℚ), (-266700899/500000000 : ℚ), (34397058369/200000000000 : ℚ), 3⟩,
    ⟨(91667744631/250000000000 : ℚ), (-361655511/625000000 : ℚ), (18849424561/100000000000 : ℚ), 3⟩,
    ⟨(184937150291/500000000000 : ℚ), (-308222739/500000000 : ℚ), (101206529253/500000000000 : ℚ), 3⟩,
    ⟨(186339805731/500000000000 : ℚ), (-259043219/400000000 : ℚ), (53495650477/250000000000 : ℚ), 3⟩,
    ⟨(187529947243/500000000000 : ℚ), (-6727622841/10000000000 : ℚ), (223386786351/1000000000000 : ℚ), 3⟩,
    ⟨(376992226229/1000000000000 : ℚ), (-6923815123/10000000000 : ℚ), (230764016127/1000000000000 : ℚ), 3⟩,
    ⟨(189228998639/500000000000 : ℚ), (-7068148423/10000000000 : ℚ), (118107900701/500000000000 : ℚ), 3⟩,
    ⟨(189721545729/500000000000 : ℚ), (-3581538563/5000000000 : ℚ), (23981311639/100000000000 : ℚ), 3⟩,
    ⟨(94984505443/250000000000 : ℚ), (-3605081121/5000000000 : ℚ), (120800446057/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-7216030317/10000000000 : ℚ), (60455965191/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (157946192727/500000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control592.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control592.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate592
