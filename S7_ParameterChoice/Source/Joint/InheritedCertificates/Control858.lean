import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate858
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (236007915413/1935739076240 : ℚ), (373606559137/5000000000 : ℚ), (-9144536966887/1000000000000 : ℚ)⟩,
  ⟨(236007915413/1935739076240 : ℚ), (662104606637/5295836547400 : ℚ), (6970444159/1000000000 : ℚ), (-110532490929/125000000000 : ℚ)⟩,
  ⟨(662104606637/5295836547400 : ℚ), (183813280557/1417073586200 : ℚ), (4186519029/2500000000 : ℚ), (-44431064159/200000000000 : ℚ)⟩,
  ⟨(183813280557/1417073586200 : ℚ), (7668018779/56691538300 : ℚ), (1287670127/5000000000 : ℚ), (-19171020119/500000000000 : ℚ)⟩,
  ⟨(7668018779/56691538300 : ℚ), (38923805599/276435626900 : ℚ), (-386726697/1250000000 : ℚ), (1198067111/31250000000 : ℚ)⟩,
  ⟨(38923805599/276435626900 : ℚ), (10454880467/71854598950 : ℚ), (-1171633969/2000000000 : ℚ), (77261953151/1000000000000 : ℚ)⟩,
  ⟨(10454880467/71854598950 : ℚ), (1889154373/12710625980 : ℚ), (-56994233/78125000 : ℚ), (19634342817/200000000000 : ℚ)⟩,
  ⟨(1889154373/12710625980 : ℚ), (57174764/381517285 : ℚ), (-7930793123/10000000000 : ℚ), (2152349719/20000000000 : ℚ)⟩,
  ⟨(57174764/381517285 : ℚ), (3/20 : ℚ), (-400354829/500000000 : ℚ), (10876098123/100000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (99645171/500000000 : ℚ), (-3/20 : ℚ), (13865453253/100000000000 : ℚ)⟩,
  ⟨(99645171/500000000 : ℚ), (2069206877/10000000000 : ℚ), (-57174764/381517285 : ℚ), (1057771450882696971/7630345700000000000 : ℚ)⟩,
  ⟨(2069206877/10000000000 : ℚ), (21130767/78125000 : ℚ), (-1889154373/12710625980 : ℚ), (17587907348509772931/127106259800000000000 : ℚ)⟩,
  ⟨(21130767/78125000 : ℚ), (828366031/2000000000 : ℚ), (-10454880467/71854598950 : ℚ), (197637211525458040599/1437091979000000000000 : ℚ)⟩,
  ⟨(828366031/2000000000 : ℚ), (863273303/1250000000 : ℚ), (-38923805599/276435626900 : ℚ), (46849419540680898933/345544533625000000000 : ℚ)⟩,
  ⟨(863273303/1250000000 : ℚ), (6287670127/5000000000 : ℚ), (-7668018779/56691538300 : ℚ), (9336406599182431089/70864422875000000000 : ℚ)⟩,
  ⟨(6287670127/5000000000 : ℚ), (6686519029/2500000000 : ℚ), (-183813280557/1417073586200 : ℚ), (884089810792682013161/7085367931000000000000 : ℚ)⟩,
  ⟨(6686519029/2500000000 : ℚ), (7970444159/1000000000 : ℚ), (-662104606637/5295836547400 : ℚ), (2971858767606059275031/26479182737000000000000 : ℚ)⟩,
  ⟨(7970444159/1000000000 : ℚ), (32/1 : ℚ), (-236007915413/1935739076240 : ℚ), (4234785394951070181283/48393476906000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (685535131577/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(4860886621/40000000000 : ℚ), (373606559137/5000000000 : ℚ), (-9144536966887/1000000000000 : ℚ), 10⟩,
    ⟨(24733776651/200000000000 : ℚ), (6970444159/1000000000 : ℚ), (-110532490929/125000000000 : ℚ), 7⟩,
    ⟨(127635500401/1000000000000 : ℚ), (4186519029/2500000000 : ℚ), (-44431064159/200000000000 : ℚ), 6⟩,
    ⟨(132818135459/1000000000000 : ℚ), (1287670127/5000000000 : ℚ), (-19171020119/500000000000 : ℚ), 5⟩,
    ⟨(138427779223/1000000000000 : ℚ), (-386726697/1250000000 : ℚ), (1198067111/31250000000 : ℚ), 5⟩,
    ⟨(143610414281/1000000000000 : ℚ), (-1171633969/2000000000 : ℚ), (77261953151/1000000000000 : ℚ), 5⟩,
    ⟨(147577031427/1000000000000 : ℚ), (-56994233/78125000 : ℚ), (19634342817/200000000000 : ℚ), 5⟩,
    ⟨(149723749157/1000000000000 : ℚ), (-7930793123/10000000000 : ℚ), (2152349719/20000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-400354829/500000000 : ℚ), (10876098123/100000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control858.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control858.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate858
