import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate95
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2635069949/12500000000 : ℚ), (3302420473407/5000000000 : ℚ), (-6995482936053/50000000000 : ℚ), 10⟩,
    ⟨(212293554251/1000000000000 : ℚ), (177512948879/2500000000 : ℚ), (-15482958790593/1000000000000 : ℚ), 7⟩,
    ⟨(215255141061/1000000000000 : ℚ), (48669980881/2000000000 : ℚ), (-5528887605061/1000000000000 : ℚ), 6⟩,
    ⟨(219661834649/1000000000000 : ℚ), (187126931/16000000 : ℚ), (-1393254287391/500000000000 : ℚ), 5⟩,
    ⟨(56367799037/250000000000 : ℚ), (33069546703/5000000000 : ℚ), (-1658014957909/1000000000000 : ℚ), 4⟩,
    ⟨(23262727823/100000000000 : ℚ), (20574041599/5000000000 : ℚ), (-135851170837/125000000000 : ℚ), 4⟩,
    ⟨(120530581957/500000000000 : ℚ), (5449868507/2000000000 : ℚ), (-47393203177/62500000000 : ℚ), 3⟩,
    ⟨(250691630269/1000000000000 : ℚ), (471241819/250000000 : ℚ), (-276079240093/500000000000 : ℚ), 3⟩,
    ⟨(261425930641/1000000000000 : ℚ), (13458196503/10000000000 : ℚ), (-207176460497/500000000000 : ℚ), 3⟩,
    ⟨(34145085981/125000000000 : ℚ), (4917340391/5000000000 : ℚ), (-3176605293/10000000000 : ℚ), 3⟩,
    ⟨(71445722441/250000000000 : ℚ), (7308561897/10000000000 : ℚ), (-123585656713/500000000000 : ℚ), 2⟩,
    ⟨(74792744421/250000000000 : ℚ), (2746812453/5000000000 : ℚ), (-194163245213/1000000000000 : ℚ), 2⟩,
    ⟨(313196017003/1000000000000 : ℚ), (415604347/1000000000 : ℚ), (-153260856259/1000000000000 : ℚ), 2⟩,
    ⟨(163861469463/500000000000 : ℚ), (78710609/250000000 : ℚ), (-60503819069/500000000000 : ℚ), 2⟩,
    ⟨(342611841253/1000000000000 : ℚ), (2374714787/10000000000 : ℚ), (-95101758931/1000000000000 : ℚ), 2⟩,
    ⟨(71543867143/200000000000 : ℚ), (1770546593/10000000000 : ℚ), (-73964799449/1000000000000 : ℚ), 2⟩,
    ⟨(372899928883/1000000000000 : ℚ), (645872479/5000000000 : ℚ), (-28243685903/500000000000 : ℚ), 2⟩,
    ⟨(77601484669/200000000000 : ℚ), (907362969/10000000000 : ℚ), (-20936641251/500000000000 : ℚ), 2⟩,
    ⟨(50362040709/125000000000 : ℚ), (595327239/10000000000 : ℚ), (-14770443469/500000000000 : ℚ), 2⟩,
    ⟨(83484649519/200000000000 : ℚ), (339642497/10000000000 : ℚ), (-19058838741/1000000000000 : ℚ), 2⟩,
    ⟨(215724143457/500000000000 : ℚ), (12855507/1000000000 : ℚ), (-10103178609/1000000000000 : ℚ), 2⟩,
    ⟨(222418187417/500000000000 : ℚ), (-23339157/5000000000 : ℚ), (-303504169/125000000000 : ℚ), 2⟩,
    ⟨(1829834307/4000000000 : ℚ), (-48157687/2500000000 : ℚ), (4154788479/1000000000000 : ℚ), 2⟩,
    ⟨(469193333957/1000000000000 : ℚ), (-157143801/5000000000 : ℚ), (9790252583/1000000000000 : ℚ), 2⟩,
    ⟨(479927634329/1000000000000 : ℚ), (-83091177/2000000000 : ℚ), (291809957/20000000000 : ℚ), 2⟩,
    ⟨(122389525171/250000000000 : ℚ), (-499055351/10000000000 : ℚ), (932120659/50000000000 : ℚ), 2⟩,
    ⟨(7781124787/15625000000 : ℚ), (-567327489/10000000000 : ℚ), (2751651833/125000000000 : ℚ), 2⟩,
    ⟨(10102961369/20000000000 : ℚ), (-310993279/5000000000 : ℚ), (6188644767/250000000000 : ℚ), 2⟩,
    ⟨(510957429949/1000000000000 : ℚ), (-166082253/2500000000 : ℚ), (13452857183/500000000000 : ℚ), 2⟩,
    ⟨(515364123537/1000000000000 : ℚ), (-86914053/1250000000 : ℚ), (712390667/25000000000 : ℚ), 1⟩,
    ⟨(518325710347/1000000000000 : ℚ), (-715611511/10000000000 : ℚ), (29544764519/1000000000000 : ℚ), 1⟩,
    ⟨(519813668677/1000000000000 : ℚ), (-145131277/2000000000 : ℚ), (30066162183/1000000000000 : ℚ), 1⟩,
    ⟨(13/25 : ℚ), (-726907143/10000000000 : ℚ), (30131189951/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (306746010383/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control95.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control95.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate95
