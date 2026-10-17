import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate915
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (5031894273611/132004573152225 : ℚ), (1476009932533/1250000000 : ℚ), (-45111069889161/1000000000000 : ℚ)⟩,
  ⟨(5031894273611/132004573152225 : ℚ), (53682552147/1395933547090 : ℚ), (623856804043/5000000000 : ℚ), (-4855915700273/1000000000000 : ℚ)⟩,
  ⟨(53682552147/1395933547090 : ℚ), (222025868987/5691719611350 : ℚ), (51269184979/1250000000 : ℚ), (-1634962571453/1000000000000 : ℚ)⟩,
  ⟨(222025868987/5691719611350 : ℚ), (366262058283/9213573046300 : ℚ), (91242347689/5000000000 : ℚ), (-149371819101/200000000000 : ℚ)⟩,
  ⟨(366262058283/9213573046300 : ℚ), (186222487189/4580072357600 : ℚ), (18069792983/2000000000 : ℚ), (-190298518611/500000000000 : ℚ)⟩,
  ⟨(186222487189/4580072357600 : ℚ), (26975365804/646979983225 : ℚ), (44548241339/10000000000 : ℚ), (-194374550033/1000000000000 : ℚ)⟩,
  ⟨(26975365804/646979983225 : ℚ), (68404135459/1597569825200 : ℚ), (1866904201/1000000000 : ℚ), (-86473086817/1000000000000 : ℚ)⟩,
  ⟨(68404135459/1597569825200 : ℚ), (46264296411/1051795719100 : ℚ), (1346671879/5000000000 : ℚ), (-9034475679/500000000000 : ℚ)⟩,
  ⟨(46264296411/1051795719100 : ℚ), (8191629722/181413859275 : ℚ), (-7824613433/10000000000 : ℚ), (28195345053/1000000000000 : ℚ)⟩,
  ⟨(8191629722/181413859275 : ℚ), (11952991931/258288619150 : ℚ), (-3770291951/2500000000 : ℚ), (60961863941/1000000000000 : ℚ)⟩,
  ⟨(11952991931/258288619150 : ℚ), (17664218673/373351314800 : ℚ), (-20246940187/10000000000 : ℚ), (84867847803/1000000000000 : ℚ)⟩,
  ⟨(17664218673/373351314800 : ℚ), (12949354239/268550568700 : ℚ), (-4796090667/2000000000 : ℚ), (25633016619/250000000000 : ℚ)⟩,
  ⟨(12949354239/268550568700 : ℚ), (9137135153/186611519100 : ℚ), (-13332979511/5000000000 : ℚ), (23096284143/200000000000 : ℚ)⟩,
  ⟨(9137135153/186611519100 : ℚ), (5853394951/118212011100 : ℚ), (-28532074213/10000000000 : ℚ), (31154638967/250000000000 : ℚ)⟩,
  ⟨(5853394951/118212011100 : ℚ), (95393267/1913362720 : ℚ), (-7428548581/2500000000 : ℚ), (130471950819/1000000000000 : ℚ)⟩,
  ⟨(95393267/1913362720 : ℚ), (354832943/7098702900 : ℚ), (-1514410157/500000000 : ℚ), (133333748829/1000000000000 : ℚ)⟩,
  ⟨(354832943/7098702900 : ℚ), (1/20 : ℚ), (-30359190169/10000000000 : ℚ), (33422145443/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (9640809831/40000000000 : ℚ), (-1/5 : ℚ), (181892630927/1000000000000 : ℚ)⟩,
  ⟨(9640809831/40000000000 : ℚ), (485589843/2000000000 : ℚ), (-354832943/1774675725 : ℚ), (4303677385484966007/23662343000000000000 : ℚ)⟩,
  ⟨(485589843/2000000000 : ℚ), (2571451419/10000000000 : ℚ), (-95393267/478340680 : ℚ), (4346997842735330211/23917034000000000000 : ℚ)⟩,
  ⟨(2571451419/10000000000 : ℚ), (11467925787/40000000000 : ℚ), (-5853394951/29553002775 : ℚ), (14296026666360557519/78808007400000000000 : ℚ)⟩,
  ⟨(11467925787/40000000000 : ℚ), (6667020489/20000000000 : ℚ), (-9137135153/46652879775 : ℚ), (112445522675383293733/622038397000000000000 : ℚ)⟩,
  ⟨(6667020489/20000000000 : ℚ), (3203909333/8000000000 : ℚ), (-12949354239/67137642175 : ℚ), (482793232134436111947/2685505687000000000000 : ℚ)⟩,
  ⟨(3203909333/8000000000 : ℚ), (19753059813/40000000000 : ℚ), (-17664218673/93337828700 : ℚ), (35040925979612836947/196500692000000000000 : ℚ)⟩,
  ⟨(19753059813/40000000000 : ℚ), (6229708049/10000000000 : ℚ), (-23905983862/129144309575 : ℚ), (9585519089474561709/54376551400000000000 : ℚ)⟩,
  ⟨(6229708049/10000000000 : ℚ), (32175386567/40000000000 : ℚ), (-32766518888/181413859275 : ℚ), (1258876466062507354159/7256554371000000000000 : ℚ)⟩,
  ⟨(32175386567/40000000000 : ℚ), (21346671879/20000000000 : ℚ), (-46264296411/262948929775 : ℚ), (44628226338178083429/262948929775000000000 : ℚ)⟩,
  ⟨(21346671879/20000000000 : ℚ), (5866904201/4000000000 : ℚ), (-68404135459/399392456300 : ℚ), (1315868577497205244353/7987849126000000000000 : ℚ)⟩,
  ⟨(5866904201/4000000000 : ℚ), (84548241339/40000000000 : ℚ), (-107901463216/646979983225 : ℚ), (4092621228028908558367/25879199329000000000000 : ℚ)⟩,
  ⟨(84548241339/40000000000 : ℚ), (26069792983/8000000000 : ℚ), (-186222487189/1145018089400 : ℚ), (6842288753333593028063/45800723576000000000000 : ℚ)⟩,
  ⟨(26069792983/8000000000 : ℚ), (111242347689/20000000000 : ℚ), (-366262058283/2303393261575 : ℚ), (12675294148323881847159/92135730463000000000000 : ℚ)⟩,
  ⟨(111242347689/20000000000 : ℚ), (56269184979/5000000000 : ℚ), (-444051737974/2845859805675 : ℚ), (4592154813066080748179/37944797409000000000000 : ℚ)⟩,
  ⟨(56269184979/5000000000 : ℚ), (32/1 : ℚ), (-107365104294/697966773545 : ℚ), (13423966379571141470863/139593354709000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (99999/1000000 : ℚ)
  x := (74859405957/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(38076948411/1000000000000 : ℚ), (1476009932533/1250000000 : ℚ), (-45111069889161/1000000000000 : ℚ), 9⟩,
    ⟨(9576373397/250000000000 : ℚ), (623856804043/5000000000 : ℚ), (-4855915700273/1000000000000 : ℚ), 6⟩,
    ⟨(38753801079/1000000000000 : ℚ), (51269184979/1250000000 : ℚ), (-1634962571453/1000000000000 : ℚ), 5⟩,
    ⟨(19702321339/500000000000 : ℚ), (91242347689/5000000000 : ℚ), (-149371819101/200000000000 : ℚ), 4⟩,
    ⟨(10058251727/250000000000 : ℚ), (18069792983/2000000000 : ℚ), (-190298518611/500000000000 : ℚ), 3⟩,
    ⟨(8241412039/200000000000 : ℚ), (44548241339/10000000000 : ℚ), (-194374550033/1000000000000 : ℚ), 3⟩,
    ⟨(42289370219/1000000000000 : ℚ), (1866904201/1000000000 : ℚ), (-86473086817/1000000000000 : ℚ), 2⟩,
    ⟨(43438344413/1000000000000 : ℚ), (1346671879/5000000000 : ℚ), (-9034475679/500000000000 : ℚ), 2⟩,
    ⟨(44609828341/1000000000000 : ℚ), (-7824613433/10000000000 : ℚ), (28195345053/1000000000000 : ℚ), 2⟩,
    ⟨(22879401267/500000000000 : ℚ), (-3770291951/2500000000 : ℚ), (60961863941/1000000000000 : ℚ), 2⟩,
    ⟨(23420556279/500000000000 : ℚ), (-20246940187/10000000000 : ℚ), (84867847803/1000000000000 : ℚ), 2⟩,
    ⟨(23907582923/500000000000 : ℚ), (-4796090667/2000000000 : ℚ), (25633016619/250000000000 : ℚ), 2⟩,
    ⟨(12160882519/250000000000 : ℚ), (-13332979511/5000000000 : ℚ), (23096284143/200000000000 : ℚ), 2⟩,
    ⟨(1971774867/40000000000 : ℚ), (-28532074213/10000000000 : ℚ), (31154638967/250000000000 : ℚ), 2⟩,
    ⟨(24871339583/500000000000 : ℚ), (-7428548581/2500000000 : ℚ), (130471950819/1000000000000 : ℚ), 2⟩,
    ⟨(49971224343/1000000000000 : ℚ), (-1514410157/500000000 : ℚ), (133333748829/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-30359190169/10000000000 : ℚ), (33422145443/250000000000 : ℚ), 1⟩]
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
theorem certOK : JointInheritedControls.control915.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control915.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate915
