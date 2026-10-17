import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate367
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(153176433867/500000000000 : ℚ), (3680130331361/2500000000 : ℚ), (-451809880575303/1000000000000 : ℚ), 12⟩,
    ⟨(12285615941/40000000000 : ℚ), (201085305883/1250000000 : ℚ), (-4993489967293/100000000000 : ℚ), 9⟩,
    ⟨(77176968939/250000000000 : ℚ), (11274315793/200000000 : ℚ), (-17784790216887/1000000000000 : ℚ), 7⟩,
    ⟨(77760050941/250000000000 : ℚ), (277625812697/10000000000 : ℚ), (-557935304717/62500000000 : ℚ), 6⟩,
    ⟨(62822984191/200000000000 : ℚ), (8045413263/500000000 : ℚ), (-33010049197/6250000000 : ℚ), 5⟩,
    ⟨(158951208061/500000000000 : ℚ), (102463272367/10000000000 : ℚ), (-687231997197/200000000000 : ℚ), 5⟩,
    ⟨(64473242723/200000000000 : ℚ), (34638562069/5000000000 : ℚ), (-2374571936999/1000000000000 : ℚ), 5⟩,
    ⟨(163731662313/500000000000 : ℚ), (48757101309/10000000000 : ℚ), (-1708336788557/1000000000000 : ℚ), 4⟩,
    ⟨(83286165297/250000000000 : ℚ), (282094511/80000000 : ℚ), (-12628948213/10000000000 : ℚ), 4⟩,
    ⟨(13574220357/40000000000 : ℚ), (6490359819/2500000000 : ℚ), (-237594333453/250000000000 : ℚ), 4⟩,
    ⟨(346036053977/1000000000000 : ℚ), (3862391243/2000000000 : ℚ), (-90330566557/125000000000 : ℚ), 3⟩,
    ⟨(88280489761/250000000000 : ℚ), (3603574511/2500000000 : ℚ), (-275766134751/500000000000 : ℚ), 3⟩,
    ⟨(360544982987/1000000000000 : ℚ), (2679283959/2500000000 : ℚ), (-104919026403/250000000000 : ℚ), 3⟩,
    ⟨(92058409507/250000000000 : ℚ), (1966960371/2500000000 : ℚ), (-63180413799/200000000000 : ℚ), 3⟩,
    ⟨(188056939107/500000000000 : ℚ), (2816439657/5000000000 : ℚ), (-232759921429/1000000000000 : ℚ), 3⟩,
    ⟨(15364392501/40000000000 : ℚ), (3853001399/10000000000 : ℚ), (-41282987567/250000000000 : ℚ), 3⟩,
    ⟨(12254513617/31250000000 : ℚ), (302112169/1250000000 : ℚ), (-1709576563/15625000000 : ℚ), 3⟩,
    ⟨(80028074011/200000000000 : ℚ), (311276323/2500000000 : ℚ), (-63007965271/1000000000000 : ℚ), 3⟩,
    ⟨(204010305121/500000000000 : ℚ), (55973059/2000000000 : ℚ), (-960611101/40000000000 : ℚ), 2⟩,
    ⟨(207854632641/500000000000 : ℚ), (-521462141/10000000000 : ℚ), (8980742343/1000000000000 : ℚ), 2⟩,
    ⟨(16925291569/40000000000 : ℚ), (-1190771823/10000000000 : ℚ), (7409463447/200000000000 : ℚ), 2⟩,
    ⟨(107554548573/250000000000 : ℚ), (-175218707/1000000000 : ℚ), (243989917/4000000000 : ℚ), 2⟩,
    ⟨(27306171209/62500000000 : ℚ), (-1112059631/5000000000 : ℚ), (16291134181/200000000000 : ℚ), 2⟩,
    ⟨(443109587081/1000000000000 : ℚ), (-262071907/1000000000 : ℚ), (98904290717/1000000000000 : ℚ), 2⟩,
    ⟨(448790923643/1000000000000 : ℚ), (-2952914547/10000000000 : ℚ), (22743453897/200000000000 : ℚ), 2⟩,
    ⟨(226944017327/500000000000 : ℚ), (-807290839/2500000000 : ℚ), (126184647497/1000000000000 : ℚ), 2⟩,
    ⟨(458351832147/1000000000000 : ℚ), (-864000903/2500000000 : ℚ), (136530787719/1000000000000 : ℚ), 2⟩,
    ⟨(231069663657/500000000000 : ℚ), (-3638460197/10000000000 : ℚ), (4528999821/31250000000 : ℚ), 2⟩,
    ⟨(93042808901/200000000000 : ℚ), (-3780345241/10000000000 : ℚ), (75753367587/500000000000 : ℚ), 2⟩,
    ⟨(467546372513/1000000000000 : ℚ), (-1942239619/5000000000 : ℚ), (156363281819/1000000000000 : ℚ), 2⟩,
    ⟨(29319615609/62500000000 : ℚ), (-3860206/9765625 : ℚ), (159565318131/1000000000000 : ℚ), 2⟩,
    ⟨(93980276107/200000000000 : ℚ), (-996682069/2500000000 : ℚ), (161155882573/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-997737161/2500000000 : ℚ), (161354219071/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (283105876773/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control367.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control367.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate367
