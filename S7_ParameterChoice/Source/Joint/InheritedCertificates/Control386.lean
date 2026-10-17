import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate386
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(310910395223/1000000000000 : ℚ), (12585276375079/10000000000 : ℚ), (-392119360687483/1000000000000 : ℚ), 12⟩,
    ⟨(311820364643/1000000000000 : ℚ), (1373650254663/10000000000 : ℚ), (-5418813348601/125000000000 : ℚ), 8⟩,
    ⟨(313631539981/1000000000000 : ℚ), (480593689939/10000000000 : ℚ), (-7724458985101/500000000000 : ℚ), 7⟩,
    ⟨(79081619657/250000000000 : ℚ), (118153094779/5000000000 : ℚ), (-1552328365287/200000000000 : ℚ), 6⟩,
    ⟨(79969806713/250000000000 : ℚ), (136761687783/10000000000 : ℚ), (-4598035097487/1000000000000 : ℚ), 5⟩,
    ⟨(20265973109/62500000000 : ℚ), (86989947787/10000000000 : ℚ), (-1498246809099/500000000000 : ℚ), 5⟩,
    ⟨(82353340183/250000000000 : ℚ), (58778064027/10000000000 : ℚ), (-2075234257737/1000000000000 : ℚ), 4⟩,
    ⟨(335302927467/1000000000000 : ℚ), (8273658621/2000000000 : ℚ), (-299417830229/200000000000 : ℚ), 4⟩,
    ⟨(341867550203/1000000000000 : ℚ), (29943370873/10000000000 : ℚ), (-1110565496183/1000000000000 : ℚ), 4⟩,
    ⟨(349044008033/1000000000000 : ℚ), (5522034621/2500000000 : ℚ), (-839405759991/1000000000000 : ℚ), 4⟩,
    ⟨(89190796937/250000000000 : ℚ), (16485655111/10000000000 : ℚ), (-320915709249/500000000000 : ℚ), 3⟩,
    ⟨(22809421839/62500000000 : ℚ), (12369651673/10000000000 : ℚ), (-3947199921/8000000000 : ℚ), 3⟩,
    ⟨(373527842369/1000000000000 : ℚ), (4635320263/5000000000 : ℚ), (-379041626357/1000000000000 : ℚ), 3⟩,
    ⟨(382411864489/1000000000000 : ℚ), (6888634807/10000000000 : ℚ), (-72264729849/250000000000 : ℚ), 3⟩,
    ⟨(391517257793/1000000000000 : ℚ), (502517933/1000000000 : ℚ), (-108493043549/500000000000 : ℚ), 3⟩,
    ⟨(200378166183/500000000000 : ℚ), (886277067/2500000000 : ℚ), (-158381556179/1000000000000 : ℚ), 3⟩,
    ⟨(410040110871/1000000000000 : ℚ), (2354062349/10000000000 : ℚ), (-11011621593/100000000000 : ℚ), 3⟩,
    ⟨(83855837089/200000000000 : ℚ), (346191757/2500000000 : ℚ), (-17484427661/250000000000 : ℚ), 3⟩,
    ⟨(428384578749/1000000000000 : ℚ), (147095817/2500000000 : ℚ), (-7238971211/200000000000 : ℚ), 2⟩,
    ⟨(109317150217/250000000000 : ℚ), (-3554961/500000000 : ℚ), (-478642759/62500000000 : ℚ), 2⟩,
    ⟨(445845693813/1000000000000 : ℚ), (-620586763/10000000000 : ℚ), (663970559/40000000000 : ℚ), 2⟩,
    ⟨(45403325549/100000000000 : ℚ), (-540205137/5000000000 : ℚ), (37284646467/1000000000000 : ℚ), 2⟩,
    ⟨(115438108801/250000000000 : ℚ), (-1466074831/10000000000 : ℚ), (5494122591/100000000000 : ℚ), 2⟩,
    ⟨(93785778607/200000000000 : ℚ), (-1789490873/10000000000 : ℚ), (69989224873/1000000000000 : ℚ), 2⟩,
    ⟨(475493515771/1000000000000 : ℚ), (-41197071/200000000 : ℚ), (20688703801/250000000000 : ℚ), 2⟩,
    ⟨(240691541253/500000000000 : ℚ), (-571069707/2500000000 : ℚ), (467456951/5000000000 : ℚ), 2⟩,
    ⟨(486540873493/1000000000000 : ℚ), (-98730737/400000000 : ℚ), (6399706897/62500000000 : ℚ), 2⟩,
    ⟨(245458608193/500000000000 : ℚ), (-2616052067/10000000000 : ℚ), (109617659967/1000000000000 : ℚ), 2⟩,
    ⟨(494469964609/1000000000000 : ℚ), (-682710021/2500000000 : ℚ), (115273059591/1000000000000 : ℚ), 2⟩,
    ⟨(62145612907/125000000000 : ℚ), (-2815008939/10000000000 : ℚ), (59723121767/500000000000 : ℚ), 2⟩,
    ⟨(249488039297/500000000000 : ℚ), (-2870235137/10000000000 : ℚ), (24439376313/200000000000 : ℚ), 2⟩,
    ⟨(99977209603/200000000000 : ℚ), (-1448793987/5000000000 : ℚ), (123562965239/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-580199003/2000000000 : ℚ), (61866648943/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (38988164973/125000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control386.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control386.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate386
