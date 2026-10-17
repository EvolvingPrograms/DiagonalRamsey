import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate294
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252664761249/1000000000000 : ℚ), (10875070819789/10000000000 : ℚ), (-27547845151873/100000000000 : ℚ), 11⟩,
    ⟨(31695786001/125000000000 : ℚ), (236816161813/2000000000 : ℚ), (-30460535172821/1000000000000 : ℚ), 8⟩,
    ⟨(255360659331/1000000000000 : ℚ), (412876815263/10000000000 : ℚ), (-1357373381913/125000000000 : ℚ), 7⟩,
    ⟨(129015297221/500000000000 : ℚ), (202246397217/10000000000 : ℚ), (-5458412311601/1000000000000 : ℚ), 6⟩,
    ⟨(52310076081/200000000000 : ℚ), (116595298787/10000000000 : ℚ), (-647156699609/200000000000 : ℚ), 5⟩,
    ⟨(132943059879/500000000000 : ℚ), (73878918223/10000000000 : ℚ), (-1055253264649/500000000000 : ℚ), 5⟩,
    ⟨(423431339/1562500000 : ℚ), (24868250029/5000000000 : ℚ), (-365777015733/250000000000 : ℚ), 4⟩,
    ⟨(69207745131/250000000000 : ℚ), (34885134999/10000000000 : ℚ), (-26417986429/25000000000 : ℚ), 4⟩,
    ⟨(17708418559/62500000000 : ℚ), (12585671789/5000000000 : ℚ), (-98114182767/125000000000 : ℚ), 4⟩,
    ⟨(290444571877/1000000000000 : ℚ), (4628712309/2500000000 : ℚ), (-18566185491/31250000000 : ℚ), 3⟩,
    ⟨(298092133341/1000000000000 : ℚ), (13782715653/10000000000 : ℚ), (-227491873027/500000000000 : ℚ), 3⟩,
    ⟨(153101865569/500000000000 : ℚ), (10316724233/10000000000 : ℚ), (-175170744193/500000000000 : ℚ), 3⟩,
    ⟨(314701246147/1000000000000 : ℚ), (308572373/400000000 : ℚ), (-269607003349/1000000000000 : ℚ), 3⟩,
    ⟨(323502842653/1000000000000 : ℚ), (5718782947/10000000000 : ℚ), (-102985553083/500000000000 : ℚ), 3⟩,
    ⟨(332523756471/1000000000000 : ℚ), (4160741659/10000000000 : ℚ), (-77447771957/500000000000 : ℚ), 3⟩,
    ⟨(341677111269/1000000000000 : ℚ), (2925117651/10000000000 : ℚ), (-11326466713/100000000000 : ℚ), 3⟩,
    ⟨(350874755237/1000000000000 : ℚ), (965910247/5000000000 : ℚ), (-2465165881/31250000000 : ℚ), 2⟩,
    ⟨(180014055017/500000000000 : ℚ), (1123931519/10000000000 : ℚ), (-50180576681/1000000000000 : ℚ), 2⟩,
    ⟨(92262255963/250000000000 : ℚ), (460269453/10000000000 : ℚ), (-25996142601/1000000000000 : ℚ), 2⟩,
    ⟨(377850620359/1000000000000 : ℚ), (-89423347/10000000000 : ℚ), (-1368530449/250000000000 : ℚ), 2⟩,
    ⟨(48293516921/125000000000 : ℚ), (-547674511/10000000000 : ℚ), (3007782789/250000000000 : ℚ), 2⟩,
    ⟨(98614933291/250000000000 : ℚ), (-931446163/10000000000 : ℚ), (13505265827/500000000000 : ℚ), 2⟩,
    ⟨(100526823657/250000000000 : ℚ), (-1253629789/10000000000 : ℚ), (19920170027/500000000000 : ℚ), 2⟩,
    ⟨(204608584781/500000000000 : ℚ), (-190511991/1250000000 : ℚ), (50810602329/1000000000000 : ℚ), 2⟩,
    ⟨(207860442991/500000000000 : ℚ), (-350088403/2000000000 : ℚ), (60145663769/1000000000000 : ℚ), 2⟩,
    ⟨(84311161909/200000000000 : ℚ), (-121158239/625000000 : ℚ), (68019178289/1000000000000 : ℚ), 2⟩,
    ⟨(426665746747/1000000000000 : ℚ), (-2092888477/10000000000 : ℚ), (3728261019/50000000000 : ℚ), 2⟩,
    ⟨(4310014861/10000000000 : ℚ), (-277122841/1250000000 : ℚ), (79886581273/1000000000000 : ℚ), 2⟩,
    ⟨(434521272063/1000000000000 : ℚ), (-462688981/2000000000 : ℚ), (84060983523/1000000000000 : ℚ), 2⟩,
    ⟨(218595603587/500000000000 : ℚ), (-2384219939/10000000000 : ℚ), (1089321411/12500000000 : ℚ), 2⟩,
    ⟨(219492789249/500000000000 : ℚ), (-2430678839/10000000000 : ℚ), (5573813147/62500000000 : ℚ), 2⟩,
    ⟨(439887105257/1000000000000 : ℚ), (-19169497/78125000 : ℚ), (9019244957/100000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-307070357/1250000000 : ℚ), (90318591933/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (42702952019/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control294.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control294.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate294
