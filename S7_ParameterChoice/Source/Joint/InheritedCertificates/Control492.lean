import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate492
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1278071561/5000000000 : ℚ), (12820122970171/10000000000 : ℚ), (-1641726750957/5000000000 : ℚ), 12⟩,
    ⟨(128154574883/500000000000 : ℚ), (350019542177/2500000000 : ℚ), (-18143315263947/500000000000 : ℚ), 9⟩,
    ⟨(257692133231/1000000000000 : ℚ), (122534230503/2500000000 : ℚ), (-12921779572603/1000000000000 : ℚ), 7⟩,
    ⟨(25974994371/100000000000 : ℚ), (30137520303/1250000000 : ℚ), (-6484329233331/1000000000000 : ℚ), 6⟩,
    ⟨(131231381681/500000000000 : ℚ), (34886353009/2500000000 : ℚ), (-3834952546711/1000000000000 : ℚ), 6⟩,
    ⟨(265804466251/1000000000000 : ℚ), (44359997167/5000000000 : ℚ), (-498721379577/200000000000 : ℚ), 5⟩,
    ⟨(4214732343/15625000000 : ℚ), (5987690177/1000000000 : ℚ), (-107618118897/62500000000 : ℚ), 5⟩,
    ⟨(274240045483/1000000000000 : ℚ), (21026283047/5000000000 : ℚ), (-618729817881/500000000000 : ℚ), 4⟩,
    ⟨(279252682587/1000000000000 : ℚ), (1896024151/625000000 : ℚ), (-114182304611/125000000000 : ℚ), 4⟩,
    ⟨(71183126707/250000000000 : ℚ), (22265717699/10000000000 : ℚ), (-343015356019/500000000000 : ℚ), 4⟩,
    ⟨(145313372251/500000000000 : ℚ), (8248644801/5000000000 : ℚ), (-520193678767/1000000000000 : ℚ), 4⟩,
    ⟨(296878630879/1000000000000 : ℚ), (24498451/20000000 : ℚ), (-395481876361/1000000000000 : ℚ), 3⟩,
    ⟨(485484731/1600000000 : ℚ), (4521140301/5000000000 : ℚ), (-59855729273/200000000000 : ℚ), 3⟩,
    ⟨(310211648901/1000000000000 : ℚ), (410631303/625000000 : ℚ), (-111733208953/500000000000 : ℚ), 3⟩,
    ⟨(158582188147/500000000000 : ℚ), (2314964581/5000000000 : ℚ), (-2032925473/12500000000 : ℚ), 3⟩,
    ⟨(324219180489/1000000000000 : ℚ), (1541805511/5000000000 : ℚ), (-22613145473/200000000000 : ℚ), 3⟩,
    ⟨(41413514983/125000000000 : ℚ), (1834664769/10000000000 : ℚ), (-14429020611/200000000000 : ℚ), 3⟩,
    ⟨(338362924059/1000000000000 : ℚ), (814283521/10000000000 : ℚ), (-37990338303/1000000000000 : ℚ), 3⟩,
    ⟨(86328912863/250000000000 : ℚ), (-1099639/400000000 : ℚ), (-1152924229/125000000000 : ℚ), 3⟩,
    ⟨(176049671739/500000000000 : ℚ), (-90936519/1250000000 : ℚ), (15180193041/1000000000000 : ℚ), 3⟩,
    ⟨(179324334737/500000000000 : ℚ), (-164154151/1250000000 : ℚ), (35991594253/1000000000000 : ℚ), 3⟩,
    ⟨(364900555851/1000000000000 : ℚ), (-902745803/5000000000 : ℚ), (13449295097/250000000000 : ℚ), 3⟩,
    ⟨(14831791741/40000000000 : ℚ), (-444019787/2000000000 : ℚ), (13809252447/200000000000 : ℚ), 2⟩,
    ⟨(188137308883/500000000000 : ℚ), (-2569201809/10000000000 : ℚ), (82084992531/1000000000000 : ℚ), 2⟩,
    ⟨(38128725487/100000000000 : ℚ), (-2862163571/10000000000 : ℚ), (46590423273/500000000000 : ℚ), 2⟩,
    ⟨(385784430401/1000000000000 : ℚ), (-38827719/125000000 : ℚ), (102540565551/1000000000000 : ℚ), 2⟩,
    ⟨(194861417051/500000000000 : ℚ), (-1653472541/5000000000 : ℚ), (110323472473/1000000000000 : ℚ), 2⟩,
    ⟨(393064536991/1000000000000 : ℚ), (-3468628371/10000000000 : ℚ), (116651443599/1000000000000 : ℚ), 2⟩,
    ⟨(395777356643/1000000000000 : ℚ), (-1797255387/5000000000 : ℚ), (121616404453/1000000000000 : ℚ), 2⟩,
    ⟨(198917583561/500000000000 : ℚ), (-1843494293/5000000000 : ℚ), (25057187741/200000000000 : ℚ), 2⟩,
    ⟨(99804537647/250000000000 : ℚ), (-3747749479/10000000000 : ℚ), (127707409659/1000000000000 : ℚ), 2⟩,
    ⟨(399912988153/1000000000000 : ℚ), (-1888934241/5000000000 : ℚ), (25782171951/200000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3781621243/10000000000 : ℚ), (25812190773/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (14424670237/40000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control492.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control492.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate492
