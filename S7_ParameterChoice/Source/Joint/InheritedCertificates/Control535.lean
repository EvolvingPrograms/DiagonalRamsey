import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate535
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16431503631/62500000000 : ℚ), (15801928293711/10000000000 : ℚ), (-416086308562617/1000000000000 : ℚ), 12⟩,
    ⟨(131733783633/500000000000 : ℚ), (1729093925877/10000000000 : ℚ), (-22979910960729/500000000000 : ℚ), 9⟩,
    ⟨(264589158707/1000000000000 : ℚ), (30341426279/500000000 : ℚ), (-16349524141003/1000000000000 : ℚ), 8⟩,
    ⟨(133129015439/500000000000 : ℚ), (299251379561/10000000000 : ℚ), (-2047839515643/250000000000 : ℚ), 7⟩,
    ⟨(67114527907/250000000000 : ℚ), (173584323351/10000000000 : ℚ), (-4833833564737/1000000000000 : ℚ), 6⟩,
    ⟨(135584106489/500000000000 : ℚ), (110541741627/10000000000 : ℚ), (-125359571381/40000000000 : ℚ), 5⟩,
    ⟨(274362235169/1000000000000 : ℚ), (74665844293/10000000000 : ℚ), (-539011829771/250000000000 : ℚ), 5⟩,
    ⟨(139004709011/500000000000 : ℚ), (6553262067/1250000000 : ℚ), (-1542195739147/1000000000000 : ℚ), 5⟩,
    ⟨(282074637173/1000000000000 : ℚ), (37757950911/10000000000 : ℚ), (-565833890617/500000000000 : ℚ), 4⟩,
    ⟨(143259371169/500000000000 : ℚ), (13808750067/5000000000 : ℚ), (-105442366779/125000000000 : ℚ), 4⟩,
    ⟨(58259786871/200000000000 : ℚ), (5085683837/2500000000 : ℚ), (-126694967661/200000000000 : ℚ), 4⟩,
    ⟨(296369177363/1000000000000 : ℚ), (14965084731/10000000000 : ℚ), (-475538546687/1000000000000 : ℚ), 4⟩,
    ⟨(301680642149/1000000000000 : ℚ), (1089003037/1000000000 : ℚ), (-353739529987/1000000000000 : ℚ), 3⟩,
    ⟨(76795544101/250000000000 : ℚ), (7736911151/10000000000 : ℚ), (-257788634061/1000000000000 : ℚ), 3⟩,
    ⟨(156410398673/500000000000 : ℚ), (1313331743/2500000000 : ℚ), (-36165261121/200000000000 : ℚ), 3⟩,
    ⟨(79635550493/250000000000 : ℚ), (408368509/1250000000 : ℚ), (-118141385809/1000000000000 : ℚ), 3⟩,
    ⟨(324291290029/1000000000000 : ℚ), (103572669/625000000 : ℚ), (-66415922499/1000000000000 : ℚ), 3⟩,
    ⟨(66002538931/200000000000 : ℚ), (84439473/2500000000 : ℚ), (-23262905547/1000000000000 : ℚ), 3⟩,
    ⟨(83912828899/250000000000 : ℚ), (-377004469/5000000000 : ℚ), (1633262369/125000000000 : ℚ), 3⟩,
    ⟨(341152849851/1000000000000 : ℚ), (-1664503523/10000000000 : ℚ), (43871234101/1000000000000 : ℚ), 3⟩,
    ⟨(173232157319/500000000000 : ℚ), (-607108779/2500000000 : ℚ), (35065691823/500000000000 : ℚ), 3⟩,
    ⟨(70306911529/200000000000 : ℚ), (-3072067531/10000000000 : ℚ), (5786932893/62500000000 : ℚ), 3⟩,
    ⟨(356314749663/1000000000000 : ℚ), (-3615446719/10000000000 : ℚ), (11182021667/100000000000 : ℚ), 3⟩,
    ⟨(90189713707/250000000000 : ℚ), (-509246663/1250000000 : ℚ), (32064636973/250000000000 : ℚ), 3⟩,
    ⟨(182412036989/500000000000 : ℚ), (-2229764997/5000000000 : ℚ), (28449039079/200000000000 : ℚ), 3⟩,
    ⟨(368471256831/1000000000000 : ℚ), (-4781300743/10000000000 : ℚ), (19255274183/125000000000 : ℚ), 3⟩,
    ⟨(371665279023/1000000000000 : ℚ), (-5046372471/10000000000 : ℚ), (163851263559/1000000000000 : ℚ), 3⟩,
    ⟨(93593845093/250000000000 : ℚ), (-526018041/1000000000 : ℚ), (85913257263/500000000000 : ℚ), 3⟩,
    ⟨(376575461123/1000000000000 : ℚ), (-5426838631/10000000000 : ℚ), (178084011729/1000000000000 : ℚ), 3⟩,
    ⟨(189122166647/500000000000 : ℚ), (-1109876827/2000000000 : ℚ), (91354477611/500000000000 : ℚ), 3⟩,
    ⟨(189682962367/500000000000 : ℚ), (-562995393/1000000000 : ℚ), (92880483617/500000000000 : ℚ), 3⟩,
    ⟨(75985886781/200000000000 : ℚ), (-354369263/625000000 : ℚ), (187277820489/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-5674887177/10000000000 : ℚ), (37493400751/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (66574352389/200000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control535.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control535.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate535
