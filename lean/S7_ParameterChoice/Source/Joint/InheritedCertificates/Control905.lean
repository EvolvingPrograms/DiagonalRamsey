import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate905
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2184234789103/46827564839900 : ℚ), (103068053359/1000000000 : ℚ), (-4814116198239/1000000000000 : ℚ)⟩,
  ⟨(2184234789103/46827564839900 : ℚ), (174993070729/3722024332250 : ℚ), (11766154599/1250000000 : ℚ), (-445646620033/1000000000000 : ℚ)⟩,
  ⟨(174993070729/3722024332250 : ℚ), (96981800671/2038437429400 : ℚ), (19688750147/10000000000 : ℚ), (-3826419143/40000000000 : ℚ)⟩,
  ⟨(96981800671/2038437429400 : ℚ), (20157964331/417873270700 : ℚ), (-695624147/10000000000 : ℚ), (82582631/62500000000 : ℚ)⟩,
  ⟨(20157964331/417873270700 : ℚ), (20392862369/417012731700 : ℚ), (-9053089561/10000000000 : ℚ), (20818625379/500000000000 : ℚ)⟩,
  ⟨(20392862369/417012731700 : ℚ), (10942723683/221230743100 : ℚ), (-6611608439/5000000000 : ℚ), (62030113127/1000000000000 : ℚ)⟩,
  ⟨(10942723683/221230743100 : ℚ), (824990193/16554017350 : ℚ), (-15435524309/10000000000 : ℚ), (7297283681/100000000000 : ℚ)⟩,
  ⟨(824990193/16554017350 : ℚ), (599959717/12003166300 : ℚ), (-328575307/200000000 : ℚ), (4870173623/62500000000 : ℚ)⟩,
  ⟨(599959717/12003166300 : ℚ), (1/20 : ℚ), (-16548797013/10000000000 : ℚ), (15704547537/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3451202987/20000000000 : ℚ), (-1/10 : ℚ), (4788937631/50000000000 : ℚ)⟩,
  ⟨(3451202987/20000000000 : ℚ), (71424693/400000000 : ℚ), (-599959717/6001583150 : ℚ), (5747898777516697417/60015831500000000000 : ℚ)⟩,
  ⟨(71424693/400000000 : ℚ), (4564475691/20000000000 : ℚ), (-824990193/8277008675 : ℚ), (7922791873788242449/82770086750000000000 : ℚ)⟩,
  ⟨(4564475691/20000000000 : ℚ), (3388391561/10000000000 : ℚ), (-10942723683/110615371550 : ℚ), (211386145380296825063/2212307431000000000000 : ℚ)⟩,
  ⟨(3388391561/10000000000 : ℚ), (10946910439/20000000000 : ℚ), (-20392862369/208506365850 : ℚ), (396871474739011126277/4170127317000000000000 : ℚ)⟩,
  ⟨(10946910439/20000000000 : ℚ), (19304375853/20000000000 : ℚ), (-20157964331/208936635350 : ℚ), (78931674347205738643/835746541400000000000 : ℚ)⟩,
  ⟨(19304375853/20000000000 : ℚ), (39688750147/20000000000 : ℚ), (-96981800671/1019218714700 : ℚ), (1899107455221508197587/20384374294000000000000 : ℚ)⟩,
  ⟨(39688750147/20000000000 : ℚ), (14266154599/2500000000 : ℚ), (-174993070729/1861012166125 : ℚ), (6769499945422564163451/74440486645000000000000 : ℚ)⟩,
  ⟨(14266154599/2500000000 : ℚ), (32/1 : ℚ), (-2184234789103/23413782419950 : ℚ), (40599589502084610500409/468275648399000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (831857721043/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(11649090357/250000000000 : ℚ), (103068053359/1000000000 : ℚ), (-4814116198239/1000000000000 : ℚ), 13⟩,
    ⟨(46852934703/1000000000000 : ℚ), (11766154599/1250000000 : ℚ), (-445646620033/1000000000000 : ℚ), 10⟩,
    ⟨(47327020299/1000000000000 : ℚ), (19688750147/10000000000 : ℚ), (-3826419143/40000000000 : ℚ), 9⟩,
    ⟨(2397322149/50000000000 : ℚ), (-695624147/10000000000 : ℚ), (82582631/62500000000 : ℚ), 8⟩,
    ⟨(48616901259/1000000000000 : ℚ), (-9053089561/10000000000 : ℚ), (20818625379/500000000000 : ℚ), 8⟩,
    ⟨(49236323941/1000000000000 : ℚ), (-6611608439/5000000000 : ℚ), (62030113127/1000000000000 : ℚ), 7⟩,
    ⟨(776725149/15625000000 : ℚ), (-15435524309/10000000000 : ℚ), (7297283681/100000000000 : ℚ), 7⟩,
    ⟨(12491745703/250000000000 : ℚ), (-328575307/200000000 : ℚ), (4870173623/62500000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-16548797013/10000000000 : ℚ), (15704547537/200000000000 : ℚ), 7⟩]
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
theorem certOK : JointInheritedControls.control905.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control905.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate905
