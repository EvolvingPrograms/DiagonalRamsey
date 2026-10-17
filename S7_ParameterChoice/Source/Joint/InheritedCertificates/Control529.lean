import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate529
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117094455217/500000000000 : ℚ), (14229178530501/10000000000 : ℚ), (-333806218496731/1000000000000 : ℚ), 12⟩,
    ⟨(117373118209/500000000000 : ℚ), (1555644244143/10000000000 : ℚ), (-7375220548943/200000000000 : ℚ), 9⟩,
    ⟨(235855521033/1000000000000 : ℚ), (109063989493/2000000000 : ℚ), (-13121510574913/1000000000000 : ℚ), 7⟩,
    ⟨(11875304063/50000000000 : ℚ), (16786254307/625000000 : ℚ), (-3288322723817/500000000000 : ℚ), 7⟩,
    ⟨(239682021303/1000000000000 : ℚ), (77799620463/5000000000 : ℚ), (-970756048421/250000000000 : ℚ), 6⟩,
    ⟨(242362385669/1000000000000 : ℚ), (49487128083/5000000000 : ℚ), (-2519239249693/1000000000000 : ℚ), 5⟩,
    ⟨(49104272197/200000000000 : ℚ), (66785264433/10000000000 : ℚ), (-1734572962791/1000000000000 : ℚ), 5⟩,
    ⟨(249128524591/1000000000000 : ℚ), (23427313569/5000000000 : ℚ), (-248394999099/200000000000 : ℚ), 5⟩,
    ⟨(25314913753/100000000000 : ℚ), (4215719529/1250000000 : ℚ), (-912472634571/1000000000000 : ℚ), 4⟩,
    ⟨(128772239551/500000000000 : ℚ), (24660860719/10000000000 : ℚ), (-170286502819/250000000000 : ℚ), 4⟩,
    ⟨(65568054941/250000000000 : ℚ), (18165719973/10000000000 : ℚ), (-64053696961/125000000000 : ℚ), 4⟩,
    ⟨(267286828789/1000000000000 : ℚ), (13369998183/10000000000 : ℚ), (-385517171313/1000000000000 : ℚ), 4⟩,
    ⟨(272540012751/1000000000000 : ℚ), (4869903949/5000000000 : ℚ), (-28758231023/100000000000 : ℚ), 3⟩,
    ⟨(277981180617/1000000000000 : ℚ), (1733389783/2500000000 : ℚ), (-105186310387/500000000000 : ℚ), 3⟩,
    ⟨(283557930967/1000000000000 : ℚ), (944990047/2000000000 : ℚ), (-9274207409/62500000000 : ℚ), 3⟩,
    ⟨(72304139161/250000000000 : ℚ), (739904883/2500000000 : ℚ), (-6115583967/62500000000 : ℚ), 3⟩,
    ⟨(36862820249/125000000000 : ℚ), (1529647131/10000000000 : ℚ), (-56099481999/1000000000000 : ℚ), 3⟩,
    ⟨(300561187669/1000000000000 : ℚ), (71596563/2000000000 : ℚ), (-10612739453/500000000000 : ℚ), 3⟩,
    ⟨(306137938019/1000000000000 : ℚ), (-76422149/1250000000 : ℚ), (4086277587/500000000000 : ℚ), 3⟩,
    ⟨(62315821177/200000000000 : ℚ), (-88735273/625000000 : ℚ), (33134846501/1000000000000 : ℚ), 3⟩,
    ⟨(316832289847/1000000000000 : ℚ), (-2098077811/10000000000 : ℚ), (6805489483/125000000000 : ℚ), 3⟩,
    ⟨(40230862359/125000000000 : ℚ), (-10428387/39062500 : ℚ), (36347112449/500000000000 : ℚ), 3⟩,
    ⟨(163287319767/500000000000 : ℚ), (-3152330813/10000000000 : ℚ), (88340741023/1000000000000 : ℚ), 3⟩,
    ⟨(165484990553/500000000000 : ℚ), (-889931671/2500000000 : ℚ), (101733444849/1000000000000 : ℚ), 3⟩,
    ⟨(66998118809/200000000000 : ℚ), (-1951190583/5000000000 : ℚ), (28285567519/250000000000 : ℚ), 3⟩,
    ⟨(338597757651/1000000000000 : ℚ), (-523552807/1250000000 : ℚ), (61387701841/500000000000 : ℚ), 3⟩,
    ⟨(341756732967/1000000000000 : ℚ), (-4424118067/10000000000 : ℚ), (65396443737/500000000000 : ℚ), 3⟩,
    ⟨(344437097333/1000000000000 : ℚ), (-1153568017/2500000000 : ℚ), (68658410043/500000000000 : ℚ), 3⟩,
    ⟨(5415828709/15625000000 : ℚ), (-1190629841/2500000000 : ℚ), (8902440001/62500000000 : ℚ), 2⟩,
    ⟨(348263597603/1000000000000 : ℚ), (-1217885651/2500000000 : ℚ), (146226885611/1000000000000 : ℚ), 2⟩,
    ⟨(174686441109/500000000000 : ℚ), (-2471614617/5000000000 : ℚ), (148727434503/1000000000000 : ℚ), 2⟩,
    ⟨(174965104101/500000000000 : ℚ), (-4978780553/10000000000 : ℚ), (74985245221/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4983210941/10000000000 : ℚ), (75062769281/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (369549284311/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control529.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control529.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate529
