import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate827
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (59970226805919/301709467228300 : ℚ), (67506567119/200000000 : ℚ), (-67215221855709/1000000000000 : ℚ)⟩,
  ⟨(59970226805919/301709467228300 : ℚ), (2399041964001/11981863283450 : ℚ), (358233683667/10000000000 : ℚ), (-724499504979/100000000000 : ℚ)⟩,
  ⟨(2399041964001/11981863283450 : ℚ), (264499885327/1305500919480 : ℚ), (59298208999/5000000000 : ℚ), (-611727780447/250000000000 : ℚ)⟩,
  ⟨(264499885327/1305500919480 : ℚ), (544860956969/2647373809600 : ℚ), (6665171503/1250000000 : ℚ), (-1124411695153/1000000000000 : ℚ)⟩,
  ⟨(544860956969/2647373809600 : ℚ), (6282405547/29955864375 : ℚ), (3355954241/1250000000 : ℚ), (-72443842273/125000000000 : ℚ)⟩,
  ⟨(6282405547/29955864375 : ℚ), (39888570232/186234622625 : ℚ), (13667053603/10000000000 : ℚ), (-75781223529/250000000000 : ℚ)⟩,
  ⟨(39888570232/186234622625 : ℚ), (100575349669/459190020900 : ℚ), (3108834349/5000000000 : ℚ), (-35892653297/250000000000 : ℚ)⟩,
  ⟨(100575349669/459190020900 : ℚ), (4220662299/18836744050 : ℚ), (1625768489/10000000000 : ℚ), (-42995263519/1000000000000 : ℚ)⟩,
  ⟨(4220662299/18836744050 : ℚ), (948912095/4141851722 : ℚ), (-1388110559/10000000000 : ℚ), (4907066653/200000000000 : ℚ)⟩,
  ⟨(948912095/4141851722 : ℚ), (715625283/3058915775 : ℚ), (-172951821/500000000 : ℚ), (14396187603/200000000000 : ℚ)⟩,
  ⟨(715625283/3058915775 : ℚ), (2522064659/10578654380 : ℚ), (-615914499/1250000000 : ℚ), (106330951599/1000000000000 : ℚ)⟩,
  ⟨(2522064659/10578654380 : ℚ), (3681501827/15192622800 : ℚ), (-598518143/1000000000 : ℚ), (131551598189/1000000000000 : ℚ)⟩,
  ⟨(3681501827/15192622800 : ℚ), (12956555631/52769716100 : ℚ), (-674481257/1000000000 : ℚ), (37489776831/250000000000 : ℚ)⟩,
  ⟨(12956555631/52769716100 : ℚ), (4146008309/16723615750 : ℚ), (-7272509731/10000000000 : ℚ), (32583132591/200000000000 : ℚ)⟩,
  ⟨(4146008309/16723615750 : ℚ), (2026633429/8126668950 : ℚ), (-3803491023/5000000000 : ℚ), (171207679573/1000000000000 : ℚ)⟩,
  ⟨(2026633429/8126668950 : ℚ), (251284569/1005387950 : ℚ), (-310780617/400000000 : ℚ), (175260946431/1000000000000 : ℚ)⟩,
  ⟨(251284569/1005387950 : ℚ), (1/4 : ℚ), (-486851449/625000000 : ℚ), (175763515569/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (138148551/625000000 : ℚ), (-1/4 : ℚ), (231022935969/1000000000000 : ℚ)⟩,
  ⟨(138148551/625000000 : ℚ), (89219383/400000000 : ℚ), (-251284569/1005387950 : ℚ), (4645077583126504479/20107759000000000000 : ℚ)⟩,
  ⟨(89219383/400000000 : ℚ), (1196508977/5000000000 : ℚ), (-2026633429/8126668950 : ℚ), (2207441355017419747/9560787000000000000 : ℚ)⟩,
  ⟨(1196508977/5000000000 : ℚ), (2727490269/10000000000 : ℚ), (-4146008309/16723615750 : ℚ), (77107173574299881067/334472315000000000000 : ℚ)⟩,
  ⟨(2727490269/10000000000 : ℚ), (325518743/1000000000 : ℚ), (-12956555631/52769716100 : ℚ), (60654506113548012747/263848580500000000000 : ℚ)⟩,
  ⟨(325518743/1000000000 : ℚ), (401481857/1000000000 : ℚ), (-3681501827/15192622800 : ℚ), (17383350000377464241/75963114000000000000 : ℚ)⟩,
  ⟨(401481857/1000000000 : ℚ), (634085501/1250000000 : ℚ), (-2522064659/10578654380 : ℚ), (17172872093910404863/75561817000000000000 : ℚ)⟩,
  ⟨(634085501/1250000000 : ℚ), (327048179/500000000 : ℚ), (-715625283/3058915775 : ℚ), (1101234428954240001/4894265240000000000 : ℚ)⟩,
  ⟨(327048179/500000000 : ℚ), (8611889441/10000000000 : ℚ), (-948912095/4141851722 : ℚ), (91881431747025302183/414185172200000000000 : ℚ)⟩,
  ⟨(8611889441/10000000000 : ℚ), (11625768489/10000000000 : ℚ), (-4220662299/18836744050 : ℚ), (81939070031454886183/376734881000000000000 : ℚ)⟩,
  ⟨(11625768489/10000000000 : ℚ), (8108834349/5000000000 : ℚ), (-100575349669/459190020900 : ℚ), (32394525713770353489/153063340300000000000 : ℚ)⟩,
  ⟨(8108834349/5000000000 : ℚ), (23667053603/10000000000 : ℚ), (-39888570232/186234622625 : ℚ), (379521427188410716151/1862346226250000000000 : ℚ)⟩,
  ⟨(23667053603/10000000000 : ℚ), (4605954241/1250000000 : ℚ), (-6282405547/29955864375 : ℚ), (28941173334191110333/149779321875000000000 : ℚ)⟩,
  ⟨(4605954241/1250000000 : ℚ), (7915171503/1250000000 : ℚ), (-544860956969/2647373809600 : ℚ), (591745328503348723321/3309217262000000000000 : ℚ)⟩,
  ⟨(7915171503/1250000000 : ℚ), (64298208999/5000000000 : ℚ), (-264499885327/1305500919480 : ℚ), (1724408850111030249203/10879174329000000000000 : ℚ)⟩,
  ⟨(64298208999/5000000000 : ℚ), (32/1 : ℚ), (-2399041964001/11981863283450 : ℚ), (1915332239655572417739/14977329104312500000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (561868251703/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(198586363539/1000000000000 : ℚ), (67506567119/200000000 : ℚ), (-67215221855709/1000000000000 : ℚ), 12⟩,
    ⟨(39914375581/200000000000 : ℚ), (358233683667/10000000000 : ℚ), (-724499504979/100000000000 : ℚ), 9⟩,
    ⟨(1612040271/8000000000 : ℚ), (59298208999/5000000000 : ℚ), (-611727780447/250000000000 : ℚ), 7⟩,
    ⟨(102155770673/500000000000 : ℚ), (6665171503/1250000000 : ℚ), (-1124411695153/1000000000000 : ℚ), 6⟩,
    ⟨(51970886953/250000000000 : ℚ), (3355954241/1250000000 : ℚ), (-72443842273/125000000000 : ℚ), 6⟩,
    ⟨(212083783067/1000000000000 : ℚ), (13667053603/10000000000 : ℚ), (-75781223529/250000000000 : ℚ), 5⟩,
    ⟨(108375417213/500000000000 : ℚ), (3108834349/5000000000 : ℚ), (-35892653297/250000000000 : ℚ), 5⟩,
    ⟨(110852674861/500000000000 : ℚ), (1625768489/10000000000 : ℚ), (-42995263519/1000000000000 : ℚ), 5⟩,
    ⟨(226756929711/1000000000000 : ℚ), (-1388110559/10000000000 : ℚ), (4907066653/200000000000 : ℚ), 5⟩,
    ⟨(231711445007/1000000000000 : ℚ), (-172951821/500000000 : ℚ), (14396187603/200000000000 : ℚ), 4⟩,
    ⟨(118189248183/500000000000 : ℚ), (-615914499/1250000000 : ℚ), (106330951599/1000000000000 : ℚ), 4⟩,
    ⟨(240578731621/1000000000000 : ℚ), (-598518143/1000000000 : ℚ), (131551598189/1000000000000 : ℚ), 4⟩,
    ⟨(244150738087/1000000000000 : ℚ), (-674481257/1000000000 : ℚ), (37489776831/250000000000 : ℚ), 4⟩,
    ⟨(246957245559/1000000000000 : ℚ), (-7272509731/10000000000 : ℚ), (32583132591/200000000000 : ℚ), 4⟩,
    ⟨(31111300191/125000000000 : ℚ), (-3803491023/5000000000 : ℚ), (171207679573/1000000000000 : ℚ), 4⟩,
    ⟨(124937957947/500000000000 : ℚ), (-310780617/400000000 : ℚ), (175260946431/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-486851449/625000000 : ℚ), (175763515569/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control827.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control827.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate827
