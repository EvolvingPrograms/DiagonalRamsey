import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate158
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(159783797527/500000000000 : ℚ), (632918793337/125000000 : ℚ), (-809667698811887/500000000000 : ℚ), 13⟩,
    ⟨(79961279793/250000000000 : ℚ), (2795853331171/5000000000 : ℚ), (-179715541453967/1000000000000 : ℚ), 10⟩,
    ⟨(320399498829/1000000000000 : ℚ), (99650329209/500000000 : ℚ), (-64545955947871/1000000000000 : ℚ), 8⟩,
    ⟨(12849175939/40000000000 : ℚ), (125458288677/1250000000 : ℚ), (-32815563284879/1000000000000 : ℚ), 8⟩,
    ⟨(32233281881/100000000000 : ℚ), (298876971709/5000000000 : ℚ), (-19757791568763/1000000000000 : ℚ), 7⟩,
    ⟨(323707101597/1000000000000 : ℚ), (98267560537/2500000000 : ℚ), (-13147971459679/1000000000000 : ℚ), 6⟩,
    ⟨(81337234017/250000000000 : ℚ), (275894206487/10000000000 : ℚ), (-934634840843/100000000000 : ℚ), 6⟩,
    ⟨(327254366901/1000000000000 : ℚ), (101388455361/5000000000 : ℚ), (-1740295475901/250000000000 : ℚ), 5⟩,
    ⟨(65883760749/200000000000 : ℚ), (154214537741/10000000000 : ℚ), (-5367139222117/1000000000000 : ℚ), 5⟩,
    ⟨(331837032283/1000000000000 : ℚ), (7524982101/625000000 : ℚ), (-4249429386601/1000000000000 : ℚ), 5⟩,
    ⟨(334503226791/1000000000000 : ℚ), (47982753161/5000000000 : ℚ), (-3435571534251/1000000000000 : ℚ), 4⟩,
    ⟨(84352741043/250000000000 : ℚ), (77775716111/10000000000 : ℚ), (-282463266849/100000000000 : ℚ), 4⟩,
    ⟨(42569154929/125000000000 : ℚ), (63898961719/10000000000 : ℚ), (-1177178192443/500000000000 : ℚ), 4⟩,
    ⟨(68784496511/200000000000 : ℚ), (10618731077/2000000000 : ℚ), (-198465093003/100000000000 : ℚ), 4⟩,
    ⟨(347510576739/1000000000000 : ℚ), (44532559389/10000000000 : ℚ), (-1688752479647/1000000000000 : ℚ), 4⟩,
    ⟨(2744600609/7812500000 : ℚ), (4705944143/1250000000 : ℚ), (-1448241393647/1000000000000 : ℚ), 4⟩,
    ⟨(44413529469/125000000000 : ℚ), (16019101377/5000000000 : ℚ), (-250020912941/200000000000 : ℚ), 3⟩,
    ⟨(44937376917/125000000000 : ℚ), (219326733/80000000 : ℚ), (-1084937239649/1000000000000 : ℚ), 3⟩,
    ⟨(1455484483/4000000000 : ℚ), (23568237251/10000000000 : ℚ), (-945805817019/1000000000000 : ℚ), 3⟩,
    ⟨(46051752401/125000000000 : ℚ), (2033662103/1000000000 : ℚ), (-413753927961/500000000000 : ℚ), 3⟩,
    ⟨(37311676647/100000000000 : ℚ), (17600376013/10000000000 : ℚ), (-726078299753/1000000000000 : ℚ), 3⟩,
    ⟨(377968033207/1000000000000 : ℚ), (15266599571/10000000000 : ℚ), (-79806568837/125000000000 : ℚ), 3⟩,
    ⟨(38295613229/100000000000 : ℚ), (6631422911/5000000000 : ℚ), (-562231933267/1000000000000 : ℚ), 3⟩,
    ⟨(194034523477/500000000000 : ℚ), (11531987821/10000000000 : ℚ), (-49551746929/100000000000 : ℚ), 3⟩,
    ⟨(393294459739/1000000000000 : ℚ), (10028520953/10000000000 : ℚ), (-109197534029/250000000000 : ℚ), 3⟩,
    ⟨(398619782167/1000000000000 : ℚ), (8715863781/10000000000 : ℚ), (-384823323847/1000000000000 : ℚ), 3⟩,
    ⟨(404032185071/1000000000000 : ℚ), (1891090133/2500000000 : ℚ), (-67723592483/200000000000 : ℚ), 2⟩,
    ⟨(204759314749/500000000000 : ℚ), (3274892253/5000000000 : ℚ), (-74338461987/250000000000 : ℚ), 2⟩,
    ⟨(207532949061/500000000000 : ℚ), (1130440807/2000000000 : ℚ), (-10414108229/40000000000 : ℚ), 2⟩,
    ⟨(26291289193/62500000000 : ℚ), (303444633/625000000 : ℚ), (-227049861091/1000000000000 : ℚ), 2⟩,
    ⟨(426289338203/1000000000000 : ℚ), (1036191279/2500000000 : ℚ), (-196972299999/1000000000000 : ℚ), 2⟩,
    ⟨(43193847141/100000000000 : ℚ), (701927789/2000000000 : ℚ), (-84860761919/500000000000 : ℚ), 2⟩,
    ⟨(109398604363/250000000000 : ℚ), (147001861/500000000 : ℚ), (-144960035581/1000000000000 : ℚ), 2⟩,
    ⟨(221621775329/500000000000 : ℚ), (2427754653/10000000000 : ℚ), (-15300075669/125000000000 : ℚ), 2⟩,
    ⟨(224436130887/500000000000 : ℚ), (982909163/5000000000 : ℚ), (-25449419913/250000000000 : ℚ), 2⟩,
    ⟨(454466990739/1000000000000 : ℚ), (15482781/100000000 : ℚ), (-41470229293/500000000000 : ℚ), 2⟩,
    ⟨(115003564841/250000000000 : ℚ), (1170037081/10000000000 : ℚ), (-16411820459/250000000000 : ℚ), 2⟩,
    ⟨(46550070379/100000000000 : ℚ), (413356829/5000000000 : ℚ), (-49761046079/1000000000000 : ℚ), 2⟩,
    ⟨(235456553347/500000000000 : ℚ), (51452863/1000000000 : ℚ), (-35145444783/1000000000000 : ℚ), 2⟩,
    ⟨(238119214561/500000000000 : ℚ), (46042473/2000000000 : ℚ), (-21681864439/1000000000000 : ℚ), 2⟩,
    ⟨(481463841907/1000000000000 : ℚ), (-29071923/10000000000 : ℚ), (-9266810947/1000000000000 : ℚ), 2⟩,
    ⟨(486576756571/1000000000000 : ℚ), (-53158377/2000000000 : ℚ), (2190236577/1000000000000 : ℚ), 2⟩,
    ⟨(98312971131/200000000000 : ℚ), (-30131197/625000000 : ℚ), (6384310931/500000000000 : ℚ), 2⟩,
    ⟨(496416122391/1000000000000 : ℚ), (-679873811/10000000000 : ℚ), (5634505683/250000000000 : ℚ), 2⟩,
    ⟨(250559434827/500000000000 : ℚ), (-430380889/5000000000 : ℚ), (31559726887/1000000000000 : ℚ), 2⟩,
    ⟨(31603860507/62500000000 : ℚ), (-1026206313/10000000000 : ℚ), (19943856531/500000000000 : ℚ), 2⟩,
    ⟨(255016936763/500000000000 : ℚ), (-117747469/1000000000 : ℚ), (47569571349/1000000000000 : ℚ), 2⟩,
    ⟨(51422465311/100000000000 : ℚ), (-328920207/2500000000 : ℚ), (10929457713/200000000000 : ℚ), 2⟩,
    ⟨(51822401091/100000000000 : ℚ), (-1441804547/10000000000 : ℚ), (61157920471/1000000000000 : ℚ), 2⟩,
    ⟨(261011156061/500000000000 : ℚ), (-389177/2500000 : ℚ), (16783542399/250000000000 : ℚ), 2⟩,
    ⟨(262805203153/500000000000 : ℚ), (-1661149711/10000000000 : ℚ), (9075610211/125000000000 : ℚ), 2⟩,
    ⟨(52897964943/100000000000 : ℚ), (-877898301/5000000000 : ℚ), (77595474621/1000000000000 : ℚ), 2⟩,
    ⟨(53212192469/100000000000 : ℚ), (-1841234303/10000000000 : ℚ), (41064154409/500000000000 : ℚ), 2⟩,
    ⟨(535029662071/1000000000000 : ℚ), (-479493997/2500000000 : ℚ), (43111503313/500000000000 : ℚ), 2⟩,
    ⟨(268847928289/500000000000 : ℚ), (-993234981/5000000000 : ℚ), (44948364699/500000000000 : ℚ), 2⟩,
    ⟨(540114085117/1000000000000 : ℚ), (-255888269/1250000000 : ℚ), (93164415851/1000000000000 : ℚ), 2⟩,
    ⟨(542278521961/1000000000000 : ℚ), (-105011083/500000000 : ℚ), (96038988099/1000000000000 : ℚ), 2⟩,
    ⟨(272091976397/500000000000 : ℚ), (-1073052743/5000000000 : ℚ), (49265764029/500000000000 : ℚ), 2⟩,
    ⟨(109165157453/200000000000 : ℚ), (-437000503/2000000000 : ℚ), (12581428387/125000000000 : ℚ), 2⟩,
    ⟨(136800017513/250000000000 : ℚ), (-34642451/156250000 : ℚ), (51203256599/500000000000 : ℚ), 2⟩,
    ⟨(274151745193/500000000000 : ℚ), (-1121307319/5000000000 : ℚ), (12975394501/125000000000 : ℚ), 2⟩,
    ⟨(34320836877/62500000000 : ℚ), (-2261626151/10000000000 : ℚ), (104846351779/1000000000000 : ℚ), 2⟩,
    ⟨(549687769689/1000000000000 : ℚ), (-454849533/2000000000 : ℚ), (26384947713/250000000000 : ℚ), 2⟩,
    ⟨(549965293807/1000000000000 : ℚ), (-35633479/156250000 : ℚ), (105885906123/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2281328793/10000000000 : ℚ), (1059291423/10000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (4864138493/20000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control158.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control158.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate158
