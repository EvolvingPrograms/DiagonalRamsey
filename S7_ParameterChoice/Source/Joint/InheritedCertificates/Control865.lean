import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate865
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (12432961148459/77969752240300 : ℚ), (2616703051093/10000000000 : ℚ), (-41801848726177/1000000000000 : ℚ)⟩,
  ⟨(12432961148459/77969752240300 : ℚ), (186515097197/1161292694525 : ℚ), (69402620971/2500000000 : ℚ), (-5628706601/1250000000 : ℚ)⟩,
  ⟨(186515097197/1161292694525 : ℚ), (164520123173/1012466652860 : ℚ), (2295091319/250000000 : ℚ), (-94920232853/62500000000 : ℚ)⟩,
  ⟨(164520123173/1012466652860 : ℚ), (1694816893/10269576575 : ℚ), (41180320117/10000000000 : ℚ), (-696123109783/1000000000000 : ℚ)⟩,
  ⟨(1694816893/10269576575 : ℚ), (1720270328/10231962035 : ℚ), (20641166967/10000000000 : ℚ), (-357159731183/1000000000000 : ℚ)⟩,
  ⟨(1720270328/10231962035 : ℚ), (2258059047/13154368000 : ℚ), (2602301233/2500000000 : ℚ), (-185132698383/1000000000000 : ℚ)⟩,
  ⟨(2258059047/13154368000 : ℚ), (870639201/4961155475 : ℚ), (1155320753/2500000000 : ℚ), (-17155620063/200000000000 : ℚ)⟩,
  ⟨(870639201/4961155475 : ℚ), (10535883647/58702999600 : ℚ), (104925107/1000000000 : ℚ), (-23092077843/1000000000000 : ℚ)⟩,
  ⟨(10535883647/58702999600 : ℚ), (14828248529/80823513800 : ℚ), (-649434457/5000000000 : ℚ), (3810291349/200000000000 : ℚ)⟩,
  ⟨(14828248529/80823513800 : ℚ), (21510512559/114846611000 : ℚ), (-291533919/1000000000 : ℚ), (48707953803/1000000000000 : ℚ)⟩,
  ⟨(21510512559/114846611000 : ℚ), (5274801299/27641410300 : ℚ), (-40638053/100000000 : ℚ), (35109233181/500000000000 : ℚ)⟩,
  ⟨(5274801299/27641410300 : ℚ), (11571460339/59669959000 : ℚ), (-4893047609/10000000000 : ℚ), (86042870259/1000000000000 : ℚ)⟩,
  ⟨(11571460339/59669959000 : ℚ), (8158423879/41526479400 : ℚ), (-5489747199/10000000000 : ℚ), (48807165299/500000000000 : ℚ)⟩,
  ⟨(8158423879/41526479400 : ℚ), (5228044939/26357814400 : ℚ), (-5905011993/10000000000 : ℚ), (105772754477/1000000000000 : ℚ)⟩,
  ⟨(5228044939/26357814400 : ℚ), (639410689/3204907450 : ℚ), (-6168590137/10000000000 : ℚ), (13875099927/125000000000 : ℚ)⟩,
  ⟨(639410689/3204907450 : ℚ), (63444981/317302840 : ℚ), (-1259357287/2000000000 : ℚ), (28389610543/250000000000 : ℚ)⟩,
  ⟨(63444981/317302840 : ℚ), (1/5 : ℚ), (-6312651577/10000000000 : ℚ), (113875667077/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1687348423/8000000000 : ℚ), (-4/25 : ℚ), (147622635537/1000000000000 : ℚ)⟩,
  ⟨(1687348423/8000000000 : ℚ), (340642713/1600000000 : ℚ), (-63444981/396628550 : ℚ), (2341922571709404749/15865142000000000000 : ℚ)⟩,
  ⟨(340642713/1600000000 : ℚ), (1831409863/8000000000 : ℚ), (-1278821378/8012268625 : ℚ), (4728495932385166099/32049074500000000000 : ℚ)⟩,
  ⟨(1831409863/8000000000 : ℚ), (2094988007/8000000000 : ℚ), (-5228044939/32947268000 : ℚ), (38832077758077397261/263578144000000000000 : ℚ)⟩,
  ⟨(2094988007/8000000000 : ℚ), (2510252801/8000000000 : ℚ), (-8158423879/51908099250 : ℚ), (8716500183033057413/59323542000000000000 : ℚ)⟩,
  ⟨(2510252801/8000000000 : ℚ), (3106952391/8000000000 : ℚ), (-11571460339/74587448750 : ℚ), (87293721773586214359/596699590000000000000 : ℚ)⟩,
  ⟨(3106952391/8000000000 : ℚ), (39361947/80000000 : ℚ), (-5274801299/34551762875 : ℚ), (20086009655082409293/138207051500000000000 : ℚ)⟩,
  ⟨(39361947/80000000 : ℚ), (508466081/800000000 : ℚ), (-21510512559/143558263750 : ℚ), (516603420131097591/3588956593750000000 : ℚ)⟩,
  ⟨(508466081/800000000 : ℚ), (3350565543/4000000000 : ℚ), (-14828248529/101029392250 : ℚ), (448297241953171009/3157168507812500000 : ℚ)⟩,
  ⟨(3350565543/4000000000 : ℚ), (904925107/800000000 : ℚ), (-10535883647/73378749500 : ℚ), (40893057001101136831/293514998000000000000 : ℚ)⟩,
  ⟨(904925107/800000000 : ℚ), (3155320753/2000000000 : ℚ), (-3482556804/24805777375 : ℚ), (26931995348135754663/198446219000000000000 : ℚ)⟩,
  ⟨(3155320753/2000000000 : ℚ), (4602301233/2000000000 : ℚ), (-2258059047/16442960000 : ℚ), (4304008827787437591/32885920000000000000 : ℚ)⟩,
  ⟨(4602301233/2000000000 : ℚ), (28641166967/8000000000 : ℚ), (-6881081312/51159810175 : ℚ), (254522031873424776039/2046392407000000000000 : ℚ)⟩,
  ⟨(28641166967/8000000000 : ℚ), (49180320117/8000000000 : ℚ), (-6779267572/51347882875 : ℚ), (9490193217602268119/82156612600000000000 : ℚ)⟩,
  ⟨(49180320117/8000000000 : ℚ), (2495091319/200000000 : ℚ), (-164520123173/1265583316075 : ℚ), (651961233707204038717/6327916580375000000000 : ℚ)⟩,
  ⟨(2495091319/200000000 : ℚ), (32/1 : ℚ), (-746060388788/5806463472625 : ℚ), (244515079794727399237/2903231736312500000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (340485460047/500000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(19914366827/125000000000 : ℚ), (2616703051093/10000000000 : ℚ), (-41801848726177/1000000000000 : ℚ), 12⟩,
    ⟨(80047400011/500000000000 : ℚ), (69402620971/2500000000 : ℚ), (-5628706601/1250000000 : ℚ), 9⟩,
    ⟨(80812280521/500000000000 : ℚ), (2295091319/250000000 : ℚ), (-94920232853/62500000000 : ℚ), 8⟩,
    ⟨(163845429821/1000000000000 : ℚ), (41180320117/10000000000 : ℚ), (-696123109783/1000000000000 : ℚ), 7⟩,
    ⟨(83336029807/500000000000 : ℚ), (20641166967/10000000000 : ℚ), (-357159731183/1000000000000 : ℚ), 6⟩,
    ⟨(84997912313/500000000000 : ℚ), (2602301233/2500000000 : ℚ), (-185132698383/1000000000000 : ℚ), 6⟩,
    ⟨(173688994429/1000000000000 : ℚ), (1155320753/2500000000 : ℚ), (-17155620063/200000000000 : ℚ), 5⟩,
    ⟨(177609642581/1000000000000 : ℚ), (104925107/1000000000 : ℚ), (-23092077843/1000000000000 : ℚ), 5⟩,
    ⟨(181607100771/1000000000000 : ℚ), (-649434457/5000000000 : ℚ), (3810291349/200000000000 : ℚ), 5⟩,
    ⟨(185527748923/1000000000000 : ℚ), (-291533919/1000000000 : ℚ), (48707953803/1000000000000 : ℚ), 5⟩,
    ⟨(189220918727/1000000000000 : ℚ), (-40638053/100000000 : ℚ), (35109233181/500000000000 : ℚ), 5⟩,
    ⟨(96272341869/500000000000 : ℚ), (-4893047609/10000000000 : ℚ), (86042870259/1000000000000 : ℚ), 5⟩,
    ⟨(48842828383/250000000000 : ℚ), (-5489747199/10000000000 : ℚ), (48807165299/500000000000 : ℚ), 5⟩,
    ⟨(19759218231/100000000000 : ℚ), (-5905011993/10000000000 : ℚ), (105772754477/1000000000000 : ℚ), 5⟩,
    ⟨(19912194333/100000000000 : ℚ), (-6168590137/10000000000 : ℚ), (13875099927/125000000000 : ℚ), 5⟩,
    ⟨(6246931523/31250000000 : ℚ), (-1259357287/2000000000 : ℚ), (28389610543/250000000000 : ℚ), 5⟩,
    ⟨(1/5 : ℚ), (-6312651577/10000000000 : ℚ), (113875667077/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control865.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control865.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate865
