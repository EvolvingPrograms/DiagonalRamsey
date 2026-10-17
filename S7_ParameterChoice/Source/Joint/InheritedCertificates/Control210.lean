import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate210
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(139976740013/500000000000 : ℚ), (12794834435221/10000000000 : ℚ), (-359039639489643/1000000000000 : ℚ), 11⟩,
    ⟨(280868054477/1000000000000 : ℚ), (1394691769409/10000000000 : ℚ), (-39696828300483/1000000000000 : ℚ), 8⟩,
    ⟨(282688395529/1000000000000 : ℚ), (487073510051/10000000000 : ℚ), (-14149308437877/1000000000000 : ℚ), 7⟩,
    ⟨(142698486151/500000000000 : ℚ), (239006965559/10000000000 : ℚ), (-7110581970687/1000000000000 : ℚ), 6⟩,
    ⟨(7224192493/25000000000 : ℚ), (69017562091/5000000000 : ℚ), (-4213842030727/1000000000000 : ℚ), 5⟩,
    ⟨(146683094863/500000000000 : ℚ), (1752374543/200000000 : ℚ), (-2747355980403/1000000000000 : ℚ), 5⟩,
    ⟨(149275041229/500000000000 : ℚ), (59086369879/10000000000 : ℚ), (-1903735116013/1000000000000 : ℚ), 4⟩,
    ⟨(152234727097/500000000000 : ℚ), (20754577381/5000000000 : ℚ), (-687128175797/500000000000 : ℚ), 4⟩,
    ⟨(6221345963/20000000000 : ℚ), (14997612877/5000000000 : ℚ), (-510103243151/500000000000 : ℚ), 4⟩,
    ⟨(7957001837/25000000000 : ℚ), (22093298693/10000000000 : ℚ), (-192940137077/250000000000 : ℚ), 3⟩,
    ⟨(65207663443/200000000000 : ℚ), (16467587849/10000000000 : ℚ), (-590664328567/1000000000000 : ℚ), 3⟩,
    ⟨(83566828307/250000000000 : ℚ), (12341465911/10000000000 : ℚ), (-90907572181/200000000000 : ℚ), 3⟩,
    ⟨(85721952947/250000000000 : ℚ), (9239547863/10000000000 : ℚ), (-43697988937/125000000000 : ℚ), 3⟩,
    ⟨(175908396391/500000000000 : ℚ), (3429209907/5000000000 : ℚ), (-133462625987/500000000000 : ℚ), 3⟩,
    ⟨(360968265241/1000000000000 : ℚ), (4997622871/10000000000 : ℚ), (-100322196109/500000000000 : ℚ), 3⟩,
    ⟨(370254095483/1000000000000 : ℚ), (1760415789/5000000000 : ℚ), (-29335586087/200000000000 : ℚ), 2⟩,
    ⟨(379584855887/1000000000000 : ℚ), (466607437/2000000000 : ℚ), (-51082367253/500000000000 : ℚ), 2⟩,
    ⟨(388870686129/1000000000000 : ℚ), (1366626803/10000000000 : ℚ), (-32523431161/500000000000 : ℚ), 2⟩,
    ⟨(99505539647/250000000000 : ℚ), (572612427/10000000000 : ℚ), (-33817093417/1000000000000 : ℚ), 2⟩,
    ⟨(203475569791/500000000000 : ℚ), (-85051793/10000000000 : ℚ), (-1838643049/250000000000 : ℚ), 2⟩,
    ⟨(207785819071/500000000000 : ℚ), (-633242347/10000000000 : ℚ), (15184925583/1000000000000 : ℚ), 2⟩,
    ⟨(84760126831/200000000000 : ℚ), (-1092225433/10000000000 : ℚ), (1076372591/31250000000 : ℚ), 2⟩,
    ⟨(43155887789/100000000000 : ℚ), (-46169559/312500000 : ℚ), (795553871/15625000000 : ℚ), 2⟩,
    ⟨(21938582661/50000000000 : ℚ), (-180067047/1000000000 : ℚ), (64980069457/1000000000000 : ℚ), 2⟩,
    ⟨(55671187147/125000000000 : ℚ), (-207107451/1000000000 : ℚ), (15386520349/200000000000 : ℚ), 2⟩,
    ⟨(28205554307/62500000000 : ℚ), (-459136431/2000000000 : ℚ), (87001630601/1000000000000 : ℚ), 2⟩,
    ⟨(114118190411/250000000000 : ℚ), (-2479933307/10000000000 : ℚ), (47681980809/500000000000 : ℚ), 2⟩,
    ⟨(9217425033/20000000000 : ℚ), (-262800653/1000000000 : ℚ), (102155400429/1000000000000 : ℚ), 2⟩,
    ⟨(116110494767/250000000000 : ℚ), (-1371535709/5000000000 : ℚ), (53739410793/500000000000 : ℚ), 2⟩,
    ⟨(467150555841/1000000000000 : ℚ), (-2827473417/10000000000 : ℚ), (111410180743/1000000000000 : ℚ), 2⟩,
    ⟨(468970896893/1000000000000 : ℚ), (-2882866841/10000000000 : ℚ), (114002913507/1000000000000 : ℚ), 2⟩,
    ⟨(29367841959/62500000000 : ℚ), (-2910306757/10000000000 : ℚ), (23058203703/200000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2913724843/10000000000 : ℚ), (57725824481/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (70039551733/250000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control210.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control210.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate210
