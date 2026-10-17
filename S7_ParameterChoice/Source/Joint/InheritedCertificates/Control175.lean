import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control175.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control175.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate175
