import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control47
namespace DiagonalRamsey.JointInheritedCertificate47
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19959352509/500000000000 : ℚ), (10784353667409/10000000000 : ℚ), (-43164989558729/1000000000000 : ℚ), 10⟩,
    ⟨(40111946767/1000000000000 : ℚ), (570491390657/5000000000 : ℚ), (-2317765117509/500000000000 : ℚ), 7⟩,
    ⟨(40491004093/1000000000000 : ℚ), (9370285691/250000000 : ℚ), (-1552488016001/1000000000000 : ℚ), 6⟩,
    ⟨(10260327509/250000000000 : ℚ), (82967915719/5000000000 : ℚ), (-702227024609/1000000000000 : ℚ), 5⟩,
    ⟨(41741716647/1000000000000 : ℚ), (1013311567/125000000 : ℚ), (-70281537647/200000000000 : ℚ), 4⟩,
    ⟨(10641326923/250000000000 : ℚ), (38668335023/10000000000 : ℚ), (-86453715927/500000000000 : ℚ), 4⟩,
    ⟨(4348043303/100000000000 : ℚ), (14581254843/10000000000 : ℚ), (-17346680537/250000000000 : ℚ), 3⟩,
    ⟨(11112981227/250000000000 : ℚ), (-373320647/10000000000 : ℚ), (-230934229/62500000000 : ℚ), 3⟩,
    ⟨(11360612359/250000000000 : ℚ), (-128443357/125000000 : ℚ), (40781001413/1000000000000 : ℚ), 3⟩,
    ⟨(46413941313/1000000000000 : ℚ), (-17145670197/10000000000 : ℚ), (4519844607/62500000000 : ℚ), 3⟩,
    ⟨(47329066651/1000000000000 : ℚ), (-22063424693/10000000000 : ℚ), (95358699049/1000000000000 : ℚ), 3⟩,
    ⟨(1504770553/31250000000 : ℚ), (-12818419003/5000000000 : ℚ), (28103478507/250000000000 : ℚ), 3⟩,
    ⟨(48853064307/1000000000000 : ℚ), (-7055087947/2500000000 : ℚ), (15617825169/125000000000 : ℚ), 2⟩,
    ⟨(197613481/4000000000 : ℚ), (-15011913073/5000000000 : ℚ), (16725242263/125000000000 : ℚ), 2⟩,
    ⟨(6222803447/125000000000 : ℚ), (-3896308247/1250000000 : ℚ), (139488231153/1000000000000 : ℚ), 2⟩,
    ⟨(1999026773/40000000000 : ℚ), (-253828627/80000000 : ℚ), (28454403083/200000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-254381313/80000000 : ℚ), (71308680033/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (52803117119/200000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control47.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control47.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate47

-- Control48
namespace DiagonalRamsey.JointInheritedCertificate48
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80106754159/1000000000000 : ℚ), (1371038931787/1250000000 : ℚ), (-88094918313623/1000000000000 : ℚ), 10⟩,
    ⟨(10061009347/125000000000 : ℚ), (2902660951/25000000 : ℚ), (-9463266658777/1000000000000 : ℚ), 7⟩,
    ⟨(10154507759/125000000000 : ℚ), (190899001361/5000000000 : ℚ), (-158573654589/50000000000 : ℚ), 6⟩,
    ⟨(20580492829/250000000000 : ℚ), (33866563507/2000000000 : ℚ), (-287290328013/200000000000 : ℚ), 5⟩,
    ⟨(10463008953/125000000000 : ℚ), (83003709731/10000000000 : ℚ), (-144151900693/200000000000 : ℚ), 4⟩,
    ⟨(10666156207/125000000000 : ℚ), (19943677327/5000000000 : ℚ), (-71357730543/200000000000 : ℚ), 4⟩,
    ⟨(21783762683/250000000000 : ℚ), (1925400547/1250000000 : ℚ), (-145875075469/1000000000000 : ℚ), 3⟩,
    ⟨(89052078929/1000000000000 : ℚ), (1072201/50000000 : ℚ), (-12187874331/1000000000000 : ℚ), 3⟩,
    ⟨(11375832991/125000000000 : ℚ), (-4915736577/5000000000 : ℚ), (39095872569/500000000000 : ℚ), 3⟩,
    ⟨(743389537/8000000000 : ℚ), (-3358388951/2000000000 : ℚ), (71084766013/500000000000 : ℚ), 3⟩,
    ⟨(94729493201/1000000000000 : ℚ), (-10883486109/5000000000 : ℚ), (188830303311/1000000000000 : ℚ), 3⟩,
    ⟨(96354671233/1000000000000 : ℚ), (-25376755399/10000000000 : ℚ), (223309749097/1000000000000 : ℚ), 2⟩,
    ⟨(97736771541/1000000000000 : ℚ), (-27983154311/10000000000 : ℚ), (62149882847/250000000000 : ℚ), 2⟩,
    ⟨(19764536157/200000000000 : ℚ), (-2980065317/1000000000 : ℚ), (33307528973/125000000000 : ℚ), 2⟩,
    ⟨(99570668081/1000000000000 : ℚ), (-3869412727/1250000000 : ℚ), (17369594263/62500000000 : ℚ), 2⟩,
    ⟨(49975994349/500000000000 : ℚ), (-31517045033/10000000000 : ℚ), (141758739211/500000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-6317313559/2000000000 : ℚ), (284212539039/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (50878640511/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control48.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control48.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate48

-- Control49
namespace DiagonalRamsey.JointInheritedCertificate49
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(109985065573/500000000000 : ℚ), (1785667146631/2500000000 : ℚ), (-31579121460639/200000000000 : ℚ), 10⟩,
    ⟨(221558357473/1000000000000 : ℚ), (383667146501/5000000000 : ℚ), (-17471160415137/1000000000000 : ℚ), 7⟩,
    ⟨(2808993933/12500000000 : ℚ), (262711459189/10000000000 : ℚ), (-6237398746779/1000000000000 : ℚ), 5⟩,
    ⟨(114711579487/500000000000 : ℚ), (126104754223/10000000000 : ℚ), (-628521420553/200000000000 : ℚ), 5⟩,
    ⟨(235623991811/1000000000000 : ℚ), (71218946241/10000000000 : ℚ), (-46731195577/25000000000 : ℚ), 4⟩,
    ⟨(243262295739/1000000000000 : ℚ), (44248845693/10000000000 : ℚ), (-76554032097/62500000000 : ℚ), 3⟩,
    ⟨(63066127429/250000000000 : ℚ), (14632715709/5000000000 : ℚ), (-854397456167/1000000000000 : ℚ), 3⟩,
    ⟨(262543937501/1000000000000 : ℚ), (20221852259/10000000000 : ℚ), (-311033617203/500000000000 : ℚ), 3⟩,
    ⟨(54800316517/200000000000 : ℚ), (14425664549/10000000000 : ℚ), (-466856664409/1000000000000 : ℚ), 2⟩,
    ⟨(143263550791/500000000000 : ℚ), (5268289857/5000000000 : ℚ), (-179022746603/500000000000 : ℚ), 2⟩,
    ⟨(299999866897/1000000000000 : ℚ), (3915081689/5000000000 : ℚ), (-139400512331/500000000000 : ℚ), 2⟩,
    ⟨(62858025687/200000000000 : ℚ), (5889351443/10000000000 : ℚ), (-54818901959/250000000000 : ℚ), 2⟩,
    ⟨(164630131583/500000000000 : ℚ), (2230891219/5000000000 : ℚ), (-173399732157/1000000000000 : ℚ), 2⟩,
    ⟨(344766100509/1000000000000 : ℚ), (3388492089/10000000000 : ℚ), (-6863532431/50000000000 : ℚ), 2⟩,
    ⟨(180329155387/500000000000 : ℚ), (2565975279/10000000000 : ℚ), (-27072395111/250000000000 : ℚ), 2⟩,
    ⟨(47097980411/125000000000 : ℚ), (240617231/1250000000 : ℚ), (-16934956827/200000000000 : ℚ), 2⟩,
    ⟨(196493700179/500000000000 : ℚ), (1417875991/10000000000 : ℚ), (-65174267201/1000000000000 : ℚ), 2⟩,
    ⟨(51139116609/125000000000 : ℚ), (252887311/2500000000 : ℚ), (-24444877209/500000000000 : ℚ), 2⟩,
    ⟨(425005143137/1000000000000 : ℚ), (341138351/5000000000 : ℚ), (-35165234911/1000000000000 : ℚ), 2⟩,
    ⟨(688298407/1562500000 : ℚ), (412918787/10000000000 : ℚ), (-11757179281/500000000000 : ℚ), 1⟩,
    ⟨(455481115211/1000000000000 : ℚ), (190895591/10000000000 : ℚ), (-13571942263/1000000000000 : ℚ), 1⟩,
    ⟨(1879085507/4000000000 : ℚ), (685941/1000000000 : ℚ), (-1265214841/250000000000 : ℚ), 1⟩,
    ⟨(96648828413/200000000000 : ℚ), (-146210347/10000000000 : ℚ), (6971911/3125000000 : ℚ), 1⟩,
    ⟨(247884830531/500000000000 : ℚ), (-273633939/10000000000 : ℚ), (846711077/100000000000 : ℚ), 1⟩,
    ⟨(253613653073/500000000000 : ℚ), (-189735647/5000000000 : ℚ), (1377393141/100000000000 : ℚ), 1⟩,
    ⟨(517506733931/1000000000000 : ℚ), (-933669/20000000 : ℚ), (18249558431/1000000000000 : ℚ), 1⟩,
    ⟨(131627236977/250000000000 : ℚ), (-538111841/10000000000 : ℚ), (21969945327/1000000000000 : ℚ), 1⟩,
    ⟨(133536812959/250000000000 : ℚ), (-595129477/10000000000 : ℚ), (3124194753/125000000000 : ℚ), 1⟩,
    ⟨(8442938823/15625000000 : ℚ), (-127853677/2000000000 : ℚ), (27364814891/1000000000000 : ℚ), 1⟩,
    ⟨(272525864503/500000000000 : ℚ), (-335774297/5000000000 : ℚ), (14558311063/500000000000 : ℚ), 1⟩,
    ⟨(548212886173/1000000000000 : ℚ), (-692688887/10000000000 : ℚ), (15136103673/500000000000 : ℚ), 1⟩,
    ⟨(43984089/80000000 : ℚ), (-703147511/10000000000 : ℚ), (30846391727/1000000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-704449669/10000000000 : ℚ), (30917997433/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (244350754039/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control49.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control49.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate49

-- Control50
namespace DiagonalRamsey.JointInheritedCertificate50
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(24886757403/100000000000 : ℚ), (7638811558311/2500000000 : ℚ), (-380765701967707/500000000000 : ℚ), 12⟩,
    ⟨(31161308089/125000000000 : ℚ), (672064791513/2000000000 : ℚ), (-84526419136151/1000000000000 : ℚ), 9⟩,
    ⟨(7816725853/31250000000 : ℚ), (297552588133/2500000000 : ℚ), (-7591521515307/250000000000 : ℚ), 7⟩,
    ⟨(10055993067/40000000000 : ℚ), (594839138053/10000000000 : ℚ), (-7722221846543/500000000000 : ℚ), 6⟩,
    ⟨(253081216317/1000000000000 : ℚ), (43908172249/1250000000 : ℚ), (-145374062221/15625000000 : ℚ), 6⟩,
    ⟨(31896918201/125000000000 : ℚ), (7152776233/312500000 : ℚ), (-6195719941641/1000000000000 : ℚ), 5⟩,
    ⟨(32209646201/125000000000 : ℚ), (159139002057/10000000000 : ℚ), (-4408126173543/1000000000000 : ℚ), 5⟩,
    ⟨(130290330601/500000000000 : ℚ), (115837643683/10000000000 : ℚ), (-3286666674499/1000000000000 : ℚ), 4⟩,
    ⟨(131939412813/500000000000 : ℚ), (21811108217/2500000000 : ℚ), (-2537265108509/1000000000000 : ℚ), 4⟩,
    ⟨(4180683083/15625000000 : ℚ), (67462177561/10000000000 : ℚ), (-201188236867/100000000000 : ℚ), 4⟩,
    ⟨(271626459033/1000000000000 : ℚ), (53267744683/10000000000 : ℚ), (-407350740367/250000000000 : ℚ), 4⟩,
    ⟨(276057263289/1000000000000 : ℚ), (42780356241/10000000000 : ℚ), (-1342357976011/1000000000000 : ℚ), 3⟩,
    ⟨(56169091177/200000000000 : ℚ), (34843637909/10000000000 : ℚ), (-560733451181/500000000000 : ℚ), 3⟩,
    ⟨(57195900329/200000000000 : ℚ), (7178894407/2500000000 : ℚ), (-947872684731/1000000000000 : ℚ), 3⟩,
    ⟨(291447032203/1000000000000 : ℚ), (597570383/250000000 : ℚ), (-808986162421/1000000000000 : ℚ), 3⟩,
    ⟨(148617437899/500000000000 : ℚ), (5016829087/2500000000 : ℚ), (-696142424701/1000000000000 : ℚ), 3⟩,
    ⟨(30332908901/100000000000 : ℚ), (4242860789/2500000000 : ℚ), (-603219362097/1000000000000 : ℚ), 3⟩,
    ⟨(38714373793/125000000000 : ℚ), (577775467/400000000 : ℚ), (-131448015929/250000000000 : ℚ), 2⟩,
    ⟨(63275439121/200000000000 : ℚ), (123609729/100000000 : ℚ), (-115149509207/250000000000 : ℚ), 2⟩,
    ⟨(323299654957/1000000000000 : ℚ), (10627896843/10000000000 : ℚ), (-405189214763/1000000000000 : ℚ), 2⟩,
    ⟨(82616422897/250000000000 : ℚ), (9174554177/10000000000 : ℚ), (-357699741827/1000000000000 : ℚ), 2⟩,
    ⟨(33785804189/100000000000 : ℚ), (3973398899/5000000000 : ℚ), (-316687515221/1000000000000 : ℚ), 2⟩,
    ⟨(172729448521/500000000000 : ℚ), (1725650229/2500000000 : ℚ), (-281023871119/1000000000000 : ℚ), 2⟩,
    ⟨(353249945919/1000000000000 : ℚ), (6008990277/10000000000 : ℚ), (-249815393177/1000000000000 : ℚ), 2⟩,
    ⟨(361212419201/1000000000000 : ℚ), (2619921157/5000000000 : ℚ), (-111173788641/500000000000 : ℚ), 2⟩,
    ⟨(184663567297/500000000000 : ℚ), (457427613/1000000000 : ℚ), (-198043637979/1000000000000 : ℚ), 2⟩,
    ⟨(94393635759/250000000000 : ℚ), (998866501/2500000000 : ℚ), (-176433975687/1000000000000 : ℚ), 2⟩,
    ⟨(385934775799/1000000000000 : ℚ), (139590127/400000000 : ℚ), (-6285330463/40000000000 : ℚ), 2⟩,
    ⟨(394387692349/1000000000000 : ℚ), (3045974069/10000000000 : ℚ), (-27964608599/200000000000 : ℚ), 2⟩,
    ⟨(402912928871/1000000000000 : ℚ), (265494701/1000000000 : ℚ), (-124238398927/1000000000000 : ℚ), 2⟩,
    ⟨(205744973661/500000000000 : ℚ), (577269079/2500000000 : ℚ), (-3442425029/31250000000 : ℚ), 2⟩,
    ⟨(84019616983/200000000000 : ℚ), (500511071/2500000000 : ℚ), (-4869701517/50000000000 : ℚ), 2⟩,
    ⟨(428716603891/1000000000000 : ℚ), (1728569627/10000000000 : ℚ), (-5361862871/62500000000 : ℚ), 2⟩,
    ⟨(437324741483/1000000000000 : ℚ), (1484216603/10000000000 : ℚ), (-75210719221/1000000000000 : ℚ), 2⟩,
    ⟨(222950879967/500000000000 : ℚ), (632621583/5000000000 : ℚ), (-65542180437/1000000000000 : ℚ), 2⟩,
    ⟨(56803374557/125000000000 : ℚ), (534239687/5000000000 : ℚ), (-28342975101/500000000000 : ℚ), 2⟩,
    ⟨(231439956503/500000000000 : ℚ), (891229447/10000000000 : ℚ), (-48557488109/1000000000000 : ℚ), 2⟩,
    ⟨(471240145769/1000000000000 : ℚ), (731192429/10000000000 : ℚ), (-41083788377/1000000000000 : ℚ), 1⟩,
    ⟨(119871888553/250000000000 : ℚ), (586397581/10000000000 : ℚ), (-8550400687/250000000000 : ℚ), 1⟩,
    ⟨(121900567401/250000000000 : ℚ), (455151523/10000000000 : ℚ), (-217624803/7812500000 : ℚ), 1⟩,
    ⟨(495564742887/1000000000000 : ℚ), (20999673/625000000 : ℚ), (-10999511319/500000000000 : ℚ), 1⟩,
    ⟨(503355791763/1000000000000 : ℚ), (227665849/10000000000 : ℚ), (-259201969/15625000000 : ℚ), 1⟩,
    ⟨(102191329383/200000000000 : ℚ), (129071571/10000000000 : ℚ), (-1448634629/125000000000 : ℚ), 1⟩,
    ⟨(518348997217/1000000000000 : ℚ), (39262267/10000000000 : ℚ), (-3483683761/500000000000 : ℚ), 1⟩,
    ⟨(65689379231/125000000000 : ℚ), (-42588873/10000000000 : ℚ), (-2695586827/1000000000000 : ℚ), 1⟩,
    ⟨(1331093733/2500000000 : ℚ), (-117203119/10000000000 : ℚ), (250217583/200000000000 : ℚ), 1⟩,
    ⟨(539099698461/1000000000000 : ℚ), (-37042151/2000000000 : ℚ), (978904971/200000000000 : ℚ), 1⟩,
    ⟨(109097119959/200000000000 : ℚ), (-247163341/10000000000 : ℚ), (8254005961/1000000000000 : ℚ), 1⟩,
    ⟨(551579813007/1000000000000 : ℚ), (-151772041/5000000000 : ℚ), (2269308561/200000000000 : ℚ), 1⟩,
    ⟨(557367656603/1000000000000 : ℚ), (-177388303/5000000000 : ℚ), (7093573291/500000000000 : ℚ), 1⟩,
    ⟨(14070879679/25000000000 : ℚ), (-40123241/1000000000 : ℚ), (8394529753/500000000000 : ℚ), 1⟩,
    ⟨(14199230823/25000000000 : ℚ), (-55404649/1250000000 : ℚ), (19163954069/1000000000000 : ℚ), 1⟩,
    ⟨(143189356379/250000000000 : ℚ), (-240538119/5000000000 : ℚ), (21322104397/1000000000000 : ℚ), 1⟩,
    ⟨(144297057443/250000000000 : ℚ), (-16093719/312500000 : ℚ), (4654506739/200000000000 : ℚ), 1⟩,
    ⟨(290625485747/500000000000 : ℚ), (-545223037/10000000000 : ℚ), (12511570383/500000000000 : ℚ), 1⟩,
    ⟨(29246793159/50000000000 : ℚ), (-285968629/5000000000 : ℚ), (1329040471/50000000000 : ℚ), 1⟩,
    ⟨(588234027603/1000000000000 : ℚ), (-148826203/2500000000 : ℚ), (5590300223/200000000000 : ℚ), 1⟩,
    ⟨(591137519197/1000000000000 : ℚ), (-615465431/10000000000 : ℚ), (29140334979/1000000000000 : ℚ), 1⟩,
    ⟨(593639343197/1000000000000 : ℚ), (-126507487/2000000000 : ℚ), (30151655081/1000000000000 : ℚ), 1⟩,
    ⟨(74466684061/125000000000 : ℚ), (-646619391/10000000000 : ℚ), (30989086549/1000000000000 : ℚ), 1⟩,
    ⟨(59741486213/100000000000 : ℚ), (-164447871/2500000000 : ℚ), (3956947891/125000000000 : ℚ), 1⟩,
    ⟨(598679461509/1000000000000 : ℚ), (-333058301/5000000000 : ℚ), (32153463739/1000000000000 : ℚ), 1⟩,
    ⟨(599524224093/1000000000000 : ℚ), (-671641193/10000000000 : ℚ), (8121110701/250000000000 : ℚ), 1⟩,
    ⟨(23997884591/40000000000 : ℚ), (-337197941/5000000000 : ℚ), (16324825639/500000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-674739863/10000000000 : ℚ), (32670289251/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (229899444369/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control50.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control50.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate50

-- Control51
namespace DiagonalRamsey.JointInheritedCertificate51
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(316500916341/1000000000000 : ℚ), (889708639741/250000000 : ℚ), (-563901910807761/500000000000 : ℚ), 12⟩,
    ⟨(19810174263/62500000000 : ℚ), (156738941761/400000000 : ℚ), (-125180381790071/1000000000000 : ℚ), 9⟩,
    ⟨(79471354813/250000000000 : ℚ), (1390367649429/10000000000 : ℚ), (-5621326613671/125000000000 : ℚ), 8⟩,
    ⟨(12770663471/40000000000 : ℚ), (348185291391/5000000000 : ℚ), (-2287213690191/100000000000 : ℚ), 7⟩,
    ⟨(160551481711/500000000000 : ℚ), (82443053697/2000000000 : ℚ), (-1377826177131/100000000000 : ℚ), 6⟩,
    ⟨(323390125201/1000000000000 : ℚ), (269301933329/10000000000 : ℚ), (-9175111911341/1000000000000 : ℚ), 5⟩,
    ⟨(16306128107/50000000000 : ℚ), (187746075581/10000000000 : ℚ), (-815972079999/125000000000 : ℚ), 5⟩,
    ⟨(329293691559/1000000000000 : ℚ), (137043264747/10000000000 : ℚ), (-4866974631821/1000000000000 : ℚ), 4⟩,
    ⟨(332895873929/1000000000000 : ℚ), (25877317957/2500000000 : ℚ), (-3757189072019/1000000000000 : ℚ), 4⟩,
    ⟨(84230107819/250000000000 : ℚ), (16053658731/2000000000 : ℚ), (-595835954007/200000000000 : ℚ), 4⟩,
    ⟨(341357668091/1000000000000 : ℚ), (63560938571/10000000000 : ℚ), (-603204574611/250000000000 : ℚ), 4⟩,
    ⟨(346196894681/1000000000000 : ℚ), (51192565187/10000000000 : ℚ), (-1987805703251/1000000000000 : ℚ), 3⟩,
    ⟨(87856613231/250000000000 : ℚ), (5226644363/1250000000 : ℚ), (-1660779380337/1000000000000 : ℚ), 3⟩,
    ⟨(178516872179/500000000000 : ℚ), (34555946287/10000000000 : ℚ), (-1403813404099/1000000000000 : ℚ), 3⟩,
    ⟨(181502630263/500000000000 : ℚ), (14422129183/5000000000 : ℚ), (-599132127031/500000000000 : ℚ), 3⟩,
    ⟨(369326615523/1000000000000 : ℚ), (6070668563/2500000000 : ℚ), (-128912492037/125000000000 : ℚ), 3⟩,
    ⟨(7519651613/20000000000 : ℚ), (20592982933/10000000000 : ℚ), (-893854096231/1000000000000 : ℚ), 3⟩,
    ⟨(76591424221/200000000000 : ℚ), (17575022571/10000000000 : ℚ), (-77937370529/100000000000 : ℚ), 2⟩,
    ⟨(390233434609/1000000000000 : ℚ), (120655627/80000000 : ℚ), (-683027074117/1000000000000 : ℚ), 2⟩,
    ⟨(79558798377/200000000000 : ℚ), (13004192283/10000000000 : ℚ), (-601188494167/1000000000000 : ℚ), 2⟩,
    ⟨(50702572361/125000000000 : ℚ), (2251742089/2000000000 : ℚ), (-531094346417/1000000000000 : ℚ), 2⟩,
    ⟨(206847170343/500000000000 : ℚ), (9781742937/10000000000 : ℚ), (-470608442133/1000000000000 : ℚ), 2⟩,
    ⟨(210997913439/500000000000 : ℚ), (8523723059/10000000000 : ℚ), (-209029332993/500000000000 : ℚ), 2⟩,
    ⟨(215252519229/500000000000 : ℚ), (930712363/1250000000 : ℚ), (-372121190913/1000000000000 : ℚ), 2⟩,
    ⟨(109800368997/250000000000 : ℚ), (6516757177/10000000000 : ℚ), (-331737061611/1000000000000 : ℚ), 2⟩,
    ⟨(448064188991/1000000000000 : ℚ), (2856071897/5000000000 : ℚ), (-296051201579/1000000000000 : ℚ), 2⟩,
    ⟨(457071826413/1000000000000 : ℚ), (2505937179/5000000000 : ℚ), (-66091801761/250000000000 : ℚ), 2⟩,
    ⟨(233101344033/500000000000 : ℚ), (879938839/2000000000 : ℚ), (-236113422571/1000000000000 : ℚ), 2⟩,
    ⟨(475434776907/1000000000000 : ℚ), (965572813/2500000000 : ℚ), (-105408595323/500000000000 : ℚ), 2⟩,
    ⟨(60593231503/125000000000 : ℚ), (3388694193/10000000000 : ℚ), (-23510637041/125000000000 : ℚ), 2⟩,
    ⟨(24705674111/50000000000 : ℚ), (2969807751/10000000000 : ℚ), (-167587664943/1000000000000 : ℚ), 2⟩,
    ⟨(62939387507/125000000000 : ℚ), (51961017/200000000 : ℚ), (-74523698761/500000000000 : ℚ), 2⟩,
    ⟨(51292805621/100000000000 : ℚ), (141692031/625000000 : ℚ), (-6611466977/50000000000 : ℚ), 2⟩,
    ⟨(104465934809/200000000000 : ℚ), (394305403/2000000000 : ℚ), (-58466792447/500000000000 : ℚ), 2⟩,
    ⟨(265848652121/500000000000 : ℚ), (1706895013/10000000000 : ℚ), (-102989276259/1000000000000 : ℚ), 2⟩,
    ⟨(541008379359/1000000000000 : ℚ), (367334953/2500000000 : ℚ), (-90249768191/1000000000000 : ℚ), 2⟩,
    ⟨(550240468199/1000000000000 : ℚ), (1255591639/10000000000 : ℚ), (-153493561/1953125000 : ℚ), 2⟩,
    ⟨(559371329853/1000000000000 : ℚ), (1062853671/10000000000 : ℚ), (-67896809147/1000000000000 : ℚ), 1⟩,
    ⟨(22735158691/40000000000 : ℚ), (888725403/10000000000 : ℚ), (-14519817343/250000000000 : ℚ), 1⟩,
    ⟨(577241680277/1000000000000 : ℚ), (365569923/5000000000 : ℚ), (-12263388499/250000000000 : ℚ), 1⟩,
    ⟨(36621132363/62500000000 : ℚ), (588311803/10000000000 : ℚ), (-40747619483/1000000000000 : ℚ), 1⟩,
    ⟨(148611832347/250000000000 : ℚ), (229347549/5000000000 : ℚ), (-33098409271/1000000000000 : ℚ), 1⟩,
    ⟨(30137440779/50000000000 : ℚ), (170473533/5000000000 : ℚ), (-26050599739/1000000000000 : ℚ), 1⟩,
    ⟨(610822577377/1000000000000 : ℚ), (11694947/500000000 : ℚ), (-19555544593/1000000000000 : ℚ), 1⟩,
    ⟨(618649164381/1000000000000 : ℚ), (136531097/10000000000 : ℚ), (-13570386687/1000000000000 : ℚ), 1⟩,
    ⟨(626209721657/1000000000000 : ℚ), (4795227/1000000000 : ℚ), (-4028652249/500000000000 : ℚ), 1⟩,
    ⟨(633486035161/1000000000000 : ℚ), (-2038621/625000000 : ℚ), (-29828743/10000000000 : ℚ), 1⟩,
    ⟨(5003598247/7812500000 : ℚ), (-13232977/1250000000 : ℚ), (841237373/500000000000 : ℚ), 1⟩,
    ⟨(647116540743/1000000000000 : ℚ), (-172386047/10000000000 : ℚ), (2982461653/500000000000 : ℚ), 1⟩,
    ⟨(32671894787/50000000000 : ℚ), (-23271229/1000000000 : ℚ), (9887659933/1000000000000 : ℚ), 1⟩,
    ⟨(164852352977/250000000000 : ℚ), (-287306181/10000000000 : ℚ), (13471219939/1000000000000 : ℚ), 1⟩,
    ⟨(332508351671/500000000000 : ℚ), (-67314997/2000000000 : ℚ), (16733776707/1000000000000 : ℚ), 1⟩,
    ⟨(134049252317/200000000000 : ℚ), (-190438059/5000000000 : ℚ), (19691392287/1000000000000 : ℚ), 1⟩,
    ⟨(27003419527/40000000000 : ℚ), (-420522693/10000000000 : ℚ), (11179115561/500000000000 : ℚ), 1⟩,
    ⟨(67952272499/100000000000 : ℚ), (-56973531/1250000000 : ℚ), (24746744041/1000000000000 : ℚ), 1⟩,
    ⟨(683547282337/1000000000000 : ℚ), (-243455383/5000000000 : ℚ), (26867825617/1000000000000 : ℚ), 1⟩,
    ⟨(687149464707/1000000000000 : ℚ), (-128524021/2500000000 : ℚ), (3591368531/125000000000 : ℚ), 1⟩,
    ⟨(5522564753/8000000000 : ℚ), (-537520777/10000000000 : ℚ), (30344276573/1000000000000 : ℚ), 1⟩,
    ⟨(86631628883/125000000000 : ℚ), (-139333643/2500000000 : ℚ), (6342952589/200000000000 : ℚ), 1⟩,
    ⟨(173835048211/250000000000 : ℚ), (-573662363/10000000000 : ℚ), (32848228191/1000000000000 : ℚ), 1⟩,
    ⟨(697176569491/1000000000000 : ℚ), (-586605863/10000000000 : ℚ), (33749428029/1000000000000 : ℚ), 1⟩,
    ⟨(349278868507/500000000000 : ℚ), (-14906123/250000000 : ℚ), (34422105181/1000000000000 : ℚ), 1⟩,
    ⟨(349740184029/500000000000 : ℚ), (-602638553/10000000000 : ℚ), (6973806409/200000000000 : ℚ), 1⟩,
    ⟨(27997689597/40000000000 : ℚ), (-605825697/10000000000 : ℚ), (8773010029/250000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-606223637/10000000000 : ℚ), (17559947359/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (97983224863/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control51.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control51.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate51

-- Control52
namespace DiagonalRamsey.JointInheritedCertificate52
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25261298321/62500000000 : ℚ), (10967027966191/10000000000 : ℚ), (-222377969550301/500000000000 : ℚ), 10⟩,
    ⟨(203042801147/500000000000 : ℚ), (148645900423/1250000000 : ℚ), (-24605507141943/500000000000 : ℚ), 7⟩,
    ⟨(204938458031/500000000000 : ℚ), (82476156941/2000000000 : ℚ), (-8784053174627/500000000000 : ℚ), 6⟩,
    ⟨(415518202017/1000000000000 : ℚ), (200837867567/10000000000 : ℚ), (-4425502486269/500000000000 : ℚ), 5⟩,
    ⟨(422955131491/1000000000000 : ℚ), (57582713947/5000000000 : ℚ), (-5264620781323/1000000000000 : ℚ), 4⟩,
    ⟨(432116082789/1000000000000 : ℚ), (36331517667/5000000000 : ℚ), (-1725050367167/500000000000 : ℚ), 4⟩,
    ⟨(442912830941/1000000000000 : ℚ), (24398305191/5000000000 : ℚ), (-601838051383/250000000000 : ℚ), 3⟩,
    ⟨(5690517467/12500000000 : ℚ), (3422728887/1000000000 : ℚ), (-1753940142967/1000000000000 : ℚ), 3⟩,
    ⟨(117245762803/250000000000 : ℚ), (4956405903/2000000000 : ℚ), (-659004376111/500000000000 : ℚ), 3⟩,
    ⟨(484005452859/1000000000000 : ℚ), (28709461/15625000 : ℚ), (-1013031537067/1000000000000 : ℚ), 2⟩,
    ⟨(500163928361/1000000000000 : ℚ), (13869038999/10000000000 : ℚ), (-197897510123/250000000000 : ℚ), 2⟩,
    ⟨(103460572553/200000000000 : ℚ), (1326180211/1250000000 : ℚ), (-625932192071/1000000000000 : ℚ), 2⟩,
    ⟨(107051439753/200000000000 : ℚ), (8194181233/10000000000 : ℚ), (-249470398301/500000000000 : ℚ), 2⟩,
    ⟨(553854026289/1000000000000 : ℚ), (1592075349/2500000000 : ℚ), (-49949544229/125000000000 : ℚ), 2⟩,
    ⟨(572914247723/1000000000000 : ℚ), (2482062299/5000000000 : ℚ), (-320548352911/1000000000000 : ℚ), 2⟩,
    ⟨(118450860543/200000000000 : ℚ), (1934093649/5000000000 : ℚ), (-8023281313/31250000000 : ℚ), 2⟩,
    ⟨(305843967981/500000000000 : ℚ), (3001832361/10000000000 : ℚ), (-204625062367/1000000000000 : ℚ), 2⟩,
    ⟨(315513995477/500000000000 : ℚ), (9237549/40000000 : ℚ), (-161622778769/1000000000000 : ℚ), 2⟩,
    ⟨(162522053097/250000000000 : ℚ), (1750730543/10000000000 : ℚ), (-62927250309/500000000000 : ℚ), 1⟩,
    ⟨(83585629989/125000000000 : ℚ), (648243931/5000000000 : ℚ), (-95914564893/1000000000000 : ℚ), 1⟩,
    ⟨(85829921989/125000000000 : ℚ), (115606547/1250000000 : ℚ), (-70738982723/1000000000000 : ℚ), 1⟩,
    ⟨(175944577579/250000000000 : ℚ), (619436471/10000000000 : ℚ), (-24756196819/500000000000 : ℚ), 1⟩,
    ⟨(359968392909/500000000000 : ℚ), (36779379/1000000000 : ℚ), (-15801667929/500000000000 : ℚ), 1⟩,
    ⟨(146991837493/200000000000 : ℚ), (32077311/2000000000 : ℚ), (-8259240923/500000000000 : ℚ), 1⟩,
    ⟨(748700841317/1000000000000 : ℚ), (-10145507/10000000000 : ℚ), (-386985163/100000000000 : ℚ), 1⟩,
    ⟨(761029407737/1000000000000 : ℚ), (-149508227/10000000000 : ℚ), (1662228033/250000000000 : ℚ), 1⟩,
    ⟨(48239134743/62500000000 : ℚ), (-262130111/10000000000 : ℚ), (15279816951/1000000000000 : ℚ), 1⟩,
    ⟨(390493553593/500000000000 : ℚ), (-87858843/2500000000 : ℚ), (22213118231/1000000000000 : ℚ), 1⟩,
    ⟨(39421201833/50000000000 : ℚ), (-105010371/2500000000 : ℚ), (1724779369/62500000000 : ℚ), 1⟩,
    ⟨(158813064523/200000000000 : ℚ), (-46990107/1000000000 : ℚ), (31541497213/1000000000000 : ℚ), 1⟩,
    ⟨(797856636383/1000000000000 : ℚ), (-251200957/5000000000 : ℚ), (8532103117/250000000000 : ℚ), 1⟩,
    ⟨(799761465541/1000000000000 : ℚ), (-103686933/2000000000 : ℚ), (4426140009/125000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-10408573/200000000 : ℚ), (35568615013/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (151896403239/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control52.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control52.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate52

-- Control54
namespace DiagonalRamsey.JointInheritedCertificate54
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80352615813/1000000000000 : ℚ), (2185992232837/2000000000 : ℚ), (-44026441740553/500000000000 : ℚ), 10⟩,
    ⟨(80729223669/1000000000000 : ℚ), (1157133513103/10000000000 : ℚ), (-4728884345989/500000000000 : ℚ), 7⟩,
    ⟨(10183495819/125000000000 : ℚ), (190260100807/5000000000 : ℚ), (-126756368727/40000000000 : ℚ), 6⟩,
    ⟨(82540454987/1000000000000 : ℚ), (84371815931/5000000000 : ℚ), (-717355456133/500000000000 : ℚ), 5⟩,
    ⟨(41952736923/500000000000 : ℚ), (41338429607/5000000000 : ℚ), (-359687382339/500000000000 : ℚ), 4⟩,
    ⟨(42755283109/500000000000 : ℚ), (39682164687/10000000000 : ℚ), (-88900676723/250000000000 : ℚ), 4⟩,
    ⟨(17458809861/200000000000 : ℚ), (15262007367/10000000000 : ℚ), (-72411046183/500000000000 : ℚ), 3⟩,
    ⟨(89187384851/1000000000000 : ℚ), (55091067/5000000000 : ℚ), (-1404448153/125000000000 : ℚ), 3⟩,
    ⟨(45558906517/500000000000 : ℚ), (-9912803509/10000000000 : ℚ), (79062071981/1000000000000 : ℚ), 3⟩,
    ⟨(4650557429/50000000000 : ℚ), (-16858256033/10000000000 : ℚ), (142971215813/1000000000000 : ℚ), 3⟩,
    ⟨(94794631667/1000000000000 : ℚ), (-1091155679/500000000 : ℚ), (23696839633/125000000000 : ℚ), 3⟩,
    ⟨(2409993101/25000000000 : ℚ), (-5085187241/2000000000 : ℚ), (28000955857/125000000000 : ℚ), 3⟩,
    ⟨(48882371449/500000000000 : ℚ), (-28027630589/10000000000 : ℚ), (249261336229/1000000000000 : ℚ), 2⟩,
    ⟨(49418615667/500000000000 : ℚ), (-29842074353/10000000000 : ℚ), (267095893689/1000000000000 : ℚ), 2⟩,
    ⟨(99575974217/1000000000000 : ℚ), (-30994908191/10000000000 : ℚ), (139266159699/500000000000 : ℚ), 2⟩,
    ⟨(12494072759/125000000000 : ℚ), (-15777905467/5000000000 : ℚ), (284128071229/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-158126159/50000000 : ℚ), (284822115201/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (105801295457/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem certOK : JointInheritedControls.control54.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control54.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate54

-- Control55
namespace DiagonalRamsey.JointInheritedCertificate55
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120917128277/1000000000000 : ℚ), (559801911587/125000000 : ℚ), (-541968846336709/1000000000000 : ℚ), 12⟩,
    ⟨(121057085859/1000000000000 : ℚ), (4910423616197/10000000000 : ℚ), (-29862210980689/500000000000 : ℚ), 9⟩,
    ⟨(30333913289/250000000000 : ℚ), (862979512173/5000000000 : ℚ), (-4228887443059/200000000000 : ℚ), 8⟩,
    ⟨(121750147411/1000000000000 : ℚ), (212766297039/2500000000 : ℚ), (-525735603801/50000000000 : ℚ), 7⟩,
    ⟨(6114828841/50000000000 : ℚ), (492396356971/10000000000 : ℚ), (-6139728585283/1000000000000 : ℚ), 6⟩,
    ⟨(122969678967/1000000000000 : ℚ), (155845073659/5000000000 : ℚ), (-3924469843891/1000000000000 : ℚ), 5⟩,
    ⟨(123762971511/1000000000000 : ℚ), (208321787527/10000000000 : ℚ), (-82803057497/31250000000 : ℚ), 5⟩,
    ⟨(124668814611/1000000000000 : ℚ), (2877148061/200000000 : ℚ), (-462304327627/250000000000 : ℚ), 5⟩,
    ⟨(15709810563/125000000000 : ℚ), (50525527041/5000000000 : ℚ), (-52542692077/40000000000 : ℚ), 4⟩,
    ⟨(25356451503/200000000000 : ℚ), (14247031753/2000000000 : ℚ), (-937315449193/1000000000000 : ℚ), 4⟩,
    ⟨(127969503709/1000000000000 : ℚ), (49669790497/10000000000 : ℚ), (-662704073539/1000000000000 : ℚ), 4⟩,
    ⟨(129228789253/1000000000000 : ℚ), (33587765713/10000000000 : ℚ), (-14248330423/31250000000 : ℚ), 4⟩,
    ⟨(65273993271/500000000000 : ℚ), (4257437577/2000000000 : ℚ), (-74054122967/250000000000 : ℚ), 3⟩,
    ⟨(131914390983/1000000000000 : ℚ), (5837988293/5000000000 : ℚ), (-3402331691/20000000000 : ℚ), 3⟩,
    ⟨(66657421677/500000000000 : ℚ), (161132849/400000000 : ℚ), (-68718871321/1000000000000 : ℚ), 3⟩,
    ⟨(26947171307/200000000000 : ℚ), (-430509941/2000000000 : ℚ), (14104710177/1000000000000 : ℚ), 3⟩,
    ⟨(13616374539/100000000000 : ℚ), (-7215182311/10000000000 : ℚ), (82666321353/1000000000000 : ℚ), 3⟩,
    ⟨(137584758571/1000000000000 : ℚ), (-5704658369/5000000000 : ℚ), (70032308009/500000000000 : ℚ), 3⟩,
    ⟨(69492605471/500000000000 : ℚ), (-7458555323/5000000000 : ℚ), (94282899059/500000000000 : ℚ), 3⟩,
    ⟨(140351615383/1000000000000 : ℚ), (-3574687503/2000000000 : ℚ), (57462925817/250000000000 : ℚ), 3⟩,
    ⟨(141670812671/1000000000000 : ℚ), (-10189709507/5000000000 : ℚ), (66296371017/250000000000 : ℚ), 3⟩,
    ⟨(17866262277/125000000000 : ℚ), (-22511651131/10000000000 : ℚ), (147762416033/500000000000 : ℚ), 3⟩,
    ⟨(144117344409/1000000000000 : ℚ), (-12164310827/5000000000 : ℚ), (32160097201/100000000000 : ℚ), 3⟩,
    ⟨(145221117421/1000000000000 : ℚ), (-6468813717/2500000000 : ℚ), (2751798633/8000000000 : ℚ), 2⟩,
    ⟨(146230787313/1000000000000 : ℚ), (-27186181753/10000000000 : ℚ), (363077658277/1000000000000 : ℚ), 2⟩,
    ⟨(73568315207/500000000000 : ℚ), (-3536015743/1250000000 : ℚ), (379240886659/1000000000000 : ℚ), 2⟩,
    ⟨(73964961479/500000000000 : ℚ), (-1825104021/625000000 : ℚ), (392718316641/1000000000000 : ℚ), 2⟩,
    ⟨(29720605021/200000000000 : ℚ), (-14971268267/5000000000 : ℚ), (80740559779/200000000000 : ℚ), 2⟩,
    ⟨(149149454513/1000000000000 : ℚ), (-30522621519/10000000000 : ℚ), (103084700513/250000000000 : ℚ), 2⟩,
    ⟨(149563948769/1000000000000 : ℚ), (-773766561/250000000 : ℚ), (3349854763/8000000000 : ℚ), 2⟩,
    ⟨(74921258033/500000000000 : ℚ), (-31232794779/10000000000 : ℚ), (422955447561/1000000000000 : ℚ), 2⟩,
    ⟨(9373904603/62500000000 : ℚ), (-31372915159/10000000000 : ℚ), (10626400647/25000000000 : ℚ), 2⟩,
    ⟨(3/20 : ℚ), (-1569519321/500000000 : ℚ), (425318079487/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (80333855209/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
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
theorem certOK : JointInheritedControls.control55.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control55.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate55
