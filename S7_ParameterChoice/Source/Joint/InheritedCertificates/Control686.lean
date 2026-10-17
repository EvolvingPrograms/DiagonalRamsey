import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate686
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(261744016159/1000000000000 : ℚ), (8291363741641/5000000000 : ℚ), (-434555634134449/1000000000000 : ℚ), 13⟩,
    ⟨(262168736739/1000000000000 : ℚ), (1817433929461/10000000000 : ℚ), (-47967471637113/1000000000000 : ℚ), 10⟩,
    ⟨(131507043803/500000000000 : ℚ), (1997003551/31250000 : ℚ), (-17040257012773/1000000000000 : ℚ), 8⟩,
    ⟨(26427192757/100000000000 : ℚ), (157835145173/5000000000 : ℚ), (-4259644341441/500000000000 : ℚ), 7⟩,
    ⟨(8310316967/31250000000 : ℚ), (22915040041/1250000000 : ℚ), (-1002497631217/200000000000 : ℚ), 7⟩,
    ⟨(267972764209/1000000000000 : ℚ), (4671244433/400000000 : ℚ), (-1618554323613/500000000000 : ℚ), 6⟩,
    ⟨(67595029951/250000000000 : ℚ), (78818864027/10000000000 : ℚ), (-5539382537/2500000000 : ℚ), 6⟩,
    ⟨(273129025579/1000000000000 : ℚ), (27609097593/5000000000 : ℚ), (-157469536033/100000000000 : ℚ), 5⟩,
    ⟨(276193008069/1000000000000 : ℚ), (39603685741/10000000000 : ℚ), (-573009177299/500000000000 : ℚ), 5⟩,
    ⟨(34942819931/125000000000 : ℚ), (14386511357/5000000000 : ℚ), (-105649694339/125000000000 : ℚ), 5⟩,
    ⟨(35393177713/125000000000 : ℚ), (20976153177/10000000000 : ℚ), (-312962795133/500000000000 : ℚ), 4⟩,
    ⟨(57393379461/200000000000 : ℚ), (759606053/500000000 : ℚ), (-230555141709/500000000000 : ℚ), 4⟩,
    ⟨(290970183351/1000000000000 : ℚ), (10793479639/10000000000 : ℚ), (-66809564271/200000000000 : ℚ), 4⟩,
    ⟨(295116726011/1000000000000 : ℚ), (1844477331/2500000000 : ℚ), (-233988977869/1000000000000 : ℚ), 4⟩,
    ⟨(29936659181/100000000000 : ℚ), (467821581/1000000000 : ℚ), (-153766394407/1000000000000 : ℚ), 4⟩,
    ⟨(151839426109/500000000000 : ℚ), (1255819557/5000000000 : ℚ), (-11057063251/125000000000 : ℚ), 4⟩,
    ⟨(30801197781/100000000000 : ℚ), (187504419/2500000000 : ℚ), (-34590893691/1000000000000 : ℚ), 4⟩,
    ⟨(156162119109/500000000000 : ℚ), (-87305719/1250000000 : ℚ), (322700253/31250000000 : ℚ), 3⟩,
    ⟨(316574104017/1000000000000 : ℚ), (-950348057/5000000000 : ℚ), (48124152919/1000000000000 : ℚ), 3⟩,
    ⟨(320720646677/1000000000000 : ℚ), (-2906303557/10000000000 : ℚ), (80162517041/1000000000000 : ℚ), 3⟩,
    ⟨(324723932723/1000000000000 : ℚ), (-469055453/1250000000 : ℚ), (6716605407/62500000000 : ℚ), 3⟩,
    ⟨(82136352081/250000000000 : ℚ), (-4467288993/10000000000 : ℚ), (16351550389/125000000000 : ℚ), 3⟩,
    ⟨(16607413529/50000000000 : ℚ), (-5072366071/10000000000 : ℚ), (75399550217/500000000000 : ℚ), 3⟩,
    ⟨(335497821959/1000000000000 : ℚ), (-5584222083/10000000000 : ℚ), (167884777131/1000000000000 : ℚ), 3⟩,
    ⟨(338561804449/1000000000000 : ℚ), (-6015623573/10000000000 : ℚ), (91211728939/500000000000 : ℚ), 3⟩,
    ⟨(21331919389/62500000000 : ℚ), (-637643031/1000000000 : ℚ), (194688053617/1000000000000 : ℚ), 3⟩,
    ⟨(343718065819/1000000000000 : ℚ), (-6674240043/10000000000 : ℚ), (8195525731/40000000000 : ℚ), 3⟩,
    ⟨(86440171771/250000000000 : ℚ), (-1728717053/2500000000 : ℚ), (213183363839/1000000000000 : ℚ), 3⟩,
    ⟨(173709451229/500000000000 : ℚ), (-7102706061/10000000000 : ℚ), (21969354251/100000000000 : ℚ), 3⟩,
    ⟨(174338371211/500000000000 : ℚ), (-724098677/1000000000 : ℚ), (44901267117/200000000000 : ℚ), 3⟩,
    ⟨(349522093289/1000000000000 : ℚ), (-916497463/1250000000 : ℚ), (28460360359/125000000000 : ℚ), 3⟩,
    ⟨(349946813869/1000000000000 : ℚ), (-7377126291/10000000000 : ℚ), (5731545331/25000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1476550683/2000000000 : ℚ), (229458747587/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (381259388269/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control686.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control686.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate686
