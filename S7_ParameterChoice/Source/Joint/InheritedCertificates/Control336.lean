import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate336
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16322524653/62500000000 : ℚ), (1086612700717/1000000000 : ℚ), (-284489928594519/1000000000000 : ℚ), 11⟩,
    ⟨(13103458039/50000000000 : ℚ), (591753895247/5000000000 : ℚ), (-31456360192103/1000000000000 : ℚ), 8⟩,
    ⟨(131938970763/500000000000 : ℚ), (206434958847/5000000000 : ℚ), (-11213563287667/1000000000000 : ℚ), 7⟩,
    ⟨(266569317139/1000000000000 : ℚ), (202349368883/10000000000 : ℚ), (-1409080599173/250000000000 : ℚ), 6⟩,
    ⟨(135058684101/500000000000 : ℚ), (116718423853/10000000000 : ℚ), (-1670498491849/500000000000 : ℚ), 5⟩,
    ⟨(137243962521/500000000000 : ℚ), (73997183741/10000000000 : ℚ), (-2178927715919/1000000000000 : ℚ), 5⟩,
    ⟨(279638896809/1000000000000 : ℚ), (49842408449/10000000000 : ℚ), (-188796990109/125000000000 : ℚ), 4⟩,
    ⟨(71380169207/250000000000 : ℚ), (34977037557/10000000000 : ℚ), (-109072431533/100000000000 : ℚ), 4⟩,
    ⟨(146038310171/500000000000 : ℚ), (12624871777/5000000000 : ℚ), (-4050321171/5000000000 : ℚ), 4⟩,
    ⟨(299243590031/1000000000000 : ℚ), (18581036851/10000000000 : ℚ), (-153267777247/250000000000 : ℚ), 3⟩,
    ⟨(15347628203/50000000000 : ℚ), (108111043/78125000 : ℚ), (-117358914831/250000000000 : ℚ), 3⟩,
    ⟨(63025860159/200000000000 : ℚ), (5181525161/5000000000 : ℚ), (-90356651913/250000000000 : ℚ), 3⟩,
    ⟨(32369505379/100000000000 : ℚ), (3876437947/5000000000 : ℚ), (-17382073537/62500000000 : ℚ), 3⟩,
    ⟨(166283665081/500000000000 : ℚ), (2875428567/5000000000 : ℚ), (-106231445737/500000000000 : ℚ), 3⟩,
    ⟨(4270758563/12500000000 : ℚ), (4187435443/10000000000 : ℚ), (-39947087463/250000000000 : ℚ), 3⟩,
    ⟨(70177508889/200000000000 : ℚ), (736847971/2500000000 : ℚ), (-116871162203/1000000000000 : ℚ), 3⟩,
    ⟨(360159048677/1000000000000 : ℚ), (390099109/2000000000 : ℚ), (-81445493789/1000000000000 : ℚ), 2⟩,
    ⟨(369385908081/1000000000000 : ℚ), (284925179/2500000000 : ℚ), (-51881869077/1000000000000 : ℚ), 2⟩,
    ⟨(378479262959/1000000000000 : ℚ), (473713321/10000000000 : ℚ), (-26987143721/1000000000000 : ℚ), 2⟩,
    ⟨(387351539331/1000000000000 : ℚ), (-77823089/10000000000 : ℚ), (-2937145311/500000000000 : ℚ), 2⟩,
    ⟨(395917292327/1000000000000 : ℚ), (-33595109/625000000 : ℚ), (6062268947/500000000000 : ℚ), 2⟩,
    ⟨(404094029061/1000000000000 : ℚ), (-922418189/10000000000 : ℚ), (6879344097/250000000000 : ℚ), 2⟩,
    ⟨(41180300309/100000000000 : ℚ), (-155683287/1250000000 : ℚ), (20346906253/500000000000 : ℚ), 2⟩,
    ⟨(20948498639/50000000000 : ℚ), (-1516589089/10000000000 : ℚ), (25977169679/500000000000 : ℚ), 2⟩,
    ⟨(212762958147/500000000000 : ℚ), (-871713849/5000000000 : ℚ), (15382881489/250000000000 : ℚ), 2⟩,
    ⟨(431407696313/1000000000000 : ℚ), (-1931881839/10000000000 : ℚ), (6960550561/100000000000 : ℚ), 2⟩,
    ⟨(436558668079/1000000000000 : ℚ), (-2086503783/10000000000 : ℚ), (9539430353/125000000000 : ℚ), 2⟩,
    ⟨(440929224919/1000000000000 : ℚ), (-2210787517/10000000000 : ℚ), (40884047917/500000000000 : ℚ), 2⟩,
    ⟨(222238637991/500000000000 : ℚ), (-144211341/625000000 : ℚ), (21511057803/250000000000 : ℚ), 2⟩,
    ⟨(111792162899/250000000000 : ℚ), (-2378244157/10000000000 : ℚ), (1784068159/20000000000 : ℚ), 2⟩,
    ⟨(224488716171/500000000000 : ℚ), (-484951267/2000000000 : ℚ), (91287480043/1000000000000 : ℚ), 2⟩,
    ⟨(449886198673/1000000000000 : ℚ), (-305974779/1250000000 : ℚ), (92323054589/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2450668541/10000000000 : ℚ), (9245220213/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (173609359821/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control336.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control336.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate336
