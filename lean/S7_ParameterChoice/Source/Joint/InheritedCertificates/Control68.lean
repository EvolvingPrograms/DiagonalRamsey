import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate68
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (38336370247759/951139846130700 : ℚ), (2127400119731/2000000000 : ℚ), (-10736562636221/250000000000 : ℚ)⟩,
  ⟨(38336370247759/951139846130700 : ℚ), (1022525684767/25197160211500 : ℚ), (281400534337/2500000000 : ℚ), (-36879042377/8000000000 : ℚ)⟩,
  ⟨(1022525684767/25197160211500 : ℚ), (422988392951/10308832123100 : ℚ), (369687331003/10000000000 : ℚ), (-192787905353/125000000000 : ℚ)⟩,
  ⟨(422988392951/10308832123100 : ℚ), (11634322811/279411111170 : ℚ), (163510688541/10000000000 : ℚ), (-348163228461/500000000000 : ℚ)⟩,
  ⟨(11634322811/279411111170 : ℚ), (177566443171/4189985510600 : ℚ), (7968735519/1000000000 : ℚ), (-21706048287/62500000000 : ℚ)⟩,
  ⟨(177566443171/4189985510600 : ℚ), (51478238107/1190982093800 : ℚ), (9446875021/2500000000 : ℚ), (-169730329421/1000000000000 : ℚ)⟩,
  ⟨(51478238107/1190982093800 : ℚ), (16328350943/369922048125 : ℚ), (436495569/312500000 : ℚ), (-66773853207/1000000000000 : ℚ)⟩,
  ⟨(16328350943/369922048125 : ℚ), (22101633043/490130825750 : ℚ), (-829023717/10000000000 : ℚ), (-292089887/200000000000 : ℚ)⟩,
  ⟨(22101633043/490130825750 : ℚ), (31331257757/680424240100 : ℚ), (-1328955029/1250000000 : ℚ), (42742816651/1000000000000 : ℚ)⟩,
  ⟨(31331257757/680424240100 : ℚ), (1525593113/32484887300 : ℚ), (-17435882633/10000000000 : ℚ), (9259259301/125000000000 : ℚ)⟩,
  ⟨(1525593113/32484887300 : ℚ), (16935259059/354237985700 : ℚ), (-1394288483/625000000 : ℚ), (96957971103/1000000000000 : ℚ)⟩,
  ⟨(16935259059/354237985700 : ℚ), (621979353/12811786385 : ℚ), (-5170199117/2000000000 : ℚ), (56946615081/500000000000 : ℚ)⟩,
  ⟨(621979353/12811786385 : ℚ), (733048999/14913195175 : ℚ), (-14206676431/5000000000 : ℚ), (63166408611/500000000000 : ℚ)⟩,
  ⟨(733048999/14913195175 : ℚ), (2823252599/56914397050 : ℚ), (-30202936283/10000000000 : ℚ), (13512940521/100000000000 : ℚ)⟩,
  ⟨(2823252599/56914397050 : ℚ), (552907277/11084124420 : ℚ), (-979413257/312500000 : ℚ), (17596988801/125000000000 : ℚ)⟩,
  ⟨(552907277/11084124420 : ℚ), (85742483/1715252650 : ℚ), (-6379086089/2000000000 : ℚ), (143540446793/1000000000000 : ℚ)⟩,
  ⟨(85742483/1715252650 : ℚ), (1/20 : ℚ), (-31964040551/10000000000 : ℚ), (5755336669/40000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8035959449/40000000000 : ℚ), (-1/5 : ℚ), (18406321397/100000000000 : ℚ)⟩,
  ⟨(8035959449/40000000000 : ℚ), (1620913911/8000000000 : ℚ), (-171484966/857626325 : ℚ), (6313974469461355159/34305053000000000000 : ℚ)⟩,
  ⟨(1620913911/8000000000 : ℚ), (270586743/1250000000 : ℚ), (-552907277/2771031105 : ℚ), (4248182749890035747/23091925875000000000 : ℚ)⟩,
  ⟨(270586743/1250000000 : ℚ), (9797063717/40000000000 : ℚ), (-5646505198/28457198525 : ℚ), (3734559707646844171/20326570375000000000 : ℚ)⟩,
  ⟨(9797063717/40000000000 : ℚ), (5793323569/20000000000 : ℚ), (-2932195996/14913195175 : ℚ), (54667679377339975801/298263903500000000000 : ℚ)⟩,
  ⟨(5793323569/20000000000 : ℚ), (2829800883/8000000000 : ℚ), (-2487917412/12811786385 : ℚ), (233921459669676729387/1281178638500000000000 : ℚ)⟩,
  ⟨(2829800883/8000000000 : ℚ), (1105711517/2500000000 : ℚ), (-16935259059/88559496425 : ℚ), (643070139569493392319/3542379857000000000000 : ℚ)⟩,
  ⟨(1105711517/2500000000 : ℚ), (22564117367/40000000000 : ℚ), (-1525593113/8121221825 : ℚ), (11697308329195167131/64969774600000000000 : ℚ)⟩,
  ⟨(22564117367/40000000000 : ℚ), (3671044971/5000000000 : ℚ), (-31331257757/170106060025 : ℚ), (110089103198765430857/618567491000000000000 : ℚ)⟩,
  ⟨(3671044971/5000000000 : ℚ), (39170976283/40000000000 : ℚ), (-44203266086/245065412875 : ℚ), (1717168861734990819313/9802616515000000000000 : ℚ)⟩,
  ⟨(39170976283/40000000000 : ℚ), (1686495569/1250000000 : ℚ), (-65313403772/369922048125 : ℚ), (2536779692267886777101/14796881925000000000000 : ℚ)⟩,
  ⟨(1686495569/1250000000 : ℚ), (19446875021/10000000000 : ℚ), (-51478238107/297745523450 : ℚ), (198290561992057128409/1190982093800000000000 : ℚ)⟩,
  ⟨(19446875021/10000000000 : ℚ), (11968735519/4000000000 : ℚ), (-177566443171/1047496377650 : ℚ), (3350386751623097426369/20949927553000000000000 : ℚ)⟩,
  ⟨(11968735519/4000000000 : ℚ), (203510688541/40000000000 : ℚ), (-23268645622/139705555585 : ℚ), (1055238888296052571409/6985277779250000000000 : ℚ)⟩,
  ⟨(203510688541/40000000000 : ℚ), (409687331003/40000000000 : ℚ), (-422988392951/2577208030775 : ℚ), (14299533621489861363509/103088321231000000000000 : ℚ)⟩,
  ⟨(409687331003/40000000000 : ℚ), (291400534337/10000000000 : ℚ), (-1022525684767/6299290052875 : ℚ), (30299199632684006958541/251971602115000000000000 : ℚ)⟩,
  ⟨(291400534337/10000000000 : ℚ), (32/1 : ℚ), (-38336370247759/237784961532675 : ℚ), (838546734067985731360757/9511398461307000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (294428155999/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(40271315859/1000000000000 : ℚ), (2127400119731/2000000000 : ℚ), (-10736562636221/250000000000 : ℚ), 10⟩,
    ⟨(20228899321/500000000000 : ℚ), (281400534337/2500000000 : ℚ), (-36879042377/8000000000 : ℚ), 7⟩,
    ⟨(20411798889/500000000000 : ℚ), (369687331003/10000000000 : ℚ), (-192787905353/125000000000 : ℚ), 6⟩,
    ⟨(41354655813/1000000000000 : ℚ), (163510688541/10000000000 : ℚ), (-348163228461/500000000000 : ℚ), 5⟩,
    ⟨(42030564483/1000000000000 : ℚ), (7968735519/1000000000 : ℚ), (-21706048287/62500000000 : ℚ), 4⟩,
    ⟨(21412674499/500000000000 : ℚ), (9446875021/2500000000 : ℚ), (-169730329421/1000000000000 : ℚ), 4⟩,
    ⟨(21854233117/500000000000 : ℚ), (436495569/312500000 : ℚ), (-66773853207/1000000000000 : ℚ), 3⟩,
    ⟨(11161494623/250000000000 : ℚ), (-829023717/10000000000 : ℚ), (-292089887/200000000000 : ℚ), 3⟩,
    ⟨(456018577/10000000000 : ℚ), (-1328955029/1250000000 : ℚ), (42742816651/1000000000000 : ℚ), 3⟩,
    ⟨(23269684979/500000000000 : ℚ), (-17435882633/10000000000 : ℚ), (9259259301/125000000000 : ℚ), 3⟩,
    ⟨(23711243597/500000000000 : ℚ), (-1394288483/625000000 : ℚ), (96957971103/1000000000000 : ℚ), 3⟩,
    ⟨(48217271709/1000000000000 : ℚ), (-5170199117/2000000000 : ℚ), (56946615081/500000000000 : ℚ), 3⟩,
    ⟨(48893180379/1000000000000 : ℚ), (-14206676431/5000000000 : ℚ), (63166408611/500000000000 : ℚ), 3⟩,
    ⟨(24712119207/500000000000 : ℚ), (-30202936283/10000000000 : ℚ), (13512940521/100000000000 : ℚ), 3⟩,
    ⟨(995800751/20000000000 : ℚ), (-979413257/312500000 : ℚ), (17596988801/125000000000 : ℚ), 3⟩,
    ⟨(49976520333/1000000000000 : ℚ), (-6379086089/2000000000 : ℚ), (143540446793/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-31964040551/10000000000 : ℚ), (5755336669/40000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control68.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control68.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate68
