import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate214
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12953861113/50000000000 : ℚ), (263329678549/200000000 : ℚ), (-34189424715227/100000000000 : ℚ), 11⟩,
    ⟨(3248747077/12500000000 : ℚ), (287118536117/2000000000 : ℚ), (-755920410021/20000000000 : ℚ), 8⟩,
    ⟨(261536932413/1000000000000 : ℚ), (501513803339/10000000000 : ℚ), (-13468031661277/1000000000000 : ℚ), 7⟩,
    ⟨(263972954213/1000000000000 : ℚ), (123078076533/5000000000 : ℚ), (-845656672439/125000000000 : ℚ), 6⟩,
    ⟨(133592185669/500000000000 : ℚ), (35545701307/2500000000 : ℚ), (-4006713941049/1000000000000 : ℚ), 5⟩,
    ⟨(135570128043/500000000000 : ℚ), (22561481799/2500000000 : ℚ), (-16313329103/6250000000 : ℚ), 5⟩,
    ⟨(2206420089/8000000000 : ℚ), (12167580013/2000000000 : ℚ), (-90333220093/50000000000 : ℚ), 4⟩,
    ⟨(70281559097/250000000000 : ℚ), (42710089071/10000000000 : ℚ), (-1302324753547/1000000000000 : ℚ), 4⟩,
    ⟨(287060161493/1000000000000 : ℚ), (3853373077/1250000000 : ℚ), (-482511708541/500000000000 : ℚ), 4⟩,
    ⟨(36693392437/125000000000 : ℚ), (2833124961/1250000000 : ℚ), (-364134924423/500000000000 : ℚ), 3⟩,
    ⟨(300524697253/1000000000000 : ℚ), (4212186629/2500000000 : ℚ), (-555637226771/1000000000000 : ℚ), 3⟩,
    ⟨(307925637069/1000000000000 : ℚ), (1257843983/1000000000 : ℚ), (-85163049841/200000000000 : ℚ), 3⟩,
    ⟨(315678683847/1000000000000 : ℚ), (9364429107/10000000000 : ℚ), (-325666715041/1000000000000 : ℚ), 3⟩,
    ⟨(323709171509/1000000000000 : ℚ), (3447067011/5000000000 : ℚ), (-246739662873/1000000000000 : ℚ), 3⟩,
    ⟨(82984940517/250000000000 : ℚ), (248049901/500000000 : ℚ), (-91700349389/500000000000 : ℚ), 3⟩,
    ⟨(170145595219/500000000000 : ℚ), (3424521431/10000000000 : ℚ), (-65891071711/500000000000 : ℚ), 2⟩,
    ⟨(1743415139/5000000000 : ℚ), (2186769263/10000000000 : ℚ), (-44580669649/500000000000 : ℚ), 2⟩,
    ⟨(35703445617/100000000000 : ℚ), (1178036523/10000000000 : ℚ), (-26790313279/500000000000 : ℚ), 2⟩,
    ⟨(365265046729/1000000000000 : ℚ), (173907561/5000000000 : ℚ), (-590173039/25000000000 : ℚ), 2⟩,
    ⟨(373295534391/1000000000000 : ℚ), (-341059769/10000000000 : ℚ), (912403383/500000000000 : ℚ), 2⟩,
    ⟨(381048581169/1000000000000 : ℚ), (-458148457/5000000000 : ℚ), (11758027701/500000000000 : ℚ), 2⟩,
    ⟨(77689904197/200000000000 : ℚ), (-699393221/5000000000 : ℚ), (21038086243/500000000000 : ℚ), 2⟩,
    ⟨(197713539371/500000000000 : ℚ), (-1804423583/10000000000 : ℚ), (2318884449/40000000000 : ℚ), 2⟩,
    ⟨(80382811349/200000000000 : ℚ), (-134086937/625000000 : ℚ), (14312748827/200000000000 : ℚ), 2⟩,
    ⟨(8156959637/20000000000 : ℚ), (-486214737/2000000000 : ℚ), (20782335653/250000000000 : ℚ), 2⟩,
    ⟨(413171707113/1000000000000 : ℚ), (-2668720017/10000000000 : ℚ), (18576844781/200000000000 : ℚ), 2⟩,
    ⟨(417833962151/1000000000000 : ℚ), (-2863924023/10000000000 : ℚ), (504972811/5000000000 : ℚ), 2⟩,
    ⟨(421789846899/1000000000000 : ℚ), (-1510489893/5000000000 : ℚ), (26896925597/250000000000 : ℚ), 2⟩,
    ⟨(17000050561/40000000000 : ℚ), (-1571571189/5000000000 : ℚ), (112759889019/1000000000000 : ℚ), 2⟩,
    ⟨(17097491433/40000000000 : ℚ), (-3232819023/10000000000 : ℚ), (932656237/8000000000 : ℚ), 2⟩,
    ⟨(214537226039/500000000000 : ℚ), (-3291706719/10000000000 : ℚ), (119103914953/1000000000000 : ℚ), 2⟩,
    ⟨(214948497989/500000000000 : ℚ), (-3320887319/10000000000 : ℚ), (30089294559/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3324522693/10000000000 : ℚ), (7532092537/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (288420864491/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control214.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control214.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate214
