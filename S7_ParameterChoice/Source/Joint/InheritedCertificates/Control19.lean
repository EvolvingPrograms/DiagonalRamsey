import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate19
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2774184922961/72532082729525 : ℚ), (12978050026181/10000000000 : ℚ), (-777301808363/15625000000 : ℚ)⟩,
  ⟨(2774184922961/72532082729525 : ℚ), (1775480930321/46019178358850 : ℚ), (1372916789457/10000000000 : ℚ), (-335022310491/62500000000 : ℚ)⟩,
  ⟨(1775480930321/46019178358850 : ℚ), (978391801193/25005220574800 : ℚ), (11313330557/250000000 : ℚ), (-904697553607/500000000000 : ℚ)⟩,
  ⟨(978391801193/25005220574800 : ℚ), (201390183557/5052029756500 : ℚ), (50620254133/2500000000 : ℚ), (-831003306021/1000000000000 : ℚ)⟩,
  ⟨(201390183557/5052029756500 : ℚ), (204116241227/5007747241200 : ℚ), (50720210701/5000000000 : ℚ), (-428222938907/1000000000000 : ℚ)⟩,
  ⟨(204116241227/5007747241200 : ℚ), (117672383907/2816227682200 : ℚ), (5136294899/1000000000 : ℚ), (-2801333721/12500000000 : ℚ)⟩,
  ⟨(117672383907/2816227682200 : ℚ), (74093693473/1727339740400 : ℚ), (2900084021/1250000000 : ℚ), (-106434313773/1000000000000 : ℚ)⟩,
  ⟨(74093693473/1727339740400 : ℚ), (12425981567/282086178750 : ℚ), (1481818691/2500000000 : ℚ), (-323406203/10000000000 : ℚ)⟩,
  ⟨(12425981567/282086178750 : ℚ), (6977227459/154343001500 : ℚ), (-2678086193/5000000000 : ℚ), (1085206623/62500000000 : ℚ)⟩,
  ⟨(6977227459/154343001500 : ℚ), (969940453/20941275550 : ℚ), (-13073322461/10000000000 : ℚ), (52249443263/1000000000000 : ℚ)⟩,
  ⟨(969940453/20941275550 : ℚ), (9235241509/195079025650 : ℚ), (-2314756763/1250000000 : ℚ), (77467895041/1000000000000 : ℚ)⟩,
  ⟨(9235241509/195079025650 : ℚ), (610654231/12659136950 : ℚ), (-22419634617/10000000000 : ℚ), (95938378059/1000000000000 : ℚ)⟩,
  ⟨(610654231/12659136950 : ℚ), (9418013733/192305119000 : ℚ), (-12602322373/5000000000 : ℚ), (109372771141/1000000000000 : ℚ)⟩,
  ⟨(9418013733/192305119000 : ℚ), (75053051/1515574980 : ℚ), (-423870249/156250000 : ℚ), (59395392437/500000000000 : ℚ)⟩,
  ⟨(75053051/1515574980 : ℚ), (2926833049/58703542600 : ℚ), (-354251949/125000000 : ℚ), (62397514477/500000000000 : ℚ)⟩,
  ⟨(2926833049/58703542600 : ℚ), (120829043/2417269400 : ℚ), (-14463595673/5000000000 : ℚ), (127721862003/1000000000000 : ℚ)⟩,
  ⟨(120829043/2417269400 : ℚ), (1/20 : ℚ), (-7249927357/2500000000 : ℚ), (32021087283/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2750072643/10000000000 : ℚ), (-1/5 : ℚ), (22885725249/125000000000 : ℚ)⟩,
  ⟨(2750072643/10000000000 : ℚ), (5536404327/20000000000 : ℚ), (-120829043/604317350 : ℚ), (1106324590073421051/6043173500000000000 : ℚ)⟩,
  ⟨(5536404327/20000000000 : ℚ), (145748051/500000000 : ℚ), (-2926833049/14675885650 : ℚ), (26846379996056181081/146758856500000000000 : ℚ)⟩,
  ⟨(145748051/500000000 : ℚ), (201129751/625000000 : ℚ), (-75053051/378893745 : ℚ), (6916172768747169473/37889374500000000000 : ℚ)⟩,
  ⟨(201129751/625000000 : ℚ), (7397677627/20000000000 : ℚ), (-9418013733/48076279750 : ℚ), (87418074165770852743/480762797500000000000 : ℚ)⟩,
  ⟨(7397677627/20000000000 : ℚ), (17580365383/40000000000 : ℚ), (-1221308462/6329568475 : ℚ), (45760990339504894547/253182739000000000000 : ℚ)⟩,
  ⟨(17580365383/40000000000 : ℚ), (2685243237/5000000000 : ℚ), (-18470483018/97539512825 : ℚ), (699029146540757730161/3901580513000000000000 : ℚ)⟩,
  ⟨(2685243237/5000000000 : ℚ), (26926677539/40000000000 : ℚ), (-1939880906/10470637775 : ℚ), (74117947394016652727/418825511000000000000 : ℚ)⟩,
  ⟨(26926677539/40000000000 : ℚ), (17321913807/20000000000 : ℚ), (-6977227459/38585750375 : ℚ), (134258456451951541173/771715007500000000000 : ℚ)⟩,
  ⟨(17321913807/20000000000 : ℚ), (11481818691/10000000000 : ℚ), (-24851963134/141043089375 : ℚ), (79910508275281914823/470143631250000000000 : ℚ)⟩,
  ⟨(11481818691/10000000000 : ℚ), (7900084021/5000000000 : ℚ), (-74093693473/431834935100 : ℚ), (711072257920073678543/4318349351000000000000 : ℚ)⟩,
  ⟨(7900084021/5000000000 : ℚ), (9136294899/4000000000 : ℚ), (-117672383907/704056920550 : ℚ), (443954115069851273097/2816227682200000000000 : ℚ)⟩,
  ⟨(9136294899/4000000000 : ℚ), (70720210701/20000000000 : ℚ), (-204116241227/1251936810300 : ℚ), (247532158827943720219/1669249080400000000000 : ℚ)⟩,
  ⟨(70720210701/20000000000 : ℚ), (60620254133/10000000000 : ℚ), (-201390183557/1263007439125 : ℚ), (6850762130787755425459/50520297565000000000000 : ℚ)⟩,
  ⟨(60620254133/10000000000 : ℚ), (12313330557/1000000000 : ℚ), (-978391801193/6251305143700 : ℚ), (1840451804088861944623/15628262859250000000000 : ℚ)⟩,
  ⟨(12313330557/1000000000 : ℚ), (32/1 : ℚ), (-3550961860642/23009589179425 : ℚ), (41814582102578441594441/460191783588500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (24999/1000000 : ℚ)
  x := (1770294371/100000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(7641201587/200000000000 : ℚ), (12978050026181/10000000000 : ℚ), (-777301808363/15625000000 : ℚ), 9⟩,
    ⟨(19216039627/500000000000 : ℚ), (1372916789457/10000000000 : ℚ), (-335022310491/62500000000 : ℚ), 5⟩,
    ⟨(38875534099/1000000000000 : ℚ), (11313330557/250000000 : ℚ), (-904697553607/500000000000 : ℚ), 4⟩,
    ⟨(39519330747/1000000000000 : ℚ), (50620254133/2500000000 : ℚ), (-831003306021/1000000000000 : ℚ), 3⟩,
    ⟨(5042341057/125000000000 : ℚ), (50720210701/5000000000 : ℚ), (-428222938907/1000000000000 : ℚ), 3⟩,
    ⟨(41302238231/1000000000000 : ℚ), (5136294899/1000000000 : ℚ), (-2801333721/12500000000 : ℚ), 2⟩,
    ⟨(4237283293/100000000000 : ℚ), (2900084021/1250000000 : ℚ), (-106434313773/1000000000000 : ℚ), 2⟩,
    ⟨(21754685101/500000000000 : ℚ), (1481818691/2500000000 : ℚ), (-323406203/10000000000 : ℚ), 2⟩,
    ⟨(22334086777/500000000000 : ℚ), (-2678086193/5000000000 : ℚ), (1085206623/62500000000 : ℚ), 2⟩,
    ⟨(22902355413/500000000000 : ℚ), (-13073322461/10000000000 : ℚ), (52249443263/1000000000000 : ℚ), 1⟩,
    ⟨(1875012221/40000000000 : ℚ), (-2314756763/1250000000 : ℚ), (77467895041/1000000000000 : ℚ), 1⟩,
    ⟨(478388153/10000000000 : ℚ), (-22419634617/10000000000 : ℚ), (95938378059/1000000000000 : ℚ), 1⟩,
    ⟨(48658213009/1000000000000 : ℚ), (-12602322373/5000000000 : ℚ), (109372771141/1000000000000 : ℚ), 1⟩,
    ⟨(49302009657/1000000000000 : ℚ), (-423870249/156250000 : ℚ), (59395392437/500000000000 : ℚ), 1⟩,
    ⟨(24872732251/500000000000 : ℚ), (-354251949/125000000 : ℚ), (62397514477/500000000000 : ℚ), 1⟩,
    ⟨(49971535821/1000000000000 : ℚ), (-14463595673/5000000000 : ℚ), (127721862003/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-7249927357/2500000000 : ℚ), (32021087283/250000000000 : ℚ), 1⟩]
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
theorem certOK : JointInheritedControls.control19.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control19.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate19
