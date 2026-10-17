import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate316
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(243370719843/1000000000000 : ℚ), (12533688158529/10000000000 : ℚ), (-152857096904719/500000000000 : ℚ), 12⟩,
    ⟨(244124478123/1000000000000 : ℚ), (683464304333/5000000000 : ℚ), (-33793077652817/1000000000000 : ℚ), 8⟩,
    ⟨(245624735579/1000000000000 : ℚ), (477665695707/10000000000 : ℚ), (-481569462917/40000000000 : ℚ), 7⟩,
    ⟨(30982130489/125000000000 : ℚ), (58628024263/2500000000 : ℚ), (-604563684127/100000000000 : ℚ), 6⟩,
    ⟨(250799904771/1000000000000 : ℚ), (33870115983/2500000000 : ℚ), (-28631311473/8000000000 : ℚ), 5⟩,
    ⟨(254424976799/1000000000000 : ℚ), (3439775253/400000000 : ℚ), (-2330024067087/1000000000000 : ℚ), 5⟩,
    ⟨(258697348569/1000000000000 : ℚ), (57961754483/10000000000 : ℚ), (-1611476629203/1000000000000 : ℚ), 4⟩,
    ⟨(263575874807/1000000000000 : ℚ), (10168197407/2500000000 : ℚ), (-1160395993293/1000000000000 : ℚ), 4⟩,
    ⟨(269013572637/1000000000000 : ℚ), (29332777181/10000000000 : ℚ), (-858670355733/1000000000000 : ℚ), 4⟩,
    ⟨(274958074057/1000000000000 : ℚ), (21538561883/10000000000 : ℚ), (-40427896687/62500000000 : ℚ), 3⟩,
    ⟨(281352130269/1000000000000 : ℚ), (3995058283/2500000000 : ℚ), (-123088269491/250000000000 : ℚ), 3⟩,
    ⟨(36016770377/125000000000 : ℚ), (2973992647/2500000000 : ℚ), (-376136500991/1000000000000 : ℚ), 3⟩,
    ⟨(59047771523/200000000000 : ℚ), (8819287813/10000000000 : ℚ), (-286450682431/1000000000000 : ℚ), 3⟩,
    ⟨(302597791973/1000000000000 : ℚ), (645233339/1000000000 : ℚ), (-215739014479/1000000000000 : ℚ), 3⟩,
    ⟨(310140095531/1000000000000 : ℚ), (4598240153/10000000000 : ℚ), (-3974127237/25000000000 : ℚ), 3⟩,
    ⟨(15889656589/50000000000 : ℚ), (3123066713/10000000000 : ℚ), (-112671289711/1000000000000 : ℚ), 3⟩,
    ⟨(1627415989/5000000000 : ℚ), (1933425847/10000000000 : ℚ), (-9302976649/125000000000 : ℚ), 3⟩,
    ⟨(6662724681/20000000000 : ℚ), (962832731/10000000000 : ℚ), (-21236450103/500000000000 : ℚ), 2⟩,
    ⟨(340678537607/1000000000000 : ℚ), (163101483/10000000000 : ℚ), (-15537887153/1000000000000 : ℚ), 2⟩,
    ⟨(174018735983/500000000000 : ℚ), (-125307687/2500000000 : ℚ), (7332729139/1000000000000 : ℚ), 2⟩,
    ⟨(71028433313/200000000000 : ℚ), (-264151787/2500000000 : ℚ), (6713683181/250000000000 : ℚ), 2⟩,
    ⟨(22620262457/62500000000 : ℚ), (-1522964553/10000000000 : ℚ), (43572014793/1000000000000 : ℚ), 2⟩,
    ⟨(368318255523/1000000000000 : ℚ), (-957735951/5000000000 : ℚ), (57901066701/1000000000000 : ℚ), 2⟩,
    ⟨(23391422309/62500000000 : ℚ), (-2245753123/10000000000 : ℚ), (14032514497/200000000000 : ℚ), 2⟩,
    ⟨(189850227387/500000000000 : ℚ), (-504552023/2000000000 : ℚ), (80604215483/1000000000000 : ℚ), 2⟩,
    ⟨(384578981011/1000000000000 : ℚ), (-688350957/2500000000 : ℚ), (89417382857/1000000000000 : ℚ), 2⟩,
    ⟨(194425676391/500000000000 : ℚ), (-294301511/1000000000 : ℚ), (604684683/6250000000 : ℚ), 2⟩,
    ⟨(392476424809/1000000000000 : ℚ), (-3095683581/10000000000 : ℚ), (102713537627/1000000000000 : ℚ), 2⟩,
    ⟨(395419285669/1000000000000 : ℚ), (-1607253681/5000000000 : ℚ), (53697233391/500000000000 : ℚ), 2⟩,
    ⟨(397651594001/1000000000000 : ℚ), (-3301776189/10000000000 : ℚ), (55427470207/500000000000 : ℚ), 2⟩,
    ⟨(399151851457/1000000000000 : ℚ), (-419887917/1250000000 : ℚ), (113138850791/1000000000000 : ℚ), 2⟩,
    ⟨(199952804869/500000000000 : ℚ), (-3387516831/10000000000 : ℚ), (57137024979/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3391056929/10000000000 : ℚ), (114415637183/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (331913113047/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control316.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control316.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate316
