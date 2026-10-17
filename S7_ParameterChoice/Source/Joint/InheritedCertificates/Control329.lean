import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate329
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4796934903/20000000000 : ℚ), (690383514197/500000000 : ℚ), (-165922633260331/500000000000 : ℚ), 12⟩,
    ⟨(60130303669/250000000000 : ℚ), (1507355823843/10000000000 : ℚ), (-36673555757107/1000000000000 : ℚ), 8⟩,
    ⟨(120931829109/500000000000 : ℚ), (131852537801/2500000000 : ℚ), (-13059645451303/1000000000000 : ℚ), 7⟩,
    ⟨(24386114731/100000000000 : ℚ), (51854907347/2000000000 : ℚ), (-6553550357801/1000000000000 : ℚ), 6⟩,
    ⟨(246494445041/1000000000000 : ℚ), (149964400349/10000000000 : ℚ), (-3875893952907/1000000000000 : ℚ), 5⟩,
    ⟨(124869095657/500000000000 : ℚ), (47638768133/5000000000 : ℚ), (-2520198625883/1000000000000 : ℚ), 5⟩,
    ⟨(253561147079/1000000000000 : ℚ), (16063950481/2500000000 : ℚ), (-1740190702083/1000000000000 : ℚ), 4⟩,
    ⟨(128963247591/500000000000 : ℚ), (22546716857/5000000000 : ℚ), (-15631476373/12500000000 : ℚ), 4⟩,
    ⟨(52558438987/200000000000 : ℚ), (16251610403/5000000000 : ℚ), (-461485258169/500000000000 : ℚ), 4⟩,
    ⟨(26811138699/100000000000 : ℚ), (23834032933/10000000000 : ℚ), (-346505733909/500000000000 : ℚ), 4⟩,
    ⟨(136916422309/500000000000 : ℚ), (2205006359/1250000000 : ℚ), (-262642708503/500000000000 : ℚ), 3⟩,
    ⟨(17493841691/62500000000 : ℚ), (1307989861/1000000000 : ℚ), (-79821851391/200000000000 : ℚ), 3⟩,
    ⟨(35782351269/125000000000 : ℚ), (9638007751/10000000000 : ℚ), (-301732733691/1000000000000 : ℚ), 3⟩,
    ⟨(4575682019/15625000000 : ℚ), (6984919521/10000000000 : ℚ), (-1799624121/8000000000 : ℚ), 3⟩,
    ⟨(299592568649/1000000000000 : ℚ), (980535439/2000000000 : ℚ), (-16330288333/100000000000 : ℚ), 3⟩,
    ⟨(306440572667/1000000000000 : ℚ), (1621421813/5000000000 : ℚ), (-28257217139/250000000000 : ℚ), 3⟩,
    ⟨(19582606953/62500000000 : ℚ), (1901815891/10000000000 : ℚ), (-71488860847/1000000000000 : ℚ), 3⟩,
    ⟨(160084857633/500000000000 : ℚ), (805756363/10000000000 : ℚ), (-36783319333/1000000000000 : ℚ), 3⟩,
    ⟨(326918634699/1000000000000 : ℚ), (-98907893/10000000000 : ℚ), (-7521976293/1000000000000 : ℚ), 2⟩,
    ⟨(333503473763/1000000000000 : ℚ), (-425822841/5000000000 : ℚ), (4332010489/250000000000 : ℚ), 2⟩,
    ⟨(339860816859/1000000000000 : ℚ), (-1481915963/10000000000 : ℚ), (38543633591/1000000000000 : ℚ), 2⟩,
    ⟨(345929439297/1000000000000 : ℚ), (-2011948567/10000000000 : ℚ), (886171867/15625000000 : ℚ), 2⟩,
    ⟨(14066035877/40000000000 : ℚ), (-2458669377/10000000000 : ℚ), (72293945153/1000000000000 : ℚ), 2⟩,
    ⟨(17848504449/50000000000 : ℚ), (-2835055993/10000000000 : ℚ), (21407046549/250000000000 : ℚ), 2⟩,
    ⟨(361835788733/1000000000000 : ℚ), (-3151106669/10000000000 : ℚ), (96986122661/1000000000000 : ℚ), 2⟩,
    ⟨(91550284209/250000000000 : ℚ), (-3414541719/10000000000 : ℚ), (106574995333/1000000000000 : ℚ), 2⟩,
    ⟨(370024092601/1000000000000 : ℚ), (-3631316489/10000000000 : ℚ), (7159647239/62500000000 : ℚ), 2⟩,
    ⟨(186633919437/500000000000 : ℚ), (-1902999567/5000000000 : ℚ), (121046146663/1000000000000 : ℚ), 2⟩,
    ⟨(75180227321/200000000000 : ℚ), (-394204949/1000000000 : ℚ), (3941946029/31250000000 : ℚ), 2⟩,
    ⟨(377898625697/1000000000000 : ℚ), (-808404771/2000000000 : ℚ), (25982052113/200000000000 : ℚ), 2⟩,
    ⟨(379241069239/1000000000000 : ℚ), (-821544551/2000000000 : ℚ), (132397409721/1000000000000 : ℚ), 2⟩,
    ⟨(75983107753/200000000000 : ℚ), (-2070146613/5000000000 : ℚ), (133633712511/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-4144351607/10000000000 : ℚ), (133787913831/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (40334688339/125000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control329.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control329.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate329
