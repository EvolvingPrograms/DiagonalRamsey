import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate240
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(158769134817/500000000000 : ℚ), (13300782299159/10000000000 : ℚ), (-423289085375087/1000000000000 : ℚ), 11⟩,
    ⟨(31851259069/100000000000 : ℚ), (725512415067/5000000000 : ℚ), (-46801483105223/1000000000000 : ℚ), 8⟩,
    ⟨(160225924779/500000000000 : ℚ), (25366822263/500000000 : ℚ), (-16682425315867/1000000000000 : ℚ), 7⟩,
    ⟨(64667474023/200000000000 : ℚ), (249289378857/10000000000 : ℚ), (-4192125670277/500000000000 : ℚ), 6⟩,
    ⟨(16357068161/50000000000 : ℚ), (72094433369/5000000000 : ℚ), (-496928557929/100000000000 : ℚ), 5⟩,
    ⟨(331827194341/1000000000000 : ℚ), (1432362959/156250000 : ℚ), (-3240544756661/1000000000000 : ℚ), 5⟩,
    ⟨(337349736363/1000000000000 : ℚ), (61924562559/10000000000 : ℚ), (-2246162347607/1000000000000 : ℚ), 4⟩,
    ⟨(68731160837/200000000000 : ℚ), (5447869099/1250000000 : ℚ), (-324434182947/200000000000 : ℚ), 4⟩,
    ⟨(350684666929/1000000000000 : ℚ), (1577882053/500000000 : ℚ), (-1205034932993/1000000000000 : ℚ), 4⟩,
    ⟨(89592158201/250000000000 : ℚ), (23297863851/10000000000 : ℚ), (-912433817233/1000000000000 : ℚ), 3⟩,
    ⟨(366633701017/1000000000000 : ℚ), (17413073977/10000000000 : ℚ), (-699266613307/1000000000000 : ℚ), 3⟩,
    ⟨(93850068611/250000000000 : ℚ), (6547204827/5000000000 : ℚ), (-134786657353/250000000000 : ℚ), 3⟩,
    ⟨(384583926191/1000000000000 : ℚ), (9615683/9765625 : ℚ), (-415805138009/1000000000000 : ℚ), 3⟩,
    ⟨(39409621267/100000000000 : ℚ), (919100209/1250000000 : ℚ), (-318773239383/1000000000000 : ℚ), 3⟩,
    ⟨(403845525363/1000000000000 : ℚ), (5404208261/10000000000 : ℚ), (-6026771233/25000000000 : ℚ), 3⟩,
    ⟨(20686898653/50000000000 : ℚ), (385825213/1000000000 : ℚ), (-35580650069/200000000000 : ℚ), 2⟩,
    ⟨(330998661/781250000 : ℚ), (2615563209/10000000000 : ℚ), (-25178539101/200000000000 : ℚ), 2⟩,
    ⟨(433570733777/1000000000000 : ℚ), (802669201/5000000000 : ℚ), (-82607987233/1000000000000 : ℚ), 2⟩,
    ⟨(44332004647/100000000000 : ℚ), (776209549/10000000000 : ℚ), (-46266910391/1000000000000 : ℚ), 2⟩,
    ⟨(452832332949/1000000000000 : ℚ), (45162429/5000000000 : ℚ), (-15542551383/1000000000000 : ℚ), 2⟩,
    ⟨(92403196939/200000000000 : ℚ), (-480581977/10000000000 : ℚ), (10565980969/1000000000000 : ℚ), 2⟩,
    ⟨(235391279061/500000000000 : ℚ), (-478929627/5000000000 : ℚ), (32821798769/1000000000000 : ℚ), 2⟩,
    ⟨(14970238323/31250000000 : ℚ), (-1357782071/10000000000 : ℚ), (25905843031/500000000000 : ℚ), 2⟩,
    ⟨(48673159221/100000000000 : ℚ), (-52901553/312500000 : ℚ), (67989666101/1000000000000 : ℚ), 2⟩,
    ⟨(246880227477/500000000000 : ℚ), (-1972711421/10000000000 : ℚ), (1634167797/20000000000 : ℚ), 2⟩,
    ⟨(500066522777/1000000000000 : ℚ), (-275604453/1250000000 : ℚ), (9324207061/100000000000 : ℚ), 2⟩,
    ⟨(252794532399/500000000000 : ℚ), (-299374773/1250000000 : ℚ), (51401719511/500000000000 : ℚ), 2⟩,
    ⟨(510274895919/1000000000000 : ℚ), (-2547641533/10000000000 : ℚ), (13819548107/125000000000 : ℚ), 2⟩,
    ⟨(20563155561/40000000000 : ℚ), (-2666139237/10000000000 : ℚ), (58312707607/500000000000 : ℚ), 2⟩,
    ⟨(258482204791/500000000000 : ℚ), (-2752990019/10000000000 : ℚ), (121102699933/1000000000000 : ℚ), 2⟩,
    ⟨(10378073369/20000000000 : ℚ), (-2809957589/10000000000 : ℚ), (7753326653/62500000000 : ℚ), 2⟩,
    ⟨(259938994753/500000000000 : ℚ), (-2838167371/10000000000 : ℚ), (31379603619/250000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2841680891/10000000000 : ℚ), (125701096067/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (132498139801/500000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control240.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control240.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate240
