import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate785
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (57639477937661/262383181428200 : ℚ), (1467241282151/5000000000 : ℚ), (-8079248146853/125000000000 : ℚ)⟩,
  ⟨(57639477937661/262383181428200 : ℚ), (4611645262259/20777234690600 : ℚ), (15532537501/500000000 : ℚ), (-6994507237163/1000000000000 : ℚ)⟩,
  ⟨(4611645262259/20777234690600 : ℚ), (1271158060183/5632339736800 : ℚ), (51439201557/5000000000 : ℚ), (-297857746863/125000000000 : ℚ)⟩,
  ⟨(1271158060183/5632339736800 : ℚ), (65469440118/283764852125 : ℚ), (23277502873/5000000000 : ℚ), (-1111703914721/1000000000000 : ℚ)⟩,
  ⟨(65469440118/283764852125 : ℚ), (265759678017/1122074432800 : ℚ), (2981727197/1250000000 : ℚ), (-587948393777/1000000000000 : ℚ)⟩,
  ⟨(265759678017/1122074432800 : ℚ), (38357278448/157303571075 : ℚ), (394783539/312500000 : ℚ), (-4027358947/12500000000 : ℚ)⟩,
  ⟨(38357278448/157303571075 : ℚ), (96732831467/384722435400 : ℚ), (1268186081/2000000000 : ℚ), (-10547475123/62500000000 : ℚ)⟩,
  ⟨(96732831467/384722435400 : ℚ), (64955042489/250469129200 : ℚ), (2493706051/10000000000 : ℚ), (-72026770501/1000000000000 : ℚ)⟩,
  ⟨(64955042489/250469129200 : ℚ), (45627641379/170741386300 : ℚ), (-10985241/10000000000 : ℚ), (-1767932003/250000000000 : ℚ)⟩,
  ⟨(45627641379/170741386300 : ℚ), (16507890843/60066351250 : ℚ), (-13424993/78125000 : ℚ), (38555913367/1000000000000 : ℚ)⟩,
  ⟨(16507890843/60066351250 : ℚ), (4843646463/17186646160 : ℚ), (-2919726129/10000000000 : ℚ), (71571695053/1000000000000 : ℚ)⟩,
  ⟨(4843646463/17186646160 : ℚ), (17653701557/61306340300 : ℚ), (-3779058437/10000000000 : ℚ), (11973740921/125000000000 : ℚ)⟩,
  ⟨(17653701557/61306340300 : ℚ), (6204388137/21176096350 : ℚ), (-54901523/125000000 : ℚ), (4537745157/40000000000 : ℚ)⟩,
  ⟨(6204388137/21176096350 : ℚ), (3965723491/13364859900 : ℚ), (-4815643767/10000000000 : ℚ), (125852405199/1000000000000 : ℚ)⟩,
  ⟨(3965723491/13364859900 : ℚ), (3873600653/12953946300 : ℚ), (-1016588193/2000000000 : ℚ), (133783852181/1000000000000 : ℚ)⟩,
  ⟨(3873600653/12953946300 : ℚ), (60015097/200115250 : ℚ), (-1303120107/2500000000 : ℚ), (68828726417/500000000000 : ℚ)⟩,
  ⟨(60015097/200115250 : ℚ), (3/10 : ℚ), (-326780603/625000000 : ℚ), (13813757361/100000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (110719397/437500000 : ℚ), (-21/100 : ℚ), (19128288417/100000000000 : ℚ)⟩,
  ⟨(110719397/437500000 : ℚ), (446879893/1750000000 : ℚ), (-420105679/2001152500 : ℚ), (382751716385369669/2001152500000000000 : ℚ)⟩,
  ⟨(446879893/1750000000 : ℚ), (383411807/1400000000 : ℚ), (-27115204571/129539463000 : ℚ), (12378104749706834329/64769731500000000000 : ℚ)⟩,
  ⟨(383411807/1400000000 : ℚ), (2184356233/7000000000 : ℚ), (-3965723491/19092657000 : ℚ), (6370637615386758901/33412149750000000000 : ℚ)⟩,
  ⟨(2184356233/7000000000 : ℚ), (32598477/87500000 : ℚ), (-43430716959/211760963500 : ℚ), (16081288193095942863/84704385400000000000 : ℚ)⟩,
  ⟨(32598477/87500000 : ℚ), (460134509/1000000000 : ℚ), (-123575910899/613063403000 : ℚ), (23117367986217605379/122612680600000000000 : ℚ)⟩,
  ⟨(460134509/1000000000 : ℚ), (4080273871/7000000000 : ℚ), (-33905525241/171866461600 : ℚ), (160320890414069013689/859332308000000000000 : ℚ)⟩,
  ⟨(4080273871/7000000000 : ℚ), (41262507/54687500 : ℚ), (-115555235901/600663512500 : ℚ), (220694442836253833831/1201327025000000000000 : ℚ)⟩,
  ⟨(41262507/54687500 : ℚ), (6989014759/7000000000 : ℚ), (-319393489653/1707413863000 : ℚ), (61363578514627176461/341482772600000000000 : ℚ)⟩,
  ⟨(6989014759/7000000000 : ℚ), (9493706051/7000000000 : ℚ), (-454685297423/2504691292000 : ℚ), (436259255056044223647/2504691292000000000000 : ℚ)⟩,
  ⟨(9493706051/7000000000 : ℚ), (2668186081/1400000000 : ℚ), (-677129820269/3847224354000 : ℚ), (641249921817205125463/3847224354000000000000 : ℚ)⟩,
  ⟨(2668186081/1400000000 : ℚ), (613533539/218750000 : ℚ), (-19178639224/112359693625 : ℚ), (61564225468088608171/393258927687500000000 : ℚ)⟩,
  ⟨(613533539/218750000 : ℚ), (3856727197/875000000 : ℚ), (-1860317746119/11220744328000 : ℚ), (50077563123844755623/350648260250000000000 : ℚ)⟩,
  ⟨(3856727197/875000000 : ℚ), (26777502873/3500000000 : ℚ), (-229143040413/1418824260625 : ℚ), (1406365088124044646827/11350594085000000000000 : ℚ)⟩,
  ⟨(26777502873/3500000000 : ℚ), (54939201557/3500000000 : ℚ), (-1271158060183/8046199624000 : ℚ), (546193587278271095719/5632339736800000000000 : ℚ)⟩,
  ⟨(54939201557/3500000000 : ℚ), (32/1 : ℚ), (-32281516835813/207772346906000 : ℚ), (5813696133196249113751/103886173453000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (535300175571/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(219391888373/1000000000000 : ℚ), (1467241282151/5000000000 : ℚ), (-8079248146853/125000000000 : ℚ), 11⟩,
    ⟨(220937012537/1000000000000 : ℚ), (15532537501/500000000 : ℚ), (-6994507237163/1000000000000 : ℚ), 8⟩,
    ⟨(223967882611/1000000000000 : ℚ), (51439201557/5000000000 : ℚ), (-297857746863/125000000000 : ℚ), 7⟩,
    ⟨(228368023957/1000000000000 : ℚ), (23277502873/5000000000 : ℚ), (-1111703914721/1000000000000 : ℚ), 6⟩,
    ⟨(58492085403/250000000000 : ℚ), (2981727197/1250000000 : ℚ), (-587948393777/1000000000000 : ℚ), 5⟩,
    ⟨(240553618507/1000000000000 : ℚ), (394783539/312500000 : ℚ), (-4027358947/12500000000 : ℚ), 5⟩,
    ⟨(123935393073/500000000000 : ℚ), (1268186081/2000000000 : ℚ), (-10547475123/62500000000 : ℚ), 4⟩,
    ⟨(255638649879/1000000000000 : ℚ), (2493706051/10000000000 : ℚ), (-72026770501/1000000000000 : ℚ), 4⟩,
    ⟨(263558695059/1000000000000 : ℚ), (-10985241/10000000000 : ℚ), (-1767932003/250000000000 : ℚ), 4⟩,
    ⟨(33915819849/125000000000 : ℚ), (-13424993/78125000 : ℚ), (38555913367/1000000000000 : ℚ), 4⟩,
    ⟨(27864372643/100000000000 : ℚ), (-2919726129/10000000000 : ℚ), (71571695053/1000000000000 : ℚ), 4⟩,
    ⟨(142614501663/500000000000 : ℚ), (-3779058437/10000000000 : ℚ), (11973740921/125000000000 : ℚ), 4⟩,
    ⟨(14541466049/50000000000 : ℚ), (-54901523/125000000 : ℚ), (4537745157/40000000000 : ℚ), 4⟩,
    ⟨(147614731163/500000000000 : ℚ), (-4815643767/10000000000 : ℚ), (125852405199/1000000000000 : ℚ), 3⟩,
    ⟨(298260332401/1000000000000 : ℚ), (-1016588193/2000000000 : ℚ), (133783852181/1000000000000 : ℚ), 3⟩,
    ⟨(59961091313/200000000000 : ℚ), (-1303120107/2500000000 : ℚ), (68828726417/500000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-326780603/625000000 : ℚ), (13813757361/100000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control785.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control785.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate785
