import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate652
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(523131241491/1000000000000 : ℚ), (17152843110273/10000000000 : ℚ), (-449201194279687/500000000000 : ℚ), 12⟩,
    ⟨(26199119983/50000000000 : ℚ), (376405749951/2000000000 : ℚ), (-9929911617129/100000000000 : ℚ), 9⟩,
    ⟨(262838259439/500000000000 : ℚ), (663313132953/10000000000 : ℚ), (-17685627896633/500000000000 : ℚ), 8⟩,
    ⟨(528197283853/1000000000000 : ℚ), (65779675957/2000000000 : ℚ), (-2219873688307/125000000000 : ℚ), 7⟩,
    ⟨(265760209119/500000000000 : ℚ), (192050202679/10000000000 : ℚ), (-2627930248099/250000000000 : ℚ), 6⟩,
    ⟨(267806959217/500000000000 : ℚ), (123271846441/10000000000 : ℚ), (-10693417771/1562500000 : ℚ), 6⟩,
    ⟨(135109590449/250000000000 : ℚ), (84054711493/10000000000 : ℚ), (-1183709108711/250000000000 : ℚ), 5⟩,
    ⟨(545947286297/1000000000000 : ℚ), (14924137101/2500000000 : ℚ), (-682468598383/200000000000 : ℚ), 5⟩,
    ⟨(276043818991/500000000000 : ℚ), (21801693873/5000000000 : ℚ), (-2529199754859/1000000000000 : ℚ), 4⟩,
    ⟨(558800281909/1000000000000 : ℚ), (32462923039/10000000000 : ℚ), (-477668891681/250000000000 : ℚ), 4⟩,
    ⟨(283010285823/500000000000 : ℚ), (24464761627/10000000000 : ℚ), (-1461033598249/1000000000000 : ℚ), 4⟩,
    ⟨(35854935741/62500000000 : ℚ), (9276255201/5000000000 : ℚ), (-1124252806191/1000000000000 : ℚ), 4⟩,
    ⟨(581701727959/1000000000000 : ℚ), (1407670387/1000000000 : ℚ), (-865781908071/1000000000000 : ℚ), 4⟩,
    ⟨(147502894107/250000000000 : ℚ), (10620660763/10000000000 : ℚ), (-165843528213/250000000000 : ℚ), 3⟩,
    ⟨(7481606111/12500000000 : ℚ), (7907403959/10000000000 : ℚ), (-502182249551/1000000000000 : ℚ), 3⟩,
    ⟨(75896305349/125000000000 : ℚ), (89800583/156250000 : ℚ), (-371992663337/1000000000000 : ℚ), 3⟩,
    ⟨(615854211423/1000000000000 : ℚ), (4006892149/10000000000 : ℚ), (-132797464069/500000000000 : ℚ), 3⟩,
    ⟨(312248082667/500000000000 : ℚ), (2590673791/10000000000 : ℚ), (-35556827801/200000000000 : ℚ), 3⟩,
    ⟨(316506538893/500000000000 : ℚ), (357140413/2500000000 : ℚ), (-1636409163/15625000000 : ℚ), 3⟩,
    ⟨(128264585251/200000000000 : ℚ), (468483509/10000000000 : ℚ), (-348540771/8000000000 : ℚ), 3⟩,
    ⟨(324672841179/500000000000 : ℚ), (-65765163/2000000000 : ℚ), (1969472713/250000000000 : ℚ), 3⟩,
    ⟨(657004082569/1000000000000 : ℚ), (-993321423/10000000000 : ℚ), (12818906817/250000000000 : ℚ), 3⟩,
    ⟨(332112186153/500000000000 : ℚ), (-38701837/250000000 : ℚ), (87919509867/1000000000000 : ℚ), 3⟩,
    ⟨(83867127029/125000000000 : ℚ), (-1005489201/5000000000 : ℚ), (118819521307/1000000000000 : ℚ), 3⟩,
    ⟨(677077367917/1000000000000 : ℚ), (-2395985121/10000000000 : ℚ), (144767501867/1000000000000 : ℚ), 3⟩,
    ⟨(341293146209/500000000000 : ℚ), (-1356992981/5000000000 : ℚ), (41596273349/250000000000 : ℚ), 3⟩,
    ⟨(34370536789/50000000000 : ℚ), (-2973471439/10000000000 : ℚ), (184159134291/1000000000000 : ℚ), 3⟩,
    ⟨(86438029497/125000000000 : ℚ), (-3181015789/10000000000 : ℚ), (4961701431/25000000000 : ℚ), 3⟩,
    ⟨(694827370361/1000000000000 : ℚ), (-1670819269/5000000000 : ℚ), (104800844491/500000000000 : ℚ), 3⟩,
    ⟨(87168516917/125000000000 : ℚ), (-864768219/2500000000 : ℚ), (108888035959/500000000000 : ℚ), 3⟩,
    ⟨(349521127277/500000000000 : ℚ), (-883990391/2500000000 : ℚ), (44628876113/200000000000 : ℚ), 3⟩,
    ⟨(699893412723/1000000000000 : ℚ), (-714798827/2000000000 : ℚ), (225804633809/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-3578729109/10000000000 : ℚ), (7066751773/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (53618876433/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control652.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control652.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate652
