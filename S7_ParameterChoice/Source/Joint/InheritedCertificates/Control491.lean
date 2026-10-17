import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate491
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74764108853/250000000000 : ℚ), (6728768655563/5000000000 : ℚ), (-100803336151903/250000000000 : ℚ), 12⟩,
    ⟨(18739434727/62500000000 : ℚ), (1470537337043/10000000000 : ℚ), (-22281766700509/500000000000 : ℚ), 9⟩,
    ⟨(150686268509/500000000000 : ℚ), (20609715127/400000000 : ℚ), (-991964587841/62500000000 : ℚ), 7⟩,
    ⟨(151833166649/500000000000 : ℚ), (126857430903/5000000000 : ℚ), (-7966320142417/1000000000000 : ℚ), 6⟩,
    ⟨(153345126981/500000000000 : ℚ), (18378012887/1250000000 : ℚ), (-4713021418683/1000000000000 : ℚ), 6⟩,
    ⟨(310415177/1000000000 : ℚ), (18720691939/2000000000 : ℚ), (-1533014803429/500000000000 : ℚ), 5⟩,
    ⟨(157402614683/500000000000 : ℚ), (6327238589/1000000000 : ℚ), (-529645359879/250000000000 : ℚ), 5⟩,
    ⟨(319818132457/1000000000000 : ℚ), (11129770901/2500000000 : ℚ), (-1523958349461/1000000000000 : ℚ), 4⟩,
    ⟨(13016224371/40000000000 : ℚ), (32186542569/10000000000 : ℚ), (-225275413673/200000000000 : ℚ), 4⟩,
    ⟨(66302769873/200000000000 : ℚ), (5922000451/2500000000 : ℚ), (-847420899007/1000000000000 : ℚ), 4⟩,
    ⟨(169042013517/500000000000 : ℚ), (352242371/200000000 : ℚ), (-161032188791/250000000000 : ℚ), 4⟩,
    ⟨(172526433941/500000000000 : ℚ), (6568561333/5000000000 : ℚ), (-245683255847/500000000000 : ℚ), 3⟩,
    ⟨(352353258159/1000000000000 : ℚ), (9759111983/10000000000 : ℚ), (-373638010483/1000000000000 : ℚ), 3⟩,
    ⟨(359914891119/1000000000000 : ℚ), (3577905271/5000000000 : ℚ), (-140485793263/500000000000 : ℚ), 3⟩,
    ⟨(367664944101/1000000000000 : ℚ), (5113796371/10000000000 : ℚ), (-6459958331/31250000000 : ℚ), 3⟩,
    ⟨(187764389929/500000000000 : ℚ), (871886377/2500000000 : ℚ), (-146312220403/1000000000000 : ℚ), 3⟩,
    ⟨(191715332677/500000000000 : ℚ), (2175346197/10000000000 : ℚ), (-96534924509/1000000000000 : ℚ), 3⟩,
    ⟨(391294501111/1000000000000 : ℚ), (110459319/1000000000 : ℚ), (-13767795241/250000000000 : ℚ), 3⟩,
    ⟨(399044554093/1000000000000 : ℚ), (55628527/2500000000 : ℚ), (-5055946177/250000000000 : ℚ), 3⟩,
    ⟨(101651546763/250000000000 : ℚ), (-509845527/10000000000 : ℚ), (2317617663/250000000000 : ℚ), 3⟩,
    ⟨(41390657733/100000000000 : ℚ), (-1121621123/10000000000 : ℚ), (6872773639/200000000000 : ℚ), 3⟩,
    ⟨(420875418177/1000000000000 : ℚ), (-204355753/1250000000 : ℚ), (13945447163/250000000000 : ℚ), 2⟩,
    ⟨(427445595847/1000000000000 : ℚ), (-2066333579/10000000000 : ℚ), (14816249471/200000000000 : ℚ), 2⟩,
    ⟨(433553835937/1000000000000 : ℚ), (-1214501679/5000000000 : ℚ), (89692432229/1000000000000 : ℚ), 2⟩,
    ⟨(87828262551/200000000000 : ℚ), (-2732829911/10000000000 : ℚ), (51474337441/500000000000 : ℚ), 2⟩,
    ⟨(222077107923/500000000000 : ℚ), (-1492765193/5000000000 : ℚ), (57054198851/500000000000 : ℚ), 2⟩,
    ⟨(112136067053/250000000000 : ℚ), (-1596534089/5000000000 : ℚ), (123371386239/1000000000000 : ℚ), 2⟩,
    ⟨(452269191249/1000000000000 : ℚ), (-1680012279/5000000000 : ℚ), (130890965343/1000000000000 : ℚ), 2⟩,
    ⟨(455293111913/1000000000000 : ℚ), (-3489873613/10000000000 : ℚ), (2735662941/20000000000 : ℚ), 2⟩,
    ⟨(228793454097/500000000000 : ℚ), (-179259233/500000000 : ℚ), (28226694721/200000000000 : ℚ), 2⟩,
    ⟨(22956424479/50000000000 : ℚ), (-1823884333/5000000000 : ℚ), (144002044803/1000000000000 : ℚ), 2⟩,
    ⟨(2299515049/5000000000 : ℚ), (-1839389933/5000000000 : ℚ), (145427056447/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3682643253/10000000000 : ℚ), (18200594191/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (163564243/500000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control491.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control491.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate491
