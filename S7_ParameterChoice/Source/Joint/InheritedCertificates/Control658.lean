import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate658
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (4327841151172/27673712035125 : ℚ), (9673433471/19531250 : ℚ), (-15522149528271/200000000000 : ℚ)⟩,
  ⟨(4327841151172/27673712035125 : ℚ), (554042359129/3514908601780 : ℚ), (131251002883/2500000000 : ℚ), (-8365289222603/1000000000000 : ℚ)⟩,
  ⟨(554042359129/3514908601780 : ℚ), (1527419463193/9567090971900 : ℚ), (86756575677/5000000000 : ℚ), (-2824865631313/1000000000000 : ℚ)⟩,
  ⟨(1527419463193/9567090971900 : ℚ), (1622727013/9993139000 : ℚ), (15568448327/2000000000 : ℚ), (-32436154203/25000000000 : ℚ)⟩,
  ⟨(1622727013/9993139000 : ℚ), (26646407966/160798725825 : ℚ), (7813772463/2000000000 : ℚ), (-166957021769/250000000000 : ℚ)⟩,
  ⟨(26646407966/160798725825 : ℚ), (184877768107/1090648936100 : ℚ), (1235813451/625000000 : ℚ), (-87017797871/250000000000 : ℚ)⟩,
  ⟨(184877768107/1090648936100 : ℚ), (116818030169/672779993200 : ℚ), (1773305171/2000000000 : ℚ), (-163193423377/1000000000000 : ℚ)⟩,
  ⟨(116818030169/672779993200 : ℚ), (39336749749/221088128850 : ℚ), (2138725923/10000000000 : ℚ), (-5796924151/125000000000 : ℚ)⟩,
  ⟨(39336749749/221088128850 : ℚ), (11092450493/60876576540 : ℚ), (-1141518327/5000000000 : ℚ), (3229810629/100000000000 : ℚ)⟩,
  ⟨(11092450493/60876576540 : ℚ), (1007303679/5405856640 : ℚ), (-5326865481/10000000000 : ℚ), (17552071751/200000000000 : ℚ)⟩,
  ⟨(1007303679/5405856640 : ℚ), (29676390173/156080646400 : ℚ), (-7489208137/10000000000 : ℚ), (25610501183/200000000000 : ℚ)⟩,
  ⟨(29676390173/156080646400 : ℚ), (4343090937/22449085940 : ℚ), (-9050014601/10000000000 : ℚ), (19716112011/125000000000 : ℚ)⟩,
  ⟨(4343090937/22449085940 : ℚ), (15314023129/78055062600 : ℚ), (-5086234449/5000000000 : ℚ), (179444350773/1000000000000 : ℚ)⟩,
  ⟨(15314023129/78055062600 : ℚ), (2453238561/12376104625 : ℚ), (-2738254881/2500000000 : ℚ), (97379186951/500000000000 : ℚ)⟩,
  ⟨(2453238561/12376104625 : ℚ), (959996889/4812672460 : ℚ), (-11448063709/10000000000 : ℚ), (102285664073/500000000000 : ℚ)⟩,
  ⟨(959996889/4812672460 : ℚ), (595297711/2977275300 : ℚ), (-2922174333/2500000000 : ℚ), (209371312591/1000000000000 : ℚ)⟩,
  ⟨(595297711/2977275300 : ℚ), (1/5 : ℚ), (-2343694017/2000000000 : ℚ), (104983305151/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (218768661/1000000000 : ℚ), (-3/10 : ℚ), (137798604301/500000000000 : ℚ)⟩,
  ⟨(218768661/1000000000 : ℚ), (275941889/1250000000 : ℚ), (-595297711/1984850200 : ℚ), (2734923757915408657/9924251000000000000 : ℚ)⟩,
  ⟨(275941889/1250000000 : ℚ), (3551936291/15000000000 : ℚ), (-2879990667/9625344920 : ℚ), (66275978800124846453/240633623000000000000 : ℚ)⟩,
  ⟨(3551936291/15000000000 : ℚ), (337248373/1250000000 : ℚ), (-7359715683/24752209250 : ℚ), (68063417358795100007/247522092500000000000 : ℚ)⟩,
  ⟨(337248373/1250000000 : ℚ), (804588517/2500000000 : ℚ), (-15314023129/52036708400 : ℚ), (8916430136667649669/32522942750000000000 : ℚ)⟩,
  ⟨(804588517/2500000000 : ℚ), (5949985399/15000000000 : ℚ), (-13029272811/44898171880 : ℚ), (306250115483438234451/1122454297000000000000 : ℚ)⟩,
  ⟨(5949985399/15000000000 : ℚ), (7510791863/15000000000 : ℚ), (-89029170519/312161292800 : ℚ), (422758368798111796859/1560806464000000000000 : ℚ)⟩,
  ⟨(7510791863/15000000000 : ℚ), (3224378173/5000000000 : ℚ), (-3021911037/10811713280 : ℚ), (14487983169495584233/54058566400000000000 : ℚ)⟩,
  ⟨(3224378173/5000000000 : ℚ), (2119493891/2500000000 : ℚ), (-11092450493/40584384360 : ℚ), (6696844488891793081/25365240225000000000 : ℚ)⟩,
  ⟨(2119493891/2500000000 : ℚ), (5712908641/5000000000 : ℚ), (-39336749749/147392085900 : ℚ), (190550427853117618273/736960429500000000000 : ℚ)⟩,
  ⟨(5712908641/5000000000 : ℚ), (4773305171/3000000000 : ℚ), (-350454090507/1345559986400 : ℚ), (1690107834659980709131/6727799932000000000000 : ℚ)⟩,
  ⟨(4773305171/3000000000 : ℚ), (724437817/312500000 : ℚ), (-554633304321/2181297872200 : ℚ), (658130674173497678597/2726622340250000000000 : ℚ)⟩,
  ⟨(724437817/312500000 : ℚ), (3604590821/1000000000 : ℚ), (-13323203983/53599575275 : ℚ), (122293969594431233971/535995752750000000000 : ℚ)⟩,
  ⟨(3604590821/1000000000 : ℚ), (18568448327/3000000000 : ℚ), (-4868181039/19986278000 : ℚ), (323107914125884607/1537406000000000000 : ℚ)⟩,
  ⟨(18568448327/3000000000 : ℚ), (31418858559/2500000000 : ℚ), (-4582258389579/19134181943800 : ℚ), (64295242415619922481/347894217160000000000 : ℚ)⟩,
  ⟨(31418858559/2500000000 : ℚ), (32/1 : ℚ), (-1662127077387/7029817203560 : ℚ), (25764130196324312276473/175745430089000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (444259493291/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(39058363013/250000000000 : ℚ), (9673433471/19531250 : ℚ), (-15522149528271/200000000000 : ℚ), 11⟩,
    ⟨(157072384381/1000000000000 : ℚ), (131251002883/2500000000 : ℚ), (-8365289222603/1000000000000 : ℚ), 8⟩,
    ⟨(7935900467/50000000000 : ℚ), (86756575677/5000000000 : ℚ), (-2824865631313/1000000000000 : ℚ), 7⟩,
    ⟨(80553543243/500000000000 : ℚ), (15568448327/2000000000 : ℚ), (-32436154203/25000000000 : ℚ), 6⟩,
    ⟨(82073902461/500000000000 : ℚ), (7813772463/2000000000 : ℚ), (-166957021769/250000000000 : ℚ), 5⟩,
    ⟨(33544662309/200000000000 : ℚ), (1235813451/625000000 : ℚ), (-87017797871/250000000000 : ℚ), 5⟩,
    ⟨(4292405041/25000000000 : ℚ), (1773305171/2000000000 : ℚ), (-163193423377/1000000000000 : ℚ), 4⟩,
    ⟨(17591379927/100000000000 : ℚ), (2138725923/10000000000 : ℚ), (-5796924151/125000000000 : ℚ), 4⟩,
    ⟨(90107012261/500000000000 : ℚ), (-1141518327/5000000000 : ℚ), (3229810629/100000000000 : ℚ), 4⟩,
    ⟨(184431622151/1000000000000 : ℚ), (-5326865481/10000000000 : ℚ), (17552071751/200000000000 : ℚ), 4⟩,
    ⟨(188404512247/1000000000000 : ℚ), (-7489208137/10000000000 : ℚ), (25610501183/200000000000 : ℚ), 4⟩,
    ⟨(19198001887/100000000000 : ℚ), (-9050014601/10000000000 : ℚ), (19716112011/125000000000 : ℚ), 3⟩,
    ⟨(97510368653/500000000000 : ℚ), (-5086234449/5000000000 : ℚ), (179444350773/1000000000000 : ℚ), 3⟩,
    ⟨(49352453613/250000000000 : ℚ), (-2738254881/2500000000 : ℚ), (97379186951/500000000000 : ℚ), 3⟩,
    ⟨(199055439411/1000000000000 : ℚ), (-11448063709/10000000000 : ℚ), (102285664073/500000000000 : ℚ), 3⟩,
    ⟨(9994718587/50000000000 : ℚ), (-2922174333/2500000000 : ℚ), (209371312591/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-2343694017/2000000000 : ℚ), (104983305151/500000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control658.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control658.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate658
