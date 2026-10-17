import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate43
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (78709036375897/984577138115600 : ℚ), (5505638516837/5000000000 : ℚ), (-88182902292937/1000000000000 : ℚ)⟩,
  ⟨(78709036375897/984577138115600 : ℚ), (3148996804029/39112379775250 : ℚ), (582752826259/5000000000 : ℚ), (-118423323963/12500000000 : ℚ)⟩,
  ⟨(3148996804029/39112379775250 : ℚ), (1736742201107/21324393431300 : ℚ), (383258057013/10000000000 : ℚ), (-1587936154491/500000000000 : ℚ)⟩,
  ⟨(1736742201107/21324393431300 : ℚ), (179103805649/2165706366350 : ℚ), (1700141227/100000000 : ℚ), (-11513040863/8000000000 : ℚ)⟩,
  ⟨(179103805649/2165706366350 : ℚ), (72870645907/865127653800 : ℚ), (41692934023/5000000000 : ℚ), (-722714885279/1000000000000 : ℚ)⟩,
  ⟨(72870645907/865127653800 : ℚ), (8446000467/98233849012 : ℚ), (10032371339/2500000000 : ℚ), (-5599400871/15625000000 : ℚ)⟩,
  ⟨(8446000467/98233849012 : ℚ), (66925423589/761597877950 : ℚ), (15571023103/10000000000 : ℚ), (-147211644069/1000000000000 : ℚ)⟩,
  ⟨(66925423589/761597877950 : ℚ), (90501844027/1007282575500 : ℚ), (42383193/1250000000 : ℚ), (-13360796891/1000000000000 : ℚ)⟩,
  ⟨(90501844027/1007282575500 : ℚ), (3203650351/34890560930 : ℚ), (-9733760211/10000000000 : ℚ), (2410657723/31250000000 : ℚ)⟩,
  ⟨(3203650351/34890560930 : ℚ), (46735891051/498695434300 : ℚ), (-16711872397/10000000000 : ℚ), (35303513539/250000000000 : ℚ)⟩,
  ⟨(46735891051/498695434300 : ℚ), (986800109/10336939340 : ℚ), (-1084941337/500000000 : ℚ), (187949945207/1000000000000 : ℚ)⟩,
  ⟨(986800109/10336939340 : ℚ), (25333919353/261189658600 : ℚ), (-25316755509/10000000000 : ℚ), (111243974511/500000000000 : ℚ)⟩,
  ⟨(25333919353/261189658600 : ℚ), (2982007853/30351150050 : ℚ), (-5585730419/2000000000 : ℚ), (1982574947/8000000000 : ℚ)⟩,
  ⟨(2982007853/30351150050 : ℚ), (2868307637/28919300950 : ℚ), (-14874860549/5000000000 : ℚ), (265713915493/1000000000000 : ℚ)⟩,
  ⟨(2868307637/28919300950 : ℚ), (1122727123/11254562460 : ℚ), (-1931655821/625000000 : ℚ), (277187146041/1000000000000 : ℚ)⟩,
  ⟨(1122727123/11254562460 : ℚ), (348126687/3482113250 : ℚ), (-31469221259/10000000000 : ℚ), (35350097707/125000000000 : ℚ)⟩,
  ⟨(348126687/3482113250 : ℚ), (1/10 : ℚ), (-7884715881/2500000000 : ℚ), (28349703503/100000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2115284119/10000000000 : ℚ), (-2/5 : ℚ), (36810839979/100000000000 : ℚ)⟩,
  ⟨(2115284119/10000000000 : ℚ), (8530778741/40000000000 : ℚ), (-696253374/1741056625 : ℚ), (12817235229781506487/34821132500000000000 : ℚ)⟩,
  ⟨(8530778741/40000000000 : ℚ), (568344179/2500000000 : ℚ), (-1122727123/2813640615 : ℚ), (207028636408376172403/562728123000000000000 : ℚ)⟩,
  ⟨(568344179/2500000000 : ℚ), (5125139451/20000000000 : ℚ), (-5736615274/14459650475 : ℚ), (42497424057374368303/115677203800000000000 : ℚ)⟩,
  ⟨(5125139451/20000000000 : ℚ), (2414269581/8000000000 : ℚ), (-5964015706/15175575025 : ℚ), (44485456550485937861/121404600200000000000 : ℚ)⟩,
  ⟨(2414269581/8000000000 : ℚ), (14683244491/40000000000 : ℚ), (-25333919353/65297414650 : ℚ), (190619929250415874643/522379317200000000000 : ℚ)⟩,
  ⟨(14683244491/40000000000 : ℚ), (915058663/2000000000 : ℚ), (-986800109/2584234835 : ℚ), (187439357967033563869/516846967000000000000 : ℚ)⟩,
  ⟨(915058663/2000000000 : ℚ), (23288127603/40000000000 : ℚ), (-46735891051/124673858575 : ℚ), (1792619435101495180261/4986954343000000000000 : ℚ)⟩,
  ⟨(23288127603/40000000000 : ℚ), (30266239789/40000000000 : ℚ), (-6407300702/17445280465 : ℚ), (619386968882530579519/1744528046500000000000 : ℚ)⟩,
  ⟨(30266239789/40000000000 : ℚ), (5042383193/5000000000 : ℚ), (-90501844027/251820643875 : ℚ), (3516178839027029177983/10072825755000000000000 : ℚ)⟩,
  ⟨(5042383193/5000000000 : ℚ), (55571023103/40000000000 : ℚ), (-133850847178/380798938975 : ℚ), (5195907006235138285763/15231957559000000000000 : ℚ)⟩,
  ⟨(55571023103/40000000000 : ℚ), (20032371339/10000000000 : ℚ), (-8446000467/24558462253 : ℚ), (2029632643229884225017/6139615563250000000000 : ℚ)⟩,
  ⟨(20032371339/10000000000 : ℚ), (61692934023/20000000000 : ℚ), (-72870645907/216281913450 : ℚ), (45646692827171961727/144187942300000000000 : ℚ)⟩,
  ⟨(61692934023/20000000000 : ℚ), (2100141227/400000000 : ℚ), (-358207611298/1082853183175 : ℚ), (515759699943803314579/1732565093080000000000 : ℚ)⟩,
  ⟨(2100141227/400000000 : ℚ), (423258057013/40000000000 : ℚ), (-1736742201107/5331098357825 : ℚ), (2314184941199858792561/8529757372520000000000 : ℚ)⟩,
  ⟨(423258057013/40000000000 : ℚ), (602752826259/20000000000 : ℚ), (-6297993608058/19556189887625 : ℚ), (45339515073710156471211/195561898876250000000000 : ℚ)⟩,
  ⟨(602752826259/20000000000 : ℚ), (32/1 : ℚ), (-78709036375897/246144284528900 : ℚ), (803335170243517798630203/4922885690578000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (195444022037/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(79870803003/1000000000000 : ℚ), (5505638516837/5000000000 : ℚ), (-88182902292937/1000000000000 : ℚ), 10⟩,
    ⟨(80256646413/1000000000000 : ℚ), (582752826259/5000000000 : ℚ), (-118423323963/12500000000 : ℚ), 7⟩,
    ⟨(5063344093/62500000000 : ℚ), (383258057013/10000000000 : ℚ), (-1587936154491/500000000000 : ℚ), 5⟩,
    ⟨(41056147279/500000000000 : ℚ), (1700141227/100000000 : ℚ), (-11513040863/8000000000 : ℚ), 5⟩,
    ⟨(41755393887/500000000000 : ℚ), (41692934023/5000000000 : ℚ), (-722714885279/1000000000000 : ℚ), 4⟩,
    ⟨(21288810457/250000000000 : ℚ), (10032371339/2500000000 : ℚ), (-5599400871/15625000000 : ℚ), 4⟩,
    ⟨(86982461271/1000000000000 : ℚ), (15571023103/10000000000 : ℚ), (-147211644069/1000000000000 : ℚ), 3⟩,
    ⟨(44461113543/500000000000 : ℚ), (42383193/1250000000 : ℚ), (-13360796891/1000000000000 : ℚ), 3⟩,
    ⟨(2272499879/25000000000 : ℚ), (-9733760211/10000000000 : ℚ), (2410657723/31250000000 : ℚ), 3⟩,
    ⟨(46419880487/500000000000 : ℚ), (-16711872397/10000000000 : ℚ), (35303513539/250000000000 : ℚ), 3⟩,
    ⟨(47333490209/500000000000 : ℚ), (-1084941337/500000000 : ℚ), (187949945207/1000000000000 : ℚ), 3⟩,
    ⟨(96311434471/1000000000000 : ℚ), (-25316755509/10000000000 : ℚ), (111243974511/500000000000 : ℚ), 2⟩,
    ⟨(12213740961/125000000000 : ℚ), (-5585730419/2000000000 : ℚ), (1982574947/8000000000 : ℚ), 2⟩,
    ⟨(98808716757/1000000000000 : ℚ), (-14874860549/5000000000 : ℚ), (265713915493/1000000000000 : ℚ), 2⟩,
    ⟨(12445696979/125000000000 : ℚ), (-1931655821/625000000 : ℚ), (277187146041/1000000000000 : ℚ), 2⟩,
    ⟨(49975709621/500000000000 : ℚ), (-31469221259/10000000000 : ℚ), (35350097707/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7884715881/2500000000 : ℚ), (28349703503/100000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control43.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control43.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate43
