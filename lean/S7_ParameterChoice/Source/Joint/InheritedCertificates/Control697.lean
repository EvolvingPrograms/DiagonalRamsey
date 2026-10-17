import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate697
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (59222653745721/280844651412800 : ℚ), (3140162631447/10000000000 : ℚ), (-13283853770451/200000000000 : ℚ)⟩,
  ⟨(59222653745721/280844651412800 : ℚ), (236920776802/1110204986795 : ℚ), (331716117319/10000000000 : ℚ), (-3598307553267/500000000000 : ℚ)⟩,
  ⟨(236920776802/1110204986795 : ℚ), (1306229970771/6004446685300 : ℚ), (2741877999/250000000 : ℚ), (-1229099785247/500000000000 : ℚ)⟩,
  ⟨(1306229970771/6004446685300 : ℚ), (179448812923/804261892800 : ℚ), (49630653107/10000000000 : ℚ), (-1151969599723/1000000000000 : ℚ)⟩,
  ⟨(179448812923/804261892800 : ℚ), (68326173279/297169419100 : ℚ), (25502796323/10000000000 : ℚ), (-306811580477/500000000000 : ℚ)⟩,
  ⟨(68326173279/297169419100 : ℚ), (157919092283/664403460600 : ℚ), (13616019559/10000000000 : ℚ), (-170159233919/500000000000 : ℚ)⟩,
  ⟨(157919092283/664403460600 : ℚ), (12460401827/50629232125 : ℚ), (6971984953/10000000000 : ℚ), (-36479875111/200000000000 : ℚ)⟩,
  ⟨(12460401827/50629232125 : ℚ), (67036000961/263015364900 : ℚ), (2921646383/10000000000 : ℚ), (-82716160939/1000000000000 : ℚ)⟩,
  ⟨(67036000961/263015364900 : ℚ), (47166677837/178905763200 : ℚ), (145746367/5000000000 : ℚ), (-7840079989/500000000000 : ℚ)⟩,
  ⟨(47166677837/178905763200 : ℚ), (34184189713/125645942000 : ℚ), (-748782449/5000000000 : ℚ), (31486517859/1000000000000 : ℚ)⟩,
  ⟨(34184189713/125645942000 : ℚ), (12555113321/44866382600 : ℚ), (-1377012159/5000000000 : ℚ), (16417676893/250000000000 : ℚ)⟩,
  ⟨(12555113321/44866382600 : ℚ), (18323438347/63925267000 : ℚ), (-365135197/1000000000 : ℚ), (45390467107/500000000000 : ℚ)⟩,
  ⟨(18323438347/63925267000 : ℚ), (6444362721/22053011050 : ℚ), (-26816279/62500000 : ℚ), (109104372561/1000000000000 : ℚ)⟩,
  ⟨(6444362721/22053011050 : ℚ), (2747199937/9269532500 : ℚ), (-4731664861/10000000000 : ℚ), (121993098003/1000000000000 : ℚ)⟩,
  ⟨(2747199937/9269532500 : ℚ), (149105717/498811300 : ℚ), (-1252437709/2500000000 : ℚ), (65117348907/500000000000 : ℚ)⟩,
  ⟨(149105717/498811300 : ℚ), (49902243/166400720 : ℚ), (-5144429887/10000000000 : ℚ), (134260552173/1000000000000 : ℚ)⟩,
  ⟨(49902243/166400720 : ℚ), (3/10 : ℚ), (-5161069959/10000000000 : ℚ), (134759574603/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1838930041/7000000000 : ℚ), (-21/100 : ℚ), (189927475833/1000000000000 : ℚ)⟩,
  ⟨(1838930041/7000000000 : ℚ), (1855570113/7000000000 : ℚ), (-349315701/1664007200 : ℚ), (1580038180871555523/8320036000000000000 : ℚ)⟩,
  ⟨(1855570113/7000000000 : ℚ), (497562291/1750000000 : ℚ), (-1043740019/4988113000 : ℚ), (94638291782395557/498811300000000000 : ℚ)⟩,
  ⟨(497562291/1750000000 : ℚ), (324047877/1000000000 : ℚ), (-19230399559/92695325000 : ℚ), (8769880009050311109/46347662500000000000 : ℚ)⟩,
  ⟨(324047877/1000000000 : ℚ), (2419103/6250000 : ℚ), (-6444362721/31504301500 : ℚ), (11863178797527106443/63008603000000000000 : ℚ)⟩,
  ⟨(2419103/6250000 : ℚ), (47837829/100000000 : ℚ), (-18323438347/91321810000 : ℚ), (1705581432927169397/9132181000000000000 : ℚ)⟩,
  ⟨(47837829/100000000 : ℚ), (2122987841/3500000000 : ℚ), (-87885793247/448663826000 : ℚ), (3183568336965421169/17256301000000000000 : ℚ)⟩,
  ⟨(2122987841/3500000000 : ℚ), (2751217551/3500000000 : ℚ), (-239289327991/1256459420000 : ℚ), (113828908688588643753/628229710000000000000 : ℚ)⟩,
  ⟨(2751217551/3500000000 : ℚ), (3645746367/3500000000 : ℚ), (-330166744859/1789057632000 : ℚ), (52643796475963747377/298176272000000000000 : ℚ)⟩,
  ⟨(3645746367/3500000000 : ℚ), (9921646383/7000000000 : ℚ), (-469252006727/2630153649000 : ℚ), (37295940328375671471/219179470750000000000 : ℚ)⟩,
  ⟨(9921646383/7000000000 : ℚ), (13971984953/7000000000 : ℚ), (-87222812789/506292321250 : ℚ), (326996574363545008349/2025169285000000000000 : ℚ)⟩,
  ⟨(13971984953/7000000000 : ℚ), (20616019559/7000000000 : ℚ), (-1105433645981/6644034606000 : ℚ), (994575417869283961369/6644034606000000000000 : ℚ)⟩,
  ⟨(20616019559/7000000000 : ℚ), (32502796323/7000000000 : ℚ), (-478283212953/2971694191000 : ℚ), (397291310747282234903/2971694191000000000000 : ℚ)⟩,
  ⟨(32502796323/7000000000 : ℚ), (8090093301/1000000000 : ℚ), (-1256141690461/8042618928000 : ℚ), (299150322630856114939/2680872976000000000000 : ℚ)⟩,
  ⟨(8090093301/1000000000 : ℚ), (416696857/25000000 : ℚ), (-1306229970771/8577780979000 : ℚ), (343089707604849918127/4288890489500000000000 : ℚ)⟩,
  ⟨(416696857/25000000 : ℚ), (32/1 : ℚ), (-829222718807/5551024933975 : ℚ), (3517058373920757516527/111020498679500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (482220042821/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(210557384781/1000000000000 : ℚ), (3140162631447/10000000000 : ℚ), (-13283853770451/200000000000 : ℚ), 11⟩,
    ⟨(106135925883/500000000000 : ℚ), (331716117319/10000000000 : ℚ), (-3598307553267/500000000000 : ℚ), 8⟩,
    ⟨(215634899731/1000000000000 : ℚ), (2741877999/250000000 : ℚ), (-1229099785247/500000000000 : ℚ), 6⟩,
    ⟨(22051728863/100000000000 : ℚ), (49630653107/10000000000 : ℚ), (-1151969599723/1000000000000 : ℚ), 5⟩,
    ⟨(113365695497/500000000000 : ℚ), (25502796323/10000000000 : ℚ), (-306811580477/500000000000 : ℚ), 5⟩,
    ⟨(58509600589/250000000000 : ℚ), (13616019559/10000000000 : ℚ), (-170159233919/500000000000 : ℚ), 4⟩,
    ⟨(48431503673/200000000000 : ℚ), (6971984953/10000000000 : ℚ), (-36479875111/200000000000 : ℚ), 4⟩,
    ⟨(250776725947/1000000000000 : ℚ), (2921646383/10000000000 : ℚ), (-82716160939/1000000000000 : ℚ), 4⟩,
    ⟨(259564793789/1000000000000 : ℚ), (145746367/5000000000 : ℚ), (-7840079989/500000000000 : ℚ), 3⟩,
    ⟨(268184001371/1000000000000 : ℚ), (-748782449/5000000000 : ℚ), (31486517859/1000000000000 : ℚ), 3⟩,
    ⟨(276303117381/1000000000000 : ℚ), (-1377012159/5000000000 : ℚ), (16417676893/250000000000 : ℚ), 3⟩,
    ⟨(141805064371/500000000000 : ℚ), (-365135197/1000000000 : ℚ), (45390467107/500000000000 : ℚ), 3⟩,
    ⟨(144912115553/500000000000 : ℚ), (-26816279/62500000 : ℚ), (109104372561/1000000000000 : ℚ), 3⟩,
    ⟨(58941324001/200000000000 : ℚ), (-4731664861/10000000000 : ℚ), (121993098003/1000000000000 : ℚ), 3⟩,
    ⟨(298069667971/1000000000000 : ℚ), (-1252437709/2500000000 : ℚ), (65117348907/500000000000 : ℚ), 3⟩,
    ⟨(74946033739/250000000000 : ℚ), (-5144429887/10000000000 : ℚ), (134260552173/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5161069959/10000000000 : ℚ), (134759574603/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control697.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control697.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate697
