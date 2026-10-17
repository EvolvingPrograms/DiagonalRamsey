import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate719
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (54250838537899/224967744319700 : ℚ), (1006806126249/2000000000 : ℚ), (-121608947927679/1000000000000 : ℚ)⟩,
  ⟨(54250838537899/224967744319700 : ℚ), (8680852081397/35750087548100 : ℚ), (534675744851/10000000000 : ℚ), (-13107270851881/1000000000000 : ℚ)⟩,
  ⟨(8680852081397/35750087548100 : ℚ), (1196276420421/4871704899050 : ℚ), (17717486937/1000000000 : ℚ), (-1106604692621/250000000000 : ℚ)⟩,
  ⟨(1196276420421/4871704899050 : ℚ), (164257103181/659029684400 : ℚ), (79740771389/10000000000 : ℚ), (-1016932964821/500000000000 : ℚ)⟩,
  ⟨(164257103181/659029684400 : ℚ), (5432800356/21411527375 : ℚ), (1607959613/400000000 : ℚ), (-262080827639/250000000000 : ℚ)⟩,
  ⟨(5432800356/21411527375 : ℚ), (288316000557/1113797789500 : ℚ), (1025019257/500000000 : ℚ), (-137126419451/250000000000 : ℚ)⟩,
  ⟨(288316000557/1113797789500 : ℚ), (181564918537/686648843300 : ℚ), (1872481449/2000000000 : ℚ), (-260189677247/1000000000000 : ℚ)⟩,
  ⟨(181564918537/686648843300 : ℚ), (13527362677/50062702500 : ℚ), (623979703/2500000000 : ℚ), (-7862475871/100000000000 : ℚ)⟩,
  ⟨(13527362677/50062702500 : ℚ), (28463201733/103129271300 : ℚ), (-2009724413/10000000000 : ℚ), (43121505383/1000000000000 : ℚ)⟩,
  ⟨(28463201733/103129271300 : ℚ), (6169687029/21912541610 : ℚ), (-637950319/1250000000 : ℚ), (64255555291/500000000000 : ℚ)⟩,
  ⟨(6169687029/21912541610 : ℚ), (11300430998/39417351025 : ℚ), (-7294856713/10000000000 : ℚ), (23775997609/125000000000 : ℚ)⟩,
  ⟨(11300430998/39417351025 : ℚ), (8230243349/28265202425 : ℚ), (-4435775377/5000000000 : ℚ), (7356553277/31250000000 : ℚ)⟩,
  ⟨(8230243349/28265202425 : ℚ), (23128510311/78437599900 : ℚ), (-10002158851/10000000000 : ℚ), (13416533913/50000000000 : ℚ)⟩,
  ⟨(23128510311/78437599900 : ℚ), (14780052599/49663667000 : ℚ), (-215730697/200000000 : ℚ), (291459188571/1000000000000 : ℚ)⟩,
  ⟨(14780052599/49663667000 : ℚ), (7217932709/24116979200 : ℚ), (-35259911/31250000 : ℚ), (30623924117/100000000000 : ℚ)⟩,
  ⟨(7217932709/24116979200 : ℚ), (35785409/119313060 : ℚ), (-180067833/156250000 : ℚ), (313457173879/1000000000000 : ℚ)⟩,
  ⟨(35785409/119313060 : ℚ), (3/10 : ℚ), (-11554169577/10000000000 : ℚ), (19646988069/62500000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1148610141/5000000000 : ℚ), (-9/20 : ℚ), (208863360897/500000000000 : ℚ)⟩,
  ⟨(1148610141/5000000000 : ℚ), (18102389/78125000 : ℚ), (-35785409/79542040 : ℚ), (830622022731731649/1988551000000000000 : ℚ)⟩,
  ⟨(18102389/78125000 : ℚ), (11615089/46875000 : ℚ), (-21653798127/48233958400 : ℚ), (314635849858567153/753655600000000000 : ℚ)⟩,
  ⟨(11615089/46875000 : ℚ), (84269303/300000000 : ℚ), (-44340157797/99327334000 : ℚ), (10351227869692846171/24831833500000000000 : ℚ)⟩,
  ⟨(84269303/300000000 : ℚ), (4997841149/15000000000 : ℚ), (-69385530933/156875199800 : ℚ), (326064764369921669079/784375999000000000000 : ℚ)⟩,
  ⟨(4997841149/15000000000 : ℚ), (3064224623/7500000000 : ℚ), (-24690730047/56530404850 : ℚ), (58488829127240117903/141326012125000000000 : ℚ)⟩,
  ⟨(3064224623/7500000000 : ℚ), (7705143287/15000000000 : ℚ), (-16950646497/39417351025 : ℚ), (40511596885581876591/98543377562500000000 : ℚ)⟩,
  ⟨(7705143287/15000000000 : ℚ), (1237049681/1875000000 : ℚ), (-18509061087/43825083220 : ℚ), (446088627742540825811/1095627080500000000000 : ℚ)⟩,
  ⟨(1237049681/1875000000 : ℚ), (12990275587/15000000000 : ℚ), (-85389605199/206258542600 : ℚ), (8284314577502483327/20625854260000000000 : ℚ)⟩,
  ⟨(12990275587/15000000000 : ℚ), (4373979703/3750000000 : ℚ), (-13527362677/33375135000 : ℚ), (98655980046470420987/250313512500000000000 : ℚ)⟩,
  ⟨(4373979703/3750000000 : ℚ), (1624160483/1000000000 : ℚ), (-544694755611/1373297686600 : ℚ), (1318384538800557408307/3433244216500000000000 : ℚ)⟩,
  ⟨(1624160483/1000000000 : ℚ), (1775019257/750000000 : ℚ), (-864948001671/2227595579000 : ℚ), (937746578894320541/2531358612500000000 : ℚ)⟩,
  ⟨(1775019257/750000000 : ℚ), (2207959613/600000000 : ℚ), (-8149200534/21411527375 : ℚ), (15084612334059270199/42823054750000000000 : ℚ)⟩,
  ⟨(2207959613/600000000 : ℚ), (94740771389/15000000000 : ℚ), (-492771309543/1318059368800 : ℚ), (2158064444251707038561/6590296844000000000000 : ℚ)⟩,
  ⟨(94740771389/15000000000 : ℚ), (6405828979/500000000 : ℚ), (-3588829261263/9743409798100 : ℚ), (80978435969767454593/276801414718750000000 : ℚ)⟩,
  ⟨(6405828979/500000000 : ℚ), (32/1 : ℚ), (-26042556244191/71500175096200 : ℚ), (42896514534599740003543/178750437740500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (372420403601/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(240940597649/1000000000000 : ℚ), (1006806126249/2000000000 : ℚ), (-121608947927679/1000000000000 : ℚ), 11⟩,
    ⟨(242072668701/1000000000000 : ℚ), (534675744851/10000000000 : ℚ), (-13107270851881/1000000000000 : ℚ), 8⟩,
    ⟨(244293305949/1000000000000 : ℚ), (17717486937/1000000000 : ℚ), (-1106604692621/250000000000 : ℚ), 7⟩,
    ⟨(247517171549/1000000000000 : ℚ), (79740771389/10000000000 : ℚ), (-1016932964821/500000000000 : ℚ), 6⟩,
    ⟨(50324074831/200000000000 : ℚ), (1607959613/400000000 : ℚ), (-262080827639/250000000000 : ℚ), 5⟩,
    ⟨(25644522999/100000000000 : ℚ), (1025019257/500000000 : ℚ), (-137126419451/250000000000 : ℚ), 5⟩,
    ⟨(261806322551/1000000000000 : ℚ), (1872481449/2000000000 : ℚ), (-260189677247/1000000000000 : ℚ), 4⟩,
    ⟨(133748814029/500000000000 : ℚ), (623979703/2500000000 : ℚ), (-7862475871/100000000000 : ℚ), 4⟩,
    ⟨(4270319263/15625000000 : ℚ), (-2009724413/10000000000 : ℚ), (43121505383/1000000000000 : ℚ), 4⟩,
    ⟨(278991738339/1000000000000 : ℚ), (-637950319/1250000000 : ℚ), (64255555291/500000000000 : ℚ), 4⟩,
    ⟨(2843528309/10000000000 : ℚ), (-7294856713/10000000000 : ℚ), (23775997609/125000000000 : ℚ), 4⟩,
    ⟨(57835537347/200000000000 : ℚ), (-4435775377/5000000000 : ℚ), (7356553277/31250000000 : ℚ), 4⟩,
    ⟨(293280889341/1000000000000 : ℚ), (-10002158851/10000000000 : ℚ), (13416533913/50000000000 : ℚ), 4⟩,
    ⟨(296504754941/1000000000000 : ℚ), (-215730697/200000000 : ℚ), (291459188571/1000000000000 : ℚ), 4⟩,
    ⟨(298725392189/1000000000000 : ℚ), (-35259911/31250000 : ℚ), (30623924117/100000000000 : ℚ), 4⟩,
    ⟨(299857463241/1000000000000 : ℚ), (-180067833/156250000 : ℚ), (313457173879/1000000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11554169577/10000000000 : ℚ), (19646988069/62500000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control719.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control719.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate719
