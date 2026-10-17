import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate202
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137102393461/500000000000 : ℚ), (11569555867951/10000000000 : ℚ), (-318065736729953/1000000000000 : ℚ), 11⟩,
    ⟨(55039029987/200000000000 : ℚ), (314886688013/2500000000 : ℚ), (-17586242504253/500000000000 : ℚ), 8⟩,
    ⟨(11086653529/40000000000 : ℚ), (109784072499/2500000000 : ℚ), (-3135236588559/250000000000 : ℚ), 7⟩,
    ⟨(28009936817/100000000000 : ℚ), (215092798929/10000000000 : ℚ), (-630562272029/100000000000 : ℚ), 6⟩,
    ⟨(2218484321/7812500000 : ℚ), (124003105343/10000000000 : ℚ), (-3739523116427/1000000000000 : ℚ), 5⟩,
    ⟨(288728975269/1000000000000 : ℚ), (78585083627/10000000000 : ℚ), (-488085780519/200000000000 : ℚ), 4⟩,
    ⟨(294342444589/1000000000000 : ℚ), (26461829223/5000000000 : ℚ), (-1693104916703/1000000000000 : ℚ), 4⟩,
    ⟨(300752340271/1000000000000 : ℚ), (37143991767/10000000000 : ℚ), (-1224064383553/1000000000000 : ℚ), 4⟩,
    ⟨(76974232879/250000000000 : ℚ), (13413968537/5000000000 : ℚ), (-910425809779/1000000000000 : ℚ), 3⟩,
    ⟨(315707412003/1000000000000 : ℚ), (19762759917/10000000000 : ℚ), (-345166673007/500000000000 : ℚ), 3⟩,
    ⟨(40513570317/125000000000 : ℚ), (7371723991/5000000000 : ℚ), (-264949370667/500000000000 : ℚ), 3⟩,
    ⟨(83254868861/250000000000 : ℚ), (2767487139/2500000000 : ℚ), (-409296413931/1000000000000 : ℚ), 3⟩,
    ⟨(342354333763/1000000000000 : ℚ), (8314139149/10000000000 : ℚ), (-39538020399/125000000000 : ℚ), 3⟩,
    ⟨(70404647541/200000000000 : ℚ), (775382123/1250000000 : ℚ), (-121529230573/500000000000 : ℚ), 3⟩,
    ⟨(361933070439/1000000000000 : ℚ), (4556573227/10000000000 : ℚ), (-23039734347/125000000000 : ℚ), 2⟩,
    ⟨(18599419743/50000000000 : ℚ), (101635799/312500000 : ℚ), (-2132555567/15625000000 : ℚ), 2⟩,
    ⟨(76418474539/200000000000 : ℚ), (441045463/2000000000 : ℚ), (-3880870619/40000000000 : ℚ), 2⟩,
    ⟨(98036924279/250000000000 : ℚ), (169338781/1250000000 : ℚ), (-64110288519/1000000000000 : ℚ), 2⟩,
    ⟨(8041150597/20000000000 : ℚ), (41063577/625000000 : ℚ), (-36414740243/1000000000000 : ℚ), 2⟩,
    ⟨(804153191/1953125000 : ℚ), (79982483/10000000000 : ℚ), (-404466619/31250000000 : ℚ), 2⟩,
    ⟨(421061292111/1000000000000 : ℚ), (-400344727/10000000000 : ℚ), (7052366063/1000000000000 : ℚ), 2⟩,
    ⟨(429972205019/1000000000000 : ℚ), (-16040031/200000000 : ℚ), (12069908867/500000000000 : ℚ), 2⟩,
    ⟨(13699167361/31250000000 : ℚ), (-569350339/5000000000 : ℚ), (19377888949/500000000000 : ℚ), 2⟩,
    ⟨(446183836039/1000000000000 : ℚ), (-1420945839/10000000000 : ℚ), (3202318769/62500000000 : ℚ), 2⟩,
    ⟨(113332106821/250000000000 : ℚ), (-1656826197/10000000000 : ℚ), (12368957003/200000000000 : ℚ), 2⟩,
    ⟨(229869161483/500000000000 : ℚ), (-46314727/250000000 : ℚ), (70781262441/1000000000000 : ℚ), 2⟩,
    ⟨(232675896143/500000000000 : ℚ), (-2013056989/10000000000 : ℚ), (610962287/7812500000 : ℚ), 2⟩,
    ⟨(470114774467/1000000000000 : ℚ), (-133870831/625000000 : ℚ), (10528861671/125000000000 : ℚ), 2⟩,
    ⟨(94796279877/200000000000 : ℚ), (-2242026827/10000000000 : ℚ), (88955663463/1000000000000 : ℚ), 2⟩,
    ⟨(47691442933/100000000000 : ℚ), (-578854013/2500000000 : ℚ), (11555610869/125000000000 : ℚ), 2⟩,
    ⟨(23944280881/50000000000 : ℚ), (-1181783531/5000000000 : ℚ), (94746008703/1000000000000 : ℚ), 2⟩,
    ⟨(479875980633/1000000000000 : ℚ), (-596853739/2500000000 : ℚ), (95889229057/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-149399087/625000000 : ℚ), (96031791557/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (146841113233/500000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control202.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control202.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate202
