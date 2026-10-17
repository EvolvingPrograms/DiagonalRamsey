import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate882
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (798429223261/17022359750220 : ℚ), (934985065153/5000000000 : ℚ), (-1756237088717/200000000000 : ℚ)⟩,
  ⟨(798429223261/17022359750220 : ℚ), (639757682573/13540622512100 : ℚ), (41933538821/2500000000 : ℚ), (-31875728439/40000000000 : ℚ)⟩,
  ⟨(639757682573/13540622512100 : ℚ), (59128251923/1237905033900 : ℚ), (32327930163/10000000000 : ℚ), (-78567764201/500000000000 : ℚ)⟩,
  ⟨(59128251923/1237905033900 : ℚ), (73854271967/1526663408600 : ℚ), (-2404610427/5000000000 : ℚ), (20249227367/1000000000000 : ℚ)⟩,
  ⟨(73854271967/1526663408600 : ℚ), (9365593087/191182614975 : ℚ), (-1003792747/500000000 : ℚ), (47051749667/500000000000 : ℚ)⟩,
  ⟨(9365593087/191182614975 : ℚ), (20176187933/407560236700 : ℚ), (-27723159539/10000000000 : ℚ), (65782935841/500000000000 : ℚ)⟩,
  ⟨(20176187933/407560236700 : ℚ), (2289129367/45921248900 : ℚ), (-15899380953/5000000000 : ℚ), (30348411923/200000000000 : ℚ)⟩,
  ⟨(2289129367/45921248900 : ℚ), (17927017/358649800 : ℚ), (-16817805931/5000000000 : ℚ), (160898577083/1000000000000 : ℚ)⟩,
  ⟨(17927017/358649800 : ℚ), (1/20 : ℚ), (-16928987369/5000000000 : ℚ), (162010052137/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3071012631/20000000000 : ℚ), (-1/5 : ℚ), (192720178447/1000000000000 : ℚ)⟩,
  ⟨(3071012631/20000000000 : ℚ), (3182194069/20000000000 : ℚ), (-17927017/89662450 : ℚ), (8639461490694371/44831225000000000 : ℚ)⟩,
  ⟨(3182194069/20000000000 : ℚ), (4100619047/20000000000 : ℚ), (-2289129367/11480312225 : ℚ), (88455543848525038233/459212489000000000000 : ℚ)⟩,
  ⟨(4100619047/20000000000 : ℚ), (12276840461/40000000000 : ℚ), (-20176187933/101890059175 : ℚ), (783910018408171828407/4075602367000000000000 : ℚ)⟩,
  ⟨(12276840461/40000000000 : ℚ), (996207253/2000000000 : ℚ), (-37462372348/191182614975 : ℚ), (733021932096088218973/3823652299500000000000 : ℚ)⟩,
  ⟨(996207253/2000000000 : ℚ), (17595389573/20000000000 : ℚ), (-73854271967/381665852150 : ℚ), (45439483101805034871/238541157593750000000 : ℚ)⟩,
  ⟨(17595389573/20000000000 : ℚ), (72327930163/40000000000 : ℚ), (-59128251923/309476258475 : ℚ), (2331435459613292225171/12379050339000000000000 : ℚ)⟩,
  ⟨(72327930163/40000000000 : ℚ), (51933538821/10000000000 : ℚ), (-639757682573/3385155628025 : ℚ), (24995220253074164762757/135406225121000000000000 : ℚ)⟩,
  ⟨(51933538821/10000000000 : ℚ), (32/1 : ℚ), (-798429223261/4255589937555 : ℚ), (10070330350313310411493/56741199167400000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (708347972427/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(4686059233/100000000000 : ℚ), (934985065153/5000000000 : ℚ), (-1756237088717/200000000000 : ℚ), 12⟩,
    ⟨(5887155917/125000000000 : ℚ), (41933538821/2500000000 : ℚ), (-31875728439/40000000000 : ℚ), 9⟩,
    ⟨(4753452877/100000000000 : ℚ), (32327930163/10000000000 : ℚ), (-78567764201/500000000000 : ℚ), 8⟩,
    ⟨(48105864497/1000000000000 : ℚ), (-2404610427/5000000000 : ℚ), (20249227367/1000000000000 : ℚ), 7⟩,
    ⟨(48724273831/1000000000000 : ℚ), (-1003792747/500000000 : ℚ), (47051749667/500000000000 : ℚ), 7⟩,
    ⟨(24647804779/500000000000 : ℚ), (-27723159539/10000000000 : ℚ), (65782935841/500000000000 : ℚ), 7⟩,
    ⟨(3108305687/62500000000 : ℚ), (-15899380953/5000000000 : ℚ), (30348411923/200000000000 : ℚ), 6⟩,
    ⟨(24984772999/500000000000 : ℚ), (-16817805931/5000000000 : ℚ), (160898577083/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-16928987369/5000000000 : ℚ), (162010052137/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control882.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control882.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate882
