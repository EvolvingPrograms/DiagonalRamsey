import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate547
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280926131197/1000000000000 : ℚ), (12868654400681/10000000000 : ℚ), (-72436816075249/200000000000 : ℚ), 12⟩,
    ⟨(281643530031/1000000000000 : ℚ), (56251418859/400000000 : ℚ), (-320198785913/8000000000 : ℚ), 9⟩,
    ⟨(70767854689/250000000000 : ℚ), (246375632613/5000000000 : ℚ), (-3562994488399/250000000000 : ℚ), 7⟩,
    ⟨(285196046023/1000000000000 : ℚ), (9705300087/400000000 : ℚ), (-71511217817/10000000000 : ℚ), 6⟩,
    ⟨(287996950511/1000000000000 : ℚ), (70291243067/5000000000 : ℚ), (-845754133979/200000000000 : ℚ), 6⟩,
    ⟨(291447157977/1000000000000 : ℚ), (11184549123/1250000000 : ℚ), (-1374640427631/500000000000 : ℚ), 5⟩,
    ⟨(147756720519/500000000000 : ℚ), (6045292373/1000000000 : ℚ), (-1898147882201/1000000000000 : ℚ), 5⟩,
    ⟨(150078319583/500000000000 : ℚ), (42503119923/10000000000 : ℚ), (-1363930679753/1000000000000 : ℚ), 4⟩,
    ⟨(305332035823/1000000000000 : ℚ), (15347520623/5000000000 : ℚ), (-503348462869/500000000000 : ℚ), 4⟩,
    ⟨(310989789111/1000000000000 : ℚ), (22554712797/10000000000 : ℚ), (-151201854997/200000000000 : ℚ), 4⟩,
    ⟨(317075411773/1000000000000 : ℚ), (16732261193/10000000000 : ℚ), (-11465571803/20000000000 : ℚ), 4⟩,
    ⟨(64706059187/200000000000 : ℚ), (6220832273/5000000000 : ℚ), (-435928905923/1000000000000 : ℚ), 4⟩,
    ⟨(10321633673/31250000000 : ℚ), (920091287/1000000000 : ℚ), (-165020811821/500000000000 : ℚ), 3⟩,
    ⟨(67459246999/200000000000 : ℚ), (6701712913/10000000000 : ℚ), (-30832571853/125000000000 : ℚ), 3⟩,
    ⟨(172237358187/500000000000 : ℚ), (4739890587/10000000000 : ℚ), (-22476827153/125000000000 : ℚ), 3⟩,
    ⟨(351758588973/1000000000000 : ℚ), (158811037/500000000 : ℚ), (-125402427319/1000000000000 : ℚ), 3⟩,
    ⟨(89769426279/250000000000 : ℚ), (1913390903/10000000000 : ℚ), (-40267571813/500000000000 : ℚ), 3⟩,
    ⟨(183180788857/500000000000 : ℚ), (881935941/10000000000 : ℚ), (-21566990723/500000000000 : ℚ), 3⟩,
    ⟨(373540059093/1000000000000 : ℚ), (15683913/5000000000 : ℚ), (-5837869217/500000000000 : ℚ), 3⟩,
    ⟨(47568002069/125000000000 : ℚ), (-84447257/1250000000 : ℚ), (14972835243/1000000000000 : ℚ), 3⟩,
    ⟨(387305998153/1000000000000 : ℚ), (-158346051/1250000000 : ℚ), (37665594781/1000000000000 : ℚ), 3⟩,
    ⟨(98440220579/250000000000 : ℚ), (-881635823/5000000000 : ℚ), (57052487839/1000000000000 : ℚ), 3⟩,
    ⟨(199923252489/500000000000 : ℚ), (-68161219/312500000 : ℚ), (36816078929/500000000000 : ℚ), 3⟩,
    ⟨(202752129133/500000000000 : ℚ), (-2532774079/10000000000 : ℚ), (4389464353/50000000000 : ℚ), 3⟩,
    ⟨(410679654923/1000000000000 : ℚ), (-2827641311/10000000000 : ℚ), (99821555759/1000000000000 : ℚ), 3⟩,
    ⟨(8306457061/20000000000 : ℚ), (-3073124749/10000000000 : ℚ), (27489849487/250000000000 : ℚ), 2⟩,
    ⟨(419389136111/1000000000000 : ℚ), (-3274910763/10000000000 : ℚ), (14797582867/125000000000 : ℚ), 2⟩,
    ⟨(211419671789/500000000000 : ℚ), (-3437364429/10000000000 : ℚ), (125221597403/1000000000000 : ℚ), 2⟩,
    ⟨(85128049613/200000000000 : ℚ), (-1781896659/5000000000 : ℚ), (130585104199/1000000000000 : ℚ), 2⟩,
    ⟨(106941218833/250000000000 : ℚ), (-914160453/2500000000 : ℚ), (26909385589/200000000000 : ℚ), 2⟩,
    ⟨(214596382029/500000000000 : ℚ), (-3717631723/10000000000 : ℚ), (137160203249/1000000000000 : ℚ), 2⟩,
    ⟨(107477540723/250000000000 : ℚ), (-936964979/2500000000 : ℚ), (138458658079/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3751626079/10000000000 : ℚ), (138620586163/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (36327157833/100000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control547.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control547.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate547
