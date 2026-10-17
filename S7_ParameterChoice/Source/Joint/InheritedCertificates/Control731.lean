import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate731
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (23755518783101/88830977313525 : ℚ), (1987524602637/5000000000 : ℚ), (-106540372274069/1000000000000 : ℚ)⟩,
  ⟨(23755518783101/88830977313525 : ℚ), (7602316189757/28180934850000 : ℚ), (421810112733/10000000000 : ℚ), (-2303659428333/200000000000 : ℚ)⟩,
  ⟨(7602316189757/28180934850000 : ℚ), (261899345662/957214222625 : ℚ), (140000764233/10000000000 : ℚ), (-978995237977/250000000000 : ℚ)⟩,
  ⟨(261899345662/957214222625 : ℚ), (28764742241/103182525180 : ℚ), (63423626423/10000000000 : ℚ), (-455196546653/250000000000 : ℚ)⟩,
  ⟨(28764742241/103182525180 : ℚ), (87504191031/306949294880 : ℚ), (32468868869/10000000000 : ℚ), (-478921959691/500000000000 : ℚ)⟩,
  ⟨(87504191031/306949294880 : ℚ), (50451314489/172619538600 : ℚ), (136971233/80000000 : ℚ), (-520322964227/1000000000000 : ℚ)⟩,
  ⟨(50451314489/172619538600 : ℚ), (9920754727/33060970175 : ℚ), (1698085439/2000000000 : ℚ), (-134033195891/500000000000 : ℚ)⟩,
  ⟨(9920754727/33060970175 : ℚ), (21262955947/68992173520 : ℚ), (3200671967/10000000000 : ℚ), (-2186686323/20000000000 : ℚ)⟩,
  ⟨(21262955947/68992173520 : ℚ), (18613366157/58844629625 : ℚ), (-248936709/10000000000 : ℚ), (-603907283/200000000000 : ℚ)⟩,
  ⟨(18613366157/58844629625 : ℚ), (4881413883/15060441200 : ℚ), (-1301360947/5000000000 : ℚ), (71433928213/1000000000000 : ℚ)⟩,
  ⟨(4881413883/15060441200 : ℚ), (39257852321/118490570700 : ℚ), (-2129685213/5000000000 : ℚ), (62564740463/500000000000 : ℚ)⟩,
  ⟨(39257852321/118490570700 : ℚ), (1141240481/3380242376 : ℚ), (-5444276133/10000000000 : ℚ), (164387333247/1000000000000 : ℚ)⟩,
  ⟨(1141240481/3380242376 : ℚ), (20004799069/58358175600 : ℚ), (-6289336727/10000000000 : ℚ), (24114793159/125000000000 : ℚ)⟩,
  ⟨(20004799069/58358175600 : ℚ), (12763431211/36820868200 : ℚ), (-6872918483/10000000000 : ℚ), (212923144341/1000000000000 : ℚ)⟩,
  ⟨(12763431211/36820868200 : ℚ), (1245322333/3568244960 : ℚ), (-1448225433/2000000000 : ℚ), (3526352743/15625000000 : ℚ)⟩,
  ⟨(1245322333/3568244960 : ℚ), (64287542/183731225 : ℚ), (-7419539413/10000000000 : ℚ), (231913187217/1000000000000 : ℚ)⟩,
  ⟨(64287542/183731225 : ℚ), (7/20 : ℚ), (-186039679/250000000 : ℚ), (232684637721/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (63960321/250000000 : ℚ), (-7/20 : ℚ), (322229087121/1000000000000 : ℚ)⟩,
  ⟨(63960321/250000000 : ℚ), (2580460587/10000000000 : ℚ), (-64287542/183731225 : ℚ), (2367953632705778649/7349249000000000000 : ℚ)⟩,
  ⟨(2580460587/10000000000 : ℚ), (551774567/2000000000 : ℚ), (-1245322333/3568244960 : ℚ), (57443679064316781171/178412248000000000000 : ℚ)⟩,
  ⟨(551774567/2000000000 : ℚ), (3127081517/10000000000 : ℚ), (-12763431211/36820868200 : ℚ), (118312440178514395649/368208682000000000000 : ℚ)⟩,
  ⟨(3127081517/10000000000 : ℚ), (3710663273/10000000000 : ℚ), (-20004799069/58358175600 : ℚ), (186814699887530950469/583581756000000000000 : ℚ)⟩,
  ⟨(3710663273/10000000000 : ℚ), (4555723867/10000000000 : ℚ), (-1141240481/3380242376 : ℚ), (268896669911742269393/845060594000000000000 : ℚ)⟩,
  ⟨(4555723867/10000000000 : ℚ), (2870314787/5000000000 : ℚ), (-39257852321/118490570700 : ℚ), (23351964006801386621/74056606687500000000 : ℚ)⟩,
  ⟨(2870314787/5000000000 : ℚ), (3698639053/5000000000 : ℚ), (-4881413883/15060441200 : ℚ), (23433720399204710677/75302206000000000000 : ℚ)⟩,
  ⟨(3698639053/5000000000 : ℚ), (9751063291/10000000000 : ℚ), (-18613366157/58844629625 : ℚ), (718893105742662758973/2353785185000000000000 : ℚ)⟩,
  ⟨(9751063291/10000000000 : ℚ), (13200671967/10000000000 : ℚ), (-21262955947/68992173520 : ℚ), (205253185390005454269/689921735200000000000 : ℚ)⟩,
  ⟨(13200671967/10000000000 : ℚ), (3698085439/2000000000 : ℚ), (-9920754727/33060970175 : ℚ), (189627286325599859493/661219403500000000000 : ℚ)⟩,
  ⟨(3698085439/2000000000 : ℚ), (216971233/80000000 : ℚ), (-50451314489/172619538600 : ℚ), (470131388815146410503/1726195386000000000000 : ℚ)⟩,
  ⟨(216971233/80000000 : ℚ), (42468868869/10000000000 : ℚ), (-87504191031/306949294880 : ℚ), (3880544288947301301487/15347464744000000000000 : ℚ)⟩,
  ⟨(42468868869/10000000000 : ℚ), (73423626423/10000000000 : ℚ), (-28764742241/103182525180 : ℚ), (55542505471948367867/245672679000000000000 : ℚ)⟩,
  ⟨(73423626423/10000000000 : ℚ), (150000764233/10000000000 : ℚ), (-261899345662/957214222625 : ℚ), (1800775374473396002061/9572142226250000000000 : ℚ)⟩,
  ⟨(150000764233/10000000000 : ℚ), (32/1 : ℚ), (-7602316189757/28180934850000 : ℚ), (36793197608855334623381/281809348500000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (102064542337/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(133565455437/500000000000 : ℚ), (1987524602637/5000000000 : ℚ), (-106540372274069/1000000000000 : ℚ), 11⟩,
    ⟨(268719374237/1000000000000 : ℚ), (421810112733/10000000000 : ℚ), (-2303659428333/200000000000 : ℚ), 8⟩,
    ⟨(33979407151/125000000000 : ℚ), (140000764233/10000000000 : ℚ), (-978995237977/250000000000 : ℚ), 7⟩,
    ⟨(5527176363/20000000000 : ℚ), (63423626423/10000000000 : ℚ), (-455196546653/250000000000 : ℚ), 6⟩,
    ⟨(141058109577/500000000000 : ℚ), (32468868869/10000000000 : ℚ), (-478921959691/500000000000 : ℚ), 5⟩,
    ⟨(4513846977/15625000000 : ℚ), (136971233/80000000 : ℚ), (-520322964227/1000000000000 : ℚ), 5⟩,
    ⟨(148204306727/500000000000 : ℚ), (1698085439/2000000000 : ℚ), (-134033195891/500000000000 : ℚ), 4⟩,
    ⟨(76098589513/250000000000 : ℚ), (3200671967/10000000000 : ℚ), (-2186686323/20000000000 : ℚ), 4⟩,
    ⟨(78134138159/250000000000 : ℚ), (-248936709/10000000000 : ℚ), (-603907283/200000000000 : ℚ), 4⟩,
    ⟨(64104459447/200000000000 : ℚ), (-1301360947/5000000000 : ℚ), (71433928213/1000000000000 : ℚ), 4⟩,
    ⟨(328044704161/1000000000000 : ℚ), (-2129685213/5000000000 : ℚ), (62564740463/500000000000 : ℚ), 4⟩,
    ⟨(66962938307/200000000000 : ℚ), (-5444276133/10000000000 : ℚ), (164387333247/1000000000000 : ℚ), 3⟩,
    ⟨(340572092539/1000000000000 : ℚ), (-6289336727/10000000000 : ℚ), (24114793159/125000000000 : ℚ), 3⟩,
    ⟨(345095653481/1000000000000 : ℚ), (-6872918483/10000000000 : ℚ), (212923144341/1000000000000 : ℚ), 3⟩,
    ⟨(87052884113/250000000000 : ℚ), (-1448225433/2000000000 : ℚ), (3526352743/15625000000 : ℚ), 3⟩,
    ⟨(69959999963/200000000000 : ℚ), (-7419539413/10000000000 : ℚ), (231913187217/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-186039679/250000000 : ℚ), (232684637721/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control731.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control731.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate731
