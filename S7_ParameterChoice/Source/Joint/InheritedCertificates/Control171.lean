import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate171
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(53867436523/200000000000 : ℚ), (298277872169/312500000 : ℚ), (-128949104865957/500000000000 : ℚ), 11⟩,
    ⟨(270543465207/1000000000000 : ℚ), (1035837651647/10000000000 : ℚ), (-28528925785523/1000000000000 : ℚ), 8⟩,
    ⟨(272944413231/1000000000000 : ℚ), (179800713531/5000000000 : ℚ), (-2544840150427/250000000000 : ℚ), 6⟩,
    ⟨(138258452123/500000000000 : ℚ), (21914809391/1250000000 : ℚ), (-2561916705193/500000000000 : ℚ), 5⟩,
    ⟨(35153316651/125000000000 : ℚ), (100608634627/10000000000 : ℚ), (-3043320860387/1000000000000 : ℚ), 5⟩,
    ⟨(143513971909/500000000000 : ℚ), (63489497663/10000000000 : ℚ), (-1990104704951/1000000000000 : ℚ), 4⟩,
    ⟨(146932632659/500000000000 : ℚ), (42603331811/10000000000 : ℚ), (-138426953901/100000000000 : ℚ), 4⟩,
    ⟨(301672650567/1000000000000 : ℚ), (5963801003/2000000000 : ℚ), (-1004068928159/1000000000000 : ℚ), 3⟩,
    ⟨(9699215943/31250000000 : ℚ), (21502545329/10000000000 : ℚ), (-18746685441/25000000000 : ℚ), 3⟩,
    ⟨(319888236627/1000000000000 : ℚ), (7918222793/5000000000 : ℚ), (-4464919653/7812500000 : ℚ), 3⟩,
    ⟨(165060505693/500000000000 : ℚ), (11832580463/10000000000 : ℚ), (-110379343547/250000000000 : ℚ), 3⟩,
    ⟨(340974687239/1000000000000 : ℚ), (445902379/500000000 : ℚ), (-85953673471/250000000000 : ℚ), 3⟩,
    ⟨(176172368677/500000000000 : ℚ), (674330663/1000000000 : ℚ), (-134245735283/500000000000 : ℚ), 2⟩,
    ⟨(364121661933/1000000000000 : ℚ), (2543047731/5000000000 : ℚ), (-104586036537/500000000000 : ℚ), 2⟩,
    ⟨(188096021377/500000000000 : ℚ), (950045291/2500000000 : ℚ), (-161607288127/1000000000000 : ℚ), 2⟩,
    ⟨(97109908863/250000000000 : ℚ), (1393282671/5000000000 : ℚ), (-12287998803/100000000000 : ℚ), 2⟩,
    ⟨(200373244507/500000000000 : ℚ), (988291983/5000000000 : ℚ), (-18187354767/200000000000 : ℚ), 2⟩,
    ⟨(412994081711/1000000000000 : ℚ), (1321613877/10000000000 : ℚ), (-64301167489/1000000000000 : ℚ), 2⟩,
    ⟨(425064462533/1000000000000 : ℚ), (196650203/2500000000 : ℚ), (-20946068599/500000000000 : ℚ), 2⟩,
    ⟨(54605173389/125000000000 : ℚ), (345876761/10000000000 : ℚ), (-22905938439/1000000000000 : ℚ), 2⟩,
    ⟨(448211437227/1000000000000 : ℚ), (-19608593/10000000000 : ℚ), (-3368610671/500000000000 : ℚ), 2⟩,
    ⟨(11476627827/25000000000 : ℚ), (-32415923/1000000000 : ℚ), (7074833203/1000000000000 : ℚ), 2⟩,
    ⟨(469297887839/1000000000000 : ℚ), (-578621177/10000000000 : ℚ), (9442012393/500000000000 : ℚ), 2⟩,
    ⟨(47881121429/100000000000 : ℚ), (-791283979/10000000000 : ℚ), (14481861023/500000000000 : ℚ), 2⟩,
    ⟨(487513473899/1000000000000 : ℚ), (-193704079/2000000000 : ℚ), (37526005387/1000000000000 : ℚ), 2⟩,
    ⟨(495320859147/1000000000000 : ℚ), (-1115245807/10000000000 : ℚ), (44735635361/1000000000000 : ℚ), 2⟩,
    ⟨(62769772581/125000000000 : ℚ), (-308812841/2500000000 : ℚ), (50720359577/1000000000000 : ℚ), 2⟩,
    ⟨(253979795629/500000000000 : ℚ), (-332861787/2500000000 : ℚ), (27789287403/500000000000 : ℚ), 2⟩,
    ⟨(25633461011/50000000000 : ℚ), (-351510019/2500000000 : ℚ), (5938504093/100000000000 : ℚ), 2⟩,
    ⟨(258120855617/500000000000 : ℚ), (-1460663421/10000000000 : ℚ), (6219511991/100000000000 : ℚ), 2⟩,
    ⟨(518642659259/1000000000000 : ℚ), (-299293907/2000000000 : ℚ), (32023932547/500000000000 : ℚ), 2⟩,
    ⟨(519848941851/1000000000000 : ℚ), (-302838721/2000000000 : ℚ), (16242044557/250000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-94775051/625000000 : ℚ), (16270734129/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (9464664353/31250000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control171.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control171.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate171
