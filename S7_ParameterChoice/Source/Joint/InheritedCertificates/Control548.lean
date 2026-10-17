import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate548
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144121062323/500000000000 : ℚ), (1297051805523/1000000000 : ℚ), (-374552749334443/1000000000000 : ℚ), 12⟩,
    ⟨(288972439917/1000000000000 : ℚ), (1417545263089/10000000000 : ℚ), (-8278425466971/200000000000 : ℚ), 9⟩,
    ⟨(290426037123/1000000000000 : ℚ), (496763256887/10000000000 : ℚ), (-14739152659753/1000000000000 : ℚ), 7⟩,
    ⟨(292588917329/1000000000000 : ℚ), (244648278899/10000000000 : ℚ), (-184895676539/25000000000 : ℚ), 6⟩,
    ⟨(59088050163/200000000000 : ℚ), (17722183509/1250000000 : ℚ), (-546712954579/125000000000 : ℚ), 6⟩,
    ⟨(298952577683/1000000000000 : ℚ), (90256612881/10000000000 : ℚ), (-355464904371/125000000000 : ℚ), 5⟩,
    ⟨(303092072303/1000000000000 : ℚ), (30497662621/5000000000 : ℚ), (-1963554835139/1000000000000 : ℚ), 5⟩,
    ⟨(7695471727/25000000000 : ℚ), (21448518287/5000000000 : ℚ), (-705566916741/500000000000 : ℚ), 4⟩,
    ⟨(156543723189/500000000000 : ℚ), (3099042963/1000000000 : ℚ), (-52087258533/50000000000 : ℚ), 4⟩,
    ⟨(63769412983/200000000000 : ℚ), (22781695951/10000000000 : ℚ), (-782545893661/1000000000000 : ℚ), 4⟩,
    ⟨(325042256419/1000000000000 : ℚ), (16910084649/10000000000 : ℚ), (-118725756937/200000000000 : ℚ), 4⟩,
    ⟨(331613357807/1000000000000 : ℚ), (12583199373/10000000000 : ℚ), (-451646572007/1000000000000 : ℚ), 4⟩,
    ⟨(338497085781/1000000000000 : ℚ), (465754517/500000000 : ℚ), (-342204930343/1000000000000 : ℚ), 3⟩,
    ⟨(172813573139/500000000000 : ℚ), (6794920283/10000000000 : ℚ), (-256041364063/1000000000000 : ℚ), 3⟩,
    ⟨(352934872917/1000000000000 : ℚ), (4816811007/10000000000 : ℚ), (-186980278767/1000000000000 : ℚ), 3⟩,
    ⟨(360349888297/1000000000000 : ℚ), (324035969/1000000000 : ℚ), (-26155938447/200000000000 : ℚ), 3⟩,
    ⟨(73560156353/200000000000 : ℚ), (1967417901/10000000000 : ℚ), (-84451434299/1000000000000 : ℚ), 3⟩,
    ⟨(75043159429/200000000000 : ℚ), (115989149/1250000000 : ℚ), (-2292251323/50000000000 : ℚ), 3⟩,
    ⟨(47815440473/125000000000 : ℚ), (17726847/2500000000 : ℚ), (-6692252263/500000000000 : ℚ), 3⟩,
    ⟨(389653584281/1000000000000 : ℚ), (-320601797/5000000000 : ℚ), (14102856733/1000000000000 : ℚ), 3⟩,
    ⟨(387243469/976562500 : ℚ), (-123654627/1000000000 : ℚ), (2343804153/62500000000 : ℚ), 3⟩,
    ⟨(100777103411/250000000000 : ℚ), (-217048793/1250000000 : ℚ), (57482468541/1000000000000 : ℚ), 3⟩,
    ⟨(409303605147/1000000000000 : ℚ), (-215696453/1000000000 : ℚ), (74564128049/1000000000000 : ℚ), 3⟩,
    ⟨(83012644737/200000000000 : ℚ), (-1255368247/5000000000 : ℚ), (44572217599/500000000000 : ℚ), 3⟩,
    ⟨(210165900491/500000000000 : ℚ), (-2807328871/10000000000 : ℚ), (5076598549/50000000000 : ℚ), 3⟩,
    ⟨(425058597759/1000000000000 : ℚ), (-122167339/400000000 : ℚ), (22393144807/200000000000 : ℚ), 2⟩,
    ⟨(21459904619/50000000000 : ℚ), (-101782753/312500000 : ℚ), (60315120457/500000000000 : ℚ), 2⟩,
    ⟨(432710419247/1000000000000 : ℚ), (-1710167963/5000000000 : ℚ), (127666972659/1000000000000 : ℚ), 2⟩,
    ⟨(217780876367/500000000000 : ℚ), (-709478329/2000000000 : ℚ), (66591403551/500000000000 : ℚ), 2⟩,
    ⟨(437724632939/1000000000000 : ℚ), (-728137493/2000000000 : ℚ), (137256459073/1000000000000 : ℚ), 2⟩,
    ⟨(87835646029/200000000000 : ℚ), (-3701965027/10000000000 : ℚ), (69971584493/500000000000 : ℚ), 2⟩,
    ⟨(54988568177/125000000000 : ℚ), (-933083483/2500000000 : ℚ), (70639006211/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-186805877/500000000 : ℚ), (141444473883/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (35751580629/100000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control548.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control548.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate548
