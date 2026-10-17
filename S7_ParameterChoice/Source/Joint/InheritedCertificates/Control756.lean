import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate756
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(179716488443/500000000000 : ℚ), (13582997629593/10000000000 : ℚ), (-488794942596117/1000000000000 : ℚ), 13⟩,
    ⟨(360013190189/1000000000000 : ℚ), (1489286895743/10000000000 : ℚ), (-6747241176403/125000000000 : ℚ), 10⟩,
    ⟨(11286500907/31250000000 : ℚ), (65512640333/1250000000 : ℚ), (-4798137909271/250000000000 : ℚ), 8⟩,
    ⟨(362886371661/1000000000000 : ℚ), (259238210419/10000000000 : ℚ), (-1921760862481/200000000000 : ℚ), 7⟩,
    ⟨(182575834761/500000000000 : ℚ), (75418952401/5000000000 : ℚ), (-566485330907/100000000000 : ℚ), 7⟩,
    ⟨(7358842131/20000000000 : ℚ), (48172182047/5000000000 : ℚ), (-366841030689/100000000000 : ℚ), 6⟩,
    ⟨(37123080931/100000000000 : ℚ), (65260231483/10000000000 : ℚ), (-252014082011/100000000000 : ℚ), 6⟩,
    ⟨(187493052899/500000000000 : ℚ), (4594183421/1000000000 : ℚ), (-179969226091/100000000000 : ℚ), 5⟩,
    ⟨(75834366091/200000000000 : ℚ), (8291749419/2500000000 : ℚ), (-1318195687701/1000000000000 : ℚ), 5⟩,
    ⟨(76749534493/200000000000 : ℚ), (24312553973/10000000000 : ℚ), (-122572253849/125000000000 : ℚ), 5⟩,
    ⟨(388669563967/1000000000000 : ℚ), (8972420747/5000000000 : ℚ), (-367375140699/500000000000 : ℚ), 5⟩,
    ⟨(393890104457/1000000000000 : ℚ), (13227378549/10000000000 : ℚ), (-68779370483/125000000000 : ℚ), 4⟩,
    ⟨(15974360691/40000000000 : ℚ), (4822995439/5000000000 : ℚ), (-40823807057/100000000000 : ℚ), 4⟩,
    ⟨(202511816901/500000000000 : ℚ), (3435446863/5000000000 : ℚ), (-296662123709/1000000000000 : ℚ), 4⟩,
    ⟨(410829400683/1000000000000 : ℚ), (4682974177/10000000000 : ℚ), (-207437450861/1000000000000 : ℚ), 4⟩,
    ⟨(416720405209/1000000000000 : ℚ), (183267049/625000000 : ℚ), (-13501721253/100000000000 : ℚ), 4⟩,
    ⟨(105659978447/250000000000 : ℚ), (94596727/625000000 : ℚ), (-75490431053/1000000000000 : ℚ), 4⟩,
    ⟨(214265459157/500000000000 : ℚ), (43917699/1250000000 : ℚ), (-13019588451/500000000000 : ℚ), 4⟩,
    ⟨(86867337039/200000000000 : ℚ), (-609444191/10000000000 : ℚ), (7702312031/500000000000 : ℚ), 4⟩,
    ⟨(220000650861/500000000000 : ℚ), (-44052251/312500000 : ℚ), (2519122347/50000000000 : ℚ), 4⟩,
    ⟨(22273510727/50000000000 : ℚ), (-2080043863/10000000000 : ℚ), (40029055889/500000000000 : ℚ), 3⟩,
    ⟨(45069075503/100000000000 : ℚ), (-1321938177/5000000000 : ℚ), (5265971113/50000000000 : ℚ), 3⟩,
    ⟨(113903161633/250000000000 : ℚ), (-194939271/625000000 : ℚ), (126848964239/1000000000000 : ℚ), 3⟩,
    ⟨(230094244271/500000000000 : ℚ), (-3519263743/10000000000 : ℚ), (145174360369/1000000000000 : ℚ), 3⟩,
    ⟨(464374213199/1000000000000 : ℚ), (-77104623/200000000 : ℚ), (160704572481/1000000000000 : ℚ), 3⟩,
    ⟨(468129509687/1000000000000 : ℚ), (-2067588957/5000000000 : ℚ), (34751309219/200000000000 : ℚ), 3⟩,
    ⟨(471418212447/1000000000000 : ℚ), (-4365477147/10000000000 : ℚ), (92287521033/500000000000 : ℚ), 3⟩,
    ⟨(18968345979/40000000000 : ℚ), (-182040801/400000000 : ℚ), (6042111173/31250000000 : ℚ), 3⟩,
    ⟨(95294789467/200000000000 : ℚ), (-4695508969/10000000000 : ℚ), (50053903467/250000000000 : ℚ), 3⟩,
    ⟨(478192289973/1000000000000 : ℚ), (-2400837919/5000000000 : ℚ), (102641634479/500000000000 : ℚ), 3⟩,
    ⟨(479347128807/1000000000000 : ℚ), (-4871441479/10000000000 : ℚ), (208623424513/1000000000000 : ℚ), 3⟩,
    ⟨(47992734211/100000000000 : ℚ), (-4906027533/10000000000 : ℚ), (210282298943/1000000000000 : ℚ), 3⟩,
    ⟨(12/25 : ℚ), (-2455168523/5000000000 : ℚ), (210489139921/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (395534980441/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control756.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control756.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate756
