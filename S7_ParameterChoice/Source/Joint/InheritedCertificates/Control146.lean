import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate146
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30258668307/125000000000 : ℚ), (9245697230733/10000000000 : ℚ), (-224559558612937/1000000000000 : ℚ), 11⟩,
    ⟨(121607178573/500000000000 : ℚ), (501198468063/5000000000 : ℚ), (-24840911968913/1000000000000 : ℚ), 8⟩,
    ⟨(30686668931/125000000000 : ℚ), (173760993137/5000000000 : ℚ), (-4431689732309/500000000000 : ℚ), 6⟩,
    ⟨(248884381401/1000000000000 : ℚ), (16916716979/1000000000 : ℚ), (-892269575003/200000000000 : ℚ), 5⟩,
    ⟨(63338697383/250000000000 : ℚ), (96918463007/10000000000 : ℚ), (-1324868261043/500000000000 : ℚ), 5⟩,
    ⟨(258861523367/1000000000000 : ℚ), (15264163071/2500000000 : ℚ), (-433152043019/250000000000 : ℚ), 4⟩,
    ⟨(5307031001/20000000000 : ℚ), (8179940613/2000000000 : ℚ), (-602506068559/500000000000 : ℚ), 4⟩,
    ⟨(10910494683/40000000000 : ℚ), (7143950399/2500000000 : ℚ), (-436933141659/500000000000 : ℚ), 3⟩,
    ⟨(4390978191/15625000000 : ℚ), (2571007257/1250000000 : ℚ), (-40775903537/62500000000 : ℚ), 3⟩,
    ⟨(290052710897/1000000000000 : ℚ), (755913801/500000000 : ℚ), (-124246189157/250000000000 : ℚ), 3⟩,
    ⟨(29976572223/100000000000 : ℚ), (11271086911/10000000000 : ℚ), (-191825566073/500000000000 : ℚ), 3⟩,
    ⟨(62013619323/200000000000 : ℚ), (2118235801/2500000000 : ℚ), (-149208347817/500000000000 : ℚ), 3⟩,
    ⟨(160430308277/500000000000 : ℚ), (6386378223/10000000000 : ℚ), (-7270420979/31250000000 : ℚ), 2⟩,
    ⟨(166019672091/500000000000 : ℚ), (4797003457/10000000000 : ℚ), (-90405767229/500000000000 : ℚ), 2⟩,
    ⟨(171748311119/500000000000 : ℚ), (3563913273/10000000000 : ℚ), (-139192839931/1000000000000 : ℚ), 2⟩,
    ⟨(177561055437/500000000000 : ℚ), (2591826367/10000000000 : ℚ), (-105259521213/1000000000000 : ℚ), 2⟩,
    ⟨(183401925139/500000000000 : ℚ), (453685063/2500000000 : ℚ), (-15445204789/200000000000 : ℚ), 2⟩,
    ⟨(189214669457/500000000000 : ℚ), (1185979551/10000000000 : ℚ), (-53809322139/1000000000000 : ℚ), 2⟩,
    ⟨(389886616971/1000000000000 : ℚ), (671941943/10000000000 : ℚ), (-6814170147/200000000000 : ℚ), 2⟩,
    ⟨(200532672299/500000000000 : ℚ), (248058729/10000000000 : ℚ), (-4328393299/250000000000 : ℚ), 2⟩,
    ⟨(205928932269/500000000000 : ℚ), (-20775431/2000000000 : ℚ), (-3013238757/1000000000000 : ℚ), 2⟩,
    ⟨(422160238923/1000000000000 : ℚ), (-198757919/5000000000 : ℚ), (9228564783/1000000000000 : ℚ), 2⟩,
    ⟨(26992078141/62500000000 : ℚ), (-643191977/10000000000 : ℚ), (985855941/50000000000 : ℚ), 2⟩,
    ⟨(440903356929/1000000000000 : ℚ), (-848792629/10000000000 : ℚ), (28687770391/1000000000000 : ℚ), 2⟩,
    ⟨(449163594077/1000000000000 : ℚ), (-31886641/312500000 : ℚ), (9080660591/250000000000 : ℚ), 2⟩,
    ⟨(228287205551/500000000000 : ℚ), (-581297717/5000000000 : ℚ), (42762836387/1000000000000 : ℚ), 2⟩,
    ⟨(92612887557/200000000000 : ℚ), (-63952703/500000000 : ℚ), (48117443673/1000000000000 : ℚ), 2⟩,
    ⟨(468571171621/1000000000000 : ℚ), (-1372503063/10000000000 : ℚ), (2623512447/50000000000 : ℚ), 2⟩,
    ⟨(59130197469/125000000000 : ℚ), (-722514751/5000000000 : ℚ), (55884732731/1000000000000 : ℚ), 2⟩,
    ⟨(59554076213/125000000000 : ℚ), (-749088361/5000000000 : ℚ), (58407784241/1000000000000 : ℚ), 2⟩,
    ⟨(239355802003/500000000000 : ℚ), (-1533032949/10000000000 : ℚ), (3003620377/50000000000 : ℚ), 2⟩,
    ⟨(479856614697/1000000000000 : ℚ), (-310058431/2000000000 : ℚ), (60899612269/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-776220863/5000000000 : ℚ), (61002776249/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (38505884943/125000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control146.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control146.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate146
