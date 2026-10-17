import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate598
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(98068019059/200000000000 : ℚ), (7505289341087/5000000000 : ℚ), (-737148207589851/1000000000000 : ℚ), 12⟩,
    ⟨(767732901/1562500000 : ℚ), (1644408081097/10000000000 : ℚ), (-40751523919983/500000000000 : ℚ), 9⟩,
    ⟨(493357262481/1000000000000 : ℚ), (578374041491/10000000000 : ℚ), (-14525857625719/500000000000 : ℚ), 7⟩,
    ⟨(248172686349/500000000000 : ℚ), (286162186847/10000000000 : ℚ), (-14601195046971/1000000000000 : ℚ), 7⟩,
    ⟨(100056922031/200000000000 : ℚ), (166755758583/10000000000 : ℚ), (-540930119759/62500000000 : ℚ), 6⟩,
    ⟨(126284259461/250000000000 : ℚ), (53425283731/5000000000 : ℚ), (-1411325394621/250000000000 : ℚ), 5⟩,
    ⟨(63856990529/125000000000 : ℚ), (14552875689/2000000000 : ℚ), (-3914803500219/1000000000000 : ℚ), 5⟩,
    ⟨(517386193317/1000000000000 : ℚ), (51642923983/10000000000 : ℚ), (-565909952263/200000000000 : ℚ), 4⟩,
    ⟨(524664955039/1000000000000 : ℚ), (3772396569/1000000000 : ℚ), (-4110836181/1953125000 : ℚ), 4⟩,
    ⟨(266311055471/500000000000 : ℚ), (28114755983/10000000000 : ℚ), (-159703740011/100000000000 : ℚ), 4⟩,
    ⟨(541181029267/1000000000000 : ℚ), (4247073713/2000000000 : ℚ), (-613934976483/500000000000 : ℚ), 4⟩,
    ⟨(550259282949/1000000000000 : ℚ), (404117183/250000000 : ℚ), (-47564230439/50000000000 : ℚ), 4⟩,
    ⟨(111953888689/200000000000 : ℚ), (6168495249/5000000000 : ℚ), (-738936193239/1000000000000 : ℚ), 3⟩,
    ⟨(569619922709/1000000000000 : ℚ), (9389755199/10000000000 : ℚ), (-572575574013/1000000000000 : ℚ), 3⟩,
    ⟨(289857927621/500000000000 : ℚ), (1416466653/2000000000 : ℚ), (-440025223337/1000000000000 : ℚ), 3⟩,
    ⟨(589960011693/1000000000000 : ℚ), (210006557/400000000 : ℚ), (-66581911303/200000000000 : ℚ), 3⟩,
    ⟨(600253735237/1000000000000 : ℚ), (3777835041/10000000000 : ℚ), (-245317158953/1000000000000 : ℚ), 3⟩,
    ⟨(610497891689/1000000000000 : ℚ), (2582627889/10000000000 : ℚ), (-86491008801/500000000000 : ℚ), 3⟩,
    ⟨(620593824221/1000000000000 : ℚ), (1604135229/10000000000 : ℚ), (-112765849883/1000000000000 : ℚ), 3⟩,
    ⟨(126088860697/200000000000 : ℚ), (398762119/5000000000 : ℚ), (-31160704961/500000000000 : ℚ), 3⟩,
    ⟨(639954463981/1000000000000 : ℚ), (129055657/10000000000 : ℚ), (-19868005729/1000000000000 : ℚ), 3⟩,
    ⟨(20282272427/31250000000 : ℚ), (-213480887/5000000000 : ℚ), (1596147713/100000000000 : ℚ), 3⟩,
    ⟨(164397908997/250000000000 : ℚ), (-178056279/2000000000 : ℚ), (23113431251/500000000000 : ℚ), 3⟩,
    ⟨(166387197973/250000000000 : ℚ), (-1595257/12500000 : ℚ), (71755817611/1000000000000 : ℚ), 2⟩,
    ⟨(672827553613/1000000000000 : ℚ), (-1596649537/10000000000 : ℚ), (46598894833/500000000000 : ℚ), 2⟩,
    ⟨(339678911349/500000000000 : ℚ), (-1860912051/10000000000 : ℚ), (5553163121/50000000000 : ℚ), 2⟩,
    ⟨(342538354543/500000000000 : ℚ), (-207624057/1000000000 : ℚ), (31438166811/250000000000 : ℚ), 2⟩,
    ⟨(27597165471/40000000000 : ℚ), (-140515523/625000000 : ℚ), (17197234297/125000000000 : ℚ), 2⟩,
    ⟨(693868374233/1000000000000 : ℚ), (-2381223897/10000000000 : ℚ), (36694561493/250000000000 : ℚ), 2⟩,
    ⟨(696856484449/1000000000000 : ℚ), (-2478359263/10000000000 : ℚ), (30706519301/200000000000 : ℚ), 2⟩,
    ⟨(69886469029/100000000000 : ℚ), (-2541916203/10000000000 : ℚ), (157967962127/1000000000000 : ℚ), 2⟩,
    ⟨(139974730327/200000000000 : ℚ), (-2573341799/10000000000 : ℚ), (160165768631/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2577253629/10000000000 : ℚ), (160439572011/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (120927929313/500000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control598.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control598.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate598
