import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate366
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(59792699149/200000000000 : ℚ), (14598031433859/10000000000 : ℚ), (-218624770949949/500000000000 : ℚ), 12⟩,
    ⟨(11989538529/40000000000 : ℚ), (1595143082787/10000000000 : ℚ), (-24162598007717/500000000000 : ℚ), 9⟩,
    ⟨(37660116853/125000000000 : ℚ), (558891874221/10000000000 : ℚ), (-268923875167/15625000000 : ℚ), 7⟩,
    ⟨(303576055697/1000000000000 : ℚ), (137601169011/5000000000 : ℚ), (-8638730514457/1000000000000 : ℚ), 6⟩,
    ⟨(306601722577/1000000000000 : ℚ), (79735897101/5000000000 : ℚ), (-5110819922521/1000000000000 : ℚ), 5⟩,
    ⟨(77582199159/250000000000 : ℚ), (101525553193/10000000000 : ℚ), (-664961745999/200000000000 : ℚ), 5⟩,
    ⟨(62944276823/200000000000 : ℚ), (8578173029/1250000000 : ℚ), (-2297390538439/1000000000000 : ℚ), 5⟩,
    ⟨(159868590997/500000000000 : ℚ), (24141959653/5000000000 : ℚ), (-66103137769/40000000000 : ℚ), 4⟩,
    ⟨(162663942699/500000000000 : ℚ), (4363389927/1250000000 : ℚ), (-152679780871/125000000000 : ℚ), 4⟩,
    ⟨(331439652797/1000000000000 : ℚ), (6422253043/2500000000 : ℚ), (-918933160109/1000000000000 : ℚ), 4⟩,
    ⟨(33801362453/100000000000 : ℚ), (9549328369/5000000000 : ℚ), (-139695017239/200000000000 : ℚ), 3⟩,
    ⟨(43123311207/125000000000 : ℚ), (178058149/125000000 : ℚ), (-532807918339/1000000000000 : ℚ), 3⟩,
    ⟨(44036386959/125000000000 : ℚ), (10580406439/10000000000 : ℚ), (-405127304993/1000000000000 : ℚ), 3⟩,
    ⟨(89964273807/250000000000 : ℚ), (3878175621/5000000000 : ℚ), (-304619944117/1000000000000 : ℚ), 3⟩,
    ⟨(367611623613/1000000000000 : ℚ), (221639983/400000000 : ℚ), (-224076340027/1000000000000 : ℚ), 3⟩,
    ⟨(375480000479/1000000000000 : ℚ), (1888259623/5000000000 : ℚ), (-158544424511/1000000000000 : ℚ), 3⟩,
    ⟨(383386449057/1000000000000 : ℚ), (117630229/500000000 : ℚ), (-20907181981/200000000000 : ℚ), 3⟩,
    ⟨(391254825923/1000000000000 : ℚ), (1190523371/10000000000 : ℚ), (-372127827/6250000000 : ℚ), 3⟩,
    ⟨(99752338577/250000000000 : ℚ), (233056327/10000000000 : ℚ), (-21718361343/1000000000000 : ℚ), 2⟩,
    ⟨(50821919233/125000000000 : ℚ), (-140507129/2500000000 : ℚ), (2059879963/200000000000 : ℚ), 2⟩,
    ⟨(10346998997/25000000000 : ℚ), (-613157099/5000000000 : ℚ), (4693089493/125000000000 : ℚ), 2⟩,
    ⟨(210426412503/500000000000 : ℚ), (-1783682583/10000000000 : ℚ), (7600433181/125000000000 : ℚ), 2⟩,
    ⟨(427426796739/1000000000000 : ℚ), (-563089049/2500000000 : ℚ), (80679023287/1000000000000 : ℚ), 2⟩,
    ⟨(216769282069/500000000000 : ℚ), (-1323168459/5000000000 : ℚ), (48818661829/500000000000 : ℚ), 2⟩,
    ⟨(219564633771/500000000000 : ℚ), (-372054381/1250000000 : ℚ), (112039370483/1000000000000 : ℚ), 2⟩,
    ⟨(444145065421/1000000000000 : ℚ), (-101594217/312500000 : ℚ), (124165038849/1000000000000 : ℚ), 2⟩,
    ⟨(4485376529/10000000000 : ℚ), (-434567623/1250000000 : ℚ), (134230715413/1000000000000 : ℚ), 2⟩,
    ⟨(452264726959/1000000000000 : ℚ), (-1828990119/5000000000 : ℚ), (71201245501/500000000000 : ℚ), 2⟩,
    ⟨(455290393839/1000000000000 : ℚ), (-3799100203/10000000000 : ℚ), (29761212809/200000000000 : ℚ), 2⟩,
    ⟨(57198189339/125000000000 : ℚ), (-3902687871/10000000000 : ℚ), (15353414297/100000000000 : ℚ), 2⟩,
    ⟨(459127986311/1000000000000 : ℚ), (-39707081/100000000 : ℚ), (78325939953/500000000000 : ℚ), 2⟩,
    ⟨(459902953791/1000000000000 : ℚ), (-4004413451/10000000000 : ℚ), (79100345469/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-801722499/2000000000 : ℚ), (158393826571/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (288625974457/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control366.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control366.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate366
