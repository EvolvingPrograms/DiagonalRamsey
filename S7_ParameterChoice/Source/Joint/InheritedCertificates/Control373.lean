import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate373
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(45655292281/200000000000 : ℚ), (184329556207/125000000 : ℚ), (-337249669662701/1000000000000 : ℚ), 12⟩,
    ⟨(228862240291/1000000000000 : ℚ), (1611137937683/10000000000 : ℚ), (-37261760886387/1000000000000 : ℚ), 9⟩,
    ⟨(23002815669/100000000000 : ℚ), (141073856791/2500000000 : ℚ), (-13262533503259/1000000000000 : ℚ), 7⟩,
    ⟨(231762982191/1000000000000 : ℚ), (277682521097/10000000000 : ℚ), (-1662563262879/250000000000 : ℚ), 6⟩,
    ⟨(234050009477/1000000000000 : ℚ), (80371501413/5000000000 : ℚ), (-3928870046771/1000000000000 : ℚ), 6⟩,
    ⟨(236867213223/1000000000000 : ℚ), (51089270439/5000000000 : ℚ), (-1275505345597/500000000000 : ℚ), 5⟩,
    ⟨(120093731109/500000000000 : ℚ), (68916444867/10000000000 : ℚ), (-1758225666107/1000000000000 : ℚ), 5⟩,
    ⟨(4879575613/20000000000 : ℚ), (24170776231/5000000000 : ℚ), (-1260507912461/1000000000000 : ℚ), 4⟩,
    ⟨(15512791003/62500000000 : ℚ), (34802497701/10000000000 : ℚ), (-57972253899/62500000000 : ℚ), 4⟩,
    ⟨(63206097731/250000000000 : ℚ), (25464541001/10000000000 : ℚ), (-346890730113/500000000000 : ℚ), 4⟩,
    ⟨(16112093419/62500000000 : ℚ), (18781067309/10000000000 : ℚ), (-261626179867/500000000000 : ℚ), 3⟩,
    ⟨(131532056101/500000000000 : ℚ), (554063493/400000000 : ℚ), (-197474361401/500000000000 : ℚ), 3⟩,
    ⟨(67146371123/250000000000 : ℚ), (2530996057/2500000000 : ℚ), (-59182535437/200000000000 : ℚ), 3⟩,
    ⟨(13715221887/50000000000 : ℚ), (3622603221/5000000000 : ℚ), (-3403248003/15625000000 : ℚ), 3⟩,
    ⟨(280165895299/1000000000000 : ℚ), (24907569/50000000 : ℚ), (-155078142179/1000000000000 : ℚ), 3⟩,
    ⟨(286113408129/1000000000000 : ℚ), (3173590173/10000000000 : ℚ), (-103909006577/1000000000000 : ℚ), 3⟩,
    ⟨(29208969843/100000000000 : ℚ), (855071943/5000000000 : ℚ), (-30807746011/500000000000 : ℚ), 3⟩,
    ⟨(298037211261/1000000000000 : ℚ), (10235757/200000000 : ℚ), (-13133680129/500000000000 : ℚ), 3⟩,
    ⟨(15194933441/50000000000 : ℚ), (-119781779/2500000000 : ℚ), (1773982477/500000000000 : ℚ), 3⟩,
    ⟨(309617622067/1000000000000 : ℚ), (-1305107541/10000000000 : ℚ), (5775946597/200000000000 : ℚ), 3⟩,
    ⟨(315138994357/1000000000000 : ℚ), (-249737851/1250000000 : ℚ), (12629232063/250000000000 : ℚ), 2⟩,
    ⟨(20025600741/62500000000 : ℚ), (-516297121/2000000000 : ℚ), (34529338669/500000000000 : ℚ), 2⟩,
    ⟨(81344678909/250000000000 : ℚ), (-3074117029/10000000000 : ℚ), (42481673637/500000000000 : ℚ), 2⟩,
    ⟨(329998450511/1000000000000 : ℚ), (-3489802187/10000000000 : ℚ), (98583428999/1000000000000 : ℚ), 2⟩,
    ⟨(334224325909/1000000000000 : ℚ), (-479916467/1250000000 : ℚ), (110190742031/1000000000000 : ℚ), 2⟩,
    ⟨(338015644341/1000000000000 : ℚ), (-516379603/1250000000 : ℚ), (11999491931/100000000000 : ℚ), 2⟩,
    ⟨(42666986667/125000000000 : ℚ), (-4371342017/10000000000 : ℚ), (16019641709/125000000000 : ℚ), 2⟩,
    ⟨(344153097083/1000000000000 : ℚ), (-4565173151/10000000000 : ℚ), (134800381917/1000000000000 : ℚ), 2⟩,
    ⟨(21652507773/62500000000 : ℚ), (-4716258873/10000000000 : ℚ), (35004304397/250000000000 : ℚ), 2⟩,
    ⟨(348174949869/1000000000000 : ℚ), (-37713691/78125000 : ℚ), (28775107731/200000000000 : ℚ), 2⟩,
    ⟨(349340866269/1000000000000 : ℚ), (-1225098007/2500000000 : ℚ), (73211419681/500000000000 : ℚ), 2⟩,
    ⟨(174963322577/500000000000 : ℚ), (-1234152937/2500000000 : ℚ), (14768920149/100000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-494112531/1000000000 : ℚ), (36961789899/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (165618985751/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control373.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control373.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate373
