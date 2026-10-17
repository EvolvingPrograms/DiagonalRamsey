import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate44
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(380546728677/1000000000000 : ℚ), (2668484408549/500000000 : ℚ), (-1016394995482951/500000000000 : ℚ), 12⟩,
    ⟨(380931466177/1000000000000 : ℚ), (1177926492653/2000000000 : ℚ), (-225615918175087/1000000000000 : ℚ), 9⟩,
    ⟨(47712501789/125000000000 : ℚ), (2096928908551/10000000000 : ℚ), (-4052106889081/50000000000 : ℚ), 8⟩,
    ⟨(382850521581/1000000000000 : ℚ), (65914189259/625000000 : ℚ), (-41210769924867/1000000000000 : ℚ), 7⟩,
    ⟨(384380216311/1000000000000 : ℚ), (156800112049/2500000000 : ℚ), (-6204866234871/250000000000 : ℚ), 6⟩,
    ⟨(193142706667/500000000000 : ℚ), (411808219343/10000000000 : ℚ), (-16522428940803/1000000000000 : ℚ), 6⟩,
    ⟨(388561522863/1000000000000 : ℚ), (72150095959/2500000000 : ℚ), (-11750626513831/1000000000000 : ℚ), 5⟩,
    ⟨(24450191347/62500000000 : ℚ), (211792340481/10000000000 : ℚ), (-1094623007147/125000000000 : ℚ), 5⟩,
    ⟨(197101832851/500000000000 : ℚ), (20104372633/1250000000 : ℚ), (-1351301922037/200000000000 : ℚ), 4⟩,
    ⟨(198778053297/500000000000 : ℚ), (12539714907/1000000000 : ℚ), (-21416152603/4000000000 : ℚ), 4⟩,
    ⟨(200626153953/500000000000 : ℚ), (99826415791/10000000000 : ℚ), (-541631028297/125000000000 : ℚ), 4⟩,
    ⟨(101320841291/250000000000 : ℚ), (404102447/50000000 : ℚ), (-3566833221121/1000000000000 : ℚ), 4⟩,
    ⟨(409639567199/1000000000000 : ℚ), (13269241261/2000000000 : ℚ), (-1488618831871/500000000000 : ℚ), 3⟩,
    ⟨(207155209769/500000000000 : ℚ), (27548451377/5000000000 : ℚ), (-1256964813679/500000000000 : ℚ), 3⟩,
    ⟨(52410583711/125000000000 : ℚ), (46202240903/10000000000 : ℚ), (-535826981829/250000000000 : ℚ), 3⟩,
    ⟨(212275167123/500000000000 : ℚ), (19532347001/5000000000 : ℚ), (-1842246009707/1000000000000 : ℚ), 3⟩,
    ⟨(86018945553/200000000000 : ℚ), (16631625269/5000000000 : ℚ), (-1594404321733/1000000000000 : ℚ), 3⟩,
    ⟨(217952246657/500000000000 : ℚ), (28494527297/10000000000 : ℚ), (-277594614093/200000000000 : ℚ), 3⟩,
    ⟨(441965634659/1000000000000 : ℚ), (24535566497/10000000000 : ℚ), (-303561176819/250000000000 : ℚ), 3⟩,
    ⟨(448263549981/1000000000000 : ℚ), (5304913451/2500000000 : ℚ), (-133335628691/125000000000 : ℚ), 2⟩,
    ⟨(454783067049/1000000000000 : ℚ), (1842020079/1000000000 : ℚ), (-94031335277/100000000000 : ℚ), 2⟩,
    ⟨(461508479777/1000000000000 : ℚ), (16039760409/10000000000 : ℚ), (-207819893281/250000000000 : ℚ), 2⟩,
    ⟨(234211793027/500000000000 : ℚ), (14002390143/10000000000 : ℚ), (-184142438637/250000000000 : ℚ), 2⟩,
    ⟨(237755863393/500000000000 : ℚ), (6124123263/5000000000 : ℚ), (-653797462377/1000000000000 : ℚ), 2⟩,
    ⟨(24137791301/50000000000 : ℚ), (10729696557/10000000000 : ℚ), (-72631680579/125000000000 : ℚ), 2⟩,
    ⟨(245069216043/500000000000 : ℚ), (147007481/156250000 : ℚ), (-516795727761/1000000000000 : ℚ), 2⟩,
    ⟨(12441043991/25000000000 : ℚ), (8253602677/10000000000 : ℚ), (-229884084227/500000000000 : ℚ), 2⟩,
    ⟨(126311933127/250000000000 : ℚ), (7239775009/10000000000 : ℚ), (-408939337701/1000000000000 : ℚ), 2⟩,
    ⟨(128234506809/250000000000 : ℚ), (6346207621/10000000000 : ℚ), (-181728067907/500000000000 : ℚ), 2⟩,
    ⟨(52069411723/100000000000 : ℚ), (2777852327/5000000000 : ℚ), (-322608212603/1000000000000 : ℚ), 2⟩,
    ⟨(52849731739/100000000000 : ℚ), (4853956973/10000000000 : ℚ), (-28580040777/100000000000 : ℚ), 2⟩,
    ⟨(536328829123/1000000000000 : ℚ), (211449593/500000000 : ℚ), (-252531208557/1000000000000 : ℚ), 2⟩,
    ⟨(17005305801/31250000000 : ℚ), (3670740237/10000000000 : ℚ), (-222375767691/1000000000000 : ℚ), 2⟩,
    ⟨(110400259473/200000000000 : ℚ), (3170693683/10000000000 : ℚ), (-97486204757/500000000000 : ℚ), 2⟩,
    ⟨(22392179901/40000000000 : ℚ), (2721630661/10000000000 : ℚ), (-170011828631/1000000000000 : ℚ), 2⟩,
    ⟨(567560587519/1000000000000 : ℚ), (1158698261/5000000000 : ℚ), (-73614191729/500000000000 : ℚ), 2⟩,
    ⟨(575250882247/1000000000000 : ℚ), (3124361/16000000 : ℚ), (-126393033783/1000000000000 : ℚ), 2⟩,
    ⟨(116571371023/200000000000 : ℚ), (324619331/2000000000 : ℚ), (-5365378749/50000000000 : ℚ), 2⟩,
    ⟨(590360182669/1000000000000 : ℚ), (1324614313/10000000000 : ℚ), (-89799905401/1000000000000 : ℚ), 1⟩,
    ⟨(119548557747/200000000000 : ℚ), (1053912081/10000000000 : ℚ), (-3686006069/50000000000 : ℚ), 1⟩,
    ⟨(604986887969/1000000000000 : ℚ), (202017977/2500000000 : ℚ), (-14734319129/250000000000 : ℚ), 1⟩,
    ⟨(612075028701/1000000000000 : ℚ), (584557603/10000000000 : ℚ), (-45336682909/1000000000000 : ℚ), 1⟩,
    ⟨(618990134979/1000000000000 : ℚ), (19057967/500000000 : ℚ), (-32817650497/1000000000000 : ℚ), 1⟩,
    ⟨(312857773853/500000000000 : ℚ), (195947267/10000000000 : ℚ), (-4258317769/200000000000 : ℚ), 1⟩,
    ⟨(316117532387/500000000000 : ℚ), (27232561/10000000000 : ℚ), (-427216159/40000000000 : ℚ), 1⟩,
    ⟨(4988538907/7812500000 : ℚ), (-31616337/2500000000 : ℚ), (-457571599/500000000000 : ℚ), 1⟩,
    ⟨(322297060721/500000000000 : ℚ), (-266446473/10000000000 : ℚ), (8065157727/1000000000000 : ℚ), 1⟩,
    ⟨(650403886991/1000000000000 : ℚ), (-98463429/2500000000 : ℚ), (16314455131/1000000000000 : ℚ), 1⟩,
    ⟨(655948280509/1000000000000 : ℚ), (-254846389/5000000000 : ℚ), (23880535227/1000000000000 : ℚ), 1⟩,
    ⟨(661213945067/1000000000000 : ℚ), (-307424549/5000000000 : ℚ), (30805730823/1000000000000 : ℚ), 1⟩,
    ⟨(666188195217/1000000000000 : ℚ), (-88762787/1250000000 : ℚ), (37127536303/1000000000000 : ℚ), 1⟩,
    ⟨(167714761889/250000000000 : ℚ), (-398069247/5000000000 : ℚ), (21439567241/500000000000 : ℚ), 1⟩,
    ⟨(675215249591/1000000000000 : ℚ), (-174712171/2000000000 : ℚ), (9617970173/200000000000 : ℚ), 1⟩,
    ⟨(679246306849/1000000000000 : ℚ), (-942898577/10000000000 : ℚ), (26392771049/500000000000 : ℚ), 1⟩,
    ⟨(682942508161/1000000000000 : ℚ), (-502307297/5000000000 : ℚ), (14247232963/250000000000 : ℚ), 1⟩,
    ⟨(686294949053/1000000000000 : ℚ), (-1059112133/10000000000 : ℚ), (7589987113/125000000000 : ℚ), 1⟩,
    ⟨(689295553203/1000000000000 : ℚ), (-553370153/5000000000 : ℚ), (31997856651/500000000000 : ℚ), 1⟩,
    ⟨(172984272973/250000000000 : ℚ), (-1147798847/10000000000 : ℚ), (66831265559/1000000000000 : ℚ), 1⟩,
    ⟨(694213201421/1000000000000 : ℚ), (-73908881/625000000 : ℚ), (69239222791/1000000000000 : ℚ), 1⟩,
    ⟨(174029599611/250000000000 : ℚ), (-605591167/5000000000 : ℚ), (14246037569/200000000000 : ℚ), 1⟩,
    ⟨(27905923727/40000000000 : ℚ), (-1233892517/10000000000 : ℚ), (72812819221/1000000000000 : ℚ), 1⟩,
    ⟨(698798600443/1000000000000 : ℚ), (-1250808477/10000000000 : ℚ), (7399392969/100000000000 : ℚ), 1⟩,
    ⟨(349783574289/500000000000 : ℚ), (-631015317/5000000000 : ℚ), (37389281663/500000000000 : ℚ), 1⟩,
    ⟨(349975943039/500000000000 : ℚ), (-1267625249/10000000000 : ℚ), (75170051809/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-634161903/5000000000 : ℚ), (9402368639/125000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (131564303293/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control44.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control44.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate44
