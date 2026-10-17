import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate796
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (11498969243053/62741967970725 : ℚ), (70166461129/250000000 : ℚ), (-12893376678183/250000000000 : ℚ)⟩,
  ⟨(11498969243053/62741967970725 : ℚ), (1840071848661/9937312648900 : ℚ), (296979726331/10000000000 : ℚ), (-139440743513/25000000000 : ℚ)⟩,
  ⟨(1840071848661/9937312648900 : ℚ), (59676727333/316976387100 : ℚ), (98233473353/10000000000 : ℚ), (-948743021599/500000000000 : ℚ)⟩,
  ⟨(59676727333/316976387100 : ℚ), (6968710978/36211309765 : ℚ), (22173743773/5000000000 : ℚ), (-882981678537/1000000000000 : ℚ)⟩,
  ⟨(6968710978/36211309765 : ℚ), (5177549399/26210423400 : ℚ), (22620701687/10000000000 : ℚ), (-464859019857/1000000000000 : ℚ)⟩,
  ⟨(5177549399/26210423400 : ℚ), (61335329709/301625214250 : ℚ), (11874428093/10000000000 : ℚ), (-126289747249/500000000000 : ℚ)⟩,
  ⟨(61335329709/301625214250 : ℚ), (77450411229/369414122900 : ℚ), (182560119/312500000 : ℚ), (-3247720877/25000000000 : ℚ)⟩,
  ⟨(77450411229/369414122900 : ℚ), (52106114297/240987870900 : ℚ), (2147782579/10000000000 : ℚ), (-52458423851/1000000000000 : ℚ)⟩,
  ⟨(52106114297/240987870900 : ℚ), (4585841338/20584546525 : ℚ), (-26209613/1000000000 : ℚ), (-176154777/500000000000 : ℚ)⟩,
  ⟨(4585841338/20584546525 : ℚ), (26614676089/116175535900 : ℚ), (-477214963/2500000000 : ℚ), (726688423/20000000000 : ℚ)⟩,
  ⟨(26614676089/116175535900 : ℚ), (19574179327/83328470100 : ℚ), (-3070615211/10000000000 : ℚ), (62949097239/1000000000000 : ℚ)⟩,
  ⟨(19574179327/83328470100 : ℚ), (572142697/2383946916 : ℚ), (-487987489/1250000000 : ℚ), (41261638283/500000000000 : ℚ)⟩,
  ⟨(572142697/2383946916 : ℚ), (5037505387/20630515750 : ℚ), (-4499886641/10000000000 : ℚ), (96826843991/1000000000000 : ℚ)⟩,
  ⟨(5037505387/20630515750 : ℚ), (6449922047/26083278600 : ℚ), (-1228124239/2500000000 : ℚ), (21380370953/200000000000 : ℚ)⟩,
  ⟨(6449922047/26083278600 : ℚ), (788280841/3163332975 : ℚ), (-2586664871/5000000000 : ℚ), (28337944203/250000000000 : ℚ)⟩,
  ⟨(788280841/3163332975 : ℚ), (32580409/130363800 : ℚ), (-5299863061/10000000000 : ℚ), (7281556261/62500000000 : ℚ)⟩,
  ⟨(32580409/130363800 : ℚ), (1/4 : ℚ), (-5315506717/10000000000 : ℚ), (29223966271/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1684493283/7000000000 : ℚ), (-7/40 : ℚ), (159008197159/1000000000000 : ℚ)⟩,
  ⟨(1684493283/7000000000 : ℚ), (1700136939/7000000000 : ℚ), (-32580409/186234000 : ℚ), (69090457294756113/434546000000000000 : ℚ)⟩,
  ⟨(1700136939/7000000000 : ℚ), (130476447/500000000 : ℚ), (-5517965887/31633329750 : ℚ), (335041553389888449/2108888650000000000 : ℚ)⟩,
  ⟨(130476447/500000000 : ℚ), (521875761/1750000000 : ℚ), (-45149454329/260832786000 : ℚ), (6891290085599589393/43472131000000000000 : ℚ)⟩,
  ⟨(521875761/1750000000 : ℚ), (2500113359/7000000000 : ℚ), (-35262537709/206305157500 : ℚ), (65140423627728697031/412610315000000000000 : ℚ)⟩,
  ⟨(2500113359/7000000000 : ℚ), (387012511/875000000 : ℚ), (-4004998879/23839469160 : ℚ), (46734027015094563007/297993364500000000000 : ℚ)⟩,
  ⟨(387012511/875000000 : ℚ), (3929384789/7000000000 : ℚ), (-137019255289/833284701000 : ℚ), (64684501087846048771/416642350500000000000 : ℚ)⟩,
  ⟨(3929384789/7000000000 : ℚ), (1272785037/1750000000 : ℚ), (-186302732623/1161755359000 : ℚ), (88855377224949482011/580877679500000000000 : ℚ)⟩,
  ⟨(1272785037/1750000000 : ℚ), (673790387/700000000 : ℚ), (-16050444683/102922732625 : ℚ), (61652873548922056123/411690930500000000000 : ℚ)⟩,
  ⟨(673790387/700000000 : ℚ), (9147782579/7000000000 : ℚ), (-52106114297/344268387000 : ℚ), (2366465985670653673/16282964250000000000 : ℚ)⟩,
  ⟨(9147782579/7000000000 : ℚ), (57330017/31250000 : ℚ), (-542152878603/3694141229000 : ℚ), (64338837027587015839/461767653625000000000 : ℚ)⟩,
  ⟨(57330017/31250000 : ℚ), (18874428093/7000000000 : ℚ), (-429347307963/3016252142500 : ℚ), (98956457180451913243/754063035625000000000 : ℚ)⟩,
  ⟨(18874428093/7000000000 : ℚ), (29620701687/7000000000 : ℚ), (-5177549399/37443462000 : ℚ), (420281718665004821/3494723120000000000 : ℚ)⟩,
  ⟨(29620701687/7000000000 : ℚ), (25673743773/3500000000 : ℚ), (-24390488423/181056548825 : ℚ), (761731387425977796999/7242261953000000000000 : ℚ)⟩,
  ⟨(25673743773/3500000000 : ℚ), (105233473353/7000000000 : ℚ), (-417737091331/3169763871000 : ℚ), (88468863378578852697/1056587957000000000000 : ℚ)⟩,
  ⟨(105233473353/7000000000 : ℚ), (32/1 : ℚ), (-1840071848661/14196160927000 : ℚ), (5078031271845820158511/99373126489000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (290649882071/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(22879667997/125000000000 : ℚ), (70166461129/250000000 : ℚ), (-12893376678183/250000000000 : ℚ), 11⟩,
    ⟨(2880014177/15625000000 : ℚ), (296979726331/10000000000 : ℚ), (-139440743513/25000000000 : ℚ), 8⟩,
    ⟨(46709676853/250000000000 : ℚ), (98233473353/10000000000 : ℚ), (-948743021599/500000000000 : ℚ), 7⟩,
    ⟨(190493986583/1000000000000 : ℚ), (22173743773/5000000000 : ℚ), (-882981678537/1000000000000 : ℚ), 6⟩,
    ⟨(12196642157/62500000000 : ℚ), (22620701687/10000000000 : ℚ), (-464859019857/1000000000000 : ℚ), 5⟩,
    ⟨(200616786383/1000000000000 : ℚ), (11874428093/10000000000 : ℚ), (-126289747249/500000000000 : ℚ), 5⟩,
    ⟨(206695293493/1000000000000 : ℚ), (182560119/312500000 : ℚ), (-3247720877/25000000000 : ℚ), 4⟩,
    ⟨(213148202223/1000000000000 : ℚ), (2147782579/10000000000 : ℚ), (-52458423851/1000000000000 : ℚ), 4⟩,
    ⟨(54931882727/250000000000 : ℚ), (-26209613/1000000000 : ℚ), (-176154777/500000000000 : ℚ), 4⟩,
    ⟨(226180439637/1000000000000 : ℚ), (-477214963/2500000000 : ℚ), (726688423/20000000000 : ℚ), 4⟩,
    ⟨(232258946747/1000000000000 : ℚ), (-3070615211/10000000000 : ℚ), (62949097239/1000000000000 : ℚ), 4⟩,
    ⟨(118864729309/500000000000 : ℚ), (-487987489/1250000000 : ℚ), (41261638283/500000000000 : ℚ), 4⟩,
    ⟨(242381746547/1000000000000 : ℚ), (-4499886641/10000000000 : ℚ), (96826843991/1000000000000 : ℚ), 4⟩,
    ⟨(123018512859/500000000000 : ℚ), (-1228124239/2500000000 : ℚ), (21380370953/200000000000 : ℚ), 4⟩,
    ⟨(124277412901/500000000000 : ℚ), (-2586664871/5000000000 : ℚ), (28337944203/250000000000 : ℚ), 4⟩,
    ⟨(124919194577/500000000000 : ℚ), (-5299863061/10000000000 : ℚ), (7281556261/62500000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5315506717/10000000000 : ℚ), (29223966271/250000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control796.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control796.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate796
