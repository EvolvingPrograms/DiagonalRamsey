import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate495
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(207676044409/500000000000 : ℚ), (8149235799899/5000000000 : ℚ), (-84752995928643/125000000000 : ℚ), 12⟩,
    ⟨(416240683159/1000000000000 : ℚ), (1784447220359/10000000000 : ℚ), (-74943553449541/1000000000000 : ℚ), 9⟩,
    ⟨(26125582137/62500000000 : ℚ), (627000686189/10000000000 : ℚ), (-6674304238819/250000000000 : ℚ), 7⟩,
    ⟨(420640949033/1000000000000 : ℚ), (61958024323/2000000000 : ℚ), (-1675622645677/125000000000 : ℚ), 6⟩,
    ⟨(424110243599/1000000000000 : ℚ), (18019844439/1000000000 : ℚ), (-991882786839/125000000000 : ℚ), 6⟩,
    ⟨(6693496667/15625000000 : ℚ), (115199721919/10000000000 : ℚ), (-516634496719/100000000000 : ℚ), 5⟩,
    ⟨(27088776359/62500000000 : ℚ), (78224055321/10000000000 : ℚ), (-714815335747/200000000000 : ℚ), 5⟩,
    ⟨(439171643217/1000000000000 : ℚ), (6914536719/1250000000 : ℚ), (-2575236099931/1000000000000 : ℚ), 4⟩,
    ⟨(222791031851/500000000000 : ℚ), (40221355791/10000000000 : ℚ), (-1907864197333/1000000000000 : ℚ), 4⟩,
    ⟨(28286871709/62500000000 : ℚ), (7449875043/2500000000 : ℚ), (-288018959369/200000000000 : ℚ), 4⟩,
    ⟨(460127804393/1000000000000 : ℚ), (2792025109/1250000000 : ℚ), (-1099679888629/1000000000000 : ℚ), 4⟩,
    ⟨(93624608233/200000000000 : ℚ), (16832099041/10000000000 : ℚ), (-84434641583/100000000000 : ℚ), 3⟩,
    ⟨(476498659159/1000000000000 : ℚ), (3168401549/2500000000 : ℚ), (-648026167773/1000000000000 : ℚ), 3⟩,
    ⟨(97034799319/200000000000 : ℚ), (4733842549/5000000000 : ℚ), (-123484706987/250000000000 : ℚ), 3⟩,
    ⟨(494065505233/1000000000000 : ℚ), (6953571337/10000000000 : ℚ), (-92722567573/250000000000 : ℚ), 3⟩,
    ⟨(251543777491/500000000000 : ℚ), (309567073/625000000 : ℚ), (-135592459421/500000000000 : ℚ), 3⟩,
    ⟨(512153258571/1000000000000 : ℚ), (104416627/312500000 : ℚ), (-189395249553/1000000000000 : ℚ), 3⟩,
    ⟨(3257345677/6250000000 : ℚ), (2028962777/10000000000 : ℚ), (-60804324291/500000000000 : ℚ), 3⟩,
    ⟨(530066816957/1000000000000 : ℚ), (118848151/1250000000 : ℚ), (-16237795143/250000000000 : ℚ), 3⟩,
    ⟨(269371077197/500000000000 : ℚ), (58511937/10000000000 : ℚ), (-17277773591/1000000000000 : ℚ), 3⟩,
    ⟨(136779443097/250000000000 : ℚ), (-684115991/10000000000 : ℚ), (2879304771/125000000000 : ℚ), 2⟩,
    ⟨(13877825229/25000000000 : ℚ), (-1304636127/10000000000 : ℚ), (57227060129/1000000000000 : ℚ), 2⟩,
    ⟨(562650866209/1000000000000 : ℚ), (-228019619/1250000000 : ℚ), (86258495063/1000000000000 : ℚ), 2⟩,
    ⟨(569658749851/1000000000000 : ℚ), (-70592951/312500000 : ℚ), (55436698417/500000000000 : ℚ), 2⟩,
    ⟨(115213834067/200000000000 : ℚ), (-1310864767/5000000000 : ℚ), (131652667679/1000000000000 : ℚ), 2⟩,
    ⟨(581820391809/1000000000000 : ℚ), (-2922248111/10000000000 : ℚ), (29809994591/200000000000 : ℚ), 2⟩,
    ⟨(36678564179/62500000000 : ℚ), (-1584078523/5000000000 : ℚ), (1634187431/10000000000 : ℚ), 2⟩,
    ⟨(295565284977/500000000000 : ℚ), (-673067963/2000000000 : ℚ), (87516163931/500000000000 : ℚ), 2⟩,
    ⟨(14864996613/25000000000 : ℚ), (-219892151/625000000 : ℚ), (184099110321/1000000000000 : ℚ), 2⟩,
    ⟨(597231499361/1000000000000 : ℚ), (-1815141471/5000000000 : ℚ), (23846725071/125000000000 : ℚ), 2⟩,
    ⟨(599000130393/1000000000000 : ℚ), (-740742551/2000000000 : ℚ), (195165732387/1000000000000 : ℚ), 2⟩,
    ⟨(299944362367/500000000000 : ℚ), (-3740062641/10000000000 : ℚ), (39468940681/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-936147363/2500000000 : ℚ), (98808143411/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (57879352733/250000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control495.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control495.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate495
