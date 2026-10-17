import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate523
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(247885954099/1000000000000 : ℚ), (13200815927281/10000000000 : ℚ), (-40979689867443/125000000000 : ℚ), 12⟩,
    ⟨(49704347193/200000000000 : ℚ), (72118968797/500000000 : ℚ), (-36224809586901/1000000000000 : ℚ), 9⟩,
    ⟨(249787176771/1000000000000 : ℚ), (505262620827/10000000000 : ℚ), (-2579125867769/200000000000 : ℚ), 7⟩,
    ⟨(251670089629/1000000000000 : ℚ), (248691838389/10000000000 : ℚ), (-6467993981123/1000000000000 : ℚ), 6⟩,
    ⟨(254152341059/1000000000000 : ℚ), (36002680553/2500000000 : ℚ), (-3822642605497/1000000000000 : ℚ), 6⟩,
    ⟨(257210025623/1000000000000 : ℚ), (91586742953/10000000000 : ℚ), (-310415055731/125000000000 : ℚ), 5⟩,
    ⟨(260813696147/1000000000000 : ℚ), (61813710253/10000000000 : ℚ), (-1712753252157/1000000000000 : ℚ), 5⟩,
    ⟨(52985729463/200000000000 : ℚ), (43398690521/10000000000 : ℚ), (-614515378327/500000000000 : ℚ), 4⟩,
    ⟨(269515249897/1000000000000 : ℚ), (15641314699/5000000000 : ℚ), (-452744736379/500000000000 : ℚ), 4⟩,
    ⟨(137264666201/500000000000 : ℚ), (22927867467/10000000000 : ℚ), (-678371710551/1000000000000 : ℚ), 4⟩,
    ⟨(69980651619/250000000000 : ℚ), (3389969507/2000000000 : ℚ), (-256374215043/500000000000 : ℚ), 4⟩,
    ⟨(14282156597/50000000000 : ℚ), (6271203397/5000000000 : ℚ), (-97046418597/250000000000 : ℚ), 3⟩,
    ⟨(18227238563/62500000000 : ℚ), (9211233079/10000000000 : ℚ), (-58417248541/200000000000 : ℚ), 3⟩,
    ⟨(148921474423/500000000000 : ℚ), (1660052101/2500000000 : ℚ), (-6760784609/31250000000 : ℚ), 3⟩,
    ⟨(152102374691/500000000000 : ℚ), (4620016067/10000000000 : ℚ), (-31111900911/200000000000 : ℚ), 3⟩,
    ⟨(155329975499/500000000000 : ℚ), (601591979/2000000000 : ℚ), (-106019457793/1000000000000 : ℚ), 3⟩,
    ⟨(158573193287/500000000000 : ℚ), (34086671/200000000 : ℚ), (-13022547051/200000000000 : ℚ), 3⟩,
    ⟨(32360158819/100000000000 : ℚ), (318996001/5000000000 : ℚ), (-30960589797/1000000000000 : ℚ), 3⟩,
    ⟨(13198535549/40000000000 : ℚ), (-48549587/2000000000 : ℚ), (-2187360523/1000000000000 : ℚ), 3⟩,
    ⟨(336170520563/1000000000000 : ℚ), (-976010207/10000000000 : ℚ), (22229495751/1000000000000 : ℚ), 3⟩,
    ⟨(342163205631/1000000000000 : ℚ), (-198785529/1250000000 : ℚ), (43059530571/1000000000000 : ℚ), 3⟩,
    ⟨(69576746219/200000000000 : ℚ), (-2107092103/10000000000 : ℚ), (60887689573/1000000000000 : ℚ), 3⟩,
    ⟨(353277005169/1000000000000 : ℚ), (-635709163/2500000000 : ℚ), (9520248543/125000000000 : ℚ), 3⟩,
    ⟨(14331643507/40000000000 : ℚ), (-18188151/62500000 : ℚ), (44613688323/500000000000 : ℚ), 3⟩,
    ⟨(22679855641/62500000000 : ℚ), (-1609298323/5000000000 : ℚ), (50175100661/500000000000 : ℚ), 3⟩,
    ⟨(22937040089/62500000000 : ℚ), (-434475979/1250000000 : ℚ), (109736146709/1000000000000 : ℚ), 2⟩,
    ⟨(370596311949/1000000000000 : ℚ), (-92187961/250000000 : ℚ), (117543557507/1000000000000 : ℚ), 2⟩,
    ⟨(373653996513/1000000000000 : ℚ), (-964540441/2500000000 : ℚ), (123893424019/1000000000000 : ℚ), 2⟩,
    ⟨(376136247943/1000000000000 : ℚ), (-399109417/1000000000 : ℚ), (2013701487/15625000000 : ℚ), 2⟩,
    ⟨(378019160801/1000000000000 : ℚ), (-4088794247/10000000000 : ℚ), (26512181213/200000000000 : ℚ), 2⟩,
    ⟨(189642300803/500000000000 : ℚ), (-2076503421/5000000000 : ℚ), (33748079003/250000000000 : ℚ), 2⟩,
    ⟨(23745023967/62500000000 : ℚ), (-2092421501/5000000000 : ℚ), (136200823093/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-2094405003/5000000000 : ℚ), (17043944181/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (371114686741/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control523.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control523.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate523
