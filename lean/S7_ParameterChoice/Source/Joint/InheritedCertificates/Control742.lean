import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate742
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1351443667479/8959569953275 : ℚ), (3607396699899/10000000000 : ℚ), (-54540482047769/1000000000000 : ℚ)⟩,
  ⟨(1351443667479/8959569953275 : ℚ), (3892735882863/25570804037300 : ℚ), (4774393959/125000000 : ℚ), (-235540400741/40000000000 : ℚ)⟩,
  ⟨(3892735882863/25570804037300 : ℚ), (1073205972121/6945489505200 : ℚ), (126243476347/10000000000 : ℚ), (-997887067831/500000000000 : ℚ)⟩,
  ⟨(1073205972121/6945489505200 : ℚ), (73736863061/467884658650 : ℚ), (11357716259/2000000000 : ℚ), (-922568163541/1000000000000 : ℚ)⟩,
  ⟨(73736863061/467884658650 : ℚ), (224722778597/1392780567800 : ℚ), (1794718861/625000000 : ℚ), (-19205879407/40000000000 : ℚ)⟩,
  ⟨(224722778597/1392780567800 : ℚ), (129965284321/784669954400 : ℚ), (7393848049/5000000000 : ℚ), (-127712103289/500000000000 : ℚ)⟩,
  ⟨(129965284321/784669954400 : ℚ), (20538220006/120615613675 : ℚ), (3470498277/5000000000 : ℚ), (-125458922257/1000000000000 : ℚ)⟩,
  ⟨(20538220006/120615613675 : ℚ), (5535606397/31611678820 : ℚ), (2116372007/10000000000 : ℚ), (-43306042233/1000000000000 : ℚ)⟩,
  ⟨(5535606397/31611678820 : ℚ), (9762009597/54249248675 : ℚ), (-8358367/80000000 : ℚ), (12050021737/1000000000000 : ℚ)⟩,
  ⟨(9762009597/54249248675 : ℚ), (5677220931/30754872640 : ℚ), (-1607382911/5000000000 : ℚ), (408784481/8000000000 : ℚ)⟩,
  ⟨(5677220931/30754872640 : ℚ), (20920467733/110761282000 : ℚ), (-2376254727/5000000000 : ℚ), (3974208239/50000000000 : ℚ)⟩,
  ⟨(20920467733/110761282000 : ℚ), (3829219829/19878439225 : ℚ), (-2930061137/5000000000 : ℚ), (100404632513/1000000000000 : ℚ)⟩,
  ⟨(3829219829/19878439225 : ℚ), (2701599577/13804050400 : ℚ), (-6655259843/10000000000 : ℚ), (115721511829/1000000000000 : ℚ)⟩,
  ⟨(2701599577/13804050400 : ℚ), (277066783/1399343892 : ℚ), (-7207421859/10000000000 : ℚ), (126527910137/1000000000000 : ℚ)⟩,
  ⟨(277066783/1399343892 : ℚ), (3388765703/16994336600 : ℚ), (-944657229/1250000000 : ℚ), (65163369/488281250 : ℚ)⟩,
  ⟨(3388765703/16994336600 : ℚ), (210152239/1051074300 : ℚ), (-3863600599/5000000000 : ℚ), (27368669083/200000000000 : ℚ)⟩,
  ⟨(210152239/1051074300 : ℚ), (1/5 : ℚ), (-1937055671/2500000000 : ℚ), (137263649893/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (562944329/2500000000 : ℚ), (-1/5 : ℚ), (182299196213/1000000000000 : ℚ)⟩,
  ⟨(562944329/2500000000 : ℚ), (1136399401/5000000000 : ℚ), (-210152239/1051074300 : ℚ), (1915958991954111023/10510743000000000000 : ℚ)⟩,
  ⟨(1136399401/5000000000 : ℚ), (305342771/1250000000 : ℚ), (-3388765703/16994336600 : ℚ), (3869700170570356837/21242920750000000000 : ℚ)⟩,
  ⟨(305342771/1250000000 : ℚ), (2792578141/10000000000 : ℚ), (-277066783/1399343892 : ℚ), (7950910074938589797/43729496625000000000 : ℚ)⟩,
  ⟨(2792578141/10000000000 : ℚ), (3344740157/10000000000 : ℚ), (-2701599577/13804050400 : ℚ), (5002080881968647081/27608100800000000000 : ℚ)⟩,
  ⟨(3344740157/10000000000 : ℚ), (2069938863/5000000000 : ℚ), (-3829219829/19878439225 : ℚ), (143245502924863696313/795137569000000000000 : ℚ)⟩,
  ⟨(2069938863/5000000000 : ℚ), (2623745273/5000000000 : ℚ), (-20920467733/110761282000 : ℚ), (98908818272068015909/553806410000000000000 : ℚ)⟩,
  ⟨(2623745273/5000000000 : ℚ), (3392617089/5000000000 : ℚ), (-5677220931/30754872640 : ℚ), (27118208405016277259/153774363200000000000 : ℚ)⟩,
  ⟨(3392617089/5000000000 : ℚ), (71641633/80000000 : ℚ), (-9762009597/54249248675 : ℚ), (375831339475362688439/2169969947000000000000 : ℚ)⟩,
  ⟨(71641633/80000000 : ℚ), (12116372007/10000000000 : ℚ), (-5535606397/31611678820 : ℚ), (133454248525078531821/790291970500000000000 : ℚ)⟩,
  ⟨(12116372007/10000000000 : ℚ), (8470498277/5000000000 : ℚ), (-20538220006/120615613675 : ℚ), (786459461426472594717/4824624547000000000000 : ℚ)⟩,
  ⟨(8470498277/5000000000 : ℚ), (12393848049/5000000000 : ℚ), (-129965284321/784669954400 : ℚ), (608651482878478939513/3923349772000000000000 : ℚ)⟩,
  ⟨(12393848049/5000000000 : ℚ), (2419718861/625000000 : ℚ), (-224722778597/1392780567800 : ℚ), (1006430613742430732311/6963902839000000000000 : ℚ)⟩,
  ⟨(2419718861/625000000 : ℚ), (13357716259/2000000000 : ℚ), (-73736863061/467884658650 : ℚ), (1216451140380998882397/9357693173000000000000 : ℚ)⟩,
  ⟨(13357716259/2000000000 : ℚ), (136243476347/10000000000 : ℚ), (-1073205972121/6945489505200 : ℚ), (7601029338226384377563/69454895052000000000000 : ℚ)⟩,
  ⟨(136243476347/10000000000 : ℚ), (32/1 : ℚ), (-3892735882863/25570804037300 : ℚ), (4004875184943085611907/51141608074600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (270966214701/500000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(30132727657/200000000000 : ℚ), (3607396699899/10000000000 : ℚ), (-54540482047769/1000000000000 : ℚ), 11⟩,
    ⟨(151609334731/1000000000000 : ℚ), (4774393959/125000000 : ℚ), (-235540400741/40000000000 : ℚ), 8⟩,
    ⟨(153464385039/1000000000000 : ℚ), (126243476347/10000000000 : ℚ), (-997887067831/500000000000 : ℚ), 7⟩,
    ⟨(31231500133/200000000000 : ℚ), (11357716259/2000000000 : ℚ), (-922568163541/1000000000000 : ℚ), 6⟩,
    ⟨(1246759271/7812500000 : ℚ), (1794718861/625000000 : ℚ), (-19205879407/40000000000 : ℚ), 5⟩,
    ⟨(81807859527/500000000000 : ℚ), (7393848049/5000000000 : ℚ), (-127712103289/500000000000 : ℚ), 5⟩,
    ⟨(84047103333/500000000000 : ℚ), (3470498277/5000000000 : ℚ), (-125458922257/1000000000000 : ℚ), 4⟩,
    ⟨(43212135939/250000000000 : ℚ), (2116372007/10000000000 : ℚ), (-43306042233/1000000000000 : ℚ), 4⟩,
    ⟨(177696023817/1000000000000 : ℚ), (-8358367/80000000 : ℚ), (12050021737/1000000000000 : ℚ), 4⟩,
    ⟨(182450360907/1000000000000 : ℚ), (-1607382911/5000000000 : ℚ), (408784481/8000000000 : ℚ), 4⟩,
    ⟨(186928848519/1000000000000 : ℚ), (-2376254727/5000000000 : ℚ), (3974208239/50000000000 : ℚ), 4⟩,
    ⟨(38191876177/200000000000 : ℚ), (-2930061137/5000000000 : ℚ), (100404632513/1000000000000 : ℚ), 4⟩,
    ⟨(194387066907/1000000000000 : ℚ), (-6655259843/10000000000 : ℚ), (115721511829/1000000000000 : ℚ), 4⟩,
    ⟨(98540091267/500000000000 : ℚ), (-7207421859/10000000000 : ℚ), (126527910137/1000000000000 : ℚ), 4⟩,
    ⟨(99467616421/500000000000 : ℚ), (-944657229/1250000000 : ℚ), (65163369/488281250 : ℚ), 3⟩,
    ⟨(24985116161/125000000000 : ℚ), (-3863600599/5000000000 : ℚ), (27368669083/200000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-1937055671/2500000000 : ℚ), (137263649893/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control742.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control742.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate742
