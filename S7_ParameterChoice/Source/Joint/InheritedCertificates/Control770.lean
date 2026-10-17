import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate770
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (27945000205361/166601115023100 : ℚ), (5591411666089/10000000000 : ℚ), (-93916554986407/1000000000000 : ℚ)⟩,
  ⟨(27945000205361/166601115023100 : ℚ), (3353767743947/19885698975850 : ℚ), (148344553849/2500000000 : ℚ), (-2520388592581/250000000000 : ℚ)⟩,
  ⟨(3353767743947/19885698975850 : ℚ), (1848908428189/10866202474900 : ℚ), (195664235879/10000000000 : ℚ), (-337401888243/100000000000 : ℚ)⟩,
  ⟨(1848908428189/10866202474900 : ℚ), (190463338981/1106234508250 : ℚ), (8700221113/1000000000 : ℚ), (-1525110454241/1000000000000 : ℚ)⟩,
  ⟨(190463338981/1106234508250 : ℚ), (386631989381/2213937137300 : ℚ), (106882077/25000000 : ℚ), (-763257098317/1000000000000 : ℚ)⟩,
  ⟨(386631989381/2213937137300 : ℚ), (8587820071/48396792050 : ℚ), (20613459427/10000000000 : ℚ), (-47078138617/125000000000 : ℚ)⟩,
  ⟨(8587820071/48396792050 : ℚ), (140859668813/780401729000 : ℚ), (4015146747/5000000000 : ℚ), (-15334178709/100000000000 : ℚ)⟩,
  ⟨(140859668813/780401729000 : ℚ), (94683639173/515512402600 : ℚ), (56569051/2500000000 : ℚ), (-12482118277/1000000000000 : ℚ)⟩,
  ⟨(94683639173/515512402600 : ℚ), (1903318103/10186795840 : ℚ), (-2464423911/5000000000 : ℚ), (321099691/3906250000 : ℚ)⟩,
  ⟨(1903318103/10186795840 : ℚ), (48308976619/254402212500 : ℚ), (-4247113183/5000000000 : ℚ), (148817654501/1000000000000 : ℚ)⟩,
  ⟨(48308976619/254402212500 : ℚ), (35533760739/184396762700 : ℚ), (-11038248491/10000000000 : ℚ), (2464082889/12500000000 : ℚ)⟩,
  ⟨(35533760739/184396762700 : ℚ), (2598188593/13312752690 : ℚ), (-6441108059/5000000000 : ℚ), (232660391859/1000000000000 : ℚ)⟩,
  ⟨(2598188593/13312752690 : ℚ), (1077560993/5464703600 : ℚ), (-14213491387/10000000000 : ℚ), (258642277789/1000000000000 : ℚ)⟩,
  ⟨(1077560993/5464703600 : ℚ), (11739446637/59085361700 : ℚ), (-15142490999/10000000000 : ℚ), (27696081467/100000000000 : ℚ)⟩,
  ⟨(11739446637/59085361700 : ℚ), (5743471167/28773466000 : ℚ), (-1966668077/1250000000 : ℚ), (288700261307/1000000000000 : ℚ)⟩,
  ⟨(5743471167/28773466000 : ℚ), (178096117/890654675 : ℚ), (-4005269819/2500000000 : ℚ), (147221866237/500000000000 : ℚ)⟩,
  ⟨(178096117/890654675 : ℚ), (1/5 : ℚ), (-16056705463/10000000000 : ℚ), (147578058471/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3943294537/20000000000 : ℚ), (-2/5 : ℚ), (187011003841/500000000000 : ℚ)⟩,
  ⟨(3943294537/20000000000 : ℚ), (994730181/5000000000 : ℚ), (-356192234/890654675 : ℚ), (1332442879727761147/3562618700000000000 : ℚ)⟩,
  ⟨(994730181/5000000000 : ℚ), (533331923/2500000000 : ℚ), (-5743471167/14386733000 : ℚ), (26893620926652528437/71933665000000000000 : ℚ)⟩,
  ⟨(533331923/2500000000 : ℚ), (4857509001/20000000000 : ℚ), (-11739446637/29542680850 : ℚ), (220667766821022841027/590853617000000000000 : ℚ)⟩,
  ⟨(4857509001/20000000000 : ℚ), (5786508613/20000000000 : ℚ), (-1077560993/2732351800 : ℚ), (20369349832484816113/54647036000000000000 : ℚ)⟩,
  ⟨(5786508613/20000000000 : ℚ), (3558891941/10000000000 : ℚ), (-2598188593/6656376345 : ℚ), (494668474654252215331/1331275269000000000000 : ℚ)⟩,
  ⟨(3558891941/10000000000 : ℚ), (8961751509/20000000000 : ℚ), (-35533760739/92198381350 : ℚ), (681939860128028957391/1843967627000000000000 : ℚ)⟩,
  ⟨(8961751509/20000000000 : ℚ), (5752886817/10000000000 : ℚ), (-48308976619/127201106250 : ℚ), (311475851703187499357/848007375000000000000 : ℚ)⟩,
  ⟨(5752886817/10000000000 : ℚ), (7535576089/10000000000 : ℚ), (-1903318103/5093397920 : ℚ), (92647244711264342651/254669896000000000000 : ℚ)⟩,
  ⟨(7535576089/10000000000 : ℚ), (5056569051/5000000000 : ℚ), (-94683639173/257756201300 : ℚ), (185075057008783571609/515512402600000000000 : ℚ)⟩,
  ⟨(5056569051/5000000000 : ℚ), (14015146747/10000000000 : ℚ), (-140859668813/390200864500 : ℚ), (1375827950283084908261/3902008645000000000000 : ℚ)⟩,
  ⟨(14015146747/10000000000 : ℚ), (40613459427/20000000000 : ℚ), (-8587820071/24198396025 : ℚ), (166506611240092871729/483967920500000000000 : ℚ)⟩,
  ⟨(40613459427/20000000000 : ℚ), (156882077/50000000 : ℚ), (-386631989381/1106968568650 : ℚ), (7364219458774853455559/22139371373000000000000 : ℚ)⟩,
  ⟨(156882077/50000000 : ℚ), (10700221113/2000000000 : ℚ), (-190463338981/553117254125 : ℚ), (1403480110570981375459/4424938033000000000000 : ℚ)⟩,
  ⟨(10700221113/2000000000 : ℚ), (215664235879/20000000000 : ℚ), (-1848908428189/5433101237450 : ℚ), (32115700069421647533061/108662024749000000000000 : ℚ)⟩,
  ⟨(215664235879/20000000000 : ℚ), (153344553849/5000000000 : ℚ), (-3353767743947/9942849487925 : ℚ), (26170259732799678440629/99428494879250000000000 : ℚ)⟩,
  ⟨(153344553849/5000000000 : ℚ), (32/1 : ℚ), (-27945000205361/83300557511550 : ℚ), (14369681774388813324713/69417131259625000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (5594969839/12500000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(167621467417/1000000000000 : ℚ), (5591411666089/10000000000 : ℚ), (-93916554986407/1000000000000 : ℚ), 12⟩,
    ⟨(168242110329/1000000000000 : ℚ), (148344553849/2500000000 : ℚ), (-2520388592581/250000000000 : ℚ), 9⟩,
    ⟨(84729772597/500000000000 : ℚ), (195664235879/10000000000 : ℚ), (-337401888243/100000000000 : ℚ), 7⟩,
    ⟨(171226986671/1000000000000 : ℚ), (8700221113/1000000000 : ℚ), (-1525110454241/1000000000000 : ℚ), 6⟩,
    ⟨(86738256489/500000000000 : ℚ), (106882077/25000000 : ℚ), (-763257098317/1000000000000 : ℚ), 6⟩,
    ⟨(176121676079/1000000000000 : ℚ), (20613459427/10000000000 : ℚ), (-47078138617/125000000000 : ℚ), 5⟩,
    ⟨(1119130149/6250000000 : ℚ), (4015146747/5000000000 : ℚ), (-15334178709/100000000000 : ℚ), 5⟩,
    ⟨(182181006461/1000000000000 : ℚ), (56569051/2500000000 : ℚ), (-12482118277/1000000000000 : ℚ), 5⟩,
    ⟨(185362317073/1000000000000 : ℚ), (-2464423911/5000000000 : ℚ), (321099691/3906250000 : ℚ), 5⟩,
    ⟨(188482499693/1000000000000 : ℚ), (-4247113183/5000000000 : ℚ), (148817654501/1000000000000 : ℚ), 4⟩,
    ⟨(95710823727/500000000000 : ℚ), (-11038248491/10000000000 : ℚ), (2464082889/12500000000 : ℚ), 4⟩,
    ⟨(38813362111/200000000000 : ℚ), (-6441108059/5000000000 : ℚ), (232660391859/1000000000000 : ℚ), 4⟩,
    ⟨(98158168431/500000000000 : ℚ), (-14213491387/10000000000 : ℚ), (258642277789/1000000000000 : ℚ), 4⟩,
    ⟨(9904188917/50000000000 : ℚ), (-15142490999/10000000000 : ℚ), (27696081467/100000000000 : ℚ), 4⟩,
    ⟨(49825303301/250000000000 : ℚ), (-1966668077/1250000000 : ℚ), (288700261307/1000000000000 : ℚ), 4⟩,
    ⟨(49980464029/250000000000 : ℚ), (-4005269819/2500000000 : ℚ), (147221866237/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16056705463/10000000000 : ℚ), (147578058471/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control770.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control770.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate770
