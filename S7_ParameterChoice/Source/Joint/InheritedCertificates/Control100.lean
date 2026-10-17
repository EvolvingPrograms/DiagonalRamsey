import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate100
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(262209580093/1000000000000 : ℚ), (4936812648171/5000000000 : ℚ), (-64940964440603/250000000000 : ℚ), 11⟩,
    ⟨(263450163357/1000000000000 : ℚ), (267617599577/2500000000 : ℚ), (-28735820857717/1000000000000 : ℚ), 8⟩,
    ⟨(265919382389/1000000000000 : ℚ), (7422453473/200000000 : ℚ), (-2563400656191/250000000000 : ℚ), 6⟩,
    ⟨(269593457261/1000000000000 : ℚ), (36131916489/2000000000 : ℚ), (-2580792184037/500000000000 : ℚ), 5⟩,
    ⟨(274437004623/1000000000000 : ℚ), (12938730163/1250000000 : ℚ), (-383264043271/125000000000 : ℚ), 5⟩,
    ⟨(140201689233/500000000000 : ℚ), (32609520567/5000000000 : ℚ), (-1002688843781/500000000000 : ℚ), 4⟩,
    ⟨(287435119349/1000000000000 : ℚ), (21850170593/5000000000 : ℚ), (-1395265896021/1000000000000 : ℚ), 4⟩,
    ⟨(147732253881/500000000000 : ℚ), (7636783217/2500000000 : ℚ), (-1012421817029/1000000000000 : ℚ), 3⟩,
    ⟨(304414216307/1000000000000 : ℚ), (5500876899/2500000000 : ℚ), (-378242417319/500000000000 : ℚ), 3⟩,
    ⟨(314198054397/1000000000000 : ℚ), (16191710587/10000000000 : ℚ), (-288466519567/500000000000 : ℚ), 3⟩,
    ⟨(324721798323/1000000000000 : ℚ), (2418272393/2000000000 : ℚ), (-111521552607/250000000000 : ℚ), 3⟩,
    ⟨(335884098679/1000000000000 : ℚ), (9111216671/10000000000 : ℚ), (-173875118319/500000000000 : ℚ), 2⟩,
    ⟨(34757745641/100000000000 : ℚ), (172270209/250000000 : ℚ), (-67985489857/250000000000 : ℚ), 2⟩,
    ⟨(359689258089/1000000000000 : ℚ), (2600563791/5000000000 : ℚ), (-21223914603/100000000000 : ℚ), 2⟩,
    ⟨(93025715111/250000000000 : ℚ), (3891654633/10000000000 : ℚ), (-164362036911/1000000000000 : ℚ), 2⟩,
    ⟨(3846987137/10000000000 : ℚ), (2860605303/10000000000 : ℚ), (-31343285847/250000000000 : ℚ), 2⟩,
    ⟨(397355512903/1000000000000 : ℚ), (2037471819/10000000000 : ℚ), (-11650671581/125000000000 : ℚ), 2⟩,
    ⟨(409951366159/1000000000000 : ℚ), (274478469/2000000000 : ℚ), (-4148314059/62500000000 : ℚ), 2⟩,
    ⟨(211182484257/500000000000 : ℚ), (414734917/5000000000 : ℚ), (-8757778911/200000000000 : ℚ), 2⟩,
    ⟨(434476770193/1000000000000 : ℚ), (76491297/2000000000 : ℚ), (-24645161757/1000000000000 : ℚ), 2⟩,
    ⟨(111542531981/250000000000 : ℚ), (237981/200000000 : ℚ), (-8333848539/1000000000000 : ℚ), 2⟩,
    ⟨(11433310707/25000000000 : ℚ), (-296789209/10000000000 : ℚ), (5607498363/1000000000000 : ℚ), 2⟩,
    ⟨(233928086103/500000000000 : ℚ), (-277327361/5000000000 : ℚ), (4383410257/250000000000 : ℚ), 2⟩,
    ⟨(59705001287/125000000000 : ℚ), (-770130529/10000000000 : ℚ), (2771846629/100000000000 : ℚ), 2⟩,
    ⟨(486589718841/1000000000000 : ℚ), (-189938649/2000000000 : ℚ), (36374291047/1000000000000 : ℚ), 2⟩,
    ⟨(98923821451/200000000000 : ℚ), (-1098334223/10000000000 : ℚ), (21832972091/500000000000 : ℚ), 2⟩,
    ⟨(501650848137/1000000000000 : ℚ), (-12199007/100000000 : ℚ), (6215143789/125000000000 : ℚ), 2⟩,
    ⟨(25380861099/50000000000 : ℚ), (-164668051/1250000000 : ℚ), (54638243021/1000000000000 : ℚ), 2⟩,
    ⟨(256230384671/500000000000 : ℚ), (-174112893/1250000000 : ℚ), (11698381943/200000000000 : ℚ), 2⟩,
    ⟨(258067422107/500000000000 : ℚ), (-1448232731/10000000000 : ℚ), (12267489471/200000000000 : ℚ), 2⟩,
    ⟨(259302031623/500000000000 : ℚ), (-1484501327/10000000000 : ℚ), (12642771777/200000000000 : ℚ), 2⟩,
    ⟨(51984464651/100000000000 : ℚ), (-375613547/2500000000 : ℚ), (64146013341/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-376172471/2500000000 : ℚ), (12852450429/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (16412791539/62500000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control100.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control100.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate100
