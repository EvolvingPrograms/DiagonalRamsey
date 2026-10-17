import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate471
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289778752647/1000000000000 : ℚ), (8291455302687/5000000000 : ℚ), (-60161754259253/125000000000 : ℚ), 12⟩,
    ⟨(290405425663/1000000000000 : ℚ), (907301956763/5000000000 : ℚ), (-26584771480059/500000000000 : ℚ), 9⟩,
    ⟨(72913184123/250000000000 : ℚ), (63691176423/1000000000 : ℚ), (-189194247059/10000000000 : ℚ), 7⟩,
    ⟨(293508672849/1000000000000 : ℚ), (39270139659/1250000000 : ℚ), (-592685338217/62500000000 : ℚ), 6⟩,
    ⟨(295955361051/1000000000000 : ℚ), (22788170497/1250000000 : ℚ), (-349963844711/62500000000 : ℚ), 6⟩,
    ⟨(59793847631/200000000000 : ℚ), (116165829629/10000000000 : ℚ), (-3633335479689/1000000000000 : ℚ), 5⟩,
    ⟨(2420170231/8000000000 : ℚ), (78533515949/10000000000 : ℚ), (-2502293985859/1000000000000 : ℚ), 5⟩,
    ⟨(153288637559/500000000000 : ℚ), (55209858471/10000000000 : ℚ), (-1792415581981/1000000000000 : ℚ), 4⟩,
    ⟨(311098165423/1000000000000 : ℚ), (2489437361/625000000 : ℚ), (-658870211551/500000000000 : ℚ), 4⟩,
    ⟨(63208082229/200000000000 : ℚ), (228147259/78125000 : ℚ), (-492330963627/500000000000 : ℚ), 4⟩,
    ⟨(321356415757/1000000000000 : ℚ), (4316286067/2000000000 : ℚ), (-29675886821/40000000000 : ℚ), 4⟩,
    ⟨(163497491613/500000000000 : ℚ), (996900497/625000000 : ℚ), (-34965211523/62500000000 : ℚ), 3⟩,
    ⟨(332901811067/1000000000000 : ℚ), (11685949183/10000000000 : ℚ), (-1308758433/3125000000 : ℚ), 3⟩,
    ⟨(339020013299/1000000000000 : ℚ), (8388619229/10000000000 : ℚ), (-61614379297/200000000000 : ℚ), 3⟩,
    ⟨(1348791673/3906250000 : ℚ), (579356267/1000000000 : ℚ), (-219314640713/1000000000000 : ℚ), 3⟩,
    ⟨(351653386201/1000000000000 : ℚ), (1859967997/5000000000 : ℚ), (-73539743661/500000000000 : ℚ), 3⟩,
    ⟨(71609378117/200000000000 : ℚ), (1020578679/5000000000 : ℚ), (-8752634729/100000000000 : ℚ), 3⟩,
    ⟨(364409608497/1000000000000 : ℚ), (666733769/10000000000 : ℚ), (-18945888511/500000000000 : ℚ), 3⟩,
    ⟨(370680263487/1000000000000 : ℚ), (-23460277/500000000 : ℚ), (3849200909/1000000000000 : ℚ), 3⟩,
    ⟨(188399232859/500000000000 : ℚ), (-14153517/100000000 : ℚ), (9800797753/250000000000 : ℚ), 3⟩,
    ⟨(382705293559/1000000000000 : ℚ), (-1104084211/5000000000 : ℚ), (69305340123/1000000000000 : ℚ), 3⟩,
    ⟨(388343861029/1000000000000 : ℚ), (-143763019/500000000 : ℚ), (95019653849/1000000000000 : ℚ), 3⟩,
    ⟨(9841496641/25000000000 : ℚ), (-3437709523/10000000000 : ℚ), (11700891091/100000000000 : ℚ), 3⟩,
    ⟨(199301055681/500000000000 : ℚ), (-3911723977/10000000000 : ℚ), (13578430401/100000000000 : ℚ), 2⟩,
    ⟨(403123001667/1000000000000 : ℚ), (-4309819853/10000000000 : ℚ), (9483830503/62500000000 : ℚ), 2⟩,
    ⟨(407178997911/1000000000000 : ℚ), (-580209951/1250000000 : ℚ), (165185860083/1000000000000 : ℚ), 2⟩,
    ⟨(410731038631/1000000000000 : ℚ), (-2457391143/5000000000 : ℚ), (35270814509/200000000000 : ℚ), 2⟩,
    ⟨(206872457867/500000000000 : ℚ), (-256743489/500000000 : ℚ), (185426658659/1000000000000 : ℚ), 2⟩,
    ⟨(416191603937/1000000000000 : ℚ), (-5306292707/10000000000 : ℚ), (96270019267/500000000000 : ℚ), 2⟩,
    ⟨(418047540293/1000000000000 : ℚ), (-2716132871/5000000000 : ℚ), (12362160487/62500000000 : ℚ), 2⟩,
    ⟨(209647425561/500000000000 : ℚ), (-220602111/400000000 : ℚ), (50315151769/250000000000 : ℚ), 2⟩,
    ⟨(209960762069/500000000000 : ℚ), (-5556095677/10000000000 : ℚ), (202982798951/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2780604897/5000000000 : ℚ), (50799392943/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (290324874223/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control471.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control471.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate471
