import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate645
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117758858017/500000000000 : ℚ), (1323961844753/625000000 : ℚ), (-499383844510641/1000000000000 : ℚ), 13⟩,
    ⟨(117914014369/500000000000 : ℚ), (1161634872907/5000000000 : ℚ), (-55086869567591/1000000000000 : ℚ), 10⟩,
    ⟨(47289133133/200000000000 : ℚ), (204348758439/2500000000 : ℚ), (-9771448647257/500000000000 : ℚ), 8⟩,
    ⟨(118682339317/500000000000 : ℚ), (201923229647/5000000000 : ℚ), (-9749899045941/1000000000000 : ℚ), 7⟩,
    ⟨(29822027131/125000000000 : ℚ), (234412164003/10000000000 : ℚ), (-5719555387037/1000000000000 : ℚ), 7⟩,
    ⟨(240068613129/1000000000000 : ℚ), (37279180713/2500000000 : ℚ), (-3679080428837/1000000000000 : ℚ), 6⟩,
    ⟨(241827494287/1000000000000 : ℚ), (100377054287/10000000000 : ℚ), (-100206965617/40000000000 : ℚ), 6⟩,
    ⟨(1904968137/7812500000 : ℚ), (35010645271/5000000000 : ℚ), (-44208053459/25000000000 : ℚ), 5⟩,
    ⟨(123037276311/500000000000 : ℚ), (24948365547/5000000000 : ℚ), (-63777058923/50000000000 : ℚ), 5⟩,
    ⟨(49704365661/200000000000 : ℚ), (35906651971/10000000000 : ℚ), (-929689606509/1000000000000 : ℚ), 5⟩,
    ⟨(251154179983/1000000000000 : ℚ), (25811121023/10000000000 : ℚ), (-677547839453/1000000000000 : ℚ), 5⟩,
    ⟨(253946256669/1000000000000 : ℚ), (9151330627/5000000000 : ℚ), (-12199498941/25000000000 : ℚ), 4⟩,
    ⟨(128435584569/500000000000 : ℚ), (12577227017/10000000000 : ℚ), (-68357851213/200000000000 : ℚ), 4⟩,
    ⟨(51980149777/200000000000 : ℚ), (4059447873/5000000000 : ℚ), (-226622632637/1000000000000 : ℚ), 4⟩,
    ⟨(263005819401/1000000000000 : ℚ), (4584758153/10000000000 : ℚ), (-134243705209/1000000000000 : ℚ), 4⟩,
    ⟨(266156477159/1000000000000 : ℚ), (1740070369/10000000000 : ℚ), (-11799004477/200000000000 : ℚ), 4⟩,
    ⟨(269322379603/1000000000000 : ℚ), (-36245283/625000000 : ℚ), (1554142609/500000000000 : ℚ), 4⟩,
    ⟨(272473037361/1000000000000 : ℚ), (-2493336037/10000000000 : ℚ), (5493323171/100000000000 : ℚ), 4⟩,
    ⟨(275578107877/1000000000000 : ℚ), (-4086366557/10000000000 : ℚ), (98579769833/1000000000000 : ℚ), 4⟩,
    ⟨(34825960953/125000000000 : ℚ), (-2711444871/5000000000 : ℚ), (135609072861/1000000000000 : ℚ), 3⟩,
    ⟨(140766300047/500000000000 : ℚ), (-655083321/1000000000 : ℚ), (20899490189/125000000000 : ℚ), 3⟩,
    ⟨(14216233839/50000000000 : ℚ), (-7506528359/10000000000 : ℚ), (1942327867/10000000000 : ℚ), 3⟩,
    ⟨(286957028457/1000000000000 : ℚ), (-1663547059/2000000000 : ℚ), (43480484823/200000000000 : ℚ), 3⟩,
    ⟨(14470215207/50000000000 : ℚ), (-9005785209/10000000000 : ℚ), (59307373551/250000000000 : ℚ), 3⟩,
    ⟨(291642935227/1000000000000 : ℚ), (-1917424589/2000000000 : ℚ), (50823586317/200000000000 : ℚ), 3⟩,
    ⟨(11746054499/40000000000 : ℚ), (-10074433987/10000000000 : ℚ), (26837844143/100000000000 : ℚ), 3⟩,
    ⟨(147705121817/500000000000 : ℚ), (-2095495597/2000000000 : ℚ), (56049804269/200000000000 : ℚ), 3⟩,
    ⟨(59380527943/200000000000 : ℚ), (-108037107/100000000 : ℚ), (289910441711/1000000000000 : ℚ), 3⟩,
    ⟨(18632136133/62500000000 : ℚ), (-2764687459/2500000000 : ℚ), (297497985133/1000000000000 : ℚ), 3⟩,
    ⟨(299033191097/1000000000000 : ℚ), (-1124672241/1000000000 : ℚ), (303110316347/1000000000000 : ℚ), 3⟩,
    ⟨(11986033121/40000000000 : ℚ), (-5685259587/5000000000 : ℚ), (76704015823/250000000000 : ℚ), 3⟩,
    ⟨(299961140729/1000000000000 : ℚ), (-11431973127/10000000000 : ℚ), (30865848833/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2287926861/2000000000 : ℚ), (308888308779/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (340192919427/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control645.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control645.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate645
