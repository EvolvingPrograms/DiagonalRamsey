import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate398
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(116486529941/500000000000 : ℚ), (2425385590943/2000000000 : ℚ), (-283143186356383/1000000000000 : ℚ), 12⟩,
    ⟨(46736121627/200000000000 : ℚ), (661407739411/5000000000 : ℚ), (-31295801867293/1000000000000 : ℚ), 9⟩,
    ⟨(58772222641/250000000000 : ℚ), (9247097061/200000000 : ℚ), (-1393481569731/125000000000 : ℚ), 7⟩,
    ⟨(741201077/3125000000 : ℚ), (227041396103/10000000000 : ℚ), (-5596684406709/1000000000000 : ℚ), 6⟩,
    ⟨(47989357999/200000000000 : ℚ), (65591389433/5000000000 : ℚ), (-3312024113783/1000000000000 : ℚ), 5⟩,
    ⟨(243349622769/1000000000000 : ℚ), (16653876441/2000000000 : ℚ), (-21552867583/10000000000 : ℚ), 5⟩,
    ⟨(247360071823/1000000000000 : ℚ), (28059397661/5000000000 : ℚ), (-1489734490801/1000000000000 : ℚ), 4⟩,
    ⟨(12596975717/50000000000 : ℚ), (19683720539/5000000000 : ℚ), (-66993661261/62500000000 : ℚ), 4⟩,
    ⟨(128521923893/500000000000 : ℚ), (28375288653/10000000000 : ℚ), (-396193677903/500000000000 : ℚ), 4⟩,
    ⟨(131311957319/500000000000 : ℚ), (2081651681/1000000000 : ℚ), (-149034311829/250000000000 : ℚ), 4⟩,
    ⟨(268625975803/1000000000000 : ℚ), (3084648627/2000000000 : ℚ), (-452982569087/1000000000000 : ℚ), 3⟩,
    ⟨(274992228151/1000000000000 : ℚ), (358062629/312500000 : ℚ), (-345276547281/1000000000000 : ℚ), 3⟩,
    ⟨(35207670149/125000000000 : ℚ), (4234583127/5000000000 : ℚ), (-65535233611/250000000000 : ℚ), 3⟩,
    ⟨(36071143441/125000000000 : ℚ), (6168316567/10000000000 : ℚ), (-39315493499/200000000000 : ℚ), 3⟩,
    ⟨(1478245307/5000000000 : ℚ), (4364792991/10000000000 : ℚ), (-143921978599/1000000000000 : ℚ), 3⟩,
    ⟨(302832919369/1000000000000 : ℚ), (2928851319/10000000000 : ℚ), (-2019450083/20000000000 : ℚ), 3⟩,
    ⟨(62010307391/200000000000 : ℚ), (354002591/2000000000 : ℚ), (-2619012153/40000000000 : ℚ), 3⟩,
    ⟨(79308848731/250000000000 : ℚ), (411925679/5000000000 : ℚ), (-7162038453/200000000000 : ℚ), 3⟩,
    ⟨(324315308797/1000000000000 : ℚ), (43664131/10000000000 : ℚ), (-1348934943/125000000000 : ℚ), 3⟩,
    ⟨(82805773783/250000000000 : ℚ), (-604924841/10000000000 : ℚ), (209232391/20000000000 : ℚ), 2⟩,
    ⟨(337892228173/1000000000000 : ℚ), (-229510201/2000000000 : ℚ), (28611521099/1000000000000 : ℚ), 2⟩,
    ⟨(344258480521/1000000000000 : ℚ), (-801771489/5000000000 : ℚ), (44161384141/1000000000000 : ℚ), 2⟩,
    ⟨(175130270843/500000000000 : ℚ), (-1987606443/10000000000 : ℚ), (57496323683/1000000000000 : ℚ), 2⟩,
    ⟨(177920304269/500000000000 : ℚ), (-2311009027/10000000000 : ℚ), (68912681491/1000000000000 : ℚ), 2⟩,
    ⟨(11279529437/31250000000 : ℚ), (-2582426467/10000000000 : ℚ), (15727832777/200000000000 : ℚ), 2⟩,
    ⟨(365524384501/1000000000000 : ℚ), (-561710919/2000000000 : ℚ), (43426166391/500000000000 : ℚ), 2⟩,
    ⟨(73906966711/200000000000 : ℚ), (-2994556471/10000000000 : ℚ), (93688097081/1000000000000 : ℚ), 2⟩,
    ⟨(37293766633/100000000000 : ℚ), (-1572195681/5000000000 : ℚ), (19850062579/200000000000 : ℚ), 2⟩,
    ⟨(93925027921/250000000000 : ℚ), (-130442293/400000000 : ℚ), (103617241531/1000000000000 : ℚ), 2⟩,
    ⟨(1180611143/3125000000 : ℚ), (-1673384593/5000000000 : ℚ), (2136927533/20000000000 : ℚ), 2⟩,
    ⟨(379203848189/1000000000000 : ℚ), (-850771709/2500000000 : ℚ), (54488993083/500000000000 : ℚ), 2⟩,
    ⟨(189955698221/500000000000 : ℚ), (-3431003979/10000000000 : ℚ), (110037601127/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3434482423/10000000000 : ℚ), (1721402603/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (45238204553/125000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control398.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control398.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate398
