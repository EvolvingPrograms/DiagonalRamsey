import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate577
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(34450010339/125000000000 : ℚ), (12638693508177/10000000000 : ℚ), (-348959833220773/1000000000000 : ℚ), 12⟩,
    ⟨(69073747189/250000000000 : ℚ), (34532184861/250000000 : ℚ), (-38561656244861/1000000000000 : ℚ), 9⟩,
    ⟨(277678108517/1000000000000 : ℚ), (24202272093/500000000 : ℚ), (-13729668210959/1000000000000 : ℚ), 7⟩,
    ⟨(279736121797/1000000000000 : ℚ), (2383677137/100000000 : ℚ), (-6888031746723/1000000000000 : ℚ), 7⟩,
    ⟨(141224604401/500000000000 : ℚ), (138118527421/10000000000 : ℚ), (-4072352331963/1000000000000 : ℚ), 6⟩,
    ⟨(285791241023/1000000000000 : ℚ), (17581438147/2000000000 : ℚ), (-2646856554101/1000000000000 : ℚ), 5⟩,
    ⟨(289730032861/1000000000000 : ℚ), (29693505863/5000000000 : ℚ), (-456693833721/250000000000 : ℚ), 5⟩,
    ⟨(147113825799/500000000000 : ℚ), (41744992247/10000000000 : ℚ), (-164004707517/125000000000 : ℚ), 5⟩,
    ⟨(149620391353/500000000000 : ℚ), (30136799453/10000000000 : ℚ), (-241954998011/250000000000 : ℚ), 4⟩,
    ⟨(152360573497/500000000000 : ℚ), (11066147649/5000000000 : ℚ), (-29050268059/40000000000 : ℚ), 4⟩,
    ⟨(310615965557/1000000000000 : ℚ), (16405454501/10000000000 : ℚ), (-11003353259/20000000000 : ℚ), 4⟩,
    ⟨(316868468069/1000000000000 : ℚ), (6092046771/5000000000 : ℚ), (-417801305649/1000000000000 : ℚ), 4⟩,
    ⟨(161709219757/500000000000 : ℚ), (4497327161/5000000000 : ℚ), (-6314946989/20000000000 : ℚ), 3⟩,
    ⟨(165101400043/500000000000 : ℚ), (3267112321/5000000000 : ℚ), (-235376765807/1000000000000 : ℚ), 3⟩,
    ⟨(84289053171/250000000000 : ℚ), (115054401/250000000 : ℚ), (-170936571967/1000000000000 : ℚ), 3⟩,
    ⟨(344211712143/1000000000000 : ℚ), (3061687949/10000000000 : ℚ), (-4739013879/40000000000 : ℚ), 3⟩,
    ⟨(351301350147/1000000000000 : ℚ), (908559611/5000000000 : ℚ), (-7520988453/100000000000 : ℚ), 3⟩,
    ⟨(358356849607/1000000000000 : ℚ), (400095659/5000000000 : ℚ), (-7827501473/200000000000 : ℚ), 3⟩,
    ⟨(91327565551/250000000000 : ℚ), (-38725529/10000000000 : ℚ), (-175817443/20000000000 : ℚ), 3⟩,
    ⟨(46511827847/125000000000 : ℚ), (-184066213/2500000000 : ℚ), (846080387/50000000000 : ℚ), 3⟩,
    ⟨(378644594221/1000000000000 : ℚ), (-1319822471/10000000000 : ℚ), (19411140811/500000000000 : ℚ), 3⟩,
    ⟨(384897096733/1000000000000 : ℚ), (-45252771/250000000 : ℚ), (1798031047/31250000000 : ℚ), 3⟩,
    ⟨(12212247353/31250000000 : ℚ), (-2222929021/10000000000 : ℚ), (73545769981/1000000000000 : ℚ), 3⟩,
    ⟨(12383508737/31250000000 : ℚ), (-321301309/1250000000 : ℚ), (87218808199/1000000000000 : ℚ), 3⟩,
    ⟨(401285410693/1000000000000 : ℚ), (-2861916193/10000000000 : ℚ), (9884246153/100000000000 : ℚ), 3⟩,
    ⟨(40578302943/100000000000 : ℚ), (-776170621/2500000000 : ℚ), (10863828799/100000000000 : ℚ), 3⟩,
    ⟨(102430455317/250000000000 : ℚ), (-1652147887/5000000000 : ℚ), (23355438287/200000000000 : ℚ), 3⟩,
    ⟨(25816490843/62500000000 : ℚ), (-3465043289/10000000000 : ℚ), (123390018609/1000000000000 : ℚ), 3⟩,
    ⟨(207888470247/500000000000 : ℚ), (-112192897/312500000 : ℚ), (1285755321/10000000000 : ℚ), 3⟩,
    ⟨(208917476887/500000000000 : ℚ), (-3682083479/10000000000 : ℚ), (132406384699/1000000000000 : ℚ), 2⟩,
    ⟨(83843614707/200000000000 : ℚ), (-3742465367/10000000000 : ℚ), (67466757109/500000000000 : ℚ), 2⟩,
    ⟨(209956489789/500000000000 : ℚ), (-3772394599/10000000000 : ℚ), (68094620019/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3776123627/10000000000 : ℚ), (27269168599/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (94701768887/250000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control577.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control577.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate577
