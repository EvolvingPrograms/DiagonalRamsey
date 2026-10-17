import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate917
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1991847035592/52077034491145 : ℚ), (5823026741297/5000000000 : ℚ), (-22320581251287/500000000000 : ℚ)⟩,
  ⟨(1991847035592/52077034491145 : ℚ), (159377910229/4130917401555 : ℚ), (246129316873/2000000000 : ℚ), (-2402110895367/500000000000 : ℚ)⟩,
  ⟨(159377910229/4130917401555 : ℚ), (219743577426/5616028211675 : ℚ), (202231552027/5000000000 : ℚ), (-808331793077/500000000000 : ℚ)⟩,
  ⟨(219743577426/5616028211675 : ℚ), (362574552007/9095345608300 : ℚ), (179821975587/10000000000 : ℚ), (-14753785529/20000000000 : ℚ)⟩,
  ⟨(362574552007/9095345608300 : ℚ), (184417349473/4524383543100 : ℚ), (5554282469/625000000 : ℚ), (-375114724443/1000000000000 : ℚ)⟩,
  ⟨(184417349473/4524383543100 : ℚ), (15273528367/365530545600 : ℚ), (43624684073/10000000000 : ℚ), (-19069737497/100000000000 : ℚ)⟩,
  ⟨(15273528367/365530545600 : ℚ), (67826654433/1581199161200 : ℚ), (18037545881/10000000000 : ℚ), (-83782676401/1000000000000 : ℚ)⟩,
  ⟨(67826654433/1581199161200 : ℚ), (22955771957/521113086400 : ℚ), (2225554269/10000000000 : ℚ), (-997251373/62500000000 : ℚ)⟩,
  ⟨(22955771957/521113086400 : ℚ), (8136417119/179980947050 : ℚ), (-8196707459/10000000000 : ℚ), (14977760973/500000000000 : ℚ)⟩,
  ⟨(8136417119/179980947050 : ℚ), (23766489859/513113676400 : ℚ), (-15395945341/10000000000 : ℚ), (31250595211/500000000000 : ℚ)⟩,
  ⟨(23766489859/513113676400 : ℚ), (8788354957/185636034450 : ℚ), (-4105416421/2000000000 : ℚ), (86267680281/1000000000000 : ℚ)⟩,
  ⟨(8788354957/185636034450 : ℚ), (128957302/2673309409 : ℚ), (-12119901397/5000000000 : ℚ), (20768878039/200000000000 : ℚ)⟩,
  ⟨(128957302/2673309409 : ℚ), (910568623/18592632900 : ℚ), (-26913112203/10000000000 : ℚ), (23348024079/200000000000 : ℚ)⟩,
  ⟨(910568623/18592632900 : ℚ), (2918205561/58928230400 : ℚ), (-28772375493/10000000000 : ℚ), (1006766453/8000000000 : ℚ)⟩,
  ⟨(2918205561/58928230400 : ℚ), (28544740/572521821 : ℚ), (-29950940101/10000000000 : ℚ), (131682217747/1000000000000 : ℚ)⟩,
  ⟨(28544740/572521821 : ℚ), (17698586/354072565 : ℚ), (-15261730961/5000000000 : ℚ), (134536691747/1000000000000 : ℚ)⟩,
  ⟨(17698586/354072565 : ℚ), (1/20 : ℚ), (-6118855287/2000000000 : ℚ), (134890663467/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1881144713/8000000000 : ℚ), (-1/5 : ℚ), (45479820323/250000000000 : ℚ)⟩,
  ⟨(1881144713/8000000000 : ℚ), (4738269039/20000000000 : ℚ), (-70794344/354072565 : ℚ), (1840225255687154053/10116359000000000000 : ℚ)⟩,
  ⟨(4738269039/20000000000 : ℚ), (10049059899/40000000000 : ℚ), (-114178960/572521821 : ℚ), (34691907767989694429/190840607000000000000 : ℚ)⟩,
  ⟨(10049059899/40000000000 : ℚ), (11227624507/40000000000 : ℚ), (-2918205561/14732057600 : ℚ), (106923223149865747427/589282304000000000000 : ℚ)⟩,
  ⟨(11227624507/40000000000 : ℚ), (13086887797/40000000000 : ℚ), (-910568623/4648158225 : ℚ), (16810785716365086743/92963164500000000000 : ℚ)⟩,
  ⟨(13086887797/40000000000 : ℚ), (7880098603/20000000000 : ℚ), (-515829208/2673309409 : ℚ), (96169487289506133191/534661881800000000000 : ℚ)⟩,
  ⟨(7880098603/20000000000 : ℚ), (3894583579/8000000000 : ℚ), (-17576709914/92818017225 : ℚ), (662557630390860544639/3712720689000000000000 : ℚ)⟩,
  ⟨(3894583579/8000000000 : ℚ), (24604054659/40000000000 : ℚ), (-23766489859/128278419100 : ℚ), (905454171511494077489/5131136764000000000000 : ℚ)⟩,
  ⟨(24604054659/40000000000 : ℚ), (31803292541/40000000000 : ℚ), (-16272834238/89990473525 : ℚ), (78169771490834699743/449952367625000000000 : ℚ)⟩,
  ⟨(31803292541/40000000000 : ℚ), (42225554269/40000000000 : ℚ), (-22955771957/130278271600 : ℚ), (886171276012985014081/5211130864000000000000 : ℚ)⟩,
  ⟨(42225554269/40000000000 : ℚ), (58037545881/40000000000 : ℚ), (-67826654433/395299790300 : ℚ), (2611721592126447192061/15811991612000000000000 : ℚ)⟩,
  ⟨(58037545881/40000000000 : ℚ), (83624684073/40000000000 : ℚ), (-15273528367/91382636400 : ℚ), (193395609732553254157/1218435152000000000000 : ℚ)⟩,
  ⟨(83624684073/40000000000 : ℚ), (8054282469/2500000000 : ℚ), (-184417349473/1131095885775 : ℚ), (2264653978997759827153/15081278477000000000000 : ℚ)⟩,
  ⟨(8054282469/2500000000 : ℚ), (219821975587/40000000000 : ℚ), (-362574552007/2273836402075 : ℚ), (12606465111255094707759/90953456083000000000000 : ℚ)⟩,
  ⟨(219821975587/40000000000 : ℚ), (222231552027/20000000000 : ℚ), (-878974309704/5616028211675 : ℚ), (13751258864810068747049/112320564233500000000000 : ℚ)⟩,
  ⟨(222231552027/20000000000 : ℚ), (254129316873/8000000000 : ℚ), (-637511640916/4130917401555 : ℚ), (13515210976608008025571/137697246718500000000000 : ℚ)⟩,
  ⟨(254129316873/8000000000 : ℚ), (32/1 : ℚ), (-7967388142368/52077034491145 : ℚ), (290373933608762420585757/5207703449114500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (124999/1000000 : ℚ)
  x := (9436290201/100000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(19103201617/500000000000 : ℚ), (5823026741297/5000000000 : ℚ), (-22320581251287/500000000000 : ℚ), 9⟩,
    ⟨(1201014593/31250000000 : ℚ), (246129316873/2000000000 : ℚ), (-2402110895367/500000000000 : ℚ), 6⟩,
    ⟨(38875906957/1000000000000 : ℚ), (202231552027/5000000000 : ℚ), (-808331793077/500000000000 : ℚ), 5⟩,
    ⟨(9879920507/250000000000 : ℚ), (179821975587/10000000000 : ℚ), (-14753785529/20000000000 : ℚ), 4⟩,
    ⟨(40339052273/1000000000000 : ℚ), (5554282469/625000000 : ℚ), (-375114724443/1000000000000 : ℚ), 3⟩,
    ⟨(41302529753/1000000000000 : ℚ), (43624684073/10000000000 : ℚ), (-19069737497/100000000000 : ℚ), 3⟩,
    ⟨(4237308857/100000000000 : ℚ), (18037545881/10000000000 : ℚ), (-83782676401/1000000000000 : ℚ), 2⟩,
    ⟨(10877396937/250000000000 : ℚ), (2225554269/10000000000 : ℚ), (-997251373/62500000000 : ℚ), 2⟩,
    ⟨(44668352261/1000000000000 : ℚ), (-8196707459/10000000000 : ℚ), (14977760973/500000000000 : ℚ), 2⟩,
    ⟨(45804851439/1000000000000 : ℚ), (-15395945341/10000000000 : ℚ), (31250595211/500000000000 : ℚ), 2⟩,
    ⟨(2929713141/62500000000 : ℚ), (-4105416421/2000000000 : ℚ), (86267680281/1000000000000 : ℚ), 2⟩,
    ⟨(5979860967/125000000000 : ℚ), (-12119901397/5000000000 : ℚ), (20768878039/200000000000 : ℚ), 2⟩,
    ⟨(48658257981/1000000000000 : ℚ), (-26913112203/10000000000 : ℚ), (23348024079/200000000000 : ℚ), 2⟩,
    ⟨(12325508263/250000000000 : ℚ), (-28772375493/10000000000 : ℚ), (1006766453/8000000000 : ℚ), 2⟩,
    ⟨(49745473033/1000000000000 : ℚ), (-29950940101/10000000000 : ℚ), (131682217747/1000000000000 : ℚ), 2⟩,
    ⟨(1998861471/40000000000 : ℚ), (-15261730961/5000000000 : ℚ), (134536691747/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-6118855287/2000000000 : ℚ), (134890663467/1000000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control917.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control917.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate917
