import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate404
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(119111457541/500000000000 : ℚ), (12861305015303/10000000000 : ℚ), (-307019383680709/1000000000000 : ℚ), 12⟩,
    ⟨(238905199081/1000000000000 : ℚ), (280758036053/2000000000 : ℚ), (-16965634166577/500000000000 : ℚ), 9⟩,
    ⟨(30032899539/125000000000 : ℚ), (491058747021/10000000000 : ℚ), (-6042026959083/500000000000 : ℚ), 7⟩,
    ⟨(242283828519/1000000000000 : ℚ), (241345864799/10000000000 : ℚ), (-6064712615979/1000000000000 : ℚ), 6⟩,
    ⟨(244947635909/1000000000000 : ℚ), (34890854651/2500000000 : ℚ), (-448422425909/125000000000 : ℚ), 6⟩,
    ⟨(248228964561/1000000000000 : ℚ), (44326643463/5000000000 : ℚ), (-2333101970241/1000000000000 : ℚ), 5⟩,
    ⟨(126048106743/500000000000 : ℚ), (14945249769/2500000000 : ℚ), (-1611440370943/1000000000000 : ℚ), 5⟩,
    ⟨(256512138963/1000000000000 : ℚ), (4195122287/1000000000 : ℚ), (-579195966941/500000000000 : ℚ), 4⟩,
    ⟨(52286842643/200000000000 : ℚ), (6048004393/2000000000 : ℚ), (-855338973377/1000000000000 : ℚ), 4⟩,
    ⟨(266815033977/1000000000000 : ℚ), (4435723659/2000000000 : ℚ), (-642573808327/1000000000000 : ℚ), 4⟩,
    ⟨(68150695251/250000000000 : ℚ), (4105192319/2500000000 : ℚ), (-487386399947/1000000000000 : ℚ), 3⟩,
    ⟨(278741715127/1000000000000 : ℚ), (12183133861/10000000000 : ℚ), (-74128267667/200000000000 : ℚ), 3⟩,
    ⟨(17823294691/62500000000 : ℚ), (8985766503/10000000000 : ℚ), (-140271239157/500000000000 : ℚ), 3⟩,
    ⟨(58366769349/200000000000 : ℚ), (6522014997/10000000000 : ℚ), (-209500792293/1000000000000 : ℚ), 3⟩,
    ⟨(149330479927/500000000000 : ℚ), (4589040859/10000000000 : ℚ), (-152458120343/1000000000000 : ℚ), 3⟩,
    ⟨(152794152777/500000000000 : ℚ), (1524362283/5000000000 : ℚ), (-26485441311/250000000000 : ℚ), 3⟩,
    ⟨(78137292429/250000000000 : ℚ), (1804679729/10000000000 : ℚ), (-13501437139/200000000000 : ℚ), 3⟩,
    ⟨(63895303083/200000000000 : ℚ), (788222763/10000000000 : ℚ), (-35396810991/1000000000000 : ℚ), 3⟩,
    ⟨(13052145141/40000000000 : ℚ), (-50472039/10000000000 : ℚ), (-8324214183/1000000000000 : ℚ), 3⟩,
    ⟨(166482380107/500000000000 : ℚ), (-748107253/10000000000 : ℚ), (14666389201/1000000000000 : ℚ), 2⟩,
    ⟨(339395760143/1000000000000 : ℚ), (-333018287/2500000000 : ℚ), (3429395909/100000000000 : ℚ), 2⟩,
    ⟨(172767347133/500000000000 : ℚ), (-227879443/1250000000 : ℚ), (51104714873/1000000000000 : ℚ), 2⟩,
    ⟨(351322441293/1000000000000 : ℚ), (-223672723/1000000000 : ℚ), (6551681487/100000000000 : ℚ), 2⟩,
    ⟨(71340652411/200000000000 : ℚ), (-1292604641/5000000000 : ℚ), (77852089597/1000000000000 : ℚ), 2⟩,
    ⟨(361625336307/1000000000000 : ℚ), (-179860779/625000000 : ℚ), (44179479733/500000000000 : ℚ), 2⟩,
    ⟨(45755157723/125000000000 : ℚ), (-780397423/2500000000 : ℚ), (97229232649/1000000000000 : ℚ), 2⟩,
    ⟨(369908510709/1000000000000 : ℚ), (-3322193179/10000000000 : ℚ), (104610569161/1000000000000 : ℚ), 2⟩,
    ⟨(373189839361/1000000000000 : ℚ), (-348382583/1000000000 : ℚ), (55307905673/500000000000 : ℚ), 2⟩,
    ⟨(375853646751/1000000000000 : ℚ), (-721940127/2000000000 : ℚ), (57664997103/500000000000 : ℚ), 2⟩,
    ⟨(188937139479/500000000000 : ℚ), (-92554779/250000000 : ℚ), (118815586613/1000000000000 : ℚ), 2⟩,
    ⟨(379232276189/1000000000000 : ℚ), (-940742251/2500000000 : ℚ), (12111633949/100000000000 : ℚ), 2⟩,
    ⟨(94978640047/250000000000 : ℚ), (-3793098967/10000000000 : ℚ), (24451998259/200000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3796853213/10000000000 : ℚ), (1912541197/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (351688102677/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control404.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control404.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate404
