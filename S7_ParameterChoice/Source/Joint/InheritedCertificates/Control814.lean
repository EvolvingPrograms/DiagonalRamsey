import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate814
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (11894414428188/96261779197175 : ℚ), (4307314430957/10000000000 : ℚ), (-53303713499613/1000000000000 : ℚ)⟩,
  ⟨(11894414428188/96261779197175 : ℚ), (3806708874343/30621736381600 : ℚ), (45684326307/1000000000 : ℚ), (-5726055786861/1000000000000 : ℚ)⟩,
  ⟨(3806708874343/30621736381600 : ℚ), (1049404004893/8358924311000 : ℚ), (75312949627/5000000000 : ℚ), (-959673456259/500000000000 : ℚ)⟩,
  ⟨(1049404004893/8358924311000 : ℚ), (144173170059/1133450839000 : ℚ), (4189791009/625000000 : ℚ), (-6959543261/8000000000 : ℚ)⟩,
  ⟨(144173170059/1133450839000 : ℚ), (219606942549/1699528012100 : ℚ), (16516565487/5000000000 : ℚ), (-54677924681/125000000000 : ℚ)⟩,
  ⟨(219606942549/1699528012100 : ℚ), (507718461/3860407064 : ℚ), (16037850853/10000000000 : ℚ), (-217816454899/1000000000000 : ℚ)⟩,
  ⟨(507718461/3860407064 : ℚ), (80171370437/598209641300 : ℚ), (6386833193/10000000000 : ℚ), (-90886839649/1000000000000 : ℚ)⟩,
  ⟨(80171370437/598209641300 : ℚ), (53975795969/395083947100 : ℚ), (20236839/500000000 : ℚ), (-2678867303/250000000000 : ℚ)⟩,
  ⟨(53975795969/395083947100 : ℚ), (19023792881/136647217300 : ℚ), (-3546102691/10000000000 : ℚ), (43260326757/1000000000000 : ℚ)⟩,
  ⟨(19023792881/136647217300 : ℚ), (13824174607/97547177450 : ℚ), (-6279047037/10000000000 : ℚ), (81307912519/1000000000000 : ℚ)⟩,
  ⟨(13824174607/97547177450 : ℚ), (10189158697/70747817450 : ℚ), (-4114995293/5000000000 : ℚ), (108956261733/1000000000000 : ℚ)⟩,
  ⟨(10189158697/70747817450 : ℚ), (1148302169/7863000800 : ℚ), (-1928989387/2000000000 : ℚ), (129334579127/1000000000000 : ℚ)⟩,
  ⟨(1148302169/7863000800 : ℚ), (2108184019/14274000060 : ℚ), (-10667137039/10000000000 : ℚ), (36065626831/250000000000 : ℚ)⟩,
  ⟨(2108184019/14274000060 : ℚ), (3381323581/22705100750 : ℚ), (-5690418521/5000000000 : ℚ), (154803427419/1000000000000 : ℚ)⟩,
  ⟨(3381323581/22705100750 : ℚ), (827701217/5529788975 : ℚ), (-11834939057/10000000000 : ℚ), (161566074581/1000000000000 : ℚ)⟩,
  ⟨(827701217/5529788975 : ℚ), (205377137/1369473400 : ℚ), (-1507016327/1250000000 : ℚ), (164876879449/1000000000000 : ℚ)⟩,
  ⟨(205377137/1369473400 : ℚ), (3/20 : ℚ), (-3020880021/2500000000 : ℚ), (165287633723/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (243039993/1250000000 : ℚ), (-9/40 : ℚ), (209034832463/1000000000000 : ℚ)⟩,
  ⟨(243039993/1250000000 : ℚ), (367983673/1875000000 : ℚ), (-616131411/2738946800 : ℚ), (1431274236295997587/6847367000000000000 : ℚ)⟩,
  ⟨(367983673/1875000000 : ℚ), (3165060943/15000000000 : ℚ), (-2483103651/11059577950 : ℚ), (46215951095682732303/221191559000000000000 : ℚ)⟩,
  ⟨(3165060943/15000000000 : ℚ), (1809581479/7500000000 : ℚ), (-10143970743/45410201500 : ℚ), (94771670426608374481/454102015000000000000 : ℚ)⟩,
  ⟨(1809581479/7500000000 : ℚ), (4332862961/15000000000 : ℚ), (-2108184019/9516000040 : ℚ), (148632514164412423267/713700003000000000000 : ℚ)⟩,
  ⟨(4332862961/15000000000 : ℚ), (1071010613/3000000000 : ℚ), (-3444906507/15726001600 : ℚ), (16318798041082241001/78630008000000000000 : ℚ)⟩,
  ⟨(1071010613/3000000000 : ℚ), (3385004707/7500000000 : ℚ), (-30567476091/141495634900 : ℚ), (292129754901274039933/1414956349000000000000 : ℚ)⟩,
  ⟨(3385004707/7500000000 : ℚ), (2906984321/5000000000 : ℚ), (-41472523821/195094354900 : ℚ), (399747100411491411013/1950943549000000000000 : ℚ)⟩,
  ⟨(2906984321/5000000000 : ℚ), (11453897309/15000000000 : ℚ), (-57071378643/273294434600 : ℚ), (27701060279498709019/136647217300000000000 : ℚ)⟩,
  ⟨(11453897309/15000000000 : ℚ), (256745613/250000000 : ℚ), (-161927387907/790167894200 : ℚ), (98643478835046896621/493854933875000000000 : ℚ)⟩,
  ⟨(256745613/250000000 : ℚ), (21386833193/15000000000 : ℚ), (-240514111311/1196419282600 : ℚ), (73182368058571339769/373881025812500000000 : ℚ)⟩,
  ⟨(21386833193/15000000000 : ℚ), (31037850853/15000000000 : ℚ), (-1523155383/7720814128 : ℚ), (183747201408933179191/965101766000000000000 : ℚ)⟩,
  ⟨(31037850853/15000000000 : ℚ), (8005521829/2500000000 : ℚ), (-658820827647/3399056024200 : ℚ), (1557137931573766940759/8497640060500000000000 : ℚ)⟩,
  ⟨(8005521829/2500000000 : ℚ), (1709097003/312500000 : ℚ), (-432519510177/2266901678000 : ℚ), (983554796012030859373/5667254195000000000000 : ℚ)⟩,
  ⟨(1709097003/312500000 : ℚ), (82812949627/7500000000 : ℚ), (-3148212014679/16717848622000 : ℚ), (6685863154128568399421/41794621555000000000000 : ℚ)⟩,
  ⟨(82812949627/7500000000 : ℚ), (15728108769/500000000 : ℚ), (-11420126623029/61243472763200 : ℚ), (21376114355800366395717/153108681908000000000000 : ℚ)⟩,
  ⟨(15728108769/500000000 : ℚ), (32/1 : ℚ), (-17841621642282/96261779197175 : ℚ), (401184551391667009935933/3850471167887000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (58884613653/100000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(24693878871/200000000000 : ℚ), (4307314430957/10000000000 : ℚ), (-53303713499613/1000000000000 : ℚ), 12⟩,
    ⟨(123977942181/1000000000000 : ℚ), (45684326307/1000000000 : ℚ), (-5726055786861/1000000000000 : ℚ), 9⟩,
    ⟨(3905484207/31250000000 : ℚ), (75312949627/5000000000 : ℚ), (-959673456259/500000000000 : ℚ), 8⟩,
    ⟨(7901482269/62500000000 : ℚ), (4189791009/625000000 : ℚ), (-6959543261/8000000000 : ℚ), 7⟩,
    ⟨(64133476437/500000000000 : ℚ), (16516565487/5000000000 : ℚ), (-54677924681/125000000000 : ℚ), 6⟩,
    ⟨(26086873957/200000000000 : ℚ), (16037850853/10000000000 : ℚ), (-217816454899/1000000000000 : ℚ), 6⟩,
    ⟨(132842674423/1000000000000 : ℚ), (6386833193/10000000000 : ℚ), (-90886839649/1000000000000 : ℚ), 5⟩,
    ⟨(13539931699/100000000000 : ℚ), (20236839/500000000 : ℚ), (-2678867303/250000000000 : ℚ), 5⟩,
    ⟨(27601209429/200000000000 : ℚ), (-3546102691/10000000000 : ℚ), (43260326757/1000000000000 : ℚ), 5⟩,
    ⟨(8785168107/62500000000 : ℚ), (-6279047037/10000000000 : ℚ), (81307912519/1000000000000 : ℚ), 5⟩,
    ⟨(142970994349/1000000000000 : ℚ), (-4114995293/5000000000 : ℚ), (108956261733/1000000000000 : ℚ), 4⟩,
    ⟨(145138411261/1000000000000 : ℚ), (-1928989387/2000000000 : ℚ), (129334579127/1000000000000 : ℚ), 4⟩,
    ⟨(146981647831/1000000000000 : ℚ), (-10667137039/10000000000 : ℚ), (36065626831/250000000000 : ℚ), 4⟩,
    ⟨(148429869511/1000000000000 : ℚ), (-5690418521/5000000000 : ℚ), (154803427419/1000000000000 : ℚ), 4⟩,
    ⟨(74713710977/500000000000 : ℚ), (-11834939057/10000000000 : ℚ), (161566074581/1000000000000 : ℚ), 4⟩,
    ⟨(7496798489/50000000000 : ℚ), (-1507016327/1250000000 : ℚ), (164876879449/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3020880021/2500000000 : ℚ), (165287633723/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control814.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control814.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate814
