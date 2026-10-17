import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control630
namespace DiagonalRamsey.JointInheritedCertificate630
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140193711071/500000000000 : ℚ), (2185791320031/1250000000 : ℚ), (-490905489443117/1000000000000 : ℚ), 13⟩,
    ⟨(28086679487/100000000000 : ℚ), (958055066199/5000000000 : ℚ), (-10839739832949/200000000000 : ℚ), 9⟩,
    ⟨(56364184741/200000000000 : ℚ), (673638073299/10000000000 : ℚ), (-9630995603751/500000000000 : ℚ), 8⟩,
    ⟨(56648123973/200000000000 : ℚ), (41594546929/1250000000 : ℚ), (-9636363073047/1000000000000 : ℚ), 7⟩,
    ⟨(2851122109/10000000000 : ℚ), (193281336489/10000000000 : ℚ), (-1418741515873/250000000000 : ℚ), 6⟩,
    ⟨(71854418091/250000000000 : ℚ), (61593350211/5000000000 : ℚ), (-3669466311223/1000000000000 : ℚ), 6⟩,
    ⟨(72533700351/250000000000 : ℚ), (83214360761/10000000000 : ℚ), (-628938288099/250000000000 : ℚ), 5⟩,
    ⟨(146618715291/500000000000 : ℚ), (11675462561/2000000000 : ℚ), (-44791230281/25000000000 : ℚ), 5⟩,
    ⟨(148347839941/500000000000 : ℚ), (5244343081/1250000000 : ℚ), (-1307467425641/1000000000000 : ℚ), 5⟩,
    ⟨(300476244473/1000000000000 : ℚ), (3821406711/1250000000 : ℚ), (-967724975903/1000000000000 : ℚ), 4⟩,
    ⟨(76135678863/250000000000 : ℚ), (22382448893/10000000000 : ℚ), (-144022144357/200000000000 : ℚ), 4⟩,
    ⟨(308855930481/1000000000000 : ℚ), (16312510437/10000000000 : ℚ), (-8344060083/15625000000 : ℚ), 4⟩,
    ⟨(313374350939/1000000000000 : ℚ), (2340078827/2000000000 : ℚ), (-390582666329/1000000000000 : ℚ), 4⟩,
    ⟨(31805446197/100000000000 : ℚ), (8122323363/10000000000 : ℚ), (-138828015529/500000000000 : ℚ), 4⟩,
    ⟨(40356398943/125000000000 : ℚ), (105938301/200000000 : ℚ), (-187142957833/1000000000000 : ℚ), 4⟩,
    ⟨(163859172267/500000000000 : ℚ), (606349601/2000000000 : ℚ), (-113481059833/1000000000000 : ℚ), 3⟩,
    ⟨(332609047597/1000000000000 : ℚ), (595958017/5000000000 : ℚ), (-52751623483/1000000000000 : ℚ), 3⟩,
    ⟨(337476200587/1000000000000 : ℚ), (-159594607/5000000000 : ℚ), (-16674301/7812500000 : ℚ), 3⟩,
    ⟨(342272930161/1000000000000 : ℚ), (-786004883/5000000000 : ℚ), (20218839599/500000000000 : ℚ), 3⟩,
    ⟨(43369130149/125000000000 : ℚ), (-2618700243/10000000000 : ℚ), (38251004113/500000000000 : ℚ), 3⟩,
    ⟨(7029429233/20000000000 : ℚ), (-874593627/2500000000 : ℚ), (53608490857/500000000000 : ℚ), 3⟩,
    ⟨(355784676679/1000000000000 : ℚ), (-4240678017/10000000000 : ℚ), (133463825371/1000000000000 : ℚ), 3⟩,
    ⟨(179925573829/500000000000 : ℚ), (-4868269029/10000000000 : ℚ), (77958993049/500000000000 : ℚ), 3⟩,
    ⟨(363631712249/1000000000000 : ℚ), (-5398573011/10000000000 : ℚ), (175099790329/1000000000000 : ℚ), 3⟩,
    ⟨(367089961549/1000000000000 : ℚ), (-5845043079/10000000000 : ℚ), (47852767153/250000000000 : ℚ), 3⟩,
    ⟨(370192590727/1000000000000 : ℚ), (-3109039139/5000000000 : ℚ), (8206482161/40000000000 : ℚ), 3⟩,
    ⟨(372909719767/1000000000000 : ℚ), (-6525700347/10000000000 : ℚ), (216591405931/1000000000000 : ℚ), 3⟩,
    ⟨(375215181231/1000000000000 : ℚ), (-6774056601/10000000000 : ℚ), (112940633823/500000000000 : ℚ), 3⟩,
    ⟨(188543386133/500000000000 : ℚ), (-3483897407/5000000000 : ℚ), (233168643427/1000000000000 : ℚ), 3⟩,
    ⟨(189253234213/500000000000 : ℚ), (-7110341383/10000000000 : ℚ), (59638490229/250000000000 : ℚ), 3⟩,
    ⟨(379460597261/1000000000000 : ℚ), (-1801026017/2500000000 : ℚ), (121053699757/500000000000 : ℚ), 3⟩,
    ⟨(379939969989/1000000000000 : ℚ), (-906326703/1250000000 : ℚ), (48774673419/200000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-3628205051/5000000000 : ℚ), (122046807943/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (532209637/1600000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control630.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control630.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate630

-- Control632
namespace DiagonalRamsey.JointInheritedCertificate632
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(154437499399/1000000000000 : ℚ), (2525182922923/5000000000 : ℚ), (-78242197631609/1000000000000 : ℚ), 11⟩,
    ⟨(15531085717/100000000000 : ℚ), (66890351673/1250000000 : ℚ), (-1687438663063/200000000000 : ℚ), 8⟩,
    ⟨(78512005031/500000000000 : ℚ), (176836578433/10000000000 : ℚ), (-2851957635607/1000000000000 : ℚ), 6⟩,
    ⟨(159511122571/1000000000000 : ℚ), (39688919923/5000000000 : ℚ), (-1312131614267/1000000000000 : ℚ), 6⟩,
    ⟨(81338308179/500000000000 : ℚ), (249442593/62500000 : ℚ), (-677342639001/1000000000000 : ℚ), 5⟩,
    ⟨(16639884327/100000000000 : ℚ), (5071602897/2500000000 : ℚ), (-70980548851/200000000000 : ℚ), 4⟩,
    ⟨(170534760217/1000000000000 : ℚ), (920342909/1000000000 : ℚ), (-168420081931/1000000000000 : ℚ), 4⟩,
    ⟨(174925426229/1000000000000 : ℚ), (474382843/2000000000 : ℚ), (-50540467761/1000000000000 : ℚ), 4⟩,
    ⟨(179402110473/1000000000000 : ℚ), (-105754567/500000000 : ℚ), (14443637863/500000000000 : ℚ), 4⟩,
    ⟨(36758555297/200000000000 : ℚ), (-5202118779/10000000000 : ℚ), (10613909081/125000000000 : ℚ), 4⟩,
    ⟨(23491086679/125000000000 : ℚ), (-3697039831/5000000000 : ℚ), (7852023207/62500000000 : ℚ), 3⟩,
    ⟨(38330184069/200000000000 : ℚ), (-897554763/1000000000 : ℚ), (9727347997/62500000000 : ℚ), 3⟩,
    ⟨(194816414131/1000000000000 : ℚ), (-5056183733/5000000000 : ℚ), (17760044181/100000000000 : ℚ), 3⟩,
    ⟨(2466294083/12500000000 : ℚ), (-5451294991/5000000000 : ℚ), (24136484827/125000000000 : ℚ), 3⟩,
    ⟨(49754169883/250000000000 : ℚ), (-5701800049/5000000000 : ℚ), (203019438121/1000000000000 : ℚ), 3⟩,
    ⟨(199890037303/1000000000000 : ℚ), (-5823539391/5000000000 : ℚ), (207875646681/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-291930021/250000000 : ℚ), (104238961059/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (13292214657/31250000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control632.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control632.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate632

-- Control633
namespace DiagonalRamsey.JointInheritedCertificate633
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23440647607/100000000000 : ℚ), (5326268591671/10000000000 : ℚ), (-62612999002537/500000000000 : ℚ), 11⟩,
    ⟨(7364493607/31250000000 : ℚ), (56526226289/1000000000 : ℚ), (-6757265087863/500000000000 : ℚ), 8⟩,
    ⟨(47626023211/200000000000 : ℚ), (187333500589/10000000000 : ℚ), (-4576738799673/1000000000000 : ℚ), 6⟩,
    ⟨(60427664661/250000000000 : ℚ), (84485653477/10000000000 : ℚ), (-2113203305709/1000000000000 : ℚ), 5⟩,
    ⟨(246267824947/1000000000000 : ℚ), (42824749707/10000000000 : ℚ), (-1098242529021/1000000000000 : ℚ), 5⟩,
    ⟨(251626485619/1000000000000 : ℚ), (1382078413/625000000 : ℚ), (-583328430021/1000000000000 : ℚ), 4⟩,
    ⟨(4024698599/15625000000 : ℚ), (2085398531/2000000000 : ℚ), (-143070047423/500000000000 : ℚ), 4⟩,
    ⟨(13195084079/50000000000 : ℚ), (647353331/2000000000 : ℚ), (-19769162031/200000000000 : ℚ), 4⟩,
    ⟨(67586621993/250000000000 : ℚ), (-1472732199/10000000000 : ℚ), (26856102541/1000000000000 : ℚ), 4⟩,
    ⟨(17291716201/62500000000 : ℚ), (-1175304597/2500000000 : ℚ), (23020628173/200000000000 : ℚ), 3⟩,
    ⟨(282621683933/1000000000000 : ℚ), (-6984249951/10000000000 : ℚ), (35783628339/200000000000 : ℚ), 3⟩,
    ⟨(57596068921/200000000000 : ℚ), (-215612909/250000000 : ℚ), (4514013851/20000000000 : ℚ), 3⟩,
    ⟨(73134377727/250000000000 : ℚ), (-4899503821/5000000000 : ℚ), (64946193543/250000000000 : ℚ), 3⟩,
    ⟨(296118053497/1000000000000 : ℚ), (-10612742773/10000000000 : ℚ), (283732723833/1000000000000 : ℚ), 3⟩,
    ⟨(18661523383/62500000000 : ℚ), (-556370119/500000000 : ℚ), (74758871359/250000000000 : ℚ), 3⟩,
    ⟨(149920846741/500000000000 : ℚ), (-2844285403/2500000000 : ℚ), (153253962059/500000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-11408020817/10000000000 : ℚ), (307434055677/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (41528730399/125000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control633.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control633.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate633

-- Control634
namespace DiagonalRamsey.JointInheritedCertificate634
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30031834309/250000000000 : ℚ), (2997104465927/5000000000 : ℚ), (-36098721390451/500000000000 : ℚ), 11⟩,
    ⟨(120699946769/1000000000000 : ℚ), (635351427861/10000000000 : ℚ), (-3883157949557/500000000000 : ℚ), 8⟩,
    ⟨(12182316077/100000000000 : ℚ), (209568376409/10000000000 : ℚ), (-2611012218023/1000000000000 : ℚ), 7⟩,
    ⟨(30863453689/250000000000 : ℚ), (93503875783/10000000000 : ℚ), (-1189664345907/1000000000000 : ℚ), 6⟩,
    ⟨(125529243609/1000000000000 : ℚ), (23184716593/5000000000 : ℚ), (-603661483261/1000000000000 : ℚ), 5⟩,
    ⟨(63984844881/500000000000 : ℚ), (5713197027/2500000000 : ℚ), (-305945501221/1000000000000 : ℚ), 5⟩,
    ⟨(65340684119/500000000000 : ℚ), (1904128521/2000000000 : ℚ), (-13370608973/100000000000 : ℚ), 4⟩,
    ⟨(133560070753/1000000000000 : ℚ), (634370013/5000000000 : ℚ), (-1238826049/50000000000 : ℚ), 4⟩,
    ⟨(8530948149/62500000000 : ℚ), (-2087251189/5000000000 : ℚ), (48670571697/1000000000000 : ℚ), 4⟩,
    ⟨(1393738729/10000000000 : ℚ), (-3967813763/5000000000 : ℚ), (25130348157/250000000000 : ℚ), 4⟩,
    ⟨(1136684411/8000000000 : ℚ), (-10617504083/10000000000 : ℚ), (138248492913/1000000000000 : ℚ), 4⟩,
    ⟨(18065749691/125000000000 : ℚ), (-24531457/19531250 : ℚ), (33215927019/200000000000 : ℚ), 3⟩,
    ⟨(146601426381/1000000000000 : ℚ), (-1396147763/1000000000 : ℚ), (186475114653/1000000000000 : ℚ), 3⟩,
    ⟨(148232080367/1000000000000 : ℚ), (-14938492113/10000000000 : ℚ), (200876631383/1000000000000 : ℚ), 3⟩,
    ⟨(4667352949/31250000000 : ℚ), (-3889831253/2500000000 : ℚ), (6566058383/31250000000 : ℚ), 3⟩,
    ⟨(149927903901/1000000000000 : ℚ), (-1586145853/1000000000 : ℚ), (107317499349/500000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-3974714297/2500000000 : ℚ), (21519584367/100000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (218407981097/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control634.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control634.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate634

-- Control635
namespace DiagonalRamsey.JointInheritedCertificate635
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43185588493/1000000000000 : ℚ), (143769145699/625000000 : ℚ), (-9980739805149/1000000000000 : ℚ), 10⟩,
    ⟨(21849636423/500000000000 : ℚ), (105349813879/5000000000 : ℚ), (-936661842393/1000000000000 : ℚ), 7⟩,
    ⟨(5581054721/125000000000 : ℚ), (45954624891/10000000000 : ℚ), (-211384801441/1000000000000 : ℚ), 5⟩,
    ⟨(22944290751/500000000000 : ℚ), (1274784019/10000000000 : ℚ), (-4834085033/500000000000 : ℚ), 5⟩,
    ⟨(47230903407/1000000000000 : ℚ), (-16896019129/10000000000 : ℚ), (14955910597/200000000000 : ℚ), 4⟩,
    ⟨(48471047141/1000000000000 : ℚ), (-25904499849/10000000000 : ℚ), (117841508293/1000000000000 : ℚ), 4⟩,
    ⟨(24710106031/500000000000 : ℚ), (-6130511257/2000000000 : ℚ), (35267751637/250000000000 : ℚ), 4⟩,
    ⟨(1560434263/31250000000 : ℚ), (-4096380089/1250000000 : ℚ), (151593930281/1000000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-1032070767/312500000 : ℚ), (152869203893/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (127479819347/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control635.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control635.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate635

-- Control636
namespace DiagonalRamsey.JointInheritedCertificate636
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(86523949631/1000000000000 : ℚ), (233104136067/1000000000 : ℚ), (-5065626383909/250000000000 : ℚ), 10⟩,
    ⟨(87539802023/1000000000000 : ℚ), (213885563371/10000000000 : ℚ), (-1903986692757/1000000000000 : ℚ), 7⟩,
    ⟨(11177106561/125000000000 : ℚ), (46971797517/10000000000 : ℚ), (-432101416157/1000000000000 : ℚ), 5⟩,
    ⟨(91869337109/1000000000000 : ℚ), (346369039/2000000000 : ℚ), (-23119448253/1000000000000 : ℚ), 5⟩,
    ⟨(47261943667/500000000000 : ℚ), (-16637713263/10000000000 : ℚ), (18470973291/125000000000 : ℚ), 4⟩,
    ⟨(19395274391/200000000000 : ℚ), (-25723982113/10000000000 : ℚ), (117339860829/500000000000 : ℚ), 4⟩,
    ⟨(4942671121/50000000000 : ℚ), (-30502497949/10000000000 : ℚ), (281448142853/1000000000000 : ℚ), 4⟩,
    ⟨(24967318703/250000000000 : ℚ), (-32631472319/10000000000 : ℚ), (302599749909/1000000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-16443909951/5000000000 : ℚ), (61032309241/200000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (100675234573/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control636.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control636.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate636

-- Control637
namespace DiagonalRamsey.JointInheritedCertificate637
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(132393776639/500000000000 : ℚ), (13797185903837/10000000000 : ℚ), (-365888489414577/1000000000000 : ℚ), 12⟩,
    ⟨(26534199837/100000000000 : ℚ), (754993530927/5000000000 : ℚ), (-4041336596151/100000000000 : ℚ), 9⟩,
    ⟨(133222774473/500000000000 : ℚ), (265024668981/5000000000 : ℚ), (-1437520833363/100000000000 : ℚ), 8⟩,
    ⟨(268087577209/1000000000000 : ℚ), (52289524547/2000000000 : ℚ), (-7201242900219/1000000000000 : ℚ), 7⟩,
    ⟨(27025226953/100000000000 : ℚ), (151687121679/10000000000 : ℚ), (-1062196060879/250000000000 : ℚ), 6⟩,
    ⟨(136459389369/500000000000 : ℚ), (48306731483/5000000000 : ℚ), (-2754032323973/1000000000000 : ℚ), 6⟩,
    ⟨(69015356223/250000000000 : ℚ), (65265456847/10000000000 : ℚ), (-236762512011/125000000000 : ℚ), 5⟩,
    ⟨(279649942593/1000000000000 : ℚ), (2291394309/500000000 : ℚ), (-67717084661/50000000000 : ℚ), 5⟩,
    ⟨(70912443113/250000000000 : ℚ), (33004715779/10000000000 : ℚ), (-993385133411/1000000000000 : ℚ), 5⟩,
    ⟨(288022393921/1000000000000 : ℚ), (24137573751/10000000000 : ℚ), (-740068499657/1000000000000 : ℚ), 4⟩,
    ⟨(146362848133/500000000000 : ℚ), (4443706373/2500000000 : ℚ), (-555405661221/1000000000000 : ℚ), 4⟩,
    ⟨(148857192057/500000000000 : ℚ), (13070402721/10000000000 : ℚ), (-208294128083/500000000000 : ℚ), 4⟩,
    ⟨(302940413673/1000000000000 : ℚ), (9504907249/10000000000 : ℚ), (-61910841471/200000000000 : ℚ), 4⟩,
    ⟨(308353455423/1000000000000 : ℚ), (6745717481/10000000000 : ℚ), (-112627403807/500000000000 : ℚ), 4⟩,
    ⟨(78475344703/250000000000 : ℚ), (182889569/400000000 : ℚ), (-157657034459/1000000000000 : ℚ), 3⟩,
    ⟨(63906150861/200000000000 : ℚ), (354227593/1250000000 : ℚ), (-102616943309/1000000000000 : ℚ), 3⟩,
    ⟨(162593683969/500000000000 : ℚ), (1424992181/10000000000 : ℚ), (-57215628099/1000000000000 : ℚ), 3⟩,
    ⟨(330816743431/1000000000000 : ℚ), (135170057/5000000000 : ℚ), (-19352772033/1000000000000 : ℚ), 3⟩,
    ⟨(16818233341/50000000000 : ℚ), (-171259183/2500000000 : ℚ), (6255199253/500000000000 : ℚ), 3⟩,
    ⟨(34177770857/100000000000 : ℚ), (-185215357/1250000000 : ℚ), (1580735851/40000000000 : ℚ), 3⟩,
    ⟨(347003738129/1000000000000 : ℚ), (-1075054451/5000000000 : ℚ), (62533137541/1000000000000 : ℚ), 3⟩,
    ⟨(351992425977/1000000000000 : ℚ), (-2713196623/10000000000 : ℚ), (82210195721/1000000000000 : ℚ), 3⟩,
    ⟨(178347864161/500000000000 : ℚ), (-637709027/2000000000 : ℚ), (9905196071/100000000000 : ℚ), 3⟩,
    ⟨(361068349791/1000000000000 : ℚ), (-3589645293/10000000000 : ℚ), (113445403843/1000000000000 : ℚ), 3⟩,
    ⟨(7301363593/20000000000 : ℚ), (-3926905503/10000000000 : ℚ), (125689373603/1000000000000 : ℚ), 3⟩,
    ⟨(7373133947/20000000000 : ℚ), (-26302303/62500000 : ℚ), (68007316249/500000000000 : ℚ), 3⟩,
    ⟨(74359868701/200000000000 : ℚ), (-1110059553/2500000000 : ℚ), (144598761189/1000000000000 : ℚ), 3⟩,
    ⟨(374465852713/1000000000000 : ℚ), (-289204401/625000000 : ℚ), (75788676679/500000000000 : ℚ), 3⟩,
    ⟨(188315272517/500000000000 : ℚ), (-2386531347/5000000000 : ℚ), (157052462063/1000000000000 : ℚ), 3⟩,
    ⟨(378272573297/1000000000000 : ℚ), (-4880269121/10000000000 : ℚ), (80549473291/500000000000 : ℚ), 3⟩,
    ⟨(11855503871/31250000000 : ℚ), (-990151227/2000000000 : ℚ), (163769154977/1000000000000 : ℚ), 3⟩,
    ⟨(75986113793/200000000000 : ℚ), (-4985711123/10000000000 : ℚ), (41274057857/250000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-1247516783/2500000000 : ℚ), (165261744629/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (39899594029/100000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control637.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control637.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate637

-- Control638
namespace DiagonalRamsey.JointInheritedCertificate638
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(248554026759/1000000000000 : ℚ), (919394468917/625000000 : ℚ), (-183076340251539/500000000000 : ℚ), 13⟩,
    ⟨(249042222467/1000000000000 : ℚ), (1610495031943/10000000000 : ℚ), (-40433752580867/1000000000000 : ℚ), 9⟩,
    ⟨(62503478073/250000000000 : ℚ), (565547713243/10000000000 : ℚ), (-7188036409919/500000000000 : ℚ), 8⟩,
    ⟨(251459738329/1000000000000 : ℚ), (34879366773/1250000000 : ℚ), (-71967060303/10000000000 : ℚ), 7⟩,
    ⟨(253365776483/1000000000000 : ℚ), (80951658381/5000000000 : ℚ), (-424199904647/100000000000 : ℚ), 6⟩,
    ⟨(63928417641/250000000000 : ℚ), (51549028109/5000000000 : ℚ), (-686520458011/250000000000 : ℚ), 6⟩,
    ⟨(25848080907/100000000000 : ℚ), (69603427557/10000000000 : ℚ), (-377090239209/200000000000 : ℚ), 5⟩,
    ⟨(8176266967/31250000000 : ℚ), (48818608531/10000000000 : ℚ), (-672612926347/500000000000 : ℚ), 5⟩,
    ⟨(265162442221/1000000000000 : ℚ), (17547286697/5000000000 : ℚ), (-196785644391/200000000000 : ℚ), 5⟩,
    ⟨(269012589087/1000000000000 : ℚ), (3199406871/1250000000 : ℚ), (-182585854261/250000000000 : ℚ), 4⟩,
    ⟨(273153904521/1000000000000 : ℚ), (1877165923/1000000000 : ℚ), (-21818259303/40000000000 : ℚ), 4⟩,
    ⟨(277546505393/1000000000000 : ℚ), (13720752999/10000000000 : ℚ), (-203221202251/500000000000 : ℚ), 4⟩,
    ⟨(141074044277/500000000000 : ℚ), (2472003581/2500000000 : ℚ), (-299229071969/1000000000000 : ℚ), 4⟩,
    ⟨(71728584561/250000000000 : ℚ), (216194363/312500000 : ℚ), (-214761580527/1000000000000 : ℚ), 4⟩,
    ⟨(291799352873/1000000000000 : ℚ), (2287853591/5000000000 : ℚ), (-147003064073/1000000000000 : ℚ), 4⟩,
    ⟨(296756087079/1000000000000 : ℚ), (2699479567/10000000000 : ℚ), (-9180725637/100000000000 : ℚ), 3⟩,
    ⟨(150868402401/500000000000 : ℚ), (73549057/625000000 : ℚ), (-23126981799/500000000000 : ℚ), 3⟩,
    ⟨(4792086547/15625000000 : ℚ), (-14604731/2000000000 : ℚ), (-4121157899/500000000000 : ℚ), 3⟩,
    ⟨(311578553637/1000000000000 : ℚ), (-1108674649/10000000000 : ℚ), (23766472189/1000000000000 : ℚ), 3⟩,
    ⟨(316344803327/1000000000000 : ℚ), (-1973591967/10000000000 : ℚ), (50916514453/1000000000000 : ℚ), 3⟩,
    ⟨(40118298311/125000000000 : ℚ), (-1350148707/5000000000 : ℚ), (74069014583/1000000000000 : ℚ), 3⟩,
    ⟨(2033368671/6250000000 : ℚ), (-82835173/250000000 : ℚ), (23469648947/250000000000 : ℚ), 3⟩,
    ⟨(164740151397/500000000000 : ℚ), (-1915855189/5000000000 : ℚ), (27711631111/250000000000 : ℚ), 3⟩,
    ⟨(333330449659/1000000000000 : ℚ), (-533705143/1250000000 : ℚ), (15669816701/125000000000 : ℚ), 3⟩,
    ⟨(336852348937/1000000000000 : ℚ), (-4638330759/10000000000 : ℚ), (137712173193/1000000000000 : ℚ), 3⟩,
    ⟨(34001208281/100000000000 : ℚ), (-4946376401/10000000000 : ℚ), (148136898813/1000000000000 : ℚ), 3⟩,
    ⟨(342779221317/1000000000000 : ℚ), (-1300101401/2500000000 : ℚ), (78404512231/500000000000 : ℚ), 3⟩,
    ⟨(172563557699/500000000000 : ℚ), (-2702747549/5000000000 : ℚ), (40965740833/250000000000 : ℚ), 3⟩,
    ⟨(21689572097/62500000000 : ℚ), (-5565482369/10000000000 : ℚ), (42349928949/250000000000 : ℚ), 3⟩,
    ⟨(348478979589/1000000000000 : ℚ), (-5683196301/10000000000 : ℚ), (173493252407/1000000000000 : ℚ), 3⟩,
    ⟨(349450669413/1000000000000 : ℚ), (-5760624891/10000000000 : ℚ), (176195227141/1000000000000 : ℚ), 3⟩,
    ⟨(349938865121/1000000000000 : ℚ), (-1159806431/2000000000 : ℚ), (88769153869/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1450954711/2500000000 : ℚ), (88852913611/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (39917288299/100000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control638.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control638.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate638
