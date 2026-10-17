import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate199
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254036952357/1000000000000 : ℚ), (11255348634421/10000000000 : ℚ), (-143344068829133/500000000000 : ℚ), 11⟩,
    ⟨(127489999669/500000000000 : ℚ), (153104669111/1250000000 : ℚ), (-3962756129087/125000000000 : ℚ), 8⟩,
    ⟨(128428505621/500000000000 : ℚ), (213392347721/5000000000 : ℚ), (-2825765715253/250000000000 : ℚ), 7⟩,
    ⟨(129824955709/500000000000 : ℚ), (104449240363/5000000000 : ℚ), (-5682804203773/1000000000000 : ℚ), 6⟩,
    ⟨(263331802711/1000000000000 : ℚ), (24067976759/2000000000 : ℚ), (-842447222119/250000000000 : ℚ), 5⟩,
    ⟨(133933613247/500000000000 : ℚ), (4762515793/625000000 : ℚ), (-2198775129709/1000000000000 : ℚ), 4⟩,
    ⟨(273212504159/1000000000000 : ℚ), (3204453533/625000000 : ℚ), (-1525085223263/1000000000000 : ℚ), 4⟩,
    ⟨(139658078879/500000000000 : ℚ), (35948363349/10000000000 : ℚ), (-220442375703/200000000000 : ℚ), 4⟩,
    ⟨(28611940577/100000000000 : ℚ), (12967470197/5000000000 : ℚ), (-819396160691/1000000000000 : ℚ), 3⟩,
    ⟨(733891823/2500000000 : ℚ), (9539738017/5000000000 : ℚ), (-62088483133/100000000000 : ℚ), 3⟩,
    ⟨(60311300511/200000000000 : ℚ), (14210548169/10000000000 : ℚ), (-476133464113/1000000000000 : ℚ), 3⟩,
    ⟨(155020841823/500000000000 : ℚ), (665487329/625000000 : ℚ), (-183636614723/500000000000 : ℚ), 3⟩,
    ⟨(15946527777/50000000000 : ℚ), (7975276909/10000000000 : ℚ), (-141644404039/500000000000 : ℚ), 3⟩,
    ⟨(164068756771/500000000000 : ℚ), (2963943933/5000000000 : ℚ), (-5427344049/25000000000 : ℚ), 3⟩,
    ⟨(168786944807/500000000000 : ℚ), (4330767407/10000000000 : ℚ), (-32793051327/200000000000 : ℚ), 2⟩,
    ⟨(173574403147/500000000000 : ℚ), (76630237/250000000 : ℚ), (-120661163593/1000000000000 : ℚ), 2⟩,
    ⟨(178385025951/500000000000 : ℚ), (2048644521/10000000000 : ℚ), (-42449765939/500000000000 : ℚ), 2⟩,
    ⟨(183172484291/500000000000 : ℚ), (1222432029/10000000000 : ℚ), (-55039865853/1000000000000 : ℚ), 2⟩,
    ⟨(187890672327/500000000000 : ℚ), (17005459/312500000 : ℚ), (-14940735741/500000000000 : ℚ), 2⟩,
    ⟨(6015442229/15625000000 : ℚ), (-690279/400000000 : ℚ), (-8532163161/1000000000000 : ℚ), 2⟩,
    ⟨(7877543491/20000000000 : ℚ), (-485024339/10000000000 : ℚ), (604963127/62500000000 : ℚ), 2⟩,
    ⟨(402362355641/1000000000000 : ℚ), (-438278087/5000000000 : ℚ), (25263641431/1000000000000 : ℚ), 2⟩,
    ⟨(102590532249/250000000000 : ℚ), (-150636469/1250000000 : ℚ), (38611693159/1000000000000 : ℚ), 2⟩,
    ⟨(208899726213/500000000000 : ℚ), (-23136933/156250000 : ℚ), (50025103363/1000000000000 : ℚ), 2⟩,
    ⟨(212301350219/500000000000 : ℚ), (-855684481/5000000000 : ℚ), (29868567919/500000000000 : ℚ), 2⟩,
    ⟨(430706354037/1000000000000 : ℚ), (-1902924257/10000000000 : ℚ), (4245524547/62500000000 : ℚ), 2⟩,
    ⟨(436051631701/1000000000000 : ℚ), (-2060070569/10000000000 : ℚ), (7473836629/100000000000 : ℚ), 2⟩,
    ⟨(88117411097/200000000000 : ℚ), (-546592339/2500000000 : ℚ), (2006851333/25000000000 : ℚ), 2⟩,
    ⟨(222134473389/500000000000 : ℚ), (-2284520131/10000000000 : ℚ), (42308201241/500000000000 : ℚ), 2⟩,
    ⟨(223530923477/500000000000 : ℚ), (-94260777/400000000 : ℚ), (87825114091/1000000000000 : ℚ), 2⟩,
    ⟨(224469429429/500000000000 : ℚ), (-1201887469/5000000000 : ℚ), (89942148803/1000000000000 : ℚ), 2⟩,
    ⟨(449881905839/1000000000000 : ℚ), (-485436851/2000000000 : ℚ), (90994186067/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-486020059/2000000000 : ℚ), (1822507813/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (30699166281/100000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control199.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control199.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate199
