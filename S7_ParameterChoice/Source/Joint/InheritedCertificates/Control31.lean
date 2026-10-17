import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate31
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(214858977857/1000000000000 : ℚ), (7396830674077/10000000000 : ℚ), (-159742098533857/1000000000000 : ℚ), 10⟩,
    ⟨(216471800953/1000000000000 : ℚ), (793715166933/10000000000 : ℚ), (-552264897221/31250000000 : ℚ), 7⟩,
    ⟨(27460239347/125000000000 : ℚ), (135643653611/5000000000 : ℚ), (-3153615666351/500000000000 : ℚ), 5⟩,
    ⟨(8978336167/40000000000 : ℚ), (519853551/40000000 : ℚ), (-794092553793/250000000000 : ℚ), 4⟩,
    ⟨(230755268947/1000000000000 : ℚ), (36620210583/5000000000 : ℚ), (-377665399313/200000000000 : ℚ), 4⟩,
    ⟨(238511866841/1000000000000 : ℚ), (45404151829/10000000000 : ℚ), (-1236661696327/1000000000000 : ℚ), 3⟩,
    ⟨(12382674879/50000000000 : ℚ), (749098873/250000000 : ℚ), (-862141960013/1000000000000 : ℚ), 3⟩,
    ⟨(129046061131/500000000000 : ℚ), (20661518391/10000000000 : ℚ), (-156846442167/250000000000 : ℚ), 3⟩,
    ⟨(134863605613/500000000000 : ℚ), (14711243189/10000000000 : ℚ), (-470650905493/1000000000000 : ℚ), 2⟩,
    ⟨(70611678051/250000000000 : ℚ), (2145425609/2000000000 : ℚ), (-18042453861/50000000000 : ℚ), 2⟩,
    ⟨(37016016181/125000000000 : ℚ), (3980251661/5000000000 : ℚ), (-140472183367/500000000000 : ℚ), 2⟩,
    ⟨(310639703431/1000000000000 : ℚ), (373794107/625000000 : ℚ), (-6905303463/31250000000 : ℚ), 2⟩,
    ⟨(81460419941/250000000000 : ℚ), (4527412919/10000000000 : ℚ), (-174782153397/1000000000000 : ℚ), 2⟩,
    ⟨(5337307111/15625000000 : ℚ), (137473971/400000000 : ℚ), (-69216131191/500000000000 : ℚ), 2⟩,
    ⟨(3577259871/10000000000 : ℚ), (162658121/625000000 : ℚ), (-21858181397/200000000000 : ℚ), 2⟩,
    ⟨(374101254793/1000000000000 : ℚ), (1953280199/10000000000 : ℚ), (-85556319763/1000000000000 : ℚ), 1⟩,
    ⟨(78111151081/200000000000 : ℚ), (288078339/2000000000 : ℚ), (-6596320151/100000000000 : ℚ), 1⟩,
    ⟨(406931023099/1000000000000 : ℚ), (51492161/500000000 : ℚ), (-4960442783/100000000000 : ℚ), 1⟩,
    ⟨(84613871019/200000000000 : ℚ), (34872149/500000000 : ℚ), (-8954534801/250000000000 : ℚ), 1⟩,
    ⟨(219407665217/500000000000 : ℚ), (85142893/2000000000 : ℚ), (-12057087323/500000000000 : ℚ), 1⟩,
    ⟨(454017306767/1000000000000 : ℚ), (100927053/5000000000 : ℚ), (-14124929341/1000000000000 : ℚ), 1⟩,
    ⟨(468528880751/1000000000000 : ℚ), (16364901/10000000000 : ℚ), (-5571800697/1000000000000 : ℚ), 1⟩,
    ⟨(96442059599/200000000000 : ℚ), (-137873901/10000000000 : ℚ), (879085249/500000000000 : ℚ), 1⟩,
    ⟨(123732449743/250000000000 : ℚ), (-266250073/10000000000 : ℚ), (4014419457/500000000000 : ℚ), 1⟩,
    ⟨(3957538187/7812500000 : ℚ), (-372869269/10000000000 : ℚ), (13366838749/1000000000000 : ℚ), 1⟩,
    ⟨(258501756309/500000000000 : ℚ), (-460874703/10000000000 : ℚ), (8935114471/500000000000 : ℚ), 1⟩,
    ⟨(526145143357/1000000000000 : ℚ), (-266337979/5000000000 : ℚ), (21614844021/1000000000000 : ℚ), 1⟩,
    ⟨(133475435313/250000000000 : ℚ), (-23604553/400000000 : ℚ), (3082373561/125000000000 : ℚ), 1⟩,
    ⟨(540198606023/1000000000000 : ℚ), (-634579343/10000000000 : ℚ), (6761728031/250000000000 : ℚ), 1⟩,
    ⟨(544975095423/1000000000000 : ℚ), (-166774849/2500000000 : ℚ), (28811367137/1000000000000 : ℚ), 1⟩,
    ⟨(274092604623/500000000000 : ℚ), (-137679461/2000000000 : ℚ), (7493864209/250000000000 : ℚ), 1⟩,
    ⟨(549798032341/1000000000000 : ℚ), (-349467041/5000000000 : ℚ), (1527695783/50000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-700245979/10000000000 : ℚ), (30626056711/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (299999/1000000 : ℚ)
  x := (202758919979/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control31.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control31.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate31
