import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate303
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264405464341/1000000000000 : ℚ), (2429062687039/2000000000 : ℚ), (-321868646246793/1000000000000 : ℚ), 12⟩,
    ⟨(66312622619/250000000000 : ℚ), (1324184816593/10000000000 : ℚ), (-1423353273351/40000000000 : ℚ), 8⟩,
    ⟨(133466202341/500000000000 : ℚ), (28910811389/625000000 : ℚ), (-12680922014169/1000000000000 : ℚ), 7⟩,
    ⟨(134717504603/500000000000 : ℚ), (113519154029/5000000000 : ℚ), (-6370776181577/1000000000000 : ℚ), 6⟩,
    ⟨(136367101299/500000000000 : ℚ), (2049107927/156250000 : ℚ), (-754765019489/200000000000 : ℚ), 5⟩,
    ⟨(276798211823/1000000000000 : ℚ), (41622660889/5000000000 : ℚ), (-1229526756479/500000000000 : ℚ), 5⟩,
    ⟨(281587898249/1000000000000 : ℚ), (56127305429/10000000000 : ℚ), (-34053094183/20000000000 : ℚ), 4⟩,
    ⟨(287057134579/1000000000000 : ℚ), (39413196903/10000000000 : ℚ), (-1227866343861/1000000000000 : ℚ), 4⟩,
    ⟨(293153249077/1000000000000 : ℚ), (28458412369/10000000000 : ℚ), (-18206733979/20000000000 : ℚ), 4⟩,
    ⟨(74954383207/250000000000 : ℚ), (20935360953/10000000000 : ℚ), (-85933867903/125000000000 : ℚ), 3⟩,
    ⟨(61397161027/200000000000 : ℚ), (7787761943/5000000000 : ℚ), (-524976672487/1000000000000 : ℚ), 3⟩,
    ⟨(314589031619/1000000000000 : ℚ), (5820644123/5000000000 : ℚ), (-402792247407/1000000000000 : ℚ), 3⟩,
    ⟨(322553989051/1000000000000 : ℚ), (8681081989/10000000000 : ℚ), (-77137522163/250000000000 : ℚ), 3⟩,
    ⟨(165401985269/500000000000 : ℚ), (320331957/500000000 : ℚ), (-234293129067/1000000000000 : ℚ), 3⟩,
    ⟨(42407440531/125000000000 : ℚ), (4627470693/10000000000 : ℚ), (-17471750361/100000000000 : ℚ), 3⟩,
    ⟨(347839218577/1000000000000 : ℚ), (3214003039/10000000000 : ℚ), (-126181397791/1000000000000 : ℚ), 3⟩,
    ⟨(178230213189/500000000000 : ℚ), (103795613/500000000 : ℚ), (-3444830019/40000000000 : ℚ), 2⟩,
    ⟨(182520060353/500000000000 : ℚ), (1148904851/10000000000 : ℚ), (-3293220639/62500000000 : ℚ), 2⟩,
    ⟨(23343479651/62500000000 : ℚ), (193194099/5000000000 : ℚ), (-24543441557/1000000000000 : ℚ), 2⟩,
    ⟨(381745655903/1000000000000 : ℚ), (-122963347/5000000000 : ℚ), (-672612033/1000000000000 : ℚ), 2⟩,
    ⟨(48713826667/125000000000 : ℚ), (-773609013/10000000000 : ℚ), (3935352397/200000000000 : ℚ), 2⟩,
    ⟨(19865691991/50000000000 : ℚ), (-30398489/250000000 : ℚ), (18539790893/500000000000 : ℚ), 2⟩,
    ⟨(404482112127/1000000000000 : ℚ), (-1587591937/10000000000 : ℚ), (51976651841/1000000000000 : ℚ), 2⟩,
    ⟨(205573197939/500000000000 : ℚ), (-949907319/5000000000 : ℚ), (8088487217/125000000000 : ℚ), 2⟩,
    ⟨(3337940083/8000000000 : ℚ), (-1080637251/5000000000 : ℚ), (75536330801/1000000000000 : ℚ), 2⟩,
    ⟨(84542349341/200000000000 : ℚ), (-594666533/2500000000 : ℚ), (84665587231/1000000000000 : ℚ), 2⟩,
    ⟨(106875358283/250000000000 : ℚ), (-159822293/625000000 : ℚ), (23063229741/250000000000 : ℚ), 2⟩,
    ⟨(431565442357/1000000000000 : ℚ), (-2700712787/10000000000 : ℚ), (19683779839/200000000000 : ℚ), 2⟩,
    ⟨(434864635749/1000000000000 : ℚ), (-351542663/1250000000 : ℚ), (6453418621/62500000000 : ℚ), 2⟩,
    ⟨(437367240273/1000000000000 : ℚ), (-1447132933/5000000000 : ℚ), (21365502121/200000000000 : ℚ), 2⟩,
    ⟨(439049154479/1000000000000 : ℚ), (-368506747/1250000000 : ℚ), (2183690713/20000000000 : ℚ), 2⟩,
    ⟨(219947090307/500000000000 : ℚ), (-297470489/1000000000 : ℚ), (27588941517/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-1489012493/5000000000 : ℚ), (110501832749/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (40405146547/125000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control303.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control303.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate303
