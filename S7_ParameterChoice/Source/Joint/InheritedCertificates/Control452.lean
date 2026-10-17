import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate452
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(268092266149/1000000000000 : ℚ), (13145246359989/10000000000 : ℚ), (-353109786465369/1000000000000 : ℚ), 12⟩,
    ⟨(53764660519/200000000000 : ℚ), (287118811967/2000000000 : ℚ), (-19512765436119/500000000000 : ℚ), 9⟩,
    ⟨(54055667041/200000000000 : ℚ), (502589537311/10000000000 : ℚ), (-13898645403381/1000000000000 : ℚ), 7⟩,
    ⟨(272443351221/1000000000000 : ℚ), (123623465757/5000000000 : ℚ), (-6975746845219/1000000000000 : ℚ), 6⟩,
    ⟨(137648750177/500000000000 : ℚ), (71562339793/5000000000 : ℚ), (-4126608391371/1000000000000 : ℚ), 6⟩,
    ⟨(69703323897/250000000000 : ℚ), (45508592393/5000000000 : ℚ), (-2684155124929/1000000000000 : ℚ), 5⟩,
    ⟨(141478438947/500000000000 : ℚ), (61448805377/10000000000 : ℚ), (-1854297709271/1000000000000 : ℚ), 5⟩,
    ⟨(71922085577/250000000000 : ℚ), (5397269899/1250000000 : ℚ), (-53336036573/40000000000 : ℚ), 4⟩,
    ⟨(146481061121/500000000000 : ℚ), (7792561319/2500000000 : ℚ), (-985039544927/1000000000000 : ℚ), 4⟩,
    ⟨(37340928539/125000000000 : ℚ), (2862505947/1250000000 : ℚ), (-370270865589/500000000000 : ℚ), 4⟩,
    ⟨(304928737469/1000000000000 : ℚ), (16990281147/10000000000 : ℚ), (-112457165319/200000000000 : ℚ), 3⟩,
    ⟨(62301265543/200000000000 : ℚ), (6319636057/5000000000 : ℚ), (-428262304623/1000000000000 : ℚ), 3⟩,
    ⟨(159198426631/500000000000 : ℚ), (1871128043/2000000000 : ℚ), (-324902330231/1000000000000 : ℚ), 3⟩,
    ⟨(16276697729/50000000000 : ℚ), (6825271489/10000000000 : ℚ), (-243475420993/1000000000000 : ℚ), 3⟩,
    ⟨(83212224371/250000000000 : ℚ), (4840269729/10000000000 : ℚ), (-178161575219/1000000000000 : ℚ), 3⟩,
    ⟨(170135617537/500000000000 : ℚ), (3258974741/10000000000 : ℚ), (-3124099309/25000000000 : ℚ), 3⟩,
    ⟨(347729486181/1000000000000 : ℚ), (1982452199/10000000000 : ℚ), (-81068040627/1000000000000 : ℚ), 3⟩,
    ⟨(355151823771/1000000000000 : ℚ), (3672427/39062500 : ℚ), (-8889819909/200000000000 : ℚ), 3⟩,
    ⟨(14498670667/40000000000 : ℚ), (80805409/10000000000 : ℚ), (-3406046251/250000000000 : ℚ), 3⟩,
    ⟨(184801933997/500000000000 : ℚ), (-126667307/2000000000 : ℚ), (12509486729/1000000000000 : ℚ), 3⟩,
    ⟨(18824719677/50000000000 : ℚ), (-153813813/1250000000 : ℚ), (34782359907/1000000000000 : ℚ), 2⟩,
    ⟨(383071983787/1000000000000 : ℚ), (-433009259/2500000000 : ℚ), (53826181891/1000000000000 : ℚ), 2⟩,
    ⟨(389273292943/1000000000000 : ℚ), (-538541503/2500000000 : ℚ), (70125327857/1000000000000 : ℚ), 2⟩,
    ⟨(395038599013/1000000000000 : ℚ), (-2509369073/10000000000 : ℚ), (42026619313/500000000000 : ℚ), 2⟩,
    ⟨(400312378947/1000000000000 : ℚ), (-2807263741/10000000000 : ℚ), (95898724103/1000000000000 : ℚ), 2⟩,
    ⟨(405043843361/1000000000000 : ℚ), (-3055282773/10000000000 : ℚ), (827228393/7812500000 : ℚ), 2⟩,
    ⟨(409187425667/1000000000000 : ℚ), (-407395507/1250000000 : ℚ), (14273144187/125000000000 : ℚ), 2⟩,
    ⟨(412703220901/1000000000000 : ℚ), (-13693247/40000000 : ℚ), (24186099817/200000000000 : ℚ), 2⟩,
    ⟨(83111474007/200000000000 : ℚ), (-3551063167/10000000000 : ℚ), (2524419187/20000000000 : ℚ), 2⟩,
    ⟨(8354447721/20000000000 : ℚ), (-1822442503/5000000000 : ℚ), (130129904679/1000000000000 : ℚ), 2⟩,
    ⟨(419177418661/1000000000000 : ℚ), (-1853257569/5000000000 : ℚ), (829430021/6250000000 : ℚ), 2⟩,
    ⟨(209954227553/500000000000 : ℚ), (-1868530433/5000000000 : ℚ), (6699516307/50000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3740866601/10000000000 : ℚ), (26830029919/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (339937549299/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control452.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control452.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate452
