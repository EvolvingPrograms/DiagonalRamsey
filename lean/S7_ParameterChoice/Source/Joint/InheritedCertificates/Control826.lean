import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate826
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (46582945006667/294427868281600 : ℚ), (1646791961957/5000000000 : ℚ), (-3263014033937/62500000000 : ℚ)⟩,
  ⟨(46582945006667/294427868281600 : ℚ), (186354323461/1169087389460 : ℚ), (174652620549/5000000000 : ℚ), (-225011181453/40000000000 : ℚ)⟩,
  ⟨(186354323461/1169087389460 : ℚ), (513705235719/3183917415500 : ℚ), (57743881603/5000000000 : ℚ), (-379638613421/200000000000 : ℚ)⟩,
  ⟨(513705235719/3183917415500 : ℚ), (211703302627/1291188448750 : ℚ), (3238088431/625000000 : ℚ), (-870782595667/1000000000000 : ℚ)⟩,
  ⟨(211703302627/1291188448750 : ℚ), (13433136233/80366105700 : ℚ), (25985645921/10000000000 : ℚ), (-447375990413/1000000000000 : ℚ)⟩,
  ⟨(13433136233/80366105700 : ℚ), (1678065089/9825370450 : ℚ), (13127069009/10000000000 : ℚ), (-46489162137/200000000000 : ℚ)⟩,
  ⟨(1678065089/9825370450 : ℚ), (78384457007/448579426200 : ℚ), (1464073719/2500000000 : ℚ), (-108268994099/1000000000000 : ℚ)⟩,
  ⟨(78384457007/448579426200 : ℚ), (52727372907/294816380500 : ℚ), (685250307/5000000000 : ℚ), (-7471134273/250000000000 : ℚ)⟩,
  ⟨(52727372907/294816380500 : ℚ), (5303758481/28989058500 : ℚ), (-1577663191/10000000000 : ℚ), (4568567163/200000000000 : ℚ)⟩,
  ⟨(5303758481/28989058500 : ℚ), (26943018279/144151189300 : ℚ), (-1803448643/5000000000 : ℚ), (29984572591/500000000000 : ℚ)⟩,
  ⟨(26943018279/144151189300 : ℚ), (19829162133/104063703100 : ℚ), (-5048409179/10000000000 : ℚ), (86912163461/1000000000000 : ℚ)⟩,
  ⟨(19829162133/104063703100 : ℚ), (7251877963/37431375800 : ℚ), (-608904621/1000000000 : ℚ), (53370662797/500000000000 : ℚ)⟩,
  ⟨(7251877963/37431375800 : ℚ), (2556771664/13021194225 : ℚ), (-3418836863/5000000000 : ℚ), (1515563519/12500000000 : ℚ)⟩,
  ⟨(2556771664/13021194225 : ℚ), (1638458759/8262597100 : ℚ), (-1471704299/2000000000 : ℚ), (8217010511/62500000000 : ℚ)⟩,
  ⟨(1638458759/8262597100 : ℚ), (1068728549/5357174100 : ℚ), (-7689025379/10000000000 : ℚ), (34506500803/250000000000 : ℚ)⟩,
  ⟨(1068728549/5357174100 : ℚ), (99414613/497198950 : ℚ), (-3924870301/5000000000 : ℚ), (141232188859/1000000000000 : ℚ)⟩,
  ⟨(99414613/497198950 : ℚ), (1/5 : ℚ), (-98370357/125000000 : ℚ), (141629847311/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (26629643/125000000 : ℚ), (-1/5 : ℚ), (184237276111/1000000000000 : ℚ)⟩,
  ⟨(26629643/125000000 : ℚ), (1075129699/5000000000 : ℚ), (-99414613/497198950 : ℚ), (1831944331941495909/9943979000000000000 : ℚ)⟩,
  ⟨(1075129699/5000000000 : ℚ), (2310974621/10000000000 : ℚ), (-1068728549/5357174100 : ℚ), (9864097848815587021/53571741000000000000 : ℚ)⟩,
  ⟨(2310974621/10000000000 : ℚ), (528295701/2000000000 : ℚ), (-1638458759/8262597100 : ℚ), (15190969148244774191/82625971000000000000 : ℚ)⟩,
  ⟨(528295701/2000000000 : ℚ), (1581163137/5000000000 : ℚ), (-2556771664/13021194225 : ℚ), (1989408646888723513/10850995187500000000 : ℚ)⟩,
  ⟨(1581163137/5000000000 : ℚ), (391095379/1000000000 : ℚ), (-7251877963/37431375800 : ℚ), (34158253160502026011/187156879000000000000 : ℚ)⟩,
  ⟨(391095379/1000000000 : ℚ), (4951590821/10000000000 : ℚ), (-19829162133/104063703100 : ℚ), (47157478236931326371/260159257750000000000 : ℚ)⟩,
  ⟨(4951590821/10000000000 : ℚ), (3196551357/5000000000 : ℚ), (-26943018279/144151189300 : ℚ), (64673929818930789683/360377973250000000000 : ℚ)⟩,
  ⟨(3196551357/5000000000 : ℚ), (8422336809/10000000000 : ℚ), (-5303758481/28989058500 : ℚ), (712388379417243457/4026258125000000000 : ℚ)⟩,
  ⟨(8422336809/10000000000 : ℚ), (5685250307/5000000000 : ℚ), (-52727372907/294816380500 : ℚ), (255716057714918054919/1474081902500000000000 : ℚ)⟩,
  ⟨(5685250307/5000000000 : ℚ), (3964073719/2500000000 : ℚ), (-78384457007/448579426200 : ℚ), (378607315758165168097/2242897131000000000000 : ℚ)⟩,
  ⟨(3964073719/2500000000 : ℚ), (23127069009/10000000000 : ℚ), (-1678065089/9825370450 : ℚ), (31940130239179588437/196507409000000000000 : ℚ)⟩,
  ⟨(23127069009/10000000000 : ℚ), (35985645921/10000000000 : ℚ), (-13433136233/80366105700 : ℚ), (10321785229796692421/66971754750000000000 : ℚ)⟩,
  ⟨(35985645921/10000000000 : ℚ), (3863088431/625000000 : ℚ), (-211703302627/1291188448750 : ℚ), (3683625955895935432259/25823768975000000000000 : ℚ)⟩,
  ⟨(3863088431/625000000 : ℚ), (62743881603/5000000000 : ℚ), (-513705235719/3183917415500 : ℚ), (4026821334218588483839/31839174155000000000000 : ℚ)⟩,
  ⟨(62743881603/5000000000 : ℚ), (32/1 : ℚ), (-186354323461/1169087389460 : ℚ), (1193651439759747878833/11690873894600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (60656026127/100000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(39516722413/250000000000 : ℚ), (1646791961957/5000000000 : ℚ), (-3263014033937/62500000000 : ℚ), 12⟩,
    ⟨(31774135603/200000000000 : ℚ), (174652620549/5000000000 : ℚ), (-225011181453/40000000000 : ℚ), 9⟩,
    ⟨(32089473121/200000000000 : ℚ), (57743881603/5000000000 : ℚ), (-379638613421/200000000000 : ℚ), 7⟩,
    ⟨(81368180601/500000000000 : ℚ), (3238088431/625000000 : ℚ), (-870782595667/1000000000000 : ℚ), 6⟩,
    ⟨(16564969999/100000000000 : ℚ), (25985645921/10000000000 : ℚ), (-447375990413/1000000000000 : ℚ), 6⟩,
    ⟨(169075423991/1000000000000 : ℚ), (13127069009/10000000000 : ℚ), (-46489162137/200000000000 : ℚ), 5⟩,
    ⟨(34576376911/200000000000 : ℚ), (1464073719/2500000000 : ℚ), (-108268994099/1000000000000 : ℚ), 5⟩,
    ⟨(1382209387/7812500000 : ℚ), (685250307/5000000000 : ℚ), (-7471134273/250000000000 : ℚ), 5⟩,
    ⟨(181042884761/1000000000000 : ℚ), (-1577663191/10000000000 : ℚ), (4568567163/200000000000 : ℚ), 5⟩,
    ⟨(92541900871/500000000000 : ℚ), (-1803448643/5000000000 : ℚ), (29984572591/500000000000 : ℚ), 4⟩,
    ⟨(94445131153/500000000000 : ℚ), (-5048409179/10000000000 : ℚ), (86912163461/1000000000000 : ℚ), 4⟩,
    ⟨(192315986307/1000000000000 : ℚ), (-608904621/1000000000 : ℚ), (53370662797/500000000000 : ℚ), 4⟩,
    ⟨(39045865019/200000000000 : ℚ), (-3418836863/5000000000 : ℚ), (1515563519/12500000000 : ℚ), 4⟩,
    ⟨(49379580173/250000000000 : ℚ), (-1471704299/2000000000 : ℚ), (8217010511/62500000000 : ℚ), 4⟩,
    ⟨(99547504141/500000000000 : ℚ), (-7689025379/10000000000 : ℚ), (34506500803/250000000000 : ℚ), 4⟩,
    ⟨(39979759329/200000000000 : ℚ), (-3924870301/5000000000 : ℚ), (141232188859/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-98370357/125000000 : ℚ), (141629847311/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control826.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control826.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate826
