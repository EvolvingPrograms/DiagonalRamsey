import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate825
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (34808760192891/232262748505300 : ℚ), (2597616953007/10000000000 : ℚ), (-304870672091/7812500000 : ℚ)⟩,
  ⟨(34808760192891/232262748505300 : ℚ), (696272379843/4602202212550 : ℚ), (137494733977/5000000000 : ℚ), (-4214685834757/1000000000000 : ℚ)⟩,
  ⟨(696272379843/4602202212550 : ℚ), (12796721198/83300630735 : ℚ), (22725344863/2500000000 : ℚ), (-285919263077/200000000000 : ℚ)⟩,
  ⟨(12796721198/83300630735 : ℚ), (316488652039/2018945099100 : ℚ), (40921001011/10000000000 : ℚ), (-132358608701/200000000000 : ℚ)⟩,
  ⟨(316488652039/2018945099100 : ℚ), (80362514953/500434726300 : ℚ), (1036577501/500000000 : ℚ), (-172652195733/500000000000 : ℚ)⟩,
  ⟨(80362514953/500434726300 : ℚ), (92924153237/563340516200 : ℚ), (5361427747/5000000000 : ℚ), (-4614484039/25000000000 : ℚ)⟩,
  ⟨(92924153237/563340516200 : ℚ), (6523792163/38445030300 : ℚ), (1272362583/2500000000 : ℚ), (-91655208323/1000000000000 : ℚ)⟩,
  ⟨(6523792163/38445030300 : ℚ), (9885857939/56613156725 : ℚ), (325879521/2000000000 : ℚ), (-4117634857/125000000000 : ℚ)⟩,
  ⟨(9885857939/56613156725 : ℚ), (371736515/2070363712 : ℚ), (-79391083/1250000000 : ℚ), (66023529/10000000000 : ℚ)⟩,
  ⟨(371736515/2070363712 : ℚ), (20259131201/109929783700 : ℚ), (-273487681/1250000000 : ℚ), (1379303661/40000000000 : ℚ)⟩,
  ⟨(20259131201/109929783700 : ℚ), (14926466839/79118664200 : ℚ), (-657439857/2000000000 : ℚ), (27370861363/500000000000 : ℚ)⟩,
  ⟨(14926466839/79118664200 : ℚ), (10926655477/56765884300 : ℚ), (-4078385927/10000000000 : ℚ), (13933637913/200000000000 : ℚ)⟩,
  ⟨(10926655477/56765884300 : ℚ), (3854348889/19702646050 : ℚ), (-464604477/1000000000 : ℚ), (40297422521/500000000000 : ℚ)⟩,
  ⟨(3854348889/19702646050 : ℚ), (290662919/1468305200 : ℚ), (-5040097691/10000000000 : ℚ), (4415177141/50000000000 : ℚ)⟩,
  ⟨(290662919/1468305200 : ℚ), (805852027/4041508800 : ℚ), (-211588383/400000000 : ℚ), (93244812443/1000000000000 : ℚ)⟩,
  ⟨(805852027/4041508800 : ℚ), (74963458/374931175 : ℚ), (-5410954839/10000000000 : ℚ), (23915592131/250000000000 : ℚ)⟩,
  ⟨(74963458/374931175 : ℚ), (1/5 : ℚ), (-2712976043/5000000000 : ℚ), (23990555589/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (787023957/3500000000 : ℚ), (-7/50 : ℚ), (31860795159/250000000000 : ℚ)⟩,
  ⟨(787023957/3500000000 : ℚ), (1589045161/7000000000 : ℚ), (-262372103/1874655875 : ℚ), (95557672505318019/749862350000000000 : ℚ)⟩,
  ⟨(1589045161/7000000000 : ℚ), (68411617/280000000 : ℚ), (-805852027/5773584000 : ℚ), (5146738306172281459/40415088000000000000 : ℚ)⟩,
  ⟨(68411617/280000000 : ℚ), (1959902309/7000000000 : ℚ), (-2034640433/14683052000 : ℚ), (1866236437099066611/14683052000000000000 : ℚ)⟩,
  ⟨(1959902309/7000000000 : ℚ), (235395523/700000000 : ℚ), (-26980442223/197026460500 : ℚ), (24952281778677473311/197026460500000000000 : ℚ)⟩,
  ⟨(235395523/700000000 : ℚ), (417373439/1000000000 : ℚ), (-76486588339/567658843000 : ℚ), (17867808573699575279/141914710750000000000 : ℚ)⟩,
  ⟨(417373439/1000000000 : ℚ), (742560143/1400000000 : ℚ), (-104485267873/791186642000 : ℚ), (98729916533142015977/791186642000000000000 : ℚ)⟩,
  ⟨(742560143/1400000000 : ℚ), (601512319/875000000 : ℚ), (-141813918407/1099297837000 : ℚ), (135395574194697152377/1099297837000000000000 : ℚ)⟩,
  ⟨(601512319/875000000 : ℚ), (795608917/875000000 : ℚ), (-520431121/4140727424 : ℚ), (312843475930976711/2587954640000000000 : ℚ)⟩,
  ⟨(795608917/875000000 : ℚ), (1725879521/1400000000 : ℚ), (-69201005573/566131567250 : ℚ), (66660014222523719029/566131567250000000000 : ℚ)⟩,
  ⟨(1725879521/1400000000 : ℚ), (3022362583/1750000000 : ℚ), (-45666545141/384450303000 : ℚ), (43632188719573876247/384450303000000000000 : ℚ)⟩,
  ⟨(3022362583/1750000000 : ℚ), (8861427747/3500000000 : ℚ), (-92924153237/804772166000 : ℚ), (303535505755447480679/2816702581000000000000 : ℚ)⟩,
  ⟨(8861427747/3500000000 : ℚ), (1386577501/350000000 : ℚ), (-562537604671/5004347263000 : ℚ), (250277008408679895751/2502173631500000000000 : ℚ)⟩,
  ⟨(1386577501/350000000 : ℚ), (47921001011/7000000000 : ℚ), (-2215420564273/20189450991000 : ℚ), (902607398151008923987/10094725495500000000000 : ℚ)⟩,
  ⟨(47921001011/7000000000 : ℚ), (24475344863/1750000000 : ℚ), (-6398360599/59500450525 : ℚ), (49563128053460143933/666405045880000000000 : ℚ)⟩,
  ⟨(24475344863/1750000000 : ℚ), (32/1 : ℚ), (-4873906658901/46022022125500 : ℚ), (4746226407549746270437/92044044251000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (650424482521/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(149690227579/1000000000000 : ℚ), (2597616953007/10000000000 : ℚ), (-304870672091/7812500000 : ℚ), 12⟩,
    ⟨(75327291349/500000000000 : ℚ), (137494733977/5000000000 : ℚ), (-4214685834757/1000000000000 : ℚ), 9⟩,
    ⟨(15254623331/100000000000 : ℚ), (22725344863/2500000000 : ℚ), (-285919263077/200000000000 : ℚ), 7⟩,
    ⟨(77646242171/500000000000 : ℚ), (40921001011/10000000000 : ℚ), (-132358608701/200000000000 : ℚ), 6⟩,
    ⟨(39696949727/250000000000 : ℚ), (1036577501/500000000 : ℚ), (-172652195733/500000000000 : ℚ), 6⟩,
    ⟨(40724463507/250000000000 : ℚ), (5361427747/5000000000 : ℚ), (-4614484039/25000000000 : ℚ), 5⟩,
    ⟨(16746470259/100000000000 : ℚ), (1272362583/2500000000 : ℚ), (-91655208323/1000000000000 : ℚ), 5⟩,
    ⟨(43078210791/250000000000 : ℚ), (325879521/2000000000 : ℚ), (-4117634857/125000000000 : ℚ), 5⟩,
    ⟨(177255964427/1000000000000 : ℚ), (-79391083/1250000000 : ℚ), (66023529/10000000000 : ℚ), 4⟩,
    ⟨(91052052501/500000000000 : ℚ), (-273487681/1250000000 : ℚ), (1379303661/40000000000 : ℚ), 4⟩,
    ⟨(46667738391/250000000000 : ℚ), (-657439857/2000000000 : ℚ), (27370861363/500000000000 : ℚ), 4⟩,
    ⟨(47695252171/250000000000 : ℚ), (-4078385927/10000000000 : ℚ), (13933637913/200000000000 : ℚ), 4⟩,
    ⟨(194276323249/1000000000000 : ℚ), (-464604477/1000000000 : ℚ), (40297422521/500000000000 : ℚ), 4⟩,
    ⟨(197022574281/1000000000000 : ℚ), (-5040097691/10000000000 : ℚ), (4415177141/50000000000 : ℚ), 4⟩,
    ⟨(198914224893/1000000000000 : ℚ), (-211588383/400000000 : ℚ), (93244812443/1000000000000 : ℚ), 4⟩,
    ⟨(49969645003/250000000000 : ℚ), (-5410954839/10000000000 : ℚ), (23915592131/250000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-2712976043/5000000000 : ℚ), (23990555589/250000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control825.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control825.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate825
