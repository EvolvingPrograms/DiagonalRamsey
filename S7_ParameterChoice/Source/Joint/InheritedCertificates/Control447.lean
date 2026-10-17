import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate447
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(34408862501/125000000000 : ℚ), (13251404288789/10000000000 : ℚ), (-182743787572439/500000000000 : ℚ), 12⟩,
    ⟨(55203102783/200000000000 : ℚ), (90458010807/625000000 : ℚ), (-40393955413569/1000000000000 : ℚ), 9⟩,
    ⟨(277497570691/1000000000000 : ℚ), (253385141519/5000000000 : ℚ), (-1798290836943/125000000000 : ℚ), 7⟩,
    ⟨(139851398659/500000000000 : ℚ), (249347331577/10000000000 : ℚ), (-7220782103139/1000000000000 : ℚ), 6⟩,
    ⟨(282609956259/1000000000000 : ℚ), (36092430919/2500000000 : ℚ), (-213589897853/50000000000 : ℚ), 6⟩,
    ⟨(286191049983/1000000000000 : ℚ), (18366006729/2000000000 : ℚ), (-347351522971/125000000000 : ℚ), 5⟩,
    ⟨(290411590601/1000000000000 : ℚ), (62013869329/10000000000 : ℚ), (-383980137081/200000000000 : ℚ), 5⟩,
    ⟨(295230931999/1000000000000 : ℚ), (2179427117/500000000 : ℚ), (-690392484839/500000000000 : ℚ), 4⟩,
    ⟨(150301330643/500000000000 : ℚ), (15739006183/5000000000 : ℚ), (-510128813493/500000000000 : ℚ), 4⟩,
    ⟨(30647504577/100000000000 : ℚ), (11568295729/5000000000 : ℚ), (-767239428493/1000000000000 : ℚ), 4⟩,
    ⟨(312791531181/1000000000000 : ℚ), (17175656643/10000000000 : ℚ), (-145697423187/250000000000 : ℚ), 3⟩,
    ⟨(319491286309/1000000000000 : ℚ), (12786889187/10000000000 : ℚ), (-222063518689/500000000000 : ℚ), 3⟩,
    ⟨(81627447213/250000000000 : ℚ), (2368700399/2500000000 : ℚ), (-168603287133/500000000000 : ℚ), 3⟩,
    ⟨(333779446793/1000000000000 : ℚ), (3461313831/5000000000 : ℚ), (-126495649999/500000000000 : ℚ), 3⟩,
    ⟨(341230249351/1000000000000 : ℚ), (984138919/2000000000 : ℚ), (-185456649163/1000000000000 : ℚ), 3⟩,
    ⟨(13951617649/40000000000 : ℚ), (3326114591/10000000000 : ℚ), (-65232542799/500000000000 : ℚ), 3⟩,
    ⟨(71277442727/200000000000 : ℚ), (2039082131/10000000000 : ℚ), (-85102708427/1000000000000 : ℚ), 3⟩,
    ⟨(363947405509/1000000000000 : ℚ), (988403789/10000000000 : ℚ), (-47273148611/1000000000000 : ℚ), 3⟩,
    ⟨(92849552017/250000000000 : ℚ), (122374267/10000000000 : ℚ), (-15440702767/1000000000000 : ℚ), 3⟩,
    ⟨(47333483251/125000000000 : ℚ), (-29857029/500000000 : ℚ), (5768427201/500000000000 : ℚ), 3⟩,
    ⟨(385686368551/1000000000000 : ℚ), (-299659181/2500000000 : ℚ), (34519879929/1000000000000 : ℚ), 2⟩,
    ⟨(392386123679/1000000000000 : ℚ), (-851821821/5000000000 : ℚ), (2708153677/50000000000 : ℚ), 2⟩,
    ⟨(39870260909/100000000000 : ℚ), (-2128574479/10000000000 : ℚ), (2217768371/31250000000 : ℚ), 2⟩,
    ⟨(16182999743/40000000000 : ℚ), (-2486029357/10000000000 : ℚ), (85323729449/1000000000000 : ℚ), 2⟩,
    ⟨(409946722861/1000000000000 : ℚ), (-174107959/625000000 : ℚ), (48764085143/500000000000 : ℚ), 2⟩,
    ⟨(414766064259/1000000000000 : ℚ), (-758795387/2500000000 : ℚ), (107813881497/1000000000000 : ℚ), 2⟩,
    ⟨(418986604877/1000000000000 : ℚ), (-3240193263/10000000000 : ℚ), (58179958317/500000000000 : ℚ), 2⟩,
    ⟨(422567698601/1000000000000 : ℚ), (-3405216291/10000000000 : ℚ), (3082586877/25000000000 : ℚ), 2⟩,
    ⟨(212737428771/500000000000 : ℚ), (-3533626213/10000000000 : ℚ), (128748212851/1000000000000 : ℚ), 2⟩,
    ⟨(427680084169/1000000000000 : ℚ), (-3627918427/10000000000 : ℚ), (16596307299/125000000000 : ℚ), 2⟩,
    ⟨(85832428189/200000000000 : ℚ), (-1844925623/5000000000 : ℚ), (27084755427/200000000000 : ℚ), 2⟩,
    ⟨(107476688713/250000000000 : ℚ), (-3720545107/10000000000 : ℚ), (136742182457/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-372436921/1000000000 : ℚ), (5476264043/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (33445764887/100000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control447.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control447.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate447
