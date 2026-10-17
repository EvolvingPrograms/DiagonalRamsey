import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate204
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(302024003559/1000000000000 : ℚ), (6016390939947/5000000000 : ℚ), (-182164146016779/500000000000 : ℚ), 11⟩,
    ⟨(303072985027/1000000000000 : ℚ), (1310723181421/10000000000 : ℚ), (-40289436878731/1000000000000 : ℚ), 8⟩,
    ⟨(305160845697/1000000000000 : ℚ), (457351568389/10000000000 : ℚ), (-14366285940903/1000000000000 : ℚ), 7⟩,
    ⟨(308267478331/1000000000000 : ℚ), (700720183/31250000 : ℚ), (-7224134952743/1000000000000 : ℚ), 6⟩,
    ⟨(156181482179/500000000000 : ℚ), (64704482839/5000000000 : ℚ), (-4284905948463/1000000000000 : ℚ), 5⟩,
    ⟨(39675982751/125000000000 : ℚ), (8210588323/1000000000 : ℚ), (-2796987709077/1000000000000 : ℚ), 4⟩,
    ⟨(323353586159/1000000000000 : ℚ), (11072846031/2000000000 : ℚ), (-970558481143/500000000000 : ℚ), 4⟩,
    ⟨(165071438119/500000000000 : ℚ), (19455341179/5000000000 : ℚ), (-702014525471/500000000000 : ℚ), 4⟩,
    ⟨(337710347669/1000000000000 : ℚ), (5629592819/2000000000 : ℚ), (-261242310129/250000000000 : ℚ), 3⟩,
    ⟨(172991560783/500000000000 : ℚ), (2596636869/1250000000 : ℚ), (-793084063279/1000000000000 : ℚ), 3⟩,
    ⟨(177440763297/500000000000 : ℚ), (15531553007/10000000000 : ℚ), (-304777548693/500000000000 : ℚ), 3⟩,
    ⟨(45539983281/125000000000 : ℚ), (467770493/400000000 : ℚ), (-58958951747/125000000000 : ℚ), 3⟩,
    ⟨(187103622079/500000000000 : ℚ), (1763031569/2000000000 : ℚ), (-365431816921/1000000000000 : ℚ), 3⟩,
    ⟨(384448439469/1000000000000 : ℚ), (13219381/20000000 : ℚ), (-70456553999/250000000000 : ℚ), 3⟩,
    ⟨(6171012873/15625000000 : ℚ), (4889973007/10000000000 : ℚ), (-68751517/320000000 : ℚ), 2⟩,
    ⟨(50699413931/125000000000 : ℚ), (3528306091/10000000000 : ℚ), (-80186769731/500000000000 : ℚ), 2⟩,
    ⟨(416297332179/1000000000000 : ℚ), (608936581/2500000000 : ℚ), (-115496039739/1000000000000 : ℚ), 2⟩,
    ⟨(85389563951/200000000000 : ℚ), (309806709/2000000000 : ℚ), (-19531368257/250000000000 : ℚ), 2⟩,
    ⟨(437444204159/1000000000000 : ℚ), (822357067/10000000000 : ℚ), (-11682482583/250000000000 : ℚ), 2⟩,
    ⟨(44768539947/100000000000 : ℚ), (222023199/10000000000 : ℚ), (-20169341209/1000000000000 : ℚ), 2⟩,
    ⟨(22878638869/50000000000 : ℚ), (-277083247/10000000000 : ℚ), (2415857153/1000000000000 : ℚ), 2⟩,
    ⟨(233505558517/500000000000 : ℚ), (-346948803/5000000000 : ℚ), (10840358967/500000000000 : ℚ), 2⟩,
    ⟨(237954761031/500000000000 : ℚ), (-208566437/2000000000 : ℚ), (38128710257/1000000000000 : ℚ), 2⟩,
    ⟨(484182295959/1000000000000 : ℚ), (-5339759/40000000 : ℚ), (26074619831/500000000000 : ℚ), 2⟩,
    ⟨(49174976739/100000000000 : ℚ), (-31574849/200000000 : ℚ), (64044672883/1000000000000 : ℚ), 2⟩,
    ⟨(498539057469/1000000000000 : ℚ), (-445207429/2500000000 : ℚ), (7405007551/100000000000 : ℚ), 2⟩,
    ⟨(25224239081/50000000000 : ℚ), (-1946293829/10000000000 : ℚ), (16469558789/200000000000 : ℚ), 2⟩,
    ⟨(50952967927/100000000000 : ℚ), (-2079049383/10000000000 : ℚ), (89078315051/1000000000000 : ℚ), 2⟩,
    ⟨(32101572831/62500000000 : ℚ), (-1091034081/5000000000 : ℚ), (2948386977/31250000000 : ℚ), 2⟩,
    ⟨(51673179793/100000000000 : ℚ), (-451510191/2000000000 : ℚ), (98237036617/1000000000000 : ℚ), 2⟩,
    ⟨(518819658601/1000000000000 : ℚ), (-2307051117/10000000000 : ℚ), (50400009027/500000000000 : ℚ), 2⟩,
    ⟨(519868640069/1000000000000 : ℚ), (-2331559861/10000000000 : ℚ), (25518215811/250000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1167306133/5000000000 : ℚ), (51115784133/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (55073836833/200000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control204.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control204.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate204
