import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate196
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(326618343141/1000000000000 : ℚ), (5185195994071/5000000000 : ℚ), (-33969441988881/100000000000 : ℚ), 11⟩,
    ⟨(327933957229/1000000000000 : ℚ), (1127414550109/10000000000 : ℚ), (-18789054477213/500000000000 : ℚ), 8⟩,
    ⟨(330552515321/1000000000000 : ℚ), (392366753657/10000000000 : ℚ), (-6704425139309/500000000000 : ℚ), 6⟩,
    ⟨(334448799273/1000000000000 : ℚ), (95920879963/5000000000 : ℚ), (-6750025385519/1000000000000 : ℚ), 6⟩,
    ⟨(169792642869/500000000000 : ℚ), (22086155751/2000000000 : ℚ), (-4009817715237/1000000000000 : ℚ), 5⟩,
    ⟨(172956253773/500000000000 : ℚ), (34956276611/5000000000 : ℚ), (-327846258021/125000000000 : ℚ), 4⟩,
    ⟨(353369530091/1000000000000 : ℚ), (47069831181/10000000000 : ℚ), (-91252099993/50000000000 : ℚ), 4⟩,
    ⟨(361884538169/1000000000000 : ℚ), (33059392381/10000000000 : ℚ), (-132455888797/100000000000 : ℚ), 4⟩,
    ⟨(371375527599/1000000000000 : ℚ), (5981661807/2500000000 : ℚ), (-247521300517/250000000000 : ℚ), 3⟩,
    ⟨(381751094963/1000000000000 : ℚ), (3538446777/2000000000 : ℚ), (-755557863299/1000000000000 : ℚ), 3⟩,
    ⟨(98227829469/250000000000 : ℚ), (6639507011/5000000000 : ℚ), (-146195465843/250000000000 : ℚ), 3⟩,
    ⟨(40474871729/100000000000 : ℚ), (5030876997/5000000000 : ℚ), (-228290222849/500000000000 : ℚ), 3⟩,
    ⟨(417149292579/1000000000000 : ℚ), (7658456383/10000000000 : ℚ), (-71579367169/200000000000 : ℚ), 3⟩,
    ⟨(214996809711/500000000000 : ℚ), (364114167/625000000 : ℚ), (-140164481731/500000000000 : ℚ), 2⟩,
    ⟨(443157999933/1000000000000 : ℚ), (4403497349/10000000000 : ℚ), (-27284348243/125000000000 : ℚ), 2⟩,
    ⟨(57064456741/125000000000 : ℚ), (3282675781/10000000000 : ℚ), (-41971531673/250000000000 : ℚ), 2⟩,
    ⟨(4699379399/10000000000 : ℚ), (477546587/2000000000 : ℚ), (-2529037553/20000000000 : ℚ), 2⟩,
    ⟨(60411949237/125000000000 : ℚ), (416245463/2500000000 : ℚ), (-5751270813/62500000000 : ℚ), 2⟩,
    ⟨(248229987203/500000000000 : ℚ), (268904071/2500000000 : ℚ), (-3158013067/50000000000 : ℚ), 2⟩,
    ⟨(407443441/800000000 : ℚ), (295571329/5000000000 : ℚ), (-19402689349/500000000000 : ℚ), 2⟩,
    ⟨(260852438269/500000000000 : ℚ), (23794121/1250000000 : ℚ), (-18150542771/1000000000000 : ℚ), 2⟩,
    ⟨(533542275953/1000000000000 : ℚ), (-142723913/10000000000 : ℚ), (-290460159/500000000000 : ℚ), 2⟩,
    ⟨(272351249433/500000000000 : ℚ), (-420234631/10000000000 : ℚ), (14377302119/1000000000000 : ℚ), 2⟩,
    ⟨(55507806623/100000000000 : ℚ), (-651490993/10000000000 : ℚ), (27091814989/1000000000000 : ℚ), 2⟩,
    ⟨(564569055659/1000000000000 : ℚ), (-421836623/5000000000 : ℚ), (18924635717/500000000000 : ℚ), 2⟩,
    ⟨(573084063737/1000000000000 : ℚ), (-200467181/2000000000 : ℚ), (2343677963/50000000000 : ℚ), 2⟩,
    ⟨(290270543141/500000000000 : ℚ), (-282943773/2500000000 : ℚ), (543392523/10000000000 : ℚ), 2⟩,
    ⟨(58686830809/100000000000 : ℚ), (-1235297087/10000000000 : ℚ), (7547698559/125000000000 : ℚ), 2⟩,
    ⟨(148001198639/250000000000 : ℚ), (-20553361/156250000 : ℚ), (65103892503/1000000000000 : ℚ), 2⟩,
    ⟨(595901078507/1000000000000 : ℚ), (-1373992793/10000000000 : ℚ), (2743322873/40000000000 : ℚ), 2⟩,
    ⟨(598519636599/1000000000000 : ℚ), (-28246943/200000000 : ℚ), (35436808177/500000000000 : ℚ), 2⟩,
    ⟨(599835250687/1000000000000 : ℚ), (-286263877/2000000000 : ℚ), (14402077549/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-143368141/1000000000 : ℚ), (72152089747/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (2176150019/7812500000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control196.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control196.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate196
