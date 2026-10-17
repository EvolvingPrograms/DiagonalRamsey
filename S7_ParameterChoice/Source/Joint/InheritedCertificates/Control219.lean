import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate219
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(228736976987/1000000000000 : ℚ), (8754625395757/10000000000 : ℚ), (-12556931255733/62500000000 : ℚ), 11⟩,
    ⟨(229801776847/1000000000000 : ℚ), (949413769361/10000000000 : ℚ), (-2777996681619/125000000000 : ℚ), 8⟩,
    ⟨(57980280491/250000000000 : ℚ), (65854389437/2000000000 : ℚ), (-1982235489983/250000000000 : ℚ), 6⟩,
    ⟨(47014920377/200000000000 : ℚ), (40086006987/2500000000 : ℚ), (-3990412305777/1000000000000 : ℚ), 6⟩,
    ⟨(119615923437/500000000000 : ℚ), (91895040243/10000000000 : ℚ), (-2369496313919/1000000000000 : ℚ), 5⟩,
    ⟨(244352820389/1000000000000 : ℚ), (11581374077/2000000000 : ℚ), (-1548852888407/1000000000000 : ℚ), 4⟩,
    ⟨(250388204657/1000000000000 : ℚ), (3879431921/1000000000 : ℚ), (-269177157397/250000000000 : ℚ), 4⟩,
    ⟨(64319968907/250000000000 : ℚ), (108410151/40000000 : ℚ), (-390158410389/500000000000 : ℚ), 4⟩,
    ⟨(132480731371/500000000000 : ℚ), (195006539/100000000 : ℚ), (-291029876883/500000000000 : ℚ), 3⟩,
    ⟨(273358988117/1000000000000 : ℚ), (7161652037/5000000000 : ℚ), (-442866688577/1000000000000 : ℚ), 3⟩,
    ⟨(17649473687/62500000000 : ℚ), (5332727357/5000000000 : ℚ), (-68266616553/200000000000 : ℚ), 3⟩,
    ⟨(14598612329/50000000000 : ℚ), (8002645143/10000000000 : ℚ), (-264937650419/1000000000000 : ℚ), 3⟩,
    ⟨(60401744763/200000000000 : ℚ), (375942699/625000000 : ℚ), (-12872646649/62500000000 : ℚ), 3⟩,
    ⟨(156202176967/500000000000 : ℚ), (2249782147/5000000000 : ℚ), (-79721391547/500000000000 : ℚ), 2⟩,
    ⟨(40382377667/125000000000 : ℚ), (3322499341/10000000000 : ℚ), (-61035615267/500000000000 : ℚ), 2⟩,
    ⟨(333870115751/1000000000000 : ℚ), (2393528551/10000000000 : ℚ), (-91577808789/1000000000000 : ℚ), 2⟩,
    ⟨(86183380107/250000000000 : ℚ), (1650039283/10000000000 : ℚ), (-13273125141/200000000000 : ℚ), 2⟩,
    ⟨(177772307421/500000000000 : ℚ), (1047739317/10000000000 : ℚ), (-45287343919/1000000000000 : ℚ), 2⟩,
    ⟨(73239856449/200000000000 : ℚ), (138683047/2500000000 : ℚ), (-13751899773/500000000000 : ℚ), 2⟩,
    ⟨(94148728091/250000000000 : ℚ), (73844979/5000000000 : ℚ), (-12391938811/1000000000000 : ℚ), 2⟩,
    ⟨(386631389599/1000000000000 : ℚ), (-38135777/2000000000 : ℚ), (516665241/1000000000000 : ℚ), 2⟩,
    ⟨(396212057187/1000000000000 : ℚ), (-473340091/10000000000 : ℚ), (11577805423/1000000000000 : ℚ), 2⟩,
    ⟨(202622324031/500000000000 : ℚ), (-710110841/10000000000 : ℚ), (329123501/15625000000 : ℚ), 2⟩,
    ⟨(413642173437/1000000000000 : ℚ), (-908483023/10000000000 : ℚ), (29184773451/1000000000000 : ℚ), 2⟩,
    ⟨(421323760551/1000000000000 : ℚ), (-537103597/5000000000 : ℚ), (36102581547/1000000000000 : ℚ), 2⟩,
    ⟨(428215431521/1000000000000 : ℚ), (-1211711803/10000000000 : ℚ), (41942790113/1000000000000 : ℚ), 2⟩,
    ⟨(434250815789/1000000000000 : ℚ), (-1324407081/10000000000 : ℚ), (11700560171/250000000000 : ℚ), 2⟩,
    ⟨(87874357861/200000000000 : ℚ), (-56596271/400000000 : ℚ), (12688794533/250000000000 : ℚ), 2⟩,
    ⟨(221764517147/500000000000 : ℚ), (-742595157/5000000000 : ℚ), (53857752693/1000000000000 : ℚ), 2⟩,
    ⟨(223341257107/500000000000 : ℚ), (-1536720817/10000000000 : ℚ), (28075682947/500000000000 : ℚ), 2⟩,
    ⟨(448801859331/1000000000000 : ℚ), (-1570529541/10000000000 : ℚ), (28832556849/500000000000 : ℚ), 2⟩,
    ⟨(56233332399/125000000000 : ℚ), (-1587273919/10000000000 : ℚ), (29208747259/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-24833743/156250000 : ℚ), (5851133413/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (175553750087/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control219.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control219.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate219
