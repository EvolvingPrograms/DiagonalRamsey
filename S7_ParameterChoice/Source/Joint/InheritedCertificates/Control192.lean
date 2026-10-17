import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate192
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(245567328709/1000000000000 : ℚ), (9087663290087/10000000000 : ℚ), (-22389058995311/100000000000 : ℚ), 11⟩,
    ⟨(246695505809/1000000000000 : ℚ), (985770877499/10000000000 : ℚ), (-24766448374801/1000000000000 : ℚ), 8⟩,
    ⟨(31117624381/125000000000 : ℚ), (342000605067/10000000000 : ℚ), (-1767292054447/200000000000 : ℚ), 6⟩,
    ⟨(985477231/3906250000 : ℚ), (166611970643/10000000000 : ℚ), (-2223754356529/500000000000 : ℚ), 5⟩,
    ⟨(256686856721/1000000000000 : ℚ), (9553263671/1000000000 : ℚ), (-2641261026979/1000000000000 : ℚ), 5⟩,
    ⟨(262112632273/1000000000000 : ℚ), (470558197/78125000 : ℚ), (-863415125729/500000000000 : ℚ), 4⟩,
    ⟨(4195425697/15625000000 : ℚ), (40376633717/10000000000 : ℚ), (-1200770785509/1000000000000 : ℚ), 4⟩,
    ⟨(275809110113/1000000000000 : ℚ), (14114316233/5000000000 : ℚ), (-870577158401/1000000000000 : ℚ), 4⟩,
    ⟨(35493488479/125000000000 : ℚ), (813161921/400000000 : ℚ), (-129950634681/200000000000 : ℚ), 3⟩,
    ⟨(292845256693/1000000000000 : ℚ), (14948552569/10000000000 : ℚ), (-247379172419/500000000000 : ℚ), 3⟩,
    ⟨(302415470363/1000000000000 : ℚ), (5573605753/5000000000 : ℚ), (-38173891351/100000000000 : ℚ), 3⟩,
    ⟨(312566382453/1000000000000 : ℚ), (4190120007/5000000000 : ℚ), (-296740368081/1000000000000 : ℚ), 3⟩,
    ⟨(323200234131/1000000000000 : ℚ), (6315381349/10000000000 : ℚ), (-231160781869/1000000000000 : ℚ), 3⟩,
    ⟨(334214615591/1000000000000 : ℚ), (1185364477/2500000000 : ℚ), (-179466805997/1000000000000 : ℚ), 2⟩,
    ⟨(2159396577/6250000000 : ℚ), (3519599817/10000000000 : ℚ), (-8623199693/62500000000 : ℚ), 2⟩,
    ⟨(44619753331/125000000000 : ℚ), (638961503/2500000000 : ℚ), (-65089511/625000000 : ℚ), 2⟩,
    ⟨(368468024763/1000000000000 : ℚ), (446266521/2500000000 : ℚ), (-9525257051/125000000000 : ℚ), 2⟩,
    ⟨(379922599091/1000000000000 : ℚ), (1161169537/10000000000 : ℚ), (-13216954467/250000000000 : ℚ), 2⟩,
    ⟨(19560571791/50000000000 : ℚ), (130190291/2000000000 : ℚ), (-16601990171/500000000000 : ℚ), 2⟩,
    ⟨(402225817281/1000000000000 : ℚ), (23011629/1000000000 : ℚ), (-3302961173/200000000000 : ℚ), 2⟩,
    ⟨(206429834479/500000000000 : ℚ), (-119353243/10000000000 : ℚ), (-455366871/200000000000 : ℚ), 2⟩,
    ⟨(423010581049/1000000000000 : ℚ), (-410974023/10000000000 : ℚ), (1238487309/125000000000 : ℚ), 2⟩,
    ⟨(432580794719/1000000000000 : ℚ), (-327493067/5000000000 : ℚ), (2543056523/125000000000 : ℚ), 2⟩,
    ⟨(22073907179/50000000000 : ℚ), (-171841749/2000000000 : ℚ), (5853618999/200000000000 : ℚ), 2⟩,
    ⟨(449616941299/1000000000000 : ℚ), (-514823637/5000000000 : ℚ), (36860956501/1000000000000 : ℚ), 2⟩,
    ⟨(456918806803/1000000000000 : ℚ), (-292732327/2500000000 : ℚ), (10816047449/250000000000 : ℚ), 2⟩,
    ⟨(231656709569/500000000000 : ℚ), (-1286620641/10000000000 : ℚ), (48586956207/1000000000000 : ℚ), 2⟩,
    ⟨(468739194691/1000000000000 : ℚ), (-1379455889/10000000000 : ℚ), (52913111963/1000000000000 : ℚ), 2⟩,
    ⟨(118285970069/250000000000 : ℚ), (-1451507167/10000000000 : ℚ), (7038275131/125000000000 : ℚ), 2⟩,
    ⟨(119121264091/250000000000 : ℚ), (-75215343/500000000 : ℚ), (3675822727/62500000000 : ℚ), 2⟩,
    ⟨(239365272801/500000000000 : ℚ), (-384733871/2500000000 : ℚ), (483736329/8000000000 : ℚ), 2⟩,
    ⟨(479858722703/1000000000000 : ℚ), (-1556082089/10000000000 : ℚ), (30644433581/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1558217641/10000000000 : ℚ), (61391358579/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (164489706499/500000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control192.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control192.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate192
