import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate49
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(109985065573/500000000000 : ℚ), (1785667146631/2500000000 : ℚ), (-31579121460639/200000000000 : ℚ), 10⟩,
    ⟨(221558357473/1000000000000 : ℚ), (383667146501/5000000000 : ℚ), (-17471160415137/1000000000000 : ℚ), 7⟩,
    ⟨(2808993933/12500000000 : ℚ), (262711459189/10000000000 : ℚ), (-6237398746779/1000000000000 : ℚ), 5⟩,
    ⟨(114711579487/500000000000 : ℚ), (126104754223/10000000000 : ℚ), (-628521420553/200000000000 : ℚ), 5⟩,
    ⟨(235623991811/1000000000000 : ℚ), (71218946241/10000000000 : ℚ), (-46731195577/25000000000 : ℚ), 4⟩,
    ⟨(243262295739/1000000000000 : ℚ), (44248845693/10000000000 : ℚ), (-76554032097/62500000000 : ℚ), 3⟩,
    ⟨(63066127429/250000000000 : ℚ), (14632715709/5000000000 : ℚ), (-854397456167/1000000000000 : ℚ), 3⟩,
    ⟨(262543937501/1000000000000 : ℚ), (20221852259/10000000000 : ℚ), (-311033617203/500000000000 : ℚ), 3⟩,
    ⟨(54800316517/200000000000 : ℚ), (14425664549/10000000000 : ℚ), (-466856664409/1000000000000 : ℚ), 2⟩,
    ⟨(143263550791/500000000000 : ℚ), (5268289857/5000000000 : ℚ), (-179022746603/500000000000 : ℚ), 2⟩,
    ⟨(299999866897/1000000000000 : ℚ), (3915081689/5000000000 : ℚ), (-139400512331/500000000000 : ℚ), 2⟩,
    ⟨(62858025687/200000000000 : ℚ), (5889351443/10000000000 : ℚ), (-54818901959/250000000000 : ℚ), 2⟩,
    ⟨(164630131583/500000000000 : ℚ), (2230891219/5000000000 : ℚ), (-173399732157/1000000000000 : ℚ), 2⟩,
    ⟨(344766100509/1000000000000 : ℚ), (3388492089/10000000000 : ℚ), (-6863532431/50000000000 : ℚ), 2⟩,
    ⟨(180329155387/500000000000 : ℚ), (2565975279/10000000000 : ℚ), (-27072395111/250000000000 : ℚ), 2⟩,
    ⟨(47097980411/125000000000 : ℚ), (240617231/1250000000 : ℚ), (-16934956827/200000000000 : ℚ), 2⟩,
    ⟨(196493700179/500000000000 : ℚ), (1417875991/10000000000 : ℚ), (-65174267201/1000000000000 : ℚ), 2⟩,
    ⟨(51139116609/125000000000 : ℚ), (252887311/2500000000 : ℚ), (-24444877209/500000000000 : ℚ), 2⟩,
    ⟨(425005143137/1000000000000 : ℚ), (341138351/5000000000 : ℚ), (-35165234911/1000000000000 : ℚ), 2⟩,
    ⟨(688298407/1562500000 : ℚ), (412918787/10000000000 : ℚ), (-11757179281/500000000000 : ℚ), 1⟩,
    ⟨(455481115211/1000000000000 : ℚ), (190895591/10000000000 : ℚ), (-13571942263/1000000000000 : ℚ), 1⟩,
    ⟨(1879085507/4000000000 : ℚ), (685941/1000000000 : ℚ), (-1265214841/250000000000 : ℚ), 1⟩,
    ⟨(96648828413/200000000000 : ℚ), (-146210347/10000000000 : ℚ), (6971911/3125000000 : ℚ), 1⟩,
    ⟨(247884830531/500000000000 : ℚ), (-273633939/10000000000 : ℚ), (846711077/100000000000 : ℚ), 1⟩,
    ⟨(253613653073/500000000000 : ℚ), (-189735647/5000000000 : ℚ), (1377393141/100000000000 : ℚ), 1⟩,
    ⟨(517506733931/1000000000000 : ℚ), (-933669/20000000 : ℚ), (18249558431/1000000000000 : ℚ), 1⟩,
    ⟨(131627236977/250000000000 : ℚ), (-538111841/10000000000 : ℚ), (21969945327/1000000000000 : ℚ), 1⟩,
    ⟨(133536812959/250000000000 : ℚ), (-595129477/10000000000 : ℚ), (3124194753/125000000000 : ℚ), 1⟩,
    ⟨(8442938823/15625000000 : ℚ), (-127853677/2000000000 : ℚ), (27364814891/1000000000000 : ℚ), 1⟩,
    ⟨(272525864503/500000000000 : ℚ), (-335774297/5000000000 : ℚ), (14558311063/500000000000 : ℚ), 1⟩,
    ⟨(548212886173/1000000000000 : ℚ), (-692688887/10000000000 : ℚ), (15136103673/500000000000 : ℚ), 1⟩,
    ⟨(43984089/80000000 : ℚ), (-703147511/10000000000 : ℚ), (30846391727/1000000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-704449669/10000000000 : ℚ), (30917997433/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (244350754039/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control49.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control49.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate49
