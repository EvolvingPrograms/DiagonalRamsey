import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate194
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(271233376929/1000000000000 : ℚ), (9460668816811/10000000000 : ℚ), (-257411047083567/1000000000000 : ℚ), 11⟩,
    ⟨(27243053433/100000000000 : ℚ), (1026951698457/10000000000 : ℚ), (-14237380108131/500000000000 : ℚ), 8⟩,
    ⟨(68703329963/250000000000 : ℚ), (17831919269/500000000 : ℚ), (-5079913131653/500000000000 : ℚ), 6⟩,
    ⟨(17397424123/62500000000 : ℚ), (173940515039/10000000000 : ℚ), (-1278457531243/250000000000 : ℚ), 5⟩,
    ⟨(283032787901/1000000000000 : ℚ), (49928608857/5000000000 : ℚ), (-3037229505147/1000000000000 : ℚ), 5⟩,
    ⟨(288790312457/1000000000000 : ℚ), (63039464007/10000000000 : ℚ), (-1985984037393/1000000000000 : ℚ), 4⟩,
    ⟨(295575911527/1000000000000 : ℚ), (21158185677/5000000000 : ℚ), (-345318529027/250000000000 : ℚ), 4⟩,
    ⟨(75831059021/250000000000 : ℚ), (29627421109/10000000000 : ℚ), (-1001772929049/1000000000000 : ℚ), 4⟩,
    ⟨(12478426621/40000000000 : ℚ), (21369906541/10000000000 : ℚ), (-187008506463/250000000000 : ℚ), 3⟩,
    ⟨(160701013157/500000000000 : ℚ), (787088711/500000000 : ℚ), (-569997563463/1000000000000 : ℚ), 3⟩,
    ⟨(165778696493/500000000000 : ℚ), (11763176787/10000000000 : ℚ), (-440237557577/1000000000000 : ℚ), 3⟩,
    ⟨(10697780119/31250000000 : ℚ), (2216480799/2500000000 : ℚ), (-342709058489/1000000000000 : ℚ), 3⟩,
    ⟨(44201625333/125000000000 : ℚ), (6703282741/10000000000 : ℚ), (-133760395323/500000000000 : ℚ), 3⟩,
    ⟨(365300838093/1000000000000 : ℚ), (5054731087/10000000000 : ℚ), (-104154606303/500000000000 : ℚ), 2⟩,
    ⟨(377279909849/1000000000000 : ℚ), (235946359/625000000 : ℚ), (-40208260803/250000000000 : ℚ), 2⟩,
    ⟨(389434852923/1000000000000 : ℚ), (2766237277/10000000000 : ℚ), (-122180455821/1000000000000 : ℚ), 2⟩,
    ⟨(40164860857/100000000000 : ℚ), (244979049/1250000000 : ℚ), (-4515081637/50000000000 : ℚ), 2⟩,
    ⟨(103450887911/250000000000 : ℚ), (1307626847/10000000000 : ℚ), (-63722525553/1000000000000 : ℚ), 2⟩,
    ⟨(2128913117/5000000000 : ℚ), (193696779/2500000000 : ℚ), (-41363746543/1000000000000 : ℚ), 2⟩,
    ⟨(437470458829/1000000000000 : ℚ), (20987367/625000000 : ℚ), (-5605663629/250000000000 : ℚ), 2⟩,
    ⟨(89750899537/200000000000 : ℚ), (-14142221/5000000000 : ℚ), (-3147314247/500000000000 : ℚ), 2⟩,
    ⟨(459526068507/1000000000000 : ℚ), (-165844183/5000000000 : ℚ), (1870169861/250000000000 : ℚ), 2⟩,
    ⟨(469681435179/1000000000000 : ℚ), (-29260303/500000000 : ℚ), (3851354811/200000000000 : ℚ), 2⟩,
    ⟨(7486293687/15625000000 : ℚ), (-797088183/10000000000 : ℚ), (29306846529/1000000000000 : ℚ), 2⟩,
    ⟨(48775922541/100000000000 : ℚ), (-486839557/5000000000 : ℚ), (2365179763/62500000000 : ℚ), 2⟩,
    ⟨(247753774983/500000000000 : ℚ), (-559936651/5000000000 : ℚ), (45029570083/1000000000000 : ℚ), 2⟩,
    ⟨(125573287259/250000000000 : ℚ), (-154930789/1250000000 : ℚ), (1593582793/31250000000 : ℚ), 2⟩,
    ⟨(63506334199/125000000000 : ℚ), (-667648287/5000000000 : ℚ), (55836499771/1000000000000 : ℚ), 2⟩,
    ⟨(20508987021/40000000000 : ℚ), (-1409622309/10000000000 : ℚ), (1192597531/20000000000 : ℚ), 2⟩,
    ⟨(516270141641/1000000000000 : ℚ), (-1464050411/10000000000 : ℚ), (31215070021/500000000000 : ℚ), 2⟩,
    ⟨(518652927163/1000000000000 : ℚ), (-749864369/5000000000 : ℚ), (32138171061/500000000000 : ℚ), 2⟩,
    ⟨(129962521141/250000000000 : ℚ), (-758694807/5000000000 : ℚ), (6519338403/100000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-759794479/5000000000 : ℚ), (65307733411/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (313113265991/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control194.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control194.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate194
