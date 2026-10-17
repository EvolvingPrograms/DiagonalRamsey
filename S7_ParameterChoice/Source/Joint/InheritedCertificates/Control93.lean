import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control93.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control93.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate93
