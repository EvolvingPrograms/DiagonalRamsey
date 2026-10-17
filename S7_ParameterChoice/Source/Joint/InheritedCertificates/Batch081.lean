import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control713
namespace DiagonalRamsey.JointInheritedCertificate713
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(179770977809/1000000000000 : ℚ), (3284428775767/10000000000 : ℚ), (-741140846573/12500000000 : ℚ), 11⟩,
    ⟨(181117151997/1000000000000 : ℚ), (173612913823/5000000000 : ℚ), (-1604000236087/250000000000 : ℚ), 8⟩,
    ⟨(36751553531/200000000000 : ℚ), (11478051403/1000000000 : ℚ), (-546342976841/250000000000 : ℚ), 6⟩,
    ⟨(187591347403/1000000000000 : ℚ), (12955714557/2500000000 : ℚ), (-1019036332161/1000000000000 : ℚ), 5⟩,
    ⟨(192470568921/1000000000000 : ℚ), (13235032001/5000000000 : ℚ), (-8410181681/15625000000 : ℚ), 5⟩,
    ⟨(3096998851/15625000000 : ℚ), (13946679741/10000000000 : ℚ), (-294072990489/1000000000000 : ℚ), 4⟩,
    ⟨(204582936597/1000000000000 : ℚ), (6925111089/10000000000 : ℚ), (-30577594551/200000000000 : ℚ), 4⟩,
    ⟨(105675305629/500000000000 : ℚ), (2629694861/10000000000 : ℚ), (-15919220759/250000000000 : ℚ), 4⟩,
    ⟨(218250872503/1000000000000 : ℚ), (-85089671/5000000000 : ℚ), (-1799904243/500000000000 : ℚ), 4⟩,
    ⟨(225018547163/1000000000000 : ℚ), (-2082263307/10000000000 : ℚ), (38743816963/1000000000000 : ℚ), 3⟩,
    ⟨(231393557297/1000000000000 : ℚ), (-1715255513/5000000000 : ℚ), (6949330031/100000000000 : ℚ), 3⟩,
    ⟨(237130914839/1000000000000 : ℚ), (-1099274313/2500000000 : ℚ), (46063792449/500000000000 : ℚ), 3⟩,
    ⟨(242010136357/1000000000000 : ℚ), (-1272021321/2500000000 : ℚ), (108677439319/1000000000000 : ℚ), 3⟩,
    ⟨(49168743221/200000000000 : ℚ), (-222649247/400000000 : ℚ), (120339093043/1000000000000 : ℚ), 3⟩,
    ⟨(248484331763/1000000000000 : ℚ), (-1173672181/2000000000 : ℚ), (127806205267/1000000000000 : ℚ), 3⟩,
    ⟨(249830505951/1000000000000 : ℚ), (-375930217/625000000 : ℚ), (3286421747/25000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-6032996227/10000000000 : ℚ), (2061086487/15625000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (127531412243/250000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control713.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control713.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate713

-- Control714
namespace DiagonalRamsey.JointInheritedCertificate714
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43484575101/200000000000 : ℚ), (3378983986283/10000000000 : ℚ), (-73766057269969/1000000000000 : ℚ), 11⟩,
    ⟨(219005742389/1000000000000 : ℚ), (357534402253/10000000000 : ℚ), (-1996168128879/250000000000 : ℚ), 8⟩,
    ⟨(222110647471/1000000000000 : ℚ), (59178169737/5000000000 : ℚ), (-136077744423/50000000000 : ℚ), 6⟩,
    ⟨(226618270989/1000000000000 : ℚ), (53552214201/10000000000 : ℚ), (-1270760452073/1000000000000 : ℚ), 5⟩,
    ⟨(232355387501/1000000000000 : ℚ), (27448434327/10000000000 : ℚ), (-134583946751/200000000000 : ℚ), 5⟩,
    ⟨(119550761417/500000000000 : ℚ), (727677637/500000000 : ℚ), (-92374569799/250000000000 : ℚ), 4⟩,
    ⟨(246597426793/1000000000000 : ℚ), (7326344919/10000000000 : ℚ), (-97129958639/500000000000 : ℚ), 4⟩,
    ⟨(254555035991/1000000000000 : ℚ), (181817083/625000000 : ℚ), (-83718184227/1000000000000 : ℚ), 4⟩,
    ⟨(26266854397/100000000000 : ℚ), (33940157/10000000000 : ℚ), (-47209893/5000000000 : ℚ), 4⟩,
    ⟨(16914134573/62500000000 : ℚ), (-1925751393/10000000000 : ℚ), (42770474143/1000000000000 : ℚ), 3⟩,
    ⟨(278122057127/1000000000000 : ℚ), (-330447457/1000000000 : ℚ), (40288404847/500000000000 : ℚ), 3⟩,
    ⟨(14243409623/50000000000 : ℚ), (-4290616571/10000000000 : ℚ), (108325086977/1000000000000 : ℚ), 3⟩,
    ⟨(72651327243/250000000000 : ℚ), (-998811191/2000000000 : ℚ), (128560549147/1000000000000 : ℚ), 3⟩,
    ⟨(29511293249/100000000000 : ℚ), (-219197123/400000000 : ℚ), (142787801909/1000000000000 : ℚ), 3⟩,
    ⟨(74554459393/250000000000 : ℚ), (-5786521317/10000000000 : ℚ), (15188281909/100000000000 : ℚ), 3⟩,
    ⟨(37475088057/125000000000 : ℚ), (-5935084537/10000000000 : ℚ), (3126498637/20000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-595344377/1000000000 : ℚ), (78437762873/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (118519932437/250000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control714.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control714.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate714

-- Control715
namespace DiagonalRamsey.JointInheritedCertificate715
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10225285201/40000000000 : ℚ), (3505717883719/2500000000 : ℚ), (-358932945286459/1000000000000 : ℚ), 13⟩,
    ⟨(256086263271/1000000000000 : ℚ), (1536159547017/10000000000 : ℚ), (-39628085823843/1000000000000 : ℚ), 10⟩,
    ⟨(256990156211/1000000000000 : ℚ), (539842919049/10000000000 : ℚ), (-7041778422083/500000000000 : ℚ), 8⟩,
    ⟨(258335103863/1000000000000 : ℚ), (33317454559/1250000000 : ℚ), (-7045600559401/1000000000000 : ℚ), 7⟩,
    ⟨(65027038411/250000000000 : ℚ), (77369513539/5000000000 : ℚ), (-4149123528853/1000000000000 : ℚ), 7⟩,
    ⟨(262292230117/1000000000000 : ℚ), (19713430799/2000000000 : ℚ), (-2682721126191/1000000000000 : ℚ), 6⟩,
    ⟨(264866299431/1000000000000 : ℚ), (66543958999/10000000000 : ℚ), (-1839106394461/1000000000000 : ℚ), 6⟩,
    ⟨(267805571891/1000000000000 : ℚ), (23326269303/5000000000 : ℚ), (-654799182283/500000000000 : ℚ), 5⟩,
    ⟨(271081740697/1000000000000 : ℚ), (33504436781/10000000000 : ℚ), (-59719059041/62500000000 : ℚ), 5⟩,
    ⟨(274663254553/1000000000000 : ℚ), (4878733727/2000000000 : ℚ), (-707012936189/1000000000000 : ℚ), 5⟩,
    ⟨(139257810761/500000000000 : ℚ), (4460450743/2500000000 : ℚ), (-525874790689/1000000000000 : ℚ), 4⟩,
    ⟨(70650435301/250000000000 : ℚ), (3246651087/2500000000 : ℚ), (-389713887113/1000000000000 : ℚ), 4⟩,
    ⟨(286882262033/1000000000000 : ℚ), (2324589041/2500000000 : ℚ), (-142366977091/500000000000 : ℚ), 4⟩,
    ⟨(291315960253/1000000000000 : ℚ), (804692441/1250000000 : ℚ), (-25257120009/125000000000 : ℚ), 4⟩,
    ⟨(295860136927/1000000000000 : ℚ), (2089384913/5000000000 : ℚ), (-135763344597/1000000000000 : ℚ), 4⟩,
    ⟨(6009420583/20000000000 : ℚ), (236796147/1000000000 : ℚ), (-81786824073/1000000000000 : ℚ), 4⟩,
    ⟨(76276057877/250000000000 : ℚ), (897119153/10000000000 : ℚ), (-3726299703/100000000000 : ℚ), 4⟩,
    ⟨(309715123731/1000000000000 : ℚ), (-19441627/625000000 : ℚ), (-1633203/12500000000 : ℚ), 4⟩,
    ⟨(62851860081/200000000000 : ℚ), (-656470031/5000000000 : ℚ), (7780083329/250000000000 : ℚ), 3⟩,
    ⟨(159346499313/500000000000 : ℚ), (-430040093/2000000000 : ℚ), (57613103031/1000000000000 : ℚ), 3⟩,
    ⟨(64594703891/200000000000 : ℚ), (-2854100881/10000000000 : ℚ), (2506040521/31250000000 : ℚ), 3⟩,
    ⟨(327059639137/1000000000000 : ℚ), (-3448313717/10000000000 : ℚ), (99503862619/1000000000000 : ℚ), 3⟩,
    ⟨(165456003053/500000000000 : ℚ), (-987729593/2500000000 : ℚ), (11603720427/100000000000 : ℚ), 3⟩,
    ⟨(334493519961/1000000000000 : ℚ), (-875161419/2000000000 : ℚ), (16271530767/125000000000 : ℚ), 3⟩,
    ⟨(337769688767/1000000000000 : ℚ), (-946739017/2000000000 : ℚ), (28440249149/200000000000 : ℚ), 3⟩,
    ⟨(85177240307/250000000000 : ℚ), (-314553531/625000000 : ℚ), (38087375149/250000000000 : ℚ), 3⟩,
    ⟨(171641515271/500000000000 : ℚ), (-5279666969/10000000000 : ℚ), (160790032129/1000000000000 : ℚ), 3⟩,
    ⟨(69093421403/200000000000 : ℚ), (-2739503437/5000000000 : ℚ), (167654640737/1000000000000 : ℚ), 3⟩,
    ⟨(86810039199/250000000000 : ℚ), (-2817281001/5000000000 : ℚ), (173042269161/1000000000000 : ℚ), 3⟩,
    ⟨(348585104447/1000000000000 : ℚ), (-2874523373/5000000000 : ℚ), (88512652523/500000000000 : ℚ), 3⟩,
    ⟨(349488997387/1000000000000 : ℚ), (-2912183407/5000000000 : ℚ), (2245678061/12500000000 : ℚ), 3⟩,
    ⟨(349943130633/1000000000000 : ℚ), (-1465433231/2500000000 : ℚ), (36192199323/200000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2933195039/5000000000 : ℚ), (36224796747/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (437825649811/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control715.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control715.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate715

-- Control716
namespace DiagonalRamsey.JointInheritedCertificate716
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(186817649747/1000000000000 : ℚ), (3796269144007/10000000000 : ℚ), (-8897219814497/125000000000 : ℚ), 11⟩,
    ⟨(188028750891/1000000000000 : ℚ), (100506005467/2500000000 : ℚ), (-307659127523/40000000000 : ℚ), 8⟩,
    ⟨(190404411239/1000000000000 : ℚ), (133019351023/10000000000 : ℚ), (-2611912646907/1000000000000 : ℚ), 6⟩,
    ⟨(193853335499/1000000000000 : ℚ), (29996897781/5000000000 : ℚ), (-302904510517/250000000000 : ℚ), 6⟩,
    ⟨(49560745861/250000000000 : ℚ), (3812776779/1250000000 : ℚ), (-79310134101/125000000000 : ℚ), 5⟩,
    ⟨(101702331683/500000000000 : ℚ), (15887617167/10000000000 : ℚ), (-341457900701/1000000000000 : ℚ), 5⟩,
    ⟨(522850037/2500000000 : ℚ), (3833262277/5000000000 : ℚ), (-17211647709/100000000000 : ℚ), 4⟩,
    ⟨(107614315703/500000000000 : ℚ), (327667031/1250000000 : ℚ), (-13038155909/200000000000 : ℚ), 4⟩,
    ⟨(27679566383/125000000000 : ℚ), (-676838709/10000000000 : ℚ), (6751306991/1000000000000 : ℚ), 4⟩,
    ⟨(227525147671/1000000000000 : ℚ), (-1467525917/5000000000 : ℚ), (717589653/12500000000 : ℚ), 4⟩,
    ⟨(46652099821/200000000000 : ℚ), (-2265483741/5000000000 : ℚ), (94156546411/1000000000000 : ℚ), 3⟩,
    ⟨(119211089513/500000000000 : ℚ), (-2838680889/5000000000 : ℚ), (60591778349/500000000000 : ℚ), 3⟩,
    ⟨(242811826971/1000000000000 : ℚ), (-1624568083/2500000000 : ℚ), (1101028411/7812500000 : ℚ), 3⟩,
    ⟨(246260751231/1000000000000 : ℚ), (-7067113643/10000000000 : ℚ), (154840165737/1000000000000 : ℚ), 3⟩,
    ⟨(12431820579/50000000000 : ℚ), (-3713466433/5000000000 : ℚ), (81871683911/500000000000 : ℚ), 3⟩,
    ⟨(249847512723/1000000000000 : ℚ), (-7601549479/10000000000 : ℚ), (168095489629/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7623140711/10000000000 : ℚ), (84317552851/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (239887754717/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control716.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control716.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate716

-- Control717
namespace DiagonalRamsey.JointInheritedCertificate717
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(53076635279/200000000000 : ℚ), (503526035623/1250000000 : ℚ), (-107268768706989/1000000000000 : ℚ), 11⟩,
    ⟨(267005140937/1000000000000 : ℚ), (427342145301/10000000000 : ℚ), (-5800074309521/500000000000 : ℚ), 8⟩,
    ⟨(135093369417/500000000000 : ℚ), (141823401239/10000000000 : ℚ), (-1973039958387/500000000000 : ℚ), 6⟩,
    ⟨(274805703063/1000000000000 : ℚ), (64267077037/10000000000 : ℚ), (-114786933489/62500000000 : ℚ), 6⟩,
    ⟨(140342264709/500000000000 : ℚ), (16465526263/5000000000 : ℚ), (-967727761023/1000000000000 : ℚ), 5⟩,
    ⟨(2875972979/10000000000 : ℚ), (8701257003/5000000000 : ℚ), (-131792875389/250000000000 : ℚ), 4⟩,
    ⟨(295278354693/1000000000000 : ℚ), (8674228251/10000000000 : ℚ), (-1092535607/4000000000 : ℚ), 4⟩,
    ⟨(303432521091/1000000000000 : ℚ), (25995781/78125000 : ℚ), (-22650832507/200000000000 : ℚ), 4⟩,
    ⟨(311746437053/1000000000000 : ℚ), (-31553901/2000000000 : ℚ), (-6148968433/1000000000000 : ℚ), 4⟩,
    ⟨(79975150863/250000000000 : ℚ), (-253490161/1000000000 : ℚ), (17218511473/250000000000 : ℚ), 4⟩,
    ⟨(65516332049/200000000000 : ℚ), (-4207364993/10000000000 : ℚ), (30747718447/250000000000 : ℚ), 3⟩,
    ⟨(334494428727/1000000000000 : ℚ), (-1350792119/2500000000 : ℚ), (20320330493/125000000000 : ℚ), 3⟩,
    ⟨(170186627541/500000000000 : ℚ), (-390982753/625000000 : ℚ), (191324430649/1000000000000 : ℚ), 3⟩,
    ⟨(344992219311/1000000000000 : ℚ), (-6844309157/10000000000 : ℚ), (42298357881/200000000000 : ℚ), 3⟩,
    ⟨(348173817207/1000000000000 : ℚ), (-3607793073/5000000000 : ℚ), (44871788569/200000000000 : ℚ), 3⟩,
    ⟨(1399183127/4000000000 : ℚ), (-1848864207/2500000000 : ℚ), (230636074949/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-3708841713/5000000000 : ℚ), (9256551151/40000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (99796286609/250000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control717.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control717.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate717

-- Control718
namespace DiagonalRamsey.JointInheritedCertificate718
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9986836847/50000000000 : ℚ), (2451371285841/5000000000 : ℚ), (-4909466554373/50000000000 : ℚ), 11⟩,
    ⟨(25087525069/125000000000 : ℚ), (130082300621/2500000000 : ℚ), (-211571164439/20000000000 : ℚ), 8⟩,
    ⟨(202590102409/1000000000000 : ℚ), (86087608943/5000000000 : ℚ), (-892236259923/250000000000 : ℚ), 7⟩,
    ⟨(102666907321/500000000000 : ℚ), (38652984017/5000000000 : ℚ), (-818396606379/500000000000 : ℚ), 6⟩,
    ⟨(20882589793/100000000000 : ℚ), (19404370781/5000000000 : ℚ), (-840667669461/1000000000000 : ℚ), 5⟩,
    ⟨(21293215347/100000000000 : ℚ), (3925615773/2000000000 : ℚ), (-436677749897/1000000000000 : ℚ), 5⟩,
    ⟨(54373695041/250000000000 : ℚ), (2194451719/2500000000 : ℚ), (-12713239621/62500000000 : ℚ), 5⟩,
    ⟨(222338438827/1000000000000 : ℚ), (2082586099/10000000000 : ℚ), (-56303659429/1000000000000 : ℚ), 4⟩,
    ⟨(227276990373/1000000000000 : ℚ), (-231669591/1000000000 : ℚ), (8504901227/200000000000 : ℚ), 4⟩,
    ⟨(232120649037/1000000000000 : ℚ), (-534286969/1000000000 : ℚ), (111996778751/1000000000000 : ℚ), 4⟩,
    ⟨(236683275731/1000000000000 : ℚ), (-1872622229/2500000000 : ℚ), (40579243143/250000000000 : ℚ), 4⟩,
    ⟨(240789531271/1000000000000 : ℚ), (-9038984271/10000000000 : ℚ), (49818737567/250000000000 : ℚ), 4⟩,
    ⟨(122140807279/500000000000 : ℚ), (-1015151081/1000000000 : ℚ), (113126503173/500000000000 : ℚ), 4⟩,
    ⟨(30878165849/125000000000 : ℚ), (-10924592519/10000000000 : ℚ), (245242227633/1000000000000 : ℚ), 4⟩,
    ⟨(248915228649/1000000000000 : ℚ), (-11414668057/10000000000 : ℚ), (25739414521/100000000000 : ℚ), 4⟩,
    ⟨(12493934613/50000000000 : ℚ), (-2330565381/2000000000 : ℚ), (131666847267/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-11682290947/10000000000 : ℚ), (8252191149/31250000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (52688709291/125000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control718.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control718.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate718

-- Control719
namespace DiagonalRamsey.JointInheritedCertificate719
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(240940597649/1000000000000 : ℚ), (1006806126249/2000000000 : ℚ), (-121608947927679/1000000000000 : ℚ), 11⟩,
    ⟨(242072668701/1000000000000 : ℚ), (534675744851/10000000000 : ℚ), (-13107270851881/1000000000000 : ℚ), 8⟩,
    ⟨(244293305949/1000000000000 : ℚ), (17717486937/1000000000 : ℚ), (-1106604692621/250000000000 : ℚ), 7⟩,
    ⟨(247517171549/1000000000000 : ℚ), (79740771389/10000000000 : ℚ), (-1016932964821/500000000000 : ℚ), 6⟩,
    ⟨(50324074831/200000000000 : ℚ), (1607959613/400000000 : ℚ), (-262080827639/250000000000 : ℚ), 5⟩,
    ⟨(25644522999/100000000000 : ℚ), (1025019257/500000000 : ℚ), (-137126419451/250000000000 : ℚ), 5⟩,
    ⟨(261806322551/1000000000000 : ℚ), (1872481449/2000000000 : ℚ), (-260189677247/1000000000000 : ℚ), 4⟩,
    ⟨(133748814029/500000000000 : ℚ), (623979703/2500000000 : ℚ), (-7862475871/100000000000 : ℚ), 4⟩,
    ⟨(4270319263/15625000000 : ℚ), (-2009724413/10000000000 : ℚ), (43121505383/1000000000000 : ℚ), 4⟩,
    ⟨(278991738339/1000000000000 : ℚ), (-637950319/1250000000 : ℚ), (64255555291/500000000000 : ℚ), 4⟩,
    ⟨(2843528309/10000000000 : ℚ), (-7294856713/10000000000 : ℚ), (23775997609/125000000000 : ℚ), 4⟩,
    ⟨(57835537347/200000000000 : ℚ), (-4435775377/5000000000 : ℚ), (7356553277/31250000000 : ℚ), 4⟩,
    ⟨(293280889341/1000000000000 : ℚ), (-10002158851/10000000000 : ℚ), (13416533913/50000000000 : ℚ), 4⟩,
    ⟨(296504754941/1000000000000 : ℚ), (-215730697/200000000 : ℚ), (291459188571/1000000000000 : ℚ), 4⟩,
    ⟨(298725392189/1000000000000 : ℚ), (-35259911/31250000 : ℚ), (30623924117/100000000000 : ℚ), 4⟩,
    ⟨(299857463241/1000000000000 : ℚ), (-180067833/156250000 : ℚ), (313457173879/1000000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11554169577/10000000000 : ℚ), (19646988069/62500000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (372420403601/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control719.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control719.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate719

-- Control720
namespace DiagonalRamsey.JointInheritedCertificate720
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(207019963101/1000000000000 : ℚ), (5945158972961/10000000000 : ℚ), (-123349255082601/1000000000000 : ℚ), 12⟩,
    ⟨(103921909657/500000000000 : ℚ), (631285974519/10000000000 : ℚ), (-6630355798149/500000000000 : ℚ), 8⟩,
    ⟨(13091241963/62500000000 : ℚ), (208616297479/10000000000 : ℚ), (-2226387704417/500000000000 : ℚ), 7⟩,
    ⟨(13237875963/62500000000 : ℚ), (93218254423/10000000000 : ℚ), (-1012520423033/500000000000 : ℚ), 6⟩,
    ⟨(42958418063/200000000000 : ℚ), (46273686407/10000000000 : ℚ), (-12810437343/12500000000 : ℚ), 5⟩,
    ⟨(43660668589/200000000000 : ℚ), (22817345939/10000000000 : ℚ), (-517403725309/1000000000000 : ℚ), 5⟩,
    ⟨(222204837829/1000000000000 : ℚ), (148564067/156250000 : ℚ), (-44903889391/200000000000 : ℚ), 5⟩,
    ⟨(113173321353/500000000000 : ℚ), (254108161/2000000000 : ℚ), (-311779647/7812500000 : ℚ), 4⟩,
    ⟨(115284795169/500000000000 : ℚ), (-4158098977/10000000000 : ℚ), (84039417791/1000000000000 : ℚ), 4⟩,
    ⟨(46942279043/200000000000 : ℚ), (-3951354711/5000000000 : ℚ), (171113739549/1000000000000 : ℚ), 4⟩,
    ⟨(238612890099/1000000000000 : ℚ), (-2641766153/2500000000 : ℚ), (234147489689/1000000000000 : ℚ), 4⟩,
    ⟨(242124142729/1000000000000 : ℚ), (-12492728003/10000000000 : ℚ), (56084722009/200000000000 : ℚ), 4⟩,
    ⟨(61277554409/250000000000 : ℚ), (-277584317/200000000 : ℚ), (314195928709/1000000000000 : ℚ), 4⟩,
    ⟨(49491272327/200000000000 : ℚ), (-74222277/50000000 : ℚ), (337966276397/1000000000000 : ℚ), 4⟩,
    ⟨(24907241373/100000000000 : ℚ), (-15457229139/10000000000 : ℚ), (176589371167/500000000000 : ℚ), 4⟩,
    ⟨(249896269943/1000000000000 : ℚ), (-15755290503/10000000000 : ℚ), (72122968759/200000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-15792178701/10000000000 : ℚ), (72307371463/200000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (363427039907/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control720.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control720.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate720
