import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate378
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (25236848826481/299885936528800 : ℚ), (2012487182391/2000000000 : ℚ), (-84792790428523/1000000000000 : ℚ)⟩,
  ⟨(25236848826481/299885936528800 : ℚ), (1514464815038/17900454173075 : ℚ), (1065857816091/10000000000 : ℚ), (-227056098727/25000000000 : ℚ)⟩,
  ⟨(1514464815038/17900454173075 : ℚ), (1670259717183/19571480896600 : ℚ), (21864978073/625000000 : ℚ), (-94512021529/31250000000 : ℚ)⟩,
  ⟨(1670259717183/19571480896600 : ℚ), (172175165879/1994295360775 : ℚ), (77062420101/5000000000 : ℚ), (-270824994349/200000000000 : ℚ)⟩,
  ⟨(172175165879/1994295360775 : ℚ), (174981437503/1998795207050 : ℚ), (74353025771/10000000000 : ℚ), (-665424308229/1000000000000 : ℚ)⟩,
  ⟨(174981437503/1998795207050 : ℚ), (101265548649/1138789111250 : ℚ), (3437712163/1000000000 : ℚ), (-315461433223/1000000000000 : ℚ)⟩,
  ⟨(101265548649/1138789111250 : ℚ), (128142864769/1417164125900 : ℚ), (2320267881/2000000000 : ℚ), (-4517213437/40000000000 : ℚ)⟩,
  ⟨(128142864769/1417164125900 : ℚ), (17289533033/187970112260 : ℚ), (-1285150927/5000000000 : ℚ), (3803132211/250000000000 : ℚ)⟩,
  ⟨(17289533033/187970112260 : ℚ), (401739759/4294919050 : ℚ), (-11968807467/10000000000 : ℚ), (101660194009/1000000000000 : ℚ)⟩,
  ⟨(401739759/4294919050 : ℚ), (44457560789/467795032300 : ℚ), (-18497084423/10000000000 : ℚ), (162724637377/1000000000000 : ℚ)⟩,
  ⟨(44457560789/467795032300 : ℚ), (32814907859/340344966100 : ℚ), (-11587517373/5000000000 : ℚ), (103591099083/500000000000 : ℚ)⟩,
  ⟨(32814907859/340344966100 : ℚ), (24060098747/246451975800 : ℚ), (-26578484407/10000000000 : ℚ), (9599884241/40000000000 : ℚ)⟩,
  ⟨(24060098747/246451975800 : ℚ), (16996520707/172347120400 : ℚ), (-5808600833/2000000000 : ℚ), (66014301193/250000000000 : ℚ)⟩,
  ⟨(16996520707/172347120400 : ℚ), (2726326319/27440298525 : ℚ), (-30766475369/10000000000 : ℚ), (281053725479/1000000000000 : ℚ)⟩,
  ⟨(2726326319/27440298525 : ℚ), (5338677193/53489218800 : ℚ), (-3186408731/1000000000 : ℚ), (58391806151/200000000000 : ℚ)⟩,
  ⟨(5338677193/53489218800 : ℚ), (165578721/1656105200 : ℚ), (-16199489749/5000000000 : ℚ), (74324426987/250000000000 : ℚ)⟩,
  ⟨(165578721/1656105200 : ℚ), (1/10 : ℚ), (-16232611853/5000000000 : ℚ), (18622501427/62500000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3767388147/20000000000 : ℚ), (-2/5 : ℚ), (93326946443/250000000000 : ℚ)⟩,
  ⟨(3767388147/20000000000 : ℚ), (3800510251/20000000000 : ℚ), (-165578721/414026300 : ℚ), (3091065026911789619/8280526000000000000 : ℚ)⟩,
  ⟨(3800510251/20000000000 : ℚ), (813591269/4000000000 : ℚ), (-5338677193/13372304700 : ℚ), (19960161628924352111/53489218800000000000 : ℚ)⟩,
  ⟨(813591269/4000000000 : ℚ), (9233524631/40000000000 : ℚ), (-10905305276/27440298525 : ℚ), (81836466004561319579/219522388200000000000 : ℚ)⟩,
  ⟨(9233524631/40000000000 : ℚ), (2191399167/8000000000 : ℚ), (-16996520707/43086780100 : ℚ), (641325795229363640833/1723471204000000000000 : ℚ)⟩,
  ⟨(2191399167/8000000000 : ℚ), (13421515593/40000000000 : ℚ), (-24060098747/61612993950 : ℚ), (304800200054471201307/821506586000000000000 : ℚ)⟩,
  ⟨(13421515593/40000000000 : ℚ), (8412482627/20000000000 : ℚ), (-32814907859/85086241525 : ℚ), (78577741665887128307/212715603812500000000 : ℚ)⟩,
  ⟨(8412482627/20000000000 : ℚ), (21502915577/40000000000 : ℚ), (-44457560789/116948758075 : ℚ), (53662029574468985407/146185947593750000000 : ℚ)⟩,
  ⟨(21502915577/40000000000 : ℚ), (28031192533/40000000000 : ℚ), (-803479518/2147459525 : ℚ), (31254935142899038523/85898381000000000000 : ℚ)⟩,
  ⟨(28031192533/40000000000 : ℚ), (18714849073/20000000000 : ℚ), (-17289533033/46992528065 : ℚ), (1689342525140343842731/4699252806500000000000 : ℚ)⟩,
  ⟨(18714849073/20000000000 : ℚ), (10320267881/8000000000 : ℚ), (-128142864769/354291031475 : ℚ), (501193524928672599287/1417164125900000000000 : ℚ)⟩,
  ⟨(10320267881/8000000000 : ℚ), (7437712163/4000000000 : ℚ), (-202531097298/569394555625 : ℚ), (225108547260493785559/650736635000000000000 : ℚ)⟩,
  ⟨(7437712163/4000000000 : ℚ), (114353025771/40000000000 : ℚ), (-349962875006/999397603525 : ℚ), (13418375305600628303337/39975904141000000000000 : ℚ)⟩,
  ⟨(114353025771/40000000000 : ℚ), (97062420101/20000000000 : ℚ), (-688700663516/1994295360775 : ℚ), (25672900289629613218137/79771814431000000000000 : ℚ)⟩,
  ⟨(97062420101/20000000000 : ℚ), (24364978073/2500000000 : ℚ), (-1670259717183/4892870224150 : ℚ), (3701036908301547870331/12232175560375000000000 : ℚ)⟩,
  ⟨(24364978073/2500000000 : ℚ), (1105857816091/40000000000 : ℚ), (-6057859260152/17900454173075 : ℚ), (6127479614080049638281/22375567716343750000000 : ℚ)⟩,
  ⟨(1105857816091/40000000000 : ℚ), (32/1 : ℚ), (-25236848826481/74971484132200 : ℚ), (671994203742167477170731/2998859365288000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (41908612281/125000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(8409858973/100000000000 : ℚ), (2012487182391/2000000000 : ℚ), (-84792790428523/1000000000000 : ℚ), 11⟩,
    ⟨(42201696731/500000000000 : ℚ), (1065857816091/10000000000 : ℚ), (-227056098727/25000000000 : ℚ), 8⟩,
    ⟨(85001287489/1000000000000 : ℚ), (21864978073/625000000 : ℚ), (-94512021529/31250000000 : ℚ), 7⟩,
    ⟨(2146732377/25000000000 : ℚ), (77062420101/5000000000 : ℚ), (-270824994349/200000000000 : ℚ), 6⟩,
    ⟨(8697405919/100000000000 : ℚ), (74353025771/10000000000 : ℚ), (-665424308229/1000000000000 : ℚ), 5⟩,
    ⟨(88273124353/1000000000000 : ℚ), (3437712163/1000000000 : ℚ), (-315461433223/1000000000000 : ℚ), 5⟩,
    ⟨(89716568223/1000000000000 : ℚ), (2320267881/2000000000 : ℚ), (-4517213437/40000000000 : ℚ), 4⟩,
    ⟨(91248920063/1000000000000 : ℚ), (-1285150927/5000000000 : ℚ), (3803132211/250000000000 : ℚ), 4⟩,
    ⟨(1856225849/20000000000 : ℚ), (-11968807467/10000000000 : ℚ), (101660194009/1000000000000 : ℚ), 4⟩,
    ⟨(9434364429/100000000000 : ℚ), (-18497084423/10000000000 : ℚ), (162724637377/1000000000000 : ℚ), 4⟩,
    ⟨(598669301/6250000000 : ℚ), (-11587517373/5000000000 : ℚ), (103591099083/500000000000 : ℚ), 3⟩,
    ⟨(97086153323/1000000000000 : ℚ), (-26578484407/10000000000 : ℚ), (9599884241/40000000000 : ℚ), 3⟩,
    ⟨(12273864679/125000000000 : ℚ), (-5808600833/2000000000 : ℚ), (66014301193/250000000000 : ℚ), 3⟩,
    ⟨(99058925023/1000000000000 : ℚ), (-30766475369/10000000000 : ℚ), (281053725479/1000000000000 : ℚ), 3⟩,
    ⟨(99656819051/1000000000000 : ℚ), (-3186408731/1000000000 : ℚ), (58391806151/200000000000 : ℚ), 3⟩,
    ⟨(99961622783/1000000000000 : ℚ), (-16199489749/5000000000 : ℚ), (74324426987/250000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-16232611853/5000000000 : ℚ), (18622501427/62500000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control378.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control378.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate378
