import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate124
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8126174557/40000000000 : ℚ), (6347955610649/10000000000 : ℚ), (-25917069829707/200000000000 : ℚ), 10⟩,
    ⟨(51145723849/250000000000 : ℚ), (136504706893/2000000000 : ℚ), (-358521010041/25000000000 : ℚ), 7⟩,
    ⟨(207426200801/1000000000000 : ℚ), (116980557243/5000000000 : ℚ), (-2560652625849/500000000000 : ℚ), 6⟩,
    ⟨(105828448777/500000000000 : ℚ), (112468503937/10000000000 : ℚ), (-516250264209/200000000000 : ℚ), 5⟩,
    ⟨(217234241731/1000000000000 : ℚ), (63618225271/10000000000 : ℚ), (-61438818249/40000000000 : ℚ), 4⟩,
    ⟨(224104520461/1000000000000 : ℚ), (39589151537/10000000000 : ℚ), (-1006840509811/1000000000000 : ℚ), 4⟩,
    ⟨(116100784601/500000000000 : ℚ), (6555507169/2500000000 : ℚ), (-140495956253/200000000000 : ℚ), 3⟩,
    ⟨(241447408949/1000000000000 : ℚ), (18141013453/10000000000 : ℚ), (-511466426859/1000000000000 : ℚ), 3⟩,
    ⟨(62938249303/250000000000 : ℚ), (12951986859/10000000000 : ℚ), (-383733815967/1000000000000 : ℚ), 3⟩,
    ⟨(263019085541/1000000000000 : ℚ), (4731433289/5000000000 : ℚ), (-7351952533/25000000000 : ℚ), 3⟩,
    ⟨(68784293837/250000000000 : ℚ), (7029100113/10000000000 : ℚ), (-5717278761/25000000000 : ℚ), 2⟩,
    ⟨(287990562803/1000000000000 : ℚ), (5279432779/10000000000 : ℚ), (-179495812021/1000000000000 : ℚ), 2⟩,
    ⟨(150727731379/500000000000 : ℚ), (498634553/1250000000 : ℚ), (-141514235599/1000000000000 : ℚ), 2⟩,
    ⟨(315402200867/1000000000000 : ℚ), (188519889/625000000 : ℚ), (-27886418759/250000000000 : ℚ), 2⟩,
    ⟨(329696462417/1000000000000 : ℚ), (1134396521/5000000000 : ℚ), (-8745866373/100000000000 : ℚ), 2⟩,
    ⟨(68840117171/200000000000 : ℚ), (1684592513/10000000000 : ℚ), (-16947907257/250000000000 : ℚ), 2⟩,
    ⟨(71754977709/200000000000 : ℚ), (244244207/2000000000 : ℚ), (-25758665301/500000000000 : ℚ), 2⟩,
    ⟨(373279011983/1000000000000 : ℚ), (212225343/2500000000 : ℚ), (-37898561527/1000000000000 : ℚ), 2⟩,
    ⟨(387573273533/1000000000000 : ℚ), (68298693/1250000000 : ℚ), (-26396811901/1000000000000 : ℚ), 2⟩,
    ⟨(200760005821/500000000000 : ℚ), (298287879/10000000000 : ℚ), (-16612780421/1000000000000 : ℚ), 2⟩,
    ⟨(414984911597/1000000000000 : ℚ), (1457493/156250000 : ℚ), (-257707617/31250000000 : ℚ), 2⟩,
    ⟨(106959574763/250000000000 : ℚ), (-77055171/10000000000 : ℚ), (-535462287/500000000000 : ℚ), 2⟩,
    ⟨(439956388859/1000000000000 : ℚ), (-27380867/1250000000 : ℚ), (1017680921/200000000000 : ℚ), 2⟩,
    ⟨(112805619297/250000000000 : ℚ), (-337497577/10000000000 : ℚ), (5182657081/500000000000 : ℚ), 2⟩,
    ⟨(461528065451/1000000000000 : ℚ), (-87214799/2000000000 : ℚ), (2972670863/200000000000 : ℚ), 2⟩,
    ⟨(235386952599/500000000000 : ℚ), (-129397091/2500000000 : ℚ), (2332835277/125000000000 : ℚ), 2⟩,
    ⟨(478870953939/1000000000000 : ℚ), (-292099683/5000000000 : ℚ), (4365047543/200000000000 : ℚ), 2⟩,
    ⟨(485741232669/1000000000000 : ℚ), (-127511539/2000000000 : ℚ), (24398584033/1000000000000 : ℚ), 2⟩,
    ⟨(245659288423/500000000000 : ℚ), (-135782303/2000000000 : ℚ), (26418763161/1000000000000 : ℚ), 2⟩,
    ⟨(495549273599/1000000000000 : ℚ), (-177295641/2500000000 : ℚ), (5582481409/200000000000 : ℚ), 2⟩,
    ⟨(498392579003/1000000000000 : ℚ), (-729020197/10000000000 : ℚ), (14449135137/500000000000 : ℚ), 2⟩,
    ⟨(19992844419/40000000000 : ℚ), (-738838303/10000000000 : ℚ), (29388297511/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-370030449/5000000000 : ℚ), (5889883261/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (41839337923/125000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control124.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control124.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate124
