import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate177
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(26566726929/100000000000 : ℚ), (2311483289101/2000000000 : ℚ), (-7696444746533/25000000000 : ℚ), 11⟩,
    ⟨(53330118859/200000000000 : ℚ), (314446434279/2500000000 : ℚ), (-34043973840911/1000000000000 : ℚ), 8⟩,
    ⟨(268607774347/1000000000000 : ℚ), (87661816663/2000000000 : ℚ), (-6069394162567/500000000000 : ℚ), 7⟩,
    ⟨(135759980367/500000000000 : ℚ), (26821118447/1250000000 : ℚ), (-6103579685189/1000000000000 : ℚ), 6⟩,
    ⟨(275359107507/1000000000000 : ℚ), (61814560851/5000000000 : ℚ), (-723965619023/200000000000 : ℚ), 5⟩,
    ⟨(56017648317/200000000000 : ℚ), (15660396781/2000000000 : ℚ), (-2362413162049/1000000000000 : ℚ), 4⟩,
    ⟨(142830909411/500000000000 : ℚ), (3293896413/625000000 : ℚ), (-1639054346171/1000000000000 : ℚ), 4⟩,
    ⟨(292026162621/1000000000000 : ℚ), (18483816767/5000000000 : ℚ), (-592520838053/500000000000 : ℚ), 4⟩,
    ⟨(299119980873/1000000000000 : ℚ), (26685700641/10000000000 : ℚ), (-7051495421/8000000000 : ℚ), 3⟩,
    ⟨(306874956231/1000000000000 : ℚ), (3929424399/2000000000 : ℚ), (-13367381831/20000000000 : ℚ), 3⟩,
    ⟨(157608202021/500000000000 : ℚ), (1464890033/1000000000 : ℚ), (-128259339357/250000000000 : ℚ), 3⟩,
    ⟨(324063991603/1000000000000 : ℚ), (10992304233/10000000000 : ℚ), (-99063119439/250000000000 : ℚ), 3⟩,
    ⟨(333332511811/1000000000000 : ℚ), (2062532687/2500000000 : ℚ), (-306184790283/1000000000000 : ℚ), 3⟩,
    ⟨(342932703749/1000000000000 : ℚ), (6150087767/10000000000 : ℚ), (-235223634699/1000000000000 : ℚ), 3⟩,
    ⟨(352772112321/1000000000000 : ℚ), (4512553757/10000000000 : ℚ), (-89148243937/500000000000 : ℚ), 2⟩,
    ⟨(181377989321/500000000000 : ℚ), (128623237/400000000 : ℚ), (-131920862853/1000000000000 : ℚ), 2⟩,
    ⟨(23299259539/62500000000 : ℚ), (2174335793/10000000000 : ℚ), (-93645333801/1000000000000 : ℚ), 2⟩,
    ⟨(76554403789/200000000000 : ℚ), (166070321/1250000000 : ℚ), (-6170726971/100000000000 : ℚ), 2⟩,
    ⟨(392611427517/1000000000000 : ℚ), (126937943/2000000000 : ℚ), (-8704070957/250000000000 : ℚ), 2⟩,
    ⟨(201105809727/500000000000 : ℚ), (30360043/5000000000 : ℚ), (-3003310823/250000000000 : ℚ), 2⟩,
    ⟨(205740069831/500000000000 : ℚ), (-20857907/500000000 : ℚ), (1855968853/250000000000 : ℚ), 2⟩,
    ⟨(52540965903/125000000000 : ℚ), (-816867497/10000000000 : ℚ), (24044278049/1000000000000 : ℚ), 2⟩,
    ⟨(85733835007/200000000000 : ℚ), (-288006533/2500000000 : ℚ), (19134573767/500000000000 : ℚ), 2⟩,
    ⟨(436424150393/1000000000000 : ℚ), (-143305997/1000000000 : ℚ), (50423420891/1000000000000 : ℚ), 2⟩,
    ⟨(88703593729/200000000000 : ℚ), (-1667994433/10000000000 : ℚ), (60758695259/1000000000000 : ℚ), 2⟩,
    ⟨(112470578111/250000000000 : ℚ), (-186302499/1000000000 : ℚ), (69469972263/1000000000000 : ℚ), 2⟩,
    ⟨(455455889681/1000000000000 : ℚ), (-2022932363/10000000000 : ℚ), (15341607599/200000000000 : ℚ), 2⟩,
    ⟨(460185023759/1000000000000 : ℚ), (-537846683/2500000000 : ℚ), (82588692221/1000000000000 : ℚ), 2⟩,
    ⟨(116006042633/250000000000 : ℚ), (-450234219/2000000000 : ℚ), (8719964947/100000000000 : ℚ), 2⟩,
    ⟨(466936356919/1000000000000 : ℚ), (-581086111/2500000000 : ℚ), (45302836623/500000000000 : ℚ), 2⟩,
    ⟨(468893536971/1000000000000 : ℚ), (-2372358959/10000000000 : ℚ), (4642616463/50000000000 : ℚ), 2⟩,
    ⟨(58734607747/125000000000 : ℚ), (-2396140793/10000000000 : ℚ), (93968611513/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2399103073/10000000000 : ℚ), (23526955107/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (288421561479/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control177.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control177.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate177
