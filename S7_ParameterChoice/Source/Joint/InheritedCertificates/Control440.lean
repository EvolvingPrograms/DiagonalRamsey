import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate440
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(149093218331/500000000000 : ℚ), (807908716007/625000000 : ℚ), (-386226909978547/1000000000000 : ℚ), 12⟩,
    ⟨(149506633677/500000000000 : ℚ), (1411609058121/10000000000 : ℚ), (-21346046003949/500000000000 : ℚ), 9⟩,
    ⟨(60131793181/200000000000 : ℚ), (494183693347/10000000000 : ℚ), (-475287473693/31250000000 : ℚ), 7⟩,
    ⟨(15155384167/50000000000 : ℚ), (60783770313/2500000000 : ℚ), (-7637244134847/1000000000000 : ℚ), 6⟩,
    ⟨(30633583717/100000000000 : ℚ), (140781882967/10000000000 : ℚ), (-2260528710643/500000000000 : ℚ), 6⟩,
    ⟨(31031233851/100000000000 : ℚ), (3582878723/400000000 : ℚ), (-1471740584777/500000000000 : ℚ), 5⟩,
    ⟨(157499445739/500000000000 : ℚ), (60521970241/10000000000 : ℚ), (-508991579861/250000000000 : ℚ), 5⟩,
    ⟨(320350362007/1000000000000 : ℚ), (21289356561/5000000000 : ℚ), (-36660148671/25000000000 : ℚ), 4⟩,
    ⟨(32631521251/100000000000 : ℚ), (30791732457/10000000000 : ℚ), (-1085581713383/1000000000000 : ℚ), 4⟩,
    ⟨(41604499777/125000000000 : ℚ), (22678539787/10000000000 : ℚ), (-409190717403/500000000000 : ℚ), 4⟩,
    ⟨(67969984079/200000000000 : ℚ), (1055320229/625000000 : ℚ), (-623654442991/1000000000000 : ℚ), 3⟩,
    ⟨(347289431141/1000000000000 : ℚ), (6311700509/5000000000 : ℚ), (-47732588741/100000000000 : ℚ), 3⟩,
    ⟨(3550828839/10000000000 : ℚ), (941034607/1000000000 : ℚ), (-364552849409/1000000000000 : ℚ), 3⟩,
    ⟨(18157761173/50000000000 : ℚ), (1734299171/2500000000 : ℚ), (-275784206659/1000000000000 : ℚ), 3⟩,
    ⟨(371428708779/1000000000000 : ℚ), (999920287/2000000000 : ℚ), (-40930395659/200000000000 : ℚ), 3⟩,
    ⟨(379823661671/1000000000000 : ℚ), (1729156201/5000000000 : ℚ), (-73391032063/500000000000 : ℚ), 3⟩,
    ⟨(7765184683/20000000000 : ℚ), (138504557/625000000 : ℚ), (-12386651749/125000000000 : ℚ), 3⟩,
    ⟨(198327093521/500000000000 : ℚ), (1203509057/10000000000 : ℚ), (-59367888751/1000000000000 : ℚ), 3⟩,
    ⟨(202463836181/500000000000 : ℚ), (370234831/10000000000 : ℚ), (-1299041759/50000000000 : ℚ), 3⟩,
    ⟨(206500005961/500000000000 : ℚ), (-320915447/10000000000 : ℚ), (2277565651/1000000000000 : ℚ), 2⟩,
    ⟨(10519836617/25000000000 : ℚ), (-112215009/1250000000 : ℚ), (328990099/12500000000 : ℚ), 2⟩,
    ⟨(428232975427/1000000000000 : ℚ), (-1381173057/10000000000 : ℚ), (46838754947/1000000000000 : ℚ), 2⟩,
    ⟨(217623448803/500000000000 : ℚ), (-446821567/2500000000 : ℚ), (8046214159/125000000000 : ℚ), 2⟩,
    ⟨(27610480207/62500000000 : ℚ), (-425671691/2000000000 : ℚ), (39662108761/500000000000 : ℚ), 2⟩,
    ⟨(89546506763/200000000000 : ℚ), (-241388233/1000000000 : ℚ), (92021726011/1000000000000 : ℚ), 2⟩,
    ⟨(56635500543/125000000000 : ℚ), (-662800337/2500000000 : ℚ), (5135501253/50000000000 : ℚ), 2⟩,
    ⟨(3576332479/7812500000 : ℚ), (-711497557/2500000000 : ℚ), (111580791827/1000000000000 : ℚ), 2⟩,
    ⟨(115436764663/250000000000 : ℚ), (-1501304539/5000000000 : ℚ), (29695307483/250000000000 : ℚ), 2⟩,
    ⟨(232487606241/500000000000 : ℚ), (-3124365043/10000000000 : ℚ), (124422803103/1000000000000 : ℚ), 2⟩,
    ⟨(467423929917/1000000000000 : ℚ), (-128548187/400000000 : ℚ), (128587761359/1000000000000 : ℚ), 2⟩,
    ⟨(117267407117/250000000000 : ℚ), (-81808823/250000000 : ℚ), (131333931489/1000000000000 : ℚ), 2⟩,
    ⟨(469896459159/1000000000000 : ℚ), (-412676183/1250000000 : ℚ), (1326980851/10000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-3305029131/10000000000 : ℚ), (33217047681/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (40555758291/125000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control440.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control440.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate440
