import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate354
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23135347369/100000000000 : ℚ), (12232749904723/10000000000 : ℚ), (-283639212021331/1000000000000 : ℚ), 12⟩,
    ⟨(232068815993/1000000000000 : ℚ), (667045576689/5000000000 : ℚ), (-31351493553237/1000000000000 : ℚ), 8⟩,
    ⟨(116746305731/500000000000 : ℚ), (466170987311/10000000000 : ℚ), (-5584158390917/500000000000 : ℚ), 7⟩,
    ⟨(29451393521/125000000000 : ℚ), (228849221413/10000000000 : ℚ), (-5607441950929/1000000000000 : ℚ), 6⟩,
    ⟨(47680804689/200000000000 : ℚ), (66095019459/5000000000 : ℚ), (-3318785429387/1000000000000 : ℚ), 5⟩,
    ⟨(241844340377/1000000000000 : ℚ), (41943661759/5000000000 : ℚ), (-2160022831511/1000000000000 : ℚ), 5⟩,
    ⟨(245898966831/1000000000000 : ℚ), (56523244173/10000000000 : ℚ), (-14933026861/10000000000 : ℚ), 4⟩,
    ⟨(125264427269/500000000000 : ℚ), (792900671/200000000 : ℚ), (-1074730259831/1000000000000 : ℚ), 4⟩,
    ⟨(63922353787/250000000000 : ℚ), (14286521677/5000000000 : ℚ), (-99340294167/125000000000 : ℚ), 4⟩,
    ⟨(130665474821/500000000000 : ℚ), (20961788823/10000000000 : ℚ), (-299059464787/500000000000 : ℚ), 4⟩,
    ⟨(133699563479/500000000000 : ℚ), (1941599797/1250000000 : ℚ), (-454701457381/1000000000000 : ℚ), 3⟩,
    ⟨(8557359601/31250000000 : ℚ), (2308508237/2000000000 : ℚ), (-346792302219/1000000000000 : ℚ), 3⟩,
    ⟨(280578104603/1000000000000 : ℚ), (8535735419/10000000000 : ℚ), (-263494286361/1000000000000 : ℚ), 3⟩,
    ⟨(287561984173/1000000000000 : ℚ), (6221689059/10000000000 : ℚ), (-6181159073/31250000000 : ℚ), 3⟩,
    ⟨(73679971841/250000000000 : ℚ), (55103401/125000000 : ℚ), (-3625716229/25000000000 : ℚ), 3⟩,
    ⟨(150991439827/500000000000 : ℚ), (592954203/2000000000 : ℚ), (-101981722663/1000000000000 : ℚ), 3⟩,
    ⟨(309281014459/1000000000000 : ℚ), (900027031/5000000000 : ℚ), (-6639899887/100000000000 : ℚ), 3⟩,
    ⟨(316544006749/1000000000000 : ℚ), (849246847/10000000000 : ℚ), (-36657858621/1000000000000 : ℚ), 3⟩,
    ⟨(16185095497/50000000000 : ℚ), (1306707/200000000 : ℚ), (-11570951239/1000000000000 : ℚ), 2⟩,
    ⟨(33068578951/100000000000 : ℚ), (-117255259/2000000000 : ℚ), (608977401/62500000000 : ℚ), 2⟩,
    ⟨(337428386881/1000000000000 : ℚ), (-1131380443/10000000000 : ℚ), (27949090077/1000000000000 : ℚ), 2⟩,
    ⟨(68772953431/200000000000 : ℚ), (-12715353/80000000 : ℚ), (43549074809/1000000000000 : ℚ), 2⟩,
    ⟨(349932944471/1000000000000 : ℚ), (-1975181013/10000000000 : ℚ), (14232262101/250000000000 : ℚ), 2⟩,
    ⟨(71114895793/200000000000 : ℚ), (-2299995219/10000000000 : ℚ), (34192789391/500000000000 : ℚ), 2⟩,
    ⟨(14429401583/40000000000 : ℚ), (-2572583603/10000000000 : ℚ), (78147524199/1000000000000 : ℚ), 2⟩,
    ⟨(182682463641/500000000000 : ℚ), (-2799676979/10000000000 : ℚ), (86391550917/1000000000000 : ℚ), 2⟩,
    ⟨(46177444217/125000000000 : ℚ), (-2986465169/10000000000 : ℚ), (5828352689/62500000000 : ℚ), 2⟩,
    ⟨(93214967667/250000000000 : ℚ), (-196057999/625000000 : ℚ), (98837713933/1000000000000 : ℚ), 2⟩,
    ⟨(75130549189/200000000000 : ℚ), (-1627039583/5000000000 : ℚ), (103222070487/1000000000000 : ℚ), 2⟩,
    ⟨(377771282651/1000000000000 : ℚ), (-5218977/15625000 : ℚ), (106464243033/1000000000000 : ℚ), 2⟩,
    ⟨(9479876953/25000000000 : ℚ), (-849173651/2500000000 : ℚ), (13575565969/125000000000 : ℚ), 2⟩,
    ⟨(379910420423/1000000000000 : ℚ), (-214045391/625000000 : ℚ), (54834237661/500000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-428527369/1250000000 : ℚ), (54900591069/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (351831502011/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control354.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control354.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate354
