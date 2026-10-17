import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate376
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7338104737/31250000000 : ℚ), (1002096179297/625000000 : ℚ), (-188571297901947/500000000000 : ℚ), 12⟩,
    ⟨(235373643651/1000000000000 : ℚ), (1753014786797/10000000000 : ℚ), (-41662571333687/1000000000000 : ℚ), 9⟩,
    ⟨(4729537793/20000000000 : ℚ), (614550070603/10000000000 : ℚ), (-14823963241631/1000000000000 : ℚ), 7⟩,
    ⟨(119059232359/500000000000 : ℚ), (302696303193/10000000000 : ℚ), (-232168443667/31250000000 : ℚ), 6⟩,
    ⟨(24028255959/100000000000 : ℚ), (87685882133/5000000000 : ℚ), (-4386060399049/1000000000000 : ℚ), 6⟩,
    ⟨(242948332849/1000000000000 : ℚ), (55776319021/5000000000 : ℚ), (-711303947679/250000000000 : ℚ), 5⟩,
    ⟨(123045055821/500000000000 : ℚ), (75270520433/10000000000 : ℚ), (-1958673712967/1000000000000 : ℚ), 5⟩,
    ⟨(124838819461/500000000000 : ℚ), (10560589973/2000000000 : ℚ), (-701057973451/500000000000 : ℚ), 4⟩,
    ⟨(253676364839/1000000000000 : ℚ), (38000979259/10000000000 : ℚ), (-514912457427/500000000000 : ℚ), 4⟩,
    ⟨(129023889739/500000000000 : ℚ), (27779343613/10000000000 : ℚ), (-76845187829/100000000000 : ℚ), 4⟩,
    ⟨(10509991349/40000000000 : ℚ), (5113531187/2500000000 : ℚ), (-577813600589/1000000000000 : ℚ), 4⟩,
    ⟨(267737094709/1000000000000 : ℚ), (15044461047/10000000000 : ℚ), (-108600652589/250000000000 : ℚ), 3⟩,
    ⟨(272961681899/1000000000000 : ℚ), (5474323213/5000000000 : ℚ), (-161863641871/500000000000 : ℚ), 3⟩,
    ⟨(55674645933/200000000000 : ℚ), (7781689387/10000000000 : ℚ), (-236464148407/1000000000000 : ℚ), 3⟩,
    ⟨(141959810921/500000000000 : ℚ), (5288530787/10000000000 : ℚ), (-166398720063/1000000000000 : ℚ), 3⟩,
    ⟨(72386860911/250000000000 : ℚ), (3295192597/10000000000 : ℚ), (-109264164973/1000000000000 : ℚ), 3⟩,
    ⟨(73800624017/250000000000 : ℚ), (840020803/5000000000 : ℚ), (-62056727211/1000000000000 : ℚ), 3⟩,
    ⟨(300830317869/1000000000000 : ℚ), (356238801/10000000000 : ℚ), (-22616649621/1000000000000 : ℚ), 3⟩,
    ⟨(306376710047/1000000000000 : ℚ), (-184833161/2500000000 : ℚ), (5318457731/500000000000 : ℚ), 3⟩,
    ⟨(311788257813/1000000000000 : ℚ), (-1653252283/10000000000 : ℚ), (3887847137/100000000000 : ℚ), 3⟩,
    ⟨(317012845003/1000000000000 : ℚ), (-2420341921/10000000000 : ℚ), (15747851571/250000000000 : ℚ), 3⟩,
    ⟨(322000155987/1000000000000 : ℚ), (-3066915447/10000000000 : ℚ), (83646708483/1000000000000 : ℚ), 2⟩,
    ⟨(163351080117/500000000000 : ℚ), (-90325799/250000000 : ℚ), (50678928873/500000000000 : ℚ), 2⟩,
    ⟨(331073574873/1000000000000 : ℚ), (-2037042523/5000000000 : ℚ), (58259912307/500000000000 : ℚ), 2⟩,
    ⟨(33507230079/100000000000 : ℚ), (-892388193/2000000000 : ℚ), (6471862591/50000000000 : ℚ), 2⟩,
    ⟨(338659828069/1000000000000 : ℚ), (-4785764497/10000000000 : ℚ), (140345126759/1000000000000 : ℚ), 2⟩,
    ⟨(341801606863/1000000000000 : ℚ), (-5052624497/10000000000 : ℚ), (74712068219/500000000000 : ℚ), 2⟩,
    ⟨(172233690061/500000000000 : ℚ), (-1053588231/2000000000 : ℚ), (78406088617/500000000000 : ℚ), 2⟩,
    ⟨(173315737497/500000000000 : ℚ), (-271790857/500000000 : ℚ), (81306507299/500000000000 : ℚ), 2⟩,
    ⟨(174136525031/500000000000 : ℚ), (-5559281513/10000000000 : ℚ), (166902767741/1000000000000 : ℚ), 2⟩,
    ⟨(17468814803/50000000000 : ℚ), (-352529139/625000000 : ℚ), (42433669451/250000000000 : ℚ), 2⟩,
    ⟨(10935330879/31250000000 : ℚ), (-1420182149/2500000000 : ℚ), (171142463911/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-710718263/1250000000 : ℚ), (85659029631/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (157641646217/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control376.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control376.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate376
