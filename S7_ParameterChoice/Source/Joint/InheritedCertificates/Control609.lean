import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate609
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5107312357/20000000000 : ℚ), (8660594244861/5000000000 : ℚ), (-442897479093749/1000000000000 : ℚ), 13⟩,
    ⟨(255821033651/1000000000000 : ℚ), (948711702403/5000000000 : ℚ), (-24449125978601/500000000000 : ℚ), 9⟩,
    ⟨(5134549587/20000000000 : ℚ), (333385375451/5000000000 : ℚ), (-271533196623/15625000000 : ℚ), 8⟩,
    ⟨(258076225381/1000000000000 : ℚ), (41148849553/1250000000 : ℚ), (-8693768195923/1000000000000 : ℚ), 7⟩,
    ⟨(12992714129/50000000000 : ℚ), (95549368409/5000000000 : ℚ), (-1279922711921/250000000000 : ℚ), 6⟩,
    ⟨(52408905457/200000000000 : ℚ), (7607395873/625000000 : ℚ), (-662042839113/200000000000 : ℚ), 6⟩,
    ⟨(264625866243/1000000000000 : ℚ), (82165407823/10000000000 : ℚ), (-2269204176023/1000000000000 : ℚ), 5⟩,
    ⟨(66893359937/250000000000 : ℚ), (57596781407/10000000000 : ℚ), (-1615770749907/1000000000000 : ℚ), 5⟩,
    ⟨(529021213/1953125000 : ℚ), (8271349053/2000000000 : ℚ), (-294694516341/250000000000 : ℚ), 5⟩,
    ⟨(68612622441/250000000000 : ℚ), (117589727/39062500 : ℚ), (-872082043451/1000000000000 : ℚ), 4⟩,
    ⟨(69578434131/250000000000 : ℚ), (2200939241/1000000000 : ℚ), (-324244270641/500000000000 : ℚ), 4⟩,
    ⟨(282411396157/1000000000000 : ℚ), (4002766833/2500000000 : ℚ), (-120096800273/250000000000 : ℚ), 4⟩,
    ⟨(143352002981/500000000000 : ℚ), (5726886459/5000000000 : ℚ), (-1403021587/4000000000 : ℚ), 4⟩,
    ⟨(1819688911/6250000000 : ℚ), (1979553981/2500000000 : ℚ), (-124319716741/500000000000 : ℚ), 4⟩,
    ⟨(147853618011/500000000000 : ℚ), (320379899/625000000 : ℚ), (-83368152601/500000000000 : ℚ), 3⟩,
    ⟨(300331150251/1000000000000 : ℚ), (1443553497/5000000000 : ℚ), (-2500748031/25000000000 : ℚ), 3⟩,
    ⟨(152488718811/500000000000 : ℚ), (1067974439/10000000000 : ℚ), (-11246821321/250000000000 : ℚ), 3⟩,
    ⟨(309601351851/1000000000000 : ℚ), (-85349699/2000000000 : ℚ), (186702039/200000000000 : ℚ), 3⟩,
    ⟨(157079181057/500000000000 : ℚ), (-416651081/2500000000 : ℚ), (7918887401/200000000000 : ℚ), 3⟩,
    ⟨(318604581911/1000000000000 : ℚ), (-1351524681/5000000000 : ℚ), (36190015577/500000000000 : ℚ), 3⟩,
    ⟨(80724297929/250000000000 : ℚ), (-3574647803/10000000000 : ℚ), (100332572679/1000000000000 : ℚ), 3⟩,
    ⟨(6539897027/20000000000 : ℚ), (-862121593/2000000000 : ℚ), (62122204599/500000000000 : ℚ), 3⟩,
    ⟨(330858098109/1000000000000 : ℚ), (-4933238121/10000000000 : ℚ), (28944466237/200000000000 : ℚ), 3⟩,
    ⟨(334449726817/1000000000000 : ℚ), (-5459682617/10000000000 : ℚ), (81116659921/500000000000 : ℚ), 3⟩,
    ⟨(540376237/1600000000 : ℚ), (-295158441/500000000 : ℚ), (44284407243/250000000000 : ℚ), 3⟩,
    ⟨(34068272163/100000000000 : ℚ), (-1568478797/2500000000 : ℚ), (1897130853/10000000000 : ℚ), 3⟩,
    ⟨(85816015147/250000000000 : ℚ), (-6579800113/10000000000 : ℚ), (8006927133/40000000000 : ℚ), 3⟩,
    ⟨(345454305293/1000000000000 : ℚ), (-6826858549/10000000000 : ℚ), (52170165683/250000000000 : ℚ), 3⟩,
    ⟨(86808090623/250000000000 : ℚ), (-3509825939/5000000000 : ℚ), (215357831821/1000000000000 : ℚ), 3⟩,
    ⟨(348581108523/1000000000000 : ℚ), (-895192759/1250000000 : ℚ), (220294246257/1000000000000 : ℚ), 3⟩,
    ⟨(174743777111/500000000000 : ℚ), (-7254891297/10000000000 : ℚ), (223552442773/1000000000000 : ℚ), 3⟩,
    ⟨(43742871253/125000000000 : ℚ), (-7301201203/10000000000 : ℚ), (56292992343/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1826743263/2500000000 : ℚ), (225373967623/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (345979657679/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control609.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control609.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate609
