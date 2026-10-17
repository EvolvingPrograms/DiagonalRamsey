import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate213
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(315639199479/1000000000000 : ℚ), (13417276905911/10000000000 : ℚ), (-424456765843459/1000000000000 : ℚ), 11⟩,
    ⟨(316622659567/1000000000000 : ℚ), (1463472654053/10000000000 : ℚ), (-46931518091491/1000000000000 : ℚ), 8⟩,
    ⟨(318580108483/1000000000000 : ℚ), (511564944253/10000000000 : ℚ), (-669178163949/40000000000 : ℚ), 7⟩,
    ⟨(12859707797/40000000000 : ℚ), (125650271921/5000000000 : ℚ), (-8408417133617/1000000000000 : ℚ), 6⟩,
    ⟨(162666184547/500000000000 : ℚ), (72656885841/5000000000 : ℚ), (-2492024332111/500000000000 : ℚ), 5⟩,
    ⟨(82515538207/250000000000 : ℚ), (23090940053/2500000000 : ℚ), (-325055338003/100000000000 : ℚ), 5⟩,
    ⟨(335636495723/1000000000000 : ℚ), (31189573577/5000000000 : ℚ), (-2253440476447/1000000000000 : ℚ), 4⟩,
    ⟨(85500428453/250000000000 : ℚ), (21947812969/5000000000 : ℚ), (-1627738565447/1000000000000 : ℚ), 4⟩,
    ⟨(87274126641/250000000000 : ℚ), (31780675523/10000000000 : ℚ), (-302365163029/250000000000 : ℚ), 4⟩,
    ⟨(178426273623/500000000000 : ℚ), (5865443749/2500000000 : ℚ), (-91605863087/100000000000 : ℚ), 3⟩,
    ⟨(365195140947/1000000000000 : ℚ), (438415879/250000000 : ℚ), (-175576688507/250000000000 : ℚ), 3⟩,
    ⟨(374043943929/1000000000000 : ℚ), (263792969/200000000 : ℚ), (-541745279063/1000000000000 : ℚ), 3⟩,
    ⟨(191656868691/500000000000 : ℚ), (9921334201/10000000000 : ℚ), (-209030241487/500000000000 : ℚ), 3⟩,
    ⟨(392915248127/1000000000000 : ℚ), (1482543901/2000000000 : ℚ), (-10023581827/31250000000 : ℚ), 3⟩,
    ⟨(25172250523/62500000000 : ℚ), (2726462977/5000000000 : ℚ), (-121414258309/500000000000 : ℚ), 2⟩,
    ⟨(103185311551/250000000000 : ℚ), (1949215997/5000000000 : ℚ), (-179474523903/1000000000000 : ℚ), 2⟩,
    ⟨(206433007/488281250 : ℚ), (2649126391/10000000000 : ℚ), (-127305961979/1000000000000 : ℚ), 2⟩,
    ⟨(432760036171/1000000000000 : ℚ), (1633695421/10000000000 : ℚ), (-83885383191/1000000000000 : ℚ), 2⟩,
    ⟨(110650199103/250000000000 : ℚ), (200103473/2500000000 : ℚ), (-23713077917/500000000000 : ℚ), 2⟩,
    ⟨(226101153579/500000000000 : ℚ), (55588557/5000000000 : ℚ), (-16598224043/1000000000000 : ℚ), 2⟩,
    ⟨(461472100611/1000000000000 : ℚ), (-231231249/5000000000 : ℚ), (9601551029/1000000000000 : ℚ), 2⟩,
    ⟨(470320903593/1000000000000 : ℚ), (-470992327/5000000000 : ℚ), (15968948331/500000000000 : ℚ), 2⟩,
    ⟨(239331748647/500000000000 : ℚ), (-67188039/500000000 : ℚ), (2549938247/50000000000 : ℚ), 2⟩,
    ⟨(60802442247/125000000000 : ℚ), (-26255649/156250000 : ℚ), (4202439443/62500000000 : ℚ), 2⟩,
    ⟨(61689291341/125000000000 : ℚ), (-61296553/312500000 : ℚ), (10126496907/125000000000 : ℚ), 2⟩,
    ⟨(31242471801/62500000000 : ℚ), (-2194654091/10000000000 : ℚ), (23148070641/250000000000 : ℚ), 2⟩,
    ⟨(3948858529/7812500000 : ℚ), (-2385661429/10000000000 : ℚ), (10219304441/100000000000 : ℚ), 2⟩,
    ⟨(255091837723/500000000000 : ℚ), (-2538977693/10000000000 : ℚ), (109978429981/1000000000000 : ℚ), 2⟩,
    ⟨(257011674807/500000000000 : ℚ), (-2657994339/10000000000 : ℚ), (116073163871/1000000000000 : ℚ), 2⟩,
    ⟨(516935936057/1000000000000 : ℚ), (-343152927/1250000000 : ℚ), (120569583211/1000000000000 : ℚ), 2⟩,
    ⟨(518893384973/1000000000000 : ℚ), (-1401219059/5000000000 : ℚ), (123532798391/1000000000000 : ℚ), 2⟩,
    ⟨(25993842253/50000000000 : ℚ), (-2830769971/10000000000 : ℚ), (125004310431/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2834298681/10000000000 : ℚ), (25037556327/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (64026319397/250000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control213.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control213.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate213
