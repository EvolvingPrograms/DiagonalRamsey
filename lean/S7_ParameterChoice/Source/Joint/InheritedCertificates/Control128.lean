import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate128
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (3878776769344/47242244632825 : ℚ), (2641920214473/2500000000 : ℚ), (-86898946258151/1000000000000 : ℚ)⟩,
  ⟨(3878776769344/47242244632825 : ℚ), (3103599181653/37568295835250 : ℚ), (1119231931327/10000000000 : ℚ), (-9323410871271/1000000000000 : ℚ)⟩,
  ⟨(3103599181653/37568295835250 : ℚ), (244511187041/2930237174200 : ℚ), (183933007311/5000000000 : ℚ), (-623242501593/200000000000 : ℚ)⟩,
  ⟨(244511187041/2930237174200 : ℚ), (705891814791/8347341204500 : ℚ), (40687353107/2500000000 : ℚ), (-702317099339/500000000000 : ℚ)⟩,
  ⟨(705891814791/8347341204500 : ℚ), (89712868056/1044010365275 : ℚ), (79276000383/10000000000 : ℚ), (-698742383887/1000000000000 : ℚ)⟩,
  ⟨(89712868056/1044010365275 : ℚ), (103908143887/1187656073650 : ℚ), (9378896443/2500000000 : ℚ), (-339890911663/1000000000000 : ℚ)⟩,
  ⟨(103908143887/1187656073650 : ℚ), (65803741427/737857674250 : ℚ), (13762464299/10000000000 : ℚ), (-132074623889/1000000000000 : ℚ)⟩,
  ⟨(65803741427/737857674250 : ℚ), (22219738561/244328583325 : ℚ), (-497344593/5000000000 : ℚ), (-93428207/200000000000 : ℚ)⟩,
  ⟨(22219738561/244328583325 : ℚ), (15711691319/169486251325 : ℚ), (-10767832519/10000000000 : ℚ), (88411813209/1000000000000 : ℚ)⟩,
  ⟨(15711691319/169486251325 : ℚ), (2862051028/30320333575 : ℚ), (-4386820643/2500000000 : ℚ), (30251715697/200000000000 : ℚ)⟩,
  ⟨(2862051028/30320333575 : ℚ), (211352536/2202675905 : ℚ), (-2799816993/1250000000 : ℚ), (197051394933/1000000000000 : ℚ)⟩,
  ⟨(211352536/2202675905 : ℚ), (8265464393/84932126200 : ℚ), (-1620176087/625000000 : ℚ), (230867800693/1000000000000 : ℚ)⟩,
  ⟨(8265464393/84932126200 : ℚ), (17512593071/177903075100 : ℚ), (-14235390589/5000000000 : ℚ), (15979012117/62500000000 : ℚ)⟩,
  ⟨(17512593071/177903075100 : ℚ), (2246438633/22629293860 : ℚ), (-30249811929/10000000000 : ℚ), (273176786943/1000000000000 : ℚ)⟩,
  ⟨(2246438633/22629293860 : ℚ), (2748449791/27544085650 : ℚ), (-15690638311/5000000000 : ℚ), (71102245027/250000000000 : ℚ)⟩,
  ⟨(2748449791/27544085650 : ℚ), (170461204/1704981775 : ℚ), (-6386431667/2000000000 : ℚ), (28990587969/100000000000 : ℚ)⟩,
  ⟨(170461204/1704981775 : ℚ), (1/10 : ℚ), (-16000178803/5000000000 : ℚ), (145293862253/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3999821197/20000000000 : ℚ), (-2/5 : ℚ), (185292074223/500000000000 : ℚ)⟩,
  ⟨(3999821197/20000000000 : ℚ), (1613568333/8000000000 : ℚ), (-681844816/1704981775 : ℚ), (2527238566906076463/6819927100000000000 : ℚ)⟩,
  ⟨(1613568333/8000000000 : ℚ), (4309361689/20000000000 : ℚ), (-5496899582/13772042825 : ℚ), (204051963088379793/550881713000000000 : ℚ)⟩,
  ⟨(4309361689/20000000000 : ℚ), (9750188071/40000000000 : ℚ), (-2246438633/5657323465 : ℚ), (209302942590869319107/565732346500000000000 : ℚ)⟩,
  ⟨(9750188071/40000000000 : ℚ), (5764609411/20000000000 : ℚ), (-17512593071/44475768775 : ℚ), (328370490242056870117/889515375500000000000 : ℚ)⟩,
  ⟨(5764609411/20000000000 : ℚ), (879823913/2500000000 : ℚ), (-8265464393/21233031550 : ℚ), (31243538343992611151/84932126200000000000 : ℚ)⟩,
  ⟨(879823913/2500000000 : ℚ), (2200183007/5000000000 : ℚ), (-845410144/2202675905 : ℚ), (161210353244080558193/440535181000000000000 : ℚ)⟩,
  ⟨(2200183007/5000000000 : ℚ), (5613179357/10000000000 : ℚ), (-11448204112/30320333575 : ℚ), (440491714214624389291/1212813343000000000000 : ℚ)⟩,
  ⟨(5613179357/10000000000 : ℚ), (29232167481/40000000000 : ℚ), (-62846765276/169486251325 : ℚ), (2436530639932708339833/6779450053000000000000 : ℚ)⟩,
  ⟨(29232167481/40000000000 : ℚ), (19502655407/20000000000 : ℚ), (-88878954244/244328583325 : ℚ), (3462185798818723424961/9773143333000000000000 : ℚ)⟩,
  ⟨(19502655407/20000000000 : ℚ), (53762464299/40000000000 : ℚ), (-131607482854/368928837125 : ℚ), (5126497102215809026181/14757153485000000000000 : ℚ)⟩,
  ⟨(53762464299/40000000000 : ℚ), (19378896443/10000000000 : ℚ), (-207816287774/593828036825 : ℚ), (8035531167464180511929/23753121473000000000000 : ℚ)⟩,
  ⟨(19378896443/10000000000 : ℚ), (119276000383/40000000000 : ℚ), (-358851472224/1044010365275 : ℚ), (2724519336206058417767/8352082922200000000000 : ℚ)⟩,
  ⟨(119276000383/40000000000 : ℚ), (50687353107/10000000000 : ℚ), (-705891814791/2086835301125 : ℚ), (12934770723931380673019/41736706022500000000000 : ℚ)⟩,
  ⟨(50687353107/10000000000 : ℚ), (203933007311/20000000000 : ℚ), (-244511187041/732559293550 : ℚ), (1051923256680814623559/3662796467750000000000 : ℚ)⟩,
  ⟨(203933007311/20000000000 : ℚ), (1159231931327/40000000000 : ℚ), (-6207198363306/18784147917625 : ℚ), (190289390715110125205007/751365916705000000000000 : ℚ)⟩,
  ⟨(1159231931327/40000000000 : ℚ), (32/1 : ℚ), (-15515107077376/47242244632825 : ℚ), (367253254334800637915129/1889689785313000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (134407751719/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(205101209/2500000000 : ℚ), (2641920214473/2500000000 : ℚ), (-86898946258151/1000000000000 : ℚ), 11⟩,
    ⟨(41192368911/500000000000 : ℚ), (1119231931327/10000000000 : ℚ), (-9323410871271/1000000000000 : ℚ), 7⟩,
    ⟨(8306001677/100000000000 : ℚ), (183933007311/5000000000 : ℚ), (-623242501593/200000000000 : ℚ), 6⟩,
    ⟨(21010092463/250000000000 : ℚ), (40687353107/2500000000 : ℚ), (-702317099339/500000000000 : ℚ), 5⟩,
    ⟨(85288122649/1000000000000 : ℚ), (79276000383/10000000000 : ℚ), (-698742383887/1000000000000 : ℚ), 4⟩,
    ⟨(86755324721/1000000000000 : ℚ), (9378896443/2500000000 : ℚ), (-339890911663/1000000000000 : ℚ), 4⟩,
    ⟨(17677118463/200000000000 : ℚ), (13762464299/10000000000 : ℚ), (-132074623889/1000000000000 : ℚ), 4⟩,
    ⟨(45058137581/500000000000 : ℚ), (-497344593/5000000000 : ℚ), (-93428207/200000000000 : ℚ), 3⟩,
    ⟨(9188086409/100000000000 : ℚ), (-10767832519/10000000000 : ℚ), (88411813209/1000000000000 : ℚ), 3⟩,
    ⟨(93611546937/1000000000000 : ℚ), (-4386820643/2500000000 : ℚ), (30251715697/200000000000 : ℚ), 3⟩,
    ⟨(95241814531/1000000000000 : ℚ), (-2799816993/1250000000 : ℚ), (197051394933/1000000000000 : ℚ), 3⟩,
    ⟨(96709016603/1000000000000 : ℚ), (-1620176087/625000000 : ℚ), (230867800693/1000000000000 : ℚ), 3⟩,
    ⟨(489783847/5000000000 : ℚ), (-14235390589/5000000000 : ℚ), (15979012117/62500000000 : ℚ), 3⟩,
    ⟨(49468561241/500000000000 : ℚ), (-30249811929/10000000000 : ℚ), (273176786943/1000000000000 : ℚ), 3⟩,
    ⟨(9961240143/100000000000 : ℚ), (-15690638311/5000000000 : ℚ), (71102245027/250000000000 : ℚ), 3⟩,
    ⟨(24989163913/250000000000 : ℚ), (-6386431667/2000000000 : ℚ), (28990587969/100000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-16000178803/5000000000 : ℚ), (145293862253/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control128.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control128.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate128
