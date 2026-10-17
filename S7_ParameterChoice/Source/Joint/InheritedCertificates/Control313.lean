import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate313
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(314368342061/1000000000000 : ℚ), (13663979162287/10000000000 : ℚ), (-215218921529857/500000000000 : ℚ), 12⟩,
    ⟨(315261670557/1000000000000 : ℚ), (745923392251/5000000000 : ℚ), (-1487013491343/31250000000 : ℚ), 8⟩,
    ⟨(317039724307/1000000000000 : ℚ), (522160132317/10000000000 : ℚ), (-4239020230023/250000000000 : ℚ), 7⟩,
    ⟨(319685379681/1000000000000 : ℚ), (256856594297/10000000000 : ℚ), (-8517556655117/1000000000000 : ℚ), 6⟩,
    ⟨(80793289393/250000000000 : ℚ), (148718138609/10000000000 : ℚ), (-630599550281/125000000000 : ℚ), 5⟩,
    ⟨(81867367193/250000000000 : ℚ), (4731544941/500000000 : ℚ), (-328676301839/100000000000 : ℚ), 5⟩,
    ⟨(20783308591/62500000000 : ℚ), (15990168237/2500000000 : ℚ), (-568874381849/250000000000 : ℚ), 4⟩,
    ⟨(84578699913/250000000000 : ℚ), (9005092413/2000000000 : ℚ), (-410220113113/250000000000 : ℚ), 4⟩,
    ⟨(86189843217/250000000000 : ℚ), (32593565213/10000000000 : ℚ), (-304153266453/250000000000 : ℚ), 4⟩,
    ⟨(175902296169/500000000000 : ℚ), (375651549/156250000 : ℚ), (-897445847/976562500 : ℚ), 3⟩,
    ⟨(287506087/800000000 : ℚ), (17939210259/10000000000 : ℚ), (-175533179707/250000000000 : ℚ), 3⟩,
    ⟨(183710220831/500000000000 : ℚ), (13453509679/10000000000 : ℚ), (-539225750971/1000000000000 : ℚ), 3⟩,
    ⟨(375840682349/1000000000000 : ℚ), (10074366341/10000000000 : ℚ), (-413720521471/1000000000000 : ℚ), 3⟩,
    ⟨(384562239291/1000000000000 : ℚ), (747568097/1000000000 : ℚ), (-31497150009/100000000000 : ℚ), 3⟩,
    ⟨(196750559563/500000000000 : ℚ), (5441666819/10000000000 : ℚ), (-235880716917/1000000000000 : ℚ), 3⟩,
    ⟨(80514247111/200000000000 : ℚ), (1912656159/5000000000 : ℚ), (-85786171199/500000000000 : ℚ), 3⟩,
    ⟨(128651637/312500000 : ℚ), (2523958613/10000000000 : ℚ), (-59305686567/500000000000 : ℚ), 3⟩,
    ⟨(420755354829/1000000000000 : ℚ), (732196037/5000000000 : ℚ), (-74525329643/1000000000000 : ℚ), 2⟩,
    ⟨(85938846933/200000000000 : ℚ), (296723163/5000000000 : ℚ), (-18750862171/500000000000 : ℚ), 2⟩,
    ⟨(438415791607/1000000000000 : ℚ), (-128090941/10000000000 : ℚ), (-6191161249/1000000000000 : ℚ), 2⟩,
    ⟨(223418016147/500000000000 : ℚ), (-29181069/400000000 : ℚ), (5106021737/250000000000 : ℚ), 2⟩,
    ⟨(90974773041/200000000000 : ℚ), (-616505901/5000000000 : ℚ), (43119788983/1000000000000 : ℚ), 2⟩,
    ⟨(462451881617/1000000000000 : ℚ), (-1655443357/10000000000 : ℚ), (31246117547/500000000000 : ℚ), 2⟩,
    ⟨(14671784409/31250000000 : ℚ), (-502451057/2500000000 : ℚ), (19750637083/250000000000 : ℚ), 2⟩,
    ⟨(475941674303/1000000000000 : ℚ), (-1153059837/5000000000 : ℚ), (93008625927/1000000000000 : ℚ), 2⟩,
    ⟨(481723536499/1000000000000 : ℚ), (-2552149651/10000000000 : ℚ), (26197124047/250000000000 : ℚ), 2⟩,
    ⟨(486787005183/1000000000000 : ℚ), (-1376947457/5000000000 : ℚ), (22911521071/200000000000 : ℚ), 2⟩,
    ⟨(491083316383/1000000000000 : ℚ), (-145798483/500000000 : ℚ), (12248172383/100000000000 : ℚ), 2⟩,
    ⟨(247285547137/500000000000 : ℚ), (-3041876593/10000000000 : ℚ), (128686617963/1000000000000 : ℚ), 2⟩,
    ⟨(497216749649/1000000000000 : ℚ), (-3134208967/10000000000 : ℚ), (133265265651/1000000000000 : ℚ), 2⟩,
    ⟨(249497401699/500000000000 : ℚ), (-3194796441/10000000000 : ℚ), (136283145621/1000000000000 : ℚ), 2⟩,
    ⟨(249944065947/500000000000 : ℚ), (-32248061/100000000 : ℚ), (137781950351/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-3228544139/10000000000 : ℚ), (137968831381/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (70198530217/250000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control313.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control313.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate313
