import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate10
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (19953772383586/255005015850425 : ℚ), (11406924077713/10000000000 : ℚ), (-89433766701671/1000000000000 : ℚ)⟩,
  ⟨(19953772383586/255005015850425 : ℚ), (638648315023/8097878913310 : ℚ), (75420215231/625000000 : ℚ), (-9618677167327/1000000000000 : ℚ)⟩,
  ⟨(638648315023/8097878913310 : ℚ), (67736218827/848004648700 : ℚ), (79387110473/2000000000 : ℚ), (-3232194017097/1000000000000 : ℚ)⟩,
  ⟨(67736218827/848004648700 : ℚ), (726494730229/8942665405200 : ℚ), (176454343703/10000000000 : ℚ), (-294210465519/200000000000 : ℚ)⟩,
  ⟨(726494730229/8942665405200 : ℚ), (61585206381/742889771050 : ℚ), (87027689651/10000000000 : ℚ), (-372278798683/500000000000 : ℚ)⟩,
  ⟨(61585206381/742889771050 : ℚ), (53545658983/631476044025 : ℚ), (10613575847/2500000000 : ℚ), (-9376158977/25000000000 : ℚ)⟩,
  ⟨(53545658983/631476044025 : ℚ), (2716394393/31276471096 : ℚ), (17195261627/10000000000 : ℚ), (-40215930787/250000000000 : ℚ)⟩,
  ⟨(2716394393/31276471096 : ℚ), (91873775903/1032404403300 : ℚ), (1557026079/10000000000 : ℚ), (-12522001749/500000000000 : ℚ)⟩,
  ⟨(91873775903/1032404403300 : ℚ), (13014616313/142815158500 : ℚ), (-4383508977/5000000000 : ℚ), (13365954481/200000000000 : ℚ)⟩,
  ⟨(13014616313/142815158500 : ℚ), (9496027387/101904519180 : ℚ), (-15907775879/10000000000 : ℚ), (13190285397/100000000000 : ℚ)⟩,
  ⟨(9496027387/101904519180 : ℚ), (116969125/1230214922 : ℚ), (-10501500919/5000000000 : ℚ), (35876598181/200000000000 : ℚ)⟩,
  ⟨(116969125/1230214922 : ℚ), (12867346417/133009037650 : ℚ), (-6173411651/2500000000 : ℚ), (42894745681/200000000000 : ℚ)⟩,
  ⟨(12867346417/133009037650 : ℚ), (726731603/7407889668 : ℚ), (-27353827357/10000000000 : ℚ), (240208421239/1000000000000 : ℚ)⟩,
  ⟨(726731603/7407889668 : ℚ), (2911329253/29373505250 : ℚ), (-14602899887/5000000000 : ℚ), (129188355657/500000000000 : ℚ)⟩,
  ⟨(2911329253/29373505250 : ℚ), (569589501/5710913750 : ℚ), (-1898796249/625000000 : ℚ), (135011014163/500000000000 : ℚ)⟩,
  ⟨(569589501/5710913750 : ℚ), (706353499/7065397300 : ℚ), (-30951831359/10000000000 : ℚ), (34464740417/125000000000 : ℚ)⟩,
  ⟨(706353499/7065397300 : ℚ), (1/10 : ℚ), (-7755621333/2500000000 : ℚ), (55284855367/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2244378667/10000000000 : ℚ), (-2/5 : ℚ), (73239884703/200000000000 : ℚ)⟩,
  ⟨(2244378667/10000000000 : ℚ), (9048168641/40000000000 : ℚ), (-706353499/1766349325 : ℚ), (25871772290110238787/70653973000000000000 : ℚ)⟩,
  ⟨(9048168641/40000000000 : ℚ), (601203751/2500000000 : ℚ), (-1139179002/2855456875 : ℚ), (20899754656201120841/57109137500000000000 : ℚ)⟩,
  ⟨(601203751/2500000000 : ℚ), (5397100113/20000000000 : ℚ), (-5822658506/14686752625 : ℚ), (107319767743288145163/293735052500000000000 : ℚ)⟩,
  ⟨(5397100113/20000000000 : ℚ), (12646172643/40000000000 : ℚ), (-726731603/1851972417 : ℚ), (28109112640929099287/77165517375000000000 : ℚ)⟩,
  ⟨(12646172643/40000000000 : ℚ), (3826588349/10000000000 : ℚ), (-25734692834/66504518825 : ℚ), (964443187381843153229/2660180753000000000000 : ℚ)⟩,
  ⟨(3826588349/10000000000 : ℚ), (9498499081/20000000000 : ℚ), (-233938250/615107461 : ℚ), (44288585742789610941/123021492200000000000 : ℚ)⟩,
  ⟨(9498499081/20000000000 : ℚ), (24092224121/40000000000 : ℚ), (-9496027387/25476129795 : ℚ), (363195389189584043273/1019045191800000000000 : ℚ)⟩,
  ⟨(24092224121/40000000000 : ℚ), (15616491023/20000000000 : ℚ), (-13014616313/35703789625 : ℚ), (71704046146413961189/204021655000000000000 : ℚ)⟩,
  ⟨(15616491023/20000000000 : ℚ), (41557026079/40000000000 : ℚ), (-91873775903/258101100825 : ℚ), (3559445506301214746903/10324044033000000000000 : ℚ)⟩,
  ⟨(41557026079/40000000000 : ℚ), (57195261627/40000000000 : ℚ), (-2716394393/7819117774 : ℚ), (2626309802885429402723/7819117774000000000000 : ℚ)⟩,
  ⟨(57195261627/40000000000 : ℚ), (20613575847/10000000000 : ℚ), (-214182635932/631476044025 : ℚ), (341123683219414858239/1052460073375000000000 : ℚ)⟩,
  ⟨(20613575847/10000000000 : ℚ), (127027689651/40000000000 : ℚ), (-123170412762/371444885525 : ℚ), (286473031606349329061/928612213812500000000 : ℚ)⟩,
  ⟨(127027689651/40000000000 : ℚ), (216454343703/40000000000 : ℚ), (-726494730229/2235666351300 : ℚ), (8567217481059597244349/29808884684000000000000 : ℚ)⟩,
  ⟨(216454343703/40000000000 : ℚ), (87387110473/8000000000 : ℚ), (-67736218827/212001162175 : ℚ), (68350208384560143363/265001452718750000000 : ℚ)⟩,
  ⟨(87387110473/8000000000 : ℚ), (77920215231/2500000000 : ℚ), (-1277296630046/4048939456655 : ℚ), (173089965437856534707843/809787891331000000000000 : ℚ)⟩,
  ⟨(77920215231/2500000000 : ℚ), (32/1 : ℚ), (-79815089534344/255005015850425 : ℚ), (278981268517642749026573/2040040126803400000000000 : ℚ)⟩ ]
