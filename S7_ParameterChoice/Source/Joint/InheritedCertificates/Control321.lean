import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate321
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(149410925427/500000000000 : ℚ), (14085875546201/10000000000 : ℚ), (-210879196262343/500000000000 : ℚ), 12⟩,
    ⟨(299645623697/1000000000000 : ℚ), (769147804539/5000000000 : ℚ), (-23309533694821/500000000000 : ℚ), 8⟩,
    ⟨(150642617999/500000000000 : ℚ), (269286383117/5000000000 : ℚ), (-664312489183/40000000000 : ℚ), 7⟩,
    ⟨(303724897397/1000000000000 : ℚ), (52998690569/2000000000 : ℚ), (-333570583499/40000000000 : ℚ), 6⟩,
    ⟨(306941112619/1000000000000 : ℚ), (76724380383/5000000000 : ℚ), (-2468204810999/500000000000 : ℚ), 5⟩,
    ⟨(62180581551/200000000000 : ℚ), (19527334547/2000000000 : ℚ), (-3213715814517/1000000000000 : ℚ), 5⟩,
    ⟨(315572128551/1000000000000 : ℚ), (32986874813/5000000000 : ℚ), (-2222728227919/1000000000000 : ℚ), 4⟩,
    ⟨(160451903929/500000000000 : ℚ), (9283006067/2000000000 : ℚ), (-320157128991/200000000000 : ℚ), 4⟩,
    ⟨(32684659869/100000000000 : ℚ), (33565730569/10000000000 : ℚ), (-592470439931/500000000000 : ℚ), 4⟩,
    ⟨(333343268723/1000000000000 : ℚ), (3090059441/1250000000 : ℚ), (-893170647557/1000000000000 : ℚ), 4⟩,
    ⟨(340331251473/1000000000000 : ℚ), (14722911/8000000 : ℚ), (-680537749917/1000000000000 : ℚ), 3⟩,
    ⟨(173871624423/500000000000 : ℚ), (2751264691/2000000000 : ℚ), (-520751960767/1000000000000 : ℚ), 3⟩,
    ⟨(71101575851/200000000000 : ℚ), (10252083707/10000000000 : ℚ), (-397604533461/1000000000000 : ℚ), 3⟩,
    ⟨(181775182533/500000000000 : ℚ), (7554392549/10000000000 : ℚ), (-300665580717/1000000000000 : ℚ), 3⟩,
    ⟨(371793252743/1000000000000 : ℚ), (5440518367/10000000000 : ℚ), (-27872676553/125000000000 : ℚ), 3⟩,
    ⟨(95039289693/250000000000 : ℚ), (751737553/2000000000 : ℚ), (-15977583977/100000000000 : ℚ), 3⟩,
    ⟨(77712306833/200000000000 : ℚ), (600724177/2500000000 : ℚ), (-53842308337/500000000000 : ℚ), 3⟩,
    ⟨(198462720097/500000000000 : ℚ), (1297533631/10000000000 : ℚ), (-64286783217/1000000000000 : ℚ), 2⟩,
    ⟨(40516832787/100000000000 : ℚ), (193842141/5000000000 : ℚ), (-27808228657/1000000000000 : ℚ), 2⟩,
    ⟨(413210813681/1000000000000 : ℚ), (-183577589/5000000000 : ℚ), (3071250333/1000000000000 : ℚ), 2⟩,
    ⟨(42097544409/100000000000 : ℚ), (-498628261/5000000000 : ℚ), (7336685949/250000000000 : ℚ), 2⟩,
    ⟨(428387441463/1000000000000 : ℚ), (-1525497281/10000000000 : ℚ), (809002483/15625000000 : ℚ), 2⟩,
    ⟨(435375424213/1000000000000 : ℚ), (-1969325439/10000000000 : ℚ), (35470739469/500000000000 : ℚ), 2⟩,
    ⟨(220936047123/500000000000 : ℚ), (-1171071449/5000000000 : ℚ), (87292225581/1000000000000 : ℚ), 2⟩,
    ⟨(447814885079/1000000000000 : ℚ), (-2654294297/10000000000 : ℚ), (202353613/2000000000 : ℚ), 2⟩,
    ⟨(226573282193/500000000000 : ℚ), (-2913782857/10000000000 : ℚ), (56432727543/500000000000 : ℚ), 2⟩,
    ⟨(228907892591/500000000000 : ℚ), (-3126793989/10000000000 : ℚ), (122567221519/1000000000000 : ℚ), 2⟩,
    ⟨(461777580317/1000000000000 : ℚ), (-3298081047/10000000000 : ℚ), (26088534027/200000000000 : ℚ), 2⟩,
    ⟨(464993795539/1000000000000 : ℚ), (-1715625107/5000000000 : ℚ), (68306701349/500000000000 : ℚ), 2⟩,
    ⟨(233716728469/500000000000 : ℚ), (-3528969863/10000000000 : ℚ), (141169169793/1000000000000 : ℚ), 2⟩,
    ⟨(11726826731/25000000000 : ℚ), (-1796560867/5000000000 : ℚ), (36043271423/250000000000 : ℚ), 2⟩,
    ⟨(234948421041/500000000000 : ℚ), (-906226421/2500000000 : ℚ), (145665292321/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-453608143/1250000000 : ℚ), (4557855203/31250000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (285125519959/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control321.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control321.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate321
