import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate207
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(234471567977/1000000000000 : ℚ), (10971789016901/10000000000 : ℚ), (-128978950506927/500000000000 : ℚ), 11⟩,
    ⟨(235364399711/1000000000000 : ℚ), (1193517999649/10000000000 : ℚ), (-1426231232351/50000000000 : ℚ), 8⟩,
    ⟨(118570732361/500000000000 : ℚ), (83128526561/2000000000 : ℚ), (-5084923891737/500000000000 : ℚ), 7⟩,
    ⟨(239785648903/1000000000000 : ℚ), (50828265173/2500000000 : ℚ), (-5112769982677/1000000000000 : ℚ), 6⟩,
    ⟨(243271487313/1000000000000 : ℚ), (58519259947/5000000000 : ℚ), (-3031494613171/1000000000000 : ℚ), 5⟩,
    ⟨(247565409423/1000000000000 : ℚ), (74052369211/10000000000 : ℚ), (-1977764493281/1000000000000 : ℚ), 4⟩,
    ⟨(252626062417/1000000000000 : ℚ), (6223013149/1250000000 : ℚ), (-685753445151/500000000000 : ℚ), 4⟩,
    ⟨(807514717/3125000000 : ℚ), (34873148043/10000000000 : ℚ), (-123864737169/125000000000 : ℚ), 4⟩,
    ⟨(264845698961/1000000000000 : ℚ), (1005301423/400000000 : ℚ), (-147267681381/200000000000 : ℚ), 3⟩,
    ⟨(67971750183/250000000000 : ℚ), (18466015187/10000000000 : ℚ), (-278801451881/500000000000 : ℚ), 3⟩,
    ⟨(55892160633/200000000000 : ℚ), (1373248541/1000000000 : ℚ), (-427228615819/1000000000000 : ℚ), 3⟩,
    ⟨(57498833281/200000000000 : ℚ), (10269364847/10000000000 : ℚ), (-164569144733/500000000000 : ℚ), 3⟩,
    ⟨(295909724771/1000000000000 : ℚ), (1917925097/2500000000 : ℚ), (-253421546693/1000000000000 : ℚ), 3⟩,
    ⟨(76156607959/250000000000 : ℚ), (5681493299/10000000000 : ℚ), (-96851666959/500000000000 : ℚ), 3⟩,
    ⟨(62712068189/200000000000 : ℚ), (1032159107/2500000000 : ℚ), (-29147098593/200000000000 : ℚ), 2⟩,
    ⟨(322625413671/1000000000000 : ℚ), (579541533/2000000000 : ℚ), (-106602326909/1000000000000 : ℚ), 2⟩,
    ⟨(41466793551/125000000000 : ℚ), (190846489/1000000000 : ℚ), (-74252217831/1000000000000 : ℚ), 2⟩,
    ⟨(170399710567/500000000000 : ℚ), (4415817/40000000 : ℚ), (-23605412557/500000000000 : ℚ), 2⟩,
    ⟨(349733330243/1000000000000 : ℚ), (443024261/10000000000 : ℚ), (-6099904393/250000000000 : ℚ), 2⟩,
    ⟨(89612509327/250000000000 : ℚ), (-13064893/1250000000 : ℚ), (-5017712811/1000000000000 : ℚ), 2⟩,
    ⟨(183432797837/500000000000 : ℚ), (-14028129/250000000 : ℚ), (11537036943/1000000000000 : ℚ), 2⟩,
    ⟨(374898958913/1000000000000 : ℚ), (-117959247/1250000000 : ℚ), (3215243853/125000000000 : ℚ), 2⟩,
    ⟨(382472761347/1000000000000 : ℚ), (-1264978303/10000000000 : ℚ), (3788709433/100000000000 : ℚ), 2⟩,
    ⟨(389514063117/1000000000000 : ℚ), (-153483673/1000000000 : ℚ), (48301950203/1000000000000 : ℚ), 2⟩,
    ⟨(395955052639/1000000000000 : ℚ), (-440195841/2500000000 : ℚ), (57174659067/1000000000000 : ℚ), 2⟩,
    ⟨(401733699661/1000000000000 : ℚ), (-1948627881/10000000000 : ℚ), (64666096869/1000000000000 : ℚ), 2⟩,
    ⟨(25424647041/62500000000 : ℚ), (-2102848421/10000000000 : ℚ), (2836011811/40000000000 : ℚ), 2⟩,
    ⟨(205544137383/500000000000 : ℚ), (-1113439661/5000000000 : ℚ), (3038888691/40000000000 : ℚ), 2⟩,
    ⟨(51821764147/125000000000 : ℚ), (-2323322299/10000000000 : ℚ), (9994197221/125000000000 : ℚ), 2⟩,
    ⟨(104304574339/250000000000 : ℚ), (-119705033/500000000 : ℚ), (20724294771/250000000000 : ℚ), 2⟩,
    ⟨(418995362367/1000000000000 : ℚ), (-2440569979/10000000000 : ℚ), (84840080247/1000000000000 : ℚ), 2⟩,
    ⟨(209944097051/500000000000 : ℚ), (-2463594377/10000000000 : ℚ), (85805818101/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1233231341/5000000000 : ℚ), (85926270889/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (159965658541/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control207.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control207.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate207
