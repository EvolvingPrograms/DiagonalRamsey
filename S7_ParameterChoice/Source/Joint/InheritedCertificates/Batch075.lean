import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control647
namespace DiagonalRamsey.JointInheritedCertificate647
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21678876107/500000000000 : ℚ), (571988932953/2500000000 : ℚ), (-9965488536863/1000000000000 : ℚ), 10⟩,
    ⟨(43858458513/1000000000000 : ℚ), (209544857069/10000000000 : ℚ), (-186917113559/200000000000 : ℚ), 7⟩,
    ⟨(8956728623/200000000000 : ℚ), (45611574069/10000000000 : ℚ), (-210406519059/1000000000000 : ℚ), 5⟩,
    ⟨(45992455051/1000000000000 : ℚ), (1130103539/10000000000 : ℚ), (-1129989863/125000000000 : ℚ), 5⟩,
    ⟨(47300863663/1000000000000 : ℚ), (-16966634377/10000000000 : ℚ), (75224836697/1000000000000 : ℚ), 4⟩,
    ⟨(48509675599/1000000000000 : ℚ), (-25940553971/10000000000 : ℚ), (118171447027/1000000000000 : ℚ), 4⟩,
    ⟨(49434860201/1000000000000 : ℚ), (-6134298047/2000000000 : ℚ), (28266010699/200000000000 : ℚ), 4⟩,
    ⟨(99871133/2000000000 : ℚ), (-32782833893/10000000000 : ℚ), (30363851869/200000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-6607445707/2000000000 : ℚ), (76545205527/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (260136494231/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control647.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control647.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate647

-- Control648
namespace DiagonalRamsey.JointInheritedCertificate648
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17370386059/200000000000 : ℚ), (36184422947/156250000 : ℚ), (-10101941454711/500000000000 : ℚ), 10⟩,
    ⟨(8784305883/100000000000 : ℚ), (212416818379/10000000000 : ℚ), (-948371280471/500000000000 : ℚ), 7⟩,
    ⟨(22418606391/250000000000 : ℚ), (46519372351/10000000000 : ℚ), (-26815428973/62500000000 : ℚ), 5⟩,
    ⟨(46033610757/500000000000 : ℚ), (38317979/250000000 : ℚ), (-21303622361/1000000000000 : ℚ), 5⟩,
    ⟨(94657165187/1000000000000 : ℚ), (-1046345369/625000000 : ℚ), (149007184163/1000000000000 : ℚ), 4⟩,
    ⟨(48524980569/500000000000 : ℚ), (-5156734817/2000000000 : ℚ), (235592841577/1000000000000 : ℚ), 4⟩,
    ⟨(386255187/3906250000 : ℚ), (-30540627369/10000000000 : ℚ), (70543721217/250000000000 : ℚ), 4⟩,
    ⟨(49936228203/500000000000 : ℚ), (-16330343599/5000000000 : ℚ), (4738144961/15625000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-32916002511/10000000000 : ℚ), (305792798587/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (411187810847/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control648.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control648.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate648

-- Control649
namespace DiagonalRamsey.JointInheritedCertificate649
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(130369342867/1000000000000 : ℚ), (298921481343/312500000 : ℚ), (-124902773714921/1000000000000 : ℚ), 12⟩,
    ⟨(130745630093/1000000000000 : ℚ), (1013627412917/10000000000 : ℚ), (-13353355126151/1000000000000 : ℚ), 9⟩,
    ⟨(65741872019/500000000000 : ℚ), (66458893433/2000000000 : ℚ), (-553534597063/125000000000 : ℚ), 7⟩,
    ⟨(33138829849/250000000000 : ℚ), (145768817259/10000000000 : ℚ), (-122995667467/62500000000 : ℚ), 6⟩,
    ⟨(2092487127/15625000000 : ℚ), (69602738487/10000000000 : ℚ), (-953939219607/1000000000000 : ℚ), 6⟩,
    ⟨(27104580397/200000000000 : ℚ), (15681973999/5000000000 : ℚ), (-27447481303/62500000000 : ℚ), 5⟩,
    ⟨(3432621667/25000000000 : ℚ), (9543589221/10000000000 : ℚ), (-141690435273/1000000000000 : ℚ), 5⟩,
    ⟨(139196590311/1000000000000 : ℚ), (-4049422049/10000000000 : ℚ), (2306613/50000000 : ℚ), 5⟩,
    ⟨(141125374999/1000000000000 : ℚ), (-653550781/500000000 : ℚ), (86262164831/500000000000 : ℚ), 4⟩,
    ⟨(143017098629/1000000000000 : ℚ), (-9670264347/5000000000 : ℚ), (130782931163/500000000000 : ℚ), 4⟩,
    ⟨(5791962533/40000000000 : ℚ), (-23835011553/10000000000 : ℚ), (163114534367/500000000000 : ℚ), 4⟩,
    ⟨(146402789181/1000000000000 : ℚ), (-2710690961/1000000000 : ℚ), (9346503897/25000000000 : ℚ), 4⟩,
    ⟨(147766645913/1000000000000 : ℚ), (-14739079503/5000000000 : ℚ), (408733941013/1000000000000 : ℚ), 4⟩,
    ⟨(18604777659/125000000000 : ℚ), (-31138103877/10000000000 : ℚ), (108337478949/250000000000 : ℚ), 4⟩,
    ⟨(9348520951/62500000000 : ℚ), (-6439265353/2000000000 : ℚ), (449138980671/1000000000000 : ℚ), 4⟩,
    ⟨(74976311221/500000000000 : ℚ), (-32712407829/10000000000 : ℚ), (456867994971/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16388171077/5000000000 : ℚ), (228913429151/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (64077520851/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control649.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control649.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate649

-- Control650
namespace DiagonalRamsey.JointInheritedCertificate650
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(63550395629/125000000000 : ℚ), (961624831623/625000000 : ℚ), (-195820025654041/250000000000 : ℚ), 12⟩,
    ⟨(20373008007/40000000000 : ℚ), (168704383289/1000000000 : ℚ), (-86588473045899/1000000000000 : ℚ), 9⟩,
    ⟨(12779009769/25000000000 : ℚ), (118814911189/2000000000 : ℚ), (-30853467044357/1000000000000 : ℚ), 8⟩,
    ⟨(513891062897/1000000000000 : ℚ), (3678762843/125000000 : ℚ), (-484322451203/31250000000 : ℚ), 7⟩,
    ⟨(517490918721/1000000000000 : ℚ), (171704978307/10000000000 : ℚ), (-9179795505123/1000000000000 : ℚ), 6⟩,
    ⟨(521925289653/1000000000000 : ℚ), (110137330203/10000000000 : ℚ), (-5981874315363/1000000000000 : ℚ), 6⟩,
    ⟨(527151470277/1000000000000 : ℚ), (37531826879/5000000000 : ℚ), (-16184093929/3906250000 : ℚ), 5⟩,
    ⟨(106623825923/200000000000 : ℚ), (10660272813/2000000000 : ℚ), (-93438681357/31250000000 : ℚ), 5⟩,
    ⟨(539770795847/1000000000000 : ℚ), (1557574133/400000000 : ℚ), (-554995497237/250000000000 : ℚ), 4⟩,
    ⟨(547042409791/1000000000000 : ℚ), (29009112671/10000000000 : ℚ), (-1680623919673/1000000000000 : ℚ), 4⟩,
    ⟨(554863941829/1000000000000 : ℚ), (21888665601/10000000000 : ℚ), (-644248831099/500000000000 : ℚ), 4⟩,
    ⟨(563160066331/1000000000000 : ℚ), (8315956737/5000000000 : ℚ), (-497381669737/500000000000 : ℚ), 4⟩,
    ⟨(114370177417/200000000000 : ℚ), (12657451823/10000000000 : ℚ), (-769299451029/1000000000000 : ℚ), 4⟩,
    ⟨(116170541347/200000000000 : ℚ), (9592453287/10000000000 : ℚ), (-592712165719/1000000000000 : ℚ), 3⟩,
    ⟨(147519708209/250000000000 : ℚ), (5751387/8000000 : ℚ), (-452058996781/1000000000000 : ℚ), 3⟩,
    ⟨(37465025797/62500000000 : ℚ), (5278268657/10000000000 : ℚ), (-84609284103/250000000000 : ℚ), 3⟩,
    ⟨(12176945787/20000000000 : ℚ), (3740545119/10000000000 : ℚ), (-245562037443/1000000000000 : ℚ), 3⟩,
    ⟨(309104434633/500000000000 : ℚ), (486459/1953125 : ℚ), (-10556094091/62500000000 : ℚ), 3⟩,
    ⟨(78429374421/125000000000 : ℚ), (1466210513/10000000000 : ℚ), (-105105741061/1000000000000 : ℚ), 3⟩,
    ⟨(636436815017/1000000000000 : ℚ), (155193571/2500000000 : ℚ), (-25844845173/500000000000 : ℚ), 3⟩,
    ⟨(645127635771/1000000000000 : ℚ), (-40296611/5000000000 : ℚ), (-6754619281/1000000000000 : ℚ), 3⟩,
    ⟨(326711880137/500000000000 : ℚ), (-166134789/2500000000 : ℚ), (31154345317/1000000000000 : ℚ), 3⟩,
    ⟨(661245292311/1000000000000 : ℚ), (-287893241/2500000000 : ℚ), (7895636121/125000000000 : ℚ), 3⟩,
    ⟨(133703381251/200000000000 : ℚ), (-1557596501/10000000000 : ℚ), (22539576971/250000000000 : ℚ), 3⟩,
    ⟨(675168572487/1000000000000 : ℚ), (-18949997/100000000 : ℚ), (22564964103/200000000000 : ℚ), 3⟩,
    ⟨(340568115913/500000000000 : ℚ), (-1086727877/5000000000 : ℚ), (65853656793/500000000000 : ℚ), 3⟩,
    ⟨(686362412449/1000000000000 : ℚ), (-240050483/1000000000 : ℚ), (1177849051/8000000000 : ℚ), 3⟩,
    ⟨(690796783381/1000000000000 : ℚ), (-2581986211/10000000000 : ℚ), (159727207231/1000000000000 : ℚ), 3⟩,
    ⟨(138879327841/200000000000 : ℚ), (-272235953/1000000000 : ℚ), (84724618523/500000000000 : ℚ), 3⟩,
    ⟨(348563655671/500000000000 : ℚ), (-706235689/2500000000 : ℚ), (17658651359/100000000000 : ℚ), 3⟩,
    ⟨(698962501927/1000000000000 : ℚ), (-723021397/2500000000 : ℚ), (290037381/1600000000 : ℚ), 3⟩,
    ⟨(699884537071/1000000000000 : ℚ), (-731322673/2500000000 : ℚ), (183595803493/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-146471217/500000000 : ℚ), (183885135007/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (123684096249/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control650.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control650.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate650

-- Control651
namespace DiagonalRamsey.JointInheritedCertificate651
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(516197941199/1000000000000 : ℚ), (16285825614233/10000000000 : ℚ), (-841739327575837/1000000000000 : ℚ), 12⟩,
    ⟨(64635308123/125000000000 : ℚ), (893175807289/5000000000 : ℚ), (-18608676987317/200000000000 : ℚ), 9⟩,
    ⟨(518842994107/1000000000000 : ℚ), (629342015699/10000000000 : ℚ), (-33148072742737/1000000000000 : ℚ), 8⟩,
    ⟨(521462573709/1000000000000 : ℚ), (62385276297/2000000000 : ℚ), (-16646766440807/1000000000000 : ℚ), 7⟩,
    ⟨(524915975807/1000000000000 : ℚ), (18207204203/1000000000 : ℚ), (-1971325783153/200000000000 : ℚ), 6⟩,
    ⟨(529169942251/1000000000000 : ℚ), (58416092749/5000000000 : ℚ), (-1284007263673/200000000000 : ℚ), 6⟩,
    ⟨(534183505019/1000000000000 : ℚ), (7964840741/1000000000 : ℚ), (-4444080341533/1000000000000 : ℚ), 5⟩,
    ⟨(539908380761/1000000000000 : ℚ), (5656418333/1000000000 : ℚ), (-3204967032541/1000000000000 : ℚ), 5⟩,
    ⟨(546289435793/1000000000000 : ℚ), (41320634573/10000000000 : ℚ), (-1188742563233/500000000000 : ℚ), 4⟩,
    ⟨(553265217067/1000000000000 : ℚ), (6154832119/2000000000 : ℚ), (-359585225201/200000000000 : ℚ), 4⟩,
    ⟨(560768543997/1000000000000 : ℚ), (4641365253/2000000000 : ℚ), (-1376593005053/1000000000000 : ℚ), 4⟩,
    ⟨(568727155443/1000000000000 : ℚ), (4404090099/2500000000 : ℚ), (-265249835581/250000000000 : ℚ), 4⟩,
    ⟨(72133050703/125000000000 : ℚ), (3346673711/2500000000 : ℚ), (-409387117787/500000000000 : ℚ), 4⟩,
    ⟨(292850001133/500000000000 : ℚ), (5061333487/5000000000 : ℚ), (-157268788623/250000000000 : ℚ), 3⟩,
    ⟨(594550779851/1000000000000 : ℚ), (3780836581/5000000000 : ℚ), (-238996220537/500000000000 : ℚ), 3⟩,
    ⟨(75441437569/125000000000 : ℚ), (1104782973/2000000000 : ℚ), (-355957660067/1000000000000 : ℚ), 3⟩,
    ⟨(612555675121/1000000000000 : ℚ), (77662363/200000000 : ℚ), (-256216116747/1000000000000 : ℚ), 3⟩,
    ⟨(621536395823/1000000000000 : ℚ), (509728561/2000000000 : ℚ), (-21736506467/125000000000 : ℚ), 3⟩,
    ⟨(630387173407/1000000000000 : ℚ), (1454190949/10000000000 : ℚ), (-105397669093/1000000000000 : ℚ), 3⟩,
    ⟨(639022770049/1000000000000 : ℚ), (550477081/10000000000 : ℚ), (-48048821361/1000000000000 : ℚ), 3⟩,
    ⟨(647360020231/1000000000000 : ℚ), (-199649283/10000000000 : ℚ), (191186687/1000000000000 : ℚ), 3⟩,
    ⟨(163829657919/250000000000 : ℚ), (-16490411/200000000 : ℚ), (40886166531/1000000000000 : ℚ), 3⟩,
    ⟨(331410979303/500000000000 : ℚ), (-1345950881/10000000000 : ℚ), (75248337297/1000000000000 : ℚ), 3⟩,
    ⟨(669797739881/1000000000000 : ℚ), (-1780858533/10000000000 : ℚ), (26056021561/250000000000 : ℚ), 3⟩,
    ⟨(676178794913/1000000000000 : ℚ), (-2142428033/10000000000 : ℚ), (64277787239/500000000000 : ℚ), 3⟩,
    ⟨(340951835327/500000000000 : ℚ), (-2440954089/10000000000 : ℚ), (14882562879/100000000000 : ℚ), 3⟩,
    ⟨(343458616711/500000000000 : ℚ), (-1342230743/5000000000 : ℚ), (165490867177/1000000000000 : ℚ), 3⟩,
    ⟨(345585599933/500000000000 : ℚ), (-2879164403/10000000000 : ℚ), (22363298607/125000000000 : ℚ), 3⟩,
    ⟨(138924920393/200000000000 : ℚ), (-605961633/2000000000 : ℚ), (189344279277/1000000000000 : ℚ), 3⟩,
    ⟨(697244181567/1000000000000 : ℚ), (-3139922677/10000000000 : ℚ), (197007450897/1000000000000 : ℚ), 3⟩,
    ⟨(699004710689/1000000000000 : ℚ), (-1606003633/5000000000 : ℚ), (202039830099/1000000000000 : ℚ), 3⟩,
    ⟨(349944617237/500000000000 : ℚ), (-3247660029/10000000000 : ℚ), (20453354909/100000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-1626049279/5000000000 : ℚ), (102422110771/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (115114906339/500000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control651.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control651.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate651

-- Control652
namespace DiagonalRamsey.JointInheritedCertificate652
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(523131241491/1000000000000 : ℚ), (17152843110273/10000000000 : ℚ), (-449201194279687/500000000000 : ℚ), 12⟩,
    ⟨(26199119983/50000000000 : ℚ), (376405749951/2000000000 : ℚ), (-9929911617129/100000000000 : ℚ), 9⟩,
    ⟨(262838259439/500000000000 : ℚ), (663313132953/10000000000 : ℚ), (-17685627896633/500000000000 : ℚ), 8⟩,
    ⟨(528197283853/1000000000000 : ℚ), (65779675957/2000000000 : ℚ), (-2219873688307/125000000000 : ℚ), 7⟩,
    ⟨(265760209119/500000000000 : ℚ), (192050202679/10000000000 : ℚ), (-2627930248099/250000000000 : ℚ), 6⟩,
    ⟨(267806959217/500000000000 : ℚ), (123271846441/10000000000 : ℚ), (-10693417771/1562500000 : ℚ), 6⟩,
    ⟨(135109590449/250000000000 : ℚ), (84054711493/10000000000 : ℚ), (-1183709108711/250000000000 : ℚ), 5⟩,
    ⟨(545947286297/1000000000000 : ℚ), (14924137101/2500000000 : ℚ), (-682468598383/200000000000 : ℚ), 5⟩,
    ⟨(276043818991/500000000000 : ℚ), (21801693873/5000000000 : ℚ), (-2529199754859/1000000000000 : ℚ), 4⟩,
    ⟨(558800281909/1000000000000 : ℚ), (32462923039/10000000000 : ℚ), (-477668891681/250000000000 : ℚ), 4⟩,
    ⟨(283010285823/500000000000 : ℚ), (24464761627/10000000000 : ℚ), (-1461033598249/1000000000000 : ℚ), 4⟩,
    ⟨(35854935741/62500000000 : ℚ), (9276255201/5000000000 : ℚ), (-1124252806191/1000000000000 : ℚ), 4⟩,
    ⟨(581701727959/1000000000000 : ℚ), (1407670387/1000000000 : ℚ), (-865781908071/1000000000000 : ℚ), 4⟩,
    ⟨(147502894107/250000000000 : ℚ), (10620660763/10000000000 : ℚ), (-165843528213/250000000000 : ℚ), 3⟩,
    ⟨(7481606111/12500000000 : ℚ), (7907403959/10000000000 : ℚ), (-502182249551/1000000000000 : ℚ), 3⟩,
    ⟨(75896305349/125000000000 : ℚ), (89800583/156250000 : ℚ), (-371992663337/1000000000000 : ℚ), 3⟩,
    ⟨(615854211423/1000000000000 : ℚ), (4006892149/10000000000 : ℚ), (-132797464069/500000000000 : ℚ), 3⟩,
    ⟨(312248082667/500000000000 : ℚ), (2590673791/10000000000 : ℚ), (-35556827801/200000000000 : ℚ), 3⟩,
    ⟨(316506538893/500000000000 : ℚ), (357140413/2500000000 : ℚ), (-1636409163/15625000000 : ℚ), 3⟩,
    ⟨(128264585251/200000000000 : ℚ), (468483509/10000000000 : ℚ), (-348540771/8000000000 : ℚ), 3⟩,
    ⟨(324672841179/500000000000 : ℚ), (-65765163/2000000000 : ℚ), (1969472713/250000000000 : ℚ), 3⟩,
    ⟨(657004082569/1000000000000 : ℚ), (-993321423/10000000000 : ℚ), (12818906817/250000000000 : ℚ), 3⟩,
    ⟨(332112186153/500000000000 : ℚ), (-38701837/250000000 : ℚ), (87919509867/1000000000000 : ℚ), 3⟩,
    ⟨(83867127029/125000000000 : ℚ), (-1005489201/5000000000 : ℚ), (118819521307/1000000000000 : ℚ), 3⟩,
    ⟨(677077367917/1000000000000 : ℚ), (-2395985121/10000000000 : ℚ), (144767501867/1000000000000 : ℚ), 3⟩,
    ⟨(341293146209/500000000000 : ℚ), (-1356992981/5000000000 : ℚ), (41596273349/250000000000 : ℚ), 3⟩,
    ⟨(34370536789/50000000000 : ℚ), (-2973471439/10000000000 : ℚ), (184159134291/1000000000000 : ℚ), 3⟩,
    ⟨(86438029497/125000000000 : ℚ), (-3181015789/10000000000 : ℚ), (4961701431/25000000000 : ℚ), 3⟩,
    ⟨(694827370361/1000000000000 : ℚ), (-1670819269/5000000000 : ℚ), (104800844491/500000000000 : ℚ), 3⟩,
    ⟨(87168516917/125000000000 : ℚ), (-864768219/2500000000 : ℚ), (108888035959/500000000000 : ℚ), 3⟩,
    ⟨(349521127277/500000000000 : ℚ), (-883990391/2500000000 : ℚ), (44628876113/200000000000 : ℚ), 3⟩,
    ⟨(699893412723/1000000000000 : ℚ), (-714798827/2000000000 : ℚ), (225804633809/1000000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-3578729109/10000000000 : ℚ), (7066751773/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (53618876433/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control652.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control652.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate652

-- Control653
namespace DiagonalRamsey.JointInheritedCertificate653
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51849015591/250000000000 : ℚ), (3216327950059/10000000000 : ℚ), (-67024193014449/1000000000000 : ℚ), 11⟩,
    ⟨(209171126671/1000000000000 : ℚ), (169739119307/5000000000 : ℚ), (-7265359717807/1000000000000 : ℚ), 7⟩,
    ⟨(212653040559/1000000000000 : ℚ), (1121647661/100000000 : ℚ), (-2484007644531/1000000000000 : ℚ), 6⟩,
    ⟨(217707996029/1000000000000 : ℚ), (50751204967/10000000000 : ℚ), (-29147368479/25000000000 : ℚ), 5⟩,
    ⟨(112070866989/500000000000 : ℚ), (203916223/78125000 : ℚ), (-622599166867/1000000000000 : ℚ), 5⟩,
    ⟨(46341401893/200000000000 : ℚ), (3493053631/2500000000 : ℚ), (-69345772697/200000000000 : ℚ), 4⟩,
    ⟨(48022618639/200000000000 : ℚ), (3600446883/5000000000 : ℚ), (-2926191771/15625000000 : ℚ), 4⟩,
    ⟨(49807388817/200000000000 : ℚ), (38467837/125000000 : ℚ), (-86578992043/1000000000000 : ℚ), 4⟩,
    ⟨(5162712471/20000000000 : ℚ), (402246981/10000000000 : ℚ), (-18822223861/1000000000000 : ℚ), 3⟩,
    ⟨(6676486861/25000000000 : ℚ), (-283212389/2000000000 : ℚ), (28881864687/1000000000000 : ℚ), 3⟩,
    ⟨(27546555817/100000000000 : ℚ), (-2692264709/10000000000 : ℚ), (6347716107/100000000000 : ℚ), 3⟩,
    ⟨(283030833657/1000000000000 : ℚ), (-3603201943/10000000000 : ℚ), (8890327049/100000000000 : ℚ), 3⟩,
    ⟨(144732285803/500000000000 : ℚ), (-2125920001/5000000000 : ℚ), (107465081931/1000000000000 : ℚ), 3⟩,
    ⟨(73629881769/250000000000 : ℚ), (-4699188347/10000000000 : ℚ), (60262626809/500000000000 : ℚ), 3⟩,
    ⟨(74500360241/250000000000 : ℚ), (-4981143783/10000000000 : ℚ), (128877911069/1000000000000 : ℚ), 3⟩,
    ⟨(29977650527/100000000000 : ℚ), (-1023533303/2000000000 : ℚ), (16619794589/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5134532901/10000000000 : ℚ), (66732079831/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (461307413219/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control653.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control653.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate653

-- Control654
namespace DiagonalRamsey.JointInheritedCertificate654
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(175766997143/1000000000000 : ℚ), (13286181571/39062500 : ℚ), (-7506601466757/125000000000 : ℚ), 11⟩,
    ⟨(88594960509/500000000000 : ℚ), (35915549329/1000000000 : ℚ), (-6502833561701/1000000000000 : ℚ), 8⟩,
    ⟨(179981086601/1000000000000 : ℚ), (118617502763/10000000000 : ℚ), (-2218165744863/1000000000000 : ℚ), 6⟩,
    ⟨(184033230963/1000000000000 : ℚ), (26777737411/5000000000 : ℚ), (-1036863995819/1000000000000 : ℚ), 5⟩,
    ⟨(189190632471/1000000000000 : ℚ), (27398621913/10000000000 : ℚ), (-549834931591/1000000000000 : ℚ), 5⟩,
    ⟨(48813773769/250000000000 : ℚ), (3625276043/2500000000 : ℚ), (-18900534833/62500000000 : ℚ), 4⟩,
    ⟨(2524919561/12500000000 : ℚ), (1820583113/2500000000 : ℚ), (-7963631269/50000000000 : ℚ), 4⟩,
    ⟨(20914708627/100000000000 : ℚ), (359146141/1250000000 : ℚ), (-68763121317/1000000000000 : ℚ), 4⟩,
    ⟨(54110188357/250000000000 : ℚ), (1470529/5000000000 : ℚ), (-775643439/100000000000 : ℚ), 3⟩,
    ⟨(223594274817/1000000000000 : ℚ), (-1955070189/10000000000 : ℚ), (275667739/7812500000 : ℚ), 3⟩,
    ⟨(115166372311/500000000000 : ℚ), (-1667233263/5000000000 : ℚ), (13314566223/200000000000 : ℚ), 3⟩,
    ⟨(236397207227/1000000000000 : ℚ), (-4322619651/10000000000 : ℚ), (44811453763/500000000000 : ℚ), 3⟩,
    ⟨(120777304367/500000000000 : ℚ), (-314283539/625000000 : ℚ), (13311010813/125000000000 : ℚ), 3⟩,
    ⟨(245606753097/1000000000000 : ℚ), (-2758357049/5000000000 : ℚ), (2959434943/25000000000 : ℚ), 3⟩,
    ⟨(6209947967/25000000000 : ℚ), (-45508043/78125000 : ℚ), (31498093571/250000000000 : ℚ), 3⟩,
    ⟨(49964168511/200000000000 : ℚ), (-746812859/1250000000 : ℚ), (129715837643/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2996489/5000000 : ℚ), (26035510047/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (29900338073/62500000000 : ℚ)
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
theorem certOK : JointInheritedControls.control654.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control654.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate654
