import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate406
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133176216217/500000000000 : ℚ), (2654030010549/2000000000 : ℚ), (-354163913333383/1000000000000 : ℚ), 12⟩,
    ⟨(133545920803/500000000000 : ℚ), (724489744867/5000000000 : ℚ), (-39143306669111/1000000000000 : ℚ), 9⟩,
    ⟨(134281769517/500000000000 : ℚ), (507157794297/10000000000 : ℚ), (-13941511693149/1000000000000 : ℚ), 7⟩,
    ⟨(270753351469/1000000000000 : ℚ), (249432996327/10000000000 : ℚ), (-6997972837527/1000000000000 : ℚ), 6⟩,
    ⟨(273640189819/1000000000000 : ℚ), (5774259617/400000000 : ℚ), (-4140337842429/1000000000000 : ℚ), 6⟩,
    ⟨(138598126127/500000000000 : ℚ), (91782056767/10000000000 : ℚ), (-1346790184537/500000000000 : ℚ), 5⟩,
    ⟨(281387291947/1000000000000 : ℚ), (30977858189/5000000000 : ℚ), (-372248683251/200000000000 : ℚ), 5⟩,
    ⟨(17885809181/62500000000 : ℚ), (21765240793/5000000000 : ℚ), (-1338786256749/1000000000000 : ℚ), 4⟩,
    ⟨(291507128627/1000000000000 : ℚ), (3928044211/1250000000 : ℚ), (-989376738249/1000000000000 : ℚ), 4⟩,
    ⟨(148669233027/500000000000 : ℚ), (11544466931/5000000000 : ℚ), (-372069046719/500000000000 : ℚ), 4⟩,
    ⟨(303610800211/1000000000000 : ℚ), (3426861363/2000000000 : ℚ), (-70667054421/125000000000 : ℚ), 3⟩,
    ⟨(31026372509/100000000000 : ℚ), (12751534291/10000000000 : ℚ), (-215448318581/500000000000 : ℚ), 3⟩,
    ⟨(317233169387/1000000000000 : ℚ), (4722423757/5000000000 : ℚ), (-163604762541/500000000000 : ℚ), 3⟩,
    ⟨(64890402709/200000000000 : ℚ), (862171943/1250000000 : ℚ), (-245518794023/1000000000000 : ℚ), 3⟩,
    ⟨(331850736149/1000000000000 : ℚ), (2449717267/5000000000 : ℚ), (-179987377433/1000000000000 : ℚ), 3⟩,
    ⟨(169679041727/500000000000 : ℚ), (3308174779/10000000000 : ℚ), (-63303445409/500000000000 : ℚ), 3⟩,
    ⟨(173450877801/500000000000 : ℚ), (31622707/156250000 : ℚ), (-41277385687/500000000000 : ℚ), 3⟩,
    ⟨(354409102907/1000000000000 : ℚ), (243837313/2500000000 : ℚ), (-45800731953/1000000000000 : ℚ), 3⟩,
    ⟨(36180782551/100000000000 : ℚ), (111032333/10000000000 : ℚ), (-14857828393/1000000000000 : ℚ), 3⟩,
    ⟨(92256667417/250000000000 : ℚ), (-121431883/2000000000 : ℚ), (568978771/50000000000 : ℚ), 2⟩,
    ⟨(187998056983/500000000000 : ℚ), (-1207654947/10000000000 : ℚ), (33743985317/1000000000000 : ℚ), 2⟩,
    ⟨(76529807769/200000000000 : ℚ), (-1711923303/10000000000 : ℚ), (52868651207/1000000000000 : ℚ), 2⟩,
    ⟨(388921373001/1000000000000 : ℚ), (-2136324343/10000000000 : ℚ), (69239054431/1000000000000 : ℚ), 2⟩,
    ⟨(394752710429/1000000000000 : ℚ), (-77919129/312500000 : ℚ), (650230157/7812500000 : ℚ), 2⟩,
    ⟨(625135769/1562500000 : ℚ), (-349108331/1250000000 : ℚ), (3805172073/40000000000 : ℚ), 2⟩,
    ⟨(404872547109/1000000000000 : ℚ), (-3042168467/10000000000 : ℚ), (21032501851/200000000000 : ℚ), 2⟩,
    ⟨(204531793401/500000000000 : ℚ), (-405886539/1250000000 : ℚ), (22700368323/200000000000 : ℚ), 2⟩,
    ⟨(103154912309/250000000000 : ℚ), (-136482831/400000000 : ℚ), (60139806197/500000000000 : ℚ), 2⟩,
    ⟨(415506487587/1000000000000 : ℚ), (-3540462953/10000000000 : ℚ), (3139893583/25000000000 : ℚ), 2⟩,
    ⟨(417696300021/1000000000000 : ℚ), (-3634751893/10000000000 : ℚ), (2023809161/15625000000 : ℚ), 2⟩,
    ⟨(8383359949/20000000000 : ℚ), (-739337431/2000000000 : ℚ), (132115342939/1000000000000 : ℚ), 2⟩,
    ⟨(209953703311/500000000000 : ℚ), (-1863691797/5000000000 : ℚ), (66701586281/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1865604041/5000000000 : ℚ), (16695472921/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (66071008287/200000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control406.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control406.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate406
