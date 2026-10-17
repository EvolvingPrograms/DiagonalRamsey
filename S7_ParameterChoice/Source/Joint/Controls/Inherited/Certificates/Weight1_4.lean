import S7_ParameterChoice.Source.Joint.Controls.ControlPrecision
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeData
import S7_ParameterChoice.Source.Joint.Controls.FastControlDomain
import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate56
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48019890283/125000000000 : ℚ), (26237759258487/5000000000 : ℚ), (-201767045727887/100000000000 : ℚ), 13⟩,
    ⟨(192269754567/500000000000 : ℚ), (2895820587353/5000000000 : ℚ), (-111970004294751/500000000000 : ℚ), 9⟩,
    ⟨(385299366487/1000000000000 : ℚ), (412484105141/2000000000 : ℚ), (-10055211956611/125000000000 : ℚ), 8⟩,
    ⟨(193218431881/500000000000 : ℚ), (129688905083/1250000000 : ℚ), (-40906600307047/1000000000000 : ℚ), 7⟩,
    ⟨(96987315157/250000000000 : ℚ), (308593030173/5000000000 : ℚ), (-6159296321427/250000000000 : ℚ), 6⟩,
    ⟨(97458228397/250000000000 : ℚ), (50669032909/1250000000 : ℚ), (-16401815206147/1000000000000 : ℚ), 6⟩,
    ⟨(392083284757/1000000000000 : ℚ), (284165726801/10000000000 : ℚ), (-11665444494849/1000000000000 : ℚ), 5⟩,
    ⟨(394694952793/1000000000000 : ℚ), (104303627059/5000000000 : ℚ), (-2173499200709/250000000000 : ℚ), 5⟩,
    ⟨(397661625961/1000000000000 : ℚ), (79235407401/5000000000 : ℚ), (-670832052999/100000000000 : ℚ), 4⟩,
    ⟨(100244039321/250000000000 : ℚ), (30899369019/2500000000 : ℚ), (-212647645753/40000000000 : ℚ), 4⟩,
    ⟨(404630561767/1000000000000 : ℚ), (12303609631/1250000000 : ℚ), (-860539758109/200000000000 : ℚ), 4⟩,
    ⟨(102154008907/250000000000 : ℚ), (79717579099/10000000000 : ℚ), (-3542080347081/1000000000000 : ℚ), 4⟩,
    ⟨(412922977511/1000000000000 : ℚ), (32732060393/5000000000 : ℚ), (-2956762677563/1000000000000 : ℚ), 3⟩,
    ⟨(208770505809/500000000000 : ℚ), (27191724347/5000000000 : ℚ), (-499357841849/200000000000 : ℚ), 3⟩,
    ⟨(422459012699/1000000000000 : ℚ), (71280599/15625000 : ℚ), (-266101204931/125000000000 : ℚ), 3⟩,
    ⟨(213832566429/500000000000 : ℚ), (38584828817/10000000000 : ℚ), (-914935174441/500000000000 : ℚ), 3⟩,
    ⟨(433146830097/1000000000000 : ℚ), (32865079347/10000000000 : ℚ), (-4949231857/3125000000 : ℚ), 3⟩,
    ⟨(219445449263/500000000000 : ℚ), (140809557/50000000 : ℚ), (-344685012403/250000000000 : ℚ), 3⟩,
    ⟨(222441750091/500000000000 : ℚ), (24255998353/10000000000 : ℚ), (-1206185902119/1000000000000 : ℚ), 3⟩,
    ⟨(225555099181/500000000000 : ℚ), (1311458093/625000000 : ℚ), (-264901714739/250000000000 : ℚ), 3⟩,
    ⟨(91511198481/200000000000 : ℚ), (9109679667/5000000000 : ℚ), (-93405992499/100000000000 : ℚ), 2⟩,
    ⟨(116051338457/250000000000 : ℚ), (15868204829/10000000000 : ℚ), (-825724210013/1000000000000 : ℚ), 2⟩,
    ⟨(235521131869/500000000000 : ℚ), (13855134613/10000000000 : ℚ), (-146321740801/200000000000 : ℚ), 2⟩,
    ⟨(23902512571/50000000000 : ℚ), (6060626381/5000000000 : ℚ), (-649345163923/1000000000000 : ℚ), 2⟩,
    ⟨(485212434017/1000000000000 : ℚ), (10619674299/10000000000 : ℚ), (-577038913643/1000000000000 : ℚ), 2⟩,
    ⟨(123127889301/250000000000 : ℚ), (9312733043/10000000000 : ℚ), (-102631951927/200000000000 : ℚ), 2⟩,
    ⟨(249965018377/500000000000 : ℚ), (8169915559/10000000000 : ℚ), (-456461151579/1000000000000 : ℚ), 2⟩,
    ⟨(5074500009/10000000000 : ℚ), (447894589/625000000 : ℚ), (-811839049/2000000000 : ℚ), 2⟩,
    ⟨(51505333339/100000000000 : ℚ), (6281450589/10000000000 : ℚ), (-360688262237/1000000000000 : ℚ), 2⟩,
    ⟨(52272171713/100000000000 : ℚ), (5498385611/10000000000 : ℚ), (-320062386753/1000000000000 : ℚ), 2⟩,
    ⟨(66304584789/125000000000 : ℚ), (4803017663/10000000000 : ℚ), (-141725603933/500000000000 : ℚ), 2⟩,
    ⟨(538179630919/1000000000000 : ℚ), (836709051/2000000000 : ℚ), (-12517847269/50000000000 : ℚ), 2⟩,
    ⟨(272965960749/500000000000 : ℚ), (3630040547/10000000000 : ℚ), (-220357877249/1000000000000 : ℚ), 2⟩,
    ⟨(110734974821/200000000000 : ℚ), (626822397/2000000000 : ℚ), (-193094951013/1000000000000 : ℚ), 2⟩,
    ⟨(561389835287/1000000000000 : ℚ), (1344317499/5000000000 : ℚ), (-10516316653/62500000000 : ℚ), 2⟩,
    ⟨(569058219027/1000000000000 : ℚ), (228753559/1000000000 : ℚ), (-29118487623/200000000000 : ℚ), 2⟩,
    ⟨(576661551517/1000000000000 : ℚ), (1925615347/10000000000 : ℚ), (-124861588653/1000000000000 : ℚ), 2⟩,
    ⟨(584181515663/1000000000000 : ℚ), (799204551/5000000000 : ℚ), (-105871629931/1000000000000 : ℚ), 2⟩,
    ⟨(591599995213/1000000000000 : ℚ), (1302068533/10000000000 : ℚ), (-17690313801/200000000000 : ℚ), 2⟩,
    ⟨(374311949/625000000 : ℚ), (516633241/5000000000 : ℚ), (-36226217277/500000000000 : ℚ), 2⟩,
    ⟨(606061300997/1000000000000 : ℚ), (789117927/10000000000 : ℚ), (-11548812771/200000000000 : ℚ), 2⟩,
    ⟨(613069288679/1000000000000 : ℚ), (22684577/400000000 : ℚ), (-11053106547/250000000000 : ℚ), 2⟩,
    ⟨(154976549647/250000000000 : ℚ), (36506949/1000000000 : ℚ), (-1984836351/62500000000 : ℚ), 1⟩,
    ⟨(156638890003/250000000000 : ℚ), (181072923/10000000000 : ℚ), (-1268174939/62500000000 : ℚ), 1⟩,
    ⟨(126600270811/200000000000 : ℚ), (3363117/2500000000 : ℚ), (-4867483517/500000000000 : ℚ), 1⟩,
    ⟨(127845610447/200000000000 : ℚ), (-17407309/1250000000 : ℚ), (-1328113/62500000000 : ℚ), 1⟩,
    ⟨(645220653891/1000000000000 : ℚ), (-55669621/2000000000 : ℚ), (4455527153/500000000000 : ℚ), 1⟩,
    ⟨(8137059029/12500000000 : ℚ), (-101237339/2500000000 : ℚ), (2139460699/125000000000 : ℚ), 1⟩,
    ⟨(656446419559/1000000000000 : ℚ), (-130014871/2500000000 : ℚ), (24640252933/1000000000000 : ℚ), 1⟩,
    ⟨(330826269859/500000000000 : ℚ), (-31227839/500000000 : ℚ), (31526944389/1000000000000 : ℚ), 1⟩,
    ⟨(666570540799/1000000000000 : ℚ), (-143842961/2000000000 : ℚ), (37813136429/1000000000000 : ℚ), 1⟩,
    ⟨(134237714981/200000000000 : ℚ), (-160942909/2000000000 : ℚ), (8706383331/200000000000 : ℚ), 1⟩,
    ⟨(675495516789/1000000000000 : ℚ), (-881654801/10000000000 : ℚ), (12178133271/250000000000 : ℚ), 1⟩,
    ⟨(13589619813/20000000000 : ℚ), (-950561077/10000000000 : ℚ), (53380780919/1000000000000 : ℚ), 1⟩,
    ⟨(683135395133/1000000000000 : ℚ), (-1011893171/10000000000 : ℚ), (57559333997/1000000000000 : ℚ), 1⟩,
    ⟨(85806240807/125000000000 : ℚ), (-1066051659/10000000000 : ℚ), (12253605933/200000000000 : ℚ), 1⟩,
    ⟨(86177074953/125000000000 : ℚ), (-139172927/1250000000 : ℚ), (64524112467/1000000000000 : ℚ), 1⟩,
    ⟨(34601413383/50000000000 : ℚ), (-1154186297/10000000000 : ℚ), (13468488321/200000000000 : ℚ), 1⟩,
    ⟨(694278638829/1000000000000 : ℚ), (-594356543/5000000000 : ℚ), (13947133429/200000000000 : ℚ), 1⟩,
    ⟨(696162291789/1000000000000 : ℚ), (-1217174781/10000000000 : ℚ), (71714376191/1000000000000 : ℚ), 1⟩,
    ⟨(139534937731/200000000000 : ℚ), (-1239743311/10000000000 : ℚ), (36643607809/500000000000 : ℚ), 1⟩,
    ⟨(69881218593/100000000000 : ℚ), (-125655371/1000000000 : ℚ), (37230494709/500000000000 : ℚ), 1⟩,
    ⟨(699572043283/1000000000000 : ℚ), (-1267705811/10000000000 : ℚ), (75240735127/1000000000000 : ℚ), 1⟩,
    ⟨(699952430153/1000000000000 : ℚ), (-1273265493/10000000000 : ℚ), (18907445157/250000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-159244961/1250000000 : ℚ), (9459796579/125000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (73305581809/500000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control56.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control56.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate56

namespace DiagonalRamsey.JointInheritedCertificate63
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(386049220143/1000000000000 : ℚ), (52031596640509/10000000000 : ℚ), (-2010426890345441/1000000000000 : ℚ), 13⟩,
    ⟨(7728546613/20000000000 : ℚ), (2871495671783/5000000000 : ℚ), (-223136882438147/1000000000000 : ℚ), 9⟩,
    ⟨(193591320381/500000000000 : ℚ), (511321705653/2500000000 : ℚ), (-10019224413041/125000000000 : ℚ), 8⟩,
    ⟨(388313330871/1000000000000 : ℚ), (102901181041/1000000000 : ℚ), (-40760637141553/1000000000000 : ℚ), 7⟩,
    ⟨(194908338523/500000000000 : ℚ), (12244237219/200000000 : ℚ), (-6137404548493/250000000000 : ℚ), 6⟩,
    ⟨(195844528797/500000000000 : ℚ), (100536111417/2500000000 : ℚ), (-4085948271959/250000000000 : ℚ), 6⟩,
    ⟨(196962980893/500000000000 : ℚ), (281961236383/10000000000 : ℚ), (-581219988837/50000000000 : ℚ), 5⟩,
    ⟨(15860880029/40000000000 : ℚ), (41404602737/2000000000 : ℚ), (-1082948560887/125000000000 : ℚ), 5⟩,
    ⟨(99867730081/250000000000 : ℚ), (157294060979/10000000000 : ℚ), (-6685005540603/1000000000000 : ℚ), 5⟩,
    ⟨(402765616379/1000000000000 : ℚ), (122700939587/10000000000 : ℚ), (-5297835070747/1000000000000 : ℚ), 4⟩,
    ⟨(406398151677/1000000000000 : ℚ), (48865991639/5000000000 : ℚ), (-4287939259481/1000000000000 : ℚ), 4⟩,
    ⟨(102589943781/250000000000 : ℚ), (39583490361/5000000000 : ℚ), (-3530006946433/1000000000000 : ℚ), 4⟩,
    ⟨(414640942821/1000000000000 : ℚ), (13004639591/2000000000 : ℚ), (-2946743938199/1000000000000 : ℚ), 4⟩,
    ⟨(419231341061/1000000000000 : ℚ), (54026306563/10000000000 : ℚ), (-99534937867/40000000000 : ℚ), 3⟩,
    ⟨(106029977793/250000000000 : ℚ), (45327452239/10000000000 : ℚ), (-2121665321709/1000000000000 : ℚ), 3⟩,
    ⟨(167693311/390625000 : ℚ), (38343816811/10000000000 : ℚ), (-911874378029/500000000000 : ℚ), 3⟩,
    ⟨(217371884541/500000000000 : ℚ), (8166180139/2500000000 : ℚ), (-39461630351/25000000000 : ℚ), 3⟩,
    ⟨(110113365769/250000000000 : ℚ), (1749637503/625000000 : ℚ), (-1374136014423/1000000000000 : ℚ), 3⟩,
    ⟨(446410202991/1000000000000 : ℚ), (12057364753/5000000000 : ℚ), (-1202150508993/1000000000000 : ℚ), 3⟩,
    ⟨(226299819259/500000000000 : ℚ), (5215909703/2500000000 : ℚ), (-132005924783/125000000000 : ℚ), 3⟩,
    ⟨(91801371753/200000000000 : ℚ), (3623479067/2000000000 : ℚ), (-465450858097/500000000000 : ℚ), 2⟩,
    ⟨(465616428177/1000000000000 : ℚ), (15780891263/10000000000 : ℚ), (-205726635783/250000000000 : ℚ), 2⟩,
    ⟨(236206211861/500000000000 : ℚ), (1377999551/1000000000 : ℚ), (-729081829767/1000000000000 : ℚ), 2⟩,
    ⟨(479378473251/1000000000000 : ℚ), (301407043/250000000 : ℚ), (-129413605617/200000000000 : ℚ), 2⟩,
    ⟨(243248897471/500000000000 : ℚ), (528161779/500000000 : ℚ), (-143744356671/250000000000 : ℚ), 2⟩,
    ⟨(19750129509/40000000000 : ℚ), (9263485879/10000000000 : ℚ), (-127821365057/250000000000 : ℚ), 2⟩,
    ⟨(250563661301/500000000000 : ℚ), (2031688899/2500000000 : ℚ), (-22737508011/50000000000 : ℚ), 2⟩,
    ⟨(254301142379/500000000000 : ℚ), (7128327009/10000000000 : ℚ), (-404351717273/1000000000000 : ℚ), 2⟩,
    ⟨(516160116353/1000000000000 : ℚ), (6247878773/10000000000 : ℚ), (-35924661141/100000000000 : ℚ), 2⟩,
    ⟨(523782609909/1000000000000 : ℚ), (42723403/78125000 : ℚ), (-318732429957/1000000000000 : ℚ), 2⟩,
    ⟨(531451402173/1000000000000 : ℚ), (2388239963/5000000000 : ℚ), (-8819394281/31250000000 : ℚ), 2⟩,
    ⟨(10782960367/20000000000 : ℚ), (4159815269/10000000000 : ℚ), (-249215174763/1000000000000 : ℚ), 2⟩,
    ⟨(27342695831/50000000000 : ℚ), (3608743893/10000000000 : ℚ), (-219295874249/1000000000000 : ℚ), 2⟩,
    ⟨(277275266399/500000000000 : ℚ), (3114932297/10000000000 : ℚ), (-7684196631/40000000000 : ℚ), 2⟩,
    ⟨(562219325061/1000000000000 : ℚ), (2671304117/10000000000 : ℚ), (-83668126517/500000000000 : ℚ), 2⟩,
    ⟨(569841818617/1000000000000 : ℚ), (2271825487/10000000000 : ℚ), (-144726987771/1000000000000 : ℚ), 2⟩,
    ⟨(577399650213/1000000000000 : ℚ), (1911331479/10000000000 : ℚ), (-2481007807/20000000000 : ℚ), 2⟩,
    ⟨(36554663273/62500000000 : ℚ), (396346231/2500000000 : ℚ), (-105110202713/1000000000000 : ℚ), 2⟩,
    ⟨(118449739449/200000000000 : ℚ), (1290160953/10000000000 : ℚ), (-10966995341/125000000000 : ℚ), 2⟩,
    ⟨(149876035007/250000000000 : ℚ), (1022352089/10000000000 : ℚ), (-35889573093/500000000000 : ℚ), 2⟩,
    ⟨(606623461719/1000000000000 : ℚ), (779089849/10000000000 : ℚ), (-2284398651/40000000000 : ℚ), 2⟩,
    ⟨(613589511249/1000000000000 : ℚ), (55787971/1000000000 : ℚ), (-10903677011/250000000000 : ℚ), 2⟩,
    ⟨(310192753397/500000000000 : ℚ), (178273459/5000000000 : ℚ), (-15596748199/500000000000 : ℚ), 2⟩,
    ⟨(125399015241/200000000000 : ℚ), (173191173/10000000000 : ℚ), (-9879210831/500000000000 : ℚ), 2⟩,
    ⟨(158350574113/250000000000 : ℚ), (3074291/5000000000 : ℚ), (-369278289/40000000000 : ℚ), 2⟩,
    ⟨(639591731979/1000000000000 : ℚ), (-18255047/1250000000 : ℚ), (454378733/1000000000000 : ℚ), 1⟩,
    ⟨(322774235947/500000000000 : ℚ), (-284657919/10000000000 : ℚ), (9361160369/1000000000000 : ℚ), 1⟩,
    ⟨(651258165889/1000000000000 : ℚ), (-102707973/2500000000 : ℚ), (17542022311/1000000000000 : ℚ), 1⟩,
    ⟨(65670705881/100000000000 : ℚ), (-131388811/2500000000 : ℚ), (25044486571/1000000000000 : ℚ), 1⟩,
    ⟨(330941011899/500000000000 : ℚ), (-314851301/5000000000 : ℚ), (31910669561/1000000000000 : ℚ), 1⟩,
    ⟨(666770593909/1000000000000 : ℚ), (-724044409/10000000000 : ℚ), (3817788881/100000000000 : ℚ), 1⟩,
    ⟨(671360992149/1000000000000 : ℚ), (-809259/10000000 : ℚ), (10969796039/250000000000 : ℚ), 1⟩,
    ⟨(337821079923/500000000000 : ℚ), (-221485729/2500000000 : ℚ), (24521882187/500000000000 : ℚ), 1⟩,
    ⟨(679603783293/1000000000000 : ℚ), (-954619737/10000000000 : ℚ), (6712174103/125000000000 : ℚ), 1⟩,
    ⟨(5337783739/7812500000 : ℚ), (-1015747621/10000000000 : ℚ), (14465679281/250000000000 : ℚ), 1⟩,
    ⟨(343265507323/500000000000 : ℚ), (-534862877/5000000000 : ℚ), (30779776893/500000000000 : ℚ), 1⟩,
    ⟨(344739967123/500000000000 : ℚ), (-139612479/1250000000 : ℚ), (4050320637/62500000000 : ℚ), 1⟩,
    ⟨(10813687081/15625000000 : ℚ), (-1157566719/10000000000 : ℚ), (67614291909/1000000000000 : ℚ), 1⟩,
    ⟨(10848638709/15625000000 : ℚ), (-9312331/78125000 : ℚ), (17499919371/250000000000 : ℚ), 1⟩,
    ⟨(174046314481/250000000000 : ℚ), (-12203451/100000000 : ℚ), (71971865789/1000000000000 : ℚ), 1⟩,
    ⟨(697688604099/1000000000000 : ℚ), (-1242838291/10000000000 : ℚ), (9192437023/125000000000 : ℚ), 1⟩,
    ⟨(682440717/976562500 : ℚ), (-1259592549/10000000000 : ℚ), (9338670943/125000000000 : ℚ), 1⟩,
    ⟨(4372341277/6250000000 : ℚ), (-254141479/2000000000 : ℚ), (3774325691/50000000000 : ℚ), 1⟩,
    ⟨(699952714827/1000000000000 : ℚ), (-2552497/20000000 : ℚ), (75874260139/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-159617547/1250000000 : ℚ), (75922689877/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (38577288837/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control63.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control63.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate63

namespace DiagonalRamsey.JointInheritedCertificate71
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(310767962559/1000000000000 : ℚ), (891331577469/200000000 : ℚ), (-1386355985135117/1000000000000 : ℚ), 13⟩,
    ⟨(155558151371/500000000000 : ℚ), (2457704701229/5000000000 : ℚ), (-76935280191587/500000000000 : ℚ), 9⟩,
    ⟨(311812143927/1000000000000 : ℚ), (1748591143881/10000000000 : ℚ), (-27635887019831/500000000000 : ℚ), 8⟩,
    ⟨(312853809771/1000000000000 : ℚ), (219632073119/2500000000 : ℚ), (-3513357789877/125000000000 : ℚ), 7⟩,
    ⟨(314238790809/1000000000000 : ℚ), (521865871239/10000000000 : ℚ), (-8463976137333/500000000000 : ℚ), 6⟩,
    ⟨(157981875251/500000000000 : ℚ), (342217509153/10000000000 : ℚ), (-2817318740291/250000000000 : ℚ), 6⟩,
    ⟨(31802453327/100000000000 : ℚ), (11975630887/500000000 : ℚ), (-4007383585701/500000000000 : ℚ), 5⟩,
    ⟨(320416174507/1000000000000 : ℚ), (17552656077/1000000000 : ℚ), (-5972932308647/1000000000000 : ℚ), 5⟩,
    ⟨(323132912539/1000000000000 : ℚ), (66552708979/5000000000 : ℚ), (-4608409641889/1000000000000 : ℚ), 5⟩,
    ⟨(326168202507/1000000000000 : ℚ), (51813115173/5000000000 : ℚ), (-730339782689/200000000000 : ℚ), 4⟩,
    ⟨(82378683033/250000000000 : ℚ), (41185981681/5000000000 : ℚ), (-2955134134299/1000000000000 : ℚ), 4⟩,
    ⟨(33316443933/100000000000 : ℚ), (16646836169/2500000000 : ℚ), (-2432302740293/1000000000000 : ℚ), 4⟩,
    ⟨(168554265819/500000000000 : ℚ), (13644095649/2500000000 : ℚ), (-2029903917279/1000000000000 : ℚ), 4⟩,
    ⟨(34133750739/100000000000 : ℚ), (45249386383/10000000000 : ℚ), (-1713612455101/1000000000000 : ℚ), 3⟩,
    ⟨(69168235723/200000000000 : ℚ), (7576150497/2000000000 : ℚ), (-730256747151/500000000000 : ℚ), 3⟩,
    ⟨(175304347787/500000000000 : ℚ), (31972487687/10000000000 : ℚ), (-627417938319/500000000000 : ℚ), 3⟩,
    ⟨(355628572901/1000000000000 : ℚ), (13586921901/5000000000 : ℚ), (-542718594107/500000000000 : ℚ), 3⟩,
    ⟨(360888717271/1000000000000 : ℚ), (23232177543/10000000000 : ℚ), (-236066080847/250000000000 : ℚ), 3⟩,
    ⟨(366376456537/1000000000000 : ℚ), (19961908649/10000000000 : ℚ), (-825379916299/1000000000000 : ℚ), 3⟩,
    ⟨(372078570253/1000000000000 : ℚ), (17224344857/10000000000 : ℚ), (-724328829873/1000000000000 : ℚ), 3⟩,
    ⟨(377981321529/1000000000000 : ℚ), (14914236631/10000000000 : ℚ), (-127543085659/200000000000 : ℚ), 2⟩,
    ⟨(384070490119/1000000000000 : ℚ), (6475307529/5000000000 : ℚ), (-562915129419/1000000000000 : ℚ), 2⟩,
    ⟨(390331406683/1000000000000 : ℚ), (11270422897/10000000000 : ℚ), (-124468402723/250000000000 : ℚ), 2⟩,
    ⟨(634798381/1600000000 : ℚ), (4912003629/5000000000 : ℚ), (-4409644967/10000000000 : ℚ), 2⟩,
    ⟨(50413471741/125000000000 : ℚ), (8571877673/10000000000 : ℚ), (-97721708899/250000000000 : ℚ), 2⟩,
    ⟨(102497990851/250000000000 : ℚ), (1870584941/2500000000 : ℚ), (-86647536183/250000000000 : ℚ), 2⟩,
    ⟨(208392726877/500000000000 : ℚ), (6529744683/10000000000 : ℚ), (-61443771999/200000000000 : ℚ), 2⟩,
    ⟨(84734375773/200000000000 : ℚ), (711647259/1250000000 : ℚ), (-68017663507/250000000000 : ℚ), 2⟩,
    ⟨(86126929747/200000000000 : ℚ), (4955467057/10000000000 : ℚ), (-240564801247/1000000000000 : ℚ), 2⟩,
    ⟨(437656989443/1000000000000 : ℚ), (134450633/312500000 : ℚ), (-10610895607/50000000000 : ℚ), 2⟩,
    ⟨(88944396711/200000000000 : ℚ), (3722240529/10000000000 : ℚ), (-46656284697/250000000000 : ℚ), 2⟩,
    ⟨(1411914409/3125000000 : ℚ), (1602533573/5000000000 : ℚ), (-163445483969/1000000000000 : ℚ), 2⟩,
    ⟨(458911789477/1000000000000 : ℚ), (2742615899/10000000000 : ℚ), (-35597555057/250000000000 : ℚ), 2⟩,
    ⟨(466002416803/1000000000000 : ℚ), (1163947019/5000000000 : ℚ), (-7700855551/62500000000 : ℚ), 2⟩,
    ⟨(236533705457/500000000000 : ℚ), (97748643/500000000 : ℚ), (-52852967631/500000000000 : ℚ), 2⟩,
    ⟨(240044875811/500000000000 : ℚ), (161880507/1000000000 : ℚ), (-89686772693/1000000000000 : ℚ), 2⟩,
    ⟨(487052521493/1000000000000 : ℚ), (657538603/5000000000 : ℚ), (-75000966829/1000000000000 : ℚ), 2⟩,
    ⟨(123484736651/250000000000 : ℚ), (260022423/2500000000 : ℚ), (-15378576407/250000000000 : ℚ), 2⟩,
    ⟨(250366218477/500000000000 : ℚ), (790658819/10000000000 : ℚ), (-24555186369/500000000000 : ℚ), 2⟩,
    ⟨(50741662643/100000000000 : ℚ), (564036243/10000000000 : ℚ), (-37687884947/1000000000000 : ℚ), 2⟩,
    ⟨(513975412233/1000000000000 : ℚ), (7156851/200000000 : ℚ), (-27158483327/1000000000000 : ℚ), 2⟩,
    ⟨(20815719747/40000000000 : ℚ), (34002437/2000000000 : ℚ), (-348897839/20000000000 : ℚ), 2⟩,
    ⟨(526653910239/1000000000000 : ℚ), (-1252377/10000000000 : ℚ), (-132490273/15625000000 : ℚ), 2⟩,
    ⟨(532743078829/1000000000000 : ℚ), (-157518941/10000000000 : ℚ), (-20245243/100000000000 : ℚ), 2⟩,
    ⟨(107729166021/200000000000 : ℚ), (-300157709/10000000000 : ℚ), (1859554477/250000000000 : ℚ), 2⟩,
    ⟨(544347943821/1000000000000 : ℚ), (-86073663/2000000000 : ℚ), (7244371281/500000000000 : ℚ), 2⟩,
    ⟨(549835683087/1000000000000 : ℚ), (-549202637/10000000000 : ℚ), (5247447947/250000000000 : ℚ), 2⟩,
    ⟨(555095827457/1000000000000 : ℚ), (-657584119/10000000000 : ℚ), (26977269269/1000000000000 : ℚ), 2⟩,
    ⟨(35007231549/62500000000 : ℚ), (-189081041/2500000000 : ℚ), (812072153/25000000000 : ℚ), 2⟩,
    ⟨(564883221743/1000000000000 : ℚ), (-846136083/10000000000 : ℚ), (7506930667/200000000000 : ℚ), 2⟩,
    ⟨(71173361621/125000000000 : ℚ), (-46382349/500000000 : ℚ), (4215730427/100000000000 : ℚ), 2⟩,
    ⟨(7170198359/12500000000 : ℚ), (-250351977/2500000000 : ℚ), (23186329663/500000000000 : ℚ), 1⟩,
    ⟨(144389990257/250000000000 : ℚ), (-533951269/5000000000 : ℚ), (50199938891/1000000000000 : ℚ), 1⟩,
    ⟨(290604834113/500000000000 : ℚ), (-563777289/5000000000 : ℚ), (53656033861/1000000000000 : ℚ), 1⟩,
    ⟨(584556197851/1000000000000 : ℚ), (-236146823/2000000000 : ℚ), (56755738733/1000000000000 : ℚ), 1⟩,
    ⟨(587591487819/1000000000000 : ℚ), (-1227763027/10000000000 : ℚ), (2975597593/50000000000 : ℚ), 1⟩,
    ⟨(590308225851/1000000000000 : ℚ), (-317229899/2500000000 : ℚ), (61935847723/1000000000000 : ℚ), 1⟩,
    ⟨(37043741693/62500000000 : ℚ), (-1304442421/10000000000 : ℚ), (64037024147/1000000000000 : ℚ), 1⟩,
    ⟨(4646567577/7812500000 : ℚ), (-333633429/2500000000 : ℚ), (32911813623/500000000000 : ℚ), 1⟩,
    ⟨(149121402387/250000000000 : ℚ), (-1359362063/10000000000 : ℚ), (13460491277/200000000000 : ℚ), 1⟩,
    ⟨(597870590587/1000000000000 : ℚ), (-344766169/2500000000 : ℚ), (4279940683/62500000000 : ℚ), 1⟩,
    ⟨(598912256431/1000000000000 : ℚ), (-1393749227/10000000000 : ℚ), (69357760863/1000000000000 : ℚ), 1⟩,
    ⟨(119921619523/200000000000 : ℚ), (-43859227/312500000 : ℚ), (69941801743/1000000000000 : ℚ), 1⟩,
    ⟨(599956437799/1000000000000 : ℚ), (-352088813/2500000000 : ℚ), (70233295217/1000000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-1408962141/10000000000 : ℚ), (8783713403/125000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (374999/1000000 : ℚ)
  x := (101899652323/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control71.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control71.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate71

namespace DiagonalRamsey.JointInheritedCertificate81
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(312523459613/1000000000000 : ℚ), (220954056451/50000000 : ℚ), (-1382417152977103/1000000000000 : ℚ), 13⟩,
    ⟨(156434842771/500000000000 : ℚ), (4874304654031/10000000000 : ℚ), (-30686729806483/200000000000 : ℚ), 9⟩,
    ⟨(313561303311/1000000000000 : ℚ), (433538472957/2500000000 : ℚ), (-11023002020961/200000000000 : ℚ), 8⟩,
    ⟨(9831145211/31250000000 : ℚ), (108923702433/1250000000 : ℚ), (-7006818488001/250000000000 : ℚ), 7⟩,
    ⟨(315973221633/1000000000000 : ℚ), (517702935821/10000000000 : ℚ), (-16880114685561/1000000000000 : ℚ), 6⟩,
    ⟨(317687711663/1000000000000 : ℚ), (339542988549/10000000000 : ℚ), (-5618750229437/500000000000 : ℚ), 6⟩,
    ⟨(319735986487/1000000000000 : ℚ), (23768174253/1000000000 : ℚ), (-7992222066277/1000000000000 : ℚ), 5⟩,
    ⟨(322113111631/1000000000000 : ℚ), (1742159421/100000000 : ℚ), (-2978084296553/500000000000 : ℚ), 5⟩,
    ⟨(40601670049/125000000000 : ℚ), (66067824973/5000000000 : ℚ), (-919100139627/200000000000 : ℚ), 5⟩,
    ⟨(163915113817/500000000000 : ℚ), (51445072187/5000000000 : ℚ), (-3641484129577/1000000000000 : ℚ), 4⟩,
    ⟨(16557822273/50000000000 : ℚ), (40900909819/5000000000 : ℚ), (-1473436371003/500000000000 : ℚ), 4⟩,
    ⟨(4184800009/12500000000 : ℚ), (33069188467/5000000000 : ℚ), (-606374944861/250000000000 : ℚ), 4⟩,
    ⟨(84676038579/250000000000 : ℚ), (54217926433/10000000000 : ℚ), (-31628377439/15625000000 : ℚ), 4⟩,
    ⟨(342907462253/1000000000000 : ℚ), (1798392393/400000000 : ℚ), (-1708794469743/1000000000000 : ℚ), 3⟩,
    ⟨(86845949599/250000000000 : ℚ), (37644417249/10000000000 : ℚ), (-728192620587/500000000000 : ℚ), 3⟩,
    ⟨(176061189429/500000000000 : ℚ), (31777853137/10000000000 : ℚ), (-1251262382711/1000000000000 : ℚ), 3⟩,
    ⟨(357111787983/1000000000000 : ℚ), (27012242867/10000000000 : ℚ), (-1082315384721/1000000000000 : ℚ), 3⟩,
    ⟨(362340005849/1000000000000 : ℚ), (23097002897/10000000000 : ℚ), (-94151425037/100000000000 : ℚ), 3⟩,
    ⟨(367794437221/1000000000000 : ℚ), (1984805767/1000000000 : ℚ), (-822938691843/1000000000000 : ℚ), 3⟩,
    ⟨(74692388379/200000000000 : ℚ), (8563916249/5000000000 : ℚ), (-28885856709/40000000000 : ℚ), 3⟩,
    ⟨(94832216589/250000000000 : ℚ), (741596001/500000000 : ℚ), (-158937901431/250000000000 : ℚ), 3⟩,
    ⟨(38538107667/100000000000 : ℚ), (50312477/39062500 : ℚ), (-112227454891/200000000000 : ℚ), 2⟩,
    ⟨(97900998133/250000000000 : ℚ), (175148339/156250000 : ℚ), (-15507970637/31250000000 : ℚ), 2⟩,
    ⟨(49747827799/125000000000 : ℚ), (610697043/625000000 : ℚ), (-439483308439/1000000000000 : ℚ), 2⟩,
    ⟨(101125399893/250000000000 : ℚ), (8525784847/10000000000 : ℚ), (-38952484329/100000000000 : ℚ), 2⟩,
    ⟨(205572609643/500000000000 : ℚ), (7441936953/10000000000 : ℚ), (-345332226961/1000000000000 : ℚ), 2⟩,
    ⟨(417897476471/1000000000000 : ℚ), (6494152653/10000000000 : ℚ), (-306052367871/1000000000000 : ℚ), 2⟩,
    ⟨(106185526087/250000000000 : ℚ), (1132334439/2000000000 : ℚ), (-135492479331/500000000000 : ℚ), 2⟩,
    ⟨(43166261361/100000000000 : ℚ), (4927447571/10000000000 : ℚ), (-119775466473/500000000000 : ℚ), 2⟩,
    ⟨(27415145759/62500000000 : ℚ), (855477749/2000000000 : ℚ), (-52817067477/250000000000 : ℚ), 2⟩,
    ⟨(89132889039/200000000000 : ℚ), (3699781197/10000000000 : ℚ), (-46433313647/250000000000 : ℚ), 2⟩,
    ⟨(11317800897/25000000000 : ℚ), (159241591/500000000 : ℚ), (-1626058303/10000000000 : ℚ), 2⟩,
    ⟨(459768125933/1000000000000 : ℚ), (1362155977/5000000000 : ℚ), (-1769975651/12500000000 : ℚ), 2⟩,
    ⟨(233407858309/500000000000 : ℚ), (2311274629/10000000000 : ℚ), (-61232456731/500000000000 : ℚ), 2⟩,
    ⟨(473837829669/1000000000000 : ℚ), (969914489/5000000000 : ℚ), (-104997003579/1000000000000 : ℚ), 2⟩,
    ⟨(480817548203/1000000000000 : ℚ), (401239767/2500000000 : ℚ), (-17802917891/200000000000 : ℚ), 2⟩,
    ⟨(97547611493/200000000000 : ℚ), (260475499/2000000000 : ℚ), (-74362815411/1000000000000 : ℚ), 2⟩,
    ⟨(247291342671/500000000000 : ℚ), (1028406383/10000000000 : ℚ), (-60907784789/1000000000000 : ℚ), 2⟩,
    ⟨(501334942527/1000000000000 : ℚ), (155976027/2000000000 : ℚ), (-3033333987/62500000000 : ℚ), 2⟩,
    ⟨(507978562241/1000000000000 : ℚ), (554065559/10000000000 : ℚ), (-37138427737/1000000000000 : ℚ), 2⟩,
    ⟨(514497539421/1000000000000 : ℚ), (69719187/2000000000 : ℚ), (-1331742919/50000000000 : ℚ), 2⟩,
    ⟨(520876169281/1000000000000 : ℚ), (80708187/5000000000 : ℚ), (-16945509913/1000000000000 : ℚ), 2⟩,
    ⟨(527099085143/1000000000000 : ℚ), (-9261681/10000000000 : ℚ), (-320110883/40000000000 : ℚ), 2⟩,
    ⟨(533151295457/1000000000000 : ℚ), (-16499847/1000000000 : ℚ), (126370479/500000000000 : ℚ), 2⟩,
    ⟨(269509109959/500000000000 : ℚ), (-19197363/625000000 : ℚ), (1968320269/250000000000 : ℚ), 2⟩,
    ⟨(34042857787/62500000000 : ℚ), (-436933921/10000000000 : ℚ), (1863111193/125000000000 : ℚ), 2⟩,
    ⟨(137535038991/250000000000 : ℚ), (-555374101/10000000000 : ℚ), (21388181697/1000000000000 : ℚ), 2⟩,
    ⟨(55536837383/100000000000 : ℚ), (-82924737/1250000000 : ℚ), (27359017007/1000000000000 : ℚ), 2⟩,
    ⟨(112071556591/200000000000 : ℚ), (-761813389/10000000000 : ℚ), (32849070781/1000000000000 : ℚ), 2⟩,
    ⟨(565096363417/1000000000000 : ℚ), (-851331059/10000000000 : ℚ), (4735790677/125000000000 : ℚ), 2⟩,
    ⟨(14239317489/25000000000 : ℚ), (-93257559/1000000000 : ℚ), (8499098309/200000000000 : ℚ), 2⟩,
    ⟨(573776007497/1000000000000 : ℚ), (-503047981/5000000000 : ℚ), (4669837137/100000000000 : ℚ), 2⟩,
    ⟨(577696161093/1000000000000 : ℚ), (-107237407/1000000000 : ℚ), (2020566837/40000000000 : ℚ), 2⟩,
    ⟨(581323716353/1000000000000 : ℚ), (-565916049/5000000000 : ℚ), (5395976961/100000000000 : ℚ), 2⟩,
    ⟨(584649934179/1000000000000 : ℚ), (-1184838827/10000000000 : ℚ), (11409990569/200000000000 : ℚ), 2⟩,
    ⟨(587666801421/1000000000000 : ℚ), (-615857509/5000000000 : ℚ), (7474701481/125000000000 : ℚ), 2⟩,
    ⟨(295183525091/500000000000 : ℚ), (-1272738001/10000000000 : ℚ), (7776739437/125000000000 : ℚ), 2⟩,
    ⟨(296372087663/500000000000 : ℚ), (-1308145567/10000000000 : ℚ), (1286169141/20000000000 : ℚ), 1⟩,
    ⟨(11895849003/20000000000 : ℚ), (-1338139251/10000000000 : ℚ), (66089378933/1000000000000 : ℚ), 1⟩,
    ⟨(29825347009/50000000000 : ℚ), (-1362887073/10000000000 : ℚ), (8445434699/125000000000 : ℚ), 1⟩,
    ⟨(597883515061/1000000000000 : ℚ), (-1382525793/10000000000 : ℚ), (68736290221/1000000000000 : ℚ), 1⟩,
    ⟨(299459429251/500000000000 : ℚ), (-174645341/1250000000 : ℚ), (69612165137/1000000000000 : ℚ), 1⟩,
    ⟨(599610476271/1000000000000 : ℚ), (-281375433/2000000000 : ℚ), (14038863349/200000000000 : ℚ), 1⟩,
    ⟨(2999783511/5000000000 : ℚ), (-282344279/2000000000 : ℚ), (70484865691/1000000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-353081579/2500000000 : ℚ), (70521159611/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (212852443473/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control81.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control81.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate81

namespace DiagonalRamsey.JointInheritedCertificate82
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(24374582183/62500000000 : ℚ), (51145662720021/10000000000 : ℚ), (-998174308006491/500000000000 : ℚ), 13⟩,
    ⟨(78073335063/200000000000 : ℚ), (5645895051603/10000000000 : ℚ), (-221575545917443/1000000000000 : ℚ), 10⟩,
    ⟨(48889062079/125000000000 : ℚ), (2011086262777/10000000000 : ℚ), (-79593794695467/1000000000000 : ℚ), 8⟩,
    ⟨(39222898213/100000000000 : ℚ), (1012042262333/10000000000 : ℚ), (-40476492427089/1000000000000 : ℚ), 7⟩,
    ⟨(24607090131/62500000000 : ℚ), (301138710889/5000000000 : ℚ), (-24378969595249/1000000000000 : ℚ), 6⟩,
    ⟨(197781150169/500000000000 : ℚ), (98933773779/2500000000 : ℚ), (-1623056990819/100000000000 : ℚ), 6⟩,
    ⟨(397771102793/1000000000000 : ℚ), (138777112029/5000000000 : ℚ), (-721511129073/62500000000 : ℚ), 5⟩,
    ⟨(50041816033/125000000000 : ℚ), (203853890843/10000000000 : ℚ), (-8604045492683/1000000000000 : ℚ), 5⟩,
    ⟨(403246401233/1000000000000 : ℚ), (38734565477/2500000000 : ℚ), (-103738377499/15625000000 : ℚ), 5⟩,
    ⟨(50812463343/125000000000 : ℚ), (120904510683/10000000000 : ℚ), (-5261731859881/1000000000000 : ℚ), 4⟩,
    ⟨(205043303649/500000000000 : ℚ), (19266830527/2000000000 : ℚ), (-2129417570029/500000000000 : ℚ), 4⟩,
    ⟨(413998461739/1000000000000 : ℚ), (78061308331/10000000000 : ℚ), (-3506133150147/1000000000000 : ℚ), 4⟩,
    ⟨(83645169213/200000000000 : ℚ), (8017077741/1250000000 : ℚ), (-365859217661/125000000000 : ℚ), 4⟩,
    ⟨(422758576139/1000000000000 : ℚ), (13326791137/2500000000 : ℚ), (-617907364349/250000000000 : ℚ), 3⟩,
    ⟨(53448216527/125000000000 : ℚ), (1398071803/312500000 : ℚ), (-263425448573/125000000000 : ℚ), 3⟩,
    ⟨(216347842627/500000000000 : ℚ), (1892846717/500000000 : ℚ), (-362297239537/200000000000 : ℚ), 3⟩,
    ⟨(438076124929/1000000000000 : ℚ), (16129614461/5000000000 : ℚ), (-1567832582141/1000000000000 : ℚ), 3⟩,
    ⟨(44371408929/100000000000 : ℚ), (13827062463/5000000000 : ℚ), (-68242324157/50000000000 : ℚ), 3⟩,
    ⟨(112398998997/250000000000 : ℚ), (23827688103/10000000000 : ℚ), (-1193978146867/1000000000000 : ℚ), 3⟩,
    ⟨(227853837497/500000000000 : ℚ), (4123984333/2000000000 : ℚ), (-104881206791/100000000000 : ℚ), 3⟩,
    ⟨(231017201369/500000000000 : ℚ), (17909312497/10000000000 : ℚ), (-462229132329/500000000000 : ℚ), 3⟩,
    ⟨(468560937579/1000000000000 : ℚ), (7801149213/5000000000 : ℚ), (-163427383817/200000000000 : ℚ), 2⟩,
    ⟨(475271556523/1000000000000 : ℚ), (13625945073/10000000000 : ℚ), (-723889239601/1000000000000 : ℚ), 2⟩,
    ⟨(4821500931/10000000000 : ℚ), (11922762167/10000000000 : ℚ), (-321186267991/500000000000 : ℚ), 2⟩,
    ⟨(244589988157/500000000000 : ℚ), (1305871791/1250000000 : ℚ), (-570712597911/1000000000000 : ℚ), 2⟩,
    ⟨(496344270561/1000000000000 : ℚ), (1832359679/2000000000 : ℚ), (-253697883203/500000000000 : ℚ), 2⟩,
    ⟨(503625716427/1000000000000 : ℚ), (8037428723/10000000000 : ℚ), (-90237790289/200000000000 : ℚ), 2⟩,
    ⟨(511006772273/1000000000000 : ℚ), (7049527881/10000000000 : ℚ), (-5013495243/12500000000 : ℚ), 2⟩,
    ⟨(518469656487/1000000000000 : ℚ), (6178083107/10000000000 : ℚ), (-356230248417/1000000000000 : ℚ), 2⟩,
    ⟨(525996390329/1000000000000 : ℚ), (2703265391/5000000000 : ℚ), (-315943395087/1000000000000 : ℚ), 2⟩,
    ⟨(533568841237/1000000000000 : ℚ), (2360539809/5000000000 : ℚ), (-4369291233/15625000000 : ℚ), 2⟩,
    ⟨(270584383257/500000000000 : ℚ), (2055091381/5000000000 : ℚ), (-246811435961/1000000000000 : ℚ), 2⟩,
    ⟨(274388928637/500000000000 : ℚ), (3564122613/10000000000 : ℚ), (-217056450269/1000000000000 : ℚ), 2⟩,
    ⟨(556377782551/1000000000000 : ℚ), (384335221/1250000000 : ℚ), (-3800286239/20000000000 : ℚ), 2⟩,
    ⟨(563950233459/1000000000000 : ℚ), (2634880341/10000000000 : ℚ), (-16538101871/100000000000 : ℚ), 2⟩,
    ⟨(571476967301/1000000000000 : ℚ), (1119382429/5000000000 : ℚ), (-142895394489/1000000000000 : ℚ), 2⟩,
    ⟨(115787970303/200000000000 : ℚ), (1881237539/10000000000 : ℚ), (-61166080799/500000000000 : ℚ), 2⟩,
    ⟨(586320907361/1000000000000 : ℚ), (62316697/400000000 : ℚ), (-25874071673/250000000000 : ℚ), 2⟩,
    ⟨(593602353227/1000000000000 : ℚ), (1265026799/10000000000 : ℚ), (-43109170549/500000000000 : ℚ), 2⟩,
    ⟨(300383323737/500000000000 : ℚ), (249824451/2500000000 : ℚ), (-70350671483/1000000000000 : ℚ), 2⟩,
    ⟨(1187102599/1953125000 : ℚ), (757895311/10000000000 : ℚ), (-55764225069/1000000000000 : ℚ), 2⟩,
    ⟨(122935013453/200000000000 : ℚ), (107670583/2000000000 : ℚ), (-42345904141/1000000000000 : ℚ), 2⟩,
    ⟨(621385686209/1000000000000 : ℚ), (338519607/10000000000 : ℚ), (-29996352533/1000000000000 : ℚ), 2⟩,
    ⟨(12558244421/20000000000 : ℚ), (31303033/2000000000 : ℚ), (-58212799/3125000000 : ℚ), 2⟩,
    ⟨(317119474397/500000000000 : ℚ), (-4653651/5000000000 : ℚ), (-4081985591/500000000000 : ℚ), 2⟩,
    ⟨(3201753139/5000000000 : ℚ), (-160392897/10000000000 : ℚ), (1464198429/1000000000000 : ℚ), 2⟩,
    ⟨(323116267249/500000000000 : ℚ), (-74502899/2500000000 : ℚ), (2579183437/250000000000 : ℚ), 2⟩,
    ⟨(651870498859/1000000000000 : ℚ), (-211640417/5000000000 : ℚ), (23058823/1250000000 : ℚ), 2⟩,
    ⟨(328625469267/500000000000 : ℚ), (-67148087/1250000000 : ℚ), (25902519157/1000000000000 : ℚ), 2⟩,
    ⟨(165590222893/250000000000 : ℚ), (-320295127/5000000000 : ℚ), (654501749/20000000000 : ℚ), 2⟩,
    ⟨(667188047649/1000000000000 : ℚ), (-734261503/10000000000 : ℚ), (9737990221/250000000000 : ℚ), 2⟩,
    ⟨(671720777723/1000000000000 : ℚ), (-409435633/5000000000 : ℚ), (44616079713/1000000000000 : ℚ), 2⟩,
    ⟨(675948162049/1000000000000 : ℚ), (-895011377/10000000000 : ℚ), (1554580347/31250000000 : ℚ), 1⟩,
    ⟨(67986001649/100000000000 : ℚ), (-240800347/2500000000 : ℚ), (54369130489/1000000000000 : ℚ), 1⟩,
    ⟨(170861729261/250000000000 : ℚ), (-1023896019/10000000000 : ℚ), (14626587451/250000000000 : ℚ), 1⟩,
    ⟨(137340044511/200000000000 : ℚ), (-1077491523/10000000000 : ℚ), (12435599879/200000000000 : ℚ), 1⟩,
    ⟨(172403023881/250000000000 : ℚ), (-1124331103/10000000000 : ℚ), (32700634227/500000000000 : ℚ), 1⟩,
    ⟨(138435104199/200000000000 : ℚ), (-1164709519/10000000000 : ℚ), (17047742847/250000000000 : ℚ), 1⟩,
    ⟨(13887686469/20000000000 : ℚ), (-1198876961/10000000000 : ℚ), (70559720979/1000000000000 : ℚ), 1⟩,
    ⟨(174058295423/250000000000 : ℚ), (-153380287/1250000000 : ℚ), (36259037671/500000000000 : ℚ), 1⟩,
    ⟨(348858820829/500000000000 : ℚ), (-78085983/625000000 : ℚ), (37037328793/500000000000 : ℚ), 1⟩,
    ⟨(174708531789/250000000000 : ℚ), (-316502737/2500000000 : ℚ), (75236253621/1000000000000 : ℚ), 1⟩,
    ⟨(699579948473/1000000000000 : ℚ), (-1277046803/10000000000 : ℚ), (76007887991/1000000000000 : ℚ), 1⟩,
    ⟨(34997665443/50000000000 : ℚ), (-1282548523/10000000000 : ℚ), (76392879969/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-32080887/250000000 : ℚ), (2388780167/31250000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (1700463157/10000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control82.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control82.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate82

namespace DiagonalRamsey.JointInheritedCertificate83
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(242676466027/500000000000 : ℚ), (6272509035781/1000000000 : ℚ), (-380815630569653/125000000000 : ℚ), 13⟩,
    ⟨(60716485143/125000000000 : ℚ), (3465363637273/5000000000 : ℚ), (-8453506387987/25000000000 : ℚ), 10⟩,
    ⟨(243244433201/500000000000 : ℚ), (2472354336443/10000000000 : ℚ), (-24293931724253/200000000000 : ℚ), 8⟩,
    ⟨(97524412837/200000000000 : ℚ), (155801806949/1250000000 : ℚ), (-61774935265623/1000000000000 : ℚ), 7⟩,
    ⟨(489128744519/1000000000000 : ℚ), (743281812503/10000000000 : ℚ), (-37209470949513/1000000000000 : ℚ), 6⟩,
    ⟨(491005277681/1000000000000 : ℚ), (489482174107/10000000000 : ℚ), (-24774755907803/1000000000000 : ℚ), 6⟩,
    ⟨(61655892867/125000000000 : ℚ), (86031718527/2500000000 : ℚ), (-17623247782531/1000000000000 : ℚ), 5⟩,
    ⟨(123962234859/250000000000 : ℚ), (253382734409/10000000000 : ℚ), (-821039787269/62500000000 : ℚ), 5⟩,
    ⟨(19952175969/40000000000 : ℚ), (193082170529/10000000000 : ℚ), (-5069235035437/500000000000 : ℚ), 5⟩,
    ⟨(502106402341/1000000000000 : ℚ), (151071255913/10000000000 : ℚ), (-8036523965837/1000000000000 : ℚ), 4⟩,
    ⟨(50574699397/100000000000 : ℚ), (120698047323/10000000000 : ℚ), (-1626576158329/250000000000 : ℚ), 4⟩,
    ⟨(509717403607/1000000000000 : ℚ), (24518708427/2500000000 : ℚ), (-5357922635931/1000000000000 : ℚ), 4⟩,
    ⟨(514008066187/1000000000000 : ℚ), (20201748877/2500000000 : ℚ), (-559281423729/125000000000 : ℚ), 4⟩,
    ⟨(51860864513/100000000000 : ℚ), (2694193327/400000000 : ℚ), (-944965734953/250000000000 : ℚ), 4⟩,
    ⟨(523508057237/1000000000000 : ℚ), (56692240583/10000000000 : ℚ), (-806100818811/250000000000 : ℚ), 3⟩,
    ⟨(105738899879/200000000000 : ℚ), (24057164227/5000000000 : ℚ), (-1386608163201/500000000000 : ℚ), 3⟩,
    ⟨(534155477011/1000000000000 : ℚ), (41124108183/10000000000 : ℚ), (-30022716457/12500000000 : ℚ), 3⟩,
    ⟨(4217795579/7812500000 : ℚ), (4420397687/1250000000 : ℚ), (-1046254913077/500000000000 : ℚ), 3⟩,
    ⟨(545847785037/1000000000000 : ℚ), (15283971171/5000000000 : ℚ), (-1832246362807/1000000000000 : ℚ), 3⟩,
    ⟨(552050947653/1000000000000 : ℚ), (26541101161/10000000000 : ℚ), (-1611236213663/1000000000000 : ℚ), 3⟩,
    ⟨(558472377997/1000000000000 : ℚ), (1156635039/500000000 : ℚ), (-711008251351/500000000000 : ℚ), 3⟩,
    ⟨(565096606281/1000000000000 : ℚ), (4045434991/2000000000 : ℚ), (-1258818335861/1000000000000 : ℚ), 2⟩,
    ⟨(571907674159/1000000000000 : ℚ), (8867174301/5000000000 : ℚ), (-558562784959/500000000000 : ℚ), 2⟩,
    ⟨(144722293293/250000000000 : ℚ), (3895766479/2500000000 : ℚ), (-993362095533/1000000000000 : ℚ), 2⟩,
    ⟨(586024284277/1000000000000 : ℚ), (85728783/62500000 : ℚ), (-884666569053/1000000000000 : ℚ), 2⟩,
    ⟨(593295818367/1000000000000 : ℚ), (12089330897/10000000000 : ℚ), (-788727719001/1000000000000 : ℚ), 2⟩,
    ⟨(600686257679/1000000000000 : ℚ), (1066421443/1000000000 : ℚ), (-87957787587/125000000000 : ℚ), 2⟩,
    ⟨(608177797997/1000000000000 : ℚ), (588186113/625000000 : ℚ), (-156980881303/250000000000 : ℚ), 2⟩,
    ⟨(123150478309/200000000000 : ℚ), (8304685649/10000000000 : ℚ), (-1400578919/2500000000 : ℚ), 2⟩,
    ⟨(623391790463/1000000000000 : ℚ), (3662333597/5000000000 : ℚ), (-4995202679/10000000000 : ℚ), 2⟩,
    ⟨(63107759077/100000000000 : ℚ), (3226841299/5000000000 : ℚ), (-27805990843/62500000000 : ℚ), 2⟩,
    ⟨(638791276701/1000000000000 : ℚ), (2838636179/5000000000 : ℚ), (-395604677791/1000000000000 : ℚ), 2⟩,
    ⟨(646514265309/1000000000000 : ℚ), (24916227/50000000 : ℚ), (-351007792949/1000000000000 : ℚ), 2⟩,
    ⟨(16355698781/25000000000 : ℚ), (1090318281/2500000000 : ℚ), (-15528037481/50000000000 : ℚ), 2⟩,
    ⟨(661913751547/1000000000000 : ℚ), (3802565129/10000000000 : ℚ), (-136898714967/500000000000 : ℚ), 2⟩,
    ⟨(133910630093/200000000000 : ℚ), (329960843/1000000000 : ℚ), (-120158509891/500000000000 : ℚ), 2⟩,
    ⟨(677127744013/1000000000000 : ℚ), (711489099/2500000000 : ℚ), (-13110840089/62500000000 : ℚ), 2⟩,
    ⟨(684619284331/1000000000000 : ℚ), (76126779/312500000 : ℚ), (-90933365809/500000000000 : ℚ), 2⟩,
    ⟨(692009723643/1000000000000 : ℚ), (2065111781/10000000000 : ℚ), (-156335963459/1000000000000 : ℚ), 2⟩,
    ⟨(699281257733/1000000000000 : ℚ), (345792163/2000000000 : ℚ), (-66476704317/500000000000 : ℚ), 2⟩,
    ⟨(353208184419/500000000000 : ℚ), (711993139/5000000000 : ℚ), (-111519696173/1000000000000 : ℚ), 2⟩,
    ⟨(713397867851/1000000000000 : ℚ), (1147033297/10000000000 : ℚ), (-45929889531/500000000000 : ℚ), 2⟩,
    ⟨(720208935729/1000000000000 : ℚ), (447671781/5000000000 : ℚ), (-73819560549/1000000000000 : ℚ), 2⟩,
    ⟨(726833164013/1000000000000 : ℚ), (666499793/10000000000 : ℚ), (-57263060327/1000000000000 : ℚ), 2⟩,
    ⟨(733254594357/1000000000000 : ℚ), (7162173/156250000 : ℚ), (-42070025937/1000000000000 : ℚ), 2⟩,
    ⟨(739457756973/1000000000000 : ℚ), (26911349/1000000000 : ℚ), (-28133912001/1000000000000 : ℚ), 2⟩,
    ⟨(745427707899/1000000000000 : ℚ), (97056873/10000000000 : ℚ), (-15360167117/1000000000000 : ℚ), 2⟩,
    ⟨(751150064999/1000000000000 : ℚ), (-14810859/2500000000 : ℚ), (-3664776529/1000000000000 : ℚ), 2⟩,
    ⟨(151322208523/200000000000 : ℚ), (-100535279/5000000000 : ℚ), (7026979497/1000000000000 : ℚ), 1⟩,
    ⟨(761797484773/1000000000000 : ℚ), (-329558501/10000000000 : ℚ), (8390792883/500000000000 : ℚ), 1⟩,
    ⟨(9583711211/12500000000 : ℚ), (-222854789/5000000000 : ℚ), (6414549501/250000000000 : ℚ), 1⟩,
    ⟨(771297475823/1000000000000 : ℚ), (-550409283/10000000000 : ℚ), (33709418133/1000000000000 : ℚ), 1⟩,
    ⟨(193897034601/250000000000 : ℚ), (-644439/10000000 : ℚ), (40981957303/1000000000000 : ℚ), 1⟩,
    ⟨(779558548041/1000000000000 : ℚ), (-728486863/10000000000 : ℚ), (47517202979/1000000000000 : ℚ), 1⟩,
    ⟨(783199139669/1000000000000 : ℚ), (-401578517/5000000000 : ℚ), (10670340823/200000000000 : ℚ), 1⟩,
    ⟨(157300228557/200000000000 : ℚ), (-868977607/10000000000 : ℚ), (11703516767/200000000000 : ℚ), 1⟩,
    ⟨(394728301287/500000000000 : ℚ), (-926407333/10000000000 : ℚ), (15760722739/250000000000 : ℚ), 1⟩,
    ⟨(396029199537/500000000000 : ℚ), (-195168263/2000000000 : ℚ), (66951897681/1000000000000 : ℚ), 1⟩,
    ⟨(79430026433/100000000000 : ℚ), (-63600987/625000000 : ℚ), (8783168607/125000000000 : ℚ), 1⟩,
    ⟨(796176797491/1000000000000 : ℚ), (-1052012127/10000000000 : ℚ), (18250167473/250000000000 : ℚ), 1⟩,
    ⟨(398841738913/500000000000 : ℚ), (-1079260083/10000000000 : ℚ), (75172137561/1000000000000 : ℚ), 1⟩,
    ⟨(99852084451/125000000000 : ℚ), (-21990809/200000000 : ℚ), (19197754081/250000000000 : ℚ), 1⟩,
    ⟨(799573660867/1000000000000 : ℚ), (-1112987087/10000000000 : ℚ), (15573132897/200000000000 : ℚ), 1⟩,
    ⟨(199988152489/250000000000 : ℚ), (-1119688421/10000000000 : ℚ), (78401612419/1000000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-56026253/500000000 : ℚ), (78468541591/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (119228373547/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control83.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control83.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate83

namespace DiagonalRamsey.JointInheritedCertificate91
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(27993809897/100000000000 : ℚ), (10318355600207/2500000000 : ℚ), (-1156581336032961/1000000000000 : ℚ), 13⟩,
    ⟨(140131675681/500000000000 : ℚ), (2275623913967/5000000000 : ℚ), (-128368023430621/1000000000000 : ℚ), 9⟩,
    ⟨(140456536293/500000000000 : ℚ), (1618536899291/10000000000 : ℚ), (-23055488857273/500000000000 : ℚ), 8⟩,
    ⟨(56377139481/200000000000 : ℚ), (812874300731/10000000000 : ℚ), (-4689669225739/200000000000 : ℚ), 7⟩,
    ⟨(7079472067/25000000000 : ℚ), (30166046379/625000000 : ℚ), (-112977486951/8000000000 : ℚ), 6⟩,
    ⟨(284789513017/1000000000000 : ℚ), (158178553337/5000000000 : ℚ), (-4700662317961/500000000000 : ℚ), 6⟩,
    ⟨(57342741653/200000000000 : ℚ), (221302998727/10000000000 : ℚ), (-6686155728427/1000000000000 : ℚ), 5⟩,
    ⟨(72236708217/250000000000 : ℚ), (81048540571/5000000000 : ℚ), (-1245665357357/250000000000 : ℚ), 5⟩,
    ⟨(58296701407/200000000000 : ℚ), (6142748209/500000000 : ℚ), (-961052991203/250000000000 : ℚ), 5⟩,
    ⟨(58863523939/200000000000 : ℚ), (19118459021/2000000000 : ℚ), (-3045974355241/1000000000000 : ℚ), 4⟩,
    ⟨(297442343223/1000000000000 : ℚ), (37970828393/5000000000 : ℚ), (-2464757106087/1000000000000 : ℚ), 4⟩,
    ⟨(60170029977/200000000000 : ℚ), (7669022753/1250000000 : ℚ), (-126779376923/62500000000 : ℚ), 4⟩,
    ⟨(304532829977/1000000000000 : ℚ), (25126917283/5000000000 : ℚ), (-26447605837/15625000000 : ℚ), 4⟩,
    ⟨(308481511601/1000000000000 : ℚ), (41637951183/10000000000 : ℚ), (-285730316853/200000000000 : ℚ), 3⟩,
    ⟨(78171670509/250000000000 : ℚ), (8708239821/2500000000 : ℚ), (-1217367927461/1000000000000 : ℚ), 3⟩,
    ⟨(158569105329/500000000000 : ℚ), (29378007721/10000000000 : ℚ), (-522819491771/500000000000 : ℚ), 3⟩,
    ⟨(64365074669/200000000000 : ℚ), (24948556069/10000000000 : ℚ), (-4520847589/5000000000 : ℚ), 3⟩,
    ⟨(326736878311/1000000000000 : ℚ), (852435087/400000000 : ℚ), (-786241587431/1000000000000 : ℚ), 3⟩,
    ⟨(2592663229/7812500000 : ℚ), (1829331751/1000000000 : ℚ), (-34345116491/50000000000 : ℚ), 3⟩,
    ⟨(67437014829/200000000000 : ℚ), (985476201/625000000 : ℚ), (-602435447193/1000000000000 : ℚ), 3⟩,
    ⟨(342696594393/1000000000000 : ℚ), (6818236551/5000000000 : ℚ), (-16562766869/31250000000 : ℚ), 3⟩,
    ⟨(174191088161/500000000000 : ℚ), (11825037227/10000000000 : ℚ), (-116858116113/250000000000 : ℚ), 2⟩,
    ⟨(70845624573/200000000000 : ℚ), (2055008289/2000000000 : ℚ), (-206496909343/500000000000 : ℚ), 2⟩,
    ⟨(180110175313/500000000000 : ℚ), (1788123087/2000000000 : ℚ), (-182668106691/500000000000 : ℚ), 2⟩,
    ⟨(366344423803/1000000000000 : ℚ), (15205641/19531250 : ℚ), (-161687371333/500000000000 : ℚ), 2⟩,
    ⟨(46573198621/125000000000 : ℚ), (6779798089/10000000000 : ℚ), (-71558362737/250000000000 : ℚ), 2⟩,
    ⟨(378928810607/1000000000000 : ℚ), (1475118237/2500000000 : ℚ), (-506397979/2000000000 : ℚ), 2⟩,
    ⟨(385358807343/1000000000000 : ℚ), (5128016969/10000000000 : ℚ), (-27960730429/125000000000 : ℚ), 2⟩,
    ⟨(24491255547/62500000000 : ℚ), (4446592031/10000000000 : ℚ), (-24651242511/125000000000 : ℚ), 2⟩,
    ⟨(99604248169/250000000000 : ℚ), (153724587/400000000 : ℚ), (-173368406387/1000000000000 : ℚ), 2⟩,
    ⟨(5062671537/12500000000 : ℚ), (3306712947/10000000000 : ℚ), (-75911944657/500000000000 : ℚ), 2⟩,
    ⟨(411634387503/1000000000000 : ℚ), (2828303021/10000000000 : ℚ), (-132292300779/1000000000000 : ℚ), 2⟩,
    ⟨(3267679973/7812500000 : ℚ), (120012823/500000000 : ℚ), (-57266578661/500000000000 : ℚ), 2⟩,
    ⟨(424883701087/1000000000000 : ℚ), (2016136699/10000000000 : ℚ), (-98341904183/1000000000000 : ℚ), 2⟩,
    ⟨(431480431371/1000000000000 : ℚ), (1670488877/10000000000 : ℚ), (-41771886223/500000000000 : ℚ), 2⟩,
    ⟨(1711083341/3906250000 : ℚ), (1358671081/10000000000 : ℚ), (-34994413381/500000000000 : ℚ), 2⟩,
    ⟨(3472957943/7812500000 : ℚ), (538359013/5000000000 : ℚ), (-11509589843/200000000000 : ℚ), 2⟩,
    ⟨(1409276917/3125000000 : ℚ), (12831723/156250000 : ℚ), (-46109559883/1000000000000 : ℚ), 2⟩,
    ⟨(457311835079/1000000000000 : ℚ), (294641867/5000000000 : ℚ), (-35576926227/1000000000000 : ℚ), 2⟩,
    ⟨(115888250061/250000000000 : ℚ), (378355369/10000000000 : ℚ), (-25865941337/1000000000000 : ℚ), 2⟩,
    ⟨(469677073421/1000000000000 : ℚ), (93130933/5000000000 : ℚ), (-8451640371/500000000000 : ℚ), 2⟩,
    ⟨(237834650591/500000000000 : ℚ), (694303/625000000 : ℚ), (-8624866933/1000000000000 : ℚ), 2⟩,
    ⟨(19260609909/40000000000 : ℚ), (-148751413/10000000000 : ℚ), (-243645577/250000000000 : ℚ), 2⟩,
    ⟨(243600414827/500000000000 : ℚ), (-29475531/1000000000 : ℚ), (6096811949/1000000000000 : ℚ), 2⟩,
    ⟨(246356174951/500000000000 : ℚ), (-214078761/5000000000 : ℚ), (3158147453/250000000000 : ℚ), 2⟩,
    ⟨(99607306147/200000000000 : ℚ), (-550055927/10000000000 : ℚ), (9335417043/500000000000 : ℚ), 2⟩,
    ⟨(62895068217/125000000000 : ℚ), (-661412631/10000000000 : ℚ), (12122547323/500000000000 : ℚ), 2⟩,
    ⟨(254036025351/500000000000 : ℚ), (-381535887/5000000000 : ℚ), (3673118833/125000000000 : ℚ), 2⟩,
    ⟨(512759213389/1000000000000 : ℚ), (-855774631/10000000000 : ℚ), (1066140331/31250000000 : ℚ), 2⟩,
    ⟨(517210742011/1000000000000 : ℚ), (-940172467/10000000000 : ℚ), (2403920309/62500000000 : ℚ), 2⟩,
    ⟨(260707956223/500000000000 : ℚ), (-63552343/625000000 : ℚ), (5305492573/125000000000 : ℚ), 2⟩,
    ⟨(52536459407/100000000000 : ℚ), (-1086272193/10000000000 : ℚ), (46078006237/1000000000000 : ℚ), 2⟩,
    ⟨(264523637081/500000000000 : ℚ), (-143614671/1250000000 : ℚ), (24690318063/500000000000 : ℚ), 2⟩,
    ⟨(66556885103/125000000000 : ℚ), (-301289729/2500000000 : ℚ), (52365616861/1000000000000 : ℚ), 2⟩,
    ⟨(8368434443/15625000000 : ℚ), (-156916713/1250000000 : ℚ), (55045004069/1000000000000 : ℚ), 2⟩,
    ⟨(134603479253/250000000000 : ℚ), (-25994691/200000000 : ℚ), (14357322797/250000000000 : ℚ), 2⟩,
    ⟨(540950591179/1000000000000 : ℚ), (-1338614473/10000000000 : ℚ), (29763777369/500000000000 : ℚ), 2⟩,
    ⟨(543183715783/1000000000000 : ℚ), (-1372190301/10000000000 : ℚ), (61347578891/1000000000000 : ℚ), 2⟩,
    ⟨(54510791103/100000000000 : ℚ), (-1400645711/10000000000 : ℚ), (62895961177/1000000000000 : ℚ), 2⟩,
    ⟨(546718541367/1000000000000 : ℚ), (-356033441/2500000000 : ℚ), (32089100539/500000000000 : ℚ), 2⟩,
    ⟨(548011726643/1000000000000 : ℚ), (-1442778997/10000000000 : ℚ), (13039754819/200000000000 : ℚ), 2⟩,
    ⟨(548984351461/1000000000000 : ℚ), (-1456679103/10000000000 : ℚ), (16490297821/250000000000 : ℚ), 2⟩,
    ⟨(109926814537/200000000000 : ℚ), (-732953121/5000000000 : ℚ), (66468046299/1000000000000 : ℚ), 2⟩,
    ⟨(549959325077/1000000000000 : ℚ), (-735253997/5000000000 : ℚ), (66721049081/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-1471082661/10000000000 : ℚ), (66752654621/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (241584772081/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control91.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control91.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate91

namespace DiagonalRamsey.JointInheritedCertificate92
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(314395875307/1000000000000 : ℚ), (10958619487421/2500000000 : ℚ), (-1379469919525473/1000000000000 : ℚ), 13⟩,
    ⟨(39342480771/125000000000 : ℚ), (2417677545259/5000000000 : ℚ), (-153106785031573/1000000000000 : ℚ), 10⟩,
    ⟨(78856739809/250000000000 : ℚ), (430122372861/2500000000 : ℚ), (-2749888451087/50000000000 : ℚ), 8⟩,
    ⟨(158227779597/500000000000 : ℚ), (172928596789/2000000000 : ℚ), (-5593555820131/200000000000 : ℚ), 7⟩,
    ⟨(63564633611/200000000000 : ℚ), (256887678951/5000000000 : ℚ), (-16844375901179/1000000000000 : ℚ), 6⟩,
    ⟨(319526491129/1000000000000 : ℚ), (168512274237/5000000000 : ℚ), (-11213778767199/1000000000000 : ℚ), 6⟩,
    ⟨(160780712481/500000000000 : ℚ), (235961386997/10000000000 : ℚ), (-797540367653/100000000000 : ℚ), 5⟩,
    ⟨(16196153361/50000000000 : ℚ), (34597458557/2000000000 : ℚ), (-1188734627011/200000000000 : ℚ), 5⟩,
    ⟨(653211457/2000000000 : ℚ), (65614402483/5000000000 : ℚ), (-4585886247809/1000000000000 : ℚ), 5⟩,
    ⟨(82400736509/250000000000 : ℚ), (20440731969/2000000000 : ℚ), (-72677639709/20000000000 : ℚ), 4⟩,
    ⟨(83226874817/250000000000 : ℚ), (8127160933/1000000000 : ℚ), (-2940728406547/1000000000000 : ℚ), 4⟩,
    ⟨(336511427239/1000000000000 : ℚ), (16430528927/2500000000 : ℚ), (-7563883547/3125000000 : ℚ), 4⟩,
    ⟨(340406047769/1000000000000 : ℚ), (13471660703/2500000000 : ℚ), (-2019989468707/1000000000000 : ℚ), 4⟩,
    ⟨(172290989189/500000000000 : ℚ), (44693082619/10000000000 : ℚ), (-852607220797/500000000000 : ℚ), 3⟩,
    ⟨(174514579441/500000000000 : ℚ), (9356874209/2500000000 : ℚ), (-726658572263/500000000000 : ℚ), 3⟩,
    ⟨(70747375127/200000000000 : ℚ), (15799932807/5000000000 : ℚ), (-39018914383/31250000000 : ℚ), 3⟩,
    ⟨(358693787333/1000000000000 : ℚ), (2686503093/1000000000 : ℚ), (-67499512197/62500000000 : ℚ), 3⟩,
    ⟨(363887952343/1000000000000 : ℚ), (11487177697/5000000000 : ℚ), (-37578611327/40000000000 : ℚ), 3⟩,
    ⟨(369306857467/1000000000000 : ℚ), (4936296073/2500000000 : ℚ), (-410558525641/500000000000 : ℚ), 3⟩,
    ⟨(187468724043/500000000000 : ℚ), (6816399/4000000 : ℚ), (-720514851599/1000000000000 : ℚ), 3⟩,
    ⟨(1487367811/3906250000 : ℚ), (14758181741/10000000000 : ℚ), (-63428023213/100000000000 : ℚ), 3⟩,
    ⟨(386778950179/1000000000000 : ℚ), (1281701647/1000000000 : ℚ), (-279900961021/500000000000 : ℚ), 3⟩,
    ⟨(392961334437/1000000000000 : ℚ), (2788851903/2500000000 : ℚ), (-19801441397/40000000000 : ℚ), 2⟩,
    ⟨(399298418483/1000000000000 : ℚ), (4862226397/5000000000 : ℚ), (-109591115719/250000000000 : ℚ), 2⟩,
    ⟨(405774935729/1000000000000 : ℚ), (26516411/31250000 : ℚ), (-388492866363/1000000000000 : ℚ), 2⟩,
    ⟨(16495011347/40000000000 : ℚ), (1851644201/2500000000 : ℚ), (-344376092187/1000000000000 : ℚ), 2⟩,
    ⟨(419083561507/1000000000000 : ℚ), (3231576319/5000000000 : ℚ), (-76290725387/250000000000 : ℚ), 2⟩,
    ⟨(85176721679/200000000000 : ℚ), (5634363919/10000000000 : ℚ), (-270154498551/1000000000000 : ℚ), 2⟩,
    ⟨(432759042431/1000000000000 : ℚ), (4903279277/10000000000 : ℚ), (-238773054439/1000000000000 : ℚ), 2⟩,
    ⟨(439693300091/1000000000000 : ℚ), (425590319/1000000000 : ℚ), (-42107513261/200000000000 : ℚ), 2⟩,
    ⟨(223334838071/500000000000 : ℚ), (3680598049/10000000000 : ℚ), (-7401806323/40000000000 : ℚ), 2⟩,
    ⟨(453671363883/1000000000000 : ℚ), (1583816789/5000000000 : ℚ), (-161956465999/1000000000000 : ℚ), 2⟩,
    ⟨(230340747817/500000000000 : ℚ), (2708832621/10000000000 : ℚ), (-70492058953/500000000000 : ℚ), 2⟩,
    ⟨(3741465467/8000000000 : ℚ), (2297290557/10000000000 : ℚ), (-121883580759/1000000000000 : ℚ), 2⟩,
    ⟨(237329779713/500000000000 : ℚ), (1927151439/10000000000 : ℚ), (-6527864679/62500000000 : ℚ), 2⟩,
    ⟨(481593817087/1000000000000 : ℚ), (1593428203/10000000000 : ℚ), (-44245735061/500000000000 : ℚ), 2⟩,
    ⟨(244234625561/500000000000 : ℚ), (322964341/2500000000 : ℚ), (-14773179281/200000000000 : ℚ), 2⟩,
    ⟨(49526929801/100000000000 : ℚ), (101878091/1000000000 : ℚ), (-60435435149/1000000000000 : ℚ), 2⟩,
    ⟨(250988787921/500000000000 : ℚ), (771049771/10000000000 : ℚ), (-48084110629/1000000000000 : ℚ), 2⟩,
    ⟨(508577923789/1000000000000 : ℚ), (54594453/1000000000 : ℚ), (-9177750649/250000000000 : ℚ), 2⟩,
    ⟨(257527220517/500000000000 : ℚ), (42638747/1250000000 : ℚ), (-2622804993/100000000000 : ℚ), 2⟩,
    ⟨(521391525081/1000000000000 : ℚ), (77250423/5000000000 : ℚ), (-16558220311/1000000000000 : ℚ), 2⟩,
    ⟨(263786954669/500000000000 : ℚ), (-15663349/10000000000 : ℚ), (-7633977643/1000000000000 : ℚ), 2⟩,
    ⟨(266793349951/500000000000 : ℚ), (-6837443/400000000 : ℚ), (37750361/62500000000 : ℚ), 2⟩,
    ⟨(539415411431/1000000000000 : ℚ), (-312675447/10000000000 : ℚ), (4103968359/500000000000 : ℚ), 2⟩,
    ⟨(545046002051/1000000000000 : ℚ), (-442070889/10000000000 : ℚ), (15223822389/1000000000000 : ℚ), 2⟩,
    ⟨(275232453587/500000000000 : ℚ), (-560165637/10000000000 : ℚ), (10846126371/500000000000 : ℚ), 2⟩,
    ⟨(69457384023/125000000000 : ℚ), (-20871119/312500000 : ℚ), (13824534533/500000000000 : ℚ), 2⟩,
    ⟨(560615983883/1000000000000 : ℚ), (-383003287/5000000000 : ℚ), (16562966949/500000000000 : ℚ), 2⟩,
    ⟨(113064740127/200000000000 : ℚ), (-855265943/10000000000 : ℚ), (19075410787/500000000000 : ℚ), 2⟩,
    ⟨(569770881139/1000000000000 : ℚ), (-187255299/2000000000 : ℚ), (5343554749/125000000000 : ℚ), 2⟩,
    ⟨(143486702937/250000000000 : ℚ), (-504792707/5000000000 : ℚ), (9388116593/200000000000 : ℚ), 2⟩,
    ⟨(577841432279/1000000000000 : ℚ), (-537836531/5000000000 : ℚ), (5074646211/100000000000 : ℚ), 2⟩,
    ⟨(581445360249/1000000000000 : ℚ), (-567480157/5000000000 : ℚ), (27091477927/500000000000 : ℚ), 2⟩,
    ⟨(292374956741/500000000000 : ℚ), (-1187814833/10000000000 : ℚ), (57264851557/1000000000000 : ℚ), 2⟩,
    ⟨(293873565509/500000000000 : ℚ), (-617278211/5000000000 : ℚ), (30002521199/500000000000 : ℚ), 2⟩,
    ⟨(295214896149/500000000000 : ℚ), (-1275461599/10000000000 : ℚ), (15603674963/250000000000 : ℚ), 2⟩,
    ⟨(148197858639/250000000000 : ℚ), (-327691867/2500000000 : ℚ), (8062927473/125000000000 : ℚ), 2⟩,
    ⟨(594826368389/1000000000000 : ℚ), (-670337493/5000000000 : ℚ), (66279346849/1000000000000 : ℚ), 2⟩,
    ⟨(596529691463/1000000000000 : ℚ), (-1365351697/10000000000 : ℚ), (33874639871/500000000000 : ℚ), 2⟩,
    ⟨(149474325081/250000000000 : ℚ), (-55397359/400000000 : ℚ), (34459378733/500000000000 : ℚ), 2⟩,
    ⟨(299462950141/500000000000 : ℚ), (-1399528837/10000000000 : ℚ), (69792129991/1000000000000 : ℚ), 2⟩,
    ⟨(599613013349/1000000000000 : ℚ), (-704607673/5000000000 : ℚ), (14074522521/200000000000 : ℚ), 2⟩,
    ⟨(599956984211/1000000000000 : ℚ), (-88377853/625000000 : ℚ), (14132465367/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-141464883/1000000000 : ℚ), (17674629111/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (110980711913/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control92.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control92.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate92

namespace DiagonalRamsey.JointInheritedCertificate93
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(392056189997/1000000000000 : ℚ), (3169058269667/625000000 : ℚ), (-1989595428617627/1000000000000 : ℚ), 13⟩,
    ⟨(78485413187/200000000000 : ℚ), (699698930491/1250000000 : ℚ), (-110413208526627/500000000000 : ℚ), 10⟩,
    ⟨(393167924339/1000000000000 : ℚ), (997035591497/5000000000 : ℚ), (-79324981895201/1000000000000 : ℚ), 8⟩,
    ⟨(78855396083/200000000000 : ℚ), (1003598825367/10000000000 : ℚ), (-10085000474407/250000000000 : ℚ), 7⟩,
    ⟨(24734472647/62500000000 : ℚ), (597333528239/10000000000 : ℚ), (-4859384377347/200000000000 : ℚ), 6⟩,
    ⟨(1590352471/4000000000 : ℚ), (392544671897/10000000000 : ℚ), (-1617606978423/100000000000 : ℚ), 6⟩,
    ⟨(399782222189/1000000000000 : ℚ), (275359794239/10000000000 : ℚ), (-1438188794687/125000000000 : ℚ), 5⟩,
    ⟨(402328589877/1000000000000 : ℚ), (202275201573/10000000000 : ℚ), (-8575299654669/1000000000000 : ℚ), 5⟩,
    ⟨(405221086393/1000000000000 : ℚ), (153764135183/10000000000 : ℚ), (-6617129915113/1000000000000 : ℚ), 5⟩,
    ⟨(204226371729/500000000000 : ℚ), (120008637717/10000000000 : ℚ), (-2622118045979/500000000000 : ℚ), 4⟩,
    ⟨(25750985983/62500000000 : ℚ), (47818287739/5000000000 : ℚ), (-4244700390901/1000000000000 : ℚ), 4⟩,
    ⟨(207950799773/500000000000 : ℚ), (38754546999/5000000000 : ℚ), (-109203476129/31250000000 : ℚ), 4⟩,
    ⟨(210050426811/500000000000 : ℚ), (31846719513/5000000000 : ℚ), (-1458588227141/500000000000 : ℚ), 4⟩,
    ⟨(84920684317/200000000000 : ℚ), (52947324707/10000000000 : ℚ), (-2463436125679/1000000000000 : ℚ), 4⟩,
    ⟨(85879691271/200000000000 : ℚ), (8888636439/2000000000 : ℚ), (-2100405486521/1000000000000 : ℚ), 3⟩,
    ⟨(3394331299/7812500000 : ℚ), (18806381701/5000000000 : ℚ), (-1805451736849/1000000000000 : ℚ), 3⟩,
    ⟨(439819042929/1000000000000 : ℚ), (8013905197/2500000000 : ℚ), (-1562584749279/1000000000000 : ℚ), 3⟩,
    ⟨(445419490629/1000000000000 : ℚ), (6870784331/2500000000 : ℚ), (-340061943793/250000000000 : ℚ), 3⟩,
    ⟨(451262257401/1000000000000 : ℚ), (11841582037/5000000000 : ℚ), (-297480061231/250000000000 : ℚ), 3⟩,
    ⟨(457333267509/1000000000000 : ℚ), (2562129121/1250000000 : ℚ), (-1045208596499/1000000000000 : ℚ), 3⟩,
    ⟨(231808947679/500000000000 : ℚ), (8902117259/5000000000 : ℚ), (-18424792161/20000000000 : ℚ), 3⟩,
    ⟨(470101000729/1000000000000 : ℚ), (15511974587/10000000000 : ℚ), (-12722600653/15625000000 : ℚ), 3⟩,
    ⟨(476766965253/1000000000000 : ℚ), (13547913383/10000000000 : ℚ), (-90160060599/125000000000 : ℚ), 2⟩,
    ⟨(241799865019/500000000000 : ℚ), (11855025697/10000000000 : ℚ), (-128001423423/200000000000 : ℚ), 2⟩,
    ⟨(98116566871/200000000000 : ℚ), (5193951621/5000000000 : ℚ), (-568558589951/1000000000000 : ℚ), 2⟩,
    ⟨(248849727647/500000000000 : ℚ), (569378437/625000000 : ℚ), (-505426463181/1000000000000 : ℚ), 2⟩,
    ⟨(126233112073/250000000000 : ℚ), (1997977369/2500000000 : ℚ), (-449381893717/1000000000000 : ℚ), 2⟩,
    ⟨(102452877687/200000000000 : ℚ), (7009318211/10000000000 : ℚ), (-399415828657/1000000000000 : ℚ), 2⟩,
    ⟨(519677612437/1000000000000 : ℚ), (767802721/1250000000 : ℚ), (-88673403527/250000000000 : ℚ), 2⟩,
    ⟨(527154261193/1000000000000 : ℚ), (5374781619/10000000000 : ℚ), (-314520183369/1000000000000 : ℚ), 2⟩,
    ⟨(1336690807/2500000000 : ℚ), (4692709/10000000 : ℚ), (-8697284167/31250000000 : ℚ), 2⟩,
    ⟨(542225675953/1000000000000 : ℚ), (1021185359/2500000000 : ℚ), (-245581451139/1000000000000 : ℚ), 2⟩,
    ⟨(687230167/1250000000 : ℚ), (11066347/31250000 : ℚ), (-107954652283/500000000000 : ℚ), 2⟩,
    ⟨(557333486753/1000000000000 : ℚ), (763504549/2500000000 : ℚ), (-188942445471/1000000000000 : ℚ), 2⟩,
    ⟨(14121388709/25000000000 : ℚ), (2616171067/10000000000 : ℚ), (-164377848983/1000000000000 : ℚ), 2⟩,
    ⟨(143083049279/250000000000 : ℚ), (444355249/2000000000 : ℚ), (-141955162941/1000000000000 : ℚ), 2⟩,
    ⟨(289872710559/500000000000 : ℚ), (1865769441/10000000000 : ℚ), (-121449804481/1000000000000 : ℚ), 2⟩,
    ⟨(587077361261/1000000000000 : ℚ), (308759551/2000000000 : ℚ), (-102667326457/1000000000000 : ℚ), 2⟩,
    ⟨(594310354259/1000000000000 : ℚ), (313026757/2500000000 : ℚ), (-2135969871/25000000000 : ℚ), 2⟩,
    ⟨(300713487599/500000000000 : ℚ), (493724611/5000000000 : ℚ), (-17404243427/250000000000 : ℚ), 2⟩,
    ⟨(121682015903/200000000000 : ℚ), (747005909/10000000000 : ℚ), (-55073161939/1000000000000 : ℚ), 2⟩,
    ⟨(6152428443/10000000000 : ℚ), (528324787/10000000000 : ℚ), (-41694558453/1000000000000 : ℚ), 2⟩,
    ⟨(77738601103/125000000000 : ℚ), (329266769/10000000000 : ℚ), (-5876411227/200000000000 : ℚ), 2⟩,
    ⟨(125678382839/200000000000 : ℚ), (36990433/2500000000 : ℚ), (-282006091/15625000000 : ℚ), 2⟩,
    ⟨(158669135511/250000000000 : ℚ), (-2153581/1250000000 : ℚ), (-761657277/100000000000 : ℚ), 2⟩,
    ⟨(640747552153/1000000000000 : ℚ), (-167742199/10000000000 : ℚ), (15851407/8000000000 : ℚ), 2⟩,
    ⟨(25863612757/40000000000 : ℚ), (-304842701/10000000000 : ℚ), (10805803367/1000000000000 : ℚ), 2⟩,
    ⟨(20380961457/31250000000 : ℚ), (-85928463/2000000000 : ℚ), (945494059/50000000000 : ℚ), 2⟩,
    ⟨(657535403281/1000000000000 : ℚ), (-271560311/5000000000 : ℚ), (3292615067/125000000000 : ℚ), 2⟩,
    ⟨(331305676599/500000000000 : ℚ), (-129228169/2000000000 : ℚ), (33140821649/1000000000000 : ℚ), 2⟩,
    ⟨(2607056203/3906250000 : ℚ), (-369731843/5000000000 : ℚ), (19673361467/500000000000 : ℚ), 2⟩,
    ⟨(671908955931/1000000000000 : ℚ), (-411879573/5000000000 : ℚ), (2249575761/50000000000 : ℚ), 2⟩,
    ⟨(676108210007/1000000000000 : ℚ), (-449808321/5000000000 : ℚ), (12526071197/250000000000 : ℚ), 2⟩,
    ⟨(27199761353/40000000000 : ℚ), (-241888413/2500000000 : ℚ), (427427287/7812500000 : ℚ), 2⟩,
    ⟨(136711413219/200000000000 : ℚ), (-1028023121/10000000000 : ℚ), (58833302593/1000000000000 : ℚ), 2⟩,
    ⟨(17169718079/25000000000 : ℚ), (-540709891/5000000000 : ℚ), (62491860677/1000000000000 : ℚ), 2⟩,
    ⟨(172420304919/250000000000 : ℚ), (-564042773/5000000000 : ℚ), (13140707307/200000000000 : ℚ), 2⟩,
    ⟨(173056896841/250000000000 : ℚ), (-292078519/2500000000 : ℚ), (17120781959/250000000000 : ℚ), 2⟩,
    ⟨(694421691803/1000000000000 : ℚ), (-240470929/2000000000 : ℚ), (70843233959/1000000000000 : ℚ), 2⟩,
    ⟨(348129123601/500000000000 : ℚ), (-615207679/5000000000 : ℚ), (72794401537/1000000000000 : ℚ), 1⟩,
    ⟨(348866414569/500000000000 : ℚ), (-313166451/2500000000 : ℚ), (37172622317/500000000000 : ℚ), 1⟩,
    ⟨(349420942607/500000000000 : ℚ), (-253847839/2000000000 : ℚ), (7550254231/100000000000 : ℚ), 1⟩,
    ⟨(349791371809/500000000000 : ℚ), (-160029253/1250000000 : ℚ), (7627131389/100000000000 : ℚ), 1⟩,
    ⟨(174988404889/250000000000 : ℚ), (-1285715289/10000000000 : ℚ), (76654875353/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-321599923/2500000000 : ℚ), (76702781977/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (399999/1000000 : ℚ)
  x := (89039013743/500000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control93.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control93.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate93

namespace DiagonalRamsey.JointInheritedCertificate99
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1559763963/6250000000 : ℚ), (1209053834617/1250000000 : ℚ), (-121105957090559/500000000000 : ℚ), 11⟩,
    ⟨(250767433641/1000000000000 : ℚ), (1048263935469/10000000000 : ℚ), (-26794102279411/1000000000000 : ℚ), 8⟩,
    ⟨(253166226033/1000000000000 : ℚ), (72646708381/2000000000 : ℚ), (-9560684681721/1000000000000 : ℚ), 6⟩,
    ⟨(128367754787/500000000000 : ℚ), (88356444689/5000000000 : ℚ), (-4812702111347/1000000000000 : ℚ), 5⟩,
    ⟨(261440910111/1000000000000 : ℚ), (50591620301/5000000000 : ℚ), (-2858784811229/1000000000000 : ℚ), 4⟩,
    ⟨(267237112067/1000000000000 : ℚ), (6371017471/1000000000 : ℚ), (-1869680275049/1000000000000 : ℚ), 4⟩,
    ⟨(137034147423/500000000000 : ℚ), (10664870501/2500000000 : ℚ), (-260148322489/200000000000 : ℚ), 4⟩,
    ⟨(11274746817/40000000000 : ℚ), (14898847023/5000000000 : ℚ), (-471852699429/500000000000 : ℚ), 3⟩,
    ⟨(290563116923/1000000000000 : ℚ), (21446755577/10000000000 : ℚ), (-352496167383/500000000000 : ℚ), 3⟩,
    ⟨(300067902067/1000000000000 : ℚ), (1576815179/1000000000 : ℚ), (-53749446621/100000000000 : ℚ), 3⟩,
    ⟨(310291489581/1000000000000 : ℚ), (11763042067/10000000000 : ℚ), (-103850580883/250000000000 : ℚ), 3⟩,
    ⟨(321135420727/1000000000000 : ℚ), (8852815163/10000000000 : ℚ), (-323616613769/1000000000000 : ℚ), 2⟩,
    ⟨(166247631261/500000000000 : ℚ), (6684818497/10000000000 : ℚ), (-126414743747/500000000000 : ℚ), 2⟩,
    ⟨(344261613477/1000000000000 : ℚ), (5035088753/10000000000 : ℚ), (-3078961739/15625000000 : ℚ), 2⟩,
    ⟨(356321157203/1000000000000 : ℚ), (3756483697/10000000000 : ℚ), (-30459848017/200000000000 : ℚ), 2⟩,
    ⟨(3685577537/10000000000 : ℚ), (2749548383/10000000000 : ℚ), (-28957165767/250000000000 : ℚ), 2⟩,
    ⟨(76170711571/200000000000 : ℚ), (48635563/250000000 : ℚ), (-4285779791/50000000000 : ℚ), 2⟩,
    ⟨(24568134647/62500000000 : ℚ), (32385871/250000000 : ℚ), (-60575986983/1000000000000 : ℚ), 2⟩,
    ⟨(202574849039/500000000000 : ℚ), (95570581/1250000000 : ℚ), (-19698700717/500000000000 : ℚ), 2⟩,
    ⟨(208458024517/500000000000 : ℚ), (163609739/5000000000 : ℚ), (-10713971751/500000000000 : ℚ), 2⟩,
    ⟨(107068972707/250000000000 : ℚ), (-35557167/10000000000 : ℚ), (-6102070969/1000000000000 : ℚ), 2⟩,
    ⟨(219559910987/500000000000 : ℚ), (-84492781/2500000000 : ℚ), (280402793/40000000000 : ℚ), 2⟩,
    ⟨(28083963093/62500000000 : ℚ), (-295386973/5000000000 : ℚ), (3647587801/200000000000 : ℚ), 2⟩,
    ⟨(57356024329/125000000000 : ℚ), (-401084337/5000000000 : ℚ), (6958906601/250000000000 : ℚ), 2⟩,
    ⟨(46754264113/100000000000 : ℚ), (-978451597/10000000000 : ℚ), (1799993613/50000000000 : ℚ), 2⟩,
    ⟨(475343016709/1000000000000 : ℚ), (-562236171/5000000000 : ℚ), (2680201021/62500000000 : ℚ), 2⟩,
    ⟨(7533971867/15625000000 : ℚ), (-621983453/5000000000 : ℚ), (48603700011/1000000000000 : ℚ), 2⟩,
    ⟨(121992600361/250000000000 : ℚ), (-267960051/2000000000 : ℚ), (53252075233/1000000000000 : ℚ), 2⟩,
    ⟨(492675801981/1000000000000 : ℚ), (-707071723/5000000000 : ℚ), (28448588409/500000000000 : ℚ), 2⟩,
    ⟨(248122542761/500000000000 : ℚ), (-1468602313/10000000000 : ℚ), (7448738023/125000000000 : ℚ), 2⟩,
    ⟨(249321938957/500000000000 : ℚ), (-1504309409/10000000000 : ℚ), (12273223987/200000000000 : ℚ), 2⟩,
    ⟨(19993963099/40000000000 : ℚ), (-190248389/1250000000 : ℚ), (31124335637/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-762094337/5000000000 : ℚ), (12471746557/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (134968711557/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control99.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control99.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate99

namespace DiagonalRamsey.JointInheritedCertificate100
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(262209580093/1000000000000 : ℚ), (4936812648171/5000000000 : ℚ), (-64940964440603/250000000000 : ℚ), 11⟩,
    ⟨(263450163357/1000000000000 : ℚ), (267617599577/2500000000 : ℚ), (-28735820857717/1000000000000 : ℚ), 8⟩,
    ⟨(265919382389/1000000000000 : ℚ), (7422453473/200000000 : ℚ), (-2563400656191/250000000000 : ℚ), 6⟩,
    ⟨(269593457261/1000000000000 : ℚ), (36131916489/2000000000 : ℚ), (-2580792184037/500000000000 : ℚ), 5⟩,
    ⟨(274437004623/1000000000000 : ℚ), (12938730163/1250000000 : ℚ), (-383264043271/125000000000 : ℚ), 5⟩,
    ⟨(140201689233/500000000000 : ℚ), (32609520567/5000000000 : ℚ), (-1002688843781/500000000000 : ℚ), 4⟩,
    ⟨(287435119349/1000000000000 : ℚ), (21850170593/5000000000 : ℚ), (-1395265896021/1000000000000 : ℚ), 4⟩,
    ⟨(147732253881/500000000000 : ℚ), (7636783217/2500000000 : ℚ), (-1012421817029/1000000000000 : ℚ), 3⟩,
    ⟨(304414216307/1000000000000 : ℚ), (5500876899/2500000000 : ℚ), (-378242417319/500000000000 : ℚ), 3⟩,
    ⟨(314198054397/1000000000000 : ℚ), (16191710587/10000000000 : ℚ), (-288466519567/500000000000 : ℚ), 3⟩,
    ⟨(324721798323/1000000000000 : ℚ), (2418272393/2000000000 : ℚ), (-111521552607/250000000000 : ℚ), 3⟩,
    ⟨(335884098679/1000000000000 : ℚ), (9111216671/10000000000 : ℚ), (-173875118319/500000000000 : ℚ), 2⟩,
    ⟨(34757745641/100000000000 : ℚ), (172270209/250000000 : ℚ), (-67985489857/250000000000 : ℚ), 2⟩,
    ⟨(359689258089/1000000000000 : ℚ), (2600563791/5000000000 : ℚ), (-21223914603/100000000000 : ℚ), 2⟩,
    ⟨(93025715111/250000000000 : ℚ), (3891654633/10000000000 : ℚ), (-164362036911/1000000000000 : ℚ), 2⟩,
    ⟨(3846987137/10000000000 : ℚ), (2860605303/10000000000 : ℚ), (-31343285847/250000000000 : ℚ), 2⟩,
    ⟨(397355512903/1000000000000 : ℚ), (2037471819/10000000000 : ℚ), (-11650671581/125000000000 : ℚ), 2⟩,
    ⟨(409951366159/1000000000000 : ℚ), (274478469/2000000000 : ℚ), (-4148314059/62500000000 : ℚ), 2⟩,
    ⟨(211182484257/500000000000 : ℚ), (414734917/5000000000 : ℚ), (-8757778911/200000000000 : ℚ), 2⟩,
    ⟨(434476770193/1000000000000 : ℚ), (76491297/2000000000 : ℚ), (-24645161757/1000000000000 : ℚ), 2⟩,
    ⟨(111542531981/250000000000 : ℚ), (237981/200000000 : ℚ), (-8333848539/1000000000000 : ℚ), 2⟩,
    ⟨(11433310707/25000000000 : ℚ), (-296789209/10000000000 : ℚ), (5607498363/1000000000000 : ℚ), 2⟩,
    ⟨(233928086103/500000000000 : ℚ), (-277327361/5000000000 : ℚ), (4383410257/250000000000 : ℚ), 2⟩,
    ⟨(59705001287/125000000000 : ℚ), (-770130529/10000000000 : ℚ), (2771846629/100000000000 : ℚ), 2⟩,
    ⟨(486589718841/1000000000000 : ℚ), (-189938649/2000000000 : ℚ), (36374291047/1000000000000 : ℚ), 2⟩,
    ⟨(98923821451/200000000000 : ℚ), (-1098334223/10000000000 : ℚ), (21832972091/500000000000 : ℚ), 2⟩,
    ⟨(501650848137/1000000000000 : ℚ), (-12199007/100000000 : ℚ), (6215143789/125000000000 : ℚ), 2⟩,
    ⟨(25380861099/50000000000 : ℚ), (-164668051/1250000000 : ℚ), (54638243021/1000000000000 : ℚ), 2⟩,
    ⟨(256230384671/500000000000 : ℚ), (-174112893/1250000000 : ℚ), (11698381943/200000000000 : ℚ), 2⟩,
    ⟨(258067422107/500000000000 : ℚ), (-1448232731/10000000000 : ℚ), (12267489471/200000000000 : ℚ), 2⟩,
    ⟨(259302031623/500000000000 : ℚ), (-1484501327/10000000000 : ℚ), (12642771777/200000000000 : ℚ), 2⟩,
    ⟨(51984464651/100000000000 : ℚ), (-375613547/2500000000 : ℚ), (64146013341/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-376172471/2500000000 : ℚ), (12852450429/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (16412791539/62500000000 : ℚ)
  μ := (13/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control100.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control100.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate100

namespace DiagonalRamsey.JointInheritedCertificate101
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140845539139/500000000000 : ℚ), (20466488240333/5000000000 : ℚ), (-57710496938609/50000000000 : ℚ), 13⟩,
    ⟨(35251777431/125000000000 : ℚ), (4514054327147/10000000000 : ℚ), (-25620976685153/200000000000 : ℚ), 10⟩,
    ⟨(17666232707/62500000000 : ℚ), (50171815961/312500000 : ℚ), (-23008246648989/500000000000 : ℚ), 8⟩,
    ⟨(283626034797/1000000000000 : ℚ), (806441880347/10000000000 : ℚ), (-182815019009/7812500000 : ℚ), 7⟩,
    ⟨(284910825971/1000000000000 : ℚ), (478915299051/10000000000 : ℚ), (-2818655149903/200000000000 : ℚ), 6⟩,
    ⟨(286511001661/1000000000000 : ℚ), (78490009433/2500000000 : ℚ), (-2345520859751/250000000000 : ℚ), 6⟩,
    ⟨(36052838363/125000000000 : ℚ), (4393336743/200000000 : ℚ), (-6672469175247/1000000000000 : ℚ), 5⟩,
    ⟨(145320668117/500000000000 : ℚ), (6437174899/400000000 : ℚ), (-1243113387019/250000000000 : ℚ), 5⟩,
    ⟨(146580772389/500000000000 : ℚ), (121993590601/10000000000 : ℚ), (-1918161371709/500000000000 : ℚ), 5⟩,
    ⟨(147988630567/500000000000 : ℚ), (47470252527/5000000000 : ℚ), (-3039704979739/1000000000000 : ℚ), 4⟩,
    ⟨(149540850997/500000000000 : ℚ), (7543836151/1000000000 : ℚ), (-2459661564941/1000000000000 : ℚ), 4⟩,
    ⟨(302467388489/1000000000000 : ℚ), (48765649/8000000 : ℚ), (-253031292501/125000000000 : ℚ), 4⟩,
    ⟨(153063082101/500000000000 : ℚ), (49939308691/10000000000 : ℚ), (-1689096337571/1000000000000 : ℚ), 4⟩,
    ⟨(38756151853/125000000000 : ℚ), (41384595461/10000000000 : ℚ), (-142562273271/100000000000 : ℚ), 4⟩,
    ⟨(15711354469/50000000000 : ℚ), (1731337797/500000000 : ℚ), (-1214752389857/1000000000000 : ℚ), 3⟩,
    ⟨(159324861503/500000000000 : ℚ), (29208632061/10000000000 : ℚ), (-521677829493/500000000000 : ℚ), 3⟩,
    ⟨(32330646119/100000000000 : ℚ), (12404135247/5000000000 : ℚ), (-451078272421/500000000000 : ℚ), 3⟩,
    ⟨(328186085441/1000000000000 : ℚ), (2649224531/1250000000 : ℚ), (-784451044871/1000000000000 : ℚ), 3⟩,
    ⟨(166638420159/500000000000 : ℚ), (9097453501/5000000000 : ℚ), (-685296601409/1000000000000 : ℚ), 3⟩,
    ⟨(67713292349/200000000000 : ℚ), (784217347/500000000 : ℚ), (-600984669187/1000000000000 : ℚ), 3⟩,
    ⟨(344042206563/1000000000000 : ℚ), (1356556071/1000000000 : ℚ), (-264344385563/500000000000 : ℚ), 3⟩,
    ⟨(17484544161/50000000000 : ℚ), (367633771/312500000 : ℚ), (-23311217497/50000000000 : ℚ), 3⟩,
    ⟨(177749441781/500000000000 : ℚ), (5111339541/5000000000 : ℚ), (-411881596417/1000000000000 : ℚ), 2⟩,
    ⟨(180726107803/500000000000 : ℚ), (8895229767/10000000000 : ℚ), (-91076741381/250000000000 : ℚ), 2⟩,
    ⟨(183768268627/500000000000 : ℚ), (7745731769/10000000000 : ℚ), (-322417822943/1000000000000 : ℚ), 2⟩,
    ⟨(186868595421/500000000000 : ℚ), (6745136991/10000000000 : ℚ), (-57068008139/200000000000 : ℚ), 2⟩,
    ⟨(380039238453/1000000000000 : ℚ), (733742907/1250000000 : ℚ), (-63090437591/250000000000 : ℚ), 2⟩,
    ⟨(193213748951/500000000000 : ℚ), (1275247733/2500000000 : ℚ), (-27862330287/125000000000 : ℚ), 2⟩,
    ⟨(24555411207/62500000000 : ℚ), (4422551559/10000000000 : ℚ), (-196467629387/1000000000000 : ℚ), 2⟩,
    ⟨(399400922191/1000000000000 : ℚ), (191081521/500000000 : ℚ), (-86333323569/500000000000 : ℚ), 2⟩,
    ⟨(81190966583/200000000000 : ℚ), (3287427687/10000000000 : ℚ), (-151159007499/1000000000000 : ℚ), 2⟩,
    ⟨(20626626127/50000000000 : ℚ), (2810918387/10000000000 : ℚ), (-131661170331/1000000000000 : ℚ), 2⟩,
    ⟨(104779536209/250000000000 : ℚ), (74516321/312500000 : ℚ), (-113933103669/1000000000000 : ℚ), 2⟩,
    ⟨(212847917231/500000000000 : ℚ), (2001842367/10000000000 : ℚ), (-24442656319/250000000000 : ℚ), 2⟩,
    ⟨(216124872593/500000000000 : ℚ), (828728213/5000000000 : ℚ), (-41499636357/500000000000 : ℚ), 2⟩,
    ⟨(87752817613/200000000000 : ℚ), (269349897/2000000000 : ℚ), (-2778774521/40000000000 : ℚ), 2⟩,
    ⟨(17808926779/40000000000 : ℚ), (1065778573/10000000000 : ℚ), (-7131498081/125000000000 : ℚ), 2⟩,
    ⟨(112902857231/250000000000 : ℚ), (405581391/5000000000 : ℚ), (-45635726909/1000000000000 : ℚ), 2⟩,
    ⟨(228956738267/500000000000 : ℚ), (144998361/2500000000 : ℚ), (-35123994589/1000000000000 : ℚ), 2⟩,
    ⟨(464114130123/1000000000000 : ℚ), (369760373/10000000000 : ℚ), (-3179098983/125000000000 : ℚ), 2⟩,
    ⟨(470198451771/1000000000000 : ℚ), (35658201/2000000000 : ℚ), (-16488883673/1000000000000 : ℚ), 2⟩,
    ⟨(95230356763/200000000000 : ℚ), (3699961/10000000000 : ℚ), (-8228263429/1000000000000 : ℚ), 2⟩,
    ⟨(120489946039/250000000000 : ℚ), (-15565293/1000000000 : ℚ), (-594869897/1000000000000 : ℚ), 2⟩,
    ⟨(243804230407/500000000000 : ℚ), (-75299427/2500000000 : ℚ), (1615123057/250000000000 : ℚ), 2⟩,
    ⟨(493084205631/1000000000000 : ℚ), (-217091847/5000000000 : ℚ), (6490531691/500000000000 : ℚ), 2⟩,
    ⟨(498373827059/1000000000000 : ℚ), (-555704237/10000000000 : ℚ), (2375612627/125000000000 : ℚ), 2⟩,
    ⟨(31466536371/62500000000 : ℚ), (-666717609/10000000000 : ℚ), (12282768313/500000000000 : ℚ), 2⟩,
    ⟨(508344206187/1000000000000 : ℚ), (-192016173/2500000000 : ℚ), (5938507219/200000000000 : ℚ), 2⟩,
    ⟨(513000944371/1000000000000 : ℚ), (-215120997/2500000000 : ℚ), (17205989429/500000000000 : ℚ), 2⟩,
    ⟨(517423577997/1000000000000 : ℚ), (-188924879/2000000000 : ℚ), (4843358701/125000000000 : ℚ), 2⟩,
    ⟨(521601452553/1000000000000 : ℚ), (-204211219/2000000000 : ℚ), (533968649/12500000000 : ℚ), 2⟩,
    ⟨(262762251587/500000000000 : ℚ), (-68142491/625000000 : ℚ), (46341713443/1000000000000 : ℚ), 2⟩,
    ⟨(66147909861/125000000000 : ℚ), (-1152734973/10000000000 : ℚ), (49635248007/1000000000000 : ℚ), 2⟩,
    ⟨(266284482691/500000000000 : ℚ), (-151100759/1250000000 : ℚ), (26305941583/500000000000 : ℚ), 2⟩,
    ⟨(535673406243/1000000000000 : ℚ), (-629414461/5000000000 : ℚ), (27641837943/500000000000 : ℚ), 2⟩,
    ⟨(538489122599/1000000000000 : ℚ), (-6515477/50000000 : ℚ), (57661121317/1000000000000 : ℚ), 2⟩,
    ⟨(541009331143/1000000000000 : ℚ), (-670928861/5000000000 : ℚ), (59753297933/1000000000000 : ℚ), 2⟩,
    ⟨(543227960473/1000000000000 : ℚ), (-21489563/156250000 : ℚ), (3078399581/50000000000 : ℚ), 2⟩,
    ⟨(136284916429/250000000000 : ℚ), (-1403701431/10000000000 : ℚ), (63111801471/1000000000000 : ℚ), 2⟩,
    ⟨(273369920703/500000000000 : ℚ), (-713559253/5000000000 : ℚ), (8048778597/125000000000 : ℚ), 2⟩,
    ⟨(27401231629/50000000000 : ℚ), (-289141481/2000000000 : ℚ), (1308155001/20000000000 : ℚ), 2⟩,
    ⟨(8577983501/15625000000 : ℚ), (-1459565521/10000000000 : ℚ), (6616787767/100000000000 : ℚ), 2⟩,
    ⟨(549636447929/1000000000000 : ℚ), (-367191197/2500000000 : ℚ), (66673205759/1000000000000 : ℚ), 2⟩,
    ⟨(549959589099/1000000000000 : ℚ), (-1473352641/10000000000 : ℚ), (66925445001/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-1473925571/10000000000 : ℚ), (66956954947/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (251235515027/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control101.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control101.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate101

namespace DiagonalRamsey.JointInheritedCertificate102
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79058953461/250000000000 : ℚ), (5431626779143/1250000000 : ℚ), (-275090543602479/200000000000 : ℚ), 13⟩,
    ⟨(316577568753/1000000000000 : ℚ), (4793614256091/10000000000 : ℚ), (-38165240994761/250000000000 : ℚ), 10⟩,
    ⟨(158630127627/500000000000 : ℚ), (341164207331/2000000000 : ℚ), (-6854706852479/125000000000 : ℚ), 8⟩,
    ⟨(159141114347/500000000000 : ℚ), (857384697397/10000000000 : ℚ), (-6971593401439/250000000000 : ℚ), 7⟩,
    ⟨(319641027051/1000000000000 : ℚ), (509538772783/10000000000 : ℚ), (-16795353680373/1000000000000 : ℚ), 6⟩,
    ⟨(16066668843/50000000000 : ℚ), (66859937723/2000000000 : ℚ), (-698821340251/62500000000 : ℚ), 6⟩,
    ⟨(161677600551/500000000000 : ℚ), (29261702967/1250000000 : ℚ), (-7952182525693/1000000000000 : ℚ), 5⟩,
    ⟨(162850814513/500000000000 : ℚ), (85824134461/5000000000 : ℚ), (-592635224239/100000000000 : ℚ), 5⟩,
    ⟨(328367007881/1000000000000 : ℚ), (130236343107/10000000000 : ℚ), (-2286250615927/500000000000 : ℚ), 5⟩,
    ⟨(41418114567/125000000000 : ℚ), (25362231231/2500000000 : ℚ), (-3623249621271/1000000000000 : ℚ), 4⟩,
    ⟨(83657045237/250000000000 : ℚ), (20171449977/2500000000 : ℚ), (-2932093594183/1000000000000 : ℚ), 4⟩,
    ⟨(169104445723/500000000000 : ℚ), (16314939293/2500000000 : ℚ), (-241330100989/100000000000 : ℚ), 4⟩,
    ⟨(68415684357/200000000000 : ℚ), (5351657977/1000000000 : ℚ), (-2013991053697/1000000000000 : ℚ), 4⟩,
    ⟨(173113724963/500000000000 : ℚ), (5549166457/1250000000 : ℚ), (-1700109259113/1000000000000 : ℚ), 4⟩,
    ⟨(175322990249/500000000000 : ℚ), (3718216099/1000000000 : ℚ), (-1448921744959/1000000000000 : ℚ), 3⟩,
    ⟨(177661684437/500000000000 : ℚ), (3139720913/1000000000 : ℚ), (-1244782112287/1000000000000 : ℚ), 3⟩,
    ⟨(72049669363/200000000000 : ℚ), (26696236289/10000000000 : ℚ), (-134579532497/125000000000 : ℚ), 3⟩,
    ⟨(182704524809/500000000000 : ℚ), (22832696951/10000000000 : ℚ), (-936495048033/1000000000000 : ℚ), 3⟩,
    ⟨(185396522349/500000000000 : ℚ), (4906366169/2500000000 : ℚ), (-204617095459/250000000000 : ℚ), 3⟩,
    ⟨(376387361539/1000000000000 : ℚ), (8469577267/5000000000 : ℚ), (-28725467161/40000000000 : ℚ), 3⟩,
    ⟨(382178522943/1000000000000 : ℚ), (1833876103/1250000000 : ℚ), (-632131464643/1000000000000 : ℚ), 3⟩,
    ⟨(388152577493/1000000000000 : ℚ), (2548392029/2000000000 : ℚ), (-4462793533/8000000000 : ℚ), 3⟩,
    ⟨(394295133169/1000000000000 : ℚ), (693151169/625000000 : ℚ), (-123313006449/250000000000 : ℚ), 2⟩,
    ⟨(400591392017/1000000000000 : ℚ), (1933575081/2000000000 : ℚ), (-436726653341/1000000000000 : ℚ), 2⟩,
    ⟨(203513092899/500000000000 : ℚ), (8435739201/10000000000 : ℚ), (-193491283999/500000000000 : ℚ), 2⟩,
    ⟨(413584012529/1000000000000 : ℚ), (7363028529/10000000000 : ℚ), (-342977706817/1000000000000 : ℚ), 2⟩,
    ⟨(52531134229/125000000000 : ℚ), (3212331707/5000000000 : ℚ), (-9495729409/31250000000 : ℚ), 2⟩,
    ⟨(42700531299/100000000000 : ℚ), (5600186319/10000000000 : ℚ), (-8404460179/31250000000 : ℚ), 2⟩,
    ⟨(433836453631/1000000000000 : ℚ), (4872793249/10000000000 : ℚ), (-29704964687/125000000000 : ℚ), 2⟩,
    ⟨(22036301947/50000000000 : ℚ), (528574021/1250000000 : ℚ), (-52368676091/250000000000 : ℚ), 2⟩,
    ⟨(447657471301/1000000000000 : ℚ), (1828014969/5000000000 : ℚ), (-9202298159/50000000000 : ℚ), 2⟩,
    ⟨(7103344567/15625000000 : ℚ), (314544551/1000000000 : ℚ), (-80507543989/500000000000 : ℚ), 2⟩,
    ⟨(230789511443/500000000000 : ℚ), (537743737/2000000000 : ℚ), (-140095505231/1000000000000 : ℚ), 2⟩,
    ⟨(468535603873/1000000000000 : ℚ), (2278991857/10000000000 : ℚ), (-30260837079/250000000000 : ℚ), 2⟩,
    ⟨(237733518117/500000000000 : ℚ), (955224007/5000000000 : ℚ), (-51825077421/500000000000 : ℚ), 2⟩,
    ⟨(482356621543/1000000000000 : ℚ), (394533107/2500000000 : ℚ), (-43868490509/500000000000 : ℚ), 2⟩,
    ⟨(61148470273/125000000000 : ℚ), (63890427/500000000 : ℚ), (-36574813401/500000000000 : ℚ), 2⟩,
    ⟨(495944001343/1000000000000 : ℚ), (502920409/5000000000 : ℚ), (-14938685033/250000000000 : ℚ), 2⟩,
    ⟨(100521812529/200000000000 : ℚ), (759099007/10000000000 : ℚ), (-4743661861/100000000000 : ℚ), 2⟩,
    ⟨(509166889377/1000000000000 : ℚ), (534879469/10000000000 : ℚ), (-7218914019/200000000000 : ℚ), 2⟩,
    ⟨(515601683157/1000000000000 : ℚ), (16542013/500000000 : ℚ), (-5128144813/200000000000 : ℚ), 2⟩,
    ⟨(104379588401/200000000000 : ℚ), (36236823/2500000000 : ℚ), (-3999551689/250000000000 : ℚ), 2⟩,
    ⟨(264020248841/500000000000 : ℚ), (-4914097/2000000000 : ℚ), (-709961437/100000000000 : ℚ), 2⟩,
    ⟨(66751819029/125000000000 : ℚ), (-89629277/5000000000 : ℚ), (5571357/5000000000 : ℚ), 2⟩,
    ⟨(107961142727/200000000000 : ℚ), (-320468259/10000000000 : ℚ), (8695566527/1000000000000 : ℚ), 2⟩,
    ⟨(136350007619/250000000000 : ℚ), (-449383267/10000000000 : ℚ), (3922550711/250000000000 : ℚ), 2⟩,
    ⟨(137696006389/250000000000 : ℚ), (-283520957/5000000000 : ℚ), (11069354239/500000000000 : ℚ), 2⟩,
    ⟨(555944728359/1000000000000 : ℚ), (-168589033/2500000000 : ℚ), (7019218377/250000000000 : ℚ), 2⟩,
    ⟨(5608697063/10000000000 : ℚ), (-154425503/2000000000 : ℚ), (16768159271/500000000000 : ℚ), 2⟩,
    ⟨(141386773669/250000000000 : ℚ), (-861061/10000000 : ℚ), (38544982961/1000000000000 : ℚ), 2⟩,
    ⟨(17811425789/31250000000 : ℚ), (-188355307/2000000000 : ℚ), (43127544499/1000000000000 : ℚ), 2⟩,
    ⟨(57411465339/100000000000 : ℚ), (-202963807/2000000000 : ℚ), (47305779161/1000000000000 : ℚ), 2⟩,
    ⟨(36124011483/62500000000 : ℚ), (-33770841/312500000 : ℚ), (1277471833/25000000000 : ℚ), 2⟩,
    ⟨(290782447113/500000000000 : ℚ), (-1139739361/10000000000 : ℚ), (2726184571/50000000000 : ℚ), 2⟩,
    ⟨(292424079319/500000000000 : ℚ), (-298100649/2500000000 : ℚ), (3599687951/62500000000 : ℚ), 2⟩,
    ⟨(587826067293/1000000000000 : ℚ), (-1238975179/10000000000 : ℚ), (60325703/1000000000 : ℚ), 2⟩,
    ⟨(147622861537/250000000000 : ℚ), (-1279732563/10000000000 : ℚ), (12545388167/200000000000 : ℚ), 2⟩,
    ⟨(74104734259/125000000000 : ℚ), (-1314910947/10000000000 : ℚ), (64808308833/1000000000000 : ℚ), 2⟩,
    ⟨(297429849157/500000000000 : ℚ), (-10505551/78125000 : ℚ), (66577945479/1000000000000 : ℚ), 2⟩,
    ⟨(596552048123/1000000000000 : ℚ), (-171162277/1250000000 : ℚ), (68042644001/1000000000000 : ℚ), 2⟩,
    ⟨(7473885581/12500000000 : ℚ), (-86800617/625000000 : ℚ), (8650992393/125000000000 : ℚ), 2⟩,
    ⟨(598932819921/1000000000000 : ℚ), (-1403352111/10000000000 : ℚ), (8759772189/125000000000 : ℚ), 2⟩,
    ⟨(599615506421/1000000000000 : ℚ), (-1413003701/10000000000 : ℚ), (1104008939/15625000000 : ℚ), 2⟩,
    ⟨(59995726133/100000000000 : ℚ), (-1417816591/10000000000 : ℚ), (70945242597/1000000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-886511/6250000 : ℚ), (35490650953/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (231200901543/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control102.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control102.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate102

namespace DiagonalRamsey.JointInheritedCertificate104
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(244892447497/500000000000 : ℚ), (12316589128289/2000000000 : ℚ), (-3018317743854021/1000000000000 : ℚ), 13⟩,
    ⟨(98031701279/200000000000 : ℚ), (850652397413/1250000000 : ℚ), (-335010892292533/1000000000000 : ℚ), 10⟩,
    ⟨(490904829133/1000000000000 : ℚ), (2427965845143/10000000000 : ℚ), (-60173255871043/500000000000 : ℚ), 8⟩,
    ⟨(123005516313/250000000000 : ℚ), (244855534757/2000000000 : ℚ), (-30602247532677/500000000000 : ℚ), 7⟩,
    ⟨(493507523233/1000000000000 : ℚ), (365123041817/5000000000 : ℚ), (-36866452655807/1000000000000 : ℚ), 7⟩,
    ⟨(495357624477/1000000000000 : ℚ), (60127138989/1250000000 : ℚ), (-6136706806763/250000000000 : ℚ), 6⟩,
    ⟨(62195988991/125000000000 : ℚ), (338265302379/10000000000 : ℚ), (-17461480893747/1000000000000 : ℚ), 6⟩,
    ⟨(500133060809/1000000000000 : ℚ), (62284000697/2500000000 : ℚ), (-1301634817297/100000000000 : ℚ), 5⟩,
    ⟨(503046891453/1000000000000 : ℚ), (11868778899/625000000 : ℚ), (-10045870619177/1000000000000 : ℚ), 5⟩,
    ⟨(506302384187/1000000000000 : ℚ), (148625178907/10000000000 : ℚ), (-1592661658739/200000000000 : ℚ), 5⟩,
    ⟨(509891696243/1000000000000 : ℚ), (118778684837/10000000000 : ℚ), (-6447172875343/1000000000000 : ℚ), 4⟩,
    ⟨(256903090327/500000000000 : ℚ), (48271786999/5000000000 : ℚ), (-5309333932997/1000000000000 : ℚ), 4⟩,
    ⟨(129509101771/250000000000 : ℚ), (79568458397/10000000000 : ℚ), (-2216875085987/500000000000 : ℚ), 4⟩,
    ⟨(130643046137/250000000000 : ℚ), (33170692367/5000000000 : ℚ), (-3745692833441/1000000000000 : ℚ), 4⟩,
    ⟨(13185064649/25000000000 : ℚ), (3490918809/625000000 : ℚ), (-19970468339/6250000000 : ℚ), 3⟩,
    ⟨(532515974459/1000000000000 : ℚ), (47416167271/10000000000 : ℚ), (-687040517281/250000000000 : ℚ), 3⟩,
    ⟨(268950015723/500000000000 : ℚ), (40537692577/10000000000 : ℚ), (-476019385289/200000000000 : ℚ), 3⟩,
    ⟨(33971361641/62500000000 : ℚ), (17433639111/5000000000 : ℚ), (-1036773834607/500000000000 : ℚ), 3⟩,
    ⟨(274713823703/500000000000 : ℚ), (15073005847/5000000000 : ℚ), (-1815588307481/1000000000000 : ℚ), 3⟩,
    ⟨(277771717671/500000000000 : ℚ), (26180105079/10000000000 : ℚ), (-79825971697/50000000000 : ℚ), 3⟩,
    ⟨(112374883319/200000000000 : ℚ), (22822253403/10000000000 : ℚ), (-1408947879539/1000000000000 : ℚ), 3⟩,
    ⟨(142101334819/250000000000 : ℚ), (9979463171/5000000000 : ℚ), (-623579361401/500000000000 : ℚ), 3⟩,
    ⟨(287560234911/500000000000 : ℚ), (2187691303/1250000000 : ℚ), (-553339070677/500000000000 : ℚ), 3⟩,
    ⟨(582003630893/1000000000000 : ℚ), (15380151707/10000000000 : ℚ), (-983963589669/1000000000000 : ℚ), 2⟩,
    ⟨(589038240353/1000000000000 : ℚ), (13539053021/10000000000 : ℚ), (-219045153759/250000000000 : ℚ), 2⟩,
    ⟨(596207351211/1000000000000 : ℚ), (5966692837/5000000000 : ℚ), (-781039689283/1000000000000 : ℚ), 2⟩,
    ⟨(603493692451/1000000000000 : ℚ), (10526755509/10000000000 : ℚ), (-348337646931/500000000000 : ℚ), 2⟩,
    ⟨(305439855319/500000000000 : ℚ), (4644699487/5000000000 : ℚ), (-155388799719/250000000000 : ℚ), 2⟩,
    ⟨(618347612209/1000000000000 : ℚ), (102460009/125000000 : ℚ), (-277205807557/500000000000 : ℚ), 2⟩,
    ⟨(625879406333/1000000000000 : ℚ), (7228634823/10000000000 : ℚ), (-494188392571/1000000000000 : ℚ), 2⟩,
    ⟨(31672847413/50000000000 : ℚ), (6367945959/10000000000 : ℚ), (-110000031493/250000000000 : ℚ), 2⟩,
    ⟨(320530991513/500000000000 : ℚ), (1120102091/2000000000 : ℚ), (-97775048997/250000000000 : ℚ), 2⟩,
    ⟨(648676189437/1000000000000 : ℚ), (491433351/1000000000 : ℚ), (-346855580503/1000000000000 : ℚ), 2⟩,
    ⟨(164070306051/250000000000 : ℚ), (4299250471/10000000000 : ℚ), (-153363421779/500000000000 : ℚ), 2⟩,
    ⟨(66385876613/100000000000 : ℚ), (3746608343/10000000000 : ℚ), (-135126061233/500000000000 : ℚ), 2⟩,
    ⟨(134278112051/200000000000 : ℚ), (1624504821/5000000000 : ℚ), (-29629277907/125000000000 : ℚ), 2⟩,
    ⟨(27154338473/40000000000 : ℚ), (21875821/78125000 : ℚ), (-206730154817/1000000000000 : ℚ), 2⟩,
    ⟨(171561120003/250000000000 : ℚ), (2394424829/10000000000 : ℚ), (-89521294749/500000000000 : ℚ), 2⟩,
    ⟨(173382705313/250000000000 : ℚ), (101362013/500000000 : ℚ), (-19214106773/125000000000 : ℚ), 2⟩,
    ⟨(70069993211/100000000000 : ℚ), (1694450321/10000000000 : ℚ), (-32628787407/250000000000 : ℚ), 2⟩,
    ⟨(70773454157/100000000000 : ℚ), (278497493/2000000000 : ℚ), (-109251756387/1000000000000 : ℚ), 2⟩,
    ⟨(357308851321/500000000000 : ℚ), (223647911/2000000000 : ℚ), (-89749042613/1000000000000 : ℚ), 2⟩,
    ⟨(721332833187/1000000000000 : ℚ), (868984709/10000000000 : ℚ), (-4490882747/62500000000 : ℚ), 2⟩,
    ⟨(727863755869/1000000000000 : ℚ), (20073023/312500000 : ℚ), (-3464503641/62500000000 : ℚ), 2⟩,
    ⟨(367097368561/500000000000 : ℚ), (218099643/5000000000 : ℚ), (-40363482341/1000000000000 : ℚ), 2⟩,
    ⟨(370155262529/500000000000 : ℚ), (248727177/10000000000 : ℚ), (-13271305953/500000000000 : ℚ), 2⟩,
    ⟨(23318637069/31250000000 : ℚ), (39146849/5000000000 : ℚ), (-867221681/62500000000 : ℚ), 2⟩,
    ⟨(751838141017/1000000000000 : ℚ), (-76537127/10000000000 : ℚ), (-2278829367/1000000000000 : ℚ), 2⟩,
    ⟨(189305549501/250000000000 : ℚ), (-54258527/2500000000 : ℚ), (1664356861/200000000000 : ℚ), 2⟩,
    ⟨(95291948313/125000000000 : ℚ), (-172159483/5000000000 : ℚ), (4498092983/250000000000 : ℚ), 2⟩,
    ⟨(153433197583/200000000000 : ℚ), (-22969173/500000000 : ℚ), (1339587083/50000000000 : ℚ), 2⟩,
    ⟨(771701765379/1000000000000 : ℚ), (-281552007/5000000000 : ℚ), (1390887937/40000000000 : ℚ), 2⟩,
    ⟨(775931991809/1000000000000 : ℚ), (-131250843/2000000000 : ℚ), (1679207973/40000000000 : ℚ), 2⟩,
    ⟨(38992323811/50000000000 : ℚ), (-739515503/10000000000 : ℚ), (24228457701/500000000000 : ℚ), 2⟩,
    ⟨(195858947069/250000000000 : ℚ), (-813486291/10000000000 : ℚ), (27119354969/500000000000 : ℚ), 2⟩,
    ⟨(78669128101/100000000000 : ℚ), (-219672439/2500000000 : ℚ), (59357548383/1000000000000 : ℚ), 2⟩,
    ⟨(394802555827/500000000000 : ℚ), (-467790229/5000000000 : ℚ), (63841345689/1000000000000 : ℚ), 2⟩,
    ⟨(99021282567/125000000000 : ℚ), (-196909989/2000000000 : ℚ), (67714260181/1000000000000 : ℚ), 2⟩,
    ⟨(794380547987/1000000000000 : ℚ), (-512965737/5000000000 : ℚ), (35498470701/500000000000 : ℚ), 1⟩,
    ⟨(79623064923/100000000000 : ℚ), (-530001971/5000000000 : ℚ), (18426683989/250000000000 : ℚ), 1⟩,
    ⟨(797716107211/1000000000000 : ℚ), (-1086995117/10000000000 : ℚ), (37928928377/500000000000 : ℚ), 1⟩,
    ⟨(79883334333/100000000000 : ℚ), (-110708423/1000000000 : ℚ), (9682689771/125000000000 : ℚ), 1⟩,
    ⟨(799579666069/1000000000000 : ℚ), (-560201997/5000000000 : ℚ), (78526041871/1000000000000 : ℚ), 1⟩,
    ⟨(799953277469/1000000000000 : ℚ), (-1127042079/10000000000 : ℚ), (19764233409/250000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-56393541/500000000 : ℚ), (7912323097/100000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (66179663563/500000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control104.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control104.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate104

namespace DiagonalRamsey.JointInheritedCertificate113
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62801842771/250000000000 : ℚ), (4796298906139/5000000000 : ℚ), (-30223281620371/125000000000 : ℚ), 11⟩,
    ⟨(50480930727/200000000000 : ℚ), (1039865474947/10000000000 : ℚ), (-2674695846861/100000000000 : ℚ), 8⟩,
    ⟨(254787688251/1000000000000 : ℚ), (72089137857/2000000000 : ℚ), (-596488080127/62500000000 : ℚ), 6⟩,
    ⟨(258333525007/1000000000000 : ℚ), (87711989569/5000000000 : ℚ), (-4804150399611/1000000000000 : ℚ), 5⟩,
    ⟨(65752003889/250000000000 : ℚ), (100485332373/10000000000 : ℚ), (-8917632939/3125000000 : ℚ), 5⟩,
    ⟨(268766141999/1000000000000 : ℚ), (63295578061/10000000000 : ℚ), (-933124409267/500000000000 : ℚ), 4⟩,
    ⟨(27555245043/100000000000 : ℚ), (42397500269/10000000000 : ℚ), (-1298280770541/1000000000000 : ℚ), 4⟩,
    ⟨(283301584989/1000000000000 : ℚ), (2962448027/1000000000 : ℚ), (-470921140679/500000000000 : ℚ), 3⟩,
    ⟨(11677556691/40000000000 : ℚ), (21328039541/10000000000 : ℚ), (-351759857029/500000000000 : ℚ), 3⟩,
    ⟨(9418164533/31250000000 : ℚ), (3921066949/2500000000 : ℚ), (-536288929061/1000000000000 : ℚ), 3⟩,
    ⟨(311537693361/1000000000000 : ℚ), (11702136577/10000000000 : ℚ), (-414386619663/1000000000000 : ℚ), 3⟩,
    ⟨(322310390233/1000000000000 : ℚ), (8807472227/10000000000 : ℚ), (-322740599457/1000000000000 : ℚ), 2⟩,
    ⟨(333595608713/1000000000000 : ℚ), (665026151/1000000000 : ℚ), (-252059721109/1000000000000 : ℚ), 2⟩,
    ⟨(172642332989/500000000000 : ℚ), (5008167931/10000000000 : ℚ), (-98183626769/500000000000 : ℚ), 2⟩,
    ⟨(5582265469/15625000000 : ℚ), (1867540219/5000000000 : ℚ), (-592502379/3906250000 : ℚ), 2⟩,
    ⟨(369421203757/1000000000000 : ℚ), (1366106189/5000000000 : ℚ), (-57633267151/500000000000 : ℚ), 2⟩,
    ⟨(381636236219/1000000000000 : ℚ), (1931144367/10000000000 : ℚ), (-42600954869/500000000000 : ℚ), 2⟩,
    ⟨(9844811249/25000000000 : ℚ), (160437539/1250000000 : ℚ), (-12020952279/200000000000 : ℚ), 2⟩,
    ⟨(202886386999/500000000000 : ℚ), (94307447/1250000000 : ℚ), (-304406499/7812500000 : ℚ), 2⟩,
    ⟨(417461831263/1000000000000 : ℚ), (159283377/5000000000 : ℚ), (-4205744591/200000000000 : ℚ), 2⟩,
    ⟨(428747049743/1000000000000 : ℚ), (-43039817/10000000000 : ℚ), (-1146771951/200000000000 : ℚ), 2⟩,
    ⟨(87903949323/200000000000 : ℚ), (-172249863/5000000000 : ℚ), (7350069469/1000000000000 : ℚ), 2⟩,
    ⟨(11241904373/25000000000 : ℚ), (-18641181/312500000 : ℚ), (115952089/6250000000 : ℚ), 2⟩,
    ⟨(459118522701/1000000000000 : ℚ), (-403631873/5000000000 : ℚ), (14063466243/500000000000 : ℚ), 2⟩,
    ⟨(467755854987/1000000000000 : ℚ), (-983009877/10000000000 : ℚ), (4533821771/125000000000 : ℚ), 2⟩,
    ⟨(475504989547/1000000000000 : ℚ), (-1128588333/10000000000 : ℚ), (43135804677/1000000000000 : ℚ), 2⟩,
    ⟨(241145648989/500000000000 : ℚ), (-1247722251/10000000000 : ℚ), (48840688563/1000000000000 : ℚ), 2⟩,
    ⟨(24402471221/50000000000 : ℚ), (-1343267081/10000000000 : ℚ), (26738003841/500000000000 : ℚ), 2⟩,
    ⟨(492723914969/1000000000000 : ℚ), (-708693423/5000000000 : ℚ), (57110626439/1000000000000 : ℚ), 2⟩,
    ⟨(19850790069/40000000000 : ℚ), (-294336451/2000000000 : ℚ), (1195909391/20000000000 : ℚ), 2⟩,
    ⟨(498652786341/1000000000000 : ℚ), (-150728227/1000000000 : ℚ), (15391604627/250000000000 : ℚ), 2⟩,
    ⟨(124962517223/250000000000 : ℚ), (-381226747/2500000000 : ℚ), (7805791667/125000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2982621/19531250 : ℚ), (2502242603/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (280047162999/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control113.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control113.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate113

namespace DiagonalRamsey.JointInheritedCertificate114
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6598460221/25000000000 : ℚ), (4896746726913/5000000000 : ℚ), (-64835956127561/250000000000 : ℚ), 11⟩,
    ⟨(132585336169/500000000000 : ℚ), (531020358201/5000000000 : ℚ), (-1147573506669/40000000000 : ℚ), 8⟩,
    ⟨(133811665981/500000000000 : ℚ), (14732999163/400000000 : ℚ), (-511849480171/50000000000 : ℚ), 6⟩,
    ⟨(271272767259/1000000000000 : ℚ), (179366672233/10000000000 : ℚ), (-1288296083049/250000000000 : ℚ), 5⟩,
    ⟨(276083832173/1000000000000 : ℚ), (4112411421/400000000 : ℚ), (-612215031421/200000000000 : ℚ), 5⟩,
    ⟨(141005096759/500000000000 : ℚ), (64803936149/10000000000 : ℚ), (-1001013355883/500000000000 : ℚ), 4⟩,
    ⟨(57798955439/200000000000 : ℚ), (8687691429/2000000000 : ℚ), (-69643522089/50000000000 : ℚ), 4⟩,
    ⟨(59394063569/200000000000 : ℚ), (1898396983/625000000 : ℚ), (-1010613775777/1000000000000 : ℚ), 3⟩,
    ⟨(76465001663/250000000000 : ℚ), (10942703813/5000000000 : ℚ), (-151011935519/200000000000 : ℚ), 3⟩,
    ⟨(315578231053/1000000000000 : ℚ), (3221707241/2000000000 : ℚ), (-575769034913/1000000000000 : ℚ), 3⟩,
    ⟨(163015699617/500000000000 : ℚ), (6015602287/5000000000 : ℚ), (-4451072563/10000000000 : ℚ), 3⟩,
    ⟨(2633740949/7812500000 : ℚ), (9066626327/10000000000 : ℚ), (-346907037683/1000000000000 : ℚ), 2⟩,
    ⟨(87183444909/250000000000 : ℚ), (3428493921/5000000000 : ℚ), (-135600873059/500000000000 : ℚ), 2⟩,
    ⟨(360764355523/1000000000000 : ℚ), (5174915237/10000000000 : ℚ), (-42315939657/200000000000 : ℚ), 2⟩,
    ⟨(373094708111/1000000000000 : ℚ), (3870925793/10000000000 : ℚ), (-163768033881/1000000000000 : ℚ), 2⟩,
    ⟨(385606089363/1000000000000 : ℚ), (1421953717/5000000000 : ℚ), (-124833841791/1000000000000 : ℚ), 2⟩,
    ⟨(398178007839/1000000000000 : ℚ), (2023795791/10000000000 : ℚ), (-11589135451/125000000000 : ℚ), 2⟩,
    ⟨(410689389091/1000000000000 : ℚ), (1361025767/10000000000 : ℚ), (-65922091789/1000000000000 : ℚ), 2⟩,
    ⟨(423019741679/1000000000000 : ℚ), (819901283/10000000000 : ℚ), (-43374995763/1000000000000 : ℚ), 2⟩,
    ⟨(217525158783/500000000000 : ℚ), (46789007/1250000000 : ℚ), (-4852966499/200000000000 : ℚ), 2⟩,
    ⟨(446665255731/1000000000000 : ℚ), (4899823/10000000000 : ℚ), (-1596830481/200000000000 : ℚ), 2⟩,
    ⟨(28609543623/62500000000 : ℚ), (-302855961/10000000000 : ℚ), (5929193213/1000000000000 : ℚ), 2⟩,
    ⟨(468205866149/1000000000000 : ℚ), (-559955169/10000000000 : ℚ), (17829810573/1000000000000 : ℚ), 2⟩,
    ⟨(9558481811/20000000000 : ℚ), (-96849723/1250000000 : ℚ), (2799152727/100000000000 : ℚ), 2⟩,
    ⟨(486813779357/1000000000000 : ℚ), (-953836699/10000000000 : ℚ), (36626659043/1000000000000 : ℚ), 2⟩,
    ⟨(494789320007/1000000000000 : ℚ), (-275511517/2500000000 : ℚ), (5487508273/125000000000 : ℚ), 2⟩,
    ⟨(125443475921/250000000000 : ℚ), (-244652107/2000000000 : ℚ), (6242439889/125000000000 : ℚ), 2⟩,
    ⟨(50770026503/100000000000 : ℚ), (-330105639/2500000000 : ℚ), (54843400597/1000000000000 : ℚ), 2⟩,
    ⟨(512511329943/1000000000000 : ℚ), (-348940773/2500000000 : ℚ), (29343221391/500000000000 : ℚ), 2⟩,
    ⟨(516160765241/1000000000000 : ℚ), (-725466499/5000000000 : ℚ), (61523979507/1000000000000 : ℚ), 2⟩,
    ⟨(103722684973/200000000000 : ℚ), (-743548483/5000000000 : ℚ), (15848760463/250000000000 : ℚ), 2⟩,
    ⟨(259922844181/500000000000 : ℚ), (-47031189/312500000 : ℚ), (64324517121/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1507227297/10000000000 : ℚ), (64440420873/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (272556098911/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control114.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control114.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate114

namespace DiagonalRamsey.JointInheritedCertificate115
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(283496830363/1000000000000 : ℚ), (40592724140993/10000000000 : ℚ), (-1151938774074527/1000000000000 : ℚ), 13⟩,
    ⟨(283817796753/1000000000000 : ℚ), (895376164289/2000000000 : ℚ), (-15981599897303/125000000000 : ℚ), 10⟩,
    ⟨(142229478149/500000000000 : ℚ), (796232751543/5000000000 : ℚ), (-22962966306079/500000000000 : ℚ), 8⟩,
    ⟨(142709382193/500000000000 : ℚ), (800011859993/10000000000 : ℚ), (-23354258321333/1000000000000 : ℚ), 7⟩,
    ⟨(143347454379/500000000000 : ℚ), (475174716909/10000000000 : ℚ), (-879094843711/62500000000 : ℚ), 6⟩,
    ⟨(288284315069/1000000000000 : ℚ), (155781534739/5000000000 : ℚ), (-1872717179539/200000000000 : ℚ), 6⟩,
    ⟨(2901831543/10000000000 : ℚ), (109015179093/5000000000 : ℚ), (-6659292159847/1000000000000 : ℚ), 5⟩,
    ⟨(292386851981/1000000000000 : ℚ), (998506893/62500000 : ℚ), (-496260898093/100000000000 : ℚ), 5⟩,
    ⟨(294890099211/1000000000000 : ℚ), (121131511441/10000000000 : ℚ), (-3828699766119/1000000000000 : ℚ), 5⟩,
    ⟨(5953737309/20000000000 : ℚ), (94287925313/10000000000 : ℚ), (-1516817211607/500000000000 : ℚ), 4⟩,
    ⟨(300770413041/1000000000000 : ℚ), (37467115819/5000000000 : ℚ), (-1227358182173/500000000000 : ℚ), 4⟩,
    ⟨(38016664181/125000000000 : ℚ), (12112217487/2000000000 : ℚ), (-2020145190723/1000000000000 : ℚ), 4⟩,
    ⟨(6155349303/20000000000 : ℚ), (49623929679/10000000000 : ℚ), (-1685633450249/1000000000000 : ℚ), 4⟩,
    ⟨(155832056579/500000000000 : ℚ), (41130399457/10000000000 : ℚ), (-355665185773/250000000000 : ℚ), 4⟩,
    ⟨(39476733763/125000000000 : ℚ), (34419734359/10000000000 : ℚ), (-37880864361/31250000000 : ℚ), 3⟩,
    ⟨(320206738861/1000000000000 : ℚ), (3629808337/1250000000 : ℚ), (-1041110562737/1000000000000 : ℚ), 3⟩,
    ⟨(20302008539/62500000000 : ℚ), (385425441/156250000 : ℚ), (-900171875591/1000000000000 : ℚ), 3⟩,
    ⟨(329678920403/1000000000000 : ℚ), (21075994599/10000000000 : ℚ), (-782680939139/1000000000000 : ℚ), 3⟩,
    ⟨(20920963367/62500000000 : ℚ), (1130988347/625000000 : ℚ), (-136741011713/200000000000 : ℚ), 3⟩,
    ⟨(42498679437/125000000000 : ℚ), (15600430411/10000000000 : ℚ), (-599543106849/1000000000000 : ℚ), 3⟩,
    ⟨(86357081969/250000000000 : ℚ), (6747021487/5000000000 : ℚ), (-527374273577/1000000000000 : ℚ), 3⟩,
    ⟨(87759747061/250000000000 : ℚ), (11702957367/10000000000 : ℚ), (-465018388237/1000000000000 : ℚ), 3⟩,
    ⟨(356807900029/1000000000000 : ℚ), (10169787841/10000000000 : ℚ), (-410769078043/1000000000000 : ℚ), 3⟩,
    ⟨(72544233083/200000000000 : ℚ), (69135563/78125000 : ℚ), (-141904499/390625000 : ℚ), 2⟩,
    ⟨(368764538829/1000000000000 : ℚ), (3852859449/5000000000 : ℚ), (-64291448701/200000000000 : ℚ), 2⟩,
    ⟨(74984692251/200000000000 : ℚ), (6710053617/10000000000 : ℚ), (-142220937517/500000000000 : ℚ), 2⟩,
    ⟨(381183095309/1000000000000 : ℚ), (5839023937/10000000000 : ℚ), (-50303791579/200000000000 : ℚ), 2⟩,
    ⟨(77505672197/200000000000 : ℚ), (5073606329/10000000000 : ℚ), (-222105333621/1000000000000 : ℚ), 2⟩,
    ⟨(196971985991/500000000000 : ℚ), (4398181963/10000000000 : ℚ), (-195718856157/1000000000000 : ℚ), 2⟩,
    ⟨(400414472531/1000000000000 : ℚ), (189992243/500000000 : ℚ), (-85979116391/500000000000 : ℚ), 2⟩,
    ⟨(406924274629/1000000000000 : ℚ), (408483417/1250000000 : ℚ), (-18810926251/125000000000 : ℚ), 2⟩,
    ⟨(413457695593/1000000000000 : ℚ), (2793283301/10000000000 : ℚ), (-32755842493/250000000000 : ℚ), 2⟩,
    ⟨(656248431/1562500000 : ℚ), (296070093/1250000000 : ℚ), (-56663255669/500000000000 : ℚ), 2⟩,
    ⟨(106633104201/250000000000 : ℚ), (198734233/1000000000 : ℚ), (-48596503191/500000000000 : ℚ), 2⟩,
    ⟨(216521109451/500000000000 : ℚ), (205529811/1250000000 : ℚ), (-5153042777/62500000000 : ℚ), 2⟩,
    ⟨(439512719451/1000000000000 : ℚ), (1334661263/10000000000 : ℚ), (-430900639/6250000000 : ℚ), 2⟩,
    ⟨(27870520653/62500000000 : ℚ), (1054690067/10000000000 : ℚ), (-7068818079/125000000000 : ℚ), 2⟩,
    ⟨(113068399031/250000000000 : ℚ), (400481293/5000000000 : ℚ), (-22578380577/500000000000 : ℚ), 2⟩,
    ⟨(229266615089/500000000000 : ℚ), (114117127/2000000000 : ℚ), (-34666286739/1000000000000 : ℚ), 2⟩,
    ⟨(116173038151/250000000000 : ℚ), (361061949/10000000000 : ℚ), (-24995230587/1000000000000 : ℚ), 2⟩,
    ⟨(235367763009/500000000000 : ℚ), (42557443/2500000000 : ℚ), (-1607044189/100000000000 : ℚ), 2⟩,
    ⟨(119162197851/250000000000 : ℚ), (-757443/2000000000 : ℚ), (-1565596199/200000000000 : ℚ), 2⟩,
    ⟨(120604425797/250000000000 : ℚ), (-162621573/10000000000 : ℚ), (-42367823/200000000000 : ℚ), 2⟩,
    ⟨(488028363557/1000000000000 : ℚ), (-76924233/2500000000 : ℚ), (273085527/40000000000 : ℚ), 2⟩,
    ⟨(493467255937/1000000000000 : ℚ), (-440257203/10000000000 : ℚ), (6666080053/500000000000 : ℚ), 2⟩,
    ⟨(498721277561/1000000000000 : ℚ), (-561391159/10000000000 : ℚ), (19341260887/1000000000000 : ℚ), 2⟩,
    ⟨(50377777103/100000000000 : ℚ), (-67205319/1000000000 : ℚ), (24887954977/1000000000000 : ℚ), 2⟩,
    ⟨(508624554809/1000000000000 : ℚ), (-193270219/2500000000 : ℚ), (30001796111/1000000000000 : ℚ), 2⟩,
    ⟨(513249952571/1000000000000 : ℚ), (-216302477/2500000000 : ℚ), (3470885593/100000000000 : ℚ), 2⟩,
    ⟨(32352676333/62500000000 : ℚ), (-949086779/10000000000 : ℚ), (4879016751/125000000000 : ℚ), 2⟩,
    ⟨(20871703131/40000000000 : ℚ), (-512639807/5000000000 : ℚ), (8598382281/200000000000 : ℚ), 2⟩,
    ⟨(262844613141/500000000000 : ℚ), (-273571853/2500000000 : ℚ), (46606054497/1000000000000 : ℚ), 2⟩,
    ⟨(105864675597/200000000000 : ℚ), (-1156547951/10000000000 : ℚ), (49890277411/1000000000000 : ℚ), 2⟩,
    ⟨(66585784799/125000000000 : ℚ), (-151555569/1250000000 : ℚ), (26429184373/500000000000 : ℚ), 2⟩,
    ⟨(535769825983/1000000000000 : ℚ), (-631155931/5000000000 : ℚ), (55522387003/1000000000000 : ℚ), 2⟩,
    ⟨(538566592221/1000000000000 : ℚ), (-653220397/5000000000 : ℚ), (57892829027/1000000000000 : ℚ), 2⟩,
    ⟨(135267459863/250000000000 : ℚ), (-1345082739/10000000000 : ℚ), (59978775033/1000000000000 : ℚ), 2⟩,
    ⟨(543273537133/1000000000000 : ℚ), (-1378453141/10000000000 : ℚ), (3089400639/50000000000 : ℚ), 2⟩,
    ⟨(136293094091/250000000000 : ℚ), (-1406734511/10000000000 : ℚ), (12665428607/200000000000 : ℚ), 2⟩,
    ⟨(21870471307/40000000000 : ℚ), (-44689967/312500000 : ℚ), (32300834153/500000000000 : ℚ), 2⟩,
    ⟨(274018963523/500000000000 : ℚ), (-724305097/5000000000 : ℚ), (65616066719/1000000000000 : ℚ), 2⟩,
    ⟨(109799547027/200000000000 : ℚ), (-1462425339/10000000000 : ℚ), (2654954049/40000000000 : ℚ), 2⟩,
    ⟨(549638894679/1000000000000 : ℚ), (-367899021/2500000000 : ℚ), (1671940419/25000000000 : ℚ), 2⟩,
    ⟨(549959861069/1000000000000 : ℚ), (-738084857/5000000000 : ℚ), (67129074649/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-369185217/2500000000 : ℚ), (16790121733/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (260960961167/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control115.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control115.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate115

namespace DiagonalRamsey.JointInheritedCertificate116
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(159099809893/500000000000 : ℚ), (43091455897243/10000000000 : ℚ), (-274492458909259/200000000000 : ℚ), 13⟩,
    ⟨(318539009561/1000000000000 : ℚ), (2377040729067/5000000000 : ℚ), (-76164558526157/500000000000 : ℚ), 10⟩,
    ⟨(319216971491/1000000000000 : ℚ), (105746549023/625000000 : ℚ), (-1367962221719/25000000000 : ℚ), 8⟩,
    ⟨(320231872307/1000000000000 : ℚ), (21263214001/250000000 : ℚ), (-1739112350319/62500000000 : ℚ), 7⟩,
    ⟨(20098829189/62500000000 : ℚ), (505543849929/10000000000 : ℚ), (-13092876883/781250000 : ℚ), 6⟩,
    ⟨(5050967263/15625000000 : ℚ), (165867641211/5000000000 : ℚ), (-11156865289551/1000000000000 : ℚ), 6⟩,
    ⟨(162634868463/500000000000 : ℚ), (2904245467/125000000 : ℚ), (-1983728405899/250000000000 : ℚ), 5⟩,
    ⟨(40949990783/125000000000 : ℚ), (85196883339/5000000000 : ℚ), (-5913473053599/1000000000000 : ℚ), 5⟩,
    ⟨(66049371843/200000000000 : ℚ), (25861776147/2000000000 : ℚ), (-570318653063/125000000000 : ℚ), 5⟩,
    ⟨(333204159087/1000000000000 : ℚ), (50372764889/5000000000 : ℚ), (-225958987589/62500000000 : ℚ), 4⟩,
    ⟨(84116175371/250000000000 : ℚ), (40070705881/5000000000 : ℚ), (-1462835854843/500000000000 : ℚ), 4⟩,
    ⟨(170010315737/500000000000 : ℚ), (32415700487/5000000000 : ℚ), (-2407987426563/1000000000000 : ℚ), 4⟩,
    ⟨(343863382511/1000000000000 : ℚ), (6646854191/1250000000 : ℚ), (-502381332829/250000000000 : ℚ), 4⟩,
    ⟨(347983697071/1000000000000 : ℚ), (44117451683/10000000000 : ℚ), (-848152608423/500000000000 : ℚ), 4⟩,
    ⟨(70474329791/200000000000 : ℚ), (36957160287/10000000000 : ℚ), (-180705355257/125000000000 : ℚ), 3⟩,
    ⟨(178508333601/500000000000 : ℚ), (124848139/40000000 : ℚ), (-1241926029359/1000000000000 : ℚ), 3⟩,
    ⟨(361907561557/1000000000000 : ℚ), (13271296441/5000000000 : ℚ), (-537062451001/500000000000 : ℚ), 3⟩,
    ⟨(91758137357/250000000000 : ℚ), (11352132407/5000000000 : ℚ), (-934267866517/1000000000000 : ℚ), 3⟩,
    ⟨(93094821067/250000000000 : ℚ), (9758683297/5000000000 : ℚ), (-816477795247/1000000000000 : ℚ), 3⟩,
    ⟨(377934885327/1000000000000 : ℚ), (421189601/250000000 : ℚ), (-716344858691/1000000000000 : ℚ), 3⟩,
    ⟨(383685968673/1000000000000 : ℚ), (14592965849/10000000000 : ℚ), (-315254015823/500000000000 : ℚ), 3⟩,
    ⟨(97404669861/250000000000 : ℚ), (3168764927/2500000000 : ℚ), (-11127390707/20000000000 : ℚ), 3⟩,
    ⟨(19785936261/50000000000 : ℚ), (110327503/100000000 : ℚ), (-122974014151/250000000000 : ℚ), 3⟩,
    ⟨(50246426307/125000000000 : ℚ), (1202237273/1250000000 : ℚ), (-27217366339/62500000000 : ℚ), 2⟩,
    ⟨(204180835943/500000000000 : ℚ), (8392202857/10000000000 : ℚ), (-77165460921/200000000000 : ℚ), 2⟩,
    ⟨(41487411481/100000000000 : ℚ), (1831228229/2500000000 : ℚ), (-85476157031/250000000000 : ℚ), 2⟩,
    ⟨(421493050183/1000000000000 : ℚ), (3195565991/5000000000 : ℚ), (-75715743099/250000000000 : ℚ), 2⟩,
    ⟨(428202532409/1000000000000 : ℚ), (5570549889/10000000000 : ℚ), (-16750444841/62500000000 : ℚ), 2⟩,
    ⟨(1359332493/3125000000 : ℚ), (2423240791/5000000000 : ℚ), (-59190542327/250000000000 : ℚ), 2⟩,
    ⟨(441828303307/1000000000000 : ℚ), (4205131511/10000000000 : ℚ), (-208649544607/1000000000000 : ℚ), 2⟩,
    ⟨(448711766303/1000000000000 : ℚ), (1817512571/5000000000 : ℚ), (-91634184107/500000000000 : ℚ), 2⟩,
    ⟨(455620203881/1000000000000 : ℚ), (625313147/2000000000 : ℚ), (-160280936377/1000000000000 : ℚ), 2⟩,
    ⟨(46253697301/100000000000 : ℚ), (2671685879/10000000000 : ℚ), (-34850314053/250000000000 : ℚ), 2⟩,
    ⟨(469445410589/1000000000000 : ℚ), (452714291/2000000000 : ℚ), (-120385942971/1000000000000 : ℚ), 2⟩,
    ⟨(29770554599/62500000000 : ℚ), (59263793/312500000 : ℚ), (-103026933407/1000000000000 : ℚ), 2⟩,
    ⟨(120792694783/250000000000 : ℚ), (1565370671/10000000000 : ℚ), (-1089320173/12500000000 : ℚ), 2⟩,
    ⟨(244977322241/500000000000 : ℚ), (1266147497/10000000000 : ℚ), (-14517611481/200000000000 : ℚ), 2⟩,
    ⟨(496664126709/1000000000000 : ℚ), (497578449/5000000000 : ℚ), (-29610568713/500000000000 : ℚ), 2⟩,
    ⟨(251641531041/500000000000 : ℚ), (749285783/10000000000 : ℚ), (-46929336511/1000000000000 : ℚ), 2⟩,
    ⟨(254897752503/500000000000 : ℚ), (262922433/5000000000 : ℚ), (-17806057077/500000000000 : ℚ), 2⟩,
    ⟨(103237153287/200000000000 : ℚ), (322504227/10000000000 : ℚ), (-12590861703/500000000000 : ℚ), 2⟩,
    ⟨(522438451671/1000000000000 : ℚ), (68619937/5000000000 : ℚ), (-972586927/62500000000 : ℚ), 2⟩,
    ⟨(528538497447/1000000000000 : ℚ), (-31710753/10000000000 : ℚ), (-1670948273/250000000000 : ℚ), 2⟩,
    ⟨(267235604109/500000000000 : ℚ), (-92942989/5000000000 : ℚ), (755111783/500000000000 : ℚ), 2⟩,
    ⟨(108044458313/200000000000 : ℚ), (-163315549/5000000000 : ℚ), (1814544801/200000000000 : ℚ), 2⟩,
    ⟨(545777892623/1000000000000 : ℚ), (-227562331/5000000000 : ℚ), (16049600079/1000000000000 : ℚ), 2⟩,
    ⟨(68890578433/125000000000 : ℚ), (-286200333/5000000000 : ℚ), (11240674571/500000000000 : ℚ), 2⟩,
    ⟨(278124807667/500000000000 : ℚ), (-169841837/2500000000 : ℚ), (14201868661/500000000000 : ℚ), 2⟩,
    ⟨(561140509689/1000000000000 : ℚ), (-388411579/5000000000 : ℚ), (33848367599/1000000000000 : ℚ), 2⟩,
    ⟨(565785527937/1000000000000 : ℚ), (-216367587/2500000000 : ℚ), (303462237/7812500000 : ℚ), 2⟩,
    ⟨(570173479821/1000000000000 : ℚ), (-945926563/10000000000 : ℚ), (43412801233/1000000000000 : ℚ), 2⟩,
    ⟨(28714689719/50000000000 : ℚ), (-1018734753/10000000000 : ℚ), (47579042207/1000000000000 : ℚ), 2⟩,
    ⟨(578136545417/1000000000000 : ℚ), (-1084371637/10000000000 : ℚ), (6420133853/125000000000 : ℚ), 2⟩,
    ⟨(36355779713/62500000000 : ℚ), (-285813739/2500000000 : ℚ), (3423484271/62500000000 : ℚ), 2⟩,
    ⟨(116990603561/200000000000 : ℚ), (-1195749679/10000000000 : ℚ), (57837846869/1000000000000 : ℚ), 2⟩,
    ⟨(146977579419/250000000000 : ℚ), (-1242173299/10000000000 : ℚ), (12112049527/200000000000 : ℚ), 2⟩,
    ⟨(590557250627/1000000000000 : ℚ), (-320700089/2500000000 : ℚ), (2518164487/40000000000 : ℚ), 2⟩,
    ⟨(118577487993/200000000000 : ℚ), (-1317866273/10000000000 : ℚ), (6502902833/100000000000 : ℚ), 2⟩,
    ⟨(29744763603/50000000000 : ℚ), (-673785297/5000000000 : ℚ), (66793134491/1000000000000 : ℚ), 2⟩,
    ⟨(596575909867/1000000000000 : ℚ), (-171509961/1250000000 : ℚ), (68253223949/1000000000000 : ℚ), 2⟩,
    ⟨(74740663073/125000000000 : ℚ), (-1391528979/10000000000 : ℚ), (34707415869/500000000000 : ℚ), 2⟩,
    ⟨(2994701027/5000000000 : ℚ), (-1406024739/10000000000 : ℚ), (4392644037/62500000000 : ℚ), 2⟩,
    ⟨(59961816733/100000000000 : ℚ), (-35391137/250000000 : ℚ), (70858855239/1000000000000 : ℚ), 2⟩,
    ⟨(299978778553/500000000000 : ℚ), (-1420442989/10000000000 : ℚ), (8893325501/125000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-355260519/2500000000 : ℚ), (71182547943/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (240489986137/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control116.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control116.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate116

namespace DiagonalRamsey.JointInheritedCertificate117
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(396331150147/1000000000000 : ℚ), (24907440792473/5000000000 : ℚ), (-987972942607647/500000000000 : ℚ), 13⟩,
    ⟨(99174219371/250000000000 : ℚ), (2750012196211/5000000000 : ℚ), (-27413983195067/125000000000 : ℚ), 10⟩,
    ⟨(397427451089/1000000000000 : ℚ), (97984585227/500000000 : ℚ), (-39390608548701/500000000000 : ℚ), 8⟩,
    ⟨(199260555473/500000000000 : ℚ), (123316361851/1250000000 : ℚ), (-20031840970781/500000000000 : ℚ), 7⟩,
    ⟨(399975222333/1000000000000 : ℚ), (587333994871/10000000000 : ℚ), (-24130642943571/1000000000000 : ℚ), 7⟩,
    ⟨(401786282167/1000000000000 : ℚ), (77217446059/2000000000 : ℚ), (-16065473874169/1000000000000 : ℚ), 6⟩,
    ⟨(50493740931/125000000000 : ℚ), (4233041013/156250000 : ℚ), (-2856730130629/250000000000 : ℚ), 6⟩,
    ⟨(101615236441/250000000000 : ℚ), (24884288469/1250000000 : ℚ), (-8516770788511/1000000000000 : ℚ), 5⟩,
    ⟨(409313287853/1000000000000 : ℚ), (151380983041/10000000000 : ℚ), (-32859942621/5000000000 : ℚ), 5⟩,
    ⟨(412500082171/1000000000000 : ℚ), (29547024551/2500000000 : ℚ), (-2604231339697/500000000000 : ℚ), 4⟩,
    ⟨(416013651453/1000000000000 : ℚ), (94217133371/10000000000 : ℚ), (-4215729908467/1000000000000 : ℚ), 4⟩,
    ⟨(419845531203/1000000000000 : ℚ), (9547977103/1250000000 : ℚ), (-867657501139/250000000000 : ℚ), 4⟩,
    ⟨(211993245043/500000000000 : ℚ), (31394462687/5000000000 : ℚ), (-2897196155783/1000000000000 : ℚ), 4⟩,
    ⟨(428426552169/1000000000000 : ℚ), (26105834819/5000000000 : ℚ), (-489301394191/200000000000 : ℚ), 4⟩,
    ⟨(108288755239/250000000000 : ℚ), (21919379983/5000000000 : ℚ), (-2085903860613/1000000000000 : ℚ), 3⟩,
    ⟨(438160505149/1000000000000 : ℚ), (4638965243/1250000000 : ℚ), (-1792909847029/1000000000000 : ℚ), 3⟩,
    ⟨(443430946099/1000000000000 : ℚ), (31636971357/10000000000 : ℚ), (-310329005637/200000000000 : ℚ), 3⟩,
    ⟨(112238411713/250000000000 : ℚ), (27130818467/10000000000 : ℚ), (-5275907949/3906250000 : ℚ), 3⟩,
    ⟨(454715302739/1000000000000 : ℚ), (23384720367/10000000000 : ℚ), (-1181410413347/1000000000000 : ℚ), 3⟩,
    ⟨(18428081337/40000000000 : ℚ), (20242692823/10000000000 : ℚ), (-103762968593/100000000000 : ℚ), 3⟩,
    ⟨(14590606761/31250000000 : ℚ), (17586253617/10000000000 : ℚ), (-228612711019/250000000000 : ℚ), 3⟩,
    ⟨(236646260741/500000000000 : ℚ), (7662080053/5000000000 : ℚ), (-161626646143/200000000000 : ℚ), 3⟩,
    ⟨(3748952713/7812500000 : ℚ), (13385273721/10000000000 : ℚ), (-715748756103/1000000000000 : ℚ), 3⟩,
    ⟨(486603857741/1000000000000 : ℚ), (2928377233/2500000000 : ℚ), (-634979068077/1000000000000 : ℚ), 2⟩,
    ⟨(98698004139/200000000000 : ℚ), (10264199321/10000000000 : ℚ), (-563969439897/1000000000000 : ℚ), 2⟩,
    ⟨(500507846757/1000000000000 : ℚ), (9001444381/10000000000 : ℚ), (-62652743261/125000000000 : ℚ), 2⟩,
    ⟨(507640429369/1000000000000 : ℚ), (3948073081/5000000000 : ℚ), (-445516301011/1000000000000 : ℚ), 2⟩,
    ⟨(257435292757/500000000000 : ℚ), (3462269187/5000000000 : ℚ), (-395850462321/1000000000000 : ℚ), 2⟩,
    ⟨(104436179423/200000000000 : ℚ), (6067071907/10000000000 : ℚ), (-175697777939/500000000000 : ℚ), 2⟩,
    ⟨(132388438247/250000000000 : ℚ), (2653780759/5000000000 : ℚ), (-77865325799/250000000000 : ℚ), 2⟩,
    ⟨(6712142391/12500000000 : ℚ), (4632526171/10000000000 : ℚ), (-275469246957/1000000000000 : ℚ), 2⟩,
    ⟨(544415942249/1000000000000 : ℚ), (503834311/1250000000 : ℚ), (-242931824741/1000000000000 : ℚ), 2⟩,
    ⟨(13796736783/25000000000 : ℚ), (873125013/2500000000 : ℚ), (-213435876051/1000000000000 : ℚ), 2⟩,
    ⟨(55931402229/100000000000 : ℚ), (300996063/1000000000 : ℚ), (-93314769491/500000000000 : ℚ), 2⟩,
    ⟨(566731660581/1000000000000 : ℚ), (2576222097/10000000000 : ℚ), (-20276470669/125000000000 : ℚ), 2⟩,
    ⟨(114820903291/200000000000 : ℚ), (546363153/2500000000 : ℚ), (-139923870369/1000000000000 : ℚ), 2⟩,
    ⟨(116282965611/200000000000 : ℚ), (916328079/5000000000 : ℚ), (-59771339769/500000000000 : ℚ), 2⟩,
    ⟨(588644984201/1000000000000 : ℚ), (756768561/5000000000 : ℚ), (-50437468383/500000000000 : ℚ), 2⟩,
    ⟨(595777566813/1000000000000 : ℚ), (306097379/2500000000 : ℚ), (-83752714839/1000000000000 : ℚ), 2⟩,
    ⟨(4822363143/8000000000 : ℚ), (962005897/10000000000 : ℚ), (-68029629539/1000000000000 : ℚ), 2⟩,
    ⟨(609681555829/1000000000000 : ℚ), (361801057/5000000000 : ℚ), (-5357769993/100000000000 : ℚ), 2⟩,
    ⟨(123283893261/200000000000 : ℚ), (25337743/500000000 : ℚ), (-40284733411/1000000000000 : ℚ), 2⟩,
    ⟨(622992892087/1000000000000 : ℚ), (309349623/10000000000 : ℚ), (-14026068559/500000000000 : ℚ), 2⟩,
    ⟨(629385997217/1000000000000 : ℚ), (6476857/500000000 : ℚ), (-1679307947/100000000000 : ℚ), 2⟩,
    ⟨(127116676029/200000000000 : ℚ), (-34303171/10000000000 : ℚ), (-3215469807/500000000000 : ℚ), 2⟩,
    ⟨(641570110831/1000000000000 : ℚ), (-22949253/1250000000 : ℚ), (3102004999/1000000000000 : ℚ), 2⟩,
    ⟨(647331766717/1000000000000 : ℚ), (-159793153/5000000000 : ℚ), (11865692553/1000000000000 : ℚ), 2⟩,
    ⟨(652854467471/1000000000000 : ℚ), (-13855661/312500000 : ℚ), (19913225683/1000000000000 : ℚ), 2⟩,
    ⟨(658124908421/1000000000000 : ℚ), (-138987177/2500000000 : ℚ), (13645841031/500000000000 : ℚ), 2⟩,
    ⟨(331565196307/500000000000 : ℚ), (-658144107/10000000000 : ℚ), (34042807373/1000000000000 : ℚ), 2⟩,
    ⟨(3339294307/5000000000 : ℚ), (-375360551/5000000000 : ℚ), (20101804733/500000000000 : ℚ), 2⟩,
    ⟨(168074730871/250000000000 : ℚ), (-834343727/10000000000 : ℚ), (11451717469/250000000000 : ℚ), 2⟩,
    ⟨(676439882367/1000000000000 : ℚ), (-909596259/10000000000 : ℚ), (25440790777/500000000000 : ℚ), 2⟩,
    ⟨(170067940529/250000000000 : ℚ), (-976991761/10000000000 : ℚ), (27726663767/500000000000 : ℚ), 2⟩,
    ⟨(341892665699/500000000000 : ℚ), (-51848969/500000000 : ℚ), (29772302387/500000000000 : ℚ), 2⟩,
    ⟨(686972125717/1000000000000 : ℚ), (-544975297/5000000000 : ℚ), (1263502071/20000000000 : ℚ), 2⟩,
    ⟨(137964893561/200000000000 : ℚ), (-1136244529/10000000000 : ℚ), (66361945459/1000000000000 : ℚ), 2⟩,
    ⟨(692335486121/1000000000000 : ℚ), (-588076243/5000000000 : ℚ), (69119888107/1000000000000 : ℚ), 2⟩,
    ⟨(347249565701/500000000000 : ℚ), (-1209921751/10000000000 : ℚ), (71461497233/1000000000000 : ℚ), 2⟩,
    ⟨(696310191237/1000000000000 : ℚ), (-1237758781/10000000000 : ℚ), (18349322859/250000000000 : ℚ), 2⟩,
    ⟨(697764302623/1000000000000 : ℚ), (-157478979/1250000000 : ℚ), (74935862389/1000000000000 : ℚ), 2⟩,
    ⟨(8735724531/12500000000 : ℚ), (-1276273069/10000000000 : ℚ), (19020992749/250000000000 : ℚ), 2⟩,
    ⟨(139917707217/200000000000 : ℚ), (-643590109/5000000000 : ℚ), (19211655963/250000000000 : ℚ), 2⟩,
    ⟨(349977131711/500000000000 : ℚ), (-161577221/1250000000 : ℚ), (19306781997/250000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-1293296713/10000000000 : ℚ), (9659331577/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (194479071833/1000000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control117.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control117.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate117

namespace DiagonalRamsey.JointInheritedCertificate118
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(246044207691/500000000000 : ℚ), (12201960680553/2000000000 : ℚ), (-1502133184341917/500000000000 : ℚ), 13⟩,
    ⟨(492459252509/1000000000000 : ℚ), (6742231545189/10000000000 : ℚ), (-20840734334913/62500000000 : ℚ), 10⟩,
    ⟨(61650004173/125000000000 : ℚ), (601421216057/2500000000 : ℚ), (-119786735575321/1000000000000 : ℚ), 8⟩,
    ⟨(494308973401/1000000000000 : ℚ), (48526521609/400000000 : ℚ), (-15230010797693/250000000000 : ℚ), 7⟩,
    ⟨(495783401027/1000000000000 : ℚ), (144739735407/2000000000 : ℚ), (-3669529018759/100000000000 : ℚ), 7⟩,
    ⟨(124404941059/250000000000 : ℚ), (238381765343/5000000000 : ℚ), (-12216499098333/500000000000 : ℚ), 6⟩,
    ⟨(124953409767/250000000000 : ℚ), (335318389713/10000000000 : ℚ), (-4345153317907/250000000000 : ℚ), 6⟩,
    ⟨(502359740287/1000000000000 : ℚ), (61749909527/2500000000 : ℚ), (-1295614690971/100000000000 : ℚ), 5⟩,
    ⟨(505251934111/1000000000000 : ℚ), (94149369197/5000000000 : ℚ), (-999946722981/100000000000 : ℚ), 5⟩,
    ⟨(254241626497/500000000000 : ℚ), (1473928007/100000000 : ℚ), (-7926566170469/1000000000000 : ℚ), 5⟩,
    ⟨(512045912403/1000000000000 : ℚ), (117810814203/10000000000 : ℚ), (-6417452425899/1000000000000 : ℚ), 4⟩,
    ⟨(515931329581/1000000000000 : ℚ), (23942663183/2500000000 : ℚ), (-2642435870661/500000000000 : ℚ), 4⟩,
    ⟨(260065072109/500000000000 : ℚ), (39471311173/5000000000 : ℚ), (-1103330849161/250000000000 : ℚ), 4⟩,
    ⟨(524632241001/1000000000000 : ℚ), (65828692891/10000000000 : ℚ), (-3728426880387/1000000000000 : ℚ), 4⟩,
    ⟨(105885354797/200000000000 : ℚ), (27715236193/5000000000 : ℚ), (-795131951329/250000000000 : ℚ), 3⟩,
    ⟨(6681277409/12500000000 : ℚ), (4706206829/1000000000 : ℚ), (-2735451951439/1000000000000 : ℚ), 3⟩,
    ⟨(539846270077/1000000000000 : ℚ), (4023985383/1000000000 : ℚ), (-2369055270839/1000000000000 : ℚ), 3⟩,
    ⟨(272723065853/500000000000 : ℚ), (6923008253/2000000000 : ℚ), (-4031030989/1953125000 : ℚ), 3⟩,
    ⟨(11025765741/20000000000 : ℚ), (29931072859/10000000000 : ℚ), (-90354211511/50000000000 : ℚ), 3⟩,
    ⟨(278679330923/500000000000 : ℚ), (5199183481/2000000000 : ℚ), (-158899039797/100000000000 : ℚ), 3⟩,
    ⟨(140910658007/250000000000 : ℚ), (2266360041/1000000000 : ℚ), (-175280985747/125000000000 : ℚ), 3⟩,
    ⟨(570125058961/1000000000000 : ℚ), (19821612827/10000000000 : ℚ), (-620584311621/500000000000 : ℚ), 3⟩,
    ⟨(72098790739/125000000000 : ℚ), (17382154541/10000000000 : ℚ), (-275324959163/250000000000 : ℚ), 3⟩,
    ⟨(583622375669/1000000000000 : ℚ), (15275934529/10000000000 : ℚ), (-195823133993/200000000000 : ℚ), 2⟩,
    ⟨(295302374613/500000000000 : ℚ), (13447709427/10000000000 : ℚ), (-871795038997/1000000000000 : ℚ), 2⟩,
    ⟨(74715078179/125000000000 : ℚ), (94824203/80000000 : ℚ), (-9713240283/12500000000 : ℚ), 2⟩,
    ⟨(604952861519/1000000000000 : ℚ), (261395159/250000000 : ℚ), (-693051510949/1000000000000 : ℚ), 2⟩,
    ⟨(612284034397/1000000000000 : ℚ), (369061879/400000000 : ℚ), (-30912345379/50000000000 : ℚ), 2⟩,
    ⟨(154924120657/250000000000 : ℚ), (8140942649/10000000000 : ℚ), (-137845900709/250000000000 : ℚ), 2⟩,
    ⟨(25086893959/40000000000 : ℚ), (7178840533/10000000000 : ℚ), (-491410418547/1000000000000 : ℚ), 2⟩,
    ⟨(634693623421/1000000000000 : ℚ), (3161714077/5000000000 : ℚ), (-43744610629/100000000000 : ℚ), 2⟩,
    ⟨(642242186557/1000000000000 : ℚ), (1390150071/2500000000 : ℚ), (-194373768939/500000000000 : ℚ), 2⟩,
    ⟨(324899926617/500000000000 : ℚ), (4878460737/10000000000 : ℚ), (-344684634789/1000000000000 : ℚ), 2⟩,
    ⟨(657348416371/1000000000000 : ℚ), (4266927283/10000000000 : ℚ), (-76180113299/250000000000 : ℚ), 2⟩,
    ⟨(664869690817/1000000000000 : ℚ), (1858708021/5000000000 : ℚ), (-268395245573/1000000000000 : ℚ), 2⟩,
    ⟨(168086389291/250000000000 : ℚ), (3222587669/10000000000 : ℚ), (-2941420233/12500000000 : ℚ), 2⟩,
    ⟨(135951601079/200000000000 : ℚ), (2776141923/10000000000 : ℚ), (-41026823451/200000000000 : ℚ), 2⟩,
    ⟨(687089178273/1000000000000 : ℚ), (2372650419/10000000000 : ℚ), (-177560726257/1000000000000 : ℚ), 2⟩,
    ⟨(17358035359/25000000000 : ℚ), (2007419701/10000000000 : ℚ), (-7616794823/50000000000 : ℚ), 2⟩,
    ⟨(350718645283/500000000000 : ℚ), (335275711/2000000000 : ℚ), (-64617395409/500000000000 : ℚ), 2⟩,
    ⟨(354209832061/500000000000 : ℚ), (1375984833/10000000000 : ℚ), (-6753782223/62500000000 : ℚ), 2⟩,
    ⟨(715251713879/1000000000000 : ℚ), (1103148043/10000000000 : ℚ), (-88640146813/1000000000000 : ℚ), 2⟩,
    ⟨(721916980831/1000000000000 : ℚ), (855164781/10000000000 : ℚ), (-70821407909/1000000000000 : ℚ), 2⟩,
    ⟨(182099851941/250000000000 : ℚ), (39354041/625000000 : ℚ), (-27234939437/500000000000 : ℚ), 2⟩,
    ⟨(367341688973/500000000000 : ℚ), (10614121/250000000 : ℚ), (-616666317/15625000000 : ℚ), 2⟩,
    ⟨(740753752741/1000000000000 : ℚ), (238031741/10000000000 : ℚ), (-25706304229/1000000000000 : ℚ), 2⟩,
    ⟨(373297954043/500000000000 : ℚ), (13689719/2000000000 : ℚ), (-2619057763/200000000000 : ℚ), 2⟩,
    ⟨(150439153943/200000000000 : ℚ), (-21403007/2500000000 : ℚ), (-775211821/500000000000 : ℚ), 2⟩,
    ⟨(23673120221/31250000000 : ℚ), (-22541159/1000000000 : ℚ), (562643229/62500000000 : ℚ), 2⟩,
    ⟨(762615265807/1000000000000 : ℚ), (-352065487/10000000000 : ℚ), (2328590749/125000000000 : ℚ), 2⟩,
    ⟨(767409798791/1000000000000 : ℚ), (-466560029/10000000000 : ℚ), (27387507911/1000000000000 : ℚ), 2⟩,
    ⟨(385955947787/500000000000 : ℚ), (-284883471/5000000000 : ℚ), (4416348467/125000000000 : ℚ), 2⟩,
    ⟨(77611071021/100000000000 : ℚ), (-662455767/10000000000 : ℚ), (5313111271/125000000000 : ℚ), 2⟩,
    ⟨(779996127389/1000000000000 : ℚ), (-372652227/5000000000 : ℚ), (24475435889/500000000000 : ℚ), 2⟩,
    ⟨(391779393399/500000000000 : ℚ), (-163781683/2000000000 : ℚ), (27352498911/500000000000 : ℚ), 2⟩,
    ⟨(9834876321/12500000000 : ℚ), (-3535153/40000000 : ℚ), (3737446843/62500000000 : ℚ), 2⟩,
    ⟨(157936459901/200000000000 : ℚ), (-940396313/10000000000 : ℚ), (32130584601/500000000000 : ℚ), 2⟩,
    ⟨(198057100181/250000000000 : ℚ), (-24728057/250000000 : ℚ), (68115153887/1000000000000 : ℚ), 2⟩,
    ⟨(198605568889/250000000000 : ℚ), (-515148917/5000000000 : ℚ), (14276340283/200000000000 : ℚ), 2⟩,
    ⟨(159251727753/200000000000 : ℚ), (-212840113/2000000000 : ℚ), (74078115049/1000000000000 : ℚ), 2⟩,
    ⟨(79773306639/100000000000 : ℚ), (-54552859/500000000 : ℚ), (76218572169/1000000000000 : ℚ), 2⟩,
    ⟨(99855250801/125000000000 : ℚ), (-1111046083/10000000000 : ℚ), (77814259727/1000000000000 : ℚ), 2⟩,
    ⟨(799582787283/1000000000000 : ℚ), (-1798879/16000000 : ℚ), (2464796211/31250000000 : ℚ), 2⟩,
    ⟨(79995362441/100000000000 : ℚ), (-1130904323/10000000000 : ℚ), (79401721399/1000000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1131728927/10000000000 : ℚ), (79467687823/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (139122627961/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control118.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control118.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate118

namespace DiagonalRamsey.JointInheritedCertificate129
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(234245955167/1000000000000 : ℚ), (9233765516051/10000000000 : ℚ), (-108518834868103/500000000000 : ℚ), 11⟩,
    ⟨(29422561401/125000000000 : ℚ), (1000670404471/10000000000 : ℚ), (-12004468860483/500000000000 : ℚ), 8⟩,
    ⟨(237638637087/1000000000000 : ℚ), (34671510551/1000000000 : ℚ), (-4283300983573/500000000000 : ℚ), 6⟩,
    ⟨(120499322813/500000000000 : ℚ), (168659371151/10000000000 : ℚ), (-862405260663/200000000000 : ℚ), 5⟩,
    ⟨(49085631621/200000000000 : ℚ), (19311675169/2000000000 : ℚ), (-2561099586707/1000000000000 : ℚ), 5⟩,
    ⟨(250884515897/1000000000000 : ℚ), (7598245313/1250000000 : ℚ), (-837345882697/500000000000 : ℚ), 4⟩,
    ⟨(51463034259/200000000000 : ℚ), (8137913701/2000000000 : ℚ), (-291191299251/250000000000 : ℚ), 4⟩,
    ⟨(264658193571/1000000000000 : ℚ), (5681902889/2000000000 : ℚ), (-211176077823/250000000000 : ℚ), 3⟩,
    ⟨(1065792443/3906250000 : ℚ), (638589193/312500000 : ℚ), (-315329058739/500000000000 : ℚ), 3⟩,
    ⟨(14089518197/50000000000 : ℚ), (1876336619/1250000000 : ℚ), (-480416925779/1000000000000 : ℚ), 3⟩,
    ⟨(145707259933/500000000000 : ℚ), (11183680537/10000000000 : ℚ), (-74171146303/200000000000 : ℚ), 3⟩,
    ⟨(37702830913/125000000000 : ℚ), (1680319691/2000000000 : ℚ), (-721115907/2500000000 : ℚ), 3⟩,
    ⟨(62463287281/200000000000 : ℚ), (6327907149/10000000000 : ℚ), (-224849968903/1000000000000 : ℚ), 2⟩,
    ⟨(161696450067/500000000000 : ℚ), (2374447029/5000000000 : ℚ), (-10918929387/62500000000 : ℚ), 2⟩,
    ⟨(83686341523/250000000000 : ℚ), (1762081517/5000000000 : ℚ), (-16803928373/125000000000 : ℚ), 2⟩,
    ⟨(13850580153/40000000000 : ℚ), (1279413173/5000000000 : ℚ), (-101583472537/1000000000000 : ℚ), 2⟩,
    ⟨(17891968887/50000000000 : ℚ), (893595517/5000000000 : ℚ), (-2326064799/31250000000 : ℚ), 2⟩,
    ⟨(23084907217/62500000000 : ℚ), (1162828301/10000000000 : ℚ), (-12936019867/250000000000 : ℚ), 2⟩,
    ⟨(38071098143/100000000000 : ℚ), (130466813/2000000000 : ℚ), (-16303659713/500000000000 : ℚ), 2⟩,
    ⟨(9794686129/25000000000 : ℚ), (231300007/10000000000 : ℚ), (-2043886273/125000000000 : ℚ), 2⟩,
    ⟨(402481234261/1000000000000 : ℚ), (-29587663/2500000000 : ℚ), (-2469691669/1000000000000 : ℚ), 2⟩,
    ⟨(206344680849/500000000000 : ℚ), (-205080981/5000000000 : ℚ), (4710484493/500000000000 : ℚ), 2⟩,
    ⟨(3378508141/8000000000 : ℚ), (-654382157/10000000000 : ℚ), (19615008341/1000000000000 : ℚ), 2⟩,
    ⟨(431261016157/1000000000000 : ℚ), (-858827947/10000000000 : ℚ), (28339001097/1000000000000 : ℚ), 2⟩,
    ⟨(439445687993/1000000000000 : ℚ), (-205899391/2000000000 : ℚ), (17884072211/500000000000 : ℚ), 2⟩,
    ⟨(446788710269/1000000000000 : ℚ), (-1171006883/10000000000 : ℚ), (5254757873/125000000000 : ℚ), 2⟩,
    ⟨(453219365667/1000000000000 : ℚ), (-1286913457/10000000000 : ℚ), (47253526047/1000000000000 : ℚ), 2⟩,
    ⟨(22933786173/50000000000 : ℚ), (-1379942113/10000000000 : ℚ), (25747466477/500000000000 : ℚ), 2⟩,
    ⟨(463105235939/1000000000000 : ℚ), (-1452157207/10000000000 : ℚ), (54823152661/1000000000000 : ℚ), 2⟩,
    ⟨(466465244477/1000000000000 : ℚ), (-94067811/625000000 : ℚ), (447524327/7812500000 : ℚ), 2⟩,
    ⟨(117180847589/250000000000 : ℚ), (-61592057/400000000 : ℚ), (58906422607/1000000000000 : ℚ), 2⟩,
    ⟨(469857926397/1000000000000 : ℚ), (-311398533/2000000000 : ℚ), (5971318987/100000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-155913383/1000000000 : ℚ), (29906904709/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (301328834669/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control129.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control129.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate129

namespace DiagonalRamsey.JointInheritedCertificate130
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120190019681/500000000000 : ℚ), (582692399429/625000000 : ℚ), (-14054293222131/62500000000 : ℚ), 11⟩,
    ⟨(1932265437/8000000000 : ℚ), (1010527941673/10000000000 : ℚ), (-24875257360727/1000000000000 : ℚ), 8⟩,
    ⟨(121914177391/500000000000 : ℚ), (350216992777/10000000000 : ℚ), (-1109468937381/125000000000 : ℚ), 6⟩,
    ⟨(247243461039/1000000000000 : ℚ), (85205590517/5000000000 : ℚ), (-4467677493783/1000000000000 : ℚ), 5⟩,
    ⟨(125872804529/500000000000 : ℚ), (97591038189/10000000000 : ℚ), (-1326795586557/500000000000 : ℚ), 5⟩,
    ⟨(257291440691/1000000000000 : ℚ), (30727830559/5000000000 : ℚ), (-1735220795403/1000000000000 : ℚ), 4⟩,
    ⟨(65956886637/250000000000 : ℚ), (10287889071/2500000000 : ℚ), (-1206919785591/1000000000000 : ℚ), 4⟩,
    ⟨(271290980357/1000000000000 : ℚ), (28742183497/10000000000 : ℚ), (-54708703683/62500000000 : ℚ), 3⟩,
    ⟨(279609865171/1000000000000 : ℚ), (20682035241/10000000000 : ℚ), (-653602715447/1000000000000 : ℚ), 3⟩,
    ⟨(14435204279/50000000000 : ℚ), (15198796643/10000000000 : ℚ), (-99595470301/200000000000 : ℚ), 3⟩,
    ⟨(298486059271/1000000000000 : ℚ), (11329555167/10000000000 : ℚ), (-192251786173/500000000000 : ℚ), 3⟩,
    ⟨(308861580491/1000000000000 : ℚ), (8516483473/10000000000 : ℚ), (-149582404277/500000000000 : ℚ), 3⟩,
    ⟨(319730727297/1000000000000 : ℚ), (3209786481/5000000000 : ℚ), (-116660490399/500000000000 : ℚ), 2⟩,
    ⟨(66197764773/200000000000 : ℚ), (2411435357/5000000000 : ℚ), (-45353616977/250000000000 : ℚ), 2⟩,
    ⟨(34252744857/100000000000 : ℚ), (3584481021/10000000000 : ℚ), (-139742221837/1000000000000 : ℚ), 2⟩,
    ⟨(88558869537/250000000000 : ℚ), (1304240967/5000000000 : ℚ), (-2644077151/25000000000 : ℚ), 2⟩,
    ⟨(2928001263/8000000000 : ℚ), (1828448943/10000000000 : ℚ), (-77689338459/1000000000000 : ℚ), 2⟩,
    ⟨(377708187453/1000000000000 : ℚ), (1197424547/10000000000 : ℚ), (-54236537147/1000000000000 : ℚ), 2⟩,
    ⟨(194623406079/500000000000 : ℚ), (340807731/5000000000 : ℚ), (-17232605663/500000000000 : ℚ), 2⟩,
    ⟨(200252454363/500000000000 : ℚ), (2563223/100000000 : ℚ), (-707110649/40000000000 : ℚ), 2⟩,
    ⟨(102843513883/250000000000 : ℚ), (-48376177/5000000000 : ℚ), (-3349629131/1000000000000 : ℚ), 2⟩,
    ⟨(26359348547/62500000000 : ℚ), (-195660861/5000000000 : ℚ), (2229444071/250000000000 : ℚ), 2⟩,
    ⟨(431531550443/1000000000000 : ℚ), (-637764977/10000000000 : ℚ), (3885958623/200000000000 : ℚ), 2⟩,
    ⟨(440625770853/1000000000000 : ℚ), (-26375029/312500000 : ℚ), (5684353313/200000000000 : ℚ), 2⟩,
    ⟨(224472327833/500000000000 : ℚ), (-635067/6250000 : ℚ), (36075781371/1000000000000 : ℚ), 2⟩,
    ⟨(18256323579/40000000000 : ℚ), (-579382163/5000000000 : ℚ), (42532884483/1000000000000 : ℚ), 2⟩,
    ⟨(115736048833/250000000000 : ℚ), (-637788653/5000000000 : ℚ), (11975526987/250000000000 : ℚ), 2⟩,
    ⟨(93698005393/200000000000 : ℚ), (-136930997/1000000000 : ℚ), (261335903/5000000000 : ℚ), 2⟩,
    ⟨(59124021873/125000000000 : ℚ), (-1442056171/10000000000 : ℚ), (27845767511/500000000000 : ℚ), 2⟩,
    ⟨(238203640621/500000000000 : ℚ), (-186920527/1250000000 : ℚ), (58222021789/1000000000000 : ℚ), 2⟩,
    ⟨(239351228199/500000000000 : ℚ), (-1530325819/10000000000 : ℚ), (11978323431/200000000000 : ℚ), 2⟩,
    ⟨(239927798331/500000000000 : ℚ), (-386909293/2500000000 : ℚ), (15180328099/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1549793237/10000000000 : ℚ), (59399207/976562500 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (74419790803/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control130.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control130.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate130

namespace DiagonalRamsey.JointInheritedCertificate131
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252910541673/1000000000000 : ℚ), (9513362740187/10000000000 : ℚ), (-120702298370229/500000000000 : ℚ), 11⟩,
    ⟨(127049813967/500000000000 : ℚ), (1031532054673/10000000000 : ℚ), (-5340928157457/200000000000 : ℚ), 8⟩,
    ⟨(128233174453/500000000000 : ℚ), (357680300229/10000000000 : ℚ), (-952862702707/100000000000 : ℚ), 6⟩,
    ⟨(64996977943/250000000000 : ℚ), (174145858127/10000000000 : ℚ), (-1199107595607/250000000000 : ℚ), 5⟩,
    ⟨(66157600489/250000000000 : ℚ), (99793466139/10000000000 : ℚ), (-712244816581/250000000000 : ℚ), 5⟩,
    ⟨(270349109741/1000000000000 : ℚ), (62884674079/10000000000 : ℚ), (-1863119599977/1000000000000 : ℚ), 4⟩,
    ⟨(277088960843/1000000000000 : ℚ), (10534477/2500000 : ℚ), (-324005543877/250000000000 : ℚ), 4⟩,
    ⟨(284785046813/1000000000000 : ℚ), (29452879497/10000000000 : ℚ), (-188024039477/200000000000 : ℚ), 3⟩,
    ⟨(58672650027/200000000000 : ℚ), (10605225891/5000000000 : ℚ), (-351074284897/500000000000 : ℚ), 3⟩,
    ⟨(151370479011/500000000000 : ℚ), (15601199839/10000000000 : ℚ), (-16723697189/31250000000 : ℚ), 3⟩,
    ⟨(156413929011/500000000000 : ℚ), (5820920813/5000000000 : ℚ), (-413427505951/1000000000000 : ℚ), 3⟩,
    ⟨(80881701943/250000000000 : ℚ), (175252051/200000000 : ℚ), (-80477068037/250000000000 : ℚ), 3⟩,
    ⟨(167367385269/500000000000 : ℚ), (6616085119/10000000000 : ℚ), (-31415553233/125000000000 : ℚ), 2⟩,
    ⟨(43292975939/125000000000 : ℚ), (4981564719/10000000000 : ℚ), (-195708777291/1000000000000 : ℚ), 2⟩,
    ⟨(358242117321/1000000000000 : ℚ), (371395179/1000000000 : ℚ), (-151084968773/1000000000000 : ℚ), 2⟩,
    ⟨(185157556369/500000000000 : ℚ), (1357560787/5000000000 : ℚ), (-114723873319/1000000000000 : ℚ), 2⟩,
    ⟨(382446524217/1000000000000 : ℚ), (1917091311/10000000000 : ℚ), (-16941023789/200000000000 : ℚ), 2⟩,
    ⟨(197259759817/500000000000 : ℚ), (1271777179/10000000000 : ℚ), (-59648554947/1000000000000 : ℚ), 2⟩,
    ⟨(406417829443/1000000000000 : ℚ), (372278307/5000000000 : ℚ), (-481803979/12500000000 : ℚ), 2⟩,
    ⟨(418026866417/1000000000000 : ℚ), (19381869/625000000 : ℚ), (-20642174493/1000000000000 : ℚ), 2⟩,
    ⟨(429234829183/1000000000000 : ℚ), (-5033073/1000000000 : ℚ), (-5377617149/1000000000000 : ℚ), 2⟩,
    ⟨(439933778933/1000000000000 : ℚ), (-350839293/10000000000 : ℚ), (749863/97656250 : ℚ), 2⟩,
    ⟨(112505169733/250000000000 : ℚ), (-602074329/10000000000 : ℚ), (2356950227/125000000000 : ℚ), 2⟩,
    ⟨(22969919341/50000000000 : ℚ), (-162434517/2000000000 : ℚ), (28407344517/1000000000000 : ℚ), 2⟩,
    ⟨(233988295071/500000000000 : ℚ), (-246845643/2500000000 : ℚ), (18265267881/500000000000 : ℚ), 2⟩,
    ⟨(29729542257/62500000000 : ℚ), (-1132519111/10000000000 : ℚ), (5422218717/125000000000 : ℚ), 2⟩,
    ⟨(241206263607/500000000000 : ℚ), (-1251292587/10000000000 : ℚ), (2453354603/50000000000 : ℚ), 2⟩,
    ⟨(488131234999/1000000000000 : ℚ), (-1346549003/10000000000 : ℚ), (53689387567/1000000000000 : ℚ), 2⟩,
    ⟨(492773725183/1000000000000 : ℚ), (-142044539/1000000000 : ℚ), (28656769817/500000000000 : ℚ), 2⟩,
    ⟨(496295288049/1000000000000 : ℚ), (-737288679/5000000000 : ℚ), (7498813129/125000000000 : ℚ), 2⟩,
    ⟨(498662009021/1000000000000 : ℚ), (-1510070297/10000000000 : ℚ), (61756189179/1000000000000 : ℚ), 2⟩,
    ⟨(249925547641/500000000000 : ℚ), (-1527642031/10000000000 : ℚ), (15658366953/250000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-764915199/5000000000 : ℚ), (62742869883/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (290217505921/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control131.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control131.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate131

namespace DiagonalRamsey.JointInheritedCertificate132
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66385462139/250000000000 : ℚ), (38955021531069/10000000000 : ℚ), (-1035469028895431/1000000000000 : ℚ), 13⟩,
    ⟨(265848308379/1000000000000 : ℚ), (4295776113827/10000000000 : ℚ), (-22985121450587/200000000000 : ℚ), 10⟩,
    ⟨(133230244869/500000000000 : ℚ), (305556506089/2000000000 : ℚ), (-41282133869071/1000000000000 : ℚ), 8⟩,
    ⟨(267376917833/1000000000000 : ℚ), (191838745871/2500000000 : ℚ), (-20992605625343/1000000000000 : ℚ), 7⟩,
    ⟨(67148846227/250000000000 : ℚ), (227834368449/5000000000 : ℚ), (-12643004750401/1000000000000 : ℚ), 7⟩,
    ⟨(270112955571/1000000000000 : ℚ), (298695327743/10000000000 : ℚ), (-2104112130947/250000000000 : ℚ), 6⟩,
    ⟨(13596298693/50000000000 : ℚ), (208967318247/10000000000 : ℚ), (-5985549760791/1000000000000 : ℚ), 5⟩,
    ⟨(54806014411/200000000000 : ℚ), (153075238549/10000000000 : ℚ), (-4460380217841/1000000000000 : ℚ), 5⟩,
    ⟨(691050453/2500000000 : ℚ), (23205325599/2000000000 : ℚ), (-3441079622363/1000000000000 : ℚ), 5⟩,
    ⟨(17443158957/62500000000 : ℚ), (90285401257/10000000000 : ℚ), (-1363179480931/500000000000 : ℚ), 4⟩,
    ⟨(35254340657/125000000000 : ℚ), (2869172203/400000000 : ℚ), (-551481823257/250000000000 : ℚ), 4⟩,
    ⟨(142622817119/500000000000 : ℚ), (57950642509/10000000000 : ℚ), (-453810974523/250000000000 : ℚ), 4⟩,
    ⟨(144357767449/500000000000 : ℚ), (47467483919/10000000000 : ℚ), (-757249627573/500000000000 : ℚ), 4⟩,
    ⟨(292436067941/1000000000000 : ℚ), (983194037/250000000 : ℚ), (-159757092409/125000000000 : ℚ), 4⟩,
    ⟨(148199135139/500000000000 : ℚ), (32897578787/10000000000 : ℚ), (-544401062763/500000000000 : ℚ), 3⟩,
    ⟨(37574074577/125000000000 : ℚ), (27741935617/10000000000 : ℚ), (-467478409041/500000000000 : ℚ), 3⟩,
    ⟨(61001788491/200000000000 : ℚ), (2944311731/1250000000 : ℚ), (-808199421521/1000000000000 : ℚ), 3⟩,
    ⟨(309636668431/1000000000000 : ℚ), (5028658353/2500000000 : ℚ), (-70251592859/100000000000 : ℚ), 3⟩,
    ⟨(78616156487/250000000000 : ℚ), (17260325363/10000000000 : ℚ), (-613472556427/1000000000000 : ℚ), 3⟩,
    ⟨(9983787001/31250000000 : ℚ), (14870501899/10000000000 : ℚ), (-2688712863/5000000000 : ℚ), 3⟩,
    ⟨(64934851471/200000000000 : ℚ), (6426653829/5000000000 : ℚ), (-472790556647/1000000000000 : ℚ), 3⟩,
    ⟨(330031335351/1000000000000 : ℚ), (5569047039/5000000000 : ℚ), (-83331391263/200000000000 : ℚ), 3⟩,
    ⟨(335539512347/1000000000000 : ℚ), (151091479/156250000 : ℚ), (-91952028507/250000000000 : ℚ), 3⟩,
    ⟨(341185518663/1000000000000 : ℚ), (8405286997/10000000000 : ℚ), (-325029972063/1000000000000 : ℚ), 2⟩,
    ⟨(346955752577/1000000000000 : ℚ), (3654980317/5000000000 : ℚ), (-14367575023/50000000000 : ℚ), 2⟩,
    ⟨(86141678/244140625 : ℚ), (6356249953/10000000000 : ℚ), (-63497178363/250000000000 : ℚ), 2⟩,
    ⟨(358813033411/1000000000000 : ℚ), (552180517/1000000000 : ℚ), (-112151590631/500000000000 : ℚ), 2⟩,
    ⟨(11402234847/31250000000 : ℚ), (2394203671/5000000000 : ℚ), (-19777090003/100000000000 : ℚ), 2⟩,
    ⟨(370997162753/1000000000000 : ℚ), (2070550627/5000000000 : ℚ), (-86979333349/500000000000 : ℚ), 2⟩,
    ⟨(377175219137/1000000000000 : ℚ), (5708051/16000000 : ℚ), (-19063244709/125000000000 : ℚ), 2⟩,
    ⟨(383390800777/1000000000000 : ℚ), (122297269/400000000 : ℚ), (-133110894389/1000000000000 : ℚ), 2⟩,
    ⟨(12175904181/31250000000 : ℚ), (2602221283/10000000000 : ℚ), (-57759636553/500000000000 : ℚ), 2⟩,
    ⟨(197937294987/500000000000 : ℚ), (2194694957/10000000000 : ℚ), (-12439489851/125000000000 : ℚ), 2⟩,
    ⟨(402112722989/1000000000000 : ℚ), (1828772387/10000000000 : ℚ), (-3396712617/40000000000 : ℚ), 2⟩,
    ⟨(408328304629/1000000000000 : ℚ), (749650043/5000000000 : ℚ), (-71568607267/1000000000000 : ℚ), 2⟩,
    ⟨(414506361013/1000000000000 : ℚ), (1201892187/10000000000 : ℚ), (-59334168223/1000000000000 : ℚ), 2⟩,
    ⟨(210316004331/500000000000 : ℚ), (46640089/500000000 : ℚ), (-48099006989/1000000000000 : ℚ), 2⟩,
    ⟨(85338098071/200000000000 : ℚ), (17220409/250000000 : ℚ), (-18881666353/500000000000 : ℚ), 2⟩,
    ⟨(216333605339/500000000000 : ℚ), (467172421/10000000000 : ℚ), (-5648129451/200000000000 : ℚ), 2⟩,
    ⟨(438547771189/1000000000000 : ℚ), (132742657/5000000000 : ℚ), (-19455757021/1000000000000 : ℚ), 2⟩,
    ⟨(222159002551/500000000000 : ℚ), (81691379/10000000000 : ℚ), (-5671561899/500000000000 : ℚ), 2⟩,
    ⟨(449964011419/1000000000000 : ℚ), (-86000017/10000000000 : ℚ), (-769097959/200000000000 : ℚ), 2⟩,
    ⟨(91094437683/200000000000 : ℚ), (-239146389/10000000000 : ℚ), (1543636571/500000000000 : ℚ), 2⟩,
    ⟨(46082926641/100000000000 : ℚ), (-379105489/10000000000 : ℚ), (9499132357/1000000000000 : ℚ), 2⟩,
    ⟨(233011169867/500000000000 : ℚ), (-507063271/10000000000 : ℚ), (15428711891/1000000000000 : ℚ), 2⟩,
    ⟨(235519448909/500000000000 : ℚ), (-624057429/10000000000 : ℚ), (10454993019/500000000000 : ℚ), 2⟩,
    ⟨(95173371067/200000000000 : ℚ), (-730997261/10000000000 : ℚ), (811652149/31250000000 : ℚ), 2⟩,
    ⟨(480494581311/1000000000000 : ℚ), (-82868049/1000000000 : ℚ), (245149737/8000000000 : ℚ), 2⟩,
    ⟨(9698218543/20000000000 : ℚ), (-18356151/200000000 : ℚ), (4368220357/125000000000 : ℚ), 2⟩,
    ⟨(30569078343/62500000000 : ℚ), (-499496863/5000000000 : ℚ), (38899481313/1000000000000 : ℚ), 2⟩,
    ⟨(30816715989/62500000000 : ℚ), (-1072779523/10000000000 : ℚ), (42522910689/1000000000000 : ℚ), 2⟩,
    ⟨(124196997217/250000000000 : ℚ), (-1139639509/10000000000 : ℚ), (45831925969/1000000000000 : ℚ), 2⟩,
    ⟨(62532236191/125000000000 : ℚ), (-29999747/250000000 : ℚ), (24420237927/500000000000 : ℚ), 2⟩,
    ⟨(50346879851/100000000000 : ℚ), (-1254194933/10000000000 : ℚ), (51560787561/1000000000000 : ℚ), 2⟩,
    ⟨(506412980453/1000000000000 : ℚ), (-651286299/5000000000 : ℚ), (27001771633/500000000000 : ℚ), 2⟩,
    ⟨(254541671283/500000000000 : ℚ), (-1345399167/10000000000 : ℚ), (56178032619/1000000000000 : ℚ), 2⟩,
    ⟨(511473451711/1000000000000 : ℚ), (-1382913323/10000000000 : ℚ), (29046141923/500000000000 : ℚ), 2⟩,
    ⟨(256788774953/500000000000 : ℚ), (-1415319561/10000000000 : ℚ), (59753176183/1000000000000 : ℚ), 2⟩,
    ⟨(103078113639/200000000000 : ℚ), (-1442791071/10000000000 : ℚ), (15291633833/250000000000 : ℚ), 2⟩,
    ⟨(516908138857/1000000000000 : ℚ), (-1465472149/10000000000 : ℚ), (779215177/12500000000 : ℚ), 2⟩,
    ⟨(518126605933/1000000000000 : ℚ), (-92717511/625000000 : ℚ), (6326915903/100000000000 : ℚ), 2⟩,
    ⟨(129760758507/250000000000 : ℚ), (-1496907219/10000000000 : ℚ), (63965464339/1000000000000 : ℚ), 2⟩,
    ⟨(259827607693/500000000000 : ℚ), (-1505821271/10000000000 : ℚ), (64428414621/1000000000000 : ℚ), 2⟩,
    ⟨(51996167521/100000000000 : ℚ), (-1510267163/10000000000 : ℚ), (12931903159/200000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1510822379/10000000000 : ℚ), (32344192979/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (70651977837/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control132.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control132.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate132

namespace DiagonalRamsey.JointInheritedCertificate133
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(285476988211/1000000000000 : ℚ), (5016424082551/5000000000 : ℚ), (-71830952166051/250000000000 : ℚ), 11⟩,
    ⟨(35843746401/125000000000 : ℚ), (1088880695133/10000000000 : ℚ), (-31784679652601/1000000000000 : ℚ), 8⟩,
    ⟨(289283677679/1000000000000 : ℚ), (47257767063/1250000000 : ℚ), (-5670787659653/500000000000 : ℚ), 6⟩,
    ⟨(293053706647/1000000000000 : ℚ), (92174050383/5000000000 : ℚ), (-114186324221/20000000000 : ℚ), 5⟩,
    ⟨(298023750671/1000000000000 : ℚ), (105812150573/10000000000 : ℚ), (-3391529007021/1000000000000 : ℚ), 5⟩,
    ⟨(30414594551/100000000000 : ℚ), (33395669083/5000000000 : ℚ), (-2218268531203/1000000000000 : ℚ), 4⟩,
    ⟨(155680665541/500000000000 : ℚ), (44835447231/10000000000 : ℚ), (-154345156009/100000000000 : ℚ), 4⟩,
    ⟨(319600419279/1000000000000 : ℚ), (31397176863/10000000000 : ℚ), (-1120028989229/1000000000000 : ℚ), 3⟩,
    ⟨(164391931589/500000000000 : ℚ), (11328201157/5000000000 : ℚ), (-836994939229/1000000000000 : ℚ), 3⟩,
    ⟨(169411610597/500000000000 : ℚ), (16702406193/10000000000 : ℚ), (-638469223613/1000000000000 : ℚ), 3⟩,
    ⟨(349621808821/1000000000000 : ℚ), (12496313471/10000000000 : ℚ), (-61729496113/125000000000 : ℚ), 3⟩,
    ⟨(361075629757/1000000000000 : ℚ), (9435746411/10000000000 : ℚ), (-77036646299/200000000000 : ℚ), 3⟩,
    ⟨(74614875489/200000000000 : ℚ), (286125829/400000000 : ℚ), (-301468206407/1000000000000 : ℚ), 2⟩,
    ⟨(192751248693/500000000000 : ℚ), (216590687/400000000 : ℚ), (-29448264193/125000000000 : ℚ), 2⟩,
    ⟨(398240299991/1000000000000 : ℚ), (127087707/312500000 : ℚ), (-182801349191/1000000000000 : ℚ), 2⟩,
    ⟨(411165113257/1000000000000 : ℚ), (120205129/400000000 : ℚ), (-139862488053/1000000000000 : ℚ), 2⟩,
    ⟨(424152464169/1000000000000 : ℚ), (2157496081/10000000000 : ℚ), (-52240224447/500000000000 : ℚ), 2⟩,
    ⟨(87415455487/200000000000 : ℚ), (147275109/1000000000 : ℚ), (-18752231953/250000000000 : ℚ), 2⟩,
    ⟨(11245377001/25000000000 : ℚ), (228501331/2500000000 : ℚ), (-25121093187/500000000000 : ℚ), 2⟩,
    ⟨(462243199981/1000000000000 : ℚ), (227121697/5000000000 : ℚ), (-457552957/15625000000 : ℚ), 2⟩,
    ⟨(474241947669/1000000000000 : ℚ), (36705349/5000000000 : ℚ), (-11456696321/1000000000000 : ℚ), 2⟩,
    ⟨(242847884303/500000000000 : ℚ), (-243554809/10000000000 : ℚ), (3752750341/1000000000000 : ℚ), 2⟩,
    ⟨(62061794529/125000000000 : ℚ), (-127019423/2500000000 : ℚ), (16740610587/1000000000000 : ℚ), 2⟩,
    ⟨(63316714281/125000000000 : ℚ), (-91111641/1250000000 : ℚ), (27812953139/1000000000000 : ℚ), 2⟩,
    ⟨(515717158147/1000000000000 : ℚ), (-912719591/10000000000 : ℚ), (37207557939/1000000000000 : ℚ), 2⟩,
    ⟨(65494530793/125000000000 : ℚ), (-1064741863/10000000000 : ℚ), (4510944833/100000000000 : ℚ), 2⟩,
    ⟨(132792907979/250000000000 : ℚ), (-1188961187/10000000000 : ℚ), (2066493541/40000000000 : ℚ), 2⟩,
    ⟨(107458765351/200000000000 : ℚ), (-1288450773/10000000000 : ℚ), (28488566893/500000000000 : ℚ), 2⟩,
    ⟨(542263870779/1000000000000 : ℚ), (-1365542643/10000000000 : ℚ), (61138258587/1000000000000 : ℚ), 2⟩,
    ⟨(546033899747/1000000000000 : ℚ), (-355490907/2500000000 : ℚ), (64208346107/1000000000000 : ℚ), 2⟩,
    ⟨(274283803109/500000000000 : ℚ), (-729466337/5000000000 : ℚ), (2649265959/40000000000 : ℚ), 2⟩,
    ⟨(109968117843/200000000000 : ℚ), (-1477227751/10000000000 : ℚ), (67236420163/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-369876463/2500000000 : ℚ), (8420212193/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (270759469719/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control133.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control133.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate133

namespace DiagonalRamsey.JointInheritedCertificate134
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(320339678263/1000000000000 : ℚ), (10651199825207/10000000000 : ℚ), (-342225562785739/1000000000000 : ℚ), 11⟩,
    ⟨(321685507619/1000000000000 : ℚ), (1157160251019/10000000000 : ℚ), (-37858747113483/1000000000000 : ℚ), 8⟩,
    ⟨(324364205257/1000000000000 : ℚ), (402340365113/10000000000 : ℚ), (-13509486444331/1000000000000 : ℚ), 6⟩,
    ⟨(10260936683/31250000000 : ℚ), (196509035833/10000000000 : ℚ), (-2176356867/320000000 : ℚ), 5⟩,
    ⟨(83401107071/250000000000 : ℚ), (14124068663/1250000000 : ℚ), (-505070679133/125000000000 : ℚ), 5⟩,
    ⟨(13603078611/40000000000 : ℚ), (8932092993/1250000000 : ℚ), (-2643265483009/1000000000000 : ℚ), 4⟩,
    ⟨(347705250757/1000000000000 : ℚ), (4806043031/1000000000 : ℚ), (-459920208199/250000000000 : ℚ), 4⟩,
    ⟨(356415820171/1000000000000 : ℚ), (16862138083/5000000000 : ℚ), (-1335557070333/1000000000000 : ℚ), 3⟩,
    ⟨(183062392987/500000000000 : ℚ), (12194480953/5000000000 : ℚ), (-39947092669/40000000000 : ℚ), 3⟩,
    ⟨(94184661379/250000000000 : ℚ), (18023237611/10000000000 : ℚ), (-762483126061/1000000000000 : ℚ), 3⟩,
    ⟨(388155181527/1000000000000 : ℚ), (3380521577/2500000000 : ℚ), (-118101449613/200000000000 : ℚ), 3⟩,
    ⟨(200132223263/500000000000 : ℚ), (2048869519/2000000000 : ℚ), (-461413249331/1000000000000 : ℚ), 3⟩,
    ⟨(412949821671/1000000000000 : ℚ), (7798483053/10000000000 : ℚ), (-362045858769/1000000000000 : ℚ), 2⟩,
    ⟨(53261142483/125000000000 : ℚ), (2967632827/5000000000 : ℚ), (-141969916103/500000000000 : ℚ), 2⟩,
    ⟨(439555862289/1000000000000 : ℚ), (4490528377/10000000000 : ℚ), (-55362846631/250000000000 : ℚ), 2⟩,
    ⟨(453220297047/1000000000000 : ℚ), (3352986739/10000000000 : ℚ), (-170704153567/1000000000000 : ℚ), 2⟩,
    ⟨(466950848161/1000000000000 : ℚ), (2445345681/10000000000 : ℚ), (-64483844631/500000000000 : ℚ), 2⟩,
    ⟨(480615282919/1000000000000 : ℚ), (34255731/200000000 : ℚ), (-18855379437/200000000000 : ℚ), 2⟩,
    ⟨(15440062667/31250000000 : ℚ), (557862021/5000000000 : ℚ), (-32595613969/500000000000 : ℚ), 2⟩,
    ⟨(507221323537/1000000000000 : ℚ), (625122081/10000000000 : ℚ), (-40637911647/1000000000000 : ℚ), 2⟩,
    ⟨(259953349341/500000000000 : ℚ), (43878193/2000000000 : ℚ), (-19807305509/1000000000000 : ℚ), 2⟩,
    ⟨(3325099773/6250000000 : ℚ), (-23542317/2000000000 : ℚ), (-1040736419/500000000000 : ℚ), 2⟩,
    ⟨(135858124923/250000000000 : ℚ), (-79705331/2000000000 : ℚ), (13015522833/1000000000000 : ℚ), 2⟩,
    ⟨(277023179617/500000000000 : ℚ), (-632506803/10000000000 : ℚ), (6463203089/250000000000 : ℚ), 2⟩,
    ⟨(140938831259/250000000000 : ℚ), (-413467569/5000000000 : ℚ), (917950521/25000000000 : ℚ), 2⟩,
    ⟨(572465894451/1000000000000 : ℚ), (-493721017/5000000000 : ℚ), (4583569153/100000000000 : ℚ), 2⟩,
    ⟨(580094179933/1000000000000 : ℚ), (-223675997/2000000000 : ℚ), (2135233751/40000000000 : ℚ), 2⟩,
    ⟨(586566716923/1000000000000 : ℚ), (-611548667/5000000000 : ℚ), (59489024039/1000000000000 : ℚ), 2⟩,
    ⟨(73977646419/125000000000 : ℚ), (-1304138581/10000000000 : ℚ), (12852755063/200000000000 : ℚ), 2⟩,
    ⟨(595806939951/1000000000000 : ℚ), (-54535611/400000000 : ℚ), (67782162417/1000000000000 : ℚ), 2⟩,
    ⟨(598485637589/1000000000000 : ℚ), (-1402185479/10000000000 : ℚ), (70098785591/1000000000000 : ℚ), 2⟩,
    ⟨(119966293389/200000000000 : ℚ), (-355343911/2500000000 : ℚ), (35624289259/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-284752959/2000000000 : ℚ), (71391907427/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (1249329813/5000000000 : ℚ)
  μ := (3/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control134.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control134.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate134

namespace DiagonalRamsey.JointInheritedCertificate144
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57440513347/250000000000 : ℚ), (9068084775527/10000000000 : ℚ), (-52265091568307/250000000000 : ℚ), 11⟩,
    ⟨(46174008783/200000000000 : ℚ), (491396049291/5000000000 : ℚ), (-1445390224727/62500000000 : ℚ), 8⟩,
    ⟨(116537677207/500000000000 : ℚ), (34055622937/1000000000 : ℚ), (-8251461677351/1000000000000 : ℚ), 6⟩,
    ⟨(236356746541/1000000000000 : ℚ), (82840855889/5000000000 : ℚ), (-1038308733181/250000000000 : ℚ), 5⟩,
    ⟨(120341309347/500000000000 : ℚ), (94863172899/10000000000 : ℚ), (-2466630582239/1000000000000 : ℚ), 5⟩,
    ⟨(246011310361/1000000000000 : ℚ), (3732701239/625000000 : ℚ), (-1612764427287/1000000000000 : ℚ), 4⟩,
    ⟨(7884109479/31250000000 : ℚ), (1998969697/500000000 : ℚ), (-1121537276251/1000000000000 : ℚ), 4⟩,
    ⟨(129731357951/500000000000 : ℚ), (6978181829/2500000000 : ℚ), (-406596745539/500000000000 : ℚ), 3⟩,
    ⟨(66863971347/250000000000 : ℚ), (627345561/312500000 : ℚ), (-606964936067/1000000000000 : ℚ), 3⟩,
    ⟨(276194033193/1000000000000 : ℚ), (14742829717/10000000000 : ℚ), (-462194195449/1000000000000 : ℚ), 3⟩,
    ⟨(285593006177/1000000000000 : ℚ), (548984411/500000000 : ℚ), (-178303492151/500000000000 : ℚ), 3⟩,
    ⟨(295562287093/1000000000000 : ℚ), (8243238481/10000000000 : ℚ), (-34646625717/125000000000 : ℚ), 3⟩,
    ⟨(61201173263/200000000000 : ℚ), (775363921/1250000000 : ℚ), (-21586043823/100000000000 : ℚ), 2⟩,
    ⟨(158411583233/500000000000 : ℚ), (4648772851/10000000000 : ℚ), (-167503178177/1000000000000 : ℚ), 2⟩,
    ⟨(163955005517/500000000000 : ℚ), (688579779/2000000000 : ℚ), (-128659285011/1000000000000 : ℚ), 2⟩,
    ⟨(169579813821/500000000000 : ℚ), (2492064671/10000000000 : ℚ), (-12120876021/125000000000 : ℚ), 2⟩,
    ⟨(70092735267/200000000000 : ℚ), (173172247/1000000000 : ℚ), (-14153011397/200000000000 : ℚ), 2⟩,
    ⟨(22607080809/62500000000 : ℚ), (1116248473/10000000000 : ℚ), (-48860043193/1000000000000 : ℚ), 2⟩,
    ⟨(372800137511/1000000000000 : ℚ), (612814617/10000000000 : ℚ), (-15189654917/500000000000 : ℚ), 2⟩,
    ⟨(383617437663/1000000000000 : ℚ), (24678921/1250000000 : ℚ), (-14675087451/1000000000000 : ℚ), 2⟩,
    ⟨(78812203377/200000000000 : ℚ), (-73834599/5000000000 : ℚ), (-1260481231/1000000000000 : ℚ), 2⟩,
    ⟨(2020151489/5000000000 : ℚ), (-108950101/2500000000 : ℚ), (1279281479/125000000000 : ℚ), 2⟩,
    ⟨(82685854157/200000000000 : ℚ), (-677036151/10000000000 : ℚ), (5023042757/250000000000 : ℚ), 2⟩,
    ⟨(42216741859/100000000000 : ℚ), (-219765031/2500000000 : ℚ), (28531263561/1000000000000 : ℚ), 2⟩,
    ⟨(107540147019/250000000000 : ℚ), (-1047767641/10000000000 : ℚ), (17860009823/500000000000 : ℚ), 2⟩,
    ⟨(8746636013/20000000000 : ℚ), (-593848651/5000000000 : ℚ), (41788809921/1000000000000 : ℚ), 2⟩,
    ⟨(443611993617/1000000000000 : ℚ), (-130234357/1000000000 : ℚ), (46838290839/1000000000000 : ℚ), 2⟩,
    ⟨(112235171321/250000000000 : ℚ), (-1394384593/10000000000 : ℚ), (50945660283/1000000000000 : ℚ), 2⟩,
    ⟨(453266557437/1000000000000 : ℚ), (-146584863/1000000000 : ℚ), (54169327629/1000000000000 : ℚ), 2⟩,
    ⟨(114136987391/250000000000 : ℚ), (-759117517/5000000000 : ℚ), (28276190719/500000000000 : ℚ), 2⟩,
    ⟨(458753260063/1000000000000 : ℚ), (-1552600723/10000000000 : ℚ), (14531279279/250000000000 : ℚ), 2⟩,
    ⟨(45986125059/100000000000 : ℚ), (-1569619571/10000000000 : ℚ), (58906803643/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-62869573/400000000 : ℚ), (7375537199/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (1971574419/6250000000 : ℚ)
  μ := (23/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control144.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control144.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate144

namespace DiagonalRamsey.JointInheritedCertificate145
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(58975394997/250000000000 : ℚ), (366289807613/400000000 : ℚ), (-216750701915111/1000000000000 : ℚ), 11⟩,
    ⟨(237028148547/1000000000000 : ℚ), (496316897081/5000000000 : ℚ), (-11988521372603/500000000000 : ℚ), 8⟩,
    ⟨(119635218097/500000000000 : ℚ), (344053198701/10000000000 : ℚ), (-8555103407897/1000000000000 : ℚ), 6⟩,
    ⟨(242606848473/1000000000000 : ℚ), (167431600521/10000000000 : ℚ), (-430613608449/100000000000 : ℚ), 5⟩,
    ⟨(247005253911/1000000000000 : ℚ), (11986891701/1250000000 : ℚ), (-2557506107059/1000000000000 : ℚ), 5⟩,
    ⟨(126211646729/500000000000 : ℚ), (60392820237/10000000000 : ℚ), (-83612524517/50000000000 : ℚ), 4⟩,
    ⟨(258808788431/1000000000000 : ℚ), (40441617127/10000000000 : ℚ), (-1162977603169/1000000000000 : ℚ), 4⟩,
    ⟨(16631265189/62500000000 : ℚ), (28245828473/10000000000 : ℚ), (-843319535959/1000000000000 : ℚ), 3⟩,
    ⟨(274227436543/1000000000000 : ℚ), (812911643/400000000 : ℚ), (-314768525499/500000000000 : ℚ), 3⟩,
    ⟨(283112099671/1000000000000 : ℚ), (14931559333/10000000000 : ℚ), (-11986925601/25000000000 : ℚ), 3⟩,
    ⟨(146334334123/500000000000 : ℚ), (2781558409/2500000000 : ℚ), (-370045609051/1000000000000 : ℚ), 3⟩,
    ⟨(37850638411/125000000000 : ℚ), (2089705081/2500000000 : ℚ), (-143866457627/500000000000 : ℚ), 3⟩,
    ⟨(313423797349/1000000000000 : ℚ), (6295287623/10000000000 : ℚ), (-28026416147/125000000000 : ℚ), 2⟩,
    ⟨(324422474637/1000000000000 : ℚ), (4723465313/10000000000 : ℚ), (-34824862003/200000000000 : ℚ), 2⟩,
    ⟨(167847607939/500000000000 : ℚ), (3503932591/10000000000 : ℚ), (-33475712567/250000000000 : ℚ), 2⟩,
    ⟨(86783364603/250000000000 : ℚ), (2542432307/10000000000 : ℚ), (-3159306921/31250000000 : ℚ), 2⟩,
    ⟨(35862704571/100000000000 : ℚ), (443421627/2500000000 : ℚ), (-18496570799/250000000000 : ℚ), 2⟩,
    ⟨(92516322061/250000000000 : ℚ), (115154357/1000000000 : ℚ), (-12832594629/250000000000 : ℚ), 2⟩,
    ⟨(76267605897/200000000000 : ℚ), (20087089/312500000 : ℚ), (-32224756511/1000000000000 : ℚ), 2⟩,
    ⟨(196168353387/500000000000 : ℚ), (55784043/2500000000 : ℚ), (-15997210871/1000000000000 : ℚ), 2⟩,
    ⟨(201477698417/500000000000 : ℚ), (-31349179/2500000000 : ℚ), (-1071160237/500000000000 : ℚ), 2⟩,
    ⟨(103272958969/250000000000 : ℚ), (-416294097/10000000000 : ℚ), (4861936747/500000000000 : ℚ), 2⟩,
    ⟨(422648404451/1000000000000 : ℚ), (-131952131/2000000000 : ℚ), (497386183/25000000000 : ℚ), 2⟩,
    ⟨(431533067579/1000000000000 : ℚ), (-863582053/10000000000 : ℚ), (14299496301/500000000000 : ℚ), 2⟩,
    ⟨(219830130549/500000000000 : ℚ), (-206746703/2000000000 : ℚ), (7201950901/200000000000 : ℚ), 2⟩,
    ⟨(446951715691/1000000000000 : ℚ), (-293704099/2500000000 : ℚ), (42263419799/1000000000000 : ℚ), 2⟩,
    ⟨(56667151333/125000000000 : ℚ), (-645187181/5000000000 : ℚ), (47464821903/1000000000000 : ℚ), 2⟩,
    ⟨(458755250211/1000000000000 : ℚ), (-1383123897/10000000000 : ℚ), (1615450621/31250000000 : ℚ), 2⟩,
    ⟨(463153655649/1000000000000 : ℚ), (-363780677/2500000000 : ℚ), (55013132937/1000000000000 : ℚ), 2⟩,
    ⟨(58311258491/125000000000 : ℚ), (-60315687/400000000 : ℚ), (28732965069/500000000000 : ℚ), 2⟩,
    ⟨(18749294223/40000000000 : ℚ), (-771252447/5000000000 : ℚ), (59084447187/1000000000000 : ℚ), 2⟩,
    ⟨(234929462067/500000000000 : ℚ), (-779822399/5000000000 : ℚ), (29944406919/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1561779571/10000000000 : ℚ), (14997283283/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (155880917119/500000000000 : ℚ)
  μ := (47/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control145.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control145.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate145

namespace DiagonalRamsey.JointInheritedCertificate146
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30258668307/125000000000 : ℚ), (9245697230733/10000000000 : ℚ), (-224559558612937/1000000000000 : ℚ), 11⟩,
    ⟨(121607178573/500000000000 : ℚ), (501198468063/5000000000 : ℚ), (-24840911968913/1000000000000 : ℚ), 8⟩,
    ⟨(30686668931/125000000000 : ℚ), (173760993137/5000000000 : ℚ), (-4431689732309/500000000000 : ℚ), 6⟩,
    ⟨(248884381401/1000000000000 : ℚ), (16916716979/1000000000 : ℚ), (-892269575003/200000000000 : ℚ), 5⟩,
    ⟨(63338697383/250000000000 : ℚ), (96918463007/10000000000 : ℚ), (-1324868261043/500000000000 : ℚ), 5⟩,
    ⟨(258861523367/1000000000000 : ℚ), (15264163071/2500000000 : ℚ), (-433152043019/250000000000 : ℚ), 4⟩,
    ⟨(5307031001/20000000000 : ℚ), (8179940613/2000000000 : ℚ), (-602506068559/500000000000 : ℚ), 4⟩,
    ⟨(10910494683/40000000000 : ℚ), (7143950399/2500000000 : ℚ), (-436933141659/500000000000 : ℚ), 3⟩,
    ⟨(4390978191/15625000000 : ℚ), (2571007257/1250000000 : ℚ), (-40775903537/62500000000 : ℚ), 3⟩,
    ⟨(290052710897/1000000000000 : ℚ), (755913801/500000000 : ℚ), (-124246189157/250000000000 : ℚ), 3⟩,
    ⟨(29976572223/100000000000 : ℚ), (11271086911/10000000000 : ℚ), (-191825566073/500000000000 : ℚ), 3⟩,
    ⟨(62013619323/200000000000 : ℚ), (2118235801/2500000000 : ℚ), (-149208347817/500000000000 : ℚ), 3⟩,
    ⟨(160430308277/500000000000 : ℚ), (6386378223/10000000000 : ℚ), (-7270420979/31250000000 : ℚ), 2⟩,
    ⟨(166019672091/500000000000 : ℚ), (4797003457/10000000000 : ℚ), (-90405767229/500000000000 : ℚ), 2⟩,
    ⟨(171748311119/500000000000 : ℚ), (3563913273/10000000000 : ℚ), (-139192839931/1000000000000 : ℚ), 2⟩,
    ⟨(177561055437/500000000000 : ℚ), (2591826367/10000000000 : ℚ), (-105259521213/1000000000000 : ℚ), 2⟩,
    ⟨(183401925139/500000000000 : ℚ), (453685063/2500000000 : ℚ), (-15445204789/200000000000 : ℚ), 2⟩,
    ⟨(189214669457/500000000000 : ℚ), (1185979551/10000000000 : ℚ), (-53809322139/1000000000000 : ℚ), 2⟩,
    ⟨(389886616971/1000000000000 : ℚ), (671941943/10000000000 : ℚ), (-6814170147/200000000000 : ℚ), 2⟩,
    ⟨(200532672299/500000000000 : ℚ), (248058729/10000000000 : ℚ), (-4328393299/250000000000 : ℚ), 2⟩,
    ⟨(205928932269/500000000000 : ℚ), (-20775431/2000000000 : ℚ), (-3013238757/1000000000000 : ℚ), 2⟩,
    ⟨(422160238923/1000000000000 : ℚ), (-198757919/5000000000 : ℚ), (9228564783/1000000000000 : ℚ), 2⟩,
    ⟨(26992078141/62500000000 : ℚ), (-643191977/10000000000 : ℚ), (985855941/50000000000 : ℚ), 2⟩,
    ⟨(440903356929/1000000000000 : ℚ), (-848792629/10000000000 : ℚ), (28687770391/1000000000000 : ℚ), 2⟩,
    ⟨(449163594077/1000000000000 : ℚ), (-31886641/312500000 : ℚ), (9080660591/250000000000 : ℚ), 2⟩,
    ⟨(228287205551/500000000000 : ℚ), (-581297717/5000000000 : ℚ), (42762836387/1000000000000 : ℚ), 2⟩,
    ⟨(92612887557/200000000000 : ℚ), (-63952703/500000000 : ℚ), (48117443673/1000000000000 : ℚ), 2⟩,
    ⟨(468571171621/1000000000000 : ℚ), (-1372503063/10000000000 : ℚ), (2623512447/50000000000 : ℚ), 2⟩,
    ⟨(59130197469/125000000000 : ℚ), (-722514751/5000000000 : ℚ), (55884732731/1000000000000 : ℚ), 2⟩,
    ⟨(59554076213/125000000000 : ℚ), (-749088361/5000000000 : ℚ), (58407784241/1000000000000 : ℚ), 2⟩,
    ⟨(239355802003/500000000000 : ℚ), (-1533032949/10000000000 : ℚ), (3003620377/50000000000 : ℚ), 2⟩,
    ⟨(479856614697/1000000000000 : ℚ), (-310058431/2000000000 : ℚ), (60899612269/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-776220863/5000000000 : ℚ), (61002776249/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (38505884943/125000000000 : ℚ)
  μ := (12/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control146.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control146.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate146

namespace DiagonalRamsey.JointInheritedCertificate147
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254607816073/1000000000000 : ℚ), (9429686924221/10000000000 : ℚ), (-240876973714699/1000000000000 : ℚ), 11⟩,
    ⟨(255788734419/1000000000000 : ℚ), (127838299373/1250000000 : ℚ), (-26646059217587/1000000000000 : ℚ), 8⟩,
    ⟨(258139198223/1000000000000 : ℚ), (44342320711/1250000000 : ℚ), (-4753779186107/500000000000 : ℚ), 6⟩,
    ⟨(261636571233/1000000000000 : ℚ), (4319460873/250000000 : ℚ), (-957136900059/200000000000 : ℚ), 5⟩,
    ⟨(133123585917/500000000000 : ℚ), (99048126931/10000000000 : ℚ), (-2842468788511/1000000000000 : ℚ), 5⟩,
    ⟨(271926597423/1000000000000 : ℚ), (1560960971/250000000 : ℚ), (-46468531133/25000000000 : ℚ), 4⟩,
    ⟨(278620152027/1000000000000 : ℚ), (20926709563/5000000000 : ℚ), (-1292859730863/1000000000000 : ℚ), 4⟩,
    ⟨(1118216301/3906250000 : ℚ), (14631462473/5000000000 : ℚ), (-468856024963/500000000000 : ℚ), 3⟩,
    ⟨(18423915757/62500000000 : ℚ), (21078875079/10000000000 : ℚ), (-140047577461/200000000000 : ℚ), 3⟩,
    ⟨(152047971941/500000000000 : ℚ), (3101438519/2000000000 : ℚ), (-533591692909/1000000000000 : ℚ), 3⟩,
    ⟨(12564542251/40000000000 : ℚ), (11572814997/10000000000 : ℚ), (-412108419219/1000000000000 : ℚ), 3⟩,
    ⟨(324739014207/1000000000000 : ℚ), (4355322073/5000000000 : ℚ), (-10024172579/31250000000 : ℚ), 3⟩,
    ⟨(33586998871/100000000000 : ℚ), (1315213989/2000000000 : ℚ), (-62582839009/250000000000 : ℚ), 2⟩,
    ⟨(173699641207/500000000000 : ℚ), (4950090703/10000000000 : ℚ), (-97413929409/500000000000 : ℚ), 2⟩,
    ⟨(359215861919/1000000000000 : ℚ), (3688712901/10000000000 : ℚ), (-150295301447/1000000000000 : ℚ), 2⟩,
    ⟨(5800092611/15625000000 : ℚ), (2694525301/10000000000 : ℚ), (-57005169049/500000000000 : ℚ), 2⟩,
    ⟨(23953375443/62500000000 : ℚ), (1900018459/10000000000 : ℚ), (-5253532391/62500000000 : ℚ), 2⟩,
    ⟨(395244072273/1000000000000 : ℚ), (1257427487/10000000000 : ℚ), (-29528183941/500000000000 : ℚ), 2⟩,
    ⟨(203530325889/500000000000 : ℚ), (45771727/625000000 : ℚ), (-1520074091/40000000000 : ℚ), 2⟩,
    ⟨(209294972741/500000000000 : ℚ), (74902427/2500000000 : ℚ), (-10071989691/500000000000 : ℚ), 2⟩,
    ⟨(85944183997/200000000000 : ℚ), (-59448877/10000000000 : ℚ), (-614884983/125000000000 : ℚ), 2⟩,
    ⟨(440346377917/1000000000000 : ℚ), (-179413917/5000000000 : ℚ), (8101533873/1000000000000 : ℚ), 2⟩,
    ⟨(450363990309/1000000000000 : ℚ), (-152283167/2500000000 : ℚ), (9623316611/500000000000 : ℚ), 2⟩,
    ⟨(459677282079/1000000000000 : ℚ), (-10230773/125000000 : ℚ), (1798120931/62500000000 : ℚ), 2⟩,
    ⟨(29262285071/62500000000 : ℚ), (-496517957/5000000000 : ℚ), (368680057/10000000000 : ℚ), 2⟩,
    ⟨(95167956433/200000000000 : ℚ), (-568824547/5000000000 : ℚ), (21846666257/500000000000 : ℚ), 2⟩,
    ⟨(7539583387/15625000000 : ℚ), (-251199283/2000000000 : ℚ), (49363968269/1000000000000 : ℚ), 2⟩,
    ⟨(244106381179/500000000000 : ℚ), (-337728101/2500000000 : ℚ), (26985353283/500000000000 : ℚ), 2⟩,
    ⟨(492823362959/1000000000000 : ℚ), (-1424545527/10000000000 : ℚ), (14395607727/250000000000 : ℚ), 2⟩,
    ⟨(496320735969/1000000000000 : ℚ), (-1478485113/10000000000 : ℚ), (60250085321/1000000000000 : ℚ), 2⟩,
    ⟨(124667799943/250000000000 : ℚ), (-189231517/1250000000 : ℚ), (484449741/7812500000 : ℚ), 2⟩,
    ⟨(499852118119/1000000000000 : ℚ), (-1531361599/10000000000 : ℚ), (6288374553/100000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1533542213/10000000000 : ℚ), (62992760071/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (150240761071/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control147.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control147.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate147

namespace DiagonalRamsey.JointInheritedCertificate148
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1337505541/5000000000 : ℚ), (2407298907187/2500000000 : ℚ), (-258413388492909/1000000000000 : ℚ), 11⟩,
    ⟨(33589528333/125000000000 : ℚ), (20894636631/200000000 : ℚ), (-7146537768823/250000000000 : ℚ), 8⟩,
    ⟨(271134761339/1000000000000 : ℚ), (72513387383/2000000000 : ℚ), (-2549989855727/250000000000 : ℚ), 6⟩,
    ⟨(68683355103/250000000000 : ℚ), (35339470721/2000000000 : ℚ), (-641794117409/125000000000 : ℚ), 5⟩,
    ⟨(279477546829/1000000000000 : ℚ), (50680184603/5000000000 : ℚ), (-3049704388911/1000000000000 : ℚ), 5⟩,
    ⟨(14266072603/50000000000 : ℚ), (31969789819/5000000000 : ℚ), (-398881128573/200000000000 : ℚ), 4⟩,
    ⟨(292208856103/1000000000000 : ℚ), (42890216383/10000000000 : ℚ), (-138738230459/100000000000 : ℚ), 4⟩,
    ⟨(75018357373/250000000000 : ℚ), (3751307641/1250000000 : ℚ), (-503222048797/500000000000 : ℚ), 3⟩,
    ⟨(61767886417/200000000000 : ℚ), (5408760719/2500000000 : ℚ), (-751755634559/1000000000000 : ℚ), 3⟩,
    ⟨(159211221243/500000000000 : ℚ), (7965491543/5000000000 : ℚ), (-17908145011/31250000000 : ℚ), 3⟩,
    ⟨(328730171067/1000000000000 : ℚ), (11901868583/10000000000 : ℚ), (-44282514957/100000000000 : ℚ), 3⟩,
    ⟨(67932669753/200000000000 : ℚ), (897007987/1000000000 : ℚ), (-344940911383/1000000000000 : ℚ), 3⟩,
    ⟨(10972396347/31250000000 : ℚ), (6783263621/10000000000 : ℚ), (-269477675099/1000000000000 : ℚ), 2⟩,
    ⟨(90744968053/250000000000 : ℚ), (5117417881/10000000000 : ℚ), (-210046997667/1000000000000 : ℚ), 2⟩,
    ⟨(375138667093/1000000000000 : ℚ), (1912601101/5000000000 : ℚ), (-162391251489/1000000000000 : ℚ), 2⟩,
    ⟨(387475971907/1000000000000 : ℚ), (2806896671/10000000000 : ℚ), (-123587678647/1000000000000 : ℚ), 2⟩,
    ⟨(199936485831/500000000000 : ℚ), (1993358289/10000000000 : ℚ), (-22894767193/250000000000 : ℚ), 2⟩,
    ⟨(16488411059/40000000000 : ℚ), (333910239/2500000000 : ℚ), (-64886351939/1000000000000 : ℚ), 2⟩,
    ⟨(106092267839/250000000000 : ℚ), (99808719/1250000000 : ℚ), (-42426735289/1000000000000 : ℚ), 2⟩,
    ⟨(87246452093/200000000000 : ℚ), (178012063/5000000000 : ℚ), (-23395286581/1000000000000 : ℚ), 2⟩,
    ⟨(447685594803/1000000000000 : ℚ), (-339151/312500000 : ℚ), (-89823319/12500000000 : ℚ), 2⟩,
    ⟨(229309386251/500000000000 : ℚ), (-316540367/10000000000 : ℚ), (6662862989/1000000000000 : ℚ), 2⟩,
    ⟨(234463250541/500000000000 : ℚ), (-285969103/5000000000 : ℚ), (3701005287/200000000000 : ℚ), 2⟩,
    ⟨(478509511483/1000000000000 : ℚ), (-6282997/80000000 : ℚ), (447096801/15625000000 : ℚ), 2⟩,
    ⟨(487275514077/1000000000000 : ℚ), (-963250617/10000000000 : ℚ), (37202568313/1000000000000 : ℚ), 2⟩,
    ⟨(99028017493/200000000000 : ℚ), (-277625593/2500000000 : ℚ), (8886994569/200000000000 : ℚ), 2⟩,
    ⟨(125506872877/250000000000 : ℚ), (-246187301/2000000000 : ℚ), (50439191563/1000000000000 : ℚ), 2⟩,
    ⟨(507871396739/1000000000000 : ℚ), (-663737327/5000000000 : ℚ), (27656819509/500000000000 : ℚ), 2⟩,
    ⟨(512615523157/1000000000000 : ℚ), (-28046647/200000000 : ℚ), (14783271059/250000000000 : ℚ), 2⟩,
    ⟨(51621418223/100000000000 : ℚ), (-72857459/500000000 : ℚ), (968013969/15625000000 : ℚ), 2⟩,
    ⟨(64829089613/125000000000 : ℚ), (-746540967/5000000000 : ℚ), (63812124561/1000000000000 : ℚ), 2⟩,
    ⟨(519847835369/1000000000000 : ℚ), (-755434317/5000000000 : ℚ), (32367839941/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-756541821/5000000000 : ℚ), (64850843447/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (292688917921/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control148.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control148.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate148

namespace DiagonalRamsey.JointInheritedCertificate149
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287393284993/1000000000000 : ℚ), (9948369354769/10000000000 : ℚ), (-143402581627819/500000000000 : ℚ), 11⟩,
    ⟨(288657046057/1000000000000 : ℚ), (539985418217/5000000000 : ℚ), (-15863588227171/500000000000 : ℚ), 8⟩,
    ⟨(291172397477/1000000000000 : ℚ), (1875468037/50000000 : ℚ), (-1415118912141/125000000000 : ℚ), 6⟩,
    ⟨(147457557521/500000000000 : ℚ), (4574239513/250000000 : ℚ), (-5698838280033/1000000000000 : ℚ), 5⟩,
    ⟨(299849154337/1000000000000 : ℚ), (52531024017/5000000000 : ℚ), (-3385211579151/1000000000000 : ℚ), 5⟩,
    ⟨(152963498933/500000000000 : ℚ), (66343419847/10000000000 : ℚ), (-276755396251/125000000000 : ℚ), 4⟩,
    ⟨(313090112673/1000000000000 : ℚ), (44550926807/10000000000 : ℚ), (-770208541697/500000000000 : ℚ), 4⟩,
    ⟨(321269514047/1000000000000 : ℚ), (7802029079/2500000000 : ℚ), (-558865671567/500000000000 : ℚ), 3⟩,
    ⟨(165193214941/500000000000 : ℚ), (22526239283/10000000000 : ℚ), (-417590790889/500000000000 : ℚ), 3⟩,
    ⟨(340353059293/1000000000000 : ℚ), (8305045497/5000000000 : ℚ), (-79623683701/125000000000 : ℚ), 3⟩,
    ⟨(21942088637/62500000000 : ℚ), (12429108691/10000000000 : ℚ), (-492595184557/1000000000000 : ℚ), 3⟩,
    ⟨(181222131831/500000000000 : ℚ), (4692823521/5000000000 : ℚ), (-192059840327/500000000000 : ℚ), 3⟩,
    ⟨(74871217649/200000000000 : ℚ), (1778742403/2500000000 : ℚ), (-150270215279/500000000000 : ℚ), 2⟩,
    ⟨(386694174559/1000000000000 : ℚ), (5385078297/10000000000 : ℚ), (-2934570251/12500000000 : ℚ), 2⟩,
    ⟨(399339700087/1000000000000 : ℚ), (4043280437/10000000000 : ℚ), (-91034078593/500000000000 : ℚ), 2⟩,
    ⟨(412170881507/1000000000000 : ℚ), (746540999/2500000000 : ℚ), (-139202303263/1000000000000 : ℚ), 2⟩,
    ⟨(425064147527/1000000000000 : ℚ), (2141973171/10000000000 : ℚ), (-324633791/3125000000 : ℚ), 2⟩,
    ⟨(437895328947/1000000000000 : ℚ), (364968031/2500000000 : ℚ), (-37232988229/500000000000 : ℚ), 2⟩,
    ⟨(112635213619/250000000000 : ℚ), (903193353/10000000000 : ℚ), (-4974779993/100000000000 : ℚ), 2⟩,
    ⟨(46287894079/100000000000 : ℚ), (222536709/5000000000 : ℚ), (-5766521499/200000000000 : ℚ), 2⟩,
    ⟨(474790765373/1000000000000 : ℚ), (65563501/10000000000 : ℚ), (-11045312937/1000000000000 : ℚ), 2⟩,
    ⟨(486161610843/1000000000000 : ℚ), (-2503241/100000000 : ℚ), (4128466849/1000000000000 : ℚ), 2⟩,
    ⟨(248440984871/500000000000 : ℚ), (-2007661/39062500 : ℚ), (4271026883/250000000000 : ℚ), 2⟩,
    ⟨(506848599153/1000000000000 : ℚ), (-734045243/10000000000 : ℚ), (28127519459/1000000000000 : ℚ), 2⟩,
    ⟨(128991378747/250000000000 : ℚ), (-917267317/10000000000 : ℚ), (37496405547/1000000000000 : ℚ), 2⟩,
    ⟨(262072458181/500000000000 : ℚ), (-534396117/5000000000 : ℚ), (45375761029/1000000000000 : ℚ), 2⟩,
    ⟨(531308031169/1000000000000 : ℚ), (-596303247/5000000000 : ℚ), (25954649489/500000000000 : ℚ), 2⟩,
    ⟨(268692937349/500000000000 : ℚ), (-1291772371/10000000000 : ℚ), (572079361/10000000000 : ℚ), 2⟩,
    ⟨(542319913993/1000000000000 : ℚ), (-1368613793/10000000000 : ℚ), (15339028163/250000000000 : ℚ), 2⟩,
    ⟨(273031315779/500000000000 : ℚ), (-1424851681/10000000000 : ℚ), (6441647587/100000000000 : ℚ), 2⟩,
    ⟨(274288991489/500000000000 : ℚ), (-1461700847/10000000000 : ℚ), (33216644993/500000000000 : ℚ), 2⟩,
    ⟨(274920872021/500000000000 : ℚ), (-92496039/625000000 : ℚ), (1053668983/15625000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-741103671/5000000000 : ℚ), (16889921601/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (4384840701/15625000000 : ℚ)
  μ := (11/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control149.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control149.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate149

namespace DiagonalRamsey.JointInheritedCertificate150
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(20137593663/62500000000 : ℚ), (21169416339041/5000000000 : ℚ), (-1365418429038043/1000000000000 : ℚ), 13⟩,
    ⟨(32253606867/100000000000 : ℚ), (467173673153/1000000000 : ℚ), (-75773548009029/500000000000 : ℚ), 10⟩,
    ⟨(323204402787/1000000000000 : ℚ), (831505692699/5000000000 : ℚ), (-54437406940709/1000000000000 : ℚ), 8⟩,
    ⟨(324204890883/1000000000000 : ℚ), (836213514597/10000000000 : ℚ), (-553654393957/20000000000 : ℚ), 7⟩,
    ⟨(162767561347/500000000000 : ℚ), (124297294901/2500000000 : ℚ), (-3334517078067/200000000000 : ℚ), 7⟩,
    ⟨(13087675743/40000000000 : ℚ), (326362130061/10000000000 : ℚ), (-5549649639263/500000000000 : ℚ), 6⟩,
    ⟨(329171212221/1000000000000 : ℚ), (228656657497/10000000000 : ℚ), (-7893860671773/1000000000000 : ℚ), 6⟩,
    ⟨(331468310279/1000000000000 : ℚ), (20969161333/1250000000 : ℚ), (-1176553822297/200000000000 : ℚ), 5⟩,
    ⟨(167038826919/500000000000 : ℚ), (12735161391/1000000000 : ℚ), (-283671910087/62500000000 : ℚ), 5⟩,
    ⟨(168496478381/500000000000 : ℚ), (99256854239/10000000000 : ℚ), (-3596376282749/1000000000000 : ℚ), 5⟩,
    ⟨(340207195831/1000000000000 : ℚ), (78985675221/10000000000 : ℚ), (-2910211814407/1000000000000 : ℚ), 4⟩,
    ⟨(17185631383/50000000000 : ℚ), (63918958851/10000000000 : ℚ), (-2395151048849/1000000000000 : ℚ), 4⟩,
    ⟨(347500807359/1000000000000 : ℚ), (52444280143/10000000000 : ℚ), (-249837444019/125000000000 : ℚ), 4⟩,
    ⟨(351562608869/1000000000000 : ℚ), (43525467031/10000000000 : ℚ), (-52720371571/31250000000 : ℚ), 4⟩,
    ⟨(88972061739/250000000000 : ℚ), (3647242409/1000000000 : ℚ), (-718820306039/500000000000 : ℚ), 4⟩,
    ⟨(180233650389/500000000000 : ℚ), (30811429301/10000000000 : ℚ), (-617467009163/500000000000 : ℚ), 3⟩,
    ⟨(365288738993/1000000000000 : ℚ), (6552187949/2500000000 : ℚ), (-1067959172733/1000000000000 : ℚ), 3⟩,
    ⟨(11573154573/31250000000 : ℚ), (22423943529/10000000000 : ℚ), (-928785701379/1000000000000 : ℚ), 3⟩,
    ⟨(75122350319/200000000000 : ℚ), (1205020699/625000000 : ℚ), (-162313383847/200000000000 : ℚ), 3⟩,
    ⟨(381088456939/1000000000000 : ℚ), (8322918171/5000000000 : ℚ), (-8898948481/12500000000 : ℚ), 3⟩,
    ⟨(193378934253/500000000000 : ℚ), (3605048089/2500000000 : ℚ), (-626489021621/1000000000000 : ℚ), 3⟩,
    ⟨(78521265637/200000000000 : ℚ), (782889543/625000000 : ℚ), (-138175522179/250000000000 : ℚ), 3⟩,
    ⟨(398619746527/1000000000000 : ℚ), (10903834533/10000000000 : ℚ), (-488532355717/1000000000000 : ℚ), 3⟩,
    ⟨(202391818339/500000000000 : ℚ), (594102021/625000000 : ℚ), (-432378472897/1000000000000 : ℚ), 3⟩,
    ⟨(51385393661/125000000000 : ℚ), (4146967211/5000000000 : ℚ), (-76591899149/200000000000 : ℚ), 2⟩,
    ⟨(10437577707/25000000000 : ℚ), (7238472193/10000000000 : ℚ), (-339241065843/1000000000000 : ℚ), 2⟩,
    ⟨(26501752963/62500000000 : ℚ), (1578683717/2500000000 : ℚ), (-75095176457/250000000000 : ℚ), 2⟩,
    ⟨(17225689901/40000000000 : ℚ), (550272221/1000000000 : ℚ), (-265686774461/1000000000000 : ℚ), 2⟩,
    ⟨(218664887221/500000000000 : ℚ), (2392999853/5000000000 : ℚ), (-234587316349/1000000000000 : ℚ), 2⟩,
    ⟨(444074517321/1000000000000 : ℚ), (1037743843/2500000000 : ℚ), (-51651542699/250000000000 : ℚ), 2⟩,
    ⟨(450860227487/1000000000000 : ℚ), (3586340851/10000000000 : ℚ), (-181344468383/1000000000000 : ℚ), 2⟩,
    ⟨(457670557567/1000000000000 : ℚ), (1541317811/5000000000 : ℚ), (-158466170141/1000000000000 : ℚ), 2⟩,
    ⟨(232244550441/500000000000 : ℚ), (164494023/625000000 : ℚ), (-137686668743/1000000000000 : ℚ), 2⟩,
    ⟨(471299430963/1000000000000 : ℚ), (222742553/1000000000 : ℚ), (-118763734099/1000000000000 : ℚ), 2⟩,
    ⟨(59760642641/125000000000 : ℚ), (232936837/1250000000 : ℚ), (-101490266237/1000000000000 : ℚ), 2⟩,
    ⟨(484829884007/1000000000000 : ℚ), (383812651/2500000000 : ℚ), (-10711056993/125000000000 : ℚ), 2⟩,
    ⟨(122879352731/250000000000 : ℚ), (1238534489/10000000000 : ℚ), (-71205047787/1000000000000 : ℚ), 2⟩,
    ⟨(498131611041/1000000000000 : ℚ), (242443933/2500000000 : ℚ), (-57907475289/1000000000000 : ℚ), 2⟩,
    ⟨(50465655017/100000000000 : ℚ), (725898371/10000000000 : ℚ), (-22840344111/500000000000 : ℚ), 2⟩,
    ⟨(511076509161/1000000000000 : ℚ), (252122143/5000000000 : ℚ), (-688490701/20000000000 : ℚ), 2⟩,
    ⟨(129344005443/250000000000 : ℚ), (18906861/625000000 : ℚ), (-1503224493/62500000000 : ℚ), 2⟩,
    ⟨(523539911923/1000000000000 : ℚ), (118692959/10000000000 : ℚ), (-289707067/20000000000 : ℚ), 2⟩,
    ⟨(66194166283/125000000000 : ℚ), (-12237509/2500000000 : ℚ), (-226348729/40000000000 : ℚ), 2⟩,
    ⟨(66925223743/125000000000 : ℚ), (-40388341/2000000000 : ℚ), (2487284181/1000000000000 : ℚ), 2⟩,
    ⟨(54107120151/100000000000 : ℚ), (-21350869/625000000 : ℚ), (5002283827/500000000000 : ℚ), 2⟩,
    ⟨(109309581371/200000000000 : ℚ), (-469133747/10000000000 : ℚ), (4234725059/250000000000 : ℚ), 2⟩,
    ⟨(275909356057/500000000000 : ℚ), (-585525473/10000000000 : ℚ), (23330677379/1000000000000 : ℚ), 2⟩,
    ⟨(17402216233/31250000000 : ℚ), (-691688981/10000000000 : ℚ), (29215582059/1000000000000 : ℚ), 2⟩,
    ⟨(70211544709/125000000000 : ℚ), (-788415573/10000000000 : ℚ), (34625148953/1000000000000 : ℚ), 2⟩,
    ⟨(283135705747/500000000000 : ℚ), (-175280273/2000000000 : ℚ), (9896812197/250000000000 : ℚ), 2⟩,
    ⟨(570597049581/1000000000000 : ℚ), (-478129361/5000000000 : ℚ), (44126503623/1000000000000 : ℚ), 2⟩,
    ⟨(574658851091/1000000000000 : ℚ), (-514263021/5000000000 : ℚ), (48264645687/1000000000000 : ℚ), 2⟩,
    ⟨(578447030789/1000000000000 : ℚ), (-27341903/250000000 : ℚ), (26010412921/500000000000 : ℚ), 2⟩,
    ⟨(581952462619/1000000000000 : ℚ), (-115212331/1000000000 : ℚ), (27705939939/500000000000 : ℚ), 2⟩,
    ⟨(585166701687/1000000000000 : ℚ), (-602114829/5000000000 : ℚ), (58452558531/1000000000000 : ℚ), 2⟩,
    ⟨(588082004611/1000000000000 : ℚ), (-1250310141/10000000000 : ℚ), (61155725123/1000000000000 : ℚ), 2⟩,
    ⟨(590691348171/1000000000000 : ℚ), (-161329643/1250000000 : ℚ), (63532526453/1000000000000 : ℚ), 2⟩,
    ⟨(592988446229/1000000000000 : ℚ), (-331361063/2500000000 : ℚ), (8199067219/125000000000 : ℚ), 2⟩,
    ⟨(297483882437/500000000000 : ℚ), (-677464729/5000000000 : ℚ), (1052248231/15625000000 : ℚ), 2⟩,
    ⟨(119324907151/200000000000 : ℚ), (-344814461/2500000000 : ℚ), (17198339561/250000000000 : ℚ), 2⟩,
    ⟨(298977383783/500000000000 : ℚ), (-349640947/2500000000 : ℚ), (6994648009/100000000000 : ℚ), 2⟩,
    ⟨(299477627831/500000000000 : ℚ), (-70647637/500000000 : ℚ), (70807593213/1000000000000 : ℚ), 2⟩,
    ⟨(599623589779/1000000000000 : ℚ), (-1422502609/10000000000 : ℚ), (71379906471/1000000000000 : ℚ), 2⟩,
    ⟨(299979079921/500000000000 : ℚ), (-71363239/500000000 : ℚ), (35832768549/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-285571891/2000000000 : ℚ), (71701216371/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (129684633019/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control150.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control150.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate150

namespace DiagonalRamsey.JointInheritedCertificate152
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(124278362069/250000000000 : ℚ), (14939911481743/10000000000 : ℚ), (-372141056680111/500000000000 : ℚ), 11⟩,
    ⟨(249285525439/500000000000 : ℚ), (1631503987327/10000000000 : ℚ), (-41173154217629/500000000000 : ℚ), 8⟩,
    ⟨(125368054643/250000000000 : ℚ), (571451934209/10000000000 : ℚ), (-23513602883/800000000 : ℚ), 6⟩,
    ⟨(63223626441/125000000000 : ℚ), (17594122119/625000000 : ℚ), (-3700813558631/250000000000 : ℚ), 5⟩,
    ⟨(511479856669/1000000000000 : ℚ), (32675570579/2000000000 : ℚ), (-4400213752033/500000000000 : ℚ), 5⟩,
    ⟨(259244974023/500000000000 : ℚ), (104336147733/10000000000 : ℚ), (-5762614315429/1000000000000 : ℚ), 4⟩,
    ⟨(263375887323/500000000000 : ℚ), (35445646121/5000000000 : ℚ), (-16064966551/4000000000 : ℚ), 4⟩,
    ⟨(134046442641/250000000000 : ℚ), (2010927607/400000000 : ℚ), (-2921371783797/1000000000000 : ℚ), 4⟩,
    ⟨(546701081261/1000000000000 : ℚ), (9190780507/2500000000 : ℚ), (-1095231142487/500000000000 : ℚ), 3⟩,
    ⟨(558196438547/1000000000000 : ℚ), (27493673641/10000000000 : ℚ), (-209845017501/125000000000 : ℚ), 3⟩,
    ⟨(71320141981/125000000000 : ℚ), (20901026743/10000000000 : ℚ), (-261389976803/200000000000 : ℚ), 3⟩,
    ⟨(18239877949/31250000000 : ℚ), (16075029847/10000000000 : ℚ), (-514308861687/500000000000 : ℚ), 3⟩,
    ⟨(597415009889/1000000000000 : ℚ), (3114459127/2500000000 : ℚ), (-163027524841/200000000000 : ℚ), 2⟩,
    ⟨(611645569143/1000000000000 : ℚ), (9692825689/10000000000 : ℚ), (-324039577679/500000000000 : ℚ), 2⟩,
    ⟨(313115362033/500000000000 : ℚ), (1508784329/2000000000 : ℚ), (-257572090101/500000000000 : ℚ), 2⟩,
    ⟨(320515005821/500000000000 : ℚ), (1170039401/2000000000 : ℚ), (-25492187137/62500000000 : ℚ), 2⟩,
    ⟨(655900906643/1000000000000 : ℚ), (4499180767/10000000000 : ℚ), (-160151582267/500000000000 : ℚ), 2⟩,
    ⟨(670700194219/1000000000000 : ℚ), (3410564851/10000000000 : ℚ), (-49624454083/200000000000 : ℚ), 2⟩,
    ⟨(342642674571/500000000000 : ℚ), (1262965951/5000000000 : ℚ), (-11760286699/62500000000 : ℚ), 2⟩,
    ⟨(174878977099/250000000000 : ℚ), (1802095253/10000000000 : ℚ), (-5522419651/40000000000 : ℚ), 2⟩,
    ⟨(713254823917/1000000000000 : ℚ), (603337051/5000000000 : ℚ), (-24002800131/250000000000 : ℚ), 2⟩,
    ⟨(726369782437/1000000000000 : ℚ), (178772601/2500000000 : ℚ), (-60633805151/1000000000000 : ℚ), 2⟩,
    ⟨(369367239869/500000000000 : ℚ), (77123121/2500000000 : ℚ), (-30853578091/1000000000000 : ℚ), 2⟩,
    ⟨(23444682407/31250000000 : ℚ), (-27703751/10000000000 : ℚ), (-1456981601/250000000000 : ℚ), 2⟩,
    ⟨(760745147721/1000000000000 : ℚ), (-304853679/10000000000 : ℚ), (7554018163/500000000000 : ℚ), 2⟩,
    ⟨(770179143639/1000000000000 : ℚ), (-265915989/5000000000 : ℚ), (8120213071/250000000000 : ℚ), 2⟩,
    ⟨(778440970239/1000000000000 : ℚ), (-715575711/10000000000 : ℚ), (5838424807/125000000000 : ℚ), 2⟩,
    ⟨(49090691351/62500000000 : ℚ), (-430740303/5000000000 : ℚ), (29057930509/500000000000 : ℚ), 2⟩,
    ⟨(791141906757/1000000000000 : ℚ), (-194738081/2000000000 : ℚ), (13392212913/200000000000 : ℚ), 2⟩,
    ⟨(795458699713/1000000000000 : ℚ), (-263826721/2500000000 : ℚ), (73435596821/1000000000000 : ℚ), 2⟩,
    ⟨(798359867407/1000000000000 : ℚ), (-221707927/2000000000 : ℚ), (38838866649/500000000000 : ℚ), 2⟩,
    ⟨(799817470009/1000000000000 : ℚ), (-567404353/5000000000 : ℚ), (39888430601/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-71129763/625000000 : ℚ), (16007646309/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (152985659651/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control152.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control152.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate152

namespace DiagonalRamsey.JointInheritedCertificate164
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(106707748407/500000000000 : ℚ), (2187481550067/2500000000 : ℚ), (-187380708023781/1000000000000 : ℚ), 11⟩,
    ⟨(214457781899/1000000000000 : ℚ), (237021020997/2500000000 : ℚ), (-20727736922587/1000000000000 : ℚ), 8⟩,
    ⟨(43306462859/200000000000 : ℚ), (328418181771/10000000000 : ℚ), (-3697713074703/500000000000 : ℚ), 6⟩,
    ⟨(219619115119/1000000000000 : ℚ), (159712680747/10000000000 : ℚ), (-1861070142889/500000000000 : ℚ), 5⟩,
    ⟨(111844228397/500000000000 : ℚ), (91404374159/10000000000 : ℚ), (-2210381507051/1000000000000 : ℚ), 5⟩,
    ⟨(228701149333/1000000000000 : ℚ), (28758287021/5000000000 : ℚ), (-722497447621/500000000000 : ℚ), 4⟩,
    ⟨(234608917769/1000000000000 : ℚ), (9619989331/2500000000 : ℚ), (-200926170751/200000000000 : ℚ), 4⟩,
    ⟨(12067743353/50000000000 : ℚ), (26847483673/10000000000 : ℚ), (-71110851/97656250 : ℚ), 3⟩,
    ⟨(248874030027/1000000000000 : ℚ), (19292777063/10000000000 : ℚ), (-543236070073/1000000000000 : ℚ), 3⟩,
    ⟨(128546996511/500000000000 : ℚ), (3538339569/2500000000 : ℚ), (-413373429637/1000000000000 : ℚ), 3⟩,
    ⟨(265935593307/1000000000000 : ℚ), (5263096261/5000000000 : ℚ), (-12744949573/40000000000 : ℚ), 3⟩,
    ⟨(275313681437/1000000000000 : ℚ), (246508851/312500000 : ℚ), (-247308951187/1000000000000 : ℚ), 3⟩,
    ⟨(285137941297/1000000000000 : ℚ), (5920953991/10000000000 : ℚ), (-96115581623/500000000000 : ℚ), 2⟩,
    ⟨(59062751979/200000000000 : ℚ), (884374887/2000000000 : ℚ), (-148761029023/1000000000000 : ℚ), 2⟩,
    ⟨(61148627707/200000000000 : ℚ), (814538367/2500000000 : ℚ), (-56907293319/500000000000 : ℚ), 2⟩,
    ⟨(316325636599/1000000000000 : ℚ), (2339995839/10000000000 : ℚ), (-17055214251/200000000000 : ℚ), 2⟩,
    ⟨(163479669423/500000000000 : ℚ), (401312311/2500000000 : ℚ), (-1541439221/25000000000 : ℚ), 2⟩,
    ⟨(33754183691/100000000000 : ℚ), (252499701/2500000000 : ℚ), (-41890578421/1000000000000 : ℚ), 2⟩,
    ⟨(347971215549/1000000000000 : ℚ), (261329143/5000000000 : ℚ), (-25194102523/1000000000000 : ℚ), 2⟩,
    ⟨(89536758537/250000000000 : ℚ), (6007759/500000000 : ℚ), (-1373592531/125000000000 : ℚ), 2⟩,
    ⟨(45996411751/125000000000 : ℚ), (-53647923/2500000000 : ℚ), (1160695663/1000000000000 : ℚ), 2⟩,
    ⟨(188674691069/500000000000 : ℚ), (-247187519/5000000000 : ℚ), (11584378149/1000000000000 : ℚ), 2⟩,
    ⟨(386190982423/1000000000000 : ℚ), (-45554373/625000000 : ℚ), (2566848669/125000000000 : ℚ), 2⟩,
    ⟨(394410945417/1000000000000 : ℚ), (-9254521/100000000 : ℚ), (14103054219/500000000000 : ℚ), 2⟩,
    ⟨(80386021677/200000000000 : ℚ), (-1089777291/10000000000 : ℚ), (6949638331/200000000000 : ℚ), 2⟩,
    ⟨(102169014419/250000000000 : ℚ), (-245239473/2000000000 : ℚ), (40276790749/1000000000000 : ℚ), 2⟩,
    ⟨(414583826111/1000000000000 : ℚ), (-669030561/5000000000 : ℚ), (44881107213/1000000000000 : ℚ), 2⟩,
    ⟨(419596518651/1000000000000 : ℚ), (-89245857/625000000 : ℚ), (4862942007/100000000000 : ℚ), 2⟩,
    ⟨(16946634413/40000000000 : ℚ), (-748878431/5000000000 : ℚ), (51573290139/1000000000000 : ℚ), 2⟩,
    ⟨(8535053223/20000000000 : ℚ), (-1548965331/10000000000 : ℚ), (53750683849/1000000000000 : ℚ), 2⟩,
    ⟨(214413596773/500000000000 : ℚ), (-49455317/312500000 : ℚ), (13797063209/250000000000 : ℚ), 2⟩,
    ⟨(429869478631/1000000000000 : ℚ), (-12493873/78125000 : ℚ), (55902927561/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-200161147/1250000000 : ℚ), (55992071593/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (42116703551/125000000000 : ℚ)
  μ := (43/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control164.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control164.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate164

namespace DiagonalRamsey.JointInheritedCertificate165
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(219374771761/1000000000000 : ℚ), (1765974859901/2000000000 : ℚ), (-38873485432229/200000000000 : ℚ), 11⟩,
    ⟨(220436502317/1000000000000 : ℚ), (191381610687/2000000000 : ℚ), (-21500658780193/1000000000000 : ℚ), 8⟩,
    ⟨(111274869191/500000000000 : ℚ), (1657764699/50000000 : ℚ), (-1534249658041/200000000000 : ℚ), 6⟩,
    ⟨(112847064169/500000000000 : ℚ), (80640444929/5000000000 : ℚ), (-1930505676107/500000000000 : ℚ), 5⟩,
    ⟨(229839389991/1000000000000 : ℚ), (92328872527/10000000000 : ℚ), (-143306220357/62500000000 : ℚ), 5⟩,
    ⟨(46989120441/200000000000 : ℚ), (58116202789/10000000000 : ℚ), (-299798533177/200000000000 : ℚ), 4⟩,
    ⟨(120481794683/500000000000 : ℚ), (38893693959/10000000000 : ℚ), (-208446163017/200000000000 : ℚ), 4⟩,
    ⟨(247835394967/1000000000000 : ℚ), (13572751467/5000000000 : ℚ), (-755492400903/1000000000000 : ℚ), 3⟩,
    ⟨(255494839763/1000000000000 : ℚ), (9757157597/5000000000 : ℚ), (-281843280981/500000000000 : ℚ), 3⟩,
    ⟨(52773631823/200000000000 : ℚ), (2864411423/2000000000 : ℚ), (-85802833807/200000000000 : ℚ), 3⟩,
    ⟨(272874713379/1000000000000 : ℚ), (2664283393/2500000000 : ℚ), (-330767222989/1000000000000 : ℚ), 3⟩,
    ⟨(56485552903/200000000000 : ℚ), (3995763357/5000000000 : ℚ), (-256831999073/1000000000000 : ℚ), 3⟩,
    ⟨(146217655709/500000000000 : ℚ), (375215901/625000000 : ℚ), (-199741908031/1000000000000 : ℚ), 2⟩,
    ⟨(15140048797/50000000000 : ℚ), (561072567/1250000000 : ℚ), (-77347317683/500000000000 : ℚ), 2⟩,
    ⟨(156712465533/500000000000 : ℚ), (414083923/1250000000 : ℚ), (-118490826387/1000000000000 : ℚ), 2⟩,
    ⟨(3242048623/10000000000 : ℚ), (2385005703/10000000000 : ℚ), (-88935383711/1000000000000 : ℚ), 2⟩,
    ⟨(335036953011/1000000000000 : ℚ), (32855523/200000000 : ℚ), (-12896887429/200000000000 : ℚ), 2⟩,
    ⟨(69163376849/200000000000 : ℚ), (1041594413/10000000000 : ℚ), (-8805828183/200000000000 : ℚ), 2⟩,
    ⟨(356440839371/1000000000000 : ℚ), (549525733/10000000000 : ℚ), (-5351770441/200000000000 : ℚ), 2⟩,
    ⟨(366806503893/1000000000000 : ℚ), (71618477/5000000000 : ℚ), (-6036013977/500000000000 : ℚ), 2⟩,
    ⟨(75362810159/200000000000 : ℚ), (-38910131/2000000000 : ℚ), (241644783/500000000000 : ℚ), 2⟩,
    ⟨(386367101931/1000000000000 : ℚ), (-15257/320000 : ℚ), (1406265883/125000000000 : ℚ), 2⟩,
    ⟨(98843414049/250000000000 : ℚ), (-356623557/5000000000 : ℚ), (20490913307/1000000000000 : ℚ), 2⟩,
    ⟨(403746975547/1000000000000 : ℚ), (-911415183/10000000000 : ℚ), (355094787/12500000000 : ℚ), 2⟩,
    ⟨(51425802543/125000000000 : ℚ), (-1077012817/10000000000 : ℚ), (17578034473/500000000000 : ℚ), 2⟩,
    ⟨(83655645189/200000000000 : ℚ), (-1214447941/10000000000 : ℚ), (40856894313/1000000000000 : ℚ), 2⟩,
    ⟨(84859242621/200000000000 : ℚ), (-1327113307/10000000000 : ℚ), (2850187589/62500000000 : ℚ), 2⟩,
    ⟨(10735060633/25000000000 : ℚ), (-141760827/1000000000 : ℚ), (9893116523/200000000000 : ℚ), 2⟩,
    ⟨(433547686973/1000000000000 : ℚ), (-743950403/5000000000 : ℚ), (26249217871/500000000000 : ℚ), 2⟩,
    ⟨(436692076929/1000000000000 : ℚ), (-1539445289/10000000000 : ℚ), (54741199701/1000000000000 : ℚ), 2⟩,
    ⟨(219402656497/500000000000 : ℚ), (-393316673/2500000000 : ℚ), (56221715841/1000000000000 : ℚ), 2⟩,
    ⟨(439867043549/1000000000000 : ℚ), (-1590018401/10000000000 : ℚ), (56957677611/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-398026249/2500000000 : ℚ), (57049473939/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (333325678721/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control165.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control165.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate165

namespace DiagonalRamsey.JointInheritedCertificate166
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(112682820023/500000000000 : ℚ), (4454729354659/5000000000 : ℚ), (-1259184236901/6250000000 : ℚ), 11⟩,
    ⟨(7076458251/31250000000 : ℚ), (96569163109/1000000000 : ℚ), (-22286308292577/1000000000000 : ℚ), 8⟩,
    ⟨(228598301153/1000000000000 : ℚ), (334673153421/10000000000 : ℚ), (-7951589942093/1000000000000 : ℚ), 6⟩,
    ⟨(231799829967/1000000000000 : ℚ), (162841664357/10000000000 : ℚ), (-50026761457/12500000000 : ℚ), 5⟩,
    ⟨(236020418001/1000000000000 : ℚ), (46624424943/5000000000 : ℚ), (-1188373020739/500000000000 : ℚ), 5⟩,
    ⟨(48243883737/200000000000 : ℚ), (14678193349/2500000000 : ℚ), (-776924326807/500000000000 : ℚ), 4⟩,
    ⟨(247346762801/1000000000000 : ℚ), (1965260129/500000000 : ℚ), (-135052376471/125000000000 : ℚ), 4⟩,
    ⟨(10173737627/40000000000 : ℚ), (2744180487/1000000000 : ℚ), (-78322903947/100000000000 : ℚ), 3⟩,
    ⟨(131071035237/500000000000 : ℚ), (9867234219/5000000000 : ℚ), (-146111010953/250000000000 : ℚ), 3⟩,
    ⟨(270667547131/1000000000000 : ℚ), (14489596637/10000000000 : ℚ), (-111220903407/250000000000 : ℚ), 3⟩,
    ⟨(55967553129/200000000000 : ℚ), (1348384167/1250000000 : ℚ), (-343082902681/1000000000000 : ℚ), 3⟩,
    ⟨(144782205899/500000000000 : ℚ), (1618776509/2000000000 : ℚ), (-53297061343/200000000000 : ℚ), 3⟩,
    ⟨(299753812671/1000000000000 : ℚ), (1217030153/2000000000 : ℚ), (-207351102801/1000000000000 : ℚ), 2⟩,
    ⟨(310307838763/1000000000000 : ℚ), (113863633/250000000 : ℚ), (-160702141437/1000000000000 : ℚ), 2⟩,
    ⟨(160562424517/500000000000 : ℚ), (3366496073/10000000000 : ℚ), (-123221757629/1000000000000 : ℚ), 2⟩,
    ⟨(332100669761/1000000000000 : ℚ), (485871989/2000000000 : ℚ), (-1447409347/15625000000 : ℚ), 2⟩,
    ⟨(343129597791/1000000000000 : ℚ), (839838727/5000000000 : ℚ), (-67338698751/1000000000000 : ℚ), 2⟩,
    ⟨(354105418519/1000000000000 : ℚ), (1072588881/10000000000 : ℚ), (-9237077379/200000000000 : ℚ), 2⟩,
    ⟨(36492242879/100000000000 : ℚ), (57581237/1000000000 : ℚ), (-2833346861/100000000000 : ℚ), 2⟩,
    ⟨(187738227441/500000000000 : ℚ), (16575513/1000000000 : ℚ), (-13158876177/1000000000000 : ℚ), 2⟩,
    ⟨(77133171151/200000000000 : ℚ), (-87529211/5000000000 : ℚ), (-192586179/1000000000000 : ℚ), 2⟩,
    ⟨(98848125477/250000000000 : ℚ), (-91944679/2000000000 : ℚ), (2730377999/250000000000 : ℚ), 2⟩,
    ⟨(404562720421/1000000000000 : ℚ), (-139629783/2000000000 : ℚ), (2045597671/100000000000 : ℚ), 2⟩,
    ⟨(206544098539/500000000000 : ℚ), (-89789301/1000000000 : ℚ), (1144825761/40000000000 : ℚ), 2⟩,
    ⟨(210443413439/500000000000 : ℚ), (-1064754403/10000000000 : ℚ), (7115528327/200000000000 : ℚ), 2⟩,
    ⟨(26742719047/62500000000 : ℚ), (-601598519/5000000000 : ℚ), (20726179831/500000000000 : ℚ), 2⟩,
    ⟨(434010848867/1000000000000 : ℚ), (-131665757/1000000000 : ℚ), (46341558373/1000000000000 : ℚ), 2⟩,
    ⟨(27450615597/62500000000 : ℚ), (-1407769537/10000000000 : ℚ), (25159702677/500000000000 : ℚ), 2⟩,
    ⟨(221715218793/500000000000 : ℚ), (-1478527157/10000000000 : ℚ), (53441984371/1000000000000 : ℚ), 2⟩,
    ⟨(446631966399/1000000000000 : ℚ), (-1530404423/10000000000 : ℚ), (55750644473/1000000000000 : ℚ), 2⟩,
    ⟨(1402448761/3125000000 : ℚ), (-24444379/156250000 : ℚ), (28637221743/500000000000 : ℚ), 2⟩,
    ⟨(449864627507/1000000000000 : ℚ), (-316259399/2000000000 : ℚ), (5803185601/100000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-197924577/1250000000 : ℚ), (58126324711/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (329690669037/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control166.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control166.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate166

namespace DiagonalRamsey.JointInheritedCertificate167
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(115723072603/500000000000 : ℚ), (8993290490463/10000000000 : ℚ), (-104423053029513/500000000000 : ℚ), 11⟩,
    ⟨(232546031257/1000000000000 : ℚ), (974944867113/10000000000 : ℚ), (-5775591624447/250000000000 : ℚ), 8⟩,
    ⟨(29341901357/125000000000 : ℚ), (84490207933/2500000000 : ℚ), (-824280728633/100000000000 : ℚ), 6⟩,
    ⟨(237992601007/1000000000000 : ℚ), (164486671983/10000000000 : ℚ), (-4148765193961/1000000000000 : ℚ), 5⟩,
    ⟨(242286831261/1000000000000 : ℚ), (18843767447/2000000000 : ℚ), (-2463873514203/1000000000000 : ℚ), 5⟩,
    ⟨(123788272917/500000000000 : ℚ), (11868411977/2000000000 : ℚ), (-1610865687327/1000000000000 : ℚ), 4⟩,
    ⟨(253810801883/1000000000000 : ℚ), (39739510069/10000000000 : ℚ), (-1120124863421/1000000000000 : ℚ), 4⟩,
    ⟨(130464780057/500000000000 : ℚ), (5550942539/2000000000 : ℚ), (-812080411897/1000000000000 : ℚ), 3⟩,
    ⟨(134432131497/500000000000 : ℚ), (19967116617/10000000000 : ℚ), (-121209548713/200000000000 : ℚ), 3⟩,
    ⟨(69384623749/250000000000 : ℚ), (7333387511/5000000000 : ℚ), (-461411768701/1000000000000 : ℚ), 3⟩,
    ⟨(71717179631/250000000000 : ℚ), (682787317/625000000 : ℚ), (-88980382913/250000000000 : ℚ), 3⟩,
    ⟨(296765078427/1000000000000 : ℚ), (1640460547/2000000000 : ℚ), (-138280209689/500000000000 : ℚ), 3⟩,
    ⟨(153566133673/500000000000 : ℚ), (3085881409/5000000000 : ℚ), (-33641407/156250000 : ℚ), 2⟩,
    ⟨(317870443587/1000000000000 : ℚ), (4624542051/10000000000 : ℚ), (-20874311323/125000000000 : ℚ), 2⟩,
    ⟨(164438096321/500000000000 : ℚ), (1711831441/5000000000 : ℚ), (-25638069653/200000000000 : ℚ), 2⟩,
    ⟨(340043523131/1000000000000 : ℚ), (1238255729/5000000000 : ℚ), (-96533030323/1000000000000 : ℚ), 2⟩,
    ⟨(351264887557/1000000000000 : ℚ), (343788301/2000000000 : ℚ), (-8795331963/125000000000 : ℚ), 2⟩,
    ⟨(181216109023/500000000000 : ℚ), (552798411/5000000000 : ℚ), (-48486714919/1000000000000 : ℚ), 2⟩,
    ⟨(373437967101/1000000000000 : ℚ), (603829963/10000000000 : ℚ), (-3754133917/125000000000 : ℚ), 2⟩,
    ⟨(192088071671/500000000000 : ℚ), (189774629/10000000000 : ℚ), (-14354234327/1000000000000 : ℚ), 2⟩,
    ⟨(197271666131/500000000000 : ℚ), (-154252161/10000000000 : ℚ), (-96342737/100000000000 : ℚ), 2⟩,
    ⟨(101109923041/250000000000 : ℚ), (-441504593/10000000000 : ℚ), (2101815667/200000000000 : ℚ), 2⟩,
    ⟨(103442478923/250000000000 : ℚ), (-170503739/2500000000 : ℚ), (5086597717/250000000000 : ℚ), 2⟩,
    ⟨(211222073847/500000000000 : ℚ), (-55214833/625000000 : ℚ), (28766581361/1000000000000 : ℚ), 2⟩,
    ⟨(215189425287/500000000000 : ℚ), (-525822851/5000000000 : ℚ), (35938238719/1000000000000 : ℚ), 2⟩,
    ⟨(87499521761/200000000000 : ℚ), (-1191163137/10000000000 : ℚ), (41991834403/1000000000000 : ℚ), 2⟩,
    ⟨(221865932427/500000000000 : ℚ), (-261094527/2000000000 : ℚ), (23514059059/500000000000 : ℚ), 2⟩,
    ⟨(449021579427/1000000000000 : ℚ), (-1397243837/10000000000 : ℚ), (51124369373/1000000000000 : ℚ), 2⟩,
    ⟨(453315809681/1000000000000 : ℚ), (-1468498691/10000000000 : ℚ), (54339065169/1000000000000 : ℚ), 2⟩,
    ⟨(57071649979/125000000000 : ℚ), (-1520731927/10000000000 : ℚ), (28357673109/500000000000 : ℚ), 2⟩,
    ⟨(458762379431/1000000000000 : ℚ), (-1554997221/10000000000 : ℚ), (58283546323/1000000000000 : ℚ), 2⟩,
    ⟨(459862265483/1000000000000 : ℚ), (-196495797/1250000000 : ℚ), (29531479513/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1574079943/10000000000 : ℚ), (29580084289/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (325998261669/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control167.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control167.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate167

namespace DiagonalRamsey.JointInheritedCertificate168
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118778170899/500000000000 : ℚ), (113457480333/125000000 : ℚ), (-54084817720223/250000000000 : ℚ), 11⟩,
    ⟨(59668736757/250000000000 : ℚ), (492069972551/5000000000 : ℚ), (-5982819753961/250000000000 : ℚ), 8⟩,
    ⟨(24090138471/100000000000 : ℚ), (68245519677/2000000000 : ℚ), (-1707716948549/200000000000 : ℚ), 6⟩,
    ⟨(24421421303/100000000000 : ℚ), (83060508429/5000000000 : ℚ), (-2148832439867/500000000000 : ℚ), 5⟩,
    ⟨(248581527641/1000000000000 : ℚ), (23795591419/2500000000 : ℚ), (-1276168332577/500000000000 : ℚ), 5⟩,
    ⟨(63490317229/250000000000 : ℚ), (2998350093/500000000 : ℚ), (-417185803721/250000000000 : ℚ), 4⟩,
    ⟨(52060325401/200000000000 : ℚ), (2008533817/500000000 : ℚ), (-145052303423/125000000000 : ℚ), 4⟩,
    ⟨(53508308159/200000000000 : ℚ), (28065222633/10000000000 : ℚ), (-841348876981/1000000000000 : ℚ), 3⟩,
    ⟨(137805642979/500000000000 : ℚ), (10098926719/5000000000 : ℚ), (-156988758353/250000000000 : ℚ), 3⟩,
    ⟨(71108286609/250000000000 : ℚ), (3710593599/2500000000 : ℚ), (-9563288971/20000000000 : ℚ), 3⟩,
    ⟨(29392216289/100000000000 : ℚ), (11060776433/10000000000 : ℚ), (-73785525231/200000000000 : ℚ), 3⟩,
    ⟨(60797390181/200000000000 : ℚ), (207738717/250000000 : ℚ), (-71690166589/250000000000 : ℚ), 3⟩,
    ⟨(31453058107/100000000000 : ℚ), (6257326801/10000000000 : ℚ), (-223351944433/1000000000000 : ℚ), 2⟩,
    ⟨(325451512463/1000000000000 : ℚ), (1173396549/2500000000 : ℚ), (-173355118277/1000000000000 : ℚ), 2⟩,
    ⟨(67328914109/200000000000 : ℚ), (3479950731/10000000000 : ℚ), (-33301964551/250000000000 : ℚ), 2⟩,
    ⟨(21750122503/62500000000 : ℚ), (504568363/2000000000 : ℚ), (-25116371299/250000000000 : ℚ), 2⟩,
    ⟨(359414303101/1000000000000 : ℚ), (439357647/2500000000 : ℚ), (-18352013363/250000000000 : ℚ), 2⟩,
    ⟨(92692923151/250000000000 : ℚ), (1137867339/10000000000 : ℚ), (-406397821/8000000000 : ℚ), 2⟩,
    ⟨(190982375343/500000000000 : ℚ), (126228229/2000000000 : ℚ), (-31736516599/1000000000000 : ℚ), 2⟩,
    ⟨(392885682079/1000000000000 : ℚ), (106556861/5000000000 : ℚ), (-7773559999/500000000000 : ℚ), 2⟩,
    ⟨(100857328061/250000000000 : ℚ), (-134104221/10000000000 : ℚ), (-69068387/40000000000 : ℚ), 2⟩,
    ⟨(413494100259/1000000000000 : ℚ), (-423925167/10000000000 : ℚ), (10108294901/1000000000000 : ℚ), 2⟩,
    ⟨(211491558357/500000000000 : ℚ), (-166626003/2500000000 : ℚ), (10125868329/500000000000 : ℚ), 2⟩,
    ⟨(53975622149/125000000000 : ℚ), (-173918099/2000000000 : ℚ), (7232517611/250000000000 : ℚ), 2⟩,
    ⟨(219937361177/500000000000 : ℚ), (-207826723/2000000000 : ℚ), (36318466953/1000000000000 : ℚ), 2⟩,
    ⟨(27944664759/62500000000 : ℚ), (-1179715357/10000000000 : ℚ), (8510515171/200000000000 : ℚ), 2⟩,
    ⟨(453454994233/1000000000000 : ℚ), (-647432477/5000000000 : ℚ), (5967151959/125000000000 : ℚ), 2⟩,
    ⟨(114708683877/250000000000 : ℚ), (-693644037/5000000000 : ℚ), (25976420731/500000000000 : ℚ), 2⟩,
    ⟨(11580051253/25000000000 : ℚ), (-182379293/1250000000 : ℚ), (55260373413/1000000000000 : ℚ), 2⟩,
    ⟨(11662871961/25000000000 : ℚ), (-755809603/5000000000 : ℚ), (5770478277/100000000000 : ℚ), 2⟩,
    ⟨(468741316121/1000000000000 : ℚ), (-1546111069/10000000000 : ℚ), (2965885339/50000000000 : ℚ), 2⟩,
    ⟨(469859921351/1000000000000 : ℚ), (-781595599/5000000000 : ℚ), (60119276769/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1565318529/10000000000 : ℚ), (30109623217/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (80569850737/250000000000 : ℚ)
  μ := (47/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control168.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control168.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate168

namespace DiagonalRamsey.JointInheritedCertificate169
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(243756449101/1000000000000 : ℚ), (9164059072009/10000000000 : ℚ), (-224118165366959/1000000000000 : ℚ), 11⟩,
    ⟨(122446670413/500000000000 : ℚ), (496897109183/5000000000 : ℚ), (-4958366187421/200000000000 : ℚ), 8⟩,
    ⟨(247156175389/1000000000000 : ℚ), (86164524107/2500000000 : ℚ), (-8845674802469/1000000000000 : ℚ), 6⟩,
    ⟨(50104632091/200000000000 : ℚ), (2622464273/156250000 : ℚ), (-2226138757941/500000000000 : ℚ), 5⟩,
    ⟨(127480935059/500000000000 : ℚ), (24048695643/2500000000 : ℚ), (-20657883227/7812500000 : ℚ), 5⟩,
    ⟨(32553694647/125000000000 : ℚ), (60623920543/10000000000 : ℚ), (-432216141301/250000000000 : ℚ), 4⟩,
    ⟨(53374712963/200000000000 : ℚ), (40624120017/10000000000 : ℚ), (-1202286285599/1000000000000 : ℚ), 4⟩,
    ⟨(137115916859/500000000000 : ℚ), (5678390309/2000000000 : ℚ), (-871772350089/1000000000000 : ℚ), 3⟩,
    ⟨(141216749867/500000000000 : ℚ), (20440786341/10000000000 : ℚ), (-8134223903/12500000000 : ℚ), 3⟩,
    ⟨(58279915267/200000000000 : ℚ), (15027373871/10000000000 : ℚ), (-123899399549/250000000000 : ℚ), 3⟩,
    ⟨(150521857651/500000000000 : ℚ), (280108583/250000000 : ℚ), (-382472919897/1000000000000 : ℚ), 3⟩,
    ⟨(9727282447/31250000000 : ℚ), (4211346539/5000000000 : ℚ), (-74348716417/250000000000 : ℚ), 3⟩,
    ⟨(321989031371/1000000000000 : ℚ), (3173831527/5000000000 : ℚ), (-57938153183/250000000000 : ℚ), 2⟩,
    ⟨(333088493629/1000000000000 : ℚ), (297908479/625000000 : ℚ), (-22500898121/125000000000 : ℚ), 2⟩,
    ⟨(344464531191/1000000000000 : ℚ), (221216677/625000000 : ℚ), (-34616928407/250000000000 : ℚ), 2⟩,
    ⟨(71201517319/200000000000 : ℚ), (2571865381/10000000000 : ℚ), (-10460112231/100000000000 : ℚ), 2⟩,
    ⟨(367606493909/1000000000000 : ℚ), (449546497/2500000000 : ℚ), (-957813601/12500000000 : ℚ), 2⟩,
    ⟨(379149549313/1000000000000 : ℚ), (73253807/625000000 : ℚ), (-2662938703/50000000000 : ℚ), 2⟩,
    ⟨(624840939/1600000000 : ℚ), (33004883/500000000 : ℚ), (-6713018991/200000000000 : ℚ), 2⟩,
    ⟨(200812524567/500000000000 : ℚ), (237872383/10000000000 : ℚ), (-16848006021/1000000000000 : ℚ), 2⟩,
    ⟨(2061705211/5000000000 : ℚ), (-112720851/10000000000 : ℚ), (-51678243/20000000000 : ℚ), 2⟩,
    ⟨(422570365203/1000000000000 : ℚ), (-40526079/1000000000 : ℚ), (9625175227/1000000000000 : ℚ), 2⟩,
    ⟨(43221450417/100000000000 : ℚ), (-32501557/500000000 : ℚ), (20084271229/1000000000000 : ℚ), 2⟩,
    ⟨(441180580771/1000000000000 : ℚ), (-427441087/5000000000 : ℚ), (14514280997/500000000000 : ℚ), 2⟩,
    ⟨(224691123393/500000000000 : ℚ), (-512920871/5000000000 : ℚ), (36640077681/1000000000000 : ℚ), 2⟩,
    ⟨(45674051569/100000000000 : ℚ), (-116755381/1000000000 : ℚ), (269124187/6250000000 : ℚ), 2⟩,
    ⟨(7237258177/15625000000 : ℚ), (-256719251/2000000000 : ℚ), (3024812821/62500000000 : ℚ), 2⟩,
    ⟨(468652210387/1000000000000 : ℚ), (-1376712669/10000000000 : ℚ), (52735256579/1000000000000 : ℚ), 2⟩,
    ⟨(473090920049/1000000000000 : ℚ), (-1448981833/10000000000 : ℚ), (3508631249/62500000000 : ℚ), 2⟩,
    ⟨(95291581023/200000000000 : ℚ), (-150194101/1000000000 : ℚ), (2346096899/40000000000 : ℚ), 2⟩,
    ⟨(239360369839/500000000000 : ℚ), (-48021067/312500000 : ℚ), (60311227129/1000000000000 : ℚ), 2⟩,
    ⟨(119964407851/250000000000 : ℚ), (-1553872471/10000000000 : ℚ), (61135522787/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1556014463/10000000000 : ℚ), (956848799/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (318502439431/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control169.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control169.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate169

namespace DiagonalRamsey.JointInheritedCertificate170
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(256430382407/1000000000000 : ℚ), (9351357667323/10000000000 : ℚ), (-120287684504619/500000000000 : ℚ), 11⟩,
    ⟨(257602529887/1000000000000 : ℚ), (63404467383/625000000 : ℚ), (-13306261536711/500000000000 : ℚ), 8⟩,
    ⟨(129967768213/500000000000 : ℚ), (352007172339/10000000000 : ℚ), (-2373864648559/250000000000 : ℚ), 6⟩,
    ⟨(32925866737/125000000000 : ℚ), (85758314357/5000000000 : ℚ), (-955895979107/200000000000 : ℚ), 5⟩,
    ⟨(133991645421/500000000000 : ℚ), (49182696459/5000000000 : ℚ), (-177417456303/62500000000 : ℚ), 5⟩,
    ⟨(54724106889/200000000000 : ℚ), (62033119189/10000000000 : ℚ), (-232020528313/125000000000 : ℚ), 4⟩,
    ⟨(140132187483/500000000000 : ℚ), (10399362227/2500000000 : ℚ), (-40342855949/31250000000 : ℚ), 4⟩,
    ⟨(28785082859/100000000000 : ℚ), (727344549/250000000 : ℚ), (-468124408039/500000000000 : ℚ), 3⟩,
    ⟨(148153416811/500000000000 : ℚ), (20963022273/10000000000 : ℚ), (-699053585847/1000000000000 : ℚ), 3⟩,
    ⟨(305550954109/1000000000000 : ℚ), (241021831/156250000 : ℚ), (-53259956111/100000000000 : ℚ), 3⟩,
    ⟨(7887354103/25000000000 : ℚ), (11513490803/10000000000 : ℚ), (-411254415681/1000000000000 : ℚ), 3⟩,
    ⟨(65208141021/200000000000 : ℚ), (8666545619/10000000000 : ℚ), (-320022804797/1000000000000 : ℚ), 3⟩,
    ⟨(33708900811/100000000000 : ℚ), (3271265767/5000000000 : ℚ), (-249660885281/1000000000000 : ℚ), 2⟩,
    ⟨(348532671937/1000000000000 : ℚ), (4924036181/10000000000 : ℚ), (-194222098091/1000000000000 : ℚ), 2⟩,
    ⟨(45032685981/125000000000 : ℚ), (3668072963/10000000000 : ℚ), (-149743583923/1000000000000 : ℚ), 2⟩,
    ⟨(186081250467/500000000000 : ℚ), (2677882969/10000000000 : ℚ), (-56752596293/500000000000 : ℚ), 2⟩,
    ⟨(384121097933/1000000000000 : ℚ), (29474797/156250000 : ℚ), (-83592570173/1000000000000 : ℚ), 2⟩,
    ⟨(396022111019/1000000000000 : ℚ), (62305409/500000000 : ℚ), (-3664350173/62500000000 : ℚ), 2⟩,
    ⟨(40775092693/100000000000 : ℚ), (22588653/312500000 : ℚ), (-37609115457/1000000000000 : ℚ), 2⟩,
    ⟨(419194590757/1000000000000 : ℚ), (72884419/2500000000 : ℚ), (-19782635473/1000000000000 : ℚ), 2⟩,
    ⟨(215121446881/500000000000 : ℚ), (-33179779/5000000000 : ℚ), (-917356273/200000000000 : ℚ), 2⟩,
    ⟨(440789434747/1000000000000 : ℚ), (-2918319/80000000 : ℚ), (1681400043/200000000000 : ℚ), 2⟩,
    ⟨(225366322379/500000000000 : ℚ), (-307156581/5000000000 : ℚ), (19527445627/1000000000000 : ℚ), 2⟩,
    ⟨(229988382623/500000000000 : ℚ), (-822995341/10000000000 : ℚ), (29028296469/1000000000000 : ℚ), 2⟩,
    ⟨(468432770277/1000000000000 : ℚ), (-997033509/10000000000 : ℚ), (2319136097/62500000000 : ℚ), 2⟩,
    ⟨(476019223901/1000000000000 : ℚ), (-570602373/5000000000 : ℚ), (43913647249/1000000000000 : ℚ), 2⟩,
    ⟨(482663064423/1000000000000 : ℚ), (-1259191471/10000000000 : ℚ), (4956883197/100000000000 : ℚ), 2⟩,
    ⟨(19532012321/40000000000 : ℚ), (-676909423/5000000000 : ℚ), (54162592093/1000000000000 : ℚ), 2⟩,
    ⟨(492876664971/1000000000000 : ℚ), (-713614199/5000000000 : ℚ), (14440967009/250000000000 : ℚ), 2⟩,
    ⟨(496348062441/1000000000000 : ℚ), (-296200877/2000000000 : ℚ), (15105912151/250000000000 : ℚ), 2⟩,
    ⟨(24934053449/50000000000 : ℚ), (-758132111/5000000000 : ℚ), (62177863399/1000000000000 : ℚ), 2⟩,
    ⟨(499853216461/1000000000000 : ℚ), (-383430161/2500000000 : ℚ), (63049403521/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-767947327/5000000000 : ℚ), (63158088053/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (31077059627/100000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control170.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control170.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate170

namespace DiagonalRamsey.JointInheritedCertificate171
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(53867436523/200000000000 : ℚ), (298277872169/312500000 : ℚ), (-128949104865957/500000000000 : ℚ), 11⟩,
    ⟨(270543465207/1000000000000 : ℚ), (1035837651647/10000000000 : ℚ), (-28528925785523/1000000000000 : ℚ), 8⟩,
    ⟨(272944413231/1000000000000 : ℚ), (179800713531/5000000000 : ℚ), (-2544840150427/250000000000 : ℚ), 6⟩,
    ⟨(138258452123/500000000000 : ℚ), (21914809391/1250000000 : ℚ), (-2561916705193/500000000000 : ℚ), 5⟩,
    ⟨(35153316651/125000000000 : ℚ), (100608634627/10000000000 : ℚ), (-3043320860387/1000000000000 : ℚ), 5⟩,
    ⟨(143513971909/500000000000 : ℚ), (63489497663/10000000000 : ℚ), (-1990104704951/1000000000000 : ℚ), 4⟩,
    ⟨(146932632659/500000000000 : ℚ), (42603331811/10000000000 : ℚ), (-138426953901/100000000000 : ℚ), 4⟩,
    ⟨(301672650567/1000000000000 : ℚ), (5963801003/2000000000 : ℚ), (-1004068928159/1000000000000 : ℚ), 3⟩,
    ⟨(9699215943/31250000000 : ℚ), (21502545329/10000000000 : ℚ), (-18746685441/25000000000 : ℚ), 3⟩,
    ⟨(319888236627/1000000000000 : ℚ), (7918222793/5000000000 : ℚ), (-4464919653/7812500000 : ℚ), 3⟩,
    ⟨(165060505693/500000000000 : ℚ), (11832580463/10000000000 : ℚ), (-110379343547/250000000000 : ℚ), 3⟩,
    ⟨(340974687239/1000000000000 : ℚ), (445902379/500000000 : ℚ), (-85953673471/250000000000 : ℚ), 3⟩,
    ⟨(176172368677/500000000000 : ℚ), (674330663/1000000000 : ℚ), (-134245735283/500000000000 : ℚ), 2⟩,
    ⟨(364121661933/1000000000000 : ℚ), (2543047731/5000000000 : ℚ), (-104586036537/500000000000 : ℚ), 2⟩,
    ⟨(188096021377/500000000000 : ℚ), (950045291/2500000000 : ℚ), (-161607288127/1000000000000 : ℚ), 2⟩,
    ⟨(97109908863/250000000000 : ℚ), (1393282671/5000000000 : ℚ), (-12287998803/100000000000 : ℚ), 2⟩,
    ⟨(200373244507/500000000000 : ℚ), (988291983/5000000000 : ℚ), (-18187354767/200000000000 : ℚ), 2⟩,
    ⟨(412994081711/1000000000000 : ℚ), (1321613877/10000000000 : ℚ), (-64301167489/1000000000000 : ℚ), 2⟩,
    ⟨(425064462533/1000000000000 : ℚ), (196650203/2500000000 : ℚ), (-20946068599/500000000000 : ℚ), 2⟩,
    ⟨(54605173389/125000000000 : ℚ), (345876761/10000000000 : ℚ), (-22905938439/1000000000000 : ℚ), 2⟩,
    ⟨(448211437227/1000000000000 : ℚ), (-19608593/10000000000 : ℚ), (-3368610671/500000000000 : ℚ), 2⟩,
    ⟨(11476627827/25000000000 : ℚ), (-32415923/1000000000 : ℚ), (7074833203/1000000000000 : ℚ), 2⟩,
    ⟨(469297887839/1000000000000 : ℚ), (-578621177/10000000000 : ℚ), (9442012393/500000000000 : ℚ), 2⟩,
    ⟨(47881121429/100000000000 : ℚ), (-791283979/10000000000 : ℚ), (14481861023/500000000000 : ℚ), 2⟩,
    ⟨(487513473899/1000000000000 : ℚ), (-193704079/2000000000 : ℚ), (37526005387/1000000000000 : ℚ), 2⟩,
    ⟨(495320859147/1000000000000 : ℚ), (-1115245807/10000000000 : ℚ), (44735635361/1000000000000 : ℚ), 2⟩,
    ⟨(62769772581/125000000000 : ℚ), (-308812841/2500000000 : ℚ), (50720359577/1000000000000 : ℚ), 2⟩,
    ⟨(253979795629/500000000000 : ℚ), (-332861787/2500000000 : ℚ), (27789287403/500000000000 : ℚ), 2⟩,
    ⟨(25633461011/50000000000 : ℚ), (-351510019/2500000000 : ℚ), (5938504093/100000000000 : ℚ), 2⟩,
    ⟨(258120855617/500000000000 : ℚ), (-1460663421/10000000000 : ℚ), (6219511991/100000000000 : ℚ), 2⟩,
    ⟨(518642659259/1000000000000 : ℚ), (-299293907/2000000000 : ℚ), (32023932547/500000000000 : ℚ), 2⟩,
    ⟨(519848941851/1000000000000 : ℚ), (-302838721/2000000000 : ℚ), (16242044557/250000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-94775051/625000000 : ℚ), (16270734129/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (9464664353/31250000000 : ℚ)
  μ := (13/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control171.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control171.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate171

namespace DiagonalRamsey.JointInheritedCertificate172
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144589005733/500000000000 : ℚ), (7910164868901/2000000000 : ℚ), (-114481988133879/100000000000 : ℚ), 13⟩,
    ⟨(36186516957/125000000000 : ℚ), (1090751771817/2500000000 : ℚ), (-127062222059289/1000000000000 : ℚ), 10⟩,
    ⟨(145059813641/500000000000 : ℚ), (1552517581077/10000000000 : ℚ), (-45641611502719/1000000000000 : ℚ), 8⟩,
    ⟨(145529487331/500000000000 : ℚ), (780285879817/10000000000 : ℚ), (-2901175488897/125000000000 : ℚ), 7⟩,
    ⟨(292307914827/1000000000000 : ℚ), (463687578229/10000000000 : ℚ), (-13978043667863/1000000000000 : ℚ), 7⟩,
    ⟨(29386343897/100000000000 : ℚ), (304193174337/10000000000 : ℚ), (-46525721713/5000000000 : ℚ), 6⟩,
    ⟨(147860899849/500000000000 : ℚ), (106495853351/5000000000 : ℚ), (-1323506933291/200000000000 : ℚ), 6⟩,
    ⟨(59575704011/200000000000 : ℚ), (78079194807/5000000000 : ℚ), (-197252223709/40000000000 : ℚ), 5⟩,
    ⟨(60065680863/200000000000 : ℚ), (59234185863/5000000000 : ℚ), (-760873964737/200000000000 : ℚ), 5⟩,
    ⟨(303065550491/1000000000000 : ℚ), (18453616671/2000000000 : ℚ), (-602836302139/200000000000 : ℚ), 5⟩,
    ⟨(306083364559/1000000000000 : ℚ), (73370583809/10000000000 : ℚ), (-487760551247/200000000000 : ℚ), 4⟩,
    ⟨(15468728817/50000000000 : ℚ), (59330111501/10000000000 : ℚ), (-2006877350569/1000000000000 : ℚ), 4⟩,
    ⟨(39116407127/125000000000 : ℚ), (24320555321/5000000000 : ℚ), (-837196007013/500000000000 : ℚ), 4⟩,
    ⟨(316744838233/1000000000000 : ℚ), (40336191153/10000000000 : ℚ), (-70650153889/50000000000 : ℚ), 4⟩,
    ⟨(320806132739/1000000000000 : ℚ), (8442786751/2500000000 : ℚ), (-1203789257601/1000000000000 : ℚ), 4⟩,
    ⟨(8127633913/25000000000 : ℚ), (356297747/125000000 : ℚ), (-516864168711/500000000000 : ℚ), 3⟩,
    ⟨(329632152369/1000000000000 : ℚ), (4844552859/2000000000 : ℚ), (-446810182041/500000000000 : ℚ), 3⟩,
    ⟨(334375614839/1000000000000 : ℚ), (10351814629/5000000000 : ℚ), (-776816404507/1000000000000 : ℚ), 3⟩,
    ⟨(339324316513/1000000000000 : ℚ), (142252813/80000000 : ℚ), (-169603646929/250000000000 : ℚ), 3⟩,
    ⟨(68893267107/200000000000 : ℚ), (3833374239/2500000000 : ℚ), (-594736958957/1000000000000 : ℚ), 3⟩,
    ⟨(349789284331/1000000000000 : ℚ), (13265823393/10000000000 : ℚ), (-130745099349/250000000000 : ℚ), 3⟩,
    ⟨(355280339451/1000000000000 : ℚ), (2876661941/2500000000 : ℚ), (-460978420459/1000000000000 : ℚ), 3⟩,
    ⟨(360926272463/1000000000000 : ℚ), (9999941229/10000000000 : ℚ), (-40703537279/100000000000 : ℚ), 3⟩,
    ⟨(366713481819/1000000000000 : ℚ), (8701577581/10000000000 : ℚ), (-359808907921/1000000000000 : ℚ), 3⟩,
    ⟨(186314012813/500000000000 : ℚ), (947056869/1250000000 : ℚ), (-318225331927/1000000000000 : ℚ), 3⟩,
    ⟨(94663913807/250000000000 : ℚ), (1319278973/2000000000 : ℚ), (-35177213659/125000000000 : ℚ), 2⟩,
    ⟨(192390924769/500000000000 : ℚ), (5738587997/10000000000 : ℚ), (-248679996199/1000000000000 : ℚ), 2⟩,
    ⟨(195495925009/500000000000 : ℚ), (4984430169/10000000000 : ℚ), (-10971631309/50000000000 : ℚ), 2⟩,
    ⟨(397270696233/1000000000000 : ℚ), (43186407/100000000 : ℚ), (-193196391943/1000000000000 : ℚ), 2⟩,
    ⟨(403603261891/1000000000000 : ℚ), (745717531/2000000000 : ℚ), (-84786207003/500000000000 : ℚ), 2⟩,
    ⟨(409974291289/1000000000000 : ℚ), (800941613/2500000000 : ℚ), (-148226626329/1000000000000 : ℚ), 2⟩,
    ⟨(416368436057/1000000000000 : ℚ), (2735393381/10000000000 : ℚ), (-128877651371/1000000000000 : ℚ), 2⟩,
    ⟨(422770292141/1000000000000 : ℚ), (2316086073/10000000000 : ℚ), (-55643621289/500000000000 : ℚ), 2⟩,
    ⟨(429164436909/1000000000000 : ℚ), (969805201/5000000000 : ℚ), (-23813173093/250000000000 : ℚ), 2⟩,
    ⟨(217767733153/500000000000 : ℚ), (1600678561/10000000000 : ℚ), (-40300377873/500000000000 : ℚ), 2⟩,
    ⟨(88373606393/200000000000 : ℚ), (323696723/2500000000 : ℚ), (-13436550689/200000000000 : ℚ), 2⟩,
    ⟨(448146878179/1000000000000 : ℚ), (203616967/2000000000 : ℚ), (-27435300221/500000000000 : ℚ), 2⟩,
    ⟨(454356878659/1000000000000 : ℚ), (383634197/5000000000 : ℚ), (-43553563899/1000000000000 : ℚ), 2⟩,
    ⟨(46048307297/100000000000 : ℚ), (269746539/5000000000 : ℚ), (-16567801547/500000000000 : ℚ), 2⟩,
    ⟨(116627675643/250000000000 : ℚ), (16615119/500000000 : ℚ), (-23533173767/1000000000000 : ℚ), 2⟩,
    ⟨(236212623189/500000000000 : ℚ), (143568739/10000000000 : ℚ), (-14673406513/1000000000000 : ℚ), 2⟩,
    ⟨(239106227867/500000000000 : ℚ), (-7138851/2500000000 : ℚ), (-3246294571/500000000000 : ℚ), 2⟩,
    ⟨(241929194373/500000000000 : ℚ), (-46419591/2500000000 : ℚ), (42604183/40000000000 : ℚ), 2⟩,
    ⟨(244674721933/500000000000 : ℚ), (-4115041/125000000 : ℚ), (804868359/100000000000 : ℚ), 2⟩,
    ⟨(247336196331/500000000000 : ℚ), (-230178351/5000000000 : ℚ), (14501242137/1000000000000 : ℚ), 2⟩,
    ⟨(99962882337/200000000000 : ℚ), (-36263291/625000000 : ℚ), (20460724319/1000000000000 : ℚ), 2⟩,
    ⟨(504763113359/1000000000000 : ℚ), (-689712977/10000000000 : ℚ), (25960575119/1000000000000 : ℚ), 2⟩,
    ⟨(127376643957/250000000000 : ℚ), (-789684521/10000000000 : ℚ), (31030294579/1000000000000 : ℚ), 2⟩,
    ⟨(257016685839/500000000000 : ℚ), (-880853803/10000000000 : ℚ), (35695914041/1000000000000 : ℚ), 2⟩,
    ⟨(518332595459/1000000000000 : ℚ), (-963859443/10000000000 : ℚ), (39980403053/1000000000000 : ℚ), 2⟩,
    ⟨(104478777993/200000000000 : ℚ), (-1039262793/10000000000 : ℚ), (43904020301/1000000000000 : ℚ), 2⟩,
    ⟨(526207471181/1000000000000 : ℚ), (-1107557019/10000000000 : ℚ), (5935577017/125000000000 : ℚ), 2⟩,
    ⟨(264882075929/500000000000 : ℚ), (-1169174867/10000000000 : ℚ), (25368946611/500000000000 : ℚ), 2⟩,
    ⟨(266527681819/500000000000 : ℚ), (-244899063/2000000000 : ℚ), (53677632111/1000000000000 : ℚ), 2⟩,
    ⟨(268036588853/500000000000 : ℚ), (-1273849261/10000000000 : ℚ), (14078971361/250000000000 : ℚ), 2⟩,
    ⟨(269405161941/500000000000 : ℚ), (-164690549/1250000000 : ℚ), (3666446637/62500000000 : ℚ), 2⟩,
    ⟨(270630104071/500000000000 : ℚ), (-135576933/1000000000 : ℚ), (6072849169/100000000000 : ℚ), 2⟩,
    ⟨(1086833857/2000000000 : ℚ), (-694398579/5000000000 : ℚ), (12503941509/200000000000 : ℚ), 2⟩,
    ⟨(545275289227/1000000000000 : ℚ), (-354197099/2500000000 : ℚ), (4002712069/62500000000 : ℚ), 2⟩,
    ⟨(54683081337/100000000000 : ℚ), (-1439893481/10000000000 : ℚ), (65305049499/1000000000000 : ℚ), 2⟩,
    ⟨(109615950707/200000000000 : ℚ), (-729117411/5000000000 : ℚ), (33154577011/500000000000 : ℚ), 2⟩,
    ⟨(109803820183/200000000000 : ℚ), (-36797711/250000000 : ℚ), (67059218697/1000000000000 : ℚ), 2⟩,
    ⟨(274823296271/500000000000 : ℚ), (-1480985263/10000000000 : ℚ), (16889459541/250000000000 : ℚ), 2⟩,
    ⟨(549960716731/1000000000000 : ℚ), (-1485512059/10000000000 : ℚ), (423792019/6250000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-743038683/5000000000 : ℚ), (33918906921/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (36326197051/125000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control172.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control172.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate172

namespace DiagonalRamsey.JointInheritedCertificate173
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(324320637279/1000000000000 : ℚ), (10492385504743/2500000000 : ℚ), (-1362394226681753/1000000000000 : ℚ), 13⟩,
    ⟨(324652655131/1000000000000 : ℚ), (578917758999/1250000000 : ℚ), (-151211266626399/1000000000000 : ℚ), 10⟩,
    ⟨(13012635639/40000000000 : ℚ), (412205752207/2500000000 : ℚ), (-54316645787667/1000000000000 : ℚ), 8⟩,
    ⟨(326308747017/1000000000000 : ℚ), (829196751471/10000000000 : ℚ), (-27621207917377/1000000000000 : ℚ), 7⟩,
    ⟨(327628831381/1000000000000 : ℚ), (98619203441/2000000000 : ℚ), (-665418060033/40000000000 : ℚ), 7⟩,
    ⟨(329272963867/1000000000000 : ℚ), (323731107703/10000000000 : ℚ), (-2768625172743/250000000000 : ℚ), 6⟩,
    ⟨(2587790497/7812500000 : ℚ), (113427143413/5000000000 : ℚ), (-3938075957677/500000000000 : ℚ), 6⟩,
    ⟨(83379189663/250000000000 : ℚ), (1040386787/62500000 : ℚ), (-183421994741/31250000000 : ℚ), 5⟩,
    ⟨(336106197277/1000000000000 : ℚ), (25278992817/2000000000 : ℚ), (-2264225162053/500000000000 : ℚ), 5⟩,
    ⟨(84749815327/250000000000 : ℚ), (98529720907/10000000000 : ℚ), (-224259416611/62500000000 : ℚ), 5⟩,
    ⟨(3421889811/10000000000 : ℚ), (78421554061/10000000000 : ℚ), (-145174633051/50000000000 : ℚ), 4⟩,
    ⟨(172833836169/500000000000 : ℚ), (31736955459/5000000000 : ℚ), (-37336857187/15625000000 : ℚ), 4⟩,
    ⟨(43678369319/125000000000 : ℚ), (52088215213/10000000000 : ℚ), (-398794252301/200000000000 : ℚ), 4⟩,
    ⟨(353457771299/1000000000000 : ℚ), (5404645391/1250000000 : ℚ), (-1682999471037/1000000000000 : ℚ), 4⟩,
    ⟨(357750411991/1000000000000 : ℚ), (7247308469/2000000000 : ℚ), (-143412618219/100000000000 : ℚ), 4⟩,
    ⟨(362294535279/1000000000000 : ℚ), (30616651613/10000000000 : ℚ), (-1231854250683/1000000000000 : ℚ), 3⟩,
    ⟨(91769798493/250000000000 : ℚ), (6511644677/2500000000 : ℚ), (-1065235188989/1000000000000 : ℚ), 3⟩,
    ⟨(372092861409/1000000000000 : ℚ), (22287895193/10000000000 : ℚ), (-926356322141/1000000000000 : ℚ), 3⟩,
    ⟨(188661729613/500000000000 : ℚ), (9582701271/5000000000 : ℚ), (-809384036139/1000000000000 : ℚ), 3⟩,
    ⟨(191379193227/500000000000 : ℚ), (8274058633/5000000000 : ℚ), (-709941207669/1000000000000 : ℚ), 3⟩,
    ⟨(388384549877/1000000000000 : ℚ), (14336597523/10000000000 : ℚ), (-312345889299/500000000000 : ℚ), 3⟩,
    ⟨(49273549447/125000000000 : ℚ), (12454306097/10000000000 : ℚ), (-551057291739/1000000000000 : ℚ), 3⟩,
    ⟨(400155941577/1000000000000 : ℚ), (10841605827/10000000000 : ℚ), (-60877445999/125000000000 : ℚ), 3⟩,
    ⟨(20313640577/50000000000 : ℚ), (147679839/156250000 : ℚ), (-430980854381/1000000000000 : ℚ), 3⟩,
    ⟨(103131067347/250000000000 : ℚ), (8246623737/10000000000 : ℚ), (-76332616013/200000000000 : ℚ), 3⟩,
    ⟨(418895254813/1000000000000 : ℚ), (7196915353/10000000000 : ℚ), (-33803420071/100000000000 : ℚ), 2⟩,
    ⟨(13292825611/31250000000 : ℚ), (784757773/1250000000 : ℚ), (-18703350987/62500000000 : ℚ), 2⟩,
    ⟨(431934164367/1000000000000 : ℚ), (5470215383/10000000000 : ℚ), (-52926243019/200000000000 : ℚ), 2⟩,
    ⟨(438570676621/1000000000000 : ℚ), (4757062771/10000000000 : ℚ), (-233596298671/1000000000000 : ℚ), 2⟩,
    ⟨(3562111747/8000000000 : ℚ), (165004469/400000000 : ℚ), (-205673739371/1000000000000 : ℚ), 2⟩,
    ⟨(451997914903/1000000000000 : ℚ), (3563134969/10000000000 : ℚ), (-90232760993/500000000000 : ℚ), 2⟩,
    ⟨(229378146769/500000000000 : ℚ), (3061738417/10000000000 : ℚ), (-2463067417/15625000000 : ℚ), 2⟩,
    ⟨(232761411377/500000000000 : ℚ), (13065107/50000000 : ℚ), (-6845104861/50000000000 : ℚ), 2⟩,
    ⟨(472281201389/1000000000000 : ℚ), (1105153731/5000000000 : ℚ), (-23604225373/200000000000 : ℚ), 2⟩,
    ⟨(119753786979/250000000000 : ℚ), (923964771/5000000000 : ℚ), (-100786709183/1000000000000 : ℚ), 2⟩,
    ⟨(485708439671/1000000000000 : ℚ), (760528697/5000000000 : ℚ), (-42510685821/500000000000 : ℚ), 2⟩,
    ⟨(19693798077/40000000000 : ℚ), (1225558083/10000000000 : ℚ), (-70572138473/1000000000000 : ℚ), 2⟩,
    ⟨(498908696739/1000000000000 : ℚ), (957882557/10000000000 : ℚ), (-28653337617/500000000000 : ℚ), 2⟩,
    ⟨(505383861479/1000000000000 : ℚ), (714972903/10000000000 : ℚ), (-45110123521/1000000000000 : ℚ), 2⟩,
    ⟨(63969355863/125000000000 : ℚ), (247093073/5000000000 : ℚ), (-33882490439/1000000000000 : ℚ), 2⟩,
    ⟨(32375394047/62500000000 : ℚ), (7330783/250000000 : ℚ), (-23536482647/1000000000000 : ℚ), 2⟩,
    ⟨(104824634943/200000000000 : ℚ), (27529319/2500000000 : ℚ), (-13995701827/1000000000000 : ℚ), 2⟩,
    ⟨(132522680179/250000000000 : ℚ), (-7111349/1250000000 : ℚ), (-519313407/100000000000 : ℚ), 2⟩,
    ⟨(267947283207/500000000000 : ℚ), (-2093077/100000000 : ℚ), (1465059859/500000000000 : ℚ), 2⟩,
    ⟨(270760364919/500000000000 : ℚ), (-348458793/10000000000 : ℚ), (5212958019/500000000000 : ℚ), 2⟩,
    ⟨(273477828533/500000000000 : ℚ), (-237752821/5000000000 : ℚ), (17339976241/1000000000000 : ℚ), 2⟩,
    ⟨(552186254883/1000000000000 : ℚ), (-7393347/125000000 : ℚ), (23712658301/1000000000000 : ℚ), 2⟩,
    ⟨(6964999029/12500000000 : ℚ), (-43577563/625000000 : ℚ), (14789807681/500000000000 : ℚ), 2⟩,
    ⟨(561984581013/1000000000000 : ℚ), (-79361323/1000000000 : ℚ), (1398894339/40000000000 : ℚ), 2⟩,
    ⟨(566528704301/1000000000000 : ℚ), (-881277569/10000000000 : ℚ), (39918739127/1000000000000 : ℚ), 2⟩,
    ⟨(570821344993/1000000000000 : ℚ), (-480421919/5000000000 : ℚ), (347213787/7812500000 : ℚ), 2⟩,
    ⟨(28742608087/50000000000 : ℚ), (-103284823/1000000000 : ℚ), (48567955239/1000000000000 : ℚ), 2⟩,
    ⟨(578611443953/1000000000000 : ℚ), (-548880821/5000000000 : ℚ), (52311652177/1000000000000 : ℚ), 2⟩,
    ⟨(72761266899/125000000000 : ℚ), (-1155996787/10000000000 : ℚ), (1113825671/20000000000 : ℚ), 2⟩,
    ⟨(73159981873/125000000000 : ℚ), (-150989287/1250000000 : ℚ), (58721593849/1000000000000 : ℚ), 2⟩,
    ⟨(117634583803/200000000000 : ℚ), (-1253827929/10000000000 : ℚ), (30707720721/500000000000 : ℚ), 2⟩,
    ⟨(14769058941/25000000000 : ℚ), (-20218891/156250000 : ℚ), (31891984333/500000000000 : ℚ), 2⟩,
    ⟨(23721677307/40000000000 : ℚ), (-53147611/400000000 : ℚ), (65836747183/1000000000000 : ℚ), 2⟩,
    ⟨(23800246097/40000000000 : ℚ), (-1358068927/10000000000 : ℚ), (33790951123/500000000000 : ℚ), 2⟩,
    ⟨(596650284911/1000000000000 : ℚ), (-691154717/5000000000 : ℚ), (17256553931/250000000000 : ℚ), 2⟩,
    ⟨(23918814771/40000000000 : ℚ), (-700772833/5000000000 : ℚ), (7017521353/100000000000 : ℚ), 2⟩,
    ⟨(598963225317/1000000000000 : ℚ), (-56635307/400000000 : ℚ), (35516617481/500000000000 : ℚ), 2⟩,
    ⟨(599626461161/1000000000000 : ℚ), (-712699039/5000000000 : ℚ), (71603487917/1000000000000 : ℚ), 2⟩,
    ⟨(149989619753/250000000000 : ℚ), (-178767883/1250000000 : ℚ), (35944044287/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1430735593/10000000000 : ℚ), (14384727819/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (268916124933/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control173.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control173.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate173

namespace DiagonalRamsey.JointInheritedCertificate174
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(403188799111/1000000000000 : ℚ), (189329055571/39062500 : ℚ), (-977867644200419/500000000000 : ℚ), 13⟩,
    ⟨(403546267353/1000000000000 : ℚ), (1070475538221/2000000000 : ℚ), (-21706851455651/100000000000 : ℚ), 10⟩,
    ⟨(202130171333/500000000000 : ℚ), (953824045891/5000000000 : ℚ), (-77975228914633/1000000000000 : ℚ), 8⟩,
    ⟨(20266465239/50000000000 : ℚ), (480340560019/5000000000 : ℚ), (-19826841175031/500000000000 : ℚ), 7⟩,
    ⟨(40675057847/100000000000 : ℚ), (143045041409/2500000000 : ℚ), (-11941789997981/500000000000 : ℚ), 7⟩,
    ⟨(81704147953/200000000000 : ℚ), (37629393151/1000000000 : ℚ), (-15900866477329/1000000000000 : ℚ), 6⟩,
    ⟨(41063552419/100000000000 : ℚ), (66041783349/2500000000 : ℚ), (-5654857089701/500000000000 : ℚ), 6⟩,
    ⟨(82617967409/200000000000 : ℚ), (48552640003/2500000000 : ℚ), (-8429281203801/1000000000000 : ℚ), 5⟩,
    ⟨(16635110627/40000000000 : ℚ), (36938891631/2500000000 : ℚ), (-6504336487323/1000000000000 : ℚ), 5⟩,
    ⟨(104748148429/250000000000 : ℚ), (14426868643/1250000000 : ℚ), (-644337297257/125000000000 : ℚ), 5⟩,
    ⟨(211213408637/500000000000 : ℚ), (11506479357/1250000000 : ℚ), (-2086028429721/500000000000 : ℚ), 4⟩,
    ⟨(106543040751/250000000000 : ℚ), (37332270829/5000000000 : ℚ), (-429314014837/125000000000 : ℚ), 4⟩,
    ⟨(10755490201/25000000000 : ℚ), (61404582671/10000000000 : ℚ), (-2866875044259/1000000000000 : ℚ), 4⟩,
    ⟨(108639850433/250000000000 : ℚ), (51083694961/10000000000 : ℚ), (-2420725318067/1000000000000 : ℚ), 4⟩,
    ⟨(219590544569/500000000000 : ℚ), (8582038909/2000000000 : ℚ), (-8254956293/4000000000 : ℚ), 4⟩,
    ⟨(444073536207/1000000000000 : ℚ), (9085098777/2500000000 : ℚ), (-221708736623/125000000000 : ℚ), 3⟩,
    ⟨(89844991321/200000000000 : ℚ), (30991096757/10000000000 : ℚ), (-1534800930701/1000000000000 : ℚ), 3⟩,
    ⟨(454622940111/1000000000000 : ℚ), (26586064623/10000000000 : ℚ), (-83485825093/62500000000 : ℚ), 3⟩,
    ⟨(460254482509/1000000000000 : ℚ), (22922211497/10000000000 : ℚ), (-1168212151057/1000000000000 : ℚ), 3⟩,
    ⟨(11652650423/25000000000 : ℚ), (19847613571/10000000000 : ℚ), (-25645848709/25000000000 : ℚ), 3⟩,
    ⟨(118040861621/250000000000 : ℚ), (269482121/156250000 : ℚ), (-451924568431/500000000000 : ℚ), 3⟩,
    ⟨(19136487133/40000000000 : ℚ), (1878880343/1250000000 : ℚ), (-798555719553/1000000000000 : ℚ), 3⟩,
    ⟨(484837158699/1000000000000 : ℚ), (13130853561/10000000000 : ℚ), (-44190993827/62500000000 : ℚ), 3⟩,
    ⟨(98284581853/200000000000 : ℚ), (229832493/200000000 : ℚ), (-627055332861/1000000000000 : ℚ), 3⟩,
    ⟨(797045703/1600000000 : ℚ), (10069812433/10000000000 : ℚ), (-278359247161/500000000000 : ℚ), 3⟩,
    ⟨(50501290929/100000000000 : ℚ), (1766082081/2000000000 : ℚ), (-494562965131/1000000000000 : ℚ), 2⟩,
    ⟨(511984419247/1000000000000 : ℚ), (1936259427/2500000000 : ℚ), (-54922634183/125000000000 : ℚ), 2⟩,
    ⟨(519051299269/1000000000000 : ℚ), (6790507097/10000000000 : ℚ), (-195090555621/500000000000 : ℚ), 2⟩,
    ⟨(263098262311/500000000000 : ℚ), (1189547967/2000000000 : ℚ), (-346142721441/1000000000000 : ℚ), 2⟩,
    ⟨(533402881833/1000000000000 : ℚ), (1300233713/2500000000 : ℚ), (-306582683803/1000000000000 : ℚ), 2⟩,
    ⟨(135163252539/250000000000 : ℚ), (453692641/1000000000 : ℚ), (-135464208393/500000000000 : ℚ), 2⟩,
    ⟨(136982360849/250000000000 : ℚ), (493085381/1250000000 : ℚ), (-238697269397/1000000000000 : ℚ), 2⟩,
    ⟨(55521465199/100000000000 : ℚ), (3414913467/10000000000 : ℚ), (-41896040007/200000000000 : ℚ), 2⟩,
    ⟨(562491085231/1000000000000 : ℚ), (2939754127/10000000000 : ℚ), (-22866101431/125000000000 : ℚ), 2⟩,
    ⟨(284870606777/500000000000 : ℚ), (2512519831/10000000000 : ℚ), (-158744976627/1000000000000 : ℚ), 2⟩,
    ⟨(144236892691/250000000000 : ℚ), (2127503233/10000000000 : ℚ), (-68336238953/500000000000 : ℚ), 2⟩,
    ⟨(292046398059/500000000000 : ℚ), (1779812681/10000000000 : ℚ), (-116490227977/1000000000000 : ℚ), 2⟩,
    ⟨(591159676139/1000000000000 : ℚ), (1465240277/10000000000 : ℚ), (-24501684549/250000000000 : ℚ), 2⟩,
    ⟨(598131186097/1000000000000 : ℚ), (590076967/5000000000 : ℚ), (-81055579439/1000000000000 : ℚ), 2⟩,
    ⟨(604990531011/1000000000000 : ℚ), (92140861/1000000000 : ℚ), (-6549163747/100000000000 : ℚ), 2⟩,
    ⟨(611721186121/1000000000000 : ℚ), (686272961/10000000000 : ℚ), (-10237601727/200000000000 : ℚ), 2⟩,
    ⟨(38644183543/62500000000 : ℚ), (472368457/10000000000 : ℚ), (-38033413787/1000000000000 : ℚ), 2⟩,
    ⟨(312365958531/500000000000 : ℚ), (34702329/1250000000 : ℚ), (-6482508713/250000000000 : ℚ), 2⟩,
    ⟨(315490324451/500000000000 : ℚ), (100206613/10000000000 : ℚ), (-7395848701/500000000000 : ℚ), 2⟩,
    ⟨(637038078467/1000000000000 : ℚ), (-15365139/2500000000 : ℚ), (-113558443/25000000000 : ℚ), 2⟩,
    ⟨(321444806439/500000000000 : ℚ), (-10439099/500000000 : ℚ), (244264707/50000000000 : ℚ), 2⟩,
    ⟨(25940846211/40000000000 : ℚ), (-85747083/2500000000 : ℚ), (423460479/31250000000 : ℚ), 2⟩,
    ⟨(653919138781/1000000000000 : ℚ), (-465163411/10000000000 : ℚ), (21506748361/1000000000000 : ℚ), 2⟩,
    ⟨(32953527959/50000000000 : ℚ), (-9004101/156250000 : ℚ), (14400060757/500000000000 : ℚ), 2⟩,
    ⟨(663963006249/1000000000000 : ℚ), (-677127799/10000000000 : ℚ), (7094470797/200000000000 : ℚ), 2⟩,
    ⟨(334292346827/500000000000 : ℚ), (-768502119/10000000000 : ℚ), (8312048819/200000000000 : ℚ), 2⟩,
    ⟨(336462243673/500000000000 : ℚ), (-851039917/10000000000 : ℚ), (5887049203/125000000000 : ℚ), 2⟩,
    ⟨(338485966191/500000000000 : ℚ), (-925317237/10000000000 : ℚ), (13027410609/250000000000 : ℚ), 2⟩,
    ⟨(21272414941/31250000000 : ℚ), (-39673601/400000000 : ℚ), (28312720603/500000000000 : ℚ), 2⟩,
    ⟨(68415150167/100000000000 : ℚ), (-525525647/5000000000 : ℚ), (60666174027/1000000000000 : ℚ), 2⟩,
    ⟨(687266329711/1000000000000 : ℚ), (-220667447/2000000000 : ℚ), (16062858313/250000000000 : ℚ), 2⟩,
    ⟨(690054258341/1000000000000 : ℚ), (-1149032447/10000000000 : ℚ), (67398257277/1000000000000 : ℚ), 2⟩,
    ⟨(173127142799/250000000000 : ℚ), (-118842437/1000000000 : ℚ), (70121331957/1000000000000 : ℚ), 2⟩,
    ⟨(347311677811/500000000000 : ℚ), (-610878517/5000000000 : ℚ), (72433162259/1000000000000 : ℚ), 2⟩,
    ⟨(174098379229/250000000000 : ℚ), (-78077137/625000000 : ℚ), (14868843227/200000000000 : ℚ), 2⟩,
    ⟨(697814790607/1000000000000 : ℚ), (-1271021903/10000000000 : ℚ), (3034521747/40000000000 : ℚ), 2⟩,
    ⟨(8736046909/12500000000 : ℚ), (-321812653/2500000000 : ℚ), (38498186601/500000000000 : ℚ), 2⟩,
    ⟨(699597828033/1000000000000 : ℚ), (-324504193/2500000000 : ℚ), (19437296661/250000000000 : ℚ), 2⟩,
    ⟨(174988824069/250000000000 : ℚ), (-325846009/2500000000 : ℚ), (78124775153/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-260810841/2000000000 : ℚ), (977146069/12500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (13742523751/62500000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control174.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control174.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate174

namespace DiagonalRamsey.JointInheritedCertificate175
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(499434494203/1000000000000 : ℚ), (29649448125867/5000000000 : ℚ), (-148176732605797/50000000000 : ℚ), 13⟩,
    ⟨(499796483989/1000000000000 : ℚ), (6554202028129/10000000000 : ℚ), (-328931383197949/1000000000000 : ℚ), 10⟩,
    ⟨(62564948937/125000000000 : ℚ), (467833728759/2000000000 : ℚ), (-118163253692213/1000000000000 : ℚ), 8⟩,
    ⟨(100320414939/200000000000 : ℚ), (1179978829117/10000000000 : ℚ), (-15023663491167/250000000000 : ℚ), 8⟩,
    ⟨(50304132579/100000000000 : ℚ), (140829506599/2000000000 : ℚ), (-36198302480109/1000000000000 : ℚ), 7⟩,
    ⟨(504833877497/1000000000000 : ℚ), (92811852239/2000000000 : ℚ), (-12051106711129/500000000000 : ℚ), 6⟩,
    ⟨(506975411403/1000000000000 : ℚ), (81628589479/2500000000 : ℚ), (-2143173200481/125000000000 : ℚ), 6⟩,
    ⟨(101892153673/200000000000 : ℚ), (24061498089/1000000000 : ℚ), (-798802385741/62500000000 : ℚ), 5⟩,
    ⟨(512283960941/1000000000000 : ℚ), (91754967227/5000000000 : ℚ), (-616510574799/62500000000 : ℚ), 5⟩,
    ⟨(515438187813/1000000000000 : ℚ), (143706504251/10000000000 : ℚ), (-7819289453441/1000000000000 : ℚ), 5⟩,
    ⟨(518915850171/1000000000000 : ℚ), (7182133573/625000000 : ℚ), (-1582636733983/250000000000 : ℚ), 4⟩,
    ⟨(261354285011/500000000000 : ℚ), (23364002923/2500000000 : ℚ), (-1042645411551/200000000000 : ℚ), 4⟩,
    ⟨(131701802593/250000000000 : ℚ), (77067184333/10000000000 : ℚ), (-2176697971779/500000000000 : ℚ), 4⟩,
    ⟨(265600948619/500000000000 : ℚ), (32145589737/5000000000 : ℚ), (-919420605889/250000000000 : ℚ), 4⟩,
    ⟨(267941021717/500000000000 : ℚ), (3384827551/625000000 : ℚ), (-3137106210791/1000000000000 : ℚ), 4⟩,
    ⟨(540836374077/1000000000000 : ℚ), (45998417001/10000000000 : ℚ), (-2697957290939/1000000000000 : ℚ), 3⟩,
    ⟨(68256619219/125000000000 : ℚ), (39344402507/10000000000 : ℚ), (-1168209903663/500000000000 : ℚ), 3⟩,
    ⟨(27575960763/50000000000 : ℚ), (8463997429/2500000000 : ℚ), (-2035281262769/1000000000000 : ℚ), 3⟩,
    ⟨(5572219899/10000000000 : ℚ), (29283645883/10000000000 : ℚ), (-1781851351947/1000000000000 : ℚ), 3⟩,
    ⟨(563147539187/1000000000000 : ℚ), (25440579959/10000000000 : ℚ), (-1566607723759/1000000000000 : ℚ), 3⟩,
    ⟨(284640793977/500000000000 : ℚ), (22184785719/10000000000 : ℚ), (-172786541477/125000000000 : ℚ), 3⟩,
    ⟨(575609358741/1000000000000 : ℚ), (9703399891/5000000000 : ℚ), (-305823709253/250000000000 : ℚ), 3⟩,
    ⟨(291057803697/500000000000 : ℚ), (8510593857/5000000000 : ℚ), (-21704467779/20000000000 : ℚ), 3⟩,
    ⟨(588784659789/1000000000000 : ℚ), (14960515757/10000000000 : ℚ), (-964600423553/1000000000000 : ℚ), 3⟩,
    ⟨(119120089919/200000000000 : ℚ), (13171012717/10000000000 : ℚ), (-429321764831/500000000000 : ℚ), 3⟩,
    ⟨(602546556977/1000000000000 : ℚ), (1451175219/1250000000 : ℚ), (-30604209629/40000000000 : ℚ), 2⟩,
    ⟨(152401562039/250000000000 : ℚ), (10240555227/10000000000 : ℚ), (-682154316399/1000000000000 : ℚ), 2⟩,
    ⟨(123352503143/200000000000 : ℚ), (36142949/40000000 : ℚ), (-30414333507/50000000000 : ℚ), 2⟩,
    ⟨(31199905979/50000000000 : ℚ), (7971271591/10000000000 : ℚ), (-542257773527/1000000000000 : ℚ), 2⟩,
    ⟨(631295628547/1000000000000 : ℚ), (1405504281/2000000000 : ℚ), (-9660616329/20000000000 : ℚ), 2⟩,
    ⟨(319318731139/500000000000 : ℚ), (19337813/31250000 : ℚ), (-429736559937/1000000000000 : ℚ), 2⟩,
    ⟨(161501483413/250000000000 : ℚ), (5439255869/10000000000 : ℚ), (-381641961083/1000000000000 : ℚ), 2⟩,
    ⟨(653383291377/1000000000000 : ℚ), (238469327/500000000 : ℚ), (-338125446701/1000000000000 : ℚ), 2⟩,
    ⟨(10324246293/15625000000 : ℚ), (2084327947/5000000000 : ℚ), (-149328635607/500000000000 : ℚ), 2⟩,
    ⟨(668093596483/1000000000000 : ℚ), (907171597/2500000000 : ℚ), (-262783798931/1000000000000 : ℚ), 2⟩,
    ⟨(13507822109/20000000000 : ℚ), (125692493/400000000 : ℚ), (-115057419969/500000000000 : ℚ), 2⟩,
    ⟨(136525341863/200000000000 : ℚ), (135169001/500000000 : ℚ), (-10015668963/50000000000 : ℚ), 2⟩,
    ⟨(344891488437/500000000000 : ℚ), (2306585099/10000000000 : ℚ), (-173087197711/1000000000000 : ℚ), 2⟩,
    ⟨(696842668053/1000000000000 : ℚ), (1947339287/10000000000 : ℚ), (-7409099811/50000000000 : ℚ), 2⟩,
    ⟨(140757755087/200000000000 : ℚ), (81083039/500000000 : ℚ), (-12537572501/100000000000 : ℚ), 2⟩,
    ⟨(710604565241/1000000000000 : ℚ), (1326083577/10000000000 : ℚ), (-104473881927/1000000000000 : ℚ), 2⟩,
    ⟨(179318404409/250000000000 : ℚ), (1057582161/10000000000 : ℚ), (-85305597489/1000000000000 : ℚ), 2⟩,
    ⟨(723779866289/1000000000000 : ℚ), (813508663/10000000000 : ℚ), (-67720360677/1000000000000 : ℚ), 2⟩,
    ⟨(182526909269/250000000000 : ℚ), (59154023/1000000000 : ℚ), (-6448158631/125000000000 : ℚ), 2⟩,
    ⟨(736241685843/1000000000000 : ℚ), (97408699/2500000000 : ℚ), (-36782713299/1000000000000 : ℚ), 2⟩,
    ⟨(74216723513/100000000000 : ℚ), (41198753/2000000000 : ℚ), (-1450526079/62500000000 : ℚ), 2⟩,
    ⟨(74787000977/100000000000 : ℚ), (19515229/5000000000 : ℚ), (-10769778107/1000000000000 : ℚ), 2⟩,
    ⟨(376668135639/500000000000 : ℚ), (-112656653/10000000000 : ℚ), (615545077/1000000000000 : ℚ), 2⟩,
    ⟨(758552850953/1000000000000 : ℚ), (-125153353/5000000000 : ℚ), (11020834331/1000000000000 : ℚ), 2⟩,
    ⟨(190876795399/250000000000 : ℚ), (-187507917/5000000000 : ℚ), (10255669347/500000000000 : ℚ), 2⟩,
    ⟨(48011707987/62500000000 : ℚ), (-487753713/10000000000 : ℚ), (29145151811/1000000000000 : ℚ), 2⟩,
    ⟨(386291007329/500000000000 : ℚ), (-589377689/10000000000 : ℚ), (739479217/20000000000 : ℚ), 2⟩,
    ⟨(24271270469/31250000000 : ℚ), (-170161219/2500000000 : ℚ), (22021845167/500000000000 : ℚ), 2⟩,
    ⟨(780473374859/1000000000000 : ℚ), (-381111241/5000000000 : ℚ), (6299381233/125000000000 : ℚ), 2⟩,
    ⟨(783951037217/1000000000000 : ℚ), (-104337081/1250000000 : ℚ), (5606400441/100000000000 : ℚ), 2⟩,
    ⟨(787105264089/1000000000000 : ℚ), (-89857999/1000000000 : ℚ), (12216435067/200000000000 : ℚ), 2⟩,
    ⟨(157985691333/200000000000 : ℚ), (-954318017/10000000000 : ℚ), (13095436257/200000000000 : ℚ), 2⟩,
    ⟨(792413813627/1000000000000 : ℚ), (-1002294571/10000000000 : ℚ), (69272926927/1000000000000 : ℚ), 2⟩,
    ⟨(794555347533/1000000000000 : ℚ), (-260709103/2500000000 : ℚ), (2265307703/31250000000 : ℚ), 2⟩,
    ⟨(19908697481/25000000000 : ℚ), (-1076217041/10000000000 : ℚ), (75145106543/1000000000000 : ℚ), 2⟩,
    ⟨(159557430067/200000000000 : ℚ), (-220531969/2000000000 : ℚ), (77252772779/1000000000000 : ℚ), 2⟩,
    ⟨(399434816767/500000000000 : ℚ), (-1122340623/10000000000 : ℚ), (39411971787/500000000000 : ℚ), 2⟩,
    ⟨(799592741041/1000000000000 : ℚ), (-567694777/5000000000 : ℚ), (19966713599/250000000000 : ℚ), 2⟩,
    ⟨(799954730827/1000000000000 : ℚ), (-285473159/2500000000 : ℚ), (80386953711/1000000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1142704521/10000000000 : ℚ), (1609038053/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (80077692491/500000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control175.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control175.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate175

namespace DiagonalRamsey.JointInheritedCertificate188
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43002994227/200000000000 : ℚ), (8675110758903/10000000000 : ℚ), (-93580988935907/500000000000 : ℚ), 11⟩,
    ⟨(54012389739/250000000000 : ℚ), (470115806869/5000000000 : ℚ), (-20703302535609/1000000000000 : ℚ), 8⟩,
    ⟨(218108770951/1000000000000 : ℚ), (20363681223/625000000 : ℚ), (-7386529224443/1000000000000 : ℚ), 6⟩,
    ⟨(27646596973/125000000000 : ℚ), (9907138897/625000000 : ℚ), (-3717516735769/1000000000000 : ℚ), 5⟩,
    ⟨(56303016353/250000000000 : ℚ), (22689227147/2500000000 : ℚ), (-2207509235757/1000000000000 : ℚ), 5⟩,
    ⟨(230187739269/1000000000000 : ℚ), (14283130977/2500000000 : ℚ), (-360750630431/250000000000 : ℚ), 4⟩,
    ⟨(47210375779/200000000000 : ℚ), (38237407189/10000000000 : ℚ), (-250784769097/250000000000 : ℚ), 4⟩,
    ⟨(12137400471/50000000000 : ℚ), (26687019439/10000000000 : ℚ), (-726993266177/1000000000000 : ℚ), 4⟩,
    ⟨(250211643447/1000000000000 : ℚ), (3836519233/2000000000 : ℚ), (-271129292809/500000000000 : ℚ), 3⟩,
    ⟨(2583709021/10000000000 : ℚ), (7037632829/5000000000 : ℚ), (-103134449417/250000000000 : ℚ), 3⟩,
    ⟨(267147207257/1000000000000 : ℚ), (10469254377/10000000000 : ℚ), (-317891141663/1000000000000 : ℚ), 3⟩,
    ⟨(276456038303/1000000000000 : ℚ), (784567871/1000000000 : ℚ), (-246654447/1000000000 : ℚ), 3⟩,
    ⟨(143103873053/500000000000 : ℚ), (5888300781/10000000000 : ℚ), (-95819159007/500000000000 : ℚ), 3⟩,
    ⟨(296308416389/1000000000000 : ℚ), (54953603/125000000 : ℚ), (-74109394537/500000000000 : ℚ), 2⟩,
    ⟨(12266430967/40000000000 : ℚ), (32376963/100000000 : ℚ), (-113315367767/1000000000000 : ℚ), 2⟩,
    ⟨(1585825603/5000000000 : ℚ), (2323340991/10000000000 : ℚ), (-21203636009/250000000000 : ℚ), 2⟩,
    ⟨(65544058613/200000000000 : ℚ), (1591472097/10000000000 : ℚ), (-6122986343/100000000000 : ℚ), 2⟩,
    ⟨(33822463949/100000000000 : ℚ), (998443251/10000000000 : ℚ), (-20746877003/500000000000 : ℚ), 2⟩,
    ⟨(87144249319/250000000000 : ℚ), (256424939/5000000000 : ℚ), (-12412894711/500000000000 : ℚ), 2⟩,
    ⟨(358677667559/1000000000000 : ℚ), (111743811/10000000000 : ℚ), (-10646898139/1000000000000 : ℚ), 2⟩,
    ⟨(184214687681/500000000000 : ℚ), (-110935033/5000000000 : ℚ), (1477939213/1000000000000 : ℚ), 2⟩,
    ⟨(47217275801/125000000000 : ℚ), (-500724237/10000000000 : ℚ), (2969708397/250000000000 : ℚ), 2⟩,
    ⟨(193257255783/500000000000 : ℚ), (-29378047/400000000 : ℚ), (2601033853/125000000000 : ℚ), 2⟩,
    ⟨(197336885109/500000000000 : ℚ), (-186079191/2000000000 : ℚ), (14230236427/500000000000 : ℚ), 2⟩,
    ⟨(80427480849/200000000000 : ℚ), (-1094192263/10000000000 : ℚ), (4373169629/125000000000 : ℚ), 2⟩,
    ⟨(40883353477/100000000000 : ℚ), (-307543909/2500000000 : ℚ), (8099748507/200000000000 : ℚ), 2⟩,
    ⟨(103674418599/250000000000 : ℚ), (-1341682779/10000000000 : ℚ), (22544948001/500000000000 : ℚ), 2⟩,
    ⟨(419673348253/1000000000000 : ℚ), (-1431269797/10000000000 : ℚ), (48827153999/1000000000000 : ℚ), 2⟩,
    ⟨(211856318941/500000000000 : ℚ), (-375217917/2500000000 : ℚ), (12940531351/250000000000 : ℚ), 2⟩,
    ⟨(213388321357/500000000000 : ℚ), (-155191819/1000000000 : ℚ), (26966406997/500000000000 : ℚ), 2⟩,
    ⟨(428835854709/1000000000000 : ℚ), (-396354223/2500000000 : ℚ), (55365898473/1000000000000 : ℚ), 2⟩,
    ⟨(42987044253/100000000000 : ℚ), (-1602009981/10000000000 : ℚ), (56078326621/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2566523/16000000 : ℚ), (28083594841/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (347723929097/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control188.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control188.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate188

namespace DiagonalRamsey.JointInheritedCertificate189
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(113510447981/500000000000 : ℚ), (4415902177459/5000000000 : ℚ), (-201171010230091/1000000000000 : ℚ), 11⟩,
    ⟨(114046977121/500000000000 : ℚ), (23938165769/250000000 : ℚ), (-22253030212033/1000000000000 : ℚ), 8⟩,
    ⟨(46045947333/200000000000 : ℚ), (165981700307/5000000000 : ℚ), (-3969760170433/500000000000 : ℚ), 6⟩,
    ⟨(233407674477/1000000000000 : ℚ), (161588342081/10000000000 : ℚ), (-998976629841/250000000000 : ℚ), 5⟩,
    ⟨(237597162401/1000000000000 : ℚ), (92569336499/10000000000 : ℚ), (-593226255019/250000000000 : ℚ), 5⟩,
    ⟨(121378926689/500000000000 : ℚ), (14577039413/2500000000 : ℚ), (-155121194487/100000000000 : ℚ), 4⟩,
    ⟨(62210011783/250000000000 : ℚ), (312389011/80000000 : ℚ), (-33702153633/31250000000 : ℚ), 4⟩,
    ⟨(255785168813/1000000000000 : ℚ), (27271357763/10000000000 : ℚ), (-390852537659/500000000000 : ℚ), 4⟩,
    ⟨(131763166551/500000000000 : ℚ), (19616952797/10000000000 : ℚ), (-583201669319/1000000000000 : ℚ), 3⟩,
    ⟨(67997247089/250000000000 : ℚ), (14405978381/10000000000 : ℚ), (-443836884011/1000000000000 : ℚ), 3⟩,
    ⟨(140545817289/500000000000 : ℚ), (5362942757/5000000000 : ℚ), (-342178094131/1000000000000 : ℚ), 3⟩,
    ⟨(290746608309/1000000000000 : ℚ), (8047950963/10000000000 : ℚ), (-66421892459/250000000000 : ℚ), 3⟩,
    ⟨(150430463437/500000000000 : ℚ), (6049851137/10000000000 : ℚ), (-8265487167/40000000000 : ℚ), 3⟩,
    ⟨(311337183857/1000000000000 : ℚ), (2263411647/5000000000 : ℚ), (-80028069379/500000000000 : ℚ), 2⟩,
    ⟨(12882979487/40000000000 : ℚ), (26754333/80000000 : ℚ), (-122632574341/1000000000000 : ℚ), 2⟩,
    ⟨(332969430729/1000000000000 : ℚ), (150703579/625000000 : ℚ), (-23023472841/250000000000 : ℚ), 2⟩,
    ⟨(68783418051/200000000000 : ℚ), (1664685893/10000000000 : ℚ), (-6684141701/100000000000 : ℚ), 2⟩,
    ⟨(354812033809/1000000000000 : ℚ), (1060002757/10000000000 : ℚ), (-45726657831/1000000000000 : ℚ), 2⟩,
    ⟨(365549337127/1000000000000 : ℚ), (565119553/10000000000 : ℚ), (-6977428937/250000000000 : ℚ), 2⟩,
    ⟨(37602559411/100000000000 : ℚ), (78288267/5000000000 : ℚ), (-3191772437/250000000000 : ℚ), 2⟩,
    ⟨(15445596507/40000000000 : ℚ), (-45752349/2500000000 : ℚ), (16990069/100000000000 : ℚ), 2⟩,
    ⟨(197897443203/500000000000 : ℚ), (-466668333/10000000000 : ℚ), (1125717359/100000000000 : ℚ), 2⟩,
    ⟨(101224383157/250000000000 : ℚ), (-704263181/10000000000 : ℚ), (10383596811/500000000000 : ℚ), 2⟩,
    ⟨(206680093941/500000000000 : ℚ), (-112914839/1250000000 : ℚ), (14454882713/500000000000 : ℚ), 2⟩,
    ⟨(421101352171/1000000000000 : ℚ), (-1069609423/10000000000 : ℚ), (35847021567/1000000000000 : ℚ), 2⟩,
    ⟨(107011618463/250000000000 : ℚ), (-1207581403/10000000000 : ℚ), (41704376247/1000000000000 : ℚ), 2⟩,
    ⟨(217064333803/500000000000 : ℚ), (-264131603/2000000000 : ℚ), (2911163837/62500000000 : ℚ), 2⟩,
    ⟨(439289358583/1000000000000 : ℚ), (-1411462843/10000000000 : ℚ), (50543956451/1000000000000 : ℚ), 2⟩,
    ⟨(443478846507/1000000000000 : ℚ), (-296396533/2000000000 : ℚ), (13414123267/250000000000 : ℚ), 2⟩,
    ⟨(446656784319/1000000000000 : ℚ), (-306737201/2000000000 : ℚ), (13989400657/250000000000 : ℚ), 2⟩,
    ⟨(224396283371/500000000000 : ℚ), (-391901983/2500000000 : ℚ), (57476359447/1000000000000 : ℚ), 2⟩,
    ⟨(224932812511/500000000000 : ℚ), (-792204159/5000000000 : ℚ), (7278906031/125000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1586500923/10000000000 : ℚ), (58325401389/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (340374717379/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control189.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control189.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate189

namespace DiagonalRamsey.JointInheritedCertificate190
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(233130961283/1000000000000 : ℚ), (4457173882589/5000000000 : ℚ), (-208510274373451/1000000000000 : ℚ), 11⟩,
    ⟨(117111369687/500000000000 : ℚ), (966638120283/10000000000 : ℚ), (-23064946057249/1000000000000 : ℚ), 8⟩,
    ⟨(47279156227/200000000000 : ℚ), (167600518739/5000000000 : ℚ), (-4114626401439/500000000000 : ℚ), 6⟩,
    ⟨(59907289747/250000000000 : ℚ), (40802135821/2500000000 : ℚ), (-4141777764617/1000000000000 : ℚ), 5⟩,
    ⟨(48778346747/200000000000 : ℚ), (23381217419/2500000000 : ℚ), (-1229790155427/500000000000 : ℚ), 5⟩,
    ⟨(62285613613/250000000000 : ℚ), (58928197709/10000000000 : ℚ), (-1607928770657/1000000000000 : ℚ), 4⟩,
    ⟨(63832688457/250000000000 : ℚ), (39476651469/10000000000 : ℚ), (-44718466973/40000000000 : ℚ), 4⟩,
    ⟨(65599258789/250000000000 : ℚ), (27579813931/10000000000 : ℚ), (-202599437309/250000000000 : ℚ), 4⟩,
    ⟨(135136623143/500000000000 : ℚ), (9923173351/5000000000 : ℚ), (-604682799867/1000000000000 : ℚ), 3⟩,
    ⟨(278883534997/1000000000000 : ℚ), (7290359503/5000000000 : ℚ), (-115066904683/250000000000 : ℚ), 3⟩,
    ⟨(18009061219/62500000000 : ℚ), (10861546067/10000000000 : ℚ), (-177468734531/500000000000 : ℚ), 3⟩,
    ⟨(37246048379/125000000000 : ℚ), (1630984463/2000000000 : ℚ), (-137848477959/500000000000 : ℚ), 3⟩,
    ⟨(308259152797/1000000000000 : ℚ), (1533829771/2500000000 : ℚ), (-21453568979/100000000000 : ℚ), 3⟩,
    ⟨(3189181711/10000000000 : ℚ), (574487967/1250000000 : ℚ), (-83150585289/500000000000 : ℚ), 2⟩,
    ⟨(164921394883/500000000000 : ℚ), (1700357441/5000000000 : ℚ), (-797251753/6250000000 : ℚ), 2⟩,
    ⟨(85231949687/250000000000 : ℚ), (2457797849/10000000000 : ℚ), (-95957054211/1000000000000 : ℚ), 2⟩,
    ⟨(352066443347/1000000000000 : ℚ), (1703442011/10000000000 : ℚ), (-69833998641/1000000000000 : ℚ), 2⟩,
    ⟨(45393931541/125000000000 : ℚ), (1092583593/10000000000 : ℚ), (-48000193579/1000000000000 : ℚ), 2⟩,
    ⟨(74815214199/200000000000 : ℚ), (296387043/5000000000 : ℚ), (-14792274911/500000000000 : ℚ), 2⟩,
    ⟨(384735089297/1000000000000 : ℚ), (180284167/10000000000 : ℚ), (-13940254089/1000000000000 : ℚ), 2⟩,
    ⟨(197512927531/500000000000 : ℚ), (-40618441/2500000000 : ℚ), (-29047701/50000000000 : ℚ), 2⟩,
    ⟨(404849262591/1000000000000 : ℚ), (-448686737/10000000000 : ℚ), (10862826761/1000000000000 : ℚ), 2⟩,
    ⟨(414110707097/1000000000000 : ℚ), (-344169607/5000000000 : ℚ), (1292128601/62500000000 : ℚ), 2⟩,
    ⟨(422720995809/1000000000000 : ℚ), (-88905081/1000000000 : ℚ), (29070744309/1000000000000 : ℚ), 2⟩,
    ⟨(215298603469/500000000000 : ℚ), (-264167597/2500000000 : ℚ), (18110727777/500000000000 : ℚ), 2⟩,
    ⟨(437663488267/1000000000000 : ℚ), (-1195702459/10000000000 : ℚ), (21128333549/500000000000 : ℚ), 2⟩,
    ⟨(221925893821/500000000000 : ℚ), (-1309616211/10000000000 : ℚ), (23638572751/500000000000 : ℚ), 2⟩,
    ⟨(449102508359/1000000000000 : ℚ), (-350267733/2500000000 : ℚ), (51360190447/1000000000000 : ℚ), 2⟩,
    ⟨(226682541553/500000000000 : ℚ), (-1472080833/10000000000 : ℚ), (54564298123/1000000000000 : ℚ), 2⟩,
    ⟨(456598460959/1000000000000 : ℚ), (-304826991/2000000000 : ℚ), (28466312461/500000000000 : ℚ), 2⟩,
    ⟨(458771502721/1000000000000 : ℚ), (-311656593/2000000000 : ℚ), (11699103233/200000000000 : ℚ), 2⟩,
    ⟨(459863280811/1000000000000 : ℚ), (-1575194103/10000000000 : ℚ), (2963613633/50000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1577300447/10000000000 : ℚ), (11873830023/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (336626374287/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control190.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control190.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate190

namespace DiagonalRamsey.JointInheritedCertificate191
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29916698517/125000000000 : ℚ), (9001229355449/10000000000 : ℚ), (-6754308084553/31250000000 : ℚ), 11⟩,
    ⟨(240443640597/1000000000000 : ℚ), (195245873187/2000000000 : ℚ), (-2390879358737/100000000000 : ℚ), 8⟩,
    ⟨(242653055107/1000000000000 : ℚ), (169304889117/5000000000 : ℚ), (-8530406360923/1000000000000 : ℚ), 6⟩,
    ⟨(245940553797/1000000000000 : ℚ), (164914836911/10000000000 : ℚ), (-4293419815901/1000000000000 : ℚ), 5⟩,
    ⟨(7821077383/31250000000 : ℚ), (47265769303/5000000000 : ℚ), (-2549701839137/1000000000000 : ℚ), 5⟩,
    ⟨(255613084443/1000000000000 : ℚ), (930964173/156250000 : ℚ), (-20836448087/12500000000 : ℚ), 4⟩,
    ⟨(130952482321/500000000000 : ℚ), (1247750429/312500000 : ℚ), (-1159049057561/1000000000000 : ℚ), 4⟩,
    ⟨(16818095163/62500000000 : ℚ), (27905278419/10000000000 : ℚ), (-840261921767/1000000000000 : ℚ), 4⟩,
    ⟨(277097567119/1000000000000 : ℚ), (20088546393/10000000000 : ℚ), (-125410685813/200000000000 : ℚ), 3⟩,
    ⟨(28585197633/100000000000 : ℚ), (14765344461/10000000000 : ℚ), (-119347727497/250000000000 : ℚ), 3⟩,
    ⟨(147634220247/500000000000 : ℚ), (11004988773/10000000000 : ℚ), (-92061697667/250000000000 : ℚ), 3⟩,
    ⟨(152628136957/500000000000 : ℚ), (2067029979/2500000000 : ℚ), (-286150025547/1000000000000 : ℚ), 3⟩,
    ⟨(315719288293/1000000000000 : ℚ), (3112918189/5000000000 : ℚ), (-222796868669/1000000000000 : ℚ), 3⟩,
    ⟨(65311343817/200000000000 : ℚ), (933825471/2000000000 : ℚ), (-172845950699/1000000000000 : ℚ), 2⟩,
    ⟨(67532839181/200000000000 : ℚ), (3460573431/10000000000 : ℚ), (-6636906503/50000000000 : ℚ), 2⟩,
    ⟨(348934747681/1000000000000 : ℚ), (626803539/2500000000 : ℚ), (-25007694009/250000000000 : ℚ), 2⟩,
    ⟨(360259832837/1000000000000 : ℚ), (109039201/625000000 : ℚ), (-18251310537/250000000000 : ℚ), 2⟩,
    ⟨(371530384613/1000000000000 : ℚ), (225446843/2000000000 : ℚ), (-50426491227/1000000000000 : ℚ), 2⟩,
    ⟨(382637861433/1000000000000 : ℚ), (622207547/10000000000 : ℚ), (-15695496139/500000000000 : ℚ), 2⟩,
    ⟨(15739011689/40000000000 : ℚ), (205534139/10000000000 : ℚ), (-380691929/25000000000 : ℚ), 2⟩,
    ⟨(100984576651/250000000000 : ℚ), (-1405889/100000000 : ℚ), (-357949939/250000000000 : ℚ), 2⟩,
    ⟨(51740767503/125000000000 : ℚ), (-214756919/5000000000 : ℚ), (5190117417/500000000000 : ℚ), 2⟩,
    ⟨(105835651047/250000000000 : ℚ), (-41959573/625000000 : ℚ), (10251170931/500000000000 : ℚ), 2⟩,
    ⟨(432097013399/1000000000000 : ℚ), (-873826431/10000000000 : ℚ), (14580539373/500000000000 : ℚ), 2⟩,
    ⟨(440105057911/1000000000000 : ℚ), (-52143043/500000000 : ℚ), (36531729843/1000000000000 : ℚ), 2⟩,
    ⟨(111822403969/250000000000 : ℚ), (-1183022567/10000000000 : ℚ), (42750057531/1000000000000 : ℚ), 2⟩,
    ⟨(18143259843/40000000000 : ℚ), (-1297829077/10000000000 : ℚ), (23960491629/500000000000 : ℚ), 2⟩,
    ⟨(229460052131/500000000000 : ℚ), (-1389977361/10000000000 : ℚ), (26062525467/500000000000 : ℚ), 2⟩,
    ⟨(231627013361/500000000000 : ℚ), (-1461510589/10000000000 : ℚ), (55423253579/1000000000000 : ℚ), 2⟩,
    ⟨(466541525411/1000000000000 : ℚ), (-756969739/5000000000 : ℚ), (28930309477/500000000000 : ℚ), 2⟩,
    ⟨(468750939921/1000000000000 : ℚ), (-1548329117/10000000000 : ℚ), (7433603153/125000000000 : ℚ), 2⟩,
    ⟨(234930496191/500000000000 : ℚ), (-31307173/200000000 : ℚ), (1883375933/31250000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2449187/15625000 : ℚ), (60367703509/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (83204320803/250000000000 : ℚ)
  μ := (47/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control191.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control191.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate191

namespace DiagonalRamsey.JointInheritedCertificate192
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(245567328709/1000000000000 : ℚ), (9087663290087/10000000000 : ℚ), (-22389058995311/100000000000 : ℚ), 11⟩,
    ⟨(246695505809/1000000000000 : ℚ), (985770877499/10000000000 : ℚ), (-24766448374801/1000000000000 : ℚ), 8⟩,
    ⟨(31117624381/125000000000 : ℚ), (342000605067/10000000000 : ℚ), (-1767292054447/200000000000 : ℚ), 6⟩,
    ⟨(985477231/3906250000 : ℚ), (166611970643/10000000000 : ℚ), (-2223754356529/500000000000 : ℚ), 5⟩,
    ⟨(256686856721/1000000000000 : ℚ), (9553263671/1000000000 : ℚ), (-2641261026979/1000000000000 : ℚ), 5⟩,
    ⟨(262112632273/1000000000000 : ℚ), (470558197/78125000 : ℚ), (-863415125729/500000000000 : ℚ), 4⟩,
    ⟨(4195425697/15625000000 : ℚ), (40376633717/10000000000 : ℚ), (-1200770785509/1000000000000 : ℚ), 4⟩,
    ⟨(275809110113/1000000000000 : ℚ), (14114316233/5000000000 : ℚ), (-870577158401/1000000000000 : ℚ), 4⟩,
    ⟨(35493488479/125000000000 : ℚ), (813161921/400000000 : ℚ), (-129950634681/200000000000 : ℚ), 3⟩,
    ⟨(292845256693/1000000000000 : ℚ), (14948552569/10000000000 : ℚ), (-247379172419/500000000000 : ℚ), 3⟩,
    ⟨(302415470363/1000000000000 : ℚ), (5573605753/5000000000 : ℚ), (-38173891351/100000000000 : ℚ), 3⟩,
    ⟨(312566382453/1000000000000 : ℚ), (4190120007/5000000000 : ℚ), (-296740368081/1000000000000 : ℚ), 3⟩,
    ⟨(323200234131/1000000000000 : ℚ), (6315381349/10000000000 : ℚ), (-231160781869/1000000000000 : ℚ), 3⟩,
    ⟨(334214615591/1000000000000 : ℚ), (1185364477/2500000000 : ℚ), (-179466805997/1000000000000 : ℚ), 2⟩,
    ⟨(2159396577/6250000000 : ℚ), (3519599817/10000000000 : ℚ), (-8623199693/62500000000 : ℚ), 2⟩,
    ⟨(44619753331/125000000000 : ℚ), (638961503/2500000000 : ℚ), (-65089511/625000000 : ℚ), 2⟩,
    ⟨(368468024763/1000000000000 : ℚ), (446266521/2500000000 : ℚ), (-9525257051/125000000000 : ℚ), 2⟩,
    ⟨(379922599091/1000000000000 : ℚ), (1161169537/10000000000 : ℚ), (-13216954467/250000000000 : ℚ), 2⟩,
    ⟨(19560571791/50000000000 : ℚ), (130190291/2000000000 : ℚ), (-16601990171/500000000000 : ℚ), 2⟩,
    ⟨(402225817281/1000000000000 : ℚ), (23011629/1000000000 : ℚ), (-3302961173/200000000000 : ℚ), 2⟩,
    ⟨(206429834479/500000000000 : ℚ), (-119353243/10000000000 : ℚ), (-455366871/200000000000 : ℚ), 2⟩,
    ⟨(423010581049/1000000000000 : ℚ), (-410974023/10000000000 : ℚ), (1238487309/125000000000 : ℚ), 2⟩,
    ⟨(432580794719/1000000000000 : ℚ), (-327493067/5000000000 : ℚ), (2543056523/125000000000 : ℚ), 2⟩,
    ⟨(22073907179/50000000000 : ℚ), (-171841749/2000000000 : ℚ), (5853618999/200000000000 : ℚ), 2⟩,
    ⟨(449616941299/1000000000000 : ℚ), (-514823637/5000000000 : ℚ), (36860956501/1000000000000 : ℚ), 2⟩,
    ⟨(456918806803/1000000000000 : ℚ), (-292732327/2500000000 : ℚ), (10816047449/250000000000 : ℚ), 2⟩,
    ⟨(231656709569/500000000000 : ℚ), (-1286620641/10000000000 : ℚ), (48586956207/1000000000000 : ℚ), 2⟩,
    ⟨(468739194691/1000000000000 : ℚ), (-1379455889/10000000000 : ℚ), (52913111963/1000000000000 : ℚ), 2⟩,
    ⟨(118285970069/250000000000 : ℚ), (-1451507167/10000000000 : ℚ), (7038275131/125000000000 : ℚ), 2⟩,
    ⟨(119121264091/250000000000 : ℚ), (-75215343/500000000 : ℚ), (3675822727/62500000000 : ℚ), 2⟩,
    ⟨(239365272801/500000000000 : ℚ), (-384733871/2500000000 : ℚ), (483736329/8000000000 : ℚ), 2⟩,
    ⟨(479858722703/1000000000000 : ℚ), (-1556082089/10000000000 : ℚ), (30644433581/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1558217641/10000000000 : ℚ), (61391358579/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (164489706499/500000000000 : ℚ)
  μ := (12/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control192.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control192.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate192

namespace DiagonalRamsey.JointInheritedCertificate193
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25824837821/100000000000 : ℚ), (18536727283/20000000 : ℚ), (-24012014525149/100000000000 : ℚ), 11⟩,
    ⟨(259411776819/1000000000000 : ℚ), (1005719780761/10000000000 : ℚ), (-13280940317823/500000000000 : ℚ), 8⟩,
    ⟨(261727369873/1000000000000 : ℚ), (34909084277/1000000000 : ℚ), (-592323416073/62500000000 : ℚ), 6⟩,
    ⟨(16573303559/62500000000 : ℚ), (21270164117/1250000000 : ℚ), (-59626269/12500000 : ℚ), 5⟩,
    ⟨(67428764027/250000000000 : ℚ), (97626770739/10000000000 : ℚ), (-708239038399/250000000000 : ℚ), 5⟩,
    ⟨(55062044701/200000000000 : ℚ), (61590949177/10000000000 : ℚ), (-463070627111/250000000000 : ℚ), 4⟩,
    ⟨(140952237307/500000000000 : ℚ), (41315568351/10000000000 : ℚ), (-1288141207569/1000000000000 : ℚ), 4⟩,
    ⟨(36179287899/125000000000 : ℚ), (28905579831/10000000000 : ℚ), (-467036186101/500000000000 : ℚ), 4⟩,
    ⟨(148913596437/500000000000 : ℚ), (5208168479/2500000000 : ℚ), (-697309693571/1000000000000 : ℚ), 3⟩,
    ⟨(307002315543/1000000000000 : ℚ), (38330723/25000000 : ℚ), (-531156219881/1000000000000 : ℚ), 3⟩,
    ⟨(158435654877/500000000000 : ℚ), (11445153841/10000000000 : ℚ), (-25626790093/62500000000 : ℚ), 3⟩,
    ⟨(20458695731/62500000000 : ℚ), (4307571297/5000000000 : ℚ), (-318960336971/1000000000000 : ℚ), 3⟩,
    ⟨(169152485261/500000000000 : ℚ), (3251492893/5000000000 : ℚ), (-49745027483/200000000000 : ℚ), 3⟩,
    ⟨(34966321921/100000000000 : ℚ), (2446488511/5000000000 : ℚ), (-38677553081/200000000000 : ℚ), 2⟩,
    ⟨(72260898323/200000000000 : ℚ), (1821607437/5000000000 : ℚ), (-74496379011/500000000000 : ℚ), 2⟩,
    ⟨(186558337961/500000000000 : ℚ), (2657646873/10000000000 : ℚ), (-56412451301/500000000000 : ℚ), 2⟩,
    ⟨(384986014337/1000000000000 : ℚ), (373932499/2000000000 : ℚ), (-82973177051/1000000000000 : ℚ), 2⟩,
    ⟨(396798198643/1000000000000 : ℚ), (123210069/1000000000 : ℚ), (-7257965513/125000000000 : ℚ), 2⟩,
    ⟨(408439471049/1000000000000 : ℚ), (5687741/80000000 : ℚ), (-18545446943/500000000000 : ℚ), 2⟩,
    ⟨(419797719737/1000000000000 : ℚ), (70344243/2500000000 : ℚ), (-19307234619/1000000000000 : ℚ), 2⟩,
    ⟨(430763558563/1000000000000 : ℚ), (-1878427/250000000 : ℚ), (-4150038417/1000000000000 : ℚ), 2⟩,
    ⟨(88246276101/200000000000 : ℚ), (-372435923/10000000000 : ℚ), (4404406973/500000000000 : ℚ), 2⟩,
    ⟨(90220074943/200000000000 : ℚ), (-155256703/2500000000 : ℚ), (19897787531/1000000000000 : ℚ), 2⟩,
    ⟨(57534437173/125000000000 : ℚ), (-207234413/2500000000 : ℚ), (14685230799/500000000000 : ℚ), 2⟩,
    ⟨(234334193533/500000000000 : ℚ), (-6264611/62500000 : ℚ), (7484673689/200000000000 : ℚ), 2⟩,
    ⟨(119049553911/250000000000 : ℚ), (-11459837/100000000 : ℚ), (8841803549/200000000000 : ℚ), 2⟩,
    ⟨(482792466753/1000000000000 : ℚ), (-315885649/2500000000 : ℚ), (24922756067/500000000000 : ℚ), 2⟩,
    ⟨(9767752683/20000000000 : ℚ), (-339457039/2500000000 : ℚ), (2721185101/50000000000 : ℚ), 2⟩,
    ⟨(98585966663/200000000000 : ℚ), (-28619467/200000000 : ℚ), (7251565497/125000000000 : ℚ), 2⟩,
    ⟨(248187660193/500000000000 : ℚ), (-371139037/2500000000 : ℚ), (60662965177/1000000000000 : ℚ), 2⟩,
    ⟨(498690913439/1000000000000 : ℚ), (-1519689537/10000000000 : ℚ), (62410954303/1000000000000 : ℚ), 2⟩,
    ⟨(31240894503/62500000000 : ℚ), (-61483337/400000000 : ℚ), (63279381843/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1539249651/10000000000 : ℚ), (15846919347/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (160576500533/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control193.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control193.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate193

namespace DiagonalRamsey.JointInheritedCertificate194
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(271233376929/1000000000000 : ℚ), (9460668816811/10000000000 : ℚ), (-257411047083567/1000000000000 : ℚ), 11⟩,
    ⟨(27243053433/100000000000 : ℚ), (1026951698457/10000000000 : ℚ), (-14237380108131/500000000000 : ℚ), 8⟩,
    ⟨(68703329963/250000000000 : ℚ), (17831919269/500000000 : ℚ), (-5079913131653/500000000000 : ℚ), 6⟩,
    ⟨(17397424123/62500000000 : ℚ), (173940515039/10000000000 : ℚ), (-1278457531243/250000000000 : ℚ), 5⟩,
    ⟨(283032787901/1000000000000 : ℚ), (49928608857/5000000000 : ℚ), (-3037229505147/1000000000000 : ℚ), 5⟩,
    ⟨(288790312457/1000000000000 : ℚ), (63039464007/10000000000 : ℚ), (-1985984037393/1000000000000 : ℚ), 4⟩,
    ⟨(295575911527/1000000000000 : ℚ), (21158185677/5000000000 : ℚ), (-345318529027/250000000000 : ℚ), 4⟩,
    ⟨(75831059021/250000000000 : ℚ), (29627421109/10000000000 : ℚ), (-1001772929049/1000000000000 : ℚ), 4⟩,
    ⟨(12478426621/40000000000 : ℚ), (21369906541/10000000000 : ℚ), (-187008506463/250000000000 : ℚ), 3⟩,
    ⟨(160701013157/500000000000 : ℚ), (787088711/500000000 : ℚ), (-569997563463/1000000000000 : ℚ), 3⟩,
    ⟨(165778696493/500000000000 : ℚ), (11763176787/10000000000 : ℚ), (-440237557577/1000000000000 : ℚ), 3⟩,
    ⟨(10697780119/31250000000 : ℚ), (2216480799/2500000000 : ℚ), (-342709058489/1000000000000 : ℚ), 3⟩,
    ⟨(44201625333/125000000000 : ℚ), (6703282741/10000000000 : ℚ), (-133760395323/500000000000 : ℚ), 3⟩,
    ⟨(365300838093/1000000000000 : ℚ), (5054731087/10000000000 : ℚ), (-104154606303/500000000000 : ℚ), 2⟩,
    ⟨(377279909849/1000000000000 : ℚ), (235946359/625000000 : ℚ), (-40208260803/250000000000 : ℚ), 2⟩,
    ⟨(389434852923/1000000000000 : ℚ), (2766237277/10000000000 : ℚ), (-122180455821/1000000000000 : ℚ), 2⟩,
    ⟨(40164860857/100000000000 : ℚ), (244979049/1250000000 : ℚ), (-4515081637/50000000000 : ℚ), 2⟩,
    ⟨(103450887911/250000000000 : ℚ), (1307626847/10000000000 : ℚ), (-63722525553/1000000000000 : ℚ), 2⟩,
    ⟨(2128913117/5000000000 : ℚ), (193696779/2500000000 : ℚ), (-41363746543/1000000000000 : ℚ), 2⟩,
    ⟨(437470458829/1000000000000 : ℚ), (20987367/625000000 : ℚ), (-5605663629/250000000000 : ℚ), 2⟩,
    ⟨(89750899537/200000000000 : ℚ), (-14142221/5000000000 : ℚ), (-3147314247/500000000000 : ℚ), 2⟩,
    ⟨(459526068507/1000000000000 : ℚ), (-165844183/5000000000 : ℚ), (1870169861/250000000000 : ℚ), 2⟩,
    ⟨(469681435179/1000000000000 : ℚ), (-29260303/500000000 : ℚ), (3851354811/200000000000 : ℚ), 2⟩,
    ⟨(7486293687/15625000000 : ℚ), (-797088183/10000000000 : ℚ), (29306846529/1000000000000 : ℚ), 2⟩,
    ⟨(48775922541/100000000000 : ℚ), (-486839557/5000000000 : ℚ), (2365179763/62500000000 : ℚ), 2⟩,
    ⟨(247753774983/500000000000 : ℚ), (-559936651/5000000000 : ℚ), (45029570083/1000000000000 : ℚ), 2⟩,
    ⟨(125573287259/250000000000 : ℚ), (-154930789/1250000000 : ℚ), (1593582793/31250000000 : ℚ), 2⟩,
    ⟨(63506334199/125000000000 : ℚ), (-667648287/5000000000 : ℚ), (55836499771/1000000000000 : ℚ), 2⟩,
    ⟨(20508987021/40000000000 : ℚ), (-1409622309/10000000000 : ℚ), (1192597531/20000000000 : ℚ), 2⟩,
    ⟨(516270141641/1000000000000 : ℚ), (-1464050411/10000000000 : ℚ), (31215070021/500000000000 : ℚ), 2⟩,
    ⟨(518652927163/1000000000000 : ℚ), (-749864369/5000000000 : ℚ), (32138171061/500000000000 : ℚ), 2⟩,
    ⟨(129962521141/250000000000 : ℚ), (-758694807/5000000000 : ℚ), (6519338403/100000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-759794479/5000000000 : ℚ), (65307733411/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (313113265991/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control194.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control194.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate194

namespace DiagonalRamsey.JointInheritedCertificate195
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291328699981/1000000000000 : ℚ), (9773757712497/10000000000 : ℚ), (-71401481397249/250000000000 : ℚ), 11⟩,
    ⟨(292573522367/1000000000000 : ℚ), (530761476727/5000000000 : ℚ), (-3159401401129/100000000000 : ℚ), 8⟩,
    ⟨(295051178819/1000000000000 : ℚ), (92232633/2500000 : ℚ), (-2254610930033/200000000000 : ℚ), 6⟩,
    ⟨(298737808151/1000000000000 : ℚ), (90048700543/5000000000 : ℚ), (-226976359483/40000000000 : ℚ), 5⟩,
    ⟨(151798953053/500000000000 : ℚ), (1293655179/125000000 : ℚ), (-842603738679/250000000000 : ℚ), 5⟩,
    ⟨(154792333643/500000000000 : ℚ), (13080273133/2000000000 : ℚ), (-1763279629/800000000 : ℚ), 4⟩,
    ⟨(316640435907/1000000000000 : ℚ), (21974539131/5000000000 : ℚ), (-766622242299/500000000000 : ℚ), 4⟩,
    ⟨(16234863053/50000000000 : ℚ), (15402823523/5000000000 : ℚ), (-278070190429/250000000000 : ℚ), 4⟩,
    ⟨(166838775557/500000000000 : ℚ), (4449450231/2000000000 : ℚ), (-830869178623/1000000000000 : ℚ), 3⟩,
    ⟨(42936852621/125000000000 : ℚ), (3282161171/2000000000 : ℚ), (-316733146137/500000000000 : ℚ), 3⟩,
    ⟨(177027262473/500000000000 : ℚ), (12282972553/10000000000 : ℚ), (-97928277387/200000000000 : ℚ), 3⟩,
    ⟨(182627483663/500000000000 : ℚ), (9275922139/10000000000 : ℚ), (-47698889533/125000000000 : ℚ), 3⟩,
    ⟨(15079531269/40000000000 : ℚ), (3515390747/5000000000 : ℚ), (-4661556153/15625000000 : ℚ), 3⟩,
    ⟨(389141469911/1000000000000 : ℚ), (5319185869/10000000000 : ℚ), (-58206212107/250000000000 : ℚ), 2⟩,
    ⟨(10039937251/25000000000 : ℚ), (3990760651/10000000000 : ℚ), (-90169713063/500000000000 : ℚ), 2⟩,
    ⟨(207118191913/500000000000 : ℚ), (588721529/2000000000 : ℚ), (-137650770263/1000000000000 : ℚ), 2⟩,
    ⟨(53367053977/125000000000 : ℚ), (2106978627/10000000000 : ℚ), (-51241298581/500000000000 : ℚ), 2⟩,
    ⟨(219787662801/500000000000 : ℚ), (1430719001/10000000000 : ℚ), (-36598664509/500000000000 : ℚ), 2⟩,
    ⟨(452031345731/1000000000000 : ℚ), (878628027/10000000000 : ℚ), (-6074396451/125000000000 : ℚ), 2⟩,
    ⟨(464184533917/1000000000000 : ℚ), (6627591/156250000 : ℚ), (-13891655779/500000000000 : ℚ), 2⟩,
    ⟨(118979462079/250000000000 : ℚ), (2975641/625000000 : ℚ), (-10088595321/1000000000000 : ℚ), 2⟩,
    ⟨(60889786337/125000000000 : ℚ), (-5317319/200000000 : ℚ), (2501037009/500000000000 : ℚ), 2⟩,
    ⟨(248838997337/500000000000 : ℚ), (-8242499/156250000 : ℚ), (715329289/40000000000 : ℚ), 2⟩,
    ⟨(31718454033/62500000000 : ℚ), (-745966263/10000000000 : ℚ), (28860253553/1000000000000 : ℚ), 2⟩,
    ⟨(258237777291/500000000000 : ℚ), (-185567121/2000000000 : ℚ), (4771313281/125000000000 : ℚ), 2⟩,
    ⟨(104906475947/200000000000 : ℚ), (-215649637/2000000000 : ℚ), (22999390733/500000000000 : ℚ), 2⟩,
    ⟨(132897037089/250000000000 : ℚ), (-15014467/125000000 : ℚ), (1640270901/31250000000 : ℚ), 2⟩,
    ⟨(107514981907/200000000000 : ℚ), (-649800323/5000000000 : ℚ), (57751009657/1000000000000 : ℚ), 2⟩,
    ⟨(542435007491/1000000000000 : ℚ), (-687941763/5000000000 : ℚ), (30935098033/500000000000 : ℚ), 2⟩,
    ⟨(546121636823/1000000000000 : ℚ), (-1431713403/10000000000 : ℚ), (32454421441/500000000000 : ℚ), 2⟩,
    ⟨(21943971731/40000000000 : ℚ), (-1468295587/10000000000 : ℚ), (66911191799/1000000000000 : ℚ), 2⟩,
    ⟨(549844115661/1000000000000 : ℚ), (-29727987/200000000 : ℚ), (16976371969/250000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-297730727/2000000000 : ℚ), (13605891193/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (300621930033/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control195.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control195.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate195

namespace DiagonalRamsey.JointInheritedCertificate196
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(326618343141/1000000000000 : ℚ), (5185195994071/5000000000 : ℚ), (-33969441988881/100000000000 : ℚ), 11⟩,
    ⟨(327933957229/1000000000000 : ℚ), (1127414550109/10000000000 : ℚ), (-18789054477213/500000000000 : ℚ), 8⟩,
    ⟨(330552515321/1000000000000 : ℚ), (392366753657/10000000000 : ℚ), (-6704425139309/500000000000 : ℚ), 6⟩,
    ⟨(334448799273/1000000000000 : ℚ), (95920879963/5000000000 : ℚ), (-6750025385519/1000000000000 : ℚ), 6⟩,
    ⟨(169792642869/500000000000 : ℚ), (22086155751/2000000000 : ℚ), (-4009817715237/1000000000000 : ℚ), 5⟩,
    ⟨(172956253773/500000000000 : ℚ), (34956276611/5000000000 : ℚ), (-327846258021/125000000000 : ℚ), 4⟩,
    ⟨(353369530091/1000000000000 : ℚ), (47069831181/10000000000 : ℚ), (-91252099993/50000000000 : ℚ), 4⟩,
    ⟨(361884538169/1000000000000 : ℚ), (33059392381/10000000000 : ℚ), (-132455888797/100000000000 : ℚ), 4⟩,
    ⟨(371375527599/1000000000000 : ℚ), (5981661807/2500000000 : ℚ), (-247521300517/250000000000 : ℚ), 3⟩,
    ⟨(381751094963/1000000000000 : ℚ), (3538446777/2000000000 : ℚ), (-755557863299/1000000000000 : ℚ), 3⟩,
    ⟨(98227829469/250000000000 : ℚ), (6639507011/5000000000 : ℚ), (-146195465843/250000000000 : ℚ), 3⟩,
    ⟨(40474871729/100000000000 : ℚ), (5030876997/5000000000 : ℚ), (-228290222849/500000000000 : ℚ), 3⟩,
    ⟨(417149292579/1000000000000 : ℚ), (7658456383/10000000000 : ℚ), (-71579367169/200000000000 : ℚ), 3⟩,
    ⟨(214996809711/500000000000 : ℚ), (364114167/625000000 : ℚ), (-140164481731/500000000000 : ℚ), 2⟩,
    ⟨(443157999933/1000000000000 : ℚ), (4403497349/10000000000 : ℚ), (-27284348243/125000000000 : ℚ), 2⟩,
    ⟨(57064456741/125000000000 : ℚ), (3282675781/10000000000 : ℚ), (-41971531673/250000000000 : ℚ), 2⟩,
    ⟨(4699379399/10000000000 : ℚ), (477546587/2000000000 : ℚ), (-2529037553/20000000000 : ℚ), 2⟩,
    ⟨(60411949237/125000000000 : ℚ), (416245463/2500000000 : ℚ), (-5751270813/62500000000 : ℚ), 2⟩,
    ⟨(248229987203/500000000000 : ℚ), (268904071/2500000000 : ℚ), (-3158013067/50000000000 : ℚ), 2⟩,
    ⟨(407443441/800000000 : ℚ), (295571329/5000000000 : ℚ), (-19402689349/500000000000 : ℚ), 2⟩,
    ⟨(260852438269/500000000000 : ℚ), (23794121/1250000000 : ℚ), (-18150542771/1000000000000 : ℚ), 2⟩,
    ⟨(533542275953/1000000000000 : ℚ), (-142723913/10000000000 : ℚ), (-290460159/500000000000 : ℚ), 2⟩,
    ⟨(272351249433/500000000000 : ℚ), (-420234631/10000000000 : ℚ), (14377302119/1000000000000 : ℚ), 2⟩,
    ⟨(55507806623/100000000000 : ℚ), (-651490993/10000000000 : ℚ), (27091814989/1000000000000 : ℚ), 2⟩,
    ⟨(564569055659/1000000000000 : ℚ), (-421836623/5000000000 : ℚ), (18924635717/500000000000 : ℚ), 2⟩,
    ⟨(573084063737/1000000000000 : ℚ), (-200467181/2000000000 : ℚ), (2343677963/50000000000 : ℚ), 2⟩,
    ⟨(290270543141/500000000000 : ℚ), (-282943773/2500000000 : ℚ), (543392523/10000000000 : ℚ), 2⟩,
    ⟨(58686830809/100000000000 : ℚ), (-1235297087/10000000000 : ℚ), (7547698559/125000000000 : ℚ), 2⟩,
    ⟨(148001198639/250000000000 : ℚ), (-20553361/156250000 : ℚ), (65103892503/1000000000000 : ℚ), 2⟩,
    ⟨(595901078507/1000000000000 : ℚ), (-1373992793/10000000000 : ℚ), (2743322873/40000000000 : ℚ), 2⟩,
    ⟨(598519636599/1000000000000 : ℚ), (-28246943/200000000 : ℚ), (35436808177/500000000000 : ℚ), 2⟩,
    ⟨(599835250687/1000000000000 : ℚ), (-286263877/2000000000 : ℚ), (14402077549/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-143368141/1000000000 : ℚ), (72152089747/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (2176150019/7812500000 : ℚ)
  μ := (3/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control196.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control196.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate196

namespace DiagonalRamsey.JointInheritedCertificate219
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(228736976987/1000000000000 : ℚ), (8754625395757/10000000000 : ℚ), (-12556931255733/62500000000 : ℚ), 11⟩,
    ⟨(229801776847/1000000000000 : ℚ), (949413769361/10000000000 : ℚ), (-2777996681619/125000000000 : ℚ), 8⟩,
    ⟨(57980280491/250000000000 : ℚ), (65854389437/2000000000 : ℚ), (-1982235489983/250000000000 : ℚ), 6⟩,
    ⟨(47014920377/200000000000 : ℚ), (40086006987/2500000000 : ℚ), (-3990412305777/1000000000000 : ℚ), 6⟩,
    ⟨(119615923437/500000000000 : ℚ), (91895040243/10000000000 : ℚ), (-2369496313919/1000000000000 : ℚ), 5⟩,
    ⟨(244352820389/1000000000000 : ℚ), (11581374077/2000000000 : ℚ), (-1548852888407/1000000000000 : ℚ), 4⟩,
    ⟨(250388204657/1000000000000 : ℚ), (3879431921/1000000000 : ℚ), (-269177157397/250000000000 : ℚ), 4⟩,
    ⟨(64319968907/250000000000 : ℚ), (108410151/40000000 : ℚ), (-390158410389/500000000000 : ℚ), 4⟩,
    ⟨(132480731371/500000000000 : ℚ), (195006539/100000000 : ℚ), (-291029876883/500000000000 : ℚ), 3⟩,
    ⟨(273358988117/1000000000000 : ℚ), (7161652037/5000000000 : ℚ), (-442866688577/1000000000000 : ℚ), 3⟩,
    ⟨(17649473687/62500000000 : ℚ), (5332727357/5000000000 : ℚ), (-68266616553/200000000000 : ℚ), 3⟩,
    ⟨(14598612329/50000000000 : ℚ), (8002645143/10000000000 : ℚ), (-264937650419/1000000000000 : ℚ), 3⟩,
    ⟨(60401744763/200000000000 : ℚ), (375942699/625000000 : ℚ), (-12872646649/62500000000 : ℚ), 3⟩,
    ⟨(156202176967/500000000000 : ℚ), (2249782147/5000000000 : ℚ), (-79721391547/500000000000 : ℚ), 2⟩,
    ⟨(40382377667/125000000000 : ℚ), (3322499341/10000000000 : ℚ), (-61035615267/500000000000 : ℚ), 2⟩,
    ⟨(333870115751/1000000000000 : ℚ), (2393528551/10000000000 : ℚ), (-91577808789/1000000000000 : ℚ), 2⟩,
    ⟨(86183380107/250000000000 : ℚ), (1650039283/10000000000 : ℚ), (-13273125141/200000000000 : ℚ), 2⟩,
    ⟨(177772307421/500000000000 : ℚ), (1047739317/10000000000 : ℚ), (-45287343919/1000000000000 : ℚ), 2⟩,
    ⟨(73239856449/200000000000 : ℚ), (138683047/2500000000 : ℚ), (-13751899773/500000000000 : ℚ), 2⟩,
    ⟨(94148728091/250000000000 : ℚ), (73844979/5000000000 : ℚ), (-12391938811/1000000000000 : ℚ), 2⟩,
    ⟨(386631389599/1000000000000 : ℚ), (-38135777/2000000000 : ℚ), (516665241/1000000000000 : ℚ), 2⟩,
    ⟨(396212057187/1000000000000 : ℚ), (-473340091/10000000000 : ℚ), (11577805423/1000000000000 : ℚ), 2⟩,
    ⟨(202622324031/500000000000 : ℚ), (-710110841/10000000000 : ℚ), (329123501/15625000000 : ℚ), 2⟩,
    ⟨(413642173437/1000000000000 : ℚ), (-908483023/10000000000 : ℚ), (29184773451/1000000000000 : ℚ), 2⟩,
    ⟨(421323760551/1000000000000 : ℚ), (-537103597/5000000000 : ℚ), (36102581547/1000000000000 : ℚ), 2⟩,
    ⟨(428215431521/1000000000000 : ℚ), (-1211711803/10000000000 : ℚ), (41942790113/1000000000000 : ℚ), 2⟩,
    ⟨(434250815789/1000000000000 : ℚ), (-1324407081/10000000000 : ℚ), (11700560171/250000000000 : ℚ), 2⟩,
    ⟨(87874357861/200000000000 : ℚ), (-56596271/400000000 : ℚ), (12688794533/250000000000 : ℚ), 2⟩,
    ⟨(221764517147/500000000000 : ℚ), (-742595157/5000000000 : ℚ), (53857752693/1000000000000 : ℚ), 2⟩,
    ⟨(223341257107/500000000000 : ℚ), (-1536720817/10000000000 : ℚ), (28075682947/500000000000 : ℚ), 2⟩,
    ⟨(448801859331/1000000000000 : ℚ), (-1570529541/10000000000 : ℚ), (28832556849/500000000000 : ℚ), 2⟩,
    ⟨(56233332399/125000000000 : ℚ), (-1587273919/10000000000 : ℚ), (29208747259/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-24833743/156250000 : ℚ), (5851133413/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (175553750087/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control219.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control219.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate219

namespace DiagonalRamsey.JointInheritedCertificate220
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(234876780349/1000000000000 : ℚ), (8835813580129/10000000000 : ℚ), (-208211275009463/1000000000000 : ℚ), 11⟩,
    ⟨(23596015691/100000000000 : ℚ), (958376095399/10000000000 : ℚ), (-575789404097/25000000000 : ℚ), 8⟩,
    ⟨(238116476523/1000000000000 : ℚ), (83114220923/2500000000 : ℚ), (-4108563607347/500000000000 : ℚ), 6⟩,
    ⟨(60331243163/250000000000 : ℚ), (161938074977/10000000000 : ℚ), (-4135498111389/1000000000000 : ℚ), 6⟩,
    ⟨(9822189829/40000000000 : ℚ), (92835310937/10000000000 : ℚ), (-38370302477/15625000000 : ℚ), 5⟩,
    ⟨(62691265179/250000000000 : ℚ), (58517128699/10000000000 : ℚ), (-1605255723213/1000000000000 : ℚ), 4⟩,
    ⟨(256905739441/1000000000000 : ℚ), (980392089/250000000 : ℚ), (-1115978155149/1000000000000 : ℚ), 4⟩,
    ⟨(26391764381/100000000000 : ℚ), (6851565577/2500000000 : ℚ), (-808842972157/1000000000000 : ℚ), 4⟩,
    ⟨(271733245349/1000000000000 : ℚ), (19726579249/10000000000 : ℚ), (-603412063893/1000000000000 : ℚ), 3⟩,
    ⟨(280277275543/1000000000000 : ℚ), (1449543859/1000000000 : ℚ), (-229597438307/500000000000 : ℚ), 3⟩,
    ⟨(28946745071/100000000000 : ℚ), (5399558527/5000000000 : ℚ), (-35400891549/100000000000 : ℚ), 3⟩,
    ⟨(299215264441/1000000000000 : ℚ), (2027014371/2500000000 : ℚ), (-137438833091/500000000000 : ℚ), 3⟩,
    ⟨(7735670999/25000000000 : ℚ), (6099315819/10000000000 : ℚ), (-53450582557/250000000000 : ℚ), 3⟩,
    ⟨(80000958553/250000000000 : ℚ), (4567651977/10000000000 : ℚ), (-82818885791/500000000000 : ℚ), 2⟩,
    ⟨(165422192481/500000000000 : ℚ), (675622837/2000000000 : ℚ), (-3173891519/25000000000 : ℚ), 2⟩,
    ⟨(341844091779/1000000000000 : ℚ), (609850651/2500000000 : ℚ), (-95403188279/1000000000000 : ℚ), 2⟩,
    ⟨(352897021473/1000000000000 : ℚ), (844119653/5000000000 : ℚ), (-13864989871/200000000000 : ℚ), 2⟩,
    ⟨(36389672829/100000000000 : ℚ), (215970183/2000000000 : ℚ), (-47531399401/1000000000000 : ℚ), 2⟩,
    ⟨(374737279039/1000000000000 : ℚ), (14549661/250000000 : ℚ), (-3644042687/125000000000 : ℚ), 2⟩,
    ⟨(96328568323/250000000000 : ℚ), (85526261/5000000000 : ℚ), (-13541525239/1000000000000 : ℚ), 2⟩,
    ⟨(395525848811/1000000000000 : ℚ), (-170443791/10000000000 : ℚ), (-212936867/1000000000000 : ℚ), 2⟩,
    ⟨(405273662541/1000000000000 : ℚ), (-227811451/5000000000 : ℚ), (5601355713/500000000000 : ℚ), 2⟩,
    ⟨(414463837709/1000000000000 : ℚ), (-694421841/10000000000 : ℚ), (5247074791/250000000000 : ℚ), 2⟩,
    ⟨(423007867903/1000000000000 : ℚ), (-178885211/2000000000 : ℚ), (5872360851/200000000000 : ℚ), 2⟩,
    ⟨(215411734721/500000000000 : ℚ), (-33170609/312500000 : ℚ), (36491803243/1000000000000 : ℚ), 2⟩,
    ⟨(43783537381/100000000000 : ℚ), (-1200008271/10000000000 : ℚ), (42508798711/1000000000000 : ℚ), 2⟩,
    ⟨(55497006567/125000000000 : ℚ), (-328381973/2500000000 : ℚ), (23756795231/500000000000 : ℚ), 2⟩,
    ⟨(449186367527/1000000000000 : ℚ), (-87791711/625000000 : ℚ), (1289587787/25000000000 : ℚ), 2⟩,
    ⟨(2267080703/5000000000 : ℚ), (-737716629/5000000000 : ℚ), (5477708669/100000000000 : ℚ), 2⟩,
    ⟨(456624636729/1000000000000 : ℚ), (-763654467/5000000000 : ℚ), (57137495309/1000000000000 : ℚ), 2⟩,
    ⟨(229390478171/500000000000 : ℚ), (-1561340091/10000000000 : ℚ), (11739019829/200000000000 : ℚ), 2⟩,
    ⟨(459864332903/1000000000000 : ℚ), (-1578193423/10000000000 : ℚ), (11893841873/200000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-158029257/1000000000 : ℚ), (7445719489/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (86826303563/250000000000 : ℚ)
  μ := (23/50 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control220.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control220.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate220

namespace DiagonalRamsey.JointInheritedCertificate221
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48222090387/200000000000 : ℚ), (8921423904789/10000000000 : ℚ), (-107901007991293/500000000000 : ℚ), 11⟩,
    ⟨(242211953467/1000000000000 : ℚ), (48391374903/500000000 : ℚ), (-23871338924009/1000000000000 : ℚ), 8⟩,
    ⟨(24440434847/100000000000 : ℚ), (335816269273/10000000000 : ℚ), (-8516816423461/1000000000000 : ℚ), 6⟩,
    ⟨(247666522981/1000000000000 : ℚ), (40904978387/2500000000 : ℚ), (-4286397484441/1000000000000 : ℚ), 6⟩,
    ⟨(62991765119/250000000000 : ℚ), (3753109581/400000000 : ℚ), (-254537489751/100000000000 : ℚ), 5⟩,
    ⟨(64316136107/250000000000 : ℚ), (59161536143/10000000000 : ℚ), (-83197335281/50000000000 : ℚ), 4⟩,
    ⟨(263507957171/1000000000000 : ℚ), (39660868337/10000000000 : ℚ), (-231371077839/200000000000 : ℚ), 4⟩,
    ⟨(67659292807/250000000000 : ℚ), (27727355441/10000000000 : ℚ), (-838550680313/1000000000000 : ℚ), 4⟩,
    ⟨(278583528369/1000000000000 : ℚ), (19965588709/10000000000 : ℚ), (-312830952133/500000000000 : ℚ), 3⟩,
    ⟨(287270500831/1000000000000 : ℚ), (1467767907/1000000000 : ℚ), (-238111113859/500000000000 : ℚ), 3⟩,
    ⟨(296614428321/1000000000000 : ℚ), (1094074127/1000000000 : ℚ), (-367240260439/1000000000000 : ℚ), 3⟩,
    ⟨(30652532371/100000000000 : ℚ), (128435077/156250000 : ℚ), (-57053229433/200000000000 : ℚ), 3⟩,
    ⟨(39613467457/125000000000 : ℚ), (6188723097/10000000000 : ℚ), (-55502289781/250000000000 : ℚ), 3⟩,
    ⟨(327661687819/1000000000000 : ℚ), (927997961/2000000000 : ℚ), (-86068104463/500000000000 : ℚ), 2⟩,
    ⟨(169341800899/500000000000 : ℚ), (3437256809/10000000000 : ℚ), (-26418710867/200000000000 : ℚ), 2⟩,
    ⟨(174933667269/500000000000 : ℚ), (311029159/1250000000 : ℚ), (-99442137959/1000000000000 : ℚ), 2⟩,
    ⟨(361105180579/1000000000000 : ℚ), (864469967/5000000000 : ℚ), (-18116423449/250000000000 : ℚ), 2⟩,
    ⟨(372288913319/1000000000000 : ℚ), (278524043/2500000000 : ℚ), (-49930767833/1000000000000 : ℚ), 2⟩,
    ⟨(191655413649/500000000000 : ℚ), (611077217/10000000000 : ℚ), (-1546743531/50000000000 : ℚ), 2⟩,
    ⟨(394064775461/1000000000000 : ℚ), (39201969/2000000000 : ℚ), (-14807605953/1000000000000 : ℚ), 2⟩,
    ⟨(404447191407/1000000000000 : ℚ), (-148811327/10000000000 : ℚ), (-522323237/500000000000 : ℚ), 2⟩,
    ⟨(82871617359/200000000000 : ℚ), (-436669823/10000000000 : ℚ), (5368677573/500000000000 : ℚ), 2⟩,
    ⟨(211851007143/500000000000 : ℚ), (-677629121/10000000000 : ℚ), (5208045021/250000000000 : ℚ), 2⟩,
    ⟨(108097246687/250000000000 : ℚ), (-439686701/5000000000 : ℚ), (14733162171/500000000000 : ℚ), 2⟩,
    ⟨(440335343889/1000000000000 : ℚ), (-104780409/1000000000 : ℚ), (9203763883/250000000000 : ℚ), 2⟩,
    ⟨(223732278973/500000000000 : ℚ), (-593734117/5000000000 : ℚ), (2688383957/62500000000 : ℚ), 2⟩,
    ⟨(453707970689/1000000000000 : ℚ), (-260373829/2000000000 : ℚ), (376316623/7812500000 : ℚ), 2⟩,
    ⟨(459005454641/1000000000000 : ℚ), (-1393693139/10000000000 : ℚ), (52358774523/1000000000000 : ℚ), 2⟩,
    ⟨(57913249017/125000000000 : ℚ), (-1464975419/10000000000 : ℚ), (55645896891/1000000000000 : ℚ), 2⟩,
    ⟨(466568166647/1000000000000 : ℚ), (-758610419/5000000000 : ℚ), (14518734641/250000000000 : ℚ), 2⟩,
    ⟨(9375211233/20000000000 : ℚ), (-310298071/2000000000 : ℚ), (59677589641/1000000000000 : ℚ), 2⟩,
    ⟨(234931031591/500000000000 : ℚ), (-196057559/1250000000 : ℚ), (15118503737/250000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-314114821/2000000000 : ℚ), (7571667639/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (171720044359/500000000000 : ℚ)
  μ := (47/100 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control221.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control221.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate221

namespace DiagonalRamsey.JointInheritedCertificate222
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(247376574359/1000000000000 : ℚ), (90067096877/100000000 : ℚ), (-223520778365753/1000000000000 : ℚ), 11⟩,
    ⟨(248496044697/1000000000000 : ℚ), (954338643/9765625 : ℚ), (-24725228719887/1000000000000 : ℚ), 8⟩,
    ⟨(125362102131/500000000000 : ℚ), (67832517677/2000000000 : ℚ), (-4410760731197/500000000000 : ℚ), 6⟩,
    ⟨(12701979733/50000000000 : ℚ), (4132375713/250000000 : ℚ), (-4439802885863/1000000000000 : ℚ), 6⟩,
    ⟨(64602571717/250000000000 : ℚ), (23704010717/2500000000 : ℚ), (-2636524107877/1000000000000 : ℚ), 5⟩,
    ⟨(263794188731/1000000000000 : ℚ), (59803121953/10000000000 : ℚ), (-172358929439/100000000000 : ℚ), 4⟩,
    ⟨(270139450331/1000000000000 : ℚ), (10025992583/2500000000 : ℚ), (-74899030871/62500000000 : ℚ), 4⟩,
    ⟨(27738496333/100000000000 : ℚ), (28046819501/10000000000 : ℚ), (-27147585611/31250000000 : ℚ), 4⟩,
    ⟨(142730474739/500000000000 : ℚ), (20203263711/10000000000 : ℚ), (-648251312163/1000000000000 : ℚ), 3⟩,
    ⟨(73572408153/250000000000 : ℚ), (14858784383/10000000000 : ℚ), (-493502187063/1000000000000 : ℚ), 3⟩,
    ⟨(303785987689/1000000000000 : ℚ), (11081369431/10000000000 : ℚ), (-380661424237/1000000000000 : ℚ), 3⟩,
    ⟨(313858559617/1000000000000 : ℚ), (8330735961/10000000000 : ℚ), (-59159566849/200000000000 : ℚ), 3⟩,
    ⟨(162205172011/500000000000 : ℚ), (6277306977/10000000000 : ℚ), (-46064764741/200000000000 : ℚ), 3⟩,
    ⟨(335339721453/1000000000000 : ℚ), (4711558897/10000000000 : ℚ), (-89357586189/500000000000 : ℚ), 2⟩,
    ⟨(34654143603/100000000000 : ℚ), (3495672517/10000000000 : ℚ), (-137290597909/1000000000000 : ℚ), 2⟩,
    ⟨(178953804559/500000000000 : ℚ), (2536369751/10000000000 : ℚ), (-103523327243/1000000000000 : ℚ), 2⟩,
    ⟨(184664389129/500000000000 : ℚ), (442243149/2500000000 : ℚ), (-75635192431/1000000000000 : ℚ), 2⟩,
    ⟨(190347475673/500000000000 : ℚ), (1147694981/10000000000 : ℚ), (-26174036801/500000000000 : ℚ), 2⟩,
    ⟨(391896665923/1000000000000 : ℚ), (639539623/10000000000 : ℚ), (-32726627889/1000000000000 : ℚ), 2⟩,
    ⟨(201413021677/500000000000 : ℚ), (22035431/1000000000 : ℚ), (-8037944253/500000000000 : ℚ), 2⟩,
    ⟨(413377827759/1000000000000 : ℚ), (-127778173/10000000000 : ℚ), (-234110867/125000000000 : ℚ), 2⟩,
    ⟨(423450399687/1000000000000 : ℚ), (-209152033/5000000000 : ℚ), (1028003979/100000000000 : ℚ), 2⟩,
    ⟨(108236688691/250000000000 : ℚ), (-661413033/10000000000 : ℚ), (206877777/10000000000 : ℚ), 2⟩,
    ⟨(220887718949/500000000000 : ℚ), (-864887833/10000000000 : ℚ), (29585504177/1000000000000 : ℚ), 2⟩,
    ⟨(224925712023/500000000000 : ℚ), (-1034707279/10000000000 : ℚ), (7431061859/200000000000 : ℚ), 2⟩,
    ⟨(91419387409/200000000000 : ℚ), (-146934913/1250000000 : ℚ), (10884584253/250000000000 : ℚ), 2⟩,
    ⟨(92688439729/200000000000 : ℚ), (-1290755037/10000000000 : ℚ), (24421877163/500000000000 : ℚ), 2⟩,
    ⟨(117206525127/250000000000 : ℚ), (-1383258099/10000000000 : ℚ), (13288857341/250000000000 : ℚ), 2⟩,
    ⟨(118299198179/250000000000 : ℚ), (-1455052381/10000000000 : ℚ), (56536918541/1000000000000 : ℚ), 2⟩,
    ⟨(238256091557/500000000000 : ℚ), (-1507664221/10000000000 : ℚ), (11807034533/200000000000 : ℚ), 2⟩,
    ⟨(478740342679/1000000000000 : ℚ), (-1542169869/10000000000 : ℚ), (60683240543/1000000000000 : ℚ), 2⟩,
    ⟨(479859813017/1000000000000 : ℚ), (-1559255651/10000000000 : ℚ), (30751080333/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1561383631/10000000000 : ℚ), (30802144397/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (339544180571/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control222.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control222.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate222

namespace DiagonalRamsey.JointInheritedCertificate223
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(260127397643/1000000000000 : ℚ), (574091437121/625000000 : ℚ), (-119846569940789/500000000000 : ℚ), 11⟩,
    ⟨(261281753713/1000000000000 : ℚ), (996977882161/10000000000 : ℚ), (-26514326909407/1000000000000 : ℚ), 8⟩,
    ⟨(65894837193/250000000000 : ℚ), (34617765213/1000000000 : ℚ), (-4729985064333/500000000000 : ℚ), 6⟩,
    ⟨(66749513931/250000000000 : ℚ), (33761466451/2000000000 : ℚ), (-2380625131511/500000000000 : ℚ), 6⟩,
    ⟨(271504950553/1000000000000 : ℚ), (6055548307/625000000 : ℚ), (-17672088841/6250000000 : ℚ), 5⟩,
    ⟨(277056629397/1000000000000 : ℚ), (61149073183/10000000000 : ℚ), (-924294496087/500000000000 : ℚ), 4⟩,
    ⟨(141799813277/500000000000 : ℚ), (1641352709/400000000 : ℚ), (-642717751223/500000000000 : ℚ), 4⟩,
    ⟨(58214185877/200000000000 : ℚ), (14358713243/5000000000 : ℚ), (-232995396561/250000000000 : ℚ), 4⟩,
    ⟨(299398585159/1000000000000 : ℚ), (20702337791/10000000000 : ℚ), (-173906637517/250000000000 : ℚ), 3⟩,
    ⟨(154251197/500000000 : ℚ), (1523918171/1000000000 : ℚ), (-66219633279/125000000000 : ℚ), 3⟩,
    ⟨(50927149/160000000 : ℚ), (2844204861/2500000000 : ℚ), (-40883577421/100000000000 : ℚ), 3⟩,
    ⟨(41085142729/125000000000 : ℚ), (1070468951/1250000000 : ℚ), (-4967546391/15625000000 : ℚ), 3⟩,
    ⟨(339561748451/1000000000000 : ℚ), (6463465151/10000000000 : ℚ), (-247809035303/1000000000000 : ℚ), 3⟩,
    ⟨(175415857459/500000000000 : ℚ), (2430978699/5000000000 : ℚ), (-48142313453/250000000000 : ℚ), 2⟩,
    ⟨(22648906581/62500000000 : ℚ), (1809205387/5000000000 : ℚ), (-148255074901/1000000000000 : ℚ), 2⟩,
    ⟨(187051439579/500000000000 : ℚ), (659369631/2500000000 : ℚ), (-112155893161/1000000000000 : ℚ), 2⟩,
    ⟨(385879962897/1000000000000 : ℚ), (115813651/625000000 : ℚ), (-41181893661/500000000000 : ℚ), 2⟩,
    ⟨(397600336759/1000000000000 : ℚ), (609092547/5000000000 : ℚ), (-14376748241/250000000000 : ℚ), 2⟩,
    ⟨(12785972723/31250000000 : ℚ), (139840089/2000000000 : ℚ), (-36581266831/1000000000000 : ℚ), 2⟩,
    ⟨(420421093603/1000000000000 : ℚ), (271327333/10000000000 : ℚ), (-1177505773/62500000000 : ℚ), 2⟩,
    ⟨(215650850111/500000000000 : ℚ), (-83795713/10000000000 : ℚ), (-930343007/250000000000 : ℚ), 2⟩,
    ⟨(110422040201/250000000000 : ℚ), (-379956321/10000000000 : ℚ), (9202626257/1000000000000 : ℚ), 2⟩,
    ⟨(225740224027/500000000000 : ℚ), (-627609019/10000000000 : ℚ), (20260130889/1000000000000 : ℚ), 2⟩,
    ⟨(92116851379/200000000000 : ℚ), (-834743601/10000000000 : ℚ), (29704584493/1000000000000 : ℚ), 2⟩,
    ⟨(468911912669/1000000000000 : ℚ), (-251875379/2500000000 : ℚ), (37732446049/1000000000000 : ℚ), 2⟩,
    ⟨(952766431/2000000000 : ℚ), (-287654683/2500000000 : ℚ), (22248095437/500000000000 : ℚ), 2⟩,
    ⟨(241463106329/500000000000 : ℚ), (-19808547/156250000 : ℚ), (50113908661/1000000000000 : ℚ), 2⟩,
    ⟨(244238945751/500000000000 : ℚ), (-1361688529/10000000000 : ℚ), (54676447099/1000000000000 : ℚ), 2⟩,
    ⟨(49298478633/100000000000 : ℚ), (-717283827/5000000000 : ℚ), (14563186143/250000000000 : ℚ), 2⟩,
    ⟨(248201746641/500000000000 : ℚ), (-1487956021/10000000000 : ℚ), (60893790633/1000000000000 : ℚ), 2⟩,
    ⟨(498701088341/1000000000000 : ℚ), (-761481077/5000000000 : ℚ), (62635515627/1000000000000 : ℚ), 2⟩,
    ⟨(499855444411/1000000000000 : ℚ), (-154029311/1000000000 : ℚ), (3175040549/50000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1542451501/10000000000 : ℚ), (63608714917/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (331594581547/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control223.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control223.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate223

namespace DiagonalRamsey.JointInheritedCertificate224
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136595095709/500000000000 : ℚ), (9376350804283/10000000000 : ℚ), (-256946087920781/1000000000000 : ℚ), 11⟩,
    ⟨(274377931901/1000000000000 : ℚ), (1018054696969/10000000000 : ℚ), (-28423012991833/1000000000000 : ℚ), 8⟩,
    ⟨(276741974277/1000000000000 : ℚ), (176835514119/5000000000 : ℚ), (-2028225701641/200000000000 : ℚ), 6⟩,
    ⟨(11210382061/40000000000 : ℚ), (86280062451/5000000000 : ℚ), (-5104228996323/1000000000000 : ℚ), 6⟩,
    ⟨(284896787453/1000000000000 : ℚ), (3964167099/400000000 : ℚ), (-303136297231/100000000000 : ℚ), 5⟩,
    ⟨(58121804589/200000000000 : ℚ), (31294122003/5000000000 : ℚ), (-990999922477/500000000000 : ℚ), 4⟩,
    ⟨(297341246051/1000000000000 : ℚ), (8405700199/2000000000 : ℚ), (-43073927927/31250000000 : ℚ), 4⟩,
    ⟨(15251431089/50000000000 : ℚ), (2943512177/1000000000 : ℚ), (-999534111601/1000000000000 : ℚ), 4⟩,
    ⟨(39199639563/125000000000 : ℚ), (21236699197/10000000000 : ℚ), (-373119487861/500000000000 : ℚ), 3⟩,
    ⟨(322964210933/1000000000000 : ℚ), (15646650421/10000000000 : ℚ), (-142127873319/250000000000 : ℚ), 3⟩,
    ⟨(83259923707/250000000000 : ℚ), (11693415101/10000000000 : ℚ), (-438975712053/1000000000000 : ℚ), 3⟩,
    ⟨(343726535771/1000000000000 : ℚ), (8813518869/10000000000 : ℚ), (-68323199371/200000000000 : ℚ), 3⟩,
    ⟨(177460906821/500000000000 : ℚ), (666304407/1000000000 : ℚ), (-33319888553/125000000000 : ℚ), 3⟩,
    ⟨(73303542359/200000000000 : ℚ), (1255801653/2500000000 : ℚ), (-25931627289/125000000000 : ℚ), 2⟩,
    ⟨(378402555391/1000000000000 : ℚ), (3749988247/10000000000 : ℚ), (-40015998139/250000000000 : ℚ), 2⟩,
    ⟨(39046188689/100000000000 : ℚ), (1372916967/5000000000 : ℚ), (-4859409707/40000000000 : ℚ), 2⟩,
    ⟨(402579568337/1000000000000 : ℚ), (1943038277/10000000000 : ℚ), (-89670349123/1000000000000 : ℚ), 2⟩,
    ⟨(103659724959/250000000000 : ℚ), (323406227/2500000000 : ℚ), (-63147563887/1000000000000 : ℚ), 2⟩,
    ⟨(53315467929/125000000000 : ℚ), (381490917/5000000000 : ℚ), (-40839051311/1000000000000 : ℚ), 2⟩,
    ⟨(87623928317/200000000000 : ℚ), (325747071/10000000000 : ℚ), (-21943207203/1000000000000 : ℚ), 2⟩,
    ⟨(89862983891/200000000000 : ℚ), (-9228907/2500000000 : ℚ), (-183002863/31250000000 : ℚ), 2⟩,
    ⟨(230000880199/500000000000 : ℚ), (-339158907/10000000000 : ℚ), (1576441411/200000000000 : ℚ), 2⟩,
    ⟨(470077244293/1000000000000 : ℚ), (-295860337/5000000000 : ℚ), (19624923519/1000000000000 : ℚ), 2⟩,
    ⟨(479444338723/1000000000000 : ℚ), (-401406193/5000000000 : ℚ), (5929017973/200000000000 : ℚ), 2⟩,
    ⟨(244006416723/500000000000 : ℚ), (-489374887/5000000000 : ℚ), (1907729857/50000000000 : ℚ), 2⟩,
    ⟨(61962526147/125000000000 : ℚ), (-112440613/1000000000 : ℚ), (2832381733/62500000000 : ℚ), 2⟩,
    ⟨(502432432281/1000000000000 : ℚ), (-310885313/2500000000 : ℚ), (51263322993/1000000000000 : ℚ), 2⟩,
    ⟨(254072333887/500000000000 : ℚ), (-334760441/2500000000 : ℚ), (56088621667/1000000000000 : ℚ), 2⟩,
    ⟨(256390951851/500000000000 : ℚ), (-1413097069/10000000000 : ℚ), (3741797337/62500000000 : ℚ), 2⟩,
    ⟨(10325989619/20000000000 : ℚ), (-73366379/500000000 : ℚ), (626590901/10000000000 : ℚ), 2⟩,
    ⟨(259331761663/500000000000 : ℚ), (-751438299/5000000000 : ℚ), (64498672141/1000000000000 : ℚ), 2⟩,
    ⟨(519851263809/1000000000000 : ℚ), (-1520473529/10000000000 : ℚ), (32706202023/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-761332457/5000000000 : ℚ), (16381584951/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (80855229331/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control224.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control224.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate224
