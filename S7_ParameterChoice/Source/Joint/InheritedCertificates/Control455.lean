import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate455
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(77549430237/250000000000 : ℚ), (451928012549/312500000 : ℚ), (-44940760035937/100000000000 : ℚ), 12⟩,
    ⟨(155483374439/500000000000 : ℚ), (1580923938133/10000000000 : ℚ), (-24833334236289/500000000000 : ℚ), 9⟩,
    ⟨(156248699289/500000000000 : ℚ), (27711691091/500000000 : ℚ), (-17687285782001/1000000000000 : ℚ), 7⟩,
    ⟨(157387464527/500000000000 : ℚ), (68271227993/2500000000 : ℚ), (-8876501182423/1000000000000 : ℚ), 6⟩,
    ⟨(79444351611/250000000000 : ℚ), (79174156999/5000000000 : ℚ), (-5250507657143/1000000000000 : ℚ), 6⟩,
    ⟨(321475915249/1000000000000 : ℚ), (1576149983/156250000 : ℚ), (-682973644309/200000000000 : ℚ), 5⟩,
    ⟨(325834836807/1000000000000 : ℚ), (68224046943/10000000000 : ℚ), (-589732453527/250000000000 : ℚ), 5⟩,
    ⟨(1033788101/3125000000 : ℚ), (48025927151/10000000000 : ℚ), (-169624927757/100000000000 : ℚ), 4⟩,
    ⟨(67272009427/200000000000 : ℚ), (17367673847/5000000000 : ℚ), (-1253194449979/1000000000000 : ℚ), 4⟩,
    ⟨(342424972377/1000000000000 : ℚ), (25571021593/10000000000 : ℚ), (-471181836339/500000000000 : ℚ), 4⟩,
    ⟨(348948559499/1000000000000 : ℚ), (19015163471/10000000000 : ℚ), (-715873019679/1000000000000 : ℚ), 4⟩,
    ⟨(355867982793/1000000000000 : ℚ), (14183810079/10000000000 : ℚ), (-54570790863/100000000000 : ℚ), 3⟩,
    ⟨(90779151107/250000000000 : ℚ), (2633691653/2500000000 : ℚ), (-41459588433/100000000000 : ℚ), 3⟩,
    ⟨(370624616217/1000000000000 : ℚ), (3860575201/5000000000 : ℚ), (-6228437301/20000000000 : ℚ), 3⟩,
    ⟨(378319711901/1000000000000 : ℚ), (5513156211/10000000000 : ℚ), (-228774531111/1000000000000 : ℚ), 3⟩,
    ⟨(386127783503/1000000000000 : ℚ), (1877010923/5000000000 : ℚ), (-80781269019/500000000000 : ℚ), 3⟩,
    ⟨(24623352189/62500000000 : ℚ), (2334129173/10000000000 : ℚ), (-53099421401/500000000000 : ℚ), 3⟩,
    ⟨(3214253653/8000000000 : ℚ), (23503787/200000000 : ℚ), (-15025351609/250000000000 : ℚ), 3⟩,
    ⟨(40947680231/100000000000 : ℚ), (110134147/5000000000 : ℚ), (-21377410599/1000000000000 : ℚ), 3⟩,
    ⟨(208492407049/500000000000 : ℚ), (-572684043/10000000000 : ℚ), (5691125421/500000000000 : ℚ), 3⟩,
    ⟨(212116717867/500000000000 : ℚ), (-247027279/2000000000 : ℚ), (313921079/8000000000 : ℚ), 2⟩,
    ⟨(431152859027/1000000000000 : ℚ), (-89545019/500000000 : ℚ), (63005882997/1000000000000 : ℚ), 2⟩,
    ⟨(8753528923/20000000000 : ℚ), (-2258156651/10000000000 : ℚ), (83301449597/1000000000000 : ℚ), 2⟩,
    ⟨(443741371391/1000000000000 : ℚ), (-2650883103/10000000000 : ℚ), (10060738403/100000000000 : ℚ), 2⟩,
    ⟨(224644613103/500000000000 : ℚ), (-2979876969/10000000000 : ℚ), (57648110331/500000000000 : ℚ), 2⟩,
    ⟨(11356664543/25000000000 : ℚ), (-325349589/1000000000 : ℚ), (25531385157/200000000000 : ℚ), 2⟩,
    ⟨(458625503277/1000000000000 : ℚ), (-869550243/2500000000 : ℚ), (68956510691/500000000000 : ℚ), 2⟩,
    ⟨(231162006041/500000000000 : ℚ), (-731791539/2000000000 : ℚ), (146236144637/1000000000000 : ℚ), 2⟩,
    ⟨(3635363199/7812500000 : ℚ), (-1899766339/5000000000 : ℚ), (76378117113/500000000000 : ℚ), 2⟩,
    ⟨(467604019949/1000000000000 : ℚ), (-3902712281/10000000000 : ℚ), (78784574673/500000000000 : ℚ), 2⟩,
    ⟨(29320916853/62500000000 : ℚ), (-1985230413/5000000000 : ℚ), (160742267501/1000000000000 : ℚ), 2⟩,
    ⟨(234951848789/500000000000 : ℚ), (-4004030453/10000000000 : ℚ), (40579605977/250000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-4008212537/10000000000 : ℚ), (40628740421/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (60136331791/200000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control455.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control455.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate455
