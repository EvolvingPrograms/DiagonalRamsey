import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate224
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136595095709/500000000000 : ℚ), (9376350804283/10000000000 : ℚ), (-256946087920781/1000000000000 : ℚ), 11⟩,
    ⟨(274377931901/1000000000000 : ℚ), (1018054696969/10000000000 : ℚ), (-28423012991833/1000000000000 : ℚ), 8⟩,
    ⟨(276741974277/1000000000000 : ℚ), (176835514119/5000000000 : ℚ), (-2028225701641/200000000000 : ℚ), 6⟩,
    ⟨(11210382061/40000000000 : ℚ), (86280062451/5000000000 : ℚ), (-5104228996323/1000000000000 : ℚ), 6⟩,
    ⟨(284896787453/1000000000000 : ℚ), (3964167099/400000000 : ℚ), (-303136297231/100000000000 : ℚ), 5⟩,
    ⟨(58121804589/200000000000 : ℚ), (31294122003/5000000000 : ℚ), (-990999922477/500000000000 : ℚ), 4⟩,
    ⟨(297341246051/1000000000000 : ℚ), (8405700199/2000000000 : ℚ), (-43073927927/31250000000 : ℚ), 4⟩,
    ⟨(15251431089/50000000000 : ℚ), (2943512177/1000000000 : ℚ), (-999534111601/1000000000000 : ℚ), 4⟩,
    ⟨(39199639563/125000000000 : ℚ), (21236699197/10000000000 : ℚ), (-373119487861/500000000000 : ℚ), 3⟩,
    ⟨(322964210933/1000000000000 : ℚ), (15646650421/10000000000 : ℚ), (-142127873319/250000000000 : ℚ), 3⟩,
    ⟨(83259923707/250000000000 : ℚ), (11693415101/10000000000 : ℚ), (-438975712053/1000000000000 : ℚ), 3⟩,
    ⟨(343726535771/1000000000000 : ℚ), (8813518869/10000000000 : ℚ), (-68323199371/200000000000 : ℚ), 3⟩,
    ⟨(177460906821/500000000000 : ℚ), (666304407/1000000000 : ℚ), (-33319888553/125000000000 : ℚ), 3⟩,
    ⟨(73303542359/200000000000 : ℚ), (1255801653/2500000000 : ℚ), (-25931627289/125000000000 : ℚ), 2⟩,
    ⟨(378402555391/1000000000000 : ℚ), (3749988247/10000000000 : ℚ), (-40015998139/250000000000 : ℚ), 2⟩,
    ⟨(39046188689/100000000000 : ℚ), (1372916967/5000000000 : ℚ), (-4859409707/40000000000 : ℚ), 2⟩,
    ⟨(402579568337/1000000000000 : ℚ), (1943038277/10000000000 : ℚ), (-89670349123/1000000000000 : ℚ), 2⟩,
    ⟨(103659724959/250000000000 : ℚ), (323406227/2500000000 : ℚ), (-63147563887/1000000000000 : ℚ), 2⟩,
    ⟨(53315467929/125000000000 : ℚ), (381490917/5000000000 : ℚ), (-40839051311/1000000000000 : ℚ), 2⟩,
    ⟨(87623928317/200000000000 : ℚ), (325747071/10000000000 : ℚ), (-21943207203/1000000000000 : ℚ), 2⟩,
    ⟨(89862983891/200000000000 : ℚ), (-9228907/2500000000 : ℚ), (-183002863/31250000000 : ℚ), 2⟩,
    ⟨(230000880199/500000000000 : ℚ), (-339158907/10000000000 : ℚ), (1576441411/200000000000 : ℚ), 2⟩,
    ⟨(470077244293/1000000000000 : ℚ), (-295860337/5000000000 : ℚ), (19624923519/1000000000000 : ℚ), 2⟩,
    ⟨(479444338723/1000000000000 : ℚ), (-401406193/5000000000 : ℚ), (5929017973/200000000000 : ℚ), 2⟩,
    ⟨(244006416723/500000000000 : ℚ), (-489374887/5000000000 : ℚ), (1907729857/50000000000 : ℚ), 2⟩,
    ⟨(61962526147/125000000000 : ℚ), (-112440613/1000000000 : ℚ), (2832381733/62500000000 : ℚ), 2⟩,
    ⟨(502432432281/1000000000000 : ℚ), (-310885313/2500000000 : ℚ), (51263322993/1000000000000 : ℚ), 2⟩,
    ⟨(254072333887/500000000000 : ℚ), (-334760441/2500000000 : ℚ), (56088621667/1000000000000 : ℚ), 2⟩,
    ⟨(256390951851/500000000000 : ℚ), (-1413097069/10000000000 : ℚ), (3741797337/62500000000 : ℚ), 2⟩,
    ⟨(10325989619/20000000000 : ℚ), (-73366379/500000000 : ℚ), (626590901/10000000000 : ℚ), 2⟩,
    ⟨(259331761663/500000000000 : ℚ), (-751438299/5000000000 : ℚ), (64498672141/1000000000000 : ℚ), 2⟩,
    ⟨(519851263809/1000000000000 : ℚ), (-1520473529/10000000000 : ℚ), (32706202023/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-761332457/5000000000 : ℚ), (16381584951/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (80855229331/250000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control224.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control224.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate224
