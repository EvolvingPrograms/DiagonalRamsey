import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate630
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140193711071/500000000000 : ℚ), (2185791320031/1250000000 : ℚ), (-490905489443117/1000000000000 : ℚ), 13⟩,
    ⟨(28086679487/100000000000 : ℚ), (958055066199/5000000000 : ℚ), (-10839739832949/200000000000 : ℚ), 9⟩,
    ⟨(56364184741/200000000000 : ℚ), (673638073299/10000000000 : ℚ), (-9630995603751/500000000000 : ℚ), 8⟩,
    ⟨(56648123973/200000000000 : ℚ), (41594546929/1250000000 : ℚ), (-9636363073047/1000000000000 : ℚ), 7⟩,
    ⟨(2851122109/10000000000 : ℚ), (193281336489/10000000000 : ℚ), (-1418741515873/250000000000 : ℚ), 6⟩,
    ⟨(71854418091/250000000000 : ℚ), (61593350211/5000000000 : ℚ), (-3669466311223/1000000000000 : ℚ), 6⟩,
    ⟨(72533700351/250000000000 : ℚ), (83214360761/10000000000 : ℚ), (-628938288099/250000000000 : ℚ), 5⟩,
    ⟨(146618715291/500000000000 : ℚ), (11675462561/2000000000 : ℚ), (-44791230281/25000000000 : ℚ), 5⟩,
    ⟨(148347839941/500000000000 : ℚ), (5244343081/1250000000 : ℚ), (-1307467425641/1000000000000 : ℚ), 5⟩,
    ⟨(300476244473/1000000000000 : ℚ), (3821406711/1250000000 : ℚ), (-967724975903/1000000000000 : ℚ), 4⟩,
    ⟨(76135678863/250000000000 : ℚ), (22382448893/10000000000 : ℚ), (-144022144357/200000000000 : ℚ), 4⟩,
    ⟨(308855930481/1000000000000 : ℚ), (16312510437/10000000000 : ℚ), (-8344060083/15625000000 : ℚ), 4⟩,
    ⟨(313374350939/1000000000000 : ℚ), (2340078827/2000000000 : ℚ), (-390582666329/1000000000000 : ℚ), 4⟩,
    ⟨(31805446197/100000000000 : ℚ), (8122323363/10000000000 : ℚ), (-138828015529/500000000000 : ℚ), 4⟩,
    ⟨(40356398943/125000000000 : ℚ), (105938301/200000000 : ℚ), (-187142957833/1000000000000 : ℚ), 4⟩,
    ⟨(163859172267/500000000000 : ℚ), (606349601/2000000000 : ℚ), (-113481059833/1000000000000 : ℚ), 3⟩,
    ⟨(332609047597/1000000000000 : ℚ), (595958017/5000000000 : ℚ), (-52751623483/1000000000000 : ℚ), 3⟩,
    ⟨(337476200587/1000000000000 : ℚ), (-159594607/5000000000 : ℚ), (-16674301/7812500000 : ℚ), 3⟩,
    ⟨(342272930161/1000000000000 : ℚ), (-786004883/5000000000 : ℚ), (20218839599/500000000000 : ℚ), 3⟩,
    ⟨(43369130149/125000000000 : ℚ), (-2618700243/10000000000 : ℚ), (38251004113/500000000000 : ℚ), 3⟩,
    ⟨(7029429233/20000000000 : ℚ), (-874593627/2500000000 : ℚ), (53608490857/500000000000 : ℚ), 3⟩,
    ⟨(355784676679/1000000000000 : ℚ), (-4240678017/10000000000 : ℚ), (133463825371/1000000000000 : ℚ), 3⟩,
    ⟨(179925573829/500000000000 : ℚ), (-4868269029/10000000000 : ℚ), (77958993049/500000000000 : ℚ), 3⟩,
    ⟨(363631712249/1000000000000 : ℚ), (-5398573011/10000000000 : ℚ), (175099790329/1000000000000 : ℚ), 3⟩,
    ⟨(367089961549/1000000000000 : ℚ), (-5845043079/10000000000 : ℚ), (47852767153/250000000000 : ℚ), 3⟩,
    ⟨(370192590727/1000000000000 : ℚ), (-3109039139/5000000000 : ℚ), (8206482161/40000000000 : ℚ), 3⟩,
    ⟨(372909719767/1000000000000 : ℚ), (-6525700347/10000000000 : ℚ), (216591405931/1000000000000 : ℚ), 3⟩,
    ⟨(375215181231/1000000000000 : ℚ), (-6774056601/10000000000 : ℚ), (112940633823/500000000000 : ℚ), 3⟩,
    ⟨(188543386133/500000000000 : ℚ), (-3483897407/5000000000 : ℚ), (233168643427/1000000000000 : ℚ), 3⟩,
    ⟨(189253234213/500000000000 : ℚ), (-7110341383/10000000000 : ℚ), (59638490229/250000000000 : ℚ), 3⟩,
    ⟨(379460597261/1000000000000 : ℚ), (-1801026017/2500000000 : ℚ), (121053699757/500000000000 : ℚ), 3⟩,
    ⟨(379939969989/1000000000000 : ℚ), (-906326703/1250000000 : ℚ), (48774673419/200000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-3628205051/5000000000 : ℚ), (122046807943/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (532209637/1600000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control630.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control630.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate630
