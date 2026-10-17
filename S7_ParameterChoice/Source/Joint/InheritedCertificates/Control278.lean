import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate278
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120876082787/500000000000 : ℚ), (2527674315437/2000000000 : ℚ), (-306228628961981/1000000000000 : ℚ), 11⟩,
    ⟨(242513712939/1000000000000 : ℚ), (1378076702167/10000000000 : ℚ), (-1354030698129/40000000000 : ℚ), 8⟩,
    ⟨(244029473551/1000000000000 : ℚ), (120358794063/2500000000 : ℚ), (-12060387590371/1000000000000 : ℚ), 7⟩,
    ⟨(123142424903/500000000000 : ℚ), (236295616819/10000000000 : ℚ), (-1211344317401/200000000000 : ℚ), 6⟩,
    ⟨(249258121199/1000000000000 : ℚ), (136472669083/10000000000 : ℚ), (-717171249623/200000000000 : ℚ), 5⟩,
    ⟨(252920653501/1000000000000 : ℚ), (86602002479/10000000000 : ℚ), (-1167434437261/500000000000 : ℚ), 5⟩,
    ⟨(64309293631/250000000000 : ℚ), (58358654133/10000000000 : ℚ), (-403778406067/250000000000 : ℚ), 4⟩,
    ⟨(26216611381/100000000000 : ℚ), (40944613613/10000000000 : ℚ), (-581636441411/500000000000 : ℚ), 4⟩,
    ⟨(267660002979/1000000000000 : ℚ), (29525989481/10000000000 : ℚ), (-861036073001/1000000000000 : ℚ), 4⟩,
    ⟨(273665932877/1000000000000 : ℚ), (21680181013/10000000000 : ℚ), (-324424832431/500000000000 : ℚ), 3⟩,
    ⟨(280126063113/1000000000000 : ℚ), (16086807169/10000000000 : ℚ), (-123521966947/250000000000 : ℚ), 3⟩,
    ⟨(8968068097/31250000000 : ℚ), (598902469/500000000 : ℚ), (-18883227517/50000000000 : ℚ), 3⟩,
    ⟨(147078145613/500000000000 : ℚ), (4441907719/5000000000 : ℚ), (-143907042543/500000000000 : ℚ), 3⟩,
    ⟨(4712363599/15625000000 : ℚ), (3252001159/5000000000 : ℚ), (-10848365733/50000000000 : ℚ), 3⟩,
    ⟨(3865143919/12500000000 : ℚ), (4640293433/10000000000 : ℚ), (-80039804941/500000000000 : ℚ), 3⟩,
    ⟨(316943633671/1000000000000 : ℚ), (3157791113/10000000000 : ℚ), (-11368786089/100000000000 : ℚ), 3⟩,
    ⟨(81178291561/250000000000 : ℚ), (490616087/2500000000 : ℚ), (-75354552131/1000000000000 : ℚ), 2⟩,
    ⟨(66489057279/200000000000 : ℚ), (987387521/10000000000 : ℚ), (-21663699311/500000000000 : ℚ), 2⟩,
    ⟨(340065529579/1000000000000 : ℚ), (46017129/2500000000 : ℚ), (-16324018817/1000000000000 : ℚ), 2⟩,
    ⟨(347500508689/1000000000000 : ℚ), (-96634209/2000000000 : ℚ), (82603161/12500000000 : ℚ), 2⟩,
    ⟨(354678620811/1000000000000 : ℚ), (-1040927901/10000000000 : ℚ), (1636623793/62500000000 : ℚ), 2⟩,
    ⟨(361530736801/1000000000000 : ℚ), (-1509249593/10000000000 : ℚ), (42953573017/1000000000000 : ℚ), 2⟩,
    ⟨(183995433519/500000000000 : ℚ), (-237923231/1250000000 : ℚ), (3582991283/62500000000 : ℚ), 2⟩,
    ⟨(46749599617/125000000000 : ℚ), (-2235020281/10000000000 : ℚ), (69629748237/1000000000000 : ℚ), 2⟩,
    ⟨(75898137221/200000000000 : ℚ), (-251314943/1000000000 : ℚ), (80107063661/1000000000000 : ℚ), 2⟩,
    ⟨(384419625391/1000000000000 : ℚ), (-548943603/2000000000 : ℚ), (88951290529/1000000000000 : ℚ), 2⟩,
    ⟨(388736146413/1000000000000 : ℚ), (-2935082657/10000000000 : ℚ), (48154985681/500000000000 : ℚ), 2⟩,
    ⟨(78479735743/200000000000 : ℚ), (-1544176359/5000000000 : ℚ), (102295979681/1000000000000 : ℚ), 2⟩,
    ⟨(395371950109/1000000000000 : ℚ), (-3207641371/10000000000 : ℚ), (53497237363/500000000000 : ℚ), 2⟩,
    ⟨(99406831591/250000000000 : ℚ), (-2059531/6250000 : ℚ), (55234046259/500000000000 : ℚ), 2⟩,
    ⟨(3118305367/7812500000 : ℚ), (-1676399357/5000000000 : ℚ), (56380375447/500000000000 : ℚ), 2⟩,
    ⟨(19995231717/50000000000 : ℚ), (-10566631/31250000 : ℚ), (113900319391/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-423109459/1250000000 : ℚ), (22808490501/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (322111839941/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control278.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control278.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate278
