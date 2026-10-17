import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate226
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(249155335191/1000000000000 : ℚ), (11065489516501/10000000000 : ℚ), (-2159616880801/7812500000 : ℚ), 11⟩,
    ⟨(250073750613/1000000000000 : ℚ), (60214147393/500000000 : ℚ), (-30567106429631/1000000000000 : ℚ), 8⟩,
    ⟨(251901736613/1000000000000 : ℚ), (419669878451/10000000000 : ℚ), (-10897889182779/1000000000000 : ℚ), 7⟩,
    ⟨(254621688687/1000000000000 : ℚ), (205438758151/10000000000 : ℚ), (-5478677372711/1000000000000 : ℚ), 6⟩,
    ⟨(25820741221/100000000000 : ℚ), (7397348083/625000000 : ℚ), (-3248384882417/1000000000000 : ℚ), 5⟩,
    ⟨(52524874941/200000000000 : ℚ), (37474503263/5000000000 : ℚ), (-2119233097737/1000000000000 : ℚ), 5⟩,
    ⟨(33478754801/125000000000 : ℚ), (2521460067/500000000 : ℚ), (-367402173339/250000000000 : ℚ), 4⟩,
    ⟨(273774269931/1000000000000 : ℚ), (35355117497/10000000000 : ℚ), (-530912026213/500000000000 : ℚ), 4⟩,
    ⟨(70099955769/250000000000 : ℚ), (25502246199/10000000000 : ℚ), (-197270859193/250000000000 : ℚ), 3⟩,
    ⟨(8988840317/31250000000 : ℚ), (4688779631/2500000000 : ℚ), (-597628900043/1000000000000 : ℚ), 3⟩,
    ⟨(295433716439/1000000000000 : ℚ), (2792377757/2000000000 : ℚ), (-18320375203/40000000000 : ℚ), 3⟩,
    ⟨(303697272047/1000000000000 : ℚ), (2613383553/2500000000 : ℚ), (-176497927517/500000000000 : ℚ), 3⟩,
    ⟨(39044246801/125000000000 : ℚ), (1564203009/2000000000 : ℚ), (-135983772489/500000000000 : ℚ), 3⟩,
    ⟨(160660227373/500000000000 : ℚ), (580361577/1000000000 : ℚ), (-208091920229/1000000000000 : ℚ), 3⟩,
    ⟨(82627590239/250000000000 : ℚ), (169174059/400000000 : ℚ), (-78407717361/500000000000 : ℚ), 3⟩,
    ⟨(67967037843/200000000000 : ℚ), (1490729691/5000000000 : ℚ), (-115012230739/1000000000000 : ℚ), 2⟩,
    ⟨(349205136331/1000000000000 : ℚ), (989356987/5000000000 : ℚ), (-3219289951/40000000000 : ℚ), 2⟩,
    ⟨(35852996459/100000000000 : ℚ), (145427973/1250000000 : ℚ), (-645549043/12500000000 : ℚ), 2⟩,
    ⟨(367719870799/1000000000000 : ℚ), (123468469/2500000000 : ℚ), (-27339757891/1000000000000 : ℚ), 2⟩,
    ⟨(188343175569/500000000000 : ℚ), (-60566617/10000000000 : ℚ), (-3354868973/500000000000 : ℚ), 2⟩,
    ⟨(385343053499/1000000000000 : ℚ), (-65336183/1250000000 : ℚ), (5446599031/500000000000 : ℚ), 2⟩,
    ⟨(196803304553/500000000000 : ℚ), (-14213217/156250000 : ℚ), (25960890633/1000000000000 : ℚ), 2⟩,
    ⟨(200698717701/500000000000 : ℚ), (-1234464359/10000000000 : ℚ), (4858774197/125000000000 : ℚ), 2⟩,
    ⟨(40864050247/100000000000 : ℚ), (-753557917/5000000000 : ℚ), (399292203/8000000000 : ℚ), 2⟩,
    ⟨(83053211123/200000000000 : ℚ), (-867636127/5000000000 : ℚ), (1853420691/31250000000 : ℚ), 2⟩,
    ⟨(210605143569/500000000000 : ℚ), (-962426647/5000000000 : ℚ), (33618900373/500000000000 : ℚ), 2⟩,
    ⟨(426415950841/1000000000000 : ℚ), (-1040212197/5000000000 : ℚ), (73830707317/1000000000000 : ℚ), 2⟩,
    ⟨(86166582667/200000000000 : ℚ), (-551372119/2500000000 : ℚ), (39595517837/500000000000 : ℚ), 2⟩,
    ⟨(434418636859/1000000000000 : ℚ), (-287837527/1250000000 : ℚ), (667172439/8000000000 : ℚ), 2⟩,
    ⟨(437138588933/1000000000000 : ℚ), (-2374022637/10000000000 : ℚ), (43252293763/500000000000 : ℚ), 2⟩,
    ⟨(438966574933/1000000000000 : ℚ), (-605209901/2500000000 : ℚ), (44277701737/500000000000 : ℚ), 2⟩,
    ⟨(87976998071/200000000000 : ℚ), (-152752087/625000000 : ℚ), (22393649171/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-305865333/1250000000 : ℚ), (44850854007/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (321372974881/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control226.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control226.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate226
