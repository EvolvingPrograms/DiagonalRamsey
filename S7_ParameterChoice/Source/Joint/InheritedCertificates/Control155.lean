import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate155
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(67683160567/250000000000 : ℚ), (11767313706477/10000000000 : ℚ), (-159714802250191/500000000000 : ℚ), 11⟩,
    ⟨(271739714531/1000000000000 : ℚ), (1280552527481/10000000000 : ℚ), (-35324442194277/1000000000000 : ℚ), 8⟩,
    ⟨(273744160401/1000000000000 : ℚ), (111552605807/2500000000 : ℚ), (-12595963862831/1000000000000 : ℚ), 6⟩,
    ⟨(276726675969/1000000000000 : ℚ), (218422596801/10000000000 : ℚ), (-6333947860353/1000000000000 : ℚ), 6⟩,
    ⟨(140329268989/500000000000 : ℚ), (62922030691/5000000000 : ℚ), (-375687920537/100000000000 : ℚ), 5⟩,
    ⟨(285501880449/1000000000000 : ℚ), (15940893361/2000000000 : ℚ), (-2452246441391/1000000000000 : ℚ), 4⟩,
    ⟨(145605029673/500000000000 : ℚ), (10729815451/2000000000 : ℚ), (-1701748535163/1000000000000 : ℚ), 4⟩,
    ⟨(148864050893/500000000000 : ℚ), (18818293107/5000000000 : ℚ), (-1230725324733/1000000000000 : ℚ), 4⟩,
    ⟨(304993235457/1000000000000 : ℚ), (13587478723/5000000000 : ℚ), (-915767277171/1000000000000 : ℚ), 3⟩,
    ⟨(312935493149/1000000000000 : ℚ), (20014816251/10000000000 : ℚ), (-347376092963/500000000000 : ℚ), 3⟩,
    ⟨(321478386581/1000000000000 : ℚ), (2986288477/2000000000 : ℚ), (-266822783627/500000000000 : ℚ), 3⟩,
    ⟨(165269821509/500000000000 : ℚ), (5606754323/5000000000 : ℚ), (-1650144771/4000000000 : ℚ), 3⟩,
    ⟨(170015998803/500000000000 : ℚ), (8426127003/10000000000 : ℚ), (-31914913169/100000000000 : ℚ), 3⟩,
    ⟨(43733004223/125000000000 : ℚ), (6292119299/10000000000 : ℚ), (-122793560311/500000000000 : ℚ), 2⟩,
    ⟨(179970531833/500000000000 : ℚ), (289290651/625000000 : ℚ), (-18658650909/100000000000 : ℚ), 2⟩,
    ⟨(92541509987/250000000000 : ℚ), (3311598191/10000000000 : ℚ), (-138533505967/1000000000000 : ℚ), 2⟩,
    ⟨(190220245259/500000000000 : ℚ), (2254622087/10000000000 : ℚ), (-49442087621/500000000000 : ℚ), 2⟩,
    ⟨(390665466799/1000000000000 : ℚ), (1396399877/10000000000 : ℚ), (-32904643389/500000000000 : ℚ), 2⟩,
    ⟨(200371248341/500000000000 : ℚ), (692591593/10000000000 : ℚ), (-37969610523/1000000000000 : ℚ), 2⟩,
    ⟨(410574532859/1000000000000 : ℚ), (6914839/625000000 : ℚ), (-14369612763/1000000000000 : ℚ), 2⟩,
    ⟨(52508360931/125000000000 : ℚ), (-93423093/2500000000 : ℚ), (2870117631/500000000000 : ℚ), 2⟩,
    ⟨(85825628777/200000000000 : ℚ), (-77863473/1000000000 : ℚ), (22930170483/1000000000000 : ℚ), 2⟩,
    ⟨(109417759329/250000000000 : ℚ), (-223609399/2000000000 : ℚ), (376376169/10000000000 : ℚ), 2⟩,
    ⟨(445613295009/1000000000000 : ℚ), (-1402538823/10000000000 : ℚ), (1568754771/31250000000 : ℚ), 2⟩,
    ⟨(11321960717/25000000000 : ℚ), (-1640277837/10000000000 : ℚ), (1521981753/25000000000 : ℚ), 2⟩,
    ⟨(459396471119/1000000000000 : ℚ), (-1837570099/10000000000 : ℚ), (8734717273/125000000000 : ℚ), 2⟩,
    ⟨(14534520313/31250000000 : ℚ), (-1999282457/10000000000 : ℚ), (38676217921/500000000000 : ℚ), 2⟩,
    ⟨(469947992487/1000000000000 : ℚ), (-2129151899/10000000000 : ℚ), (41711957221/500000000000 : ℚ), 2⟩,
    ⟨(473879854497/1000000000000 : ℚ), (-17840101/80000000 : ℚ), (4409177169/50000000000 : ℚ), 2⟩,
    ⟨(29803898129/62500000000 : ℚ), (-575990479/2500000000 : ℚ), (91698825831/1000000000000 : ℚ), 2⟩,
    ⟨(95773363187/200000000000 : ℚ), (-2352479199/10000000000 : ℚ), (4700863973/50000000000 : ℚ), 2⟩,
    ⟨(239936944099/500000000000 : ℚ), (-297063517/1250000000 : ℚ), (19033830707/200000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-475900221/2000000000 : ℚ), (19062559433/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (274413444061/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control155.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control155.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate155
