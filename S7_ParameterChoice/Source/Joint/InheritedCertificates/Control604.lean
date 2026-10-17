import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate604
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(261187127319/1000000000000 : ℚ), (110204479803/78125000 : ℚ), (-46127643719041/125000000000 : ℚ), 12⟩,
    ⟨(261758898999/1000000000000 : ℚ), (771654739249/5000000000 : ℚ), (-10190776828989/250000000000 : ℚ), 9⟩,
    ⟨(65724233971/250000000000 : ℚ), (135381821397/2500000000 : ℚ), (-7251152848057/500000000000 : ℚ), 8⟩,
    ⟨(264590278057/1000000000000 : ℚ), (53400290041/2000000000 : ℚ), (-7266986016833/1000000000000 : ℚ), 7⟩,
    ⟨(66705654427/250000000000 : ℚ), (38713850961/2500000000 : ℚ), (-857852653169/200000000000 : ℚ), 6⟩,
    ⟨(134786228093/500000000000 : ℚ), (19721325129/2000000000 : ℚ), (-2781705947407/1000000000000 : ℚ), 6⟩,
    ⟨(136406655521/500000000000 : ℚ), (66604187983/10000000000 : ℚ), (-239298875673/125000000000 : ℚ), 5⟩,
    ⟨(276513971073/1000000000000 : ℚ), (23385389499/5000000000 : ℚ), (-1369982244193/1000000000000 : ℚ), 5⟩,
    ⟨(280638796899/1000000000000 : ℚ), (3369350043/1000000000 : ℚ), (-1005898986613/1000000000000 : ℚ), 4⟩,
    ⟨(142574032097/500000000000 : ℚ), (986227943/400000000 : ℚ), (-375185523317/500000000000 : ℚ), 4⟩,
    ⟨(289998346247/1000000000000 : ℚ), (454354087/250000000 : ℚ), (-564079258663/1000000000000 : ℚ), 4⟩,
    ⟨(9223216631/31250000000 : ℚ), (3346149687/2500000000 : ℚ), (-84804135297/200000000000 : ℚ), 4⟩,
    ⟨(150266138427/500000000000 : ℚ), (4878271993/5000000000 : ℚ), (-31601354413/100000000000 : ℚ), 4⟩,
    ⟨(306114477897/1000000000000 : ℚ), (1737597383/2500000000 : ℚ), (-230932452397/1000000000000 : ℚ), 3⟩,
    ⟨(311835775673/1000000000000 : ℚ), (1185245049/2500000000 : ℚ), (-162693554423/1000000000000 : ℚ), 3⟩,
    ⟨(158820535479/500000000000 : ℚ), (2974605967/10000000000 : ℚ), (-53559151283/500000000000 : ℚ), 3⟩,
    ⟨(10108576737/31250000000 : ℚ), (1543699501/10000000000 : ℚ), (-14956959/244140625 : ℚ), 3⟩,
    ⟨(329279750869/1000000000000 : ℚ), (46422617/1250000000 : ℚ), (-2876545981/125000000000 : ℚ), 3⟩,
    ⟨(67000209729/200000000000 : ℚ), (-598293493/10000000000 : ℚ), (4593384257/500000000000 : ℚ), 3⟩,
    ⟨(42572906211/125000000000 : ℚ), (-140666047/1000000000 : ℚ), (3648717909/100000000000 : ℚ), 3⟩,
    ⟨(345972594349/1000000000000 : ℚ), (-83386431/400000000 : ℚ), (59757392973/1000000000000 : ℚ), 3⟩,
    ⟨(175558590147/500000000000 : ℚ), (-663925919/2500000000 : ℚ), (39828959849/500000000000 : ℚ), 3⟩,
    ⟨(88991865587/250000000000 : ℚ), (-784413461/2500000000 : ℚ), (48347438749/500000000000 : ℚ), 3⟩,
    ⟨(180238364821/500000000000 : ℚ), (-3544233891/10000000000 : ℚ), (111258088823/1000000000000 : ℚ), 3⟩,
    ⟨(364601555469/1000000000000 : ℚ), (-971507467/2500000000 : ℚ), (61824305349/500000000000 : ℚ), 3⟩,
    ⟨(736604431/2000000000 : ℚ), (-834244369/2000000000 : ℚ), (134098937093/1000000000000 : ℚ), 3⟩,
    ⟨(92885767589/250000000000 : ℚ), (-22030603/50000000 : ℚ), (71394009599/500000000000 : ℚ), 3⟩,
    ⟨(374292908833/1000000000000 : ℚ), (-4595564881/10000000000 : ℚ), (14985253907/100000000000 : ℚ), 3⟩,
    ⟨(94131312121/250000000000 : ℚ), (-2371608151/5000000000 : ℚ), (155395408903/1000000000000 : ℚ), 3⟩,
    ⟨(189109295329/500000000000 : ℚ), (-4851777167/10000000000 : ℚ), (7974607523/50000000000 : ℚ), 3⟩,
    ⟨(379356627543/1000000000000 : ℚ), (-4923148533/10000000000 : ℚ), (81097798751/500000000000 : ℚ), 3⟩,
    ⟨(379928399223/1000000000000 : ℚ), (-4958540191/10000000000 : ℚ), (163539213861/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-4962950527/10000000000 : ℚ), (163706790803/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (379742027731/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control604.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control604.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate604
