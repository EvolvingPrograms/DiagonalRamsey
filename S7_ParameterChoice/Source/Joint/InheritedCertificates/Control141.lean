import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate141
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(194210375231/1000000000000 : ℚ), (3081461316597/5000000000 : ℚ), (-120273026513309/1000000000000 : ℚ), 10⟩,
    ⟨(195585701069/1000000000000 : ℚ), (82815223289/1250000000 : ℚ), (-3327616801017/250000000000 : ℚ), 7⟩,
    ⟨(198323107607/1000000000000 : ℚ), (227056586227/10000000000 : ℚ), (-118836693839/25000000000 : ℚ), 6⟩,
    ⟨(202396232121/1000000000000 : ℚ), (109124167621/10000000000 : ℚ), (-2395924736521/1000000000000 : ℚ), 5⟩,
    ⟨(103882924099/500000000000 : ℚ), (30855831743/5000000000 : ℚ), (-712862938951/500000000000 : ℚ), 4⟩,
    ⟨(107190121749/500000000000 : ℚ), (9598265241/2500000000 : ℚ), (-116822233071/125000000000 : ℚ), 4⟩,
    ⟨(222175717779/1000000000000 : ℚ), (25422816057/10000000000 : ℚ), (-326019943101/500000000000 : ℚ), 3⟩,
    ⟨(115538598181/500000000000 : ℚ), (549452951/312500000 : ℚ), (-237349160641/500000000000 : ℚ), 3⟩,
    ⟨(240998953143/1000000000000 : ℚ), (6274139673/5000000000 : ℚ), (-356085477199/1000000000000 : ℚ), 3⟩,
    ⟨(12592271809/50000000000 : ℚ), (9163220951/10000000000 : ℚ), (-27280963013/100000000000 : ℚ), 3⟩,
    ⟨(32939023489/125000000000 : ℚ), (3400922999/5000000000 : ℚ), (-106027870801/500000000000 : ℚ), 2⟩,
    ⟨(137943425571/500000000000 : ℚ), (637993031/1250000000 : ℚ), (-166327815449/1000000000000 : ℚ), 2⟩,
    ⟨(288850251099/1000000000000 : ℚ), (770290243/2000000000 : ℚ), (-131006349659/1000000000000 : ℚ), 2⟩,
    ⟨(151138771577/500000000000 : ℚ), (581383409/2000000000 : ℚ), (-5156058657/50000000000 : ℚ), 2⟩,
    ⟨(63207883029/200000000000 : ℚ), (1090385597/5000000000 : ℚ), (-20173626149/250000000000 : ℚ), 2⟩,
    ⟨(330003332721/1000000000000 : ℚ), (806494593/5000000000 : ℚ), (-62370285429/1000000000000 : ℚ), 2⟩,
    ⟨(344034815723/1000000000000 : ℚ), (145296989/1250000000 : ℚ), (-47195560781/1000000000000 : ℚ), 2⟩,
    ⟨(357998733299/1000000000000 : ℚ), (800070507/10000000000 : ℚ), (-34486561801/1000000000000 : ℚ), 2⟩,
    ⟨(37176060529/100000000000 : ℚ), (63185801/1250000000 : ℚ), (-370999087/15625000000 : ℚ), 2⟩,
    ⟨(77037579469/200000000000 : ℚ), (263705143/10000000000 : ℚ), (-14597566389/1000000000000 : ℚ), 2⟩,
    ⟨(199075648651/500000000000 : ℚ), (12752831/2000000000 : ℚ), (-6769641337/1000000000000 : ℚ), 2⟩,
    ⟨(102631490133/250000000000 : ℚ), (-102491071/10000000000 : ℚ), (-49526827/1000000000000 : ℚ), 2⟩,
    ⟨(52774089033/125000000000 : ℚ), (-241190433/10000000000 : ℚ), (5723803869/1000000000000 : ℚ), 2⟩,
    ⟨(433039195301/1000000000000 : ℚ), (-178491199/5000000000 : ℚ), (1067420117/100000000000 : ℚ), 2⟩,
    ⟨(221480476041/500000000000 : ℚ), (-453415849/10000000000 : ℚ), (1862161517/125000000000 : ℚ), 2⟩,
    ⟨(90372486133/200000000000 : ℚ), (-533211707/10000000000 : ℚ), (4616752651/250000000000 : ℚ), 2⟩,
    ⟨(229828952473/500000000000 : ℚ), (-299229013/5000000000 : ℚ), (10720206119/500000000000 : ℚ), 2⟩,
    ⟨(233136150123/500000000000 : ℚ), (-650751041/10000000000 : ℚ), (11930624163/500000000000 : ℚ), 2⟩,
    ⟨(471641916323/1000000000000 : ℚ), (-5400761/78125000 : ℚ), (12881312769/500000000000 : ℚ), 2⟩,
    ⟨(475715040837/1000000000000 : ℚ), (-90123499/1250000000 : ℚ), (27168974323/1000000000000 : ℚ), 2⟩,
    ⟨(3827619579/8000000000 : ℚ), (-740450269/10000000000 : ℚ), (28097479109/1000000000000 : ℚ), 2⟩,
    ⟨(479827773213/1000000000000 : ℚ), (-150016823/2000000000 : ℚ), (14279537101/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-751283837/10000000000 : ℚ), (1788540659/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (87908138197/250000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control141.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control141.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate141
