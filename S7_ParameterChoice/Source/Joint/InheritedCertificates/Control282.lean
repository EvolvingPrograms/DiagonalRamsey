import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate282
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289776307913/1000000000000 : ℚ), (14087379485401/10000000000 : ℚ), (-409055007029321/1000000000000 : ℚ), 12⟩,
    ⟨(290595487553/1000000000000 : ℚ), (1538037928783/10000000000 : ℚ), (-904312779251/20000000000 : ℚ), 8⟩,
    ⟨(146112978843/500000000000 : ℚ), (269138951321/5000000000 : ℚ), (-16108372304323/1000000000000 : ℚ), 7⟩,
    ⟨(294652015993/1000000000000 : ℚ), (264734694047/10000000000 : ℚ), (-8088872314507/1000000000000 : ℚ), 6⟩,
    ⟨(297850298207/1000000000000 : ℚ), (38307544491/2500000000 : ℚ), (-2394246926381/500000000000 : ℚ), 5⟩,
    ⟨(3772375039/12500000000 : ℚ), (97453738991/10000000000 : ℚ), (-3117659696441/1000000000000 : ℚ), 5⟩,
    ⟨(153216594611/500000000000 : ℚ), (65821112709/10000000000 : ℚ), (-2156483897293/1000000000000 : ℚ), 4⟩,
    ⟨(311735140091/1000000000000 : ℚ), (5785982269/1250000000 : ℚ), (-776614495461/500000000000 : ℚ), 4⟩,
    ⟨(317644795043/1000000000000 : ℚ), (8364972481/2500000000 : ℚ), (-1149855861891/1000000000000 : ℚ), 4⟩,
    ⟨(32410524087/100000000000 : ℚ), (2463247297/1000000000 : ℚ), (-216702963723/250000000000 : ℚ), 3⟩,
    ⟨(331054259947/1000000000000 : ℚ), (9165262139/5000000000 : ℚ), (-82564184389/125000000000 : ℚ), 3⟩,
    ⟨(338424929421/1000000000000 : ℚ), (213993783/156250000 : ℚ), (-505462713/1000000000 : ℚ), 3⟩,
    ⟨(86536566429/250000000000 : ℚ), (10201642633/10000000000 : ℚ), (-385939567197/1000000000000 : ℚ), 3⟩,
    ⟨(22133994259/62500000000 : ℚ), (3756221041/5000000000 : ℚ), (-145914510769/500000000000 : ℚ), 3⟩,
    ⟨(181170417517/500000000000 : ℚ), (5405544241/10000000000 : ℚ), (-216387729063/1000000000000 : ℚ), 3⟩,
    ⟨(370658105501/1000000000000 : ℚ), (932352933/2500000000 : ℚ), (-154984413347/1000000000000 : ℚ), 3⟩,
    ⟨(379015619683/1000000000000 : ℚ), (2378243551/10000000000 : ℚ), (-104357343267/1000000000000 : ℚ), 3⟩,
    ⟨(7746657803/20000000000 : ℚ), (255320617/2000000000 : ℚ), (-15539940643/250000000000 : ℚ), 2⟩,
    ⟨(395529817041/1000000000000 : ℚ), (369726823/10000000000 : ℚ), (-26672350329/1000000000000 : ℚ), 2⟩,
    ⟨(100881864867/250000000000 : ℚ), (-38275943/1000000000 : ℚ), (169197101/50000000000 : ℚ), 2⟩,
    ⟨(411248795763/1000000000000 : ℚ), (-1579713/15625000 : ℚ), (3621604639/125000000000 : ℚ), 2⟩,
    ⟨(209309732619/500000000000 : ℚ), (-307565317/2000000000 : ℚ), (25414021939/500000000000 : ℚ), 2⟩,
    ⟨(212784242157/500000000000 : ℚ), (-99027893/500000000 : ℚ), (34756349413/500000000000 : ℚ), 2⟩,
    ⟨(432028930141/1000000000000 : ℚ), (-588136121/2500000000 : ℚ), (10682692999/125000000000 : ℚ), 2⟩,
    ⟨(437938585093/1000000000000 : ℚ), (-2664074833/10000000000 : ℚ), (49505675273/500000000000 : ℚ), 2⟩,
    ⟨(443240535963/1000000000000 : ℚ), (-584621163/2000000000 : ℚ), (11042318277/100000000000 : ℚ), 2⟩,
    ⟨(27992732629/62500000000 : ℚ), (-627157053/2000000000 : ℚ), (59949444549/500000000000 : ℚ), 2⟩,
    ⟨(225911713489/500000000000 : ℚ), (-3306836589/10000000000 : ℚ), (31898355843/250000000000 : ℚ), 2⟩,
    ⟨(455021709191/1000000000000 : ℚ), (-429980333/1250000000 : ℚ), (13362408437/100000000000 : ℚ), 2⟩,
    ⟨(228723883749/500000000000 : ℚ), (-442181791/1250000000 : ℚ), (27615482407/200000000000 : ℚ), 2⟩,
    ⟨(459078237631/1000000000000 : ℚ), (-90038521/250000000 : ℚ), (70507121777/500000000000 : ℚ), 2⟩,
    ⟨(459897417271/1000000000000 : ℚ), (-181664703/500000000 : ℚ), (142473263371/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-363724977/1000000000 : ℚ), (71327602879/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (281408875403/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control282.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control282.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate282
