import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate506
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276314618033/1000000000000 : ℚ), (16185561410099/10000000000 : ℚ), (-223965746908363/500000000000 : ℚ), 12⟩,
    ⟨(276909838037/1000000000000 : ℚ), (1771091397993/10000000000 : ℚ), (-12370174989047/250000000000 : ℚ), 9⟩,
    ⟨(278094545751/1000000000000 : ℚ), (24864025061/400000000 : ℚ), (-17604465813561/1000000000000 : ℚ), 7⟩,
    ⟨(279857331793/1000000000000 : ℚ), (153285565367/5000000000 : ℚ), (-8822021265937/1000000000000 : ℚ), 7⟩,
    ⟨(282181219569/1000000000000 : ℚ), (35572996317/2000000000 : ℚ), (-2603801601327/500000000000 : ℚ), 6⟩,
    ⟨(285043828769/1000000000000 : ℚ), (14162729857/1250000000 : ℚ), (-675546291317/200000000000 : ℚ), 5⟩,
    ⟨(144208795451/500000000000 : ℚ), (76563733859/10000000000 : ℚ), (-581254069211/250000000000 : ℚ), 5⟩,
    ⟨(146135007397/500000000000 : ℚ), (5379201651/1000000000 : ℚ), (-832131639907/500000000000 : ℚ), 5⟩,
    ⟨(148281999749/500000000000 : ℚ), (38775135227/10000000000 : ℚ), (-611201141367/500000000000 : ℚ), 4⟩,
    ⟨(301258191593/1000000000000 : ℚ), (14197714953/5000000000 : ℚ), (-456157661059/500000000000 : ℚ), 4⟩,
    ⟨(306307383443/1000000000000 : ℚ), (20950637747/10000000000 : ℚ), (-686274642479/1000000000000 : ℚ), 4⟩,
    ⟨(311662948571/1000000000000 : ℚ), (15448735607/10000000000 : ℚ), (-258178869687/500000000000 : ℚ), 4⟩,
    ⟨(317273309957/1000000000000 : ℚ), (11280813533/10000000000 : ℚ), (-96337409471/250000000000 : ℚ), 3⟩,
    ⟨(323084436753/1000000000000 : ℚ), (2014248723/2500000000 : ℚ), (-7054324687/25000000000 : ℚ), 3⟩,
    ⟨(41130045579/125000000000 : ℚ), (1379691651/2500000000 : ℚ), (-779071991/3906250000 : ℚ), 3⟩,
    ⟨(335083734753/1000000000000 : ℚ), (3489621197/10000000000 : ℚ), (-66042669123/500000000000 : ℚ), 3⟩,
    ⟨(170578173079/500000000000 : ℚ), (923008989/5000000000 : ℚ), (-7652883269/100000000000 : ℚ), 3⟩,
    ⟨(347199716279/1000000000000 : ℚ), (3122779/62500000 : ℚ), (-3020213483/100000000000 : ℚ), 3⟩,
    ⟨(176577822079/500000000000 : ℚ), (-613775401/10000000000 : ℚ), (8778170671/1000000000000 : ℚ), 3⟩,
    ⟨(179483385477/500000000000 : ℚ), (-1541747939/10000000000 : ℚ), (41812979189/1000000000000 : ℚ), 3⟩,
    ⟨(18228856617/50000000000 : ℚ), (-463968431/2000000000 : ℚ), (17489352041/250000000000 : ℚ), 3⟩,
    ⟨(92483174367/250000000000 : ℚ), (-371872363/1250000000 : ℚ), (94014175903/1000000000000 : ℚ), 3⟩,
    ⟨(187490944659/500000000000 : ℚ), (-3527711657/10000000000 : ℚ), (28649672529/250000000000 : ℚ), 3⟩,
    ⟨(379676081413/1000000000000 : ℚ), (-99845913/250000000 : ℚ), (132185273477/1000000000000 : ℚ), 3⟩,
    ⟨(383970066117/1000000000000 : ℚ), (-4385546339/10000000000 : ℚ), (147140555277/1000000000000 : ℚ), 3⟩,
    ⟨(387822490009/1000000000000 : ℚ), (-4712269099/10000000000 : ℚ), (79873980403/500000000000 : ℚ), 3⟩,
    ⟨(391196252143/1000000000000 : ℚ), (-4981283637/10000000000 : ℚ), (85112951899/500000000000 : ℚ), 2⟩,
    ⟨(394058861343/1000000000000 : ℚ), (-1039635049/2000000000 : ℚ), (178741428337/1000000000000 : ℚ), 2⟩,
    ⟨(198191374559/500000000000 : ℚ), (-536717373/1000000000 : ℚ), (7416819273/40000000000 : ℚ), 2⟩,
    ⟨(9953638379/25000000000 : ℚ), (-2745701507/5000000000 : ℚ), (38071123409/200000000000 : ℚ), 2⟩,
    ⟨(199665121437/500000000000 : ℚ), (-5573062173/10000000000 : ℚ), (38722332581/200000000000 : ℚ), 2⟩,
    ⟨(399925462879/1000000000000 : ℚ), (-5613551353/10000000000 : ℚ), (97614860781/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-561859673/1000000000 : ℚ), (97715758921/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (38917921769/125000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control506.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control506.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate506
