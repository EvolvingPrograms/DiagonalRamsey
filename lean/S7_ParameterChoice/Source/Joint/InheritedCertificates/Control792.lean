import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate792
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (41531603051929/246263903786900 : ℚ), (5510003965309/10000000000 : ℚ), (-9304725314329/100000000000 : ℚ)⟩,
  ⟨(41531603051929/246263903786900 : ℚ), (332288295848/1959973281885 : ℚ), (584725889571/10000000000 : ℚ), (-1248005879929/125000000000 : ℚ)⟩,
  ⟨(332288295848/1959973281885 : ℚ), (610619477533/3570982520800 : ℚ), (96365616597/5000000000 : ℚ), (-417285140309/125000000000 : ℚ)⟩,
  ⟨(610619477533/3570982520800 : ℚ), (754803328231/4364078318800 : ℚ), (8560175757/1000000000 : ℚ), (-1506422689873/1000000000000 : ℚ)⟩,
  ⟨(754803328231/4364078318800 : ℚ), (47878842068/273044846175 : ℚ), (20980487191/5000000000 : ℚ), (-375809680821/500000000000 : ℚ)⟩,
  ⟨(47878842068/273044846175 : ℚ), (221182725061/1242021718600 : ℚ), (314334167/156250000 : ℚ), (-184294312549/500000000000 : ℚ)⟩,
  ⟨(221182725061/1242021718600 : ℚ), (46505804029/256871424800 : ℚ), (3848584751/5000000000 : ℚ), (-147405900037/1000000000000 : ℚ)⟩,
  ⟨(46505804029/256871424800 : ℚ), (18753754157/101850571860 : ℚ), (-4486621/5000000000 : ℚ), (-157769759/20000000000 : ℚ)⟩,
  ⟨(18753754157/101850571860 : ℚ), (16491109644/88087312825 : ℚ), (-1020300367/2000000000 : ℚ), (17176056567/200000000000 : ℚ)⟩,
  ⟨(16491109644/88087312825 : ℚ), (47832488603/251514907500 : ℚ), (-2156248587/2500000000 : ℚ), (151844721411/1000000000000 : ℚ)⟩,
  ⟨(47832488603/251514907500 : ℚ), (35182526421/182379051200 : ℚ), (-11140143423/10000000000 : ℚ), (99838605007/500000000000 : ℚ)⟩,
  ⟨(35182526421/182379051200 : ℚ), (12863066897/65862464300 : ℚ), (-2592786787/2000000000 : ℚ), (46971947287/200000000000 : ℚ)⟩,
  ⟨(12863066897/65862464300 : ℚ), (725592281/3678259380 : ℚ), (-14281183221/10000000000 : ℚ), (260585870229/1000000000000 : ℚ)⟩,
  ⟨(725592281/3678259380 : ℚ), (1937682063/9750652450 : ℚ), (-7600374033/5000000000 : ℚ), (139362838627/500000000000 : ℚ)⟩,
  ⟨(1937682063/9750652450 : ℚ), (948078169/4749390850 : ℚ), (-15785787213/10000000000 : ℚ), (9073492801/31250000000 : ℚ)⟩,
  ⟨(948078169/4749390850 : ℚ), (705586441/3528602500 : ℚ), (-2008843833/1250000000 : ℚ), (148020119323/500000000000 : ℚ)⟩,
  ⟨(705586441/3528602500 : ℚ), (1/5 : ℚ), (-16106036689/10000000000 : ℚ), (296745825087/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3893963311/20000000000 : ℚ), (-2/5 : ℚ), (374625091307/1000000000000 : ℚ)⟩,
  ⟨(3893963311/20000000000 : ℚ), (491156167/2500000000 : ℚ), (-705586441/1764301250 : ℚ), (6609254158329287663/17643012500000000000 : ℚ)⟩,
  ⟨(491156167/2500000000 : ℚ), (4214212787/20000000000 : ℚ), (-948078169/2374695425 : ℚ), (711413740903625347/1899756340000000000 : ℚ)⟩,
  ⟨(4214212787/20000000000 : ℚ), (2399625967/10000000000 : ℚ), (-1937682063/4875326225 : ℚ), (7295399293255220713/19501304900000000000 : ℚ)⟩,
  ⟨(2399625967/10000000000 : ℚ), (5718816779/20000000000 : ℚ), (-725592281/1839129690 : ℚ), (17168191907435628599/45978242250000000000 : ℚ)⟩,
  ⟨(5718816779/20000000000 : ℚ), (1407213213/4000000000 : ℚ), (-12863066897/32931232150 : ℚ), (24518979855038251801/65862464300000000000 : ℚ)⟩,
  ⟨(1407213213/4000000000 : ℚ), (8859856577/20000000000 : ℚ), (-35182526421/91189525600 : ℚ), (135176307838547541617/364758102400000000000 : ℚ)⟩,
  ⟨(8859856577/20000000000 : ℚ), (2843751413/5000000000 : ℚ), (-47832488603/125757453750 : ℚ), (926006938808859928981/2515149075000000000000 : ℚ)⟩,
  ⟨(2843751413/5000000000 : ℚ), (2979699633/4000000000 : ℚ), (-32982219288/88087312825 : ℚ), (257073920132647225479/704698502600000000000 : ℚ)⟩,
  ⟨(2979699633/4000000000 : ℚ), (9995513379/10000000000 : ℚ), (-18753754157/50925285930 : ℚ), (15286347128223272589/42437738275000000000 : ℚ)⟩,
  ⟨(9995513379/10000000000 : ℚ), (13848584751/10000000000 : ℚ), (-46505804029/128435712400 : ℚ), (454717750676850948191/1284357124000000000000 : ℚ)⟩,
  ⟨(13848584751/10000000000 : ℚ), (626834167/312500000 : ℚ), (-221182725061/621010859300 : ℚ), (214766106698571742687/621010859300000000000 : ℚ)⟩,
  ⟨(626834167/312500000 : ℚ), (30980487191/10000000000 : ℚ), (-95757684136/273044846175 : ℚ), (365744710799302419113/1092179384700000000000 : ℚ)⟩,
  ⟨(30980487191/10000000000 : ℚ), (10560175757/2000000000 : ℚ), (-754803328231/2182039159400 : ℚ), (6983546041323921351773/21820391594000000000000 : ℚ)⟩,
  ⟨(10560175757/2000000000 : ℚ), (106365616597/10000000000 : ℚ), (-610619477533/1785491260400 : ℚ), (5344199544614952978113/17854912604000000000000 : ℚ)⟩,
  ⟨(106365616597/10000000000 : ℚ), (604725889571/20000000000 : ℚ), (-664576591696/1959973281885 : ℚ), (13146702192539688345787/48999332047125000000000 : ℚ)⟩,
  ⟨(604725889571/20000000000 : ℚ), (32/1 : ℚ), (-41531603051929/123131951893450 : ℚ), (528131605661764648282051/2462639037869000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (456343183361/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(42133864207/250000000000 : ℚ), (5510003965309/10000000000 : ℚ), (-9304725314329/100000000000 : ℚ), 12⟩,
    ⟨(6765543203/40000000000 : ℚ), (584725889571/10000000000 : ℚ), (-1248005879929/125000000000 : ℚ), 9⟩,
    ⟨(2129020611/12500000000 : ℚ), (96365616597/5000000000 : ℚ), (-417285140309/125000000000 : ℚ), 7⟩,
    ⟨(43009799643/250000000000 : ℚ), (8560175757/1000000000 : ℚ), (-1506422689873/1000000000000 : ℚ), 7⟩,
    ⟨(174225224681/1000000000000 : ℚ), (20980487191/5000000000 : ℚ), (-375809680821/500000000000 : ℚ), 6⟩,
    ⟨(176795719449/1000000000000 : ℚ), (314334167/156250000 : ℚ), (-184294312549/500000000000 : ℚ), 5⟩,
    ⟨(179651900203/1000000000000 : ℚ), (3848584751/5000000000 : ℚ), (-147405900037/1000000000000 : ℚ), 5⟩,
    ⟨(182684005519/1000000000000 : ℚ), (-4486621/5000000000 : ℚ), (-157769759/20000000000 : ℚ), 5⟩,
    ⟨(18577551329/100000000000 : ℚ), (-1020300367/2000000000 : ℚ), (17176056567/200000000000 : ℚ), 5⟩,
    ⟨(94403809303/500000000000 : ℚ), (-2156248587/2500000000 : ℚ), (151844721411/1000000000000 : ℚ), 4⟩,
    ⟨(598949373/3125000000 : ℚ), (-11140143423/10000000000 : ℚ), (99838605007/500000000000 : ℚ), 4⟩,
    ⟨(12139643383/62500000000 : ℚ), (-2592786787/2000000000 : ℚ), (46971947287/200000000000 : ℚ), 4⟩,
    ⟨(196420320237/1000000000000 : ℚ), (-14281183221/10000000000 : ℚ), (260585870229/1000000000000 : ℚ), 4⟩,
    ⟨(19813786993/100000000000 : ℚ), (-7600374033/5000000000 : ℚ), (139362838627/500000000000 : ℚ), 4⟩,
    ⟨(39864187747/200000000000 : ℚ), (-15785787213/10000000000 : ℚ), (9073492801/31250000000 : ℚ), 4⟩,
    ⟨(199924061981/1000000000000 : ℚ), (-2008843833/1250000000 : ℚ), (148020119323/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16106036689/10000000000 : ℚ), (296745825087/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control792.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control792.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate792
