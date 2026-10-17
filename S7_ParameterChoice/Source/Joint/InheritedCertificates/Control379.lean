import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate379
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(556574399537/1000000000000 : ℚ), (17515008167011/10000000000 : ℚ), (-976366259223499/1000000000000 : ℚ), 12⟩,
    ⟨(278872926977/500000000000 : ℚ), (119938836249/625000000 : ℚ), (-107997286676181/1000000000000 : ℚ), 8⟩,
    ⟨(7000968513/12500000000 : ℚ), (675236634641/10000000000 : ℚ), (-19264189169337/500000000000 : ℚ), 7⟩,
    ⟨(17610838311/31250000000 : ℚ), (167172966253/5000000000 : ℚ), (-969487924167/50000000000 : ℚ), 6⟩,
    ⟨(568120477003/1000000000000 : ℚ), (2438447077/125000000 : ℚ), (-2878662604707/250000000000 : ℚ), 5⟩,
    ⟨(573754387433/1000000000000 : ℚ), (1001800279/80000000 : ℚ), (-470575562983/62500000000 : ℚ), 5⟩,
    ⟨(580394299603/1000000000000 : ℚ), (42747640597/5000000000 : ℚ), (-2618976789507/500000000000 : ℚ), 4⟩,
    ⟨(146994066883/250000000000 : ℚ), (60889472023/10000000000 : ℚ), (-1900695675459/500000000000 : ℚ), 4⟩,
    ⟨(596427272721/1000000000000 : ℚ), (44685097617/10000000000 : ℚ), (-710580687231/250000000000 : ℚ), 4⟩,
    ⟨(151416481843/250000000000 : ℚ), (33507477301/10000000000 : ℚ), (-108543322013/50000000000 : ℚ), 3⟩,
    ⟨(615603258191/1000000000000 : ℚ), (25513542711/10000000000 : ℚ), (-841491731087/500000000000 : ℚ), 3⟩,
    ⟨(39133972703/62500000000 : ℚ), (3925760569/2000000000 : ℚ), (-1317794125157/1000000000000 : ℚ), 3⟩,
    ⟨(127437066729/200000000000 : ℚ), (15193358853/10000000000 : ℚ), (-259437596121/250000000000 : ℚ), 3⟩,
    ⟨(81077778887/125000000000 : ℚ), (11784347131/10000000000 : ℚ), (-818675946031/1000000000000 : ℚ), 3⟩,
    ⟨(660344112027/1000000000000 : ℚ), (2280266303/2500000000 : ℚ), (-128887186229/200000000000 : ℚ), 3⟩,
    ⟨(168059522079/250000000000 : ℚ), (7011555463/10000000000 : ℚ), (-100786116721/200000000000 : ℚ), 3⟩,
    ⟨(684189614471/1000000000000 : ℚ), (5321177109/10000000000 : ℚ), (-389323159937/1000000000000 : ℚ), 2⟩,
    ⟨(696083590761/1000000000000 : ℚ), (3953407779/10000000000 : ℚ), (-147477589429/500000000000 : ℚ), 2⟩,
    ⟨(176951367923/250000000000 : ℚ), (709432463/2500000000 : ℚ), (-216660449867/1000000000000 : ℚ), 2⟩,
    ⟨(719242369143/1000000000000 : ℚ), (960884519/5000000000 : ℚ), (-4728713231/31250000000 : ℚ), 2⟩,
    ⟨(36514206977/50000000000 : ℚ), (1166065657/10000000000 : ℚ), (-96558622209/1000000000000 : ℚ), 2⟩,
    ⟨(740824444597/1000000000000 : ℚ), (540521371/10000000000 : ℚ), (-50553882067/1000000000000 : ℚ), 2⟩,
    ⟨(150152355083/200000000000 : ℚ), (2193871/1000000000 : ℚ), (-11883573203/1000000000000 : ℚ), 2⟩,
    ⟨(760000430067/1000000000000 : ℚ), (-407710727/10000000000 : ℚ), (41135481/2000000000 : ℚ), 2⟩,
    ⟨(96056429407/125000000000 : ℚ), (-381261197/5000000000 : ℚ), (5960121633/125000000000 : ℚ), 2⟩,
    ⟨(48502087699/62500000000 : ℚ), (-1053551527/10000000000 : ℚ), (70153943943/1000000000000 : ℚ), 2⟩,
    ⟨(156534663071/200000000000 : ℚ), (-128946393/1000000000 : ℚ), (88538927773/1000000000000 : ℚ), 2⟩,
    ⟨(157661445157/200000000000 : ℚ), (-295402687/2000000000 : ℚ), (5163511941/50000000000 : ℚ), 2⟩,
    ⟨(158576175367/200000000000 : ℚ), (-810696517/5000000000 : ℚ), (114684544831/1000000000000 : ℚ), 2⟩,
    ⟨(199087555437/250000000000 : ℚ), (-43162299/250000000 : ℚ), (7689735109/62500000000 : ℚ), 2⟩,
    ⟨(399340924417/500000000000 : ℚ), (-897540439/5000000000 : ℚ), (64252903321/500000000000 : ℚ), 2⟩,
    ⟨(3199413213/4000000000 : ℚ), (-1828940039/10000000000 : ℚ), (65606027857/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-916576109/5000000000 : ℚ), (131548999167/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (153198802917/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control379.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control379.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate379
