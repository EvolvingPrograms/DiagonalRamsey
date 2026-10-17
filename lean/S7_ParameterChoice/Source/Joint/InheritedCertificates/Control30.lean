import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate30
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (19793959480391/249625788823400 : ℚ), (11166801875313/10000000000 : ℚ), (-44355384305447/500000000000 : ℚ)⟩,
  ⟨(19793959480391/249625788823400 : ℚ), (3167676739877/39654232951850 : ℚ), (1181770322377/10000000000 : ℚ), (-953493068933/100000000000 : ℚ)⟩,
  ⟨(3167676739877/39654232951850 : ℚ), (436764614384/5402499401175 : ℚ), (19434283167/500000000 : ℚ), (-399947151197/125000000000 : ℚ)⟩,
  ⟨(436764614384/5402499401175 : ℚ), (80076709001/974863451100 : ℚ), (172585687293/10000000000 : ℚ), (-36312968801/25000000000 : ℚ)⟩,
  ⟨(80076709001/974863451100 : ℚ), (366551679443/4378199854800 : ℚ), (42423988347/5000000000 : ℚ), (-731828371031/1000000000000 : ℚ)⟩,
  ⟨(366551679443/4378199854800 : ℚ), (12497070399/146120428600 : ℚ), (20532989073/5000000000 : ℚ), (-91319172897/250000000000 : ℚ)⟩,
  ⟨(12497070399/146120428600 : ℚ), (134699853991/1539716537800 : ℚ), (4056376321/2500000000 : ℚ), (-30565298961/200000000000 : ℚ)⟩,
  ⟨(134699853991/1539716537800 : ℚ), (22774087408/254403012675 : ℚ), (414169953/5000000000 : ℚ), (-9063320407/500000000000 : ℚ)⟩,
  ⟨(22774087408/254403012675 : ℚ), (64508119637/704576746600 : ℚ), (-9347780601/10000000000 : ℚ), (36484854409/500000000000 : ℚ)⟩,
  ⟨(64508119637/704576746600 : ℚ), (23530452703/251626570550 : ℚ), (-16393548067/10000000000 : ℚ), (27495565691/200000000000 : ℚ)⟩,
  ⟨(23530452703/251626570550 : ℚ), (4347548146/45611486375 : ℚ), (-10713039739/5000000000 : ℚ), (184538733861/1000000000000 : ℚ)⟩,
  ⟨(4347548146/45611486375 : ℚ), (1822181233/18805292300 : ℚ), (-6268749597/2500000000 : ℚ), (219319119029/1000000000000 : ℚ)⟩,
  ⟨(1822181233/18805292300 : ℚ), (18014470847/183458493500 : ℚ), (-2770773931/1000000000 : ℚ), (244829656291/1000000000000 : ℚ)⟩,
  ⟨(18014470847/183458493500 : ℚ), (2887478564/29120337875 : ℚ), (-5908464849/2000000000 : ℚ), (131422063569/500000000000 : ℚ)⟩,
  ⟨(2887478564/29120337875 : ℚ), (5650442351/56646223100 : ℚ), (-191919611/62500000 : ℚ), (137197020697/500000000000 : ℚ)⟩,
  ⟨(5650442351/56646223100 : ℚ), (175195123/1752390925 : ℚ), (-31273599991/10000000000 : ℚ), (56008896749/200000000000 : ℚ)⟩,
  ⟨(175195123/1752390925 : ℚ), (1/10 : ℚ), (-7835923907/2500000000 : ℚ), (280745264237/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2164076093/10000000000 : ℚ), (-2/5 : ℚ), (367308307957/1000000000000 : ℚ)⟩,
  ⟨(2164076093/10000000000 : ℚ), (8726400009/40000000000 : ℚ), (-700780492/1752390925 : ℚ), (25745187368137744993/70095637000000000000 : ℚ)⟩,
  ⟨(8726400009/40000000000 : ℚ), (58080389/250000000 : ℚ), (-5650442351/14161555775 : ℚ), (103971321612028158127/283231115500000000000 : ℚ)⟩,
  ⟨(58080389/250000000 : ℚ), (2091535151/8000000000 : ℚ), (-11549914256/29120337875 : ℚ), (8538992998320414667/23296270300000000000 : ℚ)⟩,
  ⟨(2091535151/8000000000 : ℚ), (1229226069/4000000000 : ℚ), (-18014470847/45864623375 : ℚ), (134119874183285136103/366916987000000000000 : ℚ)⟩,
  ⟨(1229226069/4000000000 : ℚ), (3731250403/10000000000 : ℚ), (-1822181233/4701323075 : ℚ), (68439659243069519363/188052923000000000000 : ℚ)⟩,
  ⟨(3731250403/10000000000 : ℚ), (9286960261/20000000000 : ℚ), (-17390192584/45611486375 : ℚ), (22747844576686893607/62912395000000000000 : ℚ)⟩,
  ⟨(9286960261/20000000000 : ℚ), (23606451933/40000000000 : ℚ), (-47060905406/125813285275 : ℚ), (1802802491406055949803/5032531411000000000000 : ℚ)⟩,
  ⟨(23606451933/40000000000 : ℚ), (30652219399/40000000000 : ℚ), (-64508119637/176144186650 : ℚ), (2491444636523621953351/7045767466000000000000 : ℚ)⟩,
  ⟨(30652219399/40000000000 : ℚ), (20414169953/20000000000 : ℚ), (-91096349632/254403012675 : ℚ), (1767426922830372720947/5088060253500000000000 : ℚ)⟩,
  ⟨(20414169953/20000000000 : ℚ), (14056376321/10000000000 : ℚ), (-134699853991/384929134450 : ℚ), (2610236268836178063577/7698582689000000000000 : ℚ)⟩,
  ⟨(14056376321/10000000000 : ℚ), (40532989073/20000000000 : ℚ), (-12497070399/36530107150 : ℚ), (239671684265035877043/730602143000000000000 : ℚ)⟩,
  ⟨(40532989073/20000000000 : ℚ), (62423988347/20000000000 : ℚ), (-366551679443/1094549963700 : ℚ), (6861163427190887819227/21890999274000000000000 : ℚ)⟩,
  ⟨(62423988347/20000000000 : ℚ), (212585687293/40000000000 : ℚ), (-80076709001/243715862775 : ℚ), (409012540732478395979/1392662073000000000000 : ℚ)⟩,
  ⟨(212585687293/40000000000 : ℚ), (21434283167/2000000000 : ℚ), (-1747058457536/5402499401175 : ℚ), (7188794426584585363021/27012497005875000000000 : ℚ)⟩,
  ⟨(21434283167/2000000000 : ℚ), (1221770322377/40000000000 : ℚ), (-6335353479754/19827116475925 : ℚ), (1013293230923766469773/4506162835437500000000 : ℚ)⟩,
  ⟨(1221770322377/40000000000 : ℚ), (32/1 : ℚ), (-19793959480391/62406447205850 : ℚ), (34729664406374887606017/226932535294000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (287499/1000000 : ℚ)
  x := (171346854441/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(79221068551/1000000000000 : ℚ), (11166801875313/10000000000 : ℚ), (-44355384305447/500000000000 : ℚ), 10⟩,
    ⟨(9952420787/125000000000 : ℚ), (1181770322377/10000000000 : ℚ), (-953493068933/100000000000 : ℚ), 7⟩,
    ⟨(80400655427/1000000000000 : ℚ), (19434283167/500000000 : ℚ), (-399947151197/125000000000 : ℚ), 5⟩,
    ⟨(81534911441/1000000000000 : ℚ), (172585687293/10000000000 : ℚ), (-36312968801/25000000000 : ℚ), 4⟩,
    ⟨(20744636379/250000000000 : ℚ), (42423988347/5000000000 : ℚ), (-731828371031/1000000000000 : ℚ), 4⟩,
    ⟨(84676079603/1000000000000 : ℚ), (20532989073/5000000000 : ℚ), (-91319172897/250000000000 : ℚ), 3⟩,
    ⟨(4328113921/50000000000 : ℚ), (4056376321/2500000000 : ℚ), (-30565298961/200000000000 : ℚ), 3⟩,
    ⟨(88564656403/1000000000000 : ℚ), (414169953/5000000000 : ℚ), (-9063320407/500000000000 : ℚ), 3⟩,
    ⟨(9060626329/100000000000 : ℚ), (-9347780601/10000000000 : ℚ), (36484854409/500000000000 : ℚ), 3⟩,
    ⟨(46304320637/500000000000 : ℚ), (-16393548067/10000000000 : ℚ), (27495565691/200000000000 : ℚ), 2⟩,
    ⟨(94494840091/1000000000000 : ℚ), (-10713039739/5000000000 : ℚ), (184538733861/1000000000000 : ℚ), 2⟩,
    ⟨(48096187089/500000000000 : ℚ), (-6268749597/2500000000 : ℚ), (219319119029/1000000000000 : ℚ), 2⟩,
    ⟨(24409002063/250000000000 : ℚ), (-2770773931/1000000000 : ℚ), (244829656291/1000000000000 : ℚ), 2⟩,
    ⟨(49385132133/500000000000 : ℚ), (-5908464849/2000000000 : ℚ), (131422063569/500000000000 : ℚ), 2⟩,
    ⟨(99551553397/1000000000000 : ℚ), (-191919611/62500000 : ℚ), (137197020697/500000000000 : ℚ), 2⟩,
    ⟨(99949851143/1000000000000 : ℚ), (-31273599991/10000000000 : ℚ), (56008896749/200000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7835923907/2500000000 : ℚ), (280745264237/1000000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control30.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control30.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate30
