import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate385
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(74090380911/250000000000 : ℚ), (2470359895351/2000000000 : ℚ), (-366849838019939/1000000000000 : ℚ), 12⟩,
    ⟨(29724526021/100000000000 : ℚ), (673922710287/5000000000 : ℚ), (-20278013967417/500000000000 : ℚ), 8⟩,
    ⟨(11960168899/40000000000 : ℚ), (1841411811/39062500 : ℚ), (-2890485009757/200000000000 : ℚ), 7⟩,
    ⟨(301621470671/1000000000000 : ℚ), (46337869749/2000000000 : ℚ), (-3630244943923/500000000000 : ℚ), 6⟩,
    ⟨(305071799267/1000000000000 : ℚ), (134026081417/10000000000 : ℚ), (-4300701971269/1000000000000 : ℚ), 5⟩,
    ⟨(309321979713/1000000000000 : ℚ), (85204897791/10000000000 : ℚ), (-10946509183/3906250000 : ℚ), 5⟩,
    ⟨(1227855783/3906250000 : ℚ), (14384498233/2500000000 : ℚ), (-485085793139/250000000000 : ℚ), 4⟩,
    ⟨(160025430547/500000000000 : ℚ), (5058555139/1250000000 : ℚ), (-699686155179/500000000000 : ℚ), 4⟩,
    ⟨(65285247407/200000000000 : ℚ), (7317310167/2500000000 : ℚ), (-129707961629/125000000000 : ℚ), 4⟩,
    ⟨(333395809917/1000000000000 : ℚ), (21570699323/10000000000 : ℚ), (-391937194111/500000000000 : ℚ), 4⟩,
    ⟨(170446229471/500000000000 : ℚ), (8040406823/5000000000 : ℚ), (-299459366677/500000000000 : ℚ), 3⟩,
    ⟨(87210996821/250000000000 : ℚ), (12047929231/10000000000 : ℚ), (-459930087207/1000000000000 : ℚ), 3⟩,
    ⟨(11161681793/31250000000 : ℚ), (1802318241/2000000000 : ℚ), (-176405298233/500000000000 : ℚ), 3⟩,
    ⟨(365801728401/1000000000000 : ℚ), (83470559/125000000 : ℚ), (-33561097509/125000000000 : ℚ), 3⟩,
    ⟨(374644628861/1000000000000 : ℚ), (2425770043/5000000000 : ℚ), (-200916667807/1000000000000 : ℚ), 3⟩,
    ⟨(383617356789/1000000000000 : ℚ), (3400809097/10000000000 : ℚ), (-36485046157/250000000000 : ℚ), 3⟩,
    ⟨(39263349991/100000000000 : ℚ), (1116502941/5000000000 : ℚ), (-50316630513/500000000000 : ℚ), 3⟩,
    ⟨(200803113919/500000000000 : ℚ), (64112223/500000000 : ℚ), (-62890189421/1000000000000 : ℚ), 3⟩,
    ⟨(205224564149/500000000000 : ℚ), (500713637/10000000000 : ℚ), (-31167783923/1000000000000 : ℚ), 2⟩,
    ⟨(419077039323/1000000000000 : ℚ), (-146822929/10000000000 : ℚ), (-2158781267/500000000000 : ℚ), 2⟩,
    ⟨(85481373883/200000000000 : ℚ), (-686680201/10000000000 : ℚ), (18526268929/1000000000000 : ℚ), 2⟩,
    ⟨(435358397757/1000000000000 : ℚ), (-1138731653/10000000000 : ℚ), (19011643289/500000000000 : ℚ), 2⟩,
    ⟨(221427523391/500000000000 : ℚ), (-303624997/2000000000 : ℚ), (54680115233/1000000000000 : ℚ), 2⟩,
    ⟨(28114038729/62500000000 : ℚ), (-1836489343/10000000000 : ℚ), (34444107013/500000000000 : ℚ), 2⟩,
    ⟨(91239999121/200000000000 : ℚ), (-1051398711/5000000000 : ℚ), (80951122011/1000000000000 : ℚ), 2⟩,
    ⟨(461919776251/1000000000000 : ℚ), (-2323988993/10000000000 : ℚ), (9110438981/100000000000 : ℚ), 2⟩,
    ⟨(233464438493/500000000000 : ℚ), (-2505426547/10000000000 : ℚ), (2488258463/25000000000 : ℚ), 2⟩,
    ⟨(58897382179/125000000000 : ℚ), (-2651230629/10000000000 : ℚ), (106369083997/1000000000000 : ℚ), 2⟩,
    ⟨(118657346507/250000000000 : ℚ), (-1382263627/5000000000 : ℚ), (22345360701/200000000000 : ℚ), 2⟩,
    ⟨(29827914639/62500000000 : ℚ), (-2847629551/10000000000 : ℚ), (57840952923/500000000000 : ℚ), 2⟩,
    ⟨(479005596489/1000000000000 : ℚ), (-725542207/2500000000 : ℚ), (118289556001/1000000000000 : ℚ), 2⟩,
    ⟨(95977866611/200000000000 : ℚ), (-585837063/2000000000 : ℚ), (4783394111/40000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1466275321/5000000000 : ℚ), (119746369837/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (40300468973/125000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control385.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control385.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate385
