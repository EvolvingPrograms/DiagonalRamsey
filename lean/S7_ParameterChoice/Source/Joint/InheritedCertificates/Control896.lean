import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate896
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (9832939308125/13615007540376 : ℚ), (1906839498813/5000000000 : ℚ), (-275654335481841/1000000000000 : ℚ)⟩,
  ⟨(9832939308125/13615007540376 : ℚ), (19661889103147/27141456244900 : ℚ), (102481778133/2500000000 : ℚ), (-7457713194679/250000000000 : ℚ)⟩,
  ⟨(19661889103147/27141456244900 : ℚ), (2706027630223/3716870167200 : ℚ), (138512550083/10000000000 : ℚ), (-10168963675569/1000000000000 : ℚ)⟩,
  ⟨(2706027630223/3716870167200 : ℚ), (555424325709/757834420925 : ℚ), (64175146739/10000000000 : ℚ), (-4756908415123/1000000000000 : ℚ)⟩,
  ⟨(555424325709/757834420925 : ℚ), (111893449937/151443607590 : ℚ), (16930884951/5000000000 : ℚ), (-2535211112287/1000000000000 : ℚ)⟩,
  ⟨(111893449937/151443607590 : ℚ), (637852850269/855468289800 : ℚ), (18717409143/10000000000 : ℚ), (-1416276612917/1000000000000 : ℚ)⟩,
  ⟨(637852850269/855468289800 : ℚ), (21921867193/29113946100 : ℚ), (2032545249/2000000000 : ℚ), (-97302970331/125000000000 : ℚ)⟩,
  ⟨(21921867193/29113946100 : ℚ), (43044435673/56591824300 : ℚ), (4922215947/10000000000 : ℚ), (-191915076587/500000000000 : ℚ)⟩,
  ⟨(43044435673/56591824300 : ℚ), (43946779691/57203157900 : ℚ), (1526706489/10000000000 : ℚ), (-1961930299/15625000000 : ℚ)⟩,
  ⟨(43946779691/57203157900 : ℚ), (4910064339/6330575056 : ℚ), (-761419827/10000000000 : ℚ), (12555894907/250000000000 : ℚ)⟩,
  ⟨(4910064339/6330575056 : ℚ), (43395777787/55465741650 : ℚ), (-2344063591/10000000000 : ℚ), (172975188103/1000000000000 : ℚ)⟩,
  ⟨(43395777787/55465741650 : ℚ), (61109888551/77518154700 : ℚ), (-431672303/1250000000 : ℚ), (259766743677/1000000000000 : ℚ)⟩,
  ⟨(61109888551/77518154700 : ℚ), (41703358633/52575719600 : ℚ), (-4228559971/10000000000 : ℚ), (80219158057/250000000000 : ℚ)⟩,
  ⟨(41703358633/52575719600 : ℚ), (26070348571/32717654400 : ℚ), (-4754317167/10000000000 : ℚ), (362579990861/1000000000000 : ℚ)⟩,
  ⟨(26070348571/32717654400 : ℚ), (1255983127/1571828630 : ℚ), (-5081493711/10000000000 : ℚ), (48581292429/125000000000 : ℚ)⟩,
  ⟨(1255983127/1571828630 : ℚ), (774373293/968080700 : ℚ), (-2619338287/5000000000 : ℚ), (200605085351/500000000000 : ℚ)⟩,
  ⟨(774373293/968080700 : ℚ), (4/5 : ℚ), (-1314509547/2500000000 : ℚ), (50344864661/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (685490453/2000000000 : ℚ), (-16/25 : ℚ), (77764482781/125000000000 : ℚ)⟩,
  ⟨(685490453/2000000000 : ℚ), (1380661713/4000000000 : ℚ), (-774373293/1210100875 : ℚ), (1505583335858194583/2420201750000000000 : ℚ)⟩,
  ⟨(1380661713/4000000000 : ℚ), (2918506289/8000000000 : ℚ), (-2511966254/3929571575 : ℚ), (48872559804058705423/78591431500000000000 : ℚ)⟩,
  ⟨(2918506289/8000000000 : ℚ), (3245682833/8000000000 : ℚ), (-26070348571/40897068000 : ℚ), (203243751140674346027/327176544000000000000 : ℚ)⟩,
  ⟨(3245682833/8000000000 : ℚ), (3771440029/8000000000 : ℚ), (-41703358633/65719649500 : ℚ), (65196982902871086609/105151439200000000000 : ℚ)⟩,
  ⟨(3771440029/8000000000 : ℚ), (568327697/1000000000 : ℚ), (-61109888551/96897693375 : ℚ), (13691712114732037277/22148044200000000000 : ℚ)⟩,
  ⟨(568327697/1000000000 : ℚ), (5655936409/8000000000 : ℚ), (-86791555574/138664354125 : ℚ), (136554292213671305113/221862966600000000000 : ℚ)⟩,
  ⟨(5655936409/8000000000 : ℚ), (7238580173/8000000000 : ℚ), (-4910064339/7913218820 : ℚ), (968033394415005405967/1582643764000000000000 : ℚ)⟩,
  ⟨(7238580173/8000000000 : ℚ), (9526706489/8000000000 : ℚ), (-43946779691/71503947375 : ℚ), (69368352339221747831/114406315800000000000 : ℚ)⟩,
  ⟨(9526706489/8000000000 : ℚ), (12922215947/8000000000 : ℚ), (-43044435673/70739780375 : ℚ), (339013007188605324049/565918243000000000000 : ℚ)⟩,
  ⟨(12922215947/8000000000 : ℚ), (3632545249/1600000000 : ℚ), (-21921867193/36392432625 : ℚ), (171530997918774927557/291139461000000000000 : ℚ)⟩,
  ⟨(3632545249/1600000000 : ℚ), (26717409143/8000000000 : ℚ), (-637852850269/1069335362250 : ℚ), (4925978254307164816001/8554682898000000000000 : ℚ)⟩,
  ⟨(26717409143/8000000000 : ℚ), (20930884951/4000000000 : ℚ), (-223786899874/378609018975 : ℚ), (8446426863336518415907/15144360759000000000000 : ℚ)⟩,
  ⟨(20930884951/4000000000 : ℚ), (72175146739/8000000000 : ℚ), (-2221697302836/3789172104625 : ℚ), (16153371475108892145853/30313376837000000000000 : ℚ)⟩,
  ⟨(72175146739/8000000000 : ℚ), (146512550083/8000000000 : ℚ), (-2706027630223/4646087709000 : ℚ), (1088225384023549182773/2186394216000000000000 : ℚ)⟩,
  ⟨(146512550083/8000000000 : ℚ), (32/1 : ℚ), (-19661889103147/33926820306125 : ℚ), (11094548289235465469/24946191401562500000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (198708935621/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(360968556139/500000000000 : ℚ), (1906839498813/5000000000 : ℚ), (-275654335481841/1000000000000 : ℚ), 13⟩,
    ⟨(723433448711/1000000000000 : ℚ), (102481778133/2500000000 : ℚ), (-7457713194679/250000000000 : ℚ), 10⟩,
    ⟨(363184309103/500000000000 : ℚ), (138512550083/10000000000 : ℚ), (-10168963675569/1000000000000 : ℚ), 8⟩,
    ⟨(146125964769/200000000000 : ℚ), (64175146739/10000000000 : ℚ), (-4756908415123/1000000000000 : ℚ), 7⟩,
    ⟨(736053309887/1000000000000 : ℚ), (16930884951/5000000000 : ℚ), (-2535211112287/1000000000000 : ℚ), 7⟩,
    ⟨(742430654803/1000000000000 : ℚ), (18717409143/10000000000 : ℚ), (-1416276612917/1000000000000 : ℚ), 6⟩,
    ⟨(374758390403/500000000000 : ℚ), (2032545249/2000000000 : ℚ), (-97302970331/125000000000 : ℚ), 6⟩,
    ⟨(378519686023/500000000000 : ℚ), (4922215947/10000000000 : ℚ), (-191915076587/500000000000 : ℚ), 6⟩,
    ⟨(764709339561/1000000000000 : ℚ), (1526706489/10000000000 : ℚ), (-1961930299/15625000000 : ℚ), 5⟩,
    ⟨(386115965401/500000000000 : ℚ), (-761419827/10000000000 : ℚ), (12555894907/250000000000 : ℚ), 5⟩,
    ⟨(194829514201/250000000000 : ℚ), (-2344063591/10000000000 : ℚ), (172975188103/1000000000000 : ℚ), 5⟩,
    ⟨(19642385043/25000000000 : ℚ), (-431672303/1250000000 : ℚ), (259766743677/1000000000000 : ℚ), 5⟩,
    ⟨(395559443881/500000000000 : ℚ), (-4228559971/10000000000 : ℚ), (80219158057/250000000000 : ℚ), 5⟩,
    ⟨(397690046701/500000000000 : ℚ), (-4754317167/10000000000 : ℚ), (362579990861/1000000000000 : ℚ), 5⟩,
    ⟨(798315262897/1000000000000 : ℚ), (-5081493711/10000000000 : ℚ), (48581292429/125000000000 : ℚ), 5⟩,
    ⟨(799811599329/1000000000000 : ℚ), (-2619338287/5000000000 : ℚ), (200605085351/500000000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-1314509547/2500000000 : ℚ), (50344864661/125000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control896.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control896.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate896
