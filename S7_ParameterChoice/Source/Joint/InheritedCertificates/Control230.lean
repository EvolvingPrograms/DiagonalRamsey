import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate230
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276004963601/1000000000000 : ℚ), (5734560514663/5000000000 : ℚ), (-158681338067111/500000000000 : ℚ), 11⟩,
    ⟨(34623332937/125000000000 : ℚ), (1248870703601/10000000000 : ℚ), (-8773522473653/250000000000 : ℚ), 8⟩,
    ⟨(139470304489/500000000000 : ℚ), (217768359647/5000000000 : ℚ), (-782032472897/62500000000 : ℚ), 7⟩,
    ⟨(56369596497/200000000000 : ℚ), (213395920451/10000000000 : ℚ), (-1258191372713/200000000000 : ℚ), 6⟩,
    ⟨(285680784421/1000000000000 : ℚ), (4922529901/400000000 : ℚ), (-373051448271/100000000000 : ℚ), 5⟩,
    ⟨(290402102807/1000000000000 : ℚ), (78012425727/10000000000 : ℚ), (-1217139481681/500000000000 : ℚ), 5⟩,
    ⟨(295966468767/1000000000000 : ℚ), (52551702431/10000000000 : ℚ), (-337719052447/200000000000 : ℚ), 4⟩,
    ⟨(151160147207/500000000000 : ℚ), (18445403701/5000000000 : ℚ), (-1220581264271/1000000000000 : ℚ), 4⟩,
    ⟨(61880477787/200000000000 : ℚ), (26649136873/10000000000 : ℚ), (-907627506699/1000000000000 : ℚ), 3⟩,
    ⟨(317144547887/1000000000000 : ℚ), (19632576763/10000000000 : ℚ), (-688015304679/1000000000000 : ℚ), 3⟩,
    ⟨(2542751641/7812500000 : ℚ), (1464613293/1000000000 : ℚ), (-263965837061/500000000000 : ℚ), 3⟩,
    ⟨(334305175479/1000000000000 : ℚ), (10995485999/10000000000 : ℚ), (-203797546437/500000000000 : ℚ), 3⟩,
    ⟨(343558377893/1000000000000 : ℚ), (4127977857/5000000000 : ℚ), (-314810475553/1000000000000 : ℚ), 3⟩,
    ⟨(176571351947/500000000000 : ℚ), (1231345111/2000000000 : ℚ), (-241731638593/1000000000000 : ℚ), 3⟩,
    ⟨(362965851183/1000000000000 : ℚ), (4519045877/10000000000 : ℚ), (-5722767951/31250000000 : ℚ), 2⟩,
    ⟨(372933217481/1000000000000 : ℚ), (322148251/1000000000 : ℚ), (-27082025379/200000000000 : ℚ), 2⟩,
    ⟨(191474405801/500000000000 : ℚ), (272437349/1250000000 : ℚ), (-9604781219/100000000000 : ℚ), 2⟩,
    ⟨(392916177901/1000000000000 : ℚ), (666501587/5000000000 : ℚ), (-7902880409/125000000000 : ℚ), 2⟩,
    ⟨(402739325189/1000000000000 : ℚ), (79813403/1250000000 : ℚ), (-35603950123/1000000000000 : ℚ), 2⟩,
    ⟨(41232365119/100000000000 : ℚ), (64047737/10000000000 : ℚ), (-6100044623/500000000000 : ℚ), 2⟩,
    ⟨(84315370721/200000000000 : ℚ), (-20709109/500000000 : ℚ), (7734558481/1000000000000 : ℚ), 2⟩,
    ⟨(86081963807/200000000000 : ℚ), (-101764549/1250000000 : ℚ), (24767820929/1000000000000 : ℚ), 2⟩,
    ⟨(109684370299/250000000000 : ℚ), (-574696289/5000000000 : ℚ), (7867095189/200000000000 : ℚ), 2⟩,
    ⟨(446479640149/1000000000000 : ℚ), (-1430459359/10000000000 : ℚ), (51773979077/1000000000000 : ℚ), 2⟩,
    ⟨(45356173467/100000000000 : ℚ), (-1665364951/10000000000 : ℚ), (31172026673/500000000000 : ℚ), 2⟩,
    ⟨(459915560317/1000000000000 : ℚ), (-1860325933/10000000000 : ℚ), (71247933269/1000000000000 : ℚ), 2⟩,
    ⟨(465479926277/1000000000000 : ℚ), (-252517691/1250000000 : ℚ), (39321058649/500000000000 : ℚ), 2⟩,
    ⟨(470201244663/1000000000000 : ℚ), (-2148497417/10000000000 : ℚ), (16929375387/200000000000 : ℚ), 2⟩,
    ⟨(474034046599/1000000000000 : ℚ), (-562047261/2500000000 : ℚ), (1116917129/12500000000 : ℚ), 2⟩,
    ⟨(238470710053/500000000000 : ℚ), (-580321237/2500000000 : ℚ), (92828939651/1000000000000 : ℚ), 2⟩,
    ⟨(119723841397/250000000000 : ℚ), (-2369244169/10000000000 : ℚ), (47560492047/500000000000 : ℚ), 2⟩,
    ⟨(239938532741/500000000000 : ℚ), (-2392997277/10000000000 : ℚ), (24064918371/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2395955917/10000000000 : ℚ), (96401670047/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (30341781557/100000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control230.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control230.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate230
