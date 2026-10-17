import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate459
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129397585239/500000000000 : ℚ), (13652336539909/10000000000 : ℚ), (-88496958944689/250000000000 : ℚ), 12⟩,
    ⟨(64868675143/250000000000 : ℚ), (372862136619/2500000000 : ℚ), (-39117846750613/1000000000000 : ℚ), 9⟩,
    ⟨(260827216513/1000000000000 : ℚ), (522345248947/10000000000 : ℚ), (-6964043688759/500000000000 : ℚ), 7⟩,
    ⟨(52567938567/200000000000 : ℚ), (64264289321/2500000000 : ℚ), (-6987847374011/1000000000000 : ℚ), 6⟩,
    ⟨(265492748289/1000000000000 : ℚ), (148842197757/10000000000 : ℚ), (-103288784187/25000000000 : ℚ), 6⟩,
    ⟨(268760832501/1000000000000 : ℚ), (23665760623/2500000000 : ℚ), (-167840791421/62500000000 : ℚ), 5⟩,
    ⟨(136306236017/500000000000 : ℚ), (12780636117/2000000000 : ℚ), (-231684466427/125000000000 : ℚ), 5⟩,
    ⟨(138505286747/500000000000 : ℚ), (22442490047/5000000000 : ℚ), (-1331226117091/1000000000000 : ℚ), 4⟩,
    ⟨(281912780759/1000000000000 : ℚ), (8094353849/2500000000 : ℚ), (-981937711851/1000000000000 : ℚ), 4⟩,
    ⟨(287271882893/1000000000000 : ℚ), (23756785467/10000000000 : ℚ), (-147353446767/200000000000 : ℚ), 4⟩,
    ⟨(146518134407/500000000000 : ℚ), (17591730987/10000000000 : ℚ), (-34874956759/62500000000 : ℚ), 4⟩,
    ⟨(149575212167/500000000000 : ℚ), (13048935827/10000000000 : ℚ), (-84713949397/200000000000 : ℚ), 3⟩,
    ⟨(305555466793/1000000000000 : ℚ), (9617507421/10000000000 : ℚ), (-319876191109/1000000000000 : ℚ), 3⟩,
    ⟨(31218971213/100000000000 : ℚ), (6970774613/10000000000 : ℚ), (-238166770399/1000000000000 : ℚ), 3⟩,
    ⟨(318989268937/1000000000000 : ℚ), (4892469701/10000000000 : ℚ), (-172607423759/1000000000000 : ℚ), 3⟩,
    ⟨(81472163441/250000000000 : ℚ), (1617592317/5000000000 : ℚ), (-59595945877/500000000000 : ℚ), 3⟩,
    ⟨(332821421763/1000000000000 : ℚ), (1895939881/10000000000 : ℚ), (-75099191909/1000000000000 : ℚ), 3⟩,
    ⟨(33972080659/100000000000 : ℚ), (200317013/2500000000 : ℚ), (-38300287563/1000000000000 : ℚ), 3⟩,
    ⟨(346520363397/1000000000000 : ℚ), (-102192563/10000000000 : ℚ), (-1827323763/250000000000 : ℚ), 3⟩,
    ⟨(176577304367/500000000000 : ℚ), (-213449783/2500000000 : ℚ), (18978458223/1000000000000 : ℚ), 3⟩,
    ⟨(359559651193/1000000000000 : ℚ), (-74148023/500000000 : ℚ), (258715949/6250000000 : ℚ), 3⟩,
    ⟨(365673806713/1000000000000 : ℚ), (-2011893033/10000000000 : ℚ), (60571311511/1000000000000 : ℚ), 2⟩,
    ⟨(185719096317/500000000000 : ℚ), (-1228765089/5000000000 : ℚ), (38496639931/500000000000 : ℚ), 2⟩,
    ⟨(23549830923/62500000000 : ℚ), (-708216851/2500000000 : ℚ), (22758441629/250000000000 : ℚ), 2⟩,
    ⟨(381699502033/1000000000000 : ℚ), (-1573962413/5000000000 : ℚ), (25745310543/250000000000 : ℚ), 2⟩,
    ⟨(386097603493/1000000000000 : ℚ), (-852611157/2500000000 : ℚ), (14132335529/125000000000 : ℚ), 2⟩,
    ⟨(194974621513/500000000000 : ℚ), (-113325057/312500000 : ℚ), (3035948341/25000000000 : ℚ), 2⟩,
    ⟨(196608663619/500000000000 : ℚ), (-3800381007/10000000000 : ℚ), (128250446597/1000000000000 : ℚ), 2⟩,
    ⟨(98967595673/250000000000 : ℚ), (-983963733/2500000000 : ℚ), (133595377103/1000000000000 : ℚ), 2⟩,
    ⟨(198941429507/500000000000 : ℚ), (-126105921/312500000 : ℚ), (137545624941/1000000000000 : ℚ), 2⟩,
    ⟨(79847074991/200000000000 : ℚ), (-410079177/1000000000 : ℚ), (28030455991/200000000000 : ℚ), 2⟩,
    ⟨(399914905049/1000000000000 : ℚ), (-826642593/2000000000 : ℚ), (70723874339/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-2068626321/5000000000 : ℚ), (35402329639/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (21276597627/62500000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control459.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control459.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate459
