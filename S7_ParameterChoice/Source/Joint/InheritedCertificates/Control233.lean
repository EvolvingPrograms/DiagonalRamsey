import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate233
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(325689455637/1000000000000 : ℚ), (3077696648353/2500000000 : ℚ), (-3139920038619/7812500000 : ℚ), 11⟩,
    ⟨(326768921303/1000000000000 : ℚ), (670932715373/5000000000 : ℚ), (-44445697413543/1000000000000 : ℚ), 8⟩,
    ⟨(328917456789/1000000000000 : ℚ), (468642662187/10000000000 : ℚ), (-15848556904999/1000000000000 : ℚ), 7⟩,
    ⟨(166057185263/500000000000 : ℚ), (57501998411/2500000000 : ℚ), (-79697296581/10000000000 : ℚ), 6⟩,
    ⟨(67265774897/200000000000 : ℚ), (1661180039/125000000 : ℚ), (-2363690936993/500000000000 : ℚ), 5⟩,
    ⟨(341520380691/1000000000000 : ℚ), (21104499637/2500000000 : ℚ), (-3086069228319/1000000000000 : ℚ), 5⟩,
    ⟨(347638892099/1000000000000 : ℚ), (56993960139/10000000000 : ℚ), (-1071010340303/500000000000 : ℚ), 4⟩,
    ⟨(354625484101/1000000000000 : ℚ), (2506750527/625000000 : ℚ), (-193707294293/125000000000 : ℚ), 4⟩,
    ⟨(362412871997/1000000000000 : ℚ), (29054089531/10000000000 : ℚ), (-144213592941/125000000000 : ℚ), 3⟩,
    ⟨(370926058983/1000000000000 : ℚ), (4294826879/2000000000 : ℚ), (-876009695497/1000000000000 : ℚ), 3⟩,
    ⟨(23755191151/62500000000 : ℚ), (16083208183/10000000000 : ℚ), (-673738160313/1000000000000 : ℚ), 3⟩,
    ⟨(77959136677/200000000000 : ℚ), (758391973/625000000 : ℚ), (-521839874339/1000000000000 : ℚ), 3⟩,
    ⟨(199985198001/500000000000 : ℚ), (9170055067/10000000000 : ℚ), (-404867398881/1000000000000 : ℚ), 3⟩,
    ⟨(410509208223/1000000000000 : ℚ), (6898699653/10000000000 : ℚ), (-156440066787/500000000000 : ℚ), 3⟩,
    ⟨(16852425021/40000000000 : ℚ), (5127365879/10000000000 : ℚ), (-119625013697/500000000000 : ℚ), 2⟩,
    ⟨(86454124871/200000000000 : ℚ), (3724891003/10000000000 : ℚ), (-17942393889/100000000000 : ℚ), 2⟩,
    ⟨(110820913483/250000000000 : ℚ), (2599842741/10000000000 : ℚ), (-130194016189/1000000000000 : ℚ), 2⟩,
    ⟨(227121826381/500000000000 : ℚ), (421782651/2500000000 : ℚ), (-44625501273/500000000000 : ℚ), 2⟩,
    ⟨(29065316879/62500000000 : ℚ), (187914221/2000000000 : ℚ), (-2745083609/50000000000 : ℚ), 2⟩,
    ⟨(95116776457/200000000000 : ℚ), (806059/25000000 : ℚ), (-6471228947/250000000000 : ℚ), 2⟩,
    ⟨(242879297451/500000000000 : ℚ), (-760947/40000000 : ℚ), (-249797561/200000000000 : ℚ), 2⟩,
    ⟨(495471219871/1000000000000 : ℚ), (-617978579/10000000000 : ℚ), (19732268227/1000000000000 : ℚ), 2⟩,
    ⟨(63078527413/125000000000 : ℚ), (-487856987/5000000000 : ℚ), (37617742337/1000000000000 : ℚ), 2⟩,
    ⟨(51314140629/100000000000 : ℚ), (-1274892603/10000000000 : ℚ), (26420193043/500000000000 : ℚ), 2⟩,
    ⟨(260464397093/500000000000 : ℚ), (-304870587/2000000000 : ℚ), (65736965473/1000000000000 : ℚ), 2⟩,
    ⟨(131978846547/250000000000 : ℚ), (-8654683/50000000 : ℚ), (76569779573/1000000000000 : ℚ), 2⟩,
    ⟨(133508474399/250000000000 : ℚ), (-1899936239/10000000000 : ℚ), (42771347499/500000000000 : ℚ), 2⟩,
    ⟨(539225403801/1000000000000 : ℚ), (-1017712129/5000000000 : ℚ), (18562616811/200000000000 : ℚ), 2⟩,
    ⟨(543439907761/1000000000000 : ℚ), (-2140494731/10000000000 : ℚ), (3940029713/40000000000 : ℚ), 2⟩,
    ⟨(546636821497/1000000000000 : ℚ), (-277180067/1250000000 : ℚ), (25673630731/250000000000 : ℚ), 2⟩,
    ⟨(68598169623/125000000000 : ℚ), (-1133940431/5000000000 : ℚ), (105457177583/1000000000000 : ℚ), 2⟩,
    ⟨(549864822649/1000000000000 : ℚ), (-2292849313/10000000000 : ℚ), (26707188761/250000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2295958699/10000000000 : ℚ), (21399950051/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (33787010061/125000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control233.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control233.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate233
