import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate464
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(115592334211/500000000000 : ℚ), (14495688084051/10000000000 : ℚ), (-167859104831163/500000000000 : ℚ), 12⟩,
    ⟨(46351290387/200000000000 : ℚ), (396067010861/2500000000 : ℚ), (-37090103888237/1000000000000 : ℚ), 9⟩,
    ⟨(58223628093/250000000000 : ℚ), (69390184607/1250000000 : ℚ), (-6599832879393/500000000000 : ℚ), 7⟩,
    ⟨(23458788959/100000000000 : ℚ), (68322484689/2500000000 : ℚ), (-6617364756319/1000000000000 : ℚ), 6⟩,
    ⟨(236820275441/1000000000000 : ℚ), (79132966959/5000000000 : ℚ), (-977081829647/250000000000 : ℚ), 6⟩,
    ⟨(59892542707/250000000000 : ℚ), (20127783151/2000000000 : ℚ), (-2536726948791/1000000000000 : ℚ), 5⟩,
    ⟨(48562218551/200000000000 : ℚ), (33947408261/5000000000 : ℚ), (-174755271443/100000000000 : ℚ), 5⟩,
    ⟨(246511829373/1000000000000 : ℚ), (9526086147/2000000000 : ℚ), (-78257032379/62500000000 : ℚ), 4⟩,
    ⟨(50127348113/200000000000 : ℚ), (34288723791/10000000000 : ℚ), (-230173984723/250000000000 : ℚ), 4⟩,
    ⟨(127573050591/500000000000 : ℚ), (25081891029/10000000000 : ℚ), (-172002951353/250000000000 : ℚ), 4⟩,
    ⟨(129998241807/500000000000 : ℚ), (18488670819/10000000000 : ℚ), (-518291268277/1000000000000 : ℚ), 4⟩,
    ⟨(265141176029/1000000000000 : ℚ), (681157821/500000000 : ℚ), (-97652356069/250000000000 : ℚ), 3⟩,
    ⟨(135265316113/500000000000 : ℚ), (198840809/200000000 : ℚ), (-146033410699/500000000000 : ℚ), 3⟩,
    ⟨(69028237199/250000000000 : ℚ), (3548902573/5000000000 : ℚ), (-107182210481/500000000000 : ℚ), 3⟩,
    ⟨(281834364977/1000000000000 : ℚ), (4860297751/10000000000 : ℚ), (-151970627837/1000000000000 : ℚ), 3⟩,
    ⟨(143819890203/500000000000 : ℚ), (3072588337/10000000000 : ℚ), (-50543762171/500000000000 : ℚ), 3⟩,
    ⟨(293473285757/1000000000000 : ℚ), (162500661/1000000000 : ℚ), (-14760374689/250000000000 : ℚ), 3⟩,
    ⟨(149639350593/500000000000 : ℚ), (109821791/2500000000 : ℚ), (-5977551317/250000000000 : ℚ), 3⟩,
    ⟨(305000117367/1000000000000 : ℚ), (-67678877/1250000000 : ℚ), (5713401387/1000000000000 : ℚ), 3⟩,
    ⟨(310582433937/1000000000000 : ℚ), (-679546431/5000000000 : ℚ), (15437335281/500000000000 : ℚ), 3⟩,
    ⟨(157985945067/500000000000 : ℚ), (-2045042351/10000000000 : ℚ), (10471964527/200000000000 : ℚ), 3⟩,
    ⟨(321116582549/1000000000000 : ℚ), (-2622955801/10000000000 : ℚ), (7076601437/100000000000 : ℚ), 3⟩,
    ⟨(325966964981/1000000000000 : ℚ), (-3110874911/10000000000 : ℚ), (8655019753/100000000000 : ℚ), 3⟩,
    ⟨(165238162799/500000000000 : ℚ), (-140905613/400000000 : ℚ), (100063833311/1000000000000 : ℚ), 2⟩,
    ⟨(33460123679/100000000000 : ℚ), (-483614739/1250000000 : ℚ), (111577977791/1000000000000 : ℚ), 2⟩,
    ⟨(10571936669/31250000000 : ℚ), (-4157943121/10000000000 : ℚ), (4852067391/40000000000 : ℚ), 2⟩,
    ⟨(68308579067/200000000000 : ℚ), (-4396066559/10000000000 : ℚ), (64697838353/500000000000 : ℚ), 2⟩,
    ⟨(172146395361/500000000000 : ℚ), (-4588156769/10000000000 : ℚ), (135982592777/1000000000000 : ℚ), 2⟩,
    ⟨(346525176573/1000000000000 : ℚ), (-592237289/1250000000 : ℚ), (141154700663/1000000000000 : ℚ), 2⟩,
    ⟨(348218553791/1000000000000 : ℚ), (-4848011253/10000000000 : ℚ), (14497967341/100000000000 : ℚ), 2⟩,
    ⟨(87339153557/250000000000 : ℚ), (-49204099/100000000 : ℚ), (147504836321/1000000000000 : ℚ), 2⟩,
    ⟨(349928397741/1000000000000 : ℚ), (-619539119/1250000000 : ℚ), (7438007909/50000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-4960787107/10000000000 : ℚ), (74458368787/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (175142142921/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control464.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control464.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate464
