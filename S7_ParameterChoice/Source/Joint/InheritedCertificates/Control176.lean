import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate176
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49169453953/200000000000 : ℚ), (281373129993/250000000 : ℚ), (-138725947919883/500000000000 : ℚ), 11⟩,
    ⟨(123390802413/500000000000 : ℚ), (1224374953653/10000000000 : ℚ), (-613622609139/20000000000 : ℚ), 8⟩,
    ⟨(24864127679/100000000000 : ℚ), (213211352479/5000000000 : ℚ), (-10939369479653/1000000000000 : ℚ), 7⟩,
    ⟨(251408376001/1000000000000 : ℚ), (208610228377/10000000000 : ℚ), (-2750090922981/500000000000 : ℚ), 6⟩,
    ⟨(12752812689/50000000000 : ℚ), (120107000793/10000000000 : ℚ), (-652335852197/200000000000 : ℚ), 5⟩,
    ⟨(259549779069/1000000000000 : ℚ), (76010415803/10000000000 : ℚ), (-532095134633/250000000000 : ℚ), 4⟩,
    ⟨(52969135353/200000000000 : ℚ), (10223138109/2000000000 : ℚ), (-738188970147/500000000000 : ℚ), 4⟩,
    ⟨(67723236119/250000000000 : ℚ), (35820498171/10000000000 : ℚ), (-1067105661633/1000000000000 : ℚ), 4⟩,
    ⟨(27763334371/100000000000 : ℚ), (6457418383/2500000000 : ℚ), (-198343184723/250000000000 : ℚ), 3⟩,
    ⟨(8906311273/31250000000 : ℚ), (1899274151/1000000000 : ℚ), (-601221862477/1000000000000 : ℚ), 3⟩,
    ⟨(58585566349/200000000000 : ℚ), (14139048421/10000000000 : ℚ), (-230546269583/500000000000 : ℚ), 3⟩,
    ⟨(301334626267/1000000000000 : ℚ), (5294413343/5000000000 : ℚ), (-177845847577/500000000000 : ℚ), 3⟩,
    ⟨(155070691137/500000000000 : ℚ), (7926599473/10000000000 : ℚ), (-27435916743/100000000000 : ℚ), 3⟩,
    ⟨(79815821473/250000000000 : ℚ), (735956023/1250000000 : ℚ), (-210237289349/1000000000000 : ℚ), 3⟩,
    ⟨(164306244101/500000000000 : ℚ), (4297423393/10000000000 : ℚ), (-79378011309/500000000000 : ℚ), 2⟩,
    ⟨(84524737819/250000000000 : ℚ), (3037479599/10000000000 : ℚ), (-58389239367/500000000000 : ℚ), 2⟩,
    ⟨(43453914411/125000000000 : ℚ), (2025465337/10000000000 : ℚ), (-20524282993/250000000000 : ℚ), 2⟩,
    ⟨(178558889181/500000000000 : ℚ), (1202923327/10000000000 : ℚ), (-13281333743/250000000000 : ℚ), 2⟩,
    ⟨(5726046573/15625000000 : ℚ), (105522081/2000000000 : ℚ), (-5740426537/200000000000 : ℚ), 2⟩,
    ⟨(37558888429/100000000000 : ℚ), (-7868311/2500000000 : ℚ), (-3982585101/500000000000 : ℚ), 2⟩,
    ⟨(384395640297/1000000000000 : ℚ), (-124345029/2500000000 : ℚ), (1216772783/125000000000 : ℚ), 2⟩,
    ⟨(392802434819/1000000000000 : ℚ), (-443723907/5000000000 : ℚ), (24888801841/1000000000000 : ℚ), 2⟩,
    ⟨(100182076457/250000000000 : ℚ), (-1214839593/10000000000 : ℚ), (2367263519/62500000000 : ℚ), 2⟩,
    ⟨(204048461427/500000000000 : ℚ), (-297925011/2000000000 : ℚ), (24493637869/500000000000 : ℚ), 2⟩,
    ⟨(51854665261/125000000000 : ℚ), (-859774601/5000000000 : ℚ), (14611707373/250000000000 : ℚ), 2⟩,
    ⟨(420884589799/1000000000000 : ℚ), (-1910586433/10000000000 : ℚ), (66428848061/1000000000000 : ℚ), 2⟩,
    ⟨(85236097499/200000000000 : ℚ), (-41346871/200000000 : ℚ), (18266902713/250000000000 : ℚ), 2⟩,
    ⟨(26917125799/62500000000 : ℚ), (-2193354871/10000000000 : ℚ), (78466049683/1000000000000 : ℚ), 2⟩,
    ⟨(434321890563/1000000000000 : ℚ), (-572824701/2500000000 : ℚ), (41350995291/500000000000 : ℚ), 2⟩,
    ⟨(437088989773/1000000000000 : ℚ), (-2363155989/10000000000 : ℚ), (42916400059/500000000000 : ℚ), 2⟩,
    ⟨(219474330869/500000000000 : ℚ), (-1205161399/5000000000 : ℚ), (43949390719/500000000000 : ℚ), 2⟩,
    ⟨(439882996799/1000000000000 : ℚ), (-121684477/500000000 : ℚ), (44462775689/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-121830017/500000000 : ℚ), (8905360953/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (12053794893/40000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control176.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control176.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate176
