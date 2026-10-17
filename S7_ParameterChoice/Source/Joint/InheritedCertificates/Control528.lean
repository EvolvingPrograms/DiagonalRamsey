import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate528
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(308481706339/1000000000000 : ℚ), (1534110481297/1000000000 : ℚ), (-237003168348557/500000000000 : ℚ), 12⟩,
    ⟨(309162744939/1000000000000 : ℚ), (419646372041/2500000000 : ℚ), (-13092838146981/250000000000 : ℚ), 9⟩,
    ⟨(77629565841/250000000000 : ℚ), (58914760869/1000000000 : ℚ), (-9320215919643/500000000000 : ℚ), 7⟩,
    ⟨(4883362613/15625000000 : ℚ), (290617695837/10000000000 : ℚ), (-584191485953/62500000000 : ℚ), 7⟩,
    ⟨(315194152271/1000000000000 : ℚ), (42169258159/2500000000 : ℚ), (-1380614572429/250000000000 : ℚ), 6⟩,
    ⟨(63693898277/200000000000 : ℚ), (860193467/80000000 : ℚ), (-3586263922277/1000000000000 : ℚ), 5⟩,
    ⟨(322329681269/1000000000000 : ℚ), (72738693861/10000000000 : ℚ), (-2472474434301/1000000000000 : ℚ), 5⟩,
    ⟨(40842193273/125000000000 : ℚ), (5118663663/1000000000 : ℚ), (-886740888587/500000000000 : ℚ), 4⟩,
    ⟨(165825317991/500000000000 : ℚ), (7396324727/2000000000 : ℚ), (-326536134329/250000000000 : ℚ), 4⟩,
    ⟨(168510817461/500000000000 : ℚ), (13584693993/5000000000 : ℚ), (-195654899189/200000000000 : ℚ), 4⟩,
    ⟨(85699704337/250000000000 : ℚ), (4027398177/2000000000 : ℚ), (-147873067467/200000000000 : ℚ), 4⟩,
    ⟨(174463272917/500000000000 : ℚ), (1868066083/1250000000 : ℚ), (-279934048321/500000000000 : ℚ), 4⟩,
    ⟨(355345807007/1000000000000 : ℚ), (11015118657/10000000000 : ℚ), (-421564057069/1000000000000 : ℚ), 3⟩,
    ⟨(11312336871/31250000000 : ℚ), (1994852137/2500000000 : ℚ), (-156364461733/500000000000 : ℚ), 3⟩,
    ⟨(73761886237/200000000000 : ℚ), (5592499633/10000000000 : ℚ), (-225544879383/1000000000000 : ℚ), 3⟩,
    ⟨(375724132129/1000000000000 : ℚ), (1843588611/5000000000 : ℚ), (-77320536827/500000000000 : ℚ), 3⟩,
    ⟨(191336145177/500000000000 : ℚ), (1073198207/5000000000 : ℚ), (-96233341129/1000000000000 : ℚ), 3⟩,
    ⟨(389586991299/1000000000000 : ℚ), (886476389/10000000000 : ℚ), (-9519525211/200000000000 : ℚ), 3⟩,
    ⟨(99100410653/250000000000 : ℚ), (-15350261/1000000000 : ℚ), (-6736965161/1000000000000 : ℚ), 3⟩,
    ⟨(403050615477/1000000000000 : ℚ), (-509290259/5000000000 : ℚ), (27835224847/1000000000000 : ℚ), 3⟩,
    ⟨(409469876649/1000000000000 : ℚ), (-108905969/625000000 : ℚ), (57239786127/1000000000000 : ℚ), 3⟩,
    ⟨(25974850321/62500000000 : ℚ), (-2350797311/10000000000 : ℚ), (82330559689/1000000000000 : ℚ), 3⟩,
    ⟨(210687393781/500000000000 : ℚ), (-2863006267/10000000000 : ℚ), (5188159169/50000000000 : ℚ), 3⟩,
    ⟨(213372893251/500000000000 : ℚ), (-1647068367/5000000000 : ℚ), (122043923081/1000000000000 : ℚ), 3⟩,
    ⟨(431658876299/1000000000000 : ℚ), (-456973597/1250000000 : ℚ), (34391230579/250000000000 : ℚ), 3⟩,
    ⟨(87213348243/200000000000 : ℚ), (-3956940917/10000000000 : ℚ), (150630033653/1000000000000 : ℚ), 2⟩,
    ⟨(439926931099/1000000000000 : ℚ), (-4204532143/10000000000 : ℚ), (10092124497/62500000000 : ℚ), 2⟩,
    ⟨(443202270213/1000000000000 : ℚ), (-4403892463/10000000000 : ℚ), (170276781491/1000000000000 : ℚ), 2⟩,
    ⟨(445861215251/1000000000000 : ℚ), (-569882791/1250000000 : ℚ), (44293611747/250000000000 : ℚ), 2⟩,
    ⟨(447878159119/1000000000000 : ℚ), (-934605693/2000000000 : ℚ), (91133597793/500000000000 : ℚ), 2⟩,
    ⟨(89846735509/200000000000 : ℚ), (-4747894947/10000000000 : ℚ), (185625360597/1000000000000 : ℚ), 2⟩,
    ⟨(89982943229/200000000000 : ℚ), (-4785002193/10000000000 : ℚ), (93646802351/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2394812747/5000000000 : ℚ), (187501633559/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (308367478671/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control528.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control528.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate528
