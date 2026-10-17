import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate333
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (9347847543479/222596480324400 : ℚ), (2451577786979/10000000000 : ℚ), (-10326831323731/1000000000000 : ℚ)⟩,
  ⟨(9347847543479/222596480324400 : ℚ), (249974957391/5829696716600 : ℚ), (45122596747/2000000000 : ℚ), (-244745945063/250000000000 : ℚ)⟩,
  ⟨(249974957391/5829696716600 : ℚ), (208872208607/4723756863400 : ℚ), (50722082237/10000000000 : ℚ), (-229058908079/1000000000000 : ℚ)⟩,
  ⟨(208872208607/4723756863400 : ℚ), (87670271549/1914245541000 : ℚ), (3484513603/10000000000 : ℚ), (-1261668717/62500000000 : ℚ)⟩,
  ⟨(87670271549/1914245541000 : ℚ), (11204795051/236486944675 : ℚ), (-15657941807/10000000000 : ℚ), (67483572077/1000000000000 : ℚ)⟩,
  ⟨(11204795051/236486944675 : ℚ), (12101025031/248389868400 : ℚ), (-12558709797/5000000000 : ℚ), (112302752281/1000000000000 : ℚ)⟩,
  ⟨(12101025031/248389868400 : ℚ), (2739638868/55224654025 : ℚ), (-15042608481/5000000000 : ℚ), (136504802343/1000000000000 : ℚ)⟩,
  ⟨(2739638868/55224654025 : ℚ), (1327384591/26568668500 : ℚ), (-32294203123/10000000000 : ℚ), (29492671563/200000000000 : ℚ)⟩,
  ⟨(1327384591/26568668500 : ℚ), (1/20 : ℚ), (-2034993113/625000000 : ℚ), (74395371203/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (465006887/2500000000 : ℚ), (-1/5 : ℚ), (92995646683/500000000000 : ℚ)⟩,
  ⟨(465006887/2500000000 : ℚ), (7705796877/40000000000 : ℚ), (-1327384591/6642167125 : ℚ), (24703803366370957791/132843342500000000000 : ℚ)⟩,
  ⟨(7705796877/40000000000 : ℚ), (4957391519/20000000000 : ℚ), (-10958555472/55224654025 : ℚ), (410188919200495059159/2208986161000000000000 : ℚ)⟩,
  ⟨(4957391519/20000000000 : ℚ), (7441290203/20000000000 : ℚ), (-12101025031/62097467100 : ℚ), (45904313661923004079/248389868400000000000 : ℚ)⟩,
  ⟨(7441290203/20000000000 : ℚ), (24342058193/40000000000 : ℚ), (-44819180204/236486944675 : ℚ), (1729350443738116564971/9459477787000000000000 : ℚ)⟩,
  ⟨(24342058193/40000000000 : ℚ), (43484513603/40000000000 : ℚ), (-87670271549/478561385250 : ℚ), (3425876121233363837527/19142455410000000000000 : ℚ)⟩,
  ⟨(43484513603/40000000000 : ℚ), (90722082237/40000000000 : ℚ), (-208872208607/1180939215850 : ℚ), (8129135794657213619773/47237568634000000000000 : ℚ)⟩,
  ⟨(90722082237/40000000000 : ℚ), (53122596747/8000000000 : ℚ), (-249974957391/1457424179150 : ℚ), (9324808998255597829553/58296967166000000000000 : ℚ)⟩,
  ⟨(53122596747/8000000000 : ℚ), (32/1 : ℚ), (-9347847543479/55649120081100 : ℚ), (101242079911878939858859/741988267748000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (3336395209/8000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(41880686199/1000000000000 : ℚ), (2451577786979/10000000000 : ℚ), (-10326831323731/1000000000000 : ℚ), 9⟩,
    ⟨(10623184193/250000000000 : ℚ), (45122596747/2000000000 : ℚ), (-244745945063/250000000000 : ℚ), 6⟩,
    ⟨(8724731753/200000000000 : ℚ), (50722082237/10000000000 : ℚ), (-229058908079/1000000000000 : ℚ), 5⟩,
    ⟨(22550639779/500000000000 : ℚ), (3484513603/10000000000 : ℚ), (-1261668717/62500000000 : ℚ), 4⟩,
    ⟨(46700644779/1000000000000 : ℚ), (-15657941807/10000000000 : ℚ), (67483572077/1000000000000 : ℚ), 4⟩,
    ⟨(12044566393/250000000000 : ℚ), (-12558709797/5000000000 : ℚ), (112302752281/1000000000000 : ℚ), 3⟩,
    ⟨(9861837513/200000000000 : ℚ), (-15042608481/5000000000 : ℚ), (136504802343/1000000000000 : ℚ), 3⟩,
    ⟨(49921238137/1000000000000 : ℚ), (-32294203123/10000000000 : ℚ), (29492671563/200000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-2034993113/625000000 : ℚ), (74395371203/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control333.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control333.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate333
