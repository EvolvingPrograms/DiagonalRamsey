import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate295
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(259311606541/1000000000000 : ℚ), (10965196436941/10000000000 : ℚ), (-142531478850311/500000000000 : ℚ), 11⟩,
    ⟨(260229269927/1000000000000 : ℚ), (597017913081/5000000000 : ℚ), (-31520441436163/1000000000000 : ℚ), 8⟩,
    ⟨(131027879549/500000000000 : ℚ), (416418769513/10000000000 : ℚ), (-5618465290217/500000000000 : ℚ), 7⟩,
    ⟨(52954696793/200000000000 : ℚ), (102011105607/5000000000 : ℚ), (-1129694921253/200000000000 : ℚ), 6⟩,
    ⟨(268356271353/1000000000000 : ℚ), (7352818619/625000000 : ℚ), (-104641737461/31250000000 : ℚ), 5⟩,
    ⟨(272769617059/1000000000000 : ℚ), (4660126671/625000000 : ℚ), (-1066470667/488281250 : ℚ), 5⟩,
    ⟨(277971018153/1000000000000 : ℚ), (25104760939/5000000000 : ℚ), (-94639851161/62500000000 : ℚ), 4⟩,
    ⟨(283910382299/1000000000000 : ℚ), (8806785201/2500000000 : ℚ), (-1093742860343/1000000000000 : ℚ), 4⟩,
    ⟨(72632627543/250000000000 : ℚ), (1589159377/625000000 : ℚ), (-81251746601/100000000000 : ℚ), 4⟩,
    ⟨(297767646323/1000000000000 : ℚ), (58468477/31250000 : ℚ), (-307562614169/500000000000 : ℚ), 3⟩,
    ⟨(152776046587/500000000000 : ℚ), (1741832237/1250000000 : ℚ), (-471195656151/1000000000000 : ℚ), 3⟩,
    ⟨(313808882247/1000000000000 : ℚ), (5218459403/5000000000 : ℚ), (-36296168193/100000000000 : ℚ), 3⟩,
    ⟨(322458496149/1000000000000 : ℚ), (3905318647/5000000000 : ℚ), (-279470537637/1000000000000 : ℚ), 3⟩,
    ⟨(33141763437/100000000000 : ℚ), (1159373947/2000000000 : ℚ), (-213675711913/1000000000000 : ℚ), 3⟩,
    ⟨(42575001939/125000000000 : ℚ), (2112350933/5000000000 : ℚ), (-32176116163/200000000000 : ℚ), 3⟩,
    ⟨(10934912757/31250000000 : ℚ), (2978022361/10000000000 : ℚ), (-14732571109/125000000000 : ℚ), 3⟩,
    ⟨(359279482847/1000000000000 : ℚ), (988000457/5000000000 : ℚ), (-20586408131/250000000000 : ℚ), 2⟩,
    ⟨(368596675559/1000000000000 : ℚ), (1161182343/10000000000 : ℚ), (-1646981503/31250000000 : ℚ), 2⟩,
    ⟨(3777790567/10000000000 : ℚ), (1921831/39062500 : ℚ), (-6934690673/250000000000 : ℚ), 2⟩,
    ⟨(386738194921/1000000000000 : ℚ), (-62135691/10000000000 : ℚ), (-3281650163/500000000000 : ℚ), 2⟩,
    ⟨(395387808823/1000000000000 : ℚ), (-261972931/5000000000 : ℚ), (2872941331/250000000000 : ℚ), 2⟩,
    ⟨(50455574737/125000000000 : ℚ), (-22764481/250000000 : ℚ), (13467554841/500000000000 : ℚ), 2⟩,
    ⟨(411429044747/1000000000000 : ℚ), (-1235063873/10000000000 : ℚ), (20078378109/500000000000 : ℚ), 2⟩,
    ⟨(209333090449/500000000000 : ℚ), (-753688707/5000000000 : ℚ), (25728747133/500000000000 : ℚ), 2⟩,
    ⟨(106321577193/250000000000 : ℚ), (-867600851/5000000000 : ℚ), (30535047967/500000000000 : ℚ), 2⟩,
    ⟨(431225672917/1000000000000 : ℚ), (-1924467111/10000000000 : ℚ), (69174836071/1000000000000 : ℚ), 2⟩,
    ⟨(436427074011/1000000000000 : ℚ), (-1039874601/5000000000 : ℚ), (75910981801/1000000000000 : ℚ), 2⟩,
    ⟨(220420209859/500000000000 : ℚ), (-551139927/2500000000 : ℚ), (2034634199/25000000000 : ℚ), 2⟩,
    ⟨(88884641421/200000000000 : ℚ), (-287695063/1250000000 : ℚ), (2677463141/31250000000 : ℚ), 2⟩,
    ⟨(447140931973/1000000000000 : ℚ), (-593180039/2500000000 : ℚ), (22212736069/250000000000 : ℚ), 2⟩,
    ⟨(56120927643/125000000000 : ℚ), (-302428313/1250000000 : ℚ), (90943628363/1000000000000 : ℚ), 2⟩,
    ⟨(449885084529/1000000000000 : ℚ), (-2442564363/10000000000 : ℚ), (91983502801/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-305680827/1250000000 : ℚ), (736905501/8000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (84267590039/250000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control295.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control295.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate295