def data : ControlCertificate.Data where
  p := (224999/1000000 : ℚ)
  x := (16462260501/125000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(78171382793/1000000000000 : ℚ), (11406924077713/10000000000 : ℚ), (-89433766701671/1000000000000 : ℚ), 10⟩,
    ⟨(39294900639/500000000000 : ℚ), (75420215231/625000000 : ℚ), (-9618677167327/1000000000000 : ℚ), 6⟩,
    ⟨(79410558659/1000000000000 : ℚ), (79387110473/2000000000 : ℚ), (-3232194017097/1000000000000 : ℚ), 5⟩,
    ⟨(20150528423/250000000000 : ℚ), (176454343703/10000000000 : ℚ), (-294210465519/200000000000 : ℚ), 4⟩,
    ⟨(16423735117/200000000000 : ℚ), (87027689651/10000000000 : ℚ), (-372278798683/500000000000 : ℚ), 4⟩,
    ⟨(41950981857/500000000000 : ℚ), (10613575847/2500000000 : ℚ), (-9376158977/25000000000 : ℚ), 3⟩,
    ⟨(21470861829/250000000000 : ℚ), (17195261627/10000000000 : ℚ), (-40215930787/250000000000 : ℚ), 3⟩,
    ⟨(87986979089/1000000000000 : ℚ), (1557026079/10000000000 : ℚ), (-12522001749/500000000000 : ℚ), 3⟩,
    ⟨(18026344297/200000000000 : ℚ), (-4383508977/5000000000 : ℚ), (13365954481/200000000000 : ℚ), 2⟩,
    ⟨(46117626629/500000000000 : ℚ), (-15907775879/10000000000 : ℚ), (13190285397/100000000000 : ℚ), 2⟩,
    ⟨(4710836843/50000000000 : ℚ), (-10501500919/5000000000 : ℚ), (35876598181/200000000000 : ℚ), 2⟩,
    ⟨(96000024989/1000000000000 : ℚ), (-6173411651/2500000000 : ℚ), (42894745681/200000000000 : ℚ), 2⟩,
    ⟨(48758293441/500000000000 : ℚ), (-27353827357/10000000000 : ℚ), (240208421239/1000000000000 : ℚ), 2⟩,
    ⟨(19741628383/200000000000 : ℚ), (-14602899887/5000000000 : ℚ), (129188355657/500000000000 : ℚ), 2⟩,
    ⟨(3110278103/31250000000 : ℚ), (-1898796249/625000000 : ℚ), (135011014163/500000000000 : ℚ), 2⟩,
    ⟨(99947317781/1000000000000 : ℚ), (-30951831359/10000000000 : ℚ), (34464740417/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7755621333/2500000000 : ℚ), (55284855367/200000000000 : ℚ), 2⟩]
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control10.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control10.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate10
