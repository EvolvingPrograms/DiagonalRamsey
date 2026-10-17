import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate698
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (53126783408363/297359682331400 : ℚ), (3324974683689/10000000000 : ℚ), (-59575056313329/1000000000000 : ℚ)⟩,
  ⟨(53126783408363/297359682331400 : ℚ), (10626928469/58814216023 : ℚ), (2811022883/80000000 : ℚ), (-3224136452483/500000000000 : ℚ)⟩,
  ⟨(10626928469/58814216023 : ℚ), (117191135703/636904252520 : ℚ), (116120996283/10000000000 : ℚ), (-1098750758683/500000000000 : ℚ)⟩,
  ⟨(117191135703/636904252520 : ℚ), (120777006503/640840087925 : ℚ), (52430571031/10000000000 : ℚ), (-64099385021/62500000000 : ℚ)⟩,
  ⟨(120777006503/640840087925 : ℚ), (12269189467/63272396220 : ℚ), (13398483757/5000000000 : ℚ), (-135620533581/250000000000 : ℚ)⟩,
  ⟨(12269189467/63272396220 : ℚ), (70952906099/354544706450 : ℚ), (1414248827/1000000000 : ℚ), (-37137293123/125000000000 : ℚ)⟩,
  ⟨(70952906099/354544706450 : ℚ), (6406284061/30967970050 : ℚ), (7051594141/10000000000 : ℚ), (-77596266393/500000000000 : ℚ)⟩,
  ⟨(6406284061/30967970050 : ℚ), (30208072813/141236329950 : ℚ), (1358039167/5000000000 : ℚ), (-16376138983/250000000000 : ℚ)⟩,
  ⟨(30208072813/141236329950 : ℚ), (42596497393/192832609300 : ℚ), (-21729653/2000000000 : ℚ), (-2544205153/500000000000 : ℚ)⟩,
  ⟨(42596497393/192832609300 : ℚ), (15471482303/67963362700 : ℚ), (-1018487179/5000000000 : ℚ), (37508087087/1000000000000 : ℚ)⟩,
  ⟨(15471482303/67963362700 : ℚ), (22782986851/97421468000 : ℚ), (-849060403/2500000000 : ℚ), (68451051693/1000000000000 : ℚ)⟩,
  ⟨(22782986851/97421468000 : ℚ), (8331050517/34813316750 : ℚ), (-1092614073/2500000000 : ℚ), (5702127409/62500000000 : ℚ)⟩,
  ⟨(8331050517/34813316750 : ℚ), (2935602206/12042276275 : ℚ), (-5066722627/10000000000 : ℚ), (53948069789/500000000000 : ℚ)⟩,
  ⟨(2935602206/12042276275 : ℚ), (501295707/2028766240 : ℚ), (-2774206839/5000000000 : ℚ), (59819274201/500000000000 : ℚ)⟩,
  ⟨(501295707/2028766240 : ℚ), (1838194357/7378237650 : ℚ), (-2926364307/5000000000 : ℚ), (127157984007/1000000000000 : ℚ)⟩,
  ⟨(1838194357/7378237650 : ℚ), (7013239/28062660 : ℚ), (-6000293367/10000000000 : ℚ), (130834372721/1000000000000 : ℚ)⟩,
  ⟨(7013239/28062660 : ℚ), (1/4 : ℚ), (-376158381/625000000 : ℚ), (16411279157/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (123841619/500000000 : ℚ), (-1/5 : ℚ), (22603360107/125000000000 : ℚ)⟩,
  ⟨(123841619/500000000 : ℚ), (1999706633/8000000000 : ℚ), (-7013239/35078325 : ℚ), (31712516079338291/175391625000000000 : ℚ)⟩,
  ⟨(1999706633/8000000000 : ℚ), (1073635693/4000000000 : ℚ), (-3676388714/18445594125 : ℚ), (213265926330851543/1180518024000000000 : ℚ)⟩,
  ⟨(1073635693/4000000000 : ℚ), (1225793161/4000000000 : ℚ), (-501295707/2535957800 : ℚ), (9140390446410887847/50719156000000000000 : ℚ)⟩,
  ⟨(1225793161/4000000000 : ℚ), (2933277373/8000000000 : ℚ), (-11742408824/60211381375 : ℚ), (8641634698012425583/48169105100000000000 : ℚ)⟩,
  ⟨(2933277373/8000000000 : ℚ), (907385927/2000000000 : ℚ), (-16662101034/87033291875 : ℚ), (15499876701786826289/87033291875000000000 : ℚ)⟩,
  ⟨(907385927/2000000000 : ℚ), (1150939597/2000000000 : ℚ), (-22782986851/121776835000 : ℚ), (42893346559936102357/243553670000000000000 : ℚ)⟩,
  ⟨(1150939597/2000000000 : ℚ), (2981512821/4000000000 : ℚ), (-15471482303/84954203375 : ℚ), (4709944118452315523/27185345080000000000 : ℚ)⟩,
  ⟨(2981512821/4000000000 : ℚ), (1578270347/1600000000 : ℚ), (-42596497393/241040761625 : ℚ), (326331829242223612397/1928326093000000000000 : ℚ)⟩,
  ⟨(1578270347/1600000000 : ℚ), (5358039167/4000000000 : ℚ), (-60416145626/353090824875 : ℚ), (57798960958720478977/353090824875000000000 : ℚ)⟩,
  ⟨(5358039167/4000000000 : ℚ), (15051594141/8000000000 : ℚ), (-12812568122/77419925125 : ℚ), (6045601320640547001/38709962562500000000 : ℚ)⟩,
  ⟨(15051594141/8000000000 : ℚ), (2214248827/800000000 : ℚ), (-141905812198/886361766125 : ℚ), (258863717964093929631/1772723532250000000000 : ℚ)⟩,
  ⟨(2214248827/800000000 : ℚ), (17398483757/4000000000 : ℚ), (-12269189467/79090495275 : ℚ), (12307226743252364189/93047641500000000000 : ℚ)⟩,
  ⟨(17398483757/4000000000 : ℚ), (60430571031/8000000000 : ℚ), (-483108026012/3204200439625 : ℚ), (145246117028743907833/1281680175850000000000 : ℚ)⟩,
  ⟨(60430571031/8000000000 : ℚ), (124120996283/8000000000 : ℚ), (-117191135703/796130315650 : ℚ), (2749499528485156496629/31845212626000000000000 : ℚ)⟩,
  ⟨(124120996283/8000000000 : ℚ), (32/1 : ℚ), (-42507713876/294071080115 : ℚ), (1329082973405689058641/29407108011500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (124877277307/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(178408754879/1000000000000 : ℚ), (3324974683689/10000000000 : ℚ), (-59575056313329/1000000000000 : ℚ), 11⟩,
    ⟨(179781040627/1000000000000 : ℚ), (2811022883/80000000 : ℚ), (-3224136452483/500000000000 : ℚ), 8⟩,
    ⟨(182472875953/1000000000000 : ℚ), (116120996283/10000000000 : ℚ), (-1098750758683/500000000000 : ℚ), 6⟩,
    ⟨(186380815133/1000000000000 : ℚ), (52430571031/10000000000 : ℚ), (-64099385021/62500000000 : ℚ), 5⟩,
    ⟨(191354678257/1000000000000 : ℚ), (13398483757/5000000000 : ℚ), (-135620533581/250000000000 : ℚ), 5⟩,
    ⟨(39440664511/200000000000 : ℚ), (1414248827/1000000000 : ℚ), (-37137293123/125000000000 : ℚ), 4⟩,
    ⟨(101850993953/500000000000 : ℚ), (7051594141/10000000000 : ℚ), (-77596266393/500000000000 : ℚ), 4⟩,
    ⟨(52650233561/250000000000 : ℚ), (1358039167/5000000000 : ℚ), (-16376138983/250000000000 : ℚ), 4⟩,
    ⟨(54408759733/250000000000 : ℚ), (-21729653/2000000000 : ℚ), (-2544205153/500000000000 : ℚ), 4⟩,
    ⟨(224533985271/1000000000000 : ℚ), (-1018487179/5000000000 : ℚ), (37508087087/1000000000000 : ℚ), 3⟩,
    ⟨(231032650621/1000000000000 : ℚ), (-849060403/2500000000 : ℚ), (68451051693/1000000000000 : ℚ), 3⟩,
    ⟨(236881294919/1000000000000 : ℚ), (-1092614073/2500000000 : ℚ), (5702127409/62500000000 : ℚ), 3⟩,
    ⟨(241855158043/1000000000000 : ℚ), (-5066722627/10000000000 : ℚ), (53948069789/500000000000 : ℚ), 3⟩,
    ⟨(30720387153/125000000000 : ℚ), (-2774206839/5000000000 : ℚ), (59819274201/500000000000 : ℚ), 3⟩,
    ⟨(248454932549/1000000000000 : ℚ), (-2926364307/5000000000 : ℚ), (127157984007/1000000000000 : ℚ), 3⟩,
    ⟨(124913609149/500000000000 : ℚ), (-6000293367/10000000000 : ℚ), (130834372721/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-376158381/625000000 : ℚ), (16411279157/125000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control698.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control698.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate698
