import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate501
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(299032575439/1000000000000 : ℚ), (15367550690943/10000000000 : ℚ), (-230149407357789/500000000000 : ℚ), 12⟩,
    ⟨(74927740763/250000000000 : ℚ), (33621701487/200000000 : ℚ), (-25429011002651/500000000000 : ℚ), 9⟩,
    ⟨(150530602517/500000000000 : ℚ), (589835360391/10000000000 : ℚ), (-18102623600041/1000000000000 : ℚ), 7⟩,
    ⟨(151535148909/500000000000 : ℚ), (290852771621/10000000000 : ℚ), (-9078005421107/1000000000000 : ℚ), 6⟩,
    ⟨(305718892741/1000000000000 : ℚ), (42187827471/2500000000 : ℚ), (-83812153309/15625000000 : ℚ), 6⟩,
    ⟨(154490741193/500000000000 : ℚ), (107532552573/10000000000 : ℚ), (-1741868673877/500000000000 : ℚ), 5⟩,
    ⟨(39103330779/125000000000 : ℚ), (72719125309/10000000000 : ℚ), (-600526985233/250000000000 : ℚ), 5⟩,
    ⟨(9913042289/31250000000 : ℚ), (10231233359/2000000000 : ℚ), (-430817521703/250000000000 : ℚ), 4⟩,
    ⟨(322111318527/1000000000000 : ℚ), (9237085863/2500000000 : ℚ), (-1269379169701/1000000000000 : ℚ), 4⟩,
    ⟨(163730705253/500000000000 : ℚ), (13568584331/5000000000 : ℚ), (-475456710199/500000000000 : ℚ), 4⟩,
    ⟨(83304026219/250000000000 : ℚ), (20107580507/10000000000 : ℚ), (-718827628109/1000000000000 : ℚ), 4⟩,
    ⟨(21207498799/62500000000 : ℚ), (1864820841/1250000000 : ℚ), (-136106994887/250000000000 : ℚ), 3⟩,
    ⟨(43214281821/125000000000 : ℚ), (5496329957/5000000000 : ℚ), (-51252923293/125000000000 : ℚ), 3⟩,
    ⟨(88084336469/250000000000 : ℚ), (7960206787/10000000000 : ℚ), (-304229512273/1000000000000 : ℚ), 3⟩,
    ⟨(359125470719/1000000000000 : ℚ), (2788083303/5000000000 : ℚ), (-27431958167/125000000000 : ℚ), 3⟩,
    ⟨(366013255743/1000000000000 : ℚ), (229579581/625000000 : ℚ), (-75243738943/500000000000 : ℚ), 3⟩,
    ⟨(372934367813/1000000000000 : ℚ), (2134482319/10000000000 : ℚ), (-93651484897/1000000000000 : ℚ), 3⟩,
    ⟨(379822152837/1000000000000 : ℚ), (438071029/5000000000 : ℚ), (-11575937621/250000000000 : ℚ), 3⟩,
    ⟨(4832628471/12500000000 : ℚ), (-162623041/10000000000 : ℚ), (-3253226839/500000000000 : ℚ), 3⟩,
    ⟨(393233368989/1000000000000 : ℚ), (-1026802223/10000000000 : ℚ), (6795646729/250000000000 : ℚ), 3⟩,
    ⟨(399627642773/1000000000000 : ℚ), (-1750081739/10000000000 : ℚ), (55850398213/1000000000000 : ℚ), 3⟩,
    ⟨(10143287967/25000000000 : ℚ), (-2357961433/10000000000 : ℚ), (8032476683/100000000000 : ℚ), 3⟩,
    ⟨(8229724261/20000000000 : ℚ), (-286991567/1000000000 : ℚ), (101241073139/1000000000000 : ℚ), 3⟩,
    ⟨(41683630503/100000000000 : ℚ), (-660183569/2000000000 : ℚ), (23817946709/200000000000 : ℚ), 2⟩,
    ⟨(105432567577/250000000000 : ℚ), (-91563313/250000000 : ℚ), (16781306173/125000000000 : ℚ), 2⟩,
    ⟨(17044839093/40000000000 : ℚ), (-3963708241/10000000000 : ℚ), (73508652319/500000000000 : ℚ), 2⟩,
    ⟨(42996614117/100000000000 : ℚ), (-526419917/1250000000 : ℚ), (9851087129/62500000000 : ℚ), 2⟩,
    ⟨(6769198919/15625000000 : ℚ), (-4410796073/10000000000 : ℚ), (166224777683/1000000000000 : ℚ), 2⟩,
    ⟨(217938662869/500000000000 : ℚ), (-228302179/500000000 : ℚ), (43242744583/250000000000 : ℚ), 2⟩,
    ⟨(218943209261/500000000000 : ℚ), (-936015431/2000000000 : ℚ), (177952846209/1000000000000 : ℚ), 2⟩,
    ⟨(87847332101/200000000000 : ℚ), (-4754992821/10000000000 : ℚ), (90619171973/500000000000 : ℚ), 2⟩,
    ⟨(219957524059/500000000000 : ℚ), (-2396062947/5000000000 : ℚ), (182870622287/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-29979703/62500000 : ℚ), (18307417243/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (152879872839/500000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control501.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control501.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate501
