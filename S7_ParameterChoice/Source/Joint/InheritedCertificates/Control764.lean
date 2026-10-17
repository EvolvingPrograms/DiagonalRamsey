import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate764
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71328563123/250000000000 : ℚ), (13728891762959/10000000000 : ℚ), (-49020114585329/125000000000 : ℚ), 13⟩,
    ⟨(142884957741/500000000000 : ℚ), (1504919784387/10000000000 : ℚ), (-43291040350759/1000000000000 : ℚ), 10⟩,
    ⟨(14333842659/50000000000 : ℚ), (529310035519/10000000000 : ℚ), (-3845336586599/250000000000 : ℚ), 9⟩,
    ⟨(144013165639/500000000000 : ℚ), (130785667449/5000000000 : ℚ), (-961476202719/125000000000 : ℚ), 8⟩,
    ⟨(144902676783/500000000000 : ℚ), (75991625877/5000000000 : ℚ), (-4527244856861/1000000000000 : ℚ), 7⟩,
    ⟨(58399357417/200000000000 : ℚ), (96883881377/10000000000 : ℚ), (-1462596382187/500000000000 : ℚ), 6⟩,
    ⟨(147289763567/500000000000 : ℚ), (32723298551/5000000000 : ℚ), (-1001808708883/500000000000 : ℚ), 6⟩,
    ⟨(148764350257/500000000000 : ℚ), (4590187369/1000000000 : ℚ), (-89078471661/62500000000 : ℚ), 6⟩,
    ⟨(300815905073/1000000000000 : ℚ), (32971042347/10000000000 : ℚ), (-1038572108537/1000000000000 : ℚ), 5⟩,
    ⟨(152204741617/500000000000 : ℚ), (187519933/78125000 : ℚ), (-383644159159/500000000000 : ℚ), 5⟩,
    ⟨(493239723/1600000000 : ℚ), (17547243841/10000000000 : ℚ), (-113922697279/200000000000 : ℚ), 5⟩,
    ⟨(312374710623/1000000000000 : ℚ), (127596277/100000000 : ℚ), (-210548543677/500000000000 : ℚ), 5⟩,
    ⟨(158334825179/500000000000 : ℚ), (9120029107/10000000000 : ℚ), (-306663139663/1000000000000 : ℚ), 4⟩,
    ⟨(321118283461/1000000000000 : ℚ), (6295179683/10000000000 : ℚ), (-216609029883/1000000000000 : ℚ), 4⟩,
    ⟨(81419441791/250000000000 : ℚ), (126990581/312500000 : ℚ), (-72232157037/500000000000 : ℚ), 4⟩,
    ⟨(165152095573/500000000000 : ℚ), (227412229/1000000000 : ℚ), (-85783227607/1000000000000 : ℚ), 4⟩,
    ⟨(66990600083/200000000000 : ℚ), (820201599/10000000000 : ℚ), (-59892839/1600000000 : ℚ), 4⟩,
    ⟨(339579424397/1000000000000 : ℚ), (-74839037/2000000000 : ℚ), (2841572193/1000000000000 : ℚ), 4⟩,
    ⟨(3441389081/10000000000 : ℚ), (-272922683/2000000000 : ℚ), (36693775671/1000000000000 : ℚ), 4⟩,
    ⟨(348587541203/1000000000000 : ℚ), (-2192202733/10000000000 : ℚ), (13070786663/200000000000 : ℚ), 4⟩,
    ⟨(352882480937/1000000000000 : ℚ), (-721960019/2500000000 : ℚ), (44874559879/500000000000 : ℚ), 4⟩,
    ⟨(178491182343/500000000000 : ℚ), (-1737468801/5000000000 : ℚ), (3455774787/31250000000 : ℚ), 4⟩,
    ⟨(360847708327/1000000000000 : ℚ), (-794278747/2000000000 : ℚ), (12840172171/100000000000 : ℚ), 4⟩,
    ⟨(45555160811/125000000000 : ℚ), (-1097743383/2500000000 : ℚ), (17952054477/125000000000 : ℚ), 3⟩,
    ⟨(367728491047/1000000000000 : ℚ), (-4744301339/10000000000 : ℚ), (78275245417/500000000000 : ℚ), 3⟩,
    ⟨(185338832213/500000000000 : ℚ), (-503958493/1000000000 : ℚ), (167451978331/1000000000000 : ℚ), 3⟩,
    ⟨(14930416179/40000000000 : ℚ), (-5283150159/10000000000 : ℚ), (176511564753/1000000000000 : ℚ), 3⟩,
    ⟨(75090367599/200000000000 : ℚ), (-5479839137/10000000000 : ℚ), (18387457743/100000000000 : ℚ), 3⟩,
    ⟨(377230860283/1000000000000 : ℚ), (-2816653929/5000000000 : ℚ), (189650160621/1000000000000 : ℚ), 3⟩,
    ⟨(378580338381/1000000000000 : ℚ), (-5746247691/10000000000 : ℚ), (38783637493/200000000000 : ℚ), 3⟩,
    ⟨(189743638039/500000000000 : ℚ), (-727568411/1250000000 : ℚ), (9836719191/50000000000 : ℚ), 3⟩,
    ⟨(379942939069/1000000000000 : ℚ), (-585740601/1000000000 : ℚ), (99066982011/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-46895999/80000000 : ℚ), (39661703557/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (11118229481/25000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control764.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control764.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate764
