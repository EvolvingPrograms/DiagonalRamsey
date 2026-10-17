import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate410
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(77066387249/250000000000 : ℚ), (14593780732363/10000000000 : ℚ), (-450701910332289/1000000000000 : ℚ), 12⟩,
    ⟨(154521937627/500000000000 : ℚ), (63803973099/400000000 : ℚ), (-49811147557627/1000000000000 : ℚ), 9⟩,
    ⟨(2426508063/7812500000 : ℚ), (6988510969/125000000 : ℚ), (-886988824057/50000000000 : ℚ), 7⟩,
    ⟨(312898100199/1000000000000 : ℚ), (11016362883/400000000 : ℚ), (-1112955734797/125000000000 : ℚ), 6⟩,
    ⟨(19746055037/62500000000 : ℚ), (79830227163/5000000000 : ℚ), (-105344378639/20000000000 : ℚ), 6⟩,
    ⟨(319680108127/1000000000000 : ℚ), (6355606133/625000000 : ℚ), (-856573596299/250000000000 : ℚ), 5⟩,
    ⟨(81022933369/250000000000 : ℚ), (34382791147/5000000000 : ℚ), (-2367311731657/1000000000000 : ℚ), 5⟩,
    ⟨(82282317569/250000000000 : ℚ), (24201292603/5000000000 : ℚ), (-1702715898969/1000000000000 : ℚ), 4⟩,
    ⟨(334744204293/1000000000000 : ℚ), (7001406829/2000000000 : ℚ), (-629187502441/500000000000 : ℚ), 4⟩,
    ⟨(85220615161/250000000000 : ℚ), (25772854927/10000000000 : ℚ), (-189327157663/200000000000 : ℚ), 4⟩,
    ⟨(69496984913/200000000000 : ℚ), (19168859559/10000000000 : ℚ), (-359738245933/500000000000 : ℚ), 3⟩,
    ⟨(177244005359/500000000000 : ℚ), (14303366417/10000000000 : ℚ), (-548801964713/1000000000000 : ℚ), 3⟩,
    ⟨(72364855111/200000000000 : ℚ), (10629510711/10000000000 : ℚ), (-417290195013/1000000000000 : ℚ), 3⟩,
    ⟨(369423066837/1000000000000 : ℚ), (3898735327/5000000000 : ℚ), (-313794362733/1000000000000 : ℚ), 3⟩,
    ⟨(23575700253/62500000000 : ℚ), (5575531353/10000000000 : ℚ), (-57720539699/250000000000 : ℚ), 3⟩,
    ⟨(38511368317/100000000000 : ℚ), (3805657071/10000000000 : ℚ), (-163448001513/1000000000000 : ℚ), 3⟩,
    ⟨(393054399009/1000000000000 : ℚ), (1188680899/5000000000 : ℚ), (-10789499679/100000000000 : ℚ), 3⟩,
    ⟨(100239219533/250000000000 : ℚ), (605877199/5000000000 : ℚ), (-12326836613/200000000000 : ℚ), 3⟩,
    ⟨(408745015343/1000000000000 : ℚ), (1257381/50000000 : ℚ), (-22767818017/1000000000000 : ℚ), 3⟩,
    ⟨(13010743957/31250000000 : ℚ), (-136456587/2500000000 : ℚ), (10116741587/1000000000000 : ℚ), 2⟩,
    ⟨(211840035731/500000000000 : ℚ), (-1211841711/10000000000 : ℚ), (19042307841/500000000000 : ℚ), 2⟩,
    ⟨(86136631523/200000000000 : ℚ), (-1770542533/10000000000 : ℚ), (1238946403/20000000000 : ℚ), 2⟩,
    ⟨(87457124307/200000000000 : ℚ), (-2240228863/10000000000 : ℚ), (20582048443/250000000000 : ℚ), 2⟩,
    ⟨(221711938943/500000000000 : ℚ), (-16468551/62500000 : ℚ), (49854411151/500000000000 : ℚ), 2⟩,
    ⟨(449038811903/1000000000000 : ℚ), (-118625023/400000000 : ℚ), (114462527367/1000000000000 : ℚ), 2⟩,
    ⟨(454076348703/1000000000000 : ℚ), (-648122151/2000000000 : ℚ), (12687888423/100000000000 : ℚ), 2⟩,
    ⟨(458487974053/1000000000000 : ℚ), (-1733212443/5000000000 : ℚ), (27436378513/200000000000 : ℚ), 2⟩,
    ⟨(462231201587/1000000000000 : ℚ), (-912016099/2500000000 : ℚ), (14554356917/100000000000 : ℚ), 2⟩,
    ⟨(23263499099/50000000000 : ℚ), (-30314557/80000000 : ℚ), (30418830663/200000000000 : ℚ), 2⟩,
    ⟨(93515010023/200000000000 : ℚ), (-3892994731/10000000000 : ℚ), (19616217227/125000000000 : ℚ), 2⟩,
    ⟨(18764968277/40000000000 : ℚ), (-1980533389/5000000000 : ℚ), (40029468327/250000000000 : ℚ), 2⟩,
    ⟨(7342227081/15625000000 : ℚ), (-798959227/2000000000 : ℚ), (80850754839/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-999749523/2500000000 : ℚ), (80949490589/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (58370825859/200000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control410.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control410.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate410
