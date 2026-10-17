import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate309
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(223908979299/1000000000000 : ℚ), (5784254396823/5000000000 : ℚ), (-64913349851571/250000000000 : ℚ), 11⟩,
    ⟨(8986405891/40000000000 : ℚ), (1260451796473/10000000000 : ℚ), (-717606821199/25000000000 : ℚ), 8⟩,
    ⟨(56538812267/250000000000 : ℚ), (219941113049/5000000000 : ℚ), (-2557047979939/250000000000 : ℚ), 7⟩,
    ⟨(14273742877/62500000000 : ℚ), (4313015491/200000000 : ℚ), (-1027529899041/200000000000 : ℚ), 6⟩,
    ⟨(46262526739/200000000000 : ℚ), (12440214781/1000000000 : ℚ), (-3042555979389/1000000000000 : ℚ), 5⟩,
    ⟨(117462624047/500000000000 : ℚ), (9856478549/1250000000 : ℚ), (-1981784959717/1000000000000 : ℚ), 5⟩,
    ⟨(239182937779/1000000000000 : ℚ), (26539455029/5000000000 : ℚ), (-685717011117/500000000000 : ℚ), 4⟩,
    ⟨(24404469887/100000000000 : ℚ), (37203904537/10000000000 : ℚ), (-197647311201/200000000000 : ℚ), 4⟩,
    ⟨(249463709949/1000000000000 : ℚ), (837664543/312500000 : ℚ), (-731877511493/1000000000000 : ℚ), 4⟩,
    ⟨(255387782979/1000000000000 : ℚ), (19667765887/10000000000 : ℚ), (-137965517171/250000000000 : ℚ), 3⟩,
    ⟨(261759865897/1000000000000 : ℚ), (14584530017/10000000000 : ℚ), (-420527579957/1000000000000 : ℚ), 3⟩,
    ⟨(268518592061/1000000000000 : ℚ), (10854081103/10000000000 : ℚ), (-321691817669/1000000000000 : ℚ), 3⟩,
    ⟨(68899717811/250000000000 : ℚ), (8047188801/10000000000 : ℚ), (-958514631/3906250000 : ℚ), 3⟩,
    ⟨(282932516487/1000000000000 : ℚ), (1472504203/2500000000 : ℚ), (-185174638761/1000000000000 : ℚ), 3⟩,
    ⟨(36306112597/125000000000 : ℚ), (210087091/500000000 : ℚ), (-136800429249/1000000000000 : ℚ), 3⟩,
    ⟨(37259454653/125000000000 : ℚ), (2859467527/10000000000 : ℚ), (-97322111993/1000000000000 : ℚ), 3⟩,
    ⟨(305739276187/1000000000000 : ℚ), (1777605887/10000000000 : ℚ), (-16168589393/250000000000 : ℚ), 3⟩,
    ⟨(62673202527/200000000000 : ℚ), (895299063/10000000000 : ℚ), (-233580617/6250000000 : ℚ), 2⟩,
    ⟨(80220599231/250000000000 : ℚ), (33699153/2000000000 : ℚ), (-14331934713/1000000000000 : ℚ), 2⟩,
    ⟨(328216042167/1000000000000 : ℚ), (-435181623/10000000000 : ℚ), (2627377323/500000000000 : ℚ), 2⟩,
    ⟨(6705926427/20000000000 : ℚ), (-939844213/10000000000 : ℚ), (2199320553/100000000000 : ℚ), 2⟩,
    ⟨(171027523757/500000000000 : ℚ), (-272729469/2000000000 : ℚ), (18171755619/500000000000 : ℚ), 2⟩,
    ⟨(5444173913/15625000000 : ℚ), (-1720387661/10000000000 : ℚ), (9731528169/200000000000 : ℚ), 2⟩,
    ⟨(177175601731/500000000000 : ℚ), (-25257819/125000000 : ℚ), (59206297697/1000000000000 : ℚ), 2⟩,
    ⟨(359770214541/1000000000000 : ℚ), (-1136242711/5000000000 : ℚ), (68198311413/1000000000000 : ℚ), 2⟩,
    ⟨(22789498477/62500000000 : ℚ), (-2482233977/10000000000 : ℚ), (3789742213/50000000000 : ℚ), 2⟩,
    ⟨(368889665317/1000000000000 : ℚ), (-2654701407/10000000000 : ℚ), (20529980507/250000000000 : ℚ), 2⟩,
    ⟨(372502279717/1000000000000 : ℚ), (-2793591063/10000000000 : ℚ), (87268309097/1000000000000 : ℚ), 2⟩,
    ⟨(375435027379/1000000000000 : ℚ), (-1450853591/5000000000 : ℚ), (91311415311/1000000000000 : ℚ), 2⟩,
    ⟨(377659664343/1000000000000 : ℚ), (-2981121629/10000000000 : ℚ), (9430170489/100000000000 : ℚ), 2⟩,
    ⟨(47394345767/125000000000 : ℚ), (-3033293869/10000000000 : ℚ), (96275928357/1000000000000 : ℚ), 2⟩,
    ⟨(11872060441/31250000000 : ℚ), (-764788449/2500000000 : ℚ), (778059117/8000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-612475161/2000000000 : ℚ), (97379810817/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (88001904363/250000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control309.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control309.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate309
