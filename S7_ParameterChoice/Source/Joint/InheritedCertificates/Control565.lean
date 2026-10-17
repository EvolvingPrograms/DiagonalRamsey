import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate565
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(55946475577/200000000000 : ℚ), (7944818019137/5000000000 : ℚ), (-111288510507129/250000000000 : ℚ), 12⟩,
    ⟨(280311150359/1000000000000 : ℚ), (108701238479/625000000 : ℚ), (-983406826243/20000000000 : ℚ), 9⟩,
    ⟨(70365780353/250000000000 : ℚ), (305322267071/5000000000 : ℚ), (-17491483921227/1000000000000 : ℚ), 8⟩,
    ⟨(283177196933/1000000000000 : ℚ), (75320780539/2500000000 : ℚ), (-175268615577/20000000000 : ℚ), 7⟩,
    ⟨(142718434719/500000000000 : ℚ), (174857058073/10000000000 : ℚ), (-2585705010641/500000000000 : ℚ), 6⟩,
    ⟨(72055094261/250000000000 : ℚ), (27853890177/2500000000 : ℚ), (-1676445634553/500000000000 : ℚ), 5⟩,
    ⟨(291500913053/1000000000000 : ℚ), (37650525677/5000000000 : ℚ), (-230672249127/100000000000 : ℚ), 5⟩,
    ⟨(295246884109/1000000000000 : ℚ), (52905758143/10000000000 : ℚ), (-103130907273/62500000000 : ℚ), 5⟩,
    ⟨(4678472101/15625000000 : ℚ), (19064978491/5000000000 : ℚ), (-121100886387/100000000000 : ℚ), 4⟩,
    ⟨(151993346701/500000000000 : ℚ), (27911737693/10000000000 : ℚ), (-902886950429/1000000000000 : ℚ), 4⟩,
    ⟨(154448181249/500000000000 : ℚ), (411580549/200000000 : ℚ), (-678296354639/1000000000000 : ℚ), 4⟩,
    ⟨(157051969477/500000000000 : ℚ), (3031444291/2000000000 : ℚ), (-509487113119/1000000000000 : ℚ), 4⟩,
    ⟨(319559270961/1000000000000 : ℚ), (5523986319/5000000000 : ℚ), (-189675164827/500000000000 : ℚ), 4⟩,
    ⟨(32520982069/100000000000 : ℚ), (98350881/125000000 : ℚ), (-276876577153/1000000000000 : ℚ), 3⟩,
    ⟨(331001170259/1000000000000 : ℚ), (5363347201/10000000000 : ℚ), (-24340678503/125000000000 : ℚ), 3⟩,
    ⟨(67375509161/200000000000 : ℚ), (3360204187/10000000000 : ℚ), (-31963690531/250000000000 : ℚ), 3⟩,
    ⟨(17139117731/50000000000 : ℚ), (1737091651/10000000000 : ℚ), (-72712847171/1000000000000 : ℚ), 3⟩,
    ⟨(174329365083/500000000000 : ℚ), (40708573/1000000000 : ℚ), (-26743812009/1000000000000 : ℚ), 3⟩,
    ⟨(70890015947/200000000000 : ℚ), (-27724241/400000000 : ℚ), (5962554081/500000000000 : ℚ), 3⟩,
    ⟨(45012578683/125000000000 : ℚ), (-805140849/5000000000 : ℚ), (8937422327/200000000000 : ℚ), 3⟩,
    ⟨(365555961471/1000000000000 : ℚ), (-2379494741/10000000000 : ℚ), (72591694817/1000000000000 : ℚ), 3⟩,
    ⟨(185381768963/500000000000 : ℚ), (-605457083/2000000000 : ℚ), (48218713589/500000000000 : ℚ), 3⟩,
    ⟨(187836603511/500000000000 : ℚ), (-357392287/1000000000 : ℚ), (58418308933/500000000000 : ℚ), 3⟩,
    ⟨(380237685961/1000000000000 : ℚ), (-4034988277/10000000000 : ℚ), (16782655441/125000000000 : ℚ), 3⟩,
    ⟨(76882603263/200000000000 : ℚ), (-4422510183/10000000000 : ℚ), (29815225919/200000000000 : ℚ), 3⟩,
    ⟨(388158987371/1000000000000 : ℚ), (-4745789777/10000000000 : ℚ), (161563291803/1000000000000 : ℚ), 3⟩,
    ⟨(19571976169/50000000000 : ℚ), (-2506003707/5000000000 : ℚ), (3438800543/20000000000 : ℚ), 3⟩,
    ⟨(394223030987/1000000000000 : ℚ), (-2613335911/5000000000 : ℚ), (45093122101/250000000000 : ℚ), 3⟩,
    ⟨(99120675873/250000000000 : ℚ), (-5393953743/10000000000 : ℚ), (186985913629/1000000000000 : ℚ), 3⟩,
    ⟨(398196779013/1000000000000 : ℚ), (-2758466273/5000000000 : ℚ), (19187230339/100000000000 : ℚ), 3⟩,
    ⟨(199674375033/500000000000 : ℚ), (-1119555057/2000000000 : ℚ), (39019215601/200000000000 : ℚ), 3⟩,
    ⟨(19996376127/50000000000 : ℚ), (-2818930679/5000000000 : ℚ), (98349034339/500000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-705357073/1250000000 : ℚ), (24612232451/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (65769410193/200000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control565.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control565.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate565
