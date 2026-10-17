import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate533
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6378705881/31250000000 : ℚ), (14981322301201/10000000000 : ℚ), (-306297079238423/1000000000000 : ℚ), 12⟩,
    ⟨(204580005163/1000000000000 : ℚ), (409590243809/2500000000 : ℚ), (-6765824390459/200000000000 : ℚ), 9⟩,
    ⟨(12843649713/62500000000 : ℚ), (574481437281/10000000000 : ℚ), (-3007871046437/250000000000 : ℚ), 8⟩,
    ⟨(103432457163/500000000000 : ℚ), (70746295313/2500000000 : ℚ), (-6025757132479/1000000000000 : ℚ), 7⟩,
    ⟨(104333200797/500000000000 : ℚ), (163930236099/10000000000 : ℚ), (-710795598923/200000000000 : ℚ), 6⟩,
    ⟨(3295086061/15625000000 : ℚ), (104228900381/10000000000 : ℚ), (-460492463291/200000000000 : ℚ), 5⟩,
    ⟨(213500862049/1000000000000 : ℚ), (70268838951/10000000000 : ℚ), (-1582339834199/1000000000000 : ℚ), 5⟩,
    ⟨(10824363837/50000000000 : ℚ), (49225265009/10000000000 : ℚ), (-1130209107807/1000000000000 : ℚ), 5⟩,
    ⟨(219815991169/1000000000000 : ℚ), (17675415037/5000000000 : ℚ), (-413861704451/500000000000 : ℚ), 4⟩,
    ⟨(111727473999/500000000000 : ℚ), (25761392997/10000000000 : ℚ), (-615312041483/1000000000000 : ℚ), 4⟩,
    ⟨(227369102083/1000000000000 : ℚ), (18882566419/10000000000 : ℚ), (-14385637861/31250000000 : ℚ), 4⟩,
    ⟨(231520757981/1000000000000 : ℚ), (6898563807/5000000000 : ℚ), (-343717492883/1000000000000 : ℚ), 4⟩,
    ⟨(9434797319/40000000000 : ℚ), (4971148779/5000000000 : ℚ), (-253674650933/1000000000000 : ℚ), 3⟩,
    ⟨(240374742133/1000000000000 : ℚ), (6957912361/10000000000 : ℚ), (-2853760357/15625000000 : ℚ), 3⟩,
    ⟨(244991801681/1000000000000 : ℚ), (71957893/156250000 : ℚ), (-12556934547/100000000000 : ℚ), 3⟩,
    ⟨(24967664681/100000000000 : ℚ), (2721640021/10000000000 : ℚ), (-78996377629/1000000000000 : ℚ), 3⟩,
    ⟨(127192079951/500000000000 : ℚ), (1193047279/10000000000 : ℚ), (-8096667841/200000000000 : ℚ), 3⟩,
    ⟨(259069005031/1000000000000 : ℚ), (-30892811/5000000000 : ℚ), (-8277374187/1000000000000 : ℚ), 3⟩,
    ⟨(131843032289/500000000000 : ℚ), (-1101967169/10000000000 : ℚ), (18904085927/1000000000000 : ℚ), 3⟩,
    ⟨(268190873737/1000000000000 : ℚ), (-1971121253/10000000000 : ℚ), (21006731179/500000000000 : ℚ), 3⟩,
    ⟨(272540048731/1000000000000 : ℚ), (-2701858053/10000000000 : ℚ), (61766612119/1000000000000 : ℚ), 3⟩,
    ⟨(69172926157/250000000000 : ℚ), (-1659407489/5000000000 : ℚ), (1967669201/25000000000 : ℚ), 3⟩,
    ⟨(140302929357/500000000000 : ℚ), (-3840765853/10000000000 : ℚ), (93249140073/1000000000000 : ℚ), 3⟩,
    ⟨(284244815543/1000000000000 : ℚ), (-2141054761/5000000000 : ℚ), (2114252419/20000000000 : ℚ), 3⟩,
    ⟨(71893382493/250000000000 : ℚ), (-2326968357/5000000000 : ℚ), (29085678783/250000000000 : ℚ), 3⟩,
    ⟨(290559944663/1000000000000 : ℚ), (-4964804833/10000000000 : ℚ), (7833023521/62500000000 : ℚ), 3⟩,
    ⟨(36646912351/125000000000 : ℚ), (-81582917/156250000 : ℚ), (132814531637/1000000000000 : ℚ), 3⟩,
    ⟨(147697202559/500000000000 : ℚ), (-5428491049/10000000000 : ℚ), (27782296807/200000000000 : ℚ), 3⟩,
    ⟨(59439178477/200000000000 : ℚ), (-5590174419/10000000000 : ℚ), (143701999509/1000000000000 : ℚ), 3⟩,
    ⟨(37320301413/125000000000 : ℚ), (-1141834197/2000000000 : ℚ), (73623312167/500000000000 : ℚ), 3⟩,
    ⟨(299480801549/1000000000000 : ℚ), (-1157491841/2000000000 : ℚ), (18698450141/125000000000 : ℚ), 3⟩,
    ⟨(7498555463/25000000000 : ℚ), (-2913148771/5000000000 : ℚ), (15075162953/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5831138171/10000000000 : ℚ), (75448417201/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (384031817163/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control533.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control533.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate533
