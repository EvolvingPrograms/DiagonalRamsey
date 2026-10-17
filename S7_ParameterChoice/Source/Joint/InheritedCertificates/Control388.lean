import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate388
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236904201993/500000000000 : ℚ), (320861967093/200000000 : ℚ), (-380711363499489/500000000000 : ℚ), 12⟩,
    ⟨(474896921971/1000000000000 : ℚ), (877969381687/5000000000 : ℚ), (-21049716906777/250000000000 : ℚ), 9⟩,
    ⟨(477063474917/1000000000000 : ℚ), (308426891773/5000000000 : ℚ), (-15010626567679/500000000000 : ℚ), 7⟩,
    ⟨(60035899717/125000000000 : ℚ), (7620021447/250000000 : ℚ), (-3019028035131/200000000000 : ℚ), 6⟩,
    ⟨(242268522107/500000000000 : ℚ), (88694561797/5000000000 : ℚ), (-4476561817689/500000000000 : ℚ), 5⟩,
    ⟨(489772086007/1000000000000 : ℚ), (113531681219/10000000000 : ℚ), (-1461122109249/250000000000 : ℚ), 5⟩,
    ⟨(1239854767/2500000000 : ℚ), (77239325777/10000000000 : ℚ), (-162280950947/40000000000 : ℚ), 4⟩,
    ⟨(251493543923/500000000000 : ℚ), (10956103321/2000000000 : ℚ), (-117441095343/40000000000 : ℚ), 4⟩,
    ⟨(510839780201/1000000000000 : ℚ), (40001473451/10000000000 : ℚ), (-1093665422033/500000000000 : ℚ), 4⟩,
    ⟨(103884871629/200000000000 : ℚ), (931685239/312500000 : ℚ), (-41571303069/25000000000 : ℚ), 4⟩,
    ⟨(264329073749/500000000000 : ℚ), (11265924121/5000000000 : ℚ), (-1281456624917/1000000000000 : ℚ), 3⟩,
    ⟨(538452221823/1000000000000 : ℚ), (53664801/31250000 : ℚ), (-248917390009/250000000000 : ℚ), 3⟩,
    ⟨(137178064707/250000000000 : ℚ), (6566760693/5000000000 : ℚ), (-776212836249/1000000000000 : ℚ), 3⟩,
    ⟨(447471559/800000000 : ℚ), (626750871/625000000 : ℚ), (-604237607347/1000000000000 : ℚ), 3⟩,
    ⟨(570231445939/1000000000000 : ℚ), (1520012791/2000000000 : ℚ), (-29197958087/62500000000 : ℚ), 3⟩,
    ⟨(581283354509/1000000000000 : ℚ), (2837337623/5000000000 : ℚ), (-356353301317/1000000000000 : ℚ), 3⟩,
    ⟨(592388738539/1000000000000 : ℚ), (82584973/200000000 : ℚ), (-16605795333/62500000000 : ℚ), 3⟩,
    ⟨(603440647109/1000000000000 : ℚ), (1438009691/5000000000 : ℚ), (-190782828071/1000000000000 : ℚ), 2⟩,
    ⟨(307166322149/500000000000 : ℚ), (925489221/5000000000 : ℚ), (-2006030791/15625000000 : ℚ), 2⟩,
    ⟨(31247991711/50000000000 : ℚ), (251671249/2500000000 : ℚ), (-3804084441/50000000000 : ℚ), 2⟩,
    ⟨(25408794849/40000000000 : ℚ), (76871769/2500000000 : ℚ), (-8008660587/250000000000 : ℚ), 2⟩,
    ⟨(12900278911/20000000000 : ℚ), (-68431439/2500000000 : ℚ), (129089027/25000000000 : ℚ), 2⟩,
    ⟨(654247734903/1000000000000 : ℚ), (-757771247/10000000000 : ℚ), (36604290567/1000000000000 : ℚ), 2⟩,
    ⟨(662832312847/1000000000000 : ℚ), (-23215163/200000000 : ℚ), (15784900601/250000000000 : ℚ), 2⟩,
    ⟨(335342502601/500000000000 : ℚ), (-186902257/1250000000 : ℚ), (42719009061/500000000000 : ℚ), 2⟩,
    ⟨(84716273281/125000000000 : ℚ), (-1770924589/10000000000 : ℚ), (104025091943/1000000000000 : ℚ), 2⟩,
    ⟨(683900007041/1000000000000 : ℚ), (-1995492549/10000000000 : ℚ), (119313250013/1000000000000 : ℚ), 2⟩,
    ⟨(344567524417/500000000000 : ℚ), (-2174819397/10000000000 : ℚ), (131623923387/1000000000000 : ℚ), 2⟩,
    ⟨(43336555957/62500000000 : ℚ), (-578352893/2500000000 : ℚ), (2824080643/20000000000 : ℚ), 2⟩,
    ⟨(696608618131/1000000000000 : ℚ), (-1207312351/5000000000 : ℚ), (5929528951/40000000000 : ℚ), 2⟩,
    ⟨(698775171077/1000000000000 : ℚ), (-620209369/2500000000 : ℚ), (152857809599/1000000000000 : ℚ), 2⟩,
    ⟨(349931844531/500000000000 : ℚ), (-2513572467/10000000000 : ℚ), (155147027981/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2517647109/10000000000 : ℚ), (31086445019/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (39299676349/200000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control388.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control388.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate388
