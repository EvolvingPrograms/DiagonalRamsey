import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate339
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28173401389/100000000000 : ℚ), (279144887073/250000000 : ℚ), (-157672894576269/500000000000 : ℚ), 11⟩,
    ⟨(141344071733/500000000000 : ℚ), (60830849747/500000000 : ℚ), (-4358615218381/125000000000 : ℚ), 8⟩,
    ⟨(284587213829/1000000000000 : ℚ), (106164043241/2500000000 : ℚ), (-2486135873357/200000000000 : ℚ), 7⟩,
    ⟨(143706467947/500000000000 : ℚ), (8330527093/400000000 : ℚ), (-6248594290533/1000000000000 : ℚ), 6⟩,
    ⟨(291138096411/1000000000000 : ℚ), (120218044019/10000000000 : ℚ), (-3704388000729/1000000000000 : ℚ), 5⟩,
    ⟨(295726820049/1000000000000 : ℚ), (76277283743/10000000000 : ℚ), (-1208181727757/500000000000 : ℚ), 5⟩,
    ⟨(301134914891/1000000000000 : ℚ), (51423639609/10000000000 : ℚ), (-418849379273/250000000000 : ℚ), 4⟩,
    ⟨(307310298027/1000000000000 : ℚ), (36122269717/10000000000 : ℚ), (-1210342078179/1000000000000 : ℚ), 4⟩,
    ⟨(314193497141/1000000000000 : ℚ), (163162309/62500000 : ℚ), (-899367621309/1000000000000 : ℚ), 4⟩,
    ⟨(10053694477/31250000000 : ℚ), (19236871431/10000000000 : ℚ), (-681148593779/1000000000000 : ℚ), 3⟩,
    ⟨(329812009169/1000000000000 : ℚ), (14350246343/10000000000 : ℚ), (-130521908383/250000000000 : ℚ), 3⟩,
    ⟨(169198453637/500000000000 : ℚ), (2692274457/2500000000 : ℚ), (-80505872557/200000000000 : ℚ), 3⟩,
    ⟨(347390240317/1000000000000 : ℚ), (8079148751/10000000000 : ℚ), (-155178135663/500000000000 : ℚ), 3⟩,
    ⟨(22294087349/62500000000 : ℚ), (6016071433/10000000000 : ℚ), (-237771757731/1000000000000 : ℚ), 3⟩,
    ⟨(366252669019/1000000000000 : ℚ), (1101322037/2500000000 : ℚ), (-22447305951/125000000000 : ℚ), 3⟩,
    ⟨(375940109179/1000000000000 : ℚ), (625622729/2000000000 : ℚ), (-132207131331/1000000000000 : ℚ), 3⟩,
    ⟨(385674422719/1000000000000 : ℚ), (2101859421/10000000000 : ℚ), (-93144308429/1000000000000 : ℚ), 2⟩,
    ⟨(395361862879/1000000000000 : ℚ), (792311/6250000 : ℚ), (-60581717721/1000000000000 : ℚ), 2⟩,
    ⟨(202454567157/500000000000 : ℚ), (291508187/5000000000 : ℚ), (-33194639217/1000000000000 : ℚ), 2⟩,
    ⟨(414224291581/1000000000000 : ℚ), (16468531/10000000000 : ℚ), (-4998792869/500000000000 : ℚ), 2⟩,
    ⟨(26451101539/62500000000 : ℚ), (-455314801/10000000000 : ℚ), (9752032303/1000000000000 : ℚ), 2⟩,
    ⟨(431802522729/1000000000000 : ℚ), (-424976211/5000000000 : ℚ), (13309837989/500000000000 : ℚ), 2⟩,
    ⟨(219948154317/500000000000 : ℚ), (-1180852781/10000000000 : ℚ), (41039492697/1000000000000 : ℚ), 2⟩,
    ⟨(447421034757/1000000000000 : ℚ), (-729147893/5000000000 : ℚ), (53346812751/1000000000000 : ℚ), 2⟩,
    ⟨(454304233871/1000000000000 : ℚ), (-845102029/5000000000 : ℚ), (31900787809/500000000000 : ℚ), 2⟩,
    ⟨(460479617007/1000000000000 : ℚ), (-1882699693/10000000000 : ℚ), (72605459937/1000000000000 : ℚ), 2⟩,
    ⟨(465887711849/1000000000000 : ℚ), (-408102051/2000000000 : ℚ), (3995727929/50000000000 : ℚ), 2⟩,
    ⟨(470476435487/1000000000000 : ℚ), (-270908361/1250000000 : ℚ), (42924418767/500000000000 : ℚ), 2⟩,
    ⟨(118550399001/250000000000 : ℚ), (-2265723731/10000000000 : ℚ), (90499219319/1000000000000 : ℚ), 2⟩,
    ⟨(119256829517/250000000000 : ℚ), (-584479657/2500000000 : ℚ), (23483215977/250000000000 : ℚ), 2⟩,
    ⟨(478926388431/1000000000000 : ℚ), (-2385288809/10000000000 : ℚ), (19239406917/200000000000 : ℚ), 2⟩,
    ⟨(59985064751/125000000000 : ℚ), (-2408750829/10000000000 : ℚ), (97321810177/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2411673241/10000000000 : ℚ), (97462068459/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (8324878703/25000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control339.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control339.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate339
