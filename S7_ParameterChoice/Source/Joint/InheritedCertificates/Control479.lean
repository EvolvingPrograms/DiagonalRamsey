import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate479
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(479024284923/1000000000000 : ℚ), (7853107354871/5000000000 : ℚ), (-376799015373567/500000000000 : ℚ), 12⟩,
    ⟨(60010962769/125000000000 : ℚ), (107473077009/625000000 : ℚ), (-83329991764889/1000000000000 : ℚ), 9⟩,
    ⟨(482204295319/1000000000000 : ℚ), (302157977021/5000000000 : ℚ), (-29708833922539/1000000000000 : ℚ), 7⟩,
    ⟨(121338420119/250000000000 : ℚ), (29873379039/1000000000 : ℚ), (-7468009878029/500000000000 : ℚ), 6⟩,
    ⟨(489505527321/1000000000000 : ℚ), (173931627157/10000000000 : ℚ), (-1771415728797/200000000000 : ℚ), 6⟩,
    ⟨(247309925651/500000000000 : ℚ), (13920220279/1250000000 : ℚ), (-5780362913791/1000000000000 : ℚ), 5⟩,
    ⟨(12516184967/25000000000 : ℚ), (75787596711/10000000000 : ℚ), (-501406181097/125000000000 : ℚ), 5⟩,
    ⟨(507530120881/1000000000000 : ℚ), (6720469047/1250000000 : ℚ), (-362720239693/125000000000 : ℚ), 4⟩,
    ⟨(515201733527/1000000000000 : ℚ), (7852830311/2000000000 : ℚ), (-540188664771/250000000000 : ℚ), 4⟩,
    ⟨(104717670959/200000000000 : ℚ), (14632142777/5000000000 : ℚ), (-25651058579/15625000000 : ℚ), 4⟩,
    ⟨(532609216937/1000000000000 : ℚ), (22112717949/10000000000 : ℚ), (-1264200819319/1000000000000 : ℚ), 3⟩,
    ⟨(542177444119/1000000000000 : ℚ), (8423479209/5000000000 : ℚ), (-98136727483/100000000000 : ℚ), 3⟩,
    ⟨(552200889083/1000000000000 : ℚ), (2575221411/2000000000 : ℚ), (-382094991939/500000000000 : ℚ), 3⟩,
    ⟨(22503320823/40000000000 : ℚ), (1964336661/2000000000 : ℚ), (-297006800781/500000000000 : ℚ), 3⟩,
    ⟨(573223852993/1000000000000 : ℚ), (74325839/100000000 : ℚ), (-229195169273/500000000000 : ℚ), 3⟩,
    ⟨(73002613663/125000000000 : ℚ), (2768603819/5000000000 : ℚ), (-17437980737/50000000000 : ℚ), 3⟩,
    ⟨(594870207953/1000000000000 : ℚ), (2007645753/5000000000 : ℚ), (-259080360903/1000000000000 : ℚ), 3⟩,
    ⟨(75708408033/125000000000 : ℚ), (347588647/1250000000 : ℚ), (-92496941743/500000000000 : ℚ), 3⟩,
    ⟨(308154048341/500000000000 : ℚ), (55331863/312500000 : ℚ), (-30823632829/250000000000 : ℚ), 2⟩,
    ⟨(313345114087/500000000000 : ℚ), (938426403/10000000000 : ℚ), (-14317074679/200000000000 : ℚ), 2⟩,
    ⟨(318356836569/500000000000 : ℚ), (249095749/10000000000 : ℚ), (-28048593849/1000000000000 : ℚ), 2⟩,
    ⟨(4039261877/6250000000 : ℚ), (-162012517/5000000000 : ℚ), (10888751/1250000000 : ℚ), 2⟩,
    ⟨(327651381231/500000000000 : ℚ), (-160282227/2000000000 : ℚ), (19887364181/500000000000 : ℚ), 2⟩,
    ⟨(66368938373/100000000000 : ℚ), (-119891241/1000000000 : ℚ), (32993452627/500000000000 : ℚ), 2⟩,
    ⟨(83920124547/125000000000 : ℚ), (-1528863003/10000000000 : ℚ), (88010025023/1000000000000 : ℚ), 2⟩,
    ⟨(678243718577/1000000000000 : ℚ), (-225110603/1250000000 : ℚ), (53182449629/500000000000 : ℚ), 2⟩,
    ⟨(136854253191/200000000000 : ℚ), (-1011237767/5000000000 : ℚ), (121460193539/1000000000000 : ℚ), 2⟩,
    ⟨(43086599371/62500000000 : ℚ), (-2199442149/10000000000 : ℚ), (133614350717/1000000000000 : ℚ), 2⟩,
    ⟨(693537436781/1000000000000 : ℚ), (-2336221839/10000000000 : ℚ), (71535967187/500000000000 : ℚ), 2⟩,
    ⟨(348343410969/500000000000 : ℚ), (-1218059163/5000000000 : ℚ), (150015775551/1000000000000 : ℚ), 2⟩,
    ⟨(139760683021/200000000000 : ℚ), (-2501473207/10000000000 : ℚ), (30915171149/200000000000 : ℚ), 2⟩,
    ⟨(349933416167/500000000000 : ℚ), (-2533785121/10000000000 : ℚ), (39208884579/250000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-158612947/625000000 : ℚ), (78558526843/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (4224041351/20000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control479.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control479.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate479
