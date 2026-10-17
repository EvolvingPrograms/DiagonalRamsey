import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate824
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (6601481769413/35921704161700 : ℚ), (120519564307/500000000 : ℚ), (-44411674808393/1000000000000 : ℚ)⟩,
  ⟨(6601481769413/35921704161700 : ℚ), (3169097889313/17069915359200 : ℚ), (127544518219/5000000000 : ℚ), (-960556838383/200000000000 : ℚ)⟩,
  ⟨(3169097889313/17069915359200 : ℚ), (34943931949/185151567616 : ℚ), (42194941423/5000000000 : ℚ), (-816843151301/500000000000 : ℚ)⟩,
  ⟨(34943931949/185151567616 : ℚ), (360020921129/1866580972300 : ℚ), (19050995471/5000000000 : ℚ), (-760088003877/1000000000000 : ℚ)⟩,
  ⟨(360020921129/1866580972300 : ℚ), (182753720927/923319827300 : ℚ), (19436181219/10000000000 : ℚ), (-100016770687/250000000000 : ℚ)⟩,
  ⟨(182753720927/923319827300 : ℚ), (105582750811/518326821000 : ℚ), (5101491473/5000000000 : ℚ), (-217313361821/1000000000000 : ℚ)⟩,
  ⟨(105582750811/518326821000 : ℚ), (16659811287/79347626950 : ℚ), (313732171/625000000 : ℚ), (-11173061101/100000000000 : ℚ)⟩,
  ⟨(16659811287/79347626950 : ℚ), (22407277157/103511213700 : ℚ), (922904829/5000000000 : ℚ), (-22545682931/500000000000 : ℚ)⟩,
  ⟨(22407277157/103511213700 : ℚ), (1051311549/4714724330 : ℚ), (-28051827/1250000000 : ℚ), (-69202887/250000000000 : ℚ)⟩,
  ⟨(1051311549/4714724330 : ℚ), (4574258771/19953418760 : ℚ), (-327766383/2000000000 : ℚ), (15631267461/500000000000 : ℚ)⟩,
  ⟨(4574258771/19953418760 : ℚ), (4203893686/17887616175 : ℚ), (-2636502853/10000000000 : ℚ), (54133828777/1000000000000 : ℚ)⟩,
  ⟨(4203893686/17887616175 : ℚ), (6142490933/25585923800 : ℚ), (-1340803/4000000 : ℚ), (70949403521/1000000000000 : ℚ)⟩,
  ⟨(6142490933/25585923800 : ℚ), (2163017163/8856800900 : ℚ), (-482965747/1250000000 : ℚ), (83234385387/1000000000000 : ℚ)⟩,
  ⟨(2163017163/8856800900 : ℚ), (1107732619/4479266040 : ℚ), (-1054499503/2500000000 : ℚ), (91886454039/1000000000000 : ℚ)⟩,
  ⟨(1107732619/4479266040 : ℚ), (1353801567/5432608400 : ℚ), (-2220980657/5000000000 : ℚ), (48712558567/500000000000 : ℚ)⟩,
  ⟨(1353801567/5432608400 : ℚ), (335723043/1343323400 : ℚ), (-2275306741/5000000000 : ℚ), (25033180067/250000000000 : ℚ)⟩,
  ⟨(335723043/1343323400 : ℚ), (1/4 : ℚ), (-1141011679/2500000000 : ℚ), (100468443311/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (358988321/1500000000 : ℚ), (-3/20 : ℚ), (136367275411/1000000000000 : ℚ)⟩,
  ⟨(358988321/1500000000 : ℚ), (724693259/3000000000 : ℚ), (-1007169129/6716617000 : ℚ), (915849357361360493/6716617000000000000 : ℚ)⟩,
  ⟨(724693259/3000000000 : ℚ), (779019343/3000000000 : ℚ), (-4061404701/27163042000 : ℚ), (3701000155842472109/27163042000000000000 : ℚ)⟩,
  ⟨(779019343/3000000000 : ℚ), (445500497/1500000000 : ℚ), (-1107732619/7465443400 : ℚ), (15224551150898954819/111981651000000000000 : ℚ)⟩,
  ⟨(445500497/1500000000 : ℚ), (267034253/750000000 : ℚ), (-6489051489/44284004500 : ℚ), (2398540234569671679/17713601800000000000 : ℚ)⟩,
  ⟨(267034253/750000000 : ℚ), (1059197/2400000 : ℚ), (-18427472799/127929619000 : ℚ), (17209165121669789749/127929619000000000000 : ℚ)⟩,
  ⟨(1059197/2400000 : ℚ), (3363497147/6000000000 : ℚ), (-4203893686/29812693625 : ℚ), (95292143726455082087/715504647000000000000 : ℚ)⟩,
  ⟨(3363497147/6000000000 : ℚ), (290744539/400000000 : ℚ), (-13722776313/99767093800 : ℚ), (130935279362972114511/997670938000000000000 : ℚ)⟩,
  ⟨(290744539/400000000 : ℚ), (240649391/250000000 : ℚ), (-3153934647/23573621650 : ℚ), (15147221787582485469/117868108250000000000 : ℚ)⟩,
  ⟨(240649391/250000000 : ℚ), (1307634943/1000000000 : ℚ), (-22407277157/172518689500 : ℚ), (10760717620850809601/86259344750000000000 : ℚ)⟩,
  ⟨(1307634943/1000000000 : ℚ), (688732171/375000000 : ℚ), (-49979433861/396738134750 : ℚ), (94930779525162598037/793476269500000000000 : ℚ)⟩,
  ⟨(688732171/375000000 : ℚ), (8101491473/3000000000 : ℚ), (-105582750811/863878035000 : ℚ), (3948392370590430127/35022082500000000000 : ℚ)⟩,
  ⟨(8101491473/3000000000 : ℚ), (8478727073/2000000000 : ℚ), (-548261162781/4616599136500 : ℚ), (954658066432742975809/9233198273000000000000 : ℚ)⟩,
  ⟨(8478727073/2000000000 : ℚ), (22050995471/3000000000 : ℚ), (-1080062763387/9332904861500 : ℚ), (1689981349458686117447/18665809723000000000000 : ℚ)⟩,
  ⟨(22050995471/3000000000 : ℚ), (45194941423/3000000000 : ℚ), (-104831795847/925757838080 : ℚ), (1672276448165425618571/23143945952000000000000 : ℚ)⟩,
  ⟨(45194941423/3000000000 : ℚ), (32/1 : ℚ), (-3169097889313/28449858932000 : ℚ), (3792758926751279089207/85349576796000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (316940024943/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(91769664997/500000000000 : ℚ), (120519564307/500000000 : ℚ), (-44411674808393/1000000000000 : ℚ), 12⟩,
    ⟨(2887707361/15625000000 : ℚ), (127544518219/5000000000 : ℚ), (-960556838383/200000000000 : ℚ), 8⟩,
    ⟨(93656098241/500000000000 : ℚ), (42194941423/5000000000 : ℚ), (-816843151301/500000000000 : ℚ), 7⟩,
    ⟨(190940073827/1000000000000 : ℚ), (19050995471/5000000000 : ℚ), (-760088003877/1000000000000 : ℚ), 6⟩,
    ⟨(195557485847/1000000000000 : ℚ), (19436181219/10000000000 : ℚ), (-100016770687/250000000000 : ℚ), 6⟩,
    ⟨(50246746997/250000000000 : ℚ), (5101491473/5000000000 : ℚ), (-217313361821/1000000000000 : ℚ), 5⟩,
    ⟨(207019927527/1000000000000 : ℚ), (313732171/625000000 : ℚ), (-11173061101/100000000000 : ℚ), 5⟩,
    ⟨(213424461981/1000000000000 : ℚ), (922904829/5000000000 : ℚ), (-22545682931/500000000000 : ℚ), 4⟩,
    ⟨(219954468683/1000000000000 : ℚ), (-28051827/1250000000 : ℚ), (-69202887/250000000000 : ℚ), 4⟩,
    ⟨(226359003137/1000000000000 : ℚ), (-327766383/2000000000 : ℚ), (15631267461/500000000000 : ℚ), 4⟩,
    ⟨(232391942677/1000000000000 : ℚ), (-2636502853/10000000000 : ℚ), (54133828777/1000000000000 : ℚ), 4⟩,
    ⟨(237821444817/1000000000000 : ℚ), (-1340803/4000000 : ℚ), (70949403521/1000000000000 : ℚ), 4⟩,
    ⟨(121219428419/500000000000 : ℚ), (-482965747/1250000000 : ℚ), (83234385387/1000000000000 : ℚ), 4⟩,
    ⟨(246066734183/1000000000000 : ℚ), (-1054499503/2500000000 : ℚ), (91886454039/1000000000000 : ℚ), 4⟩,
    ⟨(248565659561/1000000000000 : ℚ), (-2220980657/5000000000 : ℚ), (48712558567/500000000000 : ℚ), 4⟩,
    ⟨(249839600671/1000000000000 : ℚ), (-2275306741/5000000000 : ℚ), (25033180067/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-1141011679/2500000000 : ℚ), (100468443311/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control824.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control824.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate824
