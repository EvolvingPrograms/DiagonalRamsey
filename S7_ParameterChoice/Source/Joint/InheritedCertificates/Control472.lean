import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate472
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(174031755721/1000000000000 : ℚ), (17071599752721/10000000000 : ℚ), (-297551604314379/1000000000000 : ℚ), 12⟩,
    ⟨(174397343133/1000000000000 : ℚ), (1867727402169/10000000000 : ℚ), (-16426819096479/500000000000 : ℚ), 9⟩,
    ⟨(3502499943/20000000000 : ℚ), (81897888193/1250000000 : ℚ), (-2919393927463/250000000000 : ℚ), 8⟩,
    ⟨(88103855033/500000000000 : ℚ), (322821631923/10000000000 : ℚ), (-1460767082667/250000000000 : ℚ), 7⟩,
    ⟨(35527010953/200000000000 : ℚ), (187001135359/10000000000 : ℚ), (-688343126519/200000000000 : ℚ), 6⟩,
    ⟨(11212080321/62500000000 : ℚ), (59422237333/5000000000 : ℚ), (-2225813172399/1000000000000 : ℚ), 5⟩,
    ⟨(181465468459/1000000000000 : ℚ), (40020806703/5000000000 : ℚ), (-381533930817/250000000000 : ℚ), 5⟩,
    ⟨(183831648477/1000000000000 : ℚ), (27986561957/5000000000 : ℚ), (-217358764393/200000000000 : ℚ), 5⟩,
    ⟨(93234518791/500000000000 : ℚ), (40086190609/10000000000 : ℚ), (-39640813707/50000000000 : ℚ), 4⟩,
    ⟨(189352236277/1000000000000 : ℚ), (29091753053/10000000000 : ℚ), (-586331905569/1000000000000 : ℚ), 4⟩,
    ⟨(9622673889/50000000000 : ℚ), (21193931973/10000000000 : ℚ), (-217818812783/500000000000 : ℚ), 4⟩,
    ⟨(195742895441/1000000000000 : ℚ), (15346163661/10000000000 : ℚ), (-161093909073/500000000000 : ℚ), 4⟩,
    ⟨(19918881037/100000000000 : ℚ), (2181220747/2000000000 : ℚ), (-58637646037/250000000000 : ℚ), 3⟩,
    ⟨(202758036523/1000000000000 : ℚ), (7462526243/10000000000 : ℚ), (-165371881827/1000000000000 : ℚ), 3⟩,
    ⟨(206416200299/1000000000000 : ℚ), (741067/1562500 : ℚ), (-109750847061/1000000000000 : ℚ), 3⟩,
    ⟨(6566502237/31250000000 : ℚ), (256095453/1000000000 : ℚ), (-32161754709/500000000000 : ℚ), 3⟩,
    ⟨(106928951513/500000000000 : ℚ), (196687539/2500000000 : ℚ), (-26722676863/1000000000000 : ℚ), 3⟩,
    ⟨(21756977431/100000000000 : ℚ), (-16818847/250000000 : ℚ), (594088671/125000000000 : ℚ), 3⟩,
    ⟨(221227938087/1000000000000 : ℚ), (-942578643/5000000000 : ℚ), (31346731881/1000000000000 : ℚ), 3⟩,
    ⟨(2809964553/12500000000 : ℚ), (-181272481/625000000 : ℚ), (53982664913/1000000000000 : ℚ), 3⟩,
    ⟨(228243079169/1000000000000 : ℚ), (-3755665659/10000000000 : ℚ), (73353917537/1000000000000 : ℚ), 3⟩,
    ⟨(23153249683/100000000000 : ℚ), (-4479258331/10000000000 : ℚ), (44993091031/500000000000 : ℚ), 3⟩,
    ⟨(234633738333/1000000000000 : ℚ), (-5092610009/10000000000 : ℚ), (104280797433/1000000000000 : ℚ), 3⟩,
    ⟨(237516937027/1000000000000 : ℚ), (-14030461/25000000 : ℚ), (5827279313/50000000000 : ℚ), 3⟩,
    ⟨(240154326133/1000000000000 : ℚ), (-756332173/1250000000 : ℚ), (3969286383/31250000000 : ℚ), 3⟩,
    ⟨(242520506151/1000000000000 : ℚ), (-6417804201/10000000000 : ℚ), (16984666409/125000000000 : ℚ), 3⟩,
    ⟨(122296344737/500000000000 : ℚ), (-6721151149/10000000000 : ℚ), (2238519823/15625000000 : ℚ), 3⟩,
    ⟨(49270183969/200000000000 : ℚ), (-6966457859/10000000000 : ℚ), (149286701543/1000000000000 : ℚ), 3⟩,
    ⟨(247778264543/1000000000000 : ℚ), (-7158075069/10000000000 : ℚ), (9626300443/62500000000 : ℚ), 3⟩,
    ⟨(12443048873/50000000000 : ℚ), (-1824802169/2500000000 : ℚ), (4922668737/31250000000 : ℚ), 3⟩,
    ⟨(249588631477/1000000000000 : ℚ), (-924013893/1250000000 : ℚ), (31968150049/200000000000 : ℚ), 3⟩,
    ⟨(249954218889/1000000000000 : ℚ), (-7438214533/10000000000 : ℚ), (16099228001/100000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7443961347/10000000000 : ℚ), (161135937197/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (371062513809/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control472.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control472.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate472
