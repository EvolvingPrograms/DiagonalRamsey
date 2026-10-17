import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate344
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(273157832009/1000000000000 : ℚ), (12140256496097/10000000000 : ℚ), (-20772901896969/62500000000 : ℚ), 12⟩,
    ⟨(137004431107/500000000000 : ℚ), (1324045979213/10000000000 : ℚ), (-4592973284551/125000000000 : ℚ), 8⟩,
    ⟨(137851363369/500000000000 : ℚ), (231361977481/5000000000 : ℚ), (-2618771045967/200000000000 : ℚ), 7⟩,
    ⟨(13911155637/50000000000 : ℚ), (227222916027/10000000000 : ℚ), (-3288952161459/500000000000 : ℚ), 6⟩,
    ⟨(70386436881/250000000000 : ℚ), (131316184067/10000000000 : ℚ), (-3896268048891/1000000000000 : ℚ), 5⟩,
    ⟨(285638632301/1000000000000 : ℚ), (83397692041/10000000000 : ℚ), (-634659612219/250000000000 : ℚ), 5⟩,
    ⟨(58092470071/200000000000 : ℚ), (28128994263/5000000000 : ℚ), (-878800300699/500000000000 : ℚ), 4⟩,
    ⟨(295970446641/1000000000000 : ℚ), (9880983039/2500000000 : ℚ), (-126736527929/100000000000 : ℚ), 4⟩,
    ⟨(18881867199/62500000000 : ℚ), (28551600121/10000000000 : ℚ), (-939524991939/1000000000000 : ℚ), 4⟩,
    ⟨(308821509929/1000000000000 : ℚ), (21013441689/10000000000 : ℚ), (-709443333699/1000000000000 : ℚ), 3⟩,
    ⟨(79010178541/250000000000 : ℚ), (3128152767/2000000000 : ℚ), (-27085465209/50000000000 : ℚ), 3⟩,
    ⟨(79027823/244140625 : ℚ), (2339142519/2000000000 : ℚ), (-415606652947/1000000000000 : ℚ), 3⟩,
    ⟨(331719512967/1000000000000 : ℚ), (8726464923/10000000000 : ℚ), (-318363963819/1000000000000 : ℚ), 3⟩,
    ⟨(34002811213/100000000000 : ℚ), (6444516069/10000000000 : ℚ), (-241764013817/1000000000000 : ℚ), 3⟩,
    ⟨(174271872073/500000000000 : ℚ), (4659158679/10000000000 : ℚ), (-9016458023/50000000000 : ℚ), 3⟩,
    ⟨(357184398823/1000000000000 : ℚ), (162031177/500000000 : ℚ), (-26059576649/200000000000 : ℚ), 3⟩,
    ⟨(365866861933/1000000000000 : ℚ), (2098413663/10000000000 : ℚ), (-22255363237/250000000000 : ℚ), 3⟩,
    ⟨(37450751661/100000000000 : ℚ), (584041877/5000000000 : ℚ), (-54594568517/1000000000000 : ℚ), 2⟩,
    ⟨(191511574313/500000000000 : ℚ), (402909007/10000000000 : ℚ), (-12810854897/500000000000 : ℚ), 2⟩,
    ⟨(391331747789/1000000000000 : ℚ), (-231513941/10000000000 : ℚ), (-213009831/200000000000 : ℚ), 2⟩,
    ⟨(99838324437/250000000000 : ℚ), (-760852591/10000000000 : ℚ), (19857084001/1000000000000 : ℚ), 2⟩,
    ⟨(407010546591/1000000000000 : ℚ), (-1204471667/10000000000 : ℚ), (37739534021/1000000000000 : ℚ), 2⟩,
    ⟨(414229750827/1000000000000 : ℚ), (-1577115871/10000000000 : ℚ), (662982853/12500000000 : ℚ), 2⟩,
    ⟨(105235346393/250000000000 : ℚ), (-1890093417/10000000000 : ℚ), (66106457983/1000000000000 : ℚ), 2⟩,
    ⟨(213540407057/500000000000 : ℚ), (-538030201/2500000000 : ℚ), (38607803603/500000000000 : ℚ), 2⟩,
    ⟨(432588910401/1000000000000 : ℚ), (-2369933457/10000000000 : ℚ), (43288625507/500000000000 : ℚ), 2⟩,
    ⟨(87482525691/200000000000 : ℚ), (-318591453/1250000000 : ℚ), (18870912093/200000000000 : ℚ), 2⟩,
    ⟨(27594094577/62500000000 : ℚ), (-107700331/400000000 : ℚ), (100672718709/1000000000000 : ℚ), 2⟩,
    ⟨(27801759251/62500000000 : ℚ), (-2804290791/10000000000 : ℚ), (1056264311/10000000000 : ℚ), 2⟩,
    ⟨(223674267009/500000000000 : ℚ), (-288631823/1000000000 : ℚ), (21857106181/200000000000 : ℚ), 2⟩,
    ⟨(224521199271/500000000000 : ℚ), (-2940169083/10000000000 : ℚ), (111699087527/1000000000000 : ℚ), 2⟩,
    ⟨(449893428747/1000000000000 : ℚ), (-2966849651/10000000000 : ℚ), (22579658343/200000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2970173373/10000000000 : ℚ), (56523920737/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (164026745507/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control344.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control344.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate344
