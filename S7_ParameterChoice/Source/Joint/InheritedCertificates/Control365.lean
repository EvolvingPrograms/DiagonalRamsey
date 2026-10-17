import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate365
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(291593802319/1000000000000 : ℚ), (23158855513/16000000 : ℚ), (-26428880192193/62500000000 : ℚ), 12⟩,
    ⟨(146178055893/500000000000 : ℚ), (790731747263/5000000000 : ℚ), (-46734531355149/1000000000000 : ℚ), 9⟩,
    ⟨(18367086829/62500000000 : ℚ), (277008523501/5000000000 : ℚ), (-416104943959/25000000000 : ℚ), 7⟩,
    ⟨(296131022541/1000000000000 : ℚ), (68188138301/2500000000 : ℚ), (-522114887393/62500000000 : ℚ), 6⟩,
    ⟨(149553634687/500000000000 : ℚ), (158019132131/10000000000 : ℚ), (-617747487513/125000000000 : ℚ), 5⟩,
    ⟨(236541771/781250000 : ℚ), (100576760113/10000000000 : ℚ), (-3214700657409/1000000000000 : ℚ), 5⟩,
    ⟨(307094307571/1000000000000 : ℚ), (1359310173/200000000 : ℚ), (-444209596871/200000000000 : ℚ), 5⟩,
    ⟨(4875440303/15625000000 : ℚ), (47804440581/10000000000 : ℚ), (-1597406267651/1000000000000 : ℚ), 4⟩,
    ⟨(317527566457/1000000000000 : ℚ), (34547353239/10000000000 : ℚ), (-590199993561/500000000000 : ℚ), 4⟩,
    ⟨(64707901333/200000000000 : ℚ), (25412368851/10000000000 : ℚ), (-221947654023/250000000000 : ℚ), 4⟩,
    ⟨(20625381359/62500000000 : ℚ), (9440880557/5000000000 : ℚ), (-674523305007/1000000000000 : ℚ), 3⟩,
    ⟨(336865074849/1000000000000 : ℚ), (7035936417/5000000000 : ℚ), (-32139948997/62500000000 : ℚ), 3⟩,
    ⟨(172025185159/500000000000 : ℚ), (5220449439/5000000000 : ℚ), (-390687316157/1000000000000 : ℚ), 3⟩,
    ⟨(35149278983/100000000000 : ℚ), (1528472101/2000000000 : ℚ), (-58682152721/200000000000 : ℚ), 3⟩,
    ⟨(71824131763/200000000000 : ℚ), (5446840741/10000000000 : ℚ), (-215437889547/1000000000000 : ℚ), 3⟩,
    ⟨(14674420669/40000000000 : ℚ), (3697937451/10000000000 : ℚ), (-151980276209/1000000000000 : ℚ), 3⟩,
    ⟨(374637824499/1000000000000 : ℚ), (2286359741/10000000000 : ℚ), (-99665185837/1000000000000 : ℚ), 3⟩,
    ⟨(382377682409/1000000000000 : ℚ), (283528073/2500000000 : ℚ), (-28032851103/500000000000 : ℚ), 3⟩,
    ⟨(195002775697/500000000000 : ℚ), (92260841/5000000000 : ℚ), (-9701770747/500000000000 : ℚ), 2⟩,
    ⟨(198723985453/500000000000 : ℚ), (-120846533/2000000000 : ℚ), (5822188993/500000000000 : ℚ), 2⟩,
    ⟨(3237066131/8000000000 : ℚ), (-1263419169/10000000000 : ℚ), (19037529069/500000000000 : ℚ), 2⟩,
    ⟨(10287305987/25000000000 : ℚ), (-181667611/1000000000 : ℚ), (60647581939/1000000000000 : ℚ), 2⟩,
    ⟨(417958834559/1000000000000 : ℚ), (-2282035569/10000000000 : ℚ), (39972271521/500000000000 : ℚ), 2⟩,
    ⟨(423970774767/1000000000000 : ℚ), (-1336674721/5000000000 : ℚ), (48207820883/500000000000 : ℚ), 2⟩,
    ⟨(53683770229/125000000000 : ℚ), (-960419/3200000 : ℚ), (110409141993/1000000000000 : ℚ), 2⟩,
    ⟨(434404033653/1000000000000 : ℚ), (-3274185741/10000000000 : ℚ), (7637181571/62500000000 : ℚ), 2⟩,
    ⟨(54840609293/125000000000 : ℚ), (-437296083/1250000000 : ℚ), (32995365983/250000000000 : ℚ), 2⟩,
    ⟨(8847821437/20000000000 : ℚ), (-919691753/2500000000 : ℚ), (69964397021/500000000000 : ℚ), 2⟩,
    ⟨(445367318683/1000000000000 : ℚ), (-954775839/2500000000 : ℚ), (73078950789/500000000000 : ℚ), 2⟩,
    ⟨(11190623799/25000000000 : ℚ), (-1961065483/5000000000 : ℚ), (150757990583/1000000000000 : ℚ), 2⟩,
    ⟨(224571114719/500000000000 : ℚ), (-79795813/200000000 : ℚ), (30758344811/200000000000 : ℚ), 2⟩,
    ⟨(89980907781/200000000000 : ℚ), (-1005829877/2500000000 : ℚ), (38824730667/250000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-4027496667/10000000000 : ℚ), (155486874913/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (1176579339/4000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control365.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control365.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate365
