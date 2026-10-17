import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control150.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control150.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate150
