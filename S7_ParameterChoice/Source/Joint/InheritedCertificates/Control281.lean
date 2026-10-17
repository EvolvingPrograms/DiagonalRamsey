import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate281
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(56505584929/200000000000 : ℚ), (6980161029503/5000000000 : ℚ), (-395232654594011/1000000000000 : ℚ), 12⟩,
    ⟨(283333862483/1000000000000 : ℚ), (380998178277/2500000000 : ℚ), (-8737435228739/200000000000 : ℚ), 8⟩,
    ⟨(142468988269/500000000000 : ℚ), (533273011227/10000000000 : ℚ), (-7781705963171/500000000000 : ℚ), 7⟩,
    ⟨(57464963663/200000000000 : ℚ), (32777461247/1250000000 : ℚ), (-7814865951247/1000000000000 : ℚ), 6⟩,
    ⟨(290471401221/1000000000000 : ℚ), (75869461437/5000000000 : ℚ), (-1156494742581/250000000000 : ℚ), 5⟩,
    ⟨(58869484389/200000000000 : ℚ), (9647977199/1000000000 : ℚ), (-752892155799/250000000000 : ℚ), 5⟩,
    ⟨(149457776143/500000000000 : ℚ), (65143724487/10000000000 : ℚ), (-2082831415393/1000000000000 : ℚ), 4⟩,
    ⟨(152065899327/500000000000 : ℚ), (45795620869/10000000000 : ℚ), (-749957506887/500000000000 : ℚ), 4⟩,
    ⟨(309945925743/1000000000000 : ℚ), (258519491/78125000 : ℚ), (-1110120552193/1000000000000 : ℚ), 4⟩,
    ⟨(316301940333/1000000000000 : ℚ), (24348353343/10000000000 : ℚ), (-83658368271/100000000000 : ℚ), 3⟩,
    ⟨(323138630527/1000000000000 : ℚ), (9053841909/5000000000 : ℚ), (-637193914407/1000000000000 : ℚ), 3⟩,
    ⟨(330390155261/1000000000000 : ℚ), (13517997707/10000000000 : ℚ), (-243657609299/500000000000 : ℚ), 3⟩,
    ⟨(33798667839/100000000000 : ℚ), (10058146889/10000000000 : ℚ), (-46469907239/125000000000 : ℚ), 3⟩,
    ⟨(345855041241/1000000000000 : ℚ), (1848775407/2500000000 : ℚ), (-280753366449/1000000000000 : ℚ), 3⟩,
    ⟨(17695973359/50000000000 : ℚ), (5308531399/10000000000 : ℚ), (-20778269299/100000000000 : ℚ), 3⟩,
    ⟨(22631393211/62500000000 : ℚ), (456045903/1250000000 : ℚ), (-148373159269/1000000000000 : ℚ), 3⟩,
    ⟨(9258117719/25000000000 : ℚ), (2309849707/10000000000 : ℚ), (-19874803597/200000000000 : ℚ), 3⟩,
    ⟨(94626883239/250000000000 : ℚ), (1218298177/10000000000 : ℚ), (-29259317161/500000000000 : ℚ), 2⟩,
    ⟨(77314391779/200000000000 : ℚ), (79877169/2500000000 : ℚ), (-12073326223/500000000000 : ℚ), 2⟩,
    ⟨(197220160873/500000000000 : ℚ), (-426471709/10000000000 : ℚ), (995370977/200000000000 : ℚ), 2⟩,
    ⟨(3216294759/8000000000 : ℚ), (-1049481807/10000000000 : ℚ), (29782123291/1000000000000 : ℚ), 2⟩,
    ⟨(409288369609/1000000000000 : ℚ), (-786027761/5000000000 : ℚ), (50977140773/1000000000000 : ℚ), 2⟩,
    ⟨(416125059803/1000000000000 : ℚ), (-10056831/50000000 : ℚ), (17276273937/250000000000 : ℚ), 2⟩,
    ⟨(422481074393/1000000000000 : ℚ), (-476119073/2000000000 : ℚ), (84585145221/1000000000000 : ℚ), 2⟩,
    ⟨(214147600741/500000000000 : ℚ), (-336238831/1250000000 : ℚ), (97741826391/1000000000000 : ℚ), 2⟩,
    ⟨(8670228957/20000000000 : ℚ), (-2947173411/10000000000 : ℚ), (108826583351/1000000000000 : ℚ), 2⟩,
    ⟨(438079578191/1000000000000 : ℚ), (-631691213/2000000000 : ℚ), (118033715007/1000000000000 : ℚ), 2⟩,
    ⟨(88391119783/200000000000 : ℚ), (-133136917/400000000 : ℚ), (6275614619/50000000000 : ℚ), 2⟩,
    ⟨(445102181821/1000000000000 : ℚ), (-3460611267/10000000000 : ℚ), (32843774049/250000000000 : ℚ), 2⟩,
    ⟨(223744511799/500000000000 : ℚ), (-711527541/2000000000 : ℚ), (135705289379/1000000000000 : ℚ), 2⟩,
    ⟨(449093137653/1000000000000 : ℚ), (-3621347089/10000000000 : ℚ), (69280654259/500000000000 : ℚ), 2⟩,
    ⟨(449899075491/1000000000000 : ℚ), (-3652915581/10000000000 : ℚ), (69990148977/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1828424189/5000000000 : ℚ), (140157253971/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (286616679599/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control281.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control281.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate281
