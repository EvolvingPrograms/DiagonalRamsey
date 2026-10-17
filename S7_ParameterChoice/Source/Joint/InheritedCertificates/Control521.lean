import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate521
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(67941778891/250000000000 : ℚ), (1612285342447/1250000000 : ℚ), (-351199930990341/1000000000000 : ℚ), 12⟩,
    ⟨(68120116817/250000000000 : ℚ), (1409139568667/10000000000 : ℚ), (-19405984749373/500000000000 : ℚ), 9⟩,
    ⟨(273900300711/1000000000000 : ℚ), (246783606373/5000000000 : ℚ), (-13820791877859/1000000000000 : ℚ), 7⟩,
    ⟨(6900323553/25000000000 : ℚ), (24293332243/1000000000 : ℚ), (-1733822120189/250000000000 : ℚ), 6⟩,
    ⟨(278798045603/1000000000000 : ℚ), (140696704021/10000000000 : ℚ), (-2050773336571/500000000000 : ℚ), 6⟩,
    ⟨(282228789091/1000000000000 : ℚ), (349654457/39062500 : ℚ), (-2666896234643/1000000000000 : ℚ), 5⟩,
    ⟨(286272132649/1000000000000 : ℚ), (30226236503/5000000000 : ℚ), (-1841537014707/1000000000000 : ℚ), 5⟩,
    ⟨(72722284167/250000000000 : ℚ), (42486882811/10000000000 : ℚ), (-132347410323/100000000000 : ℚ), 4⟩,
    ⟨(74008834219/250000000000 : ℚ), (7668166229/2500000000 : ℚ), (-977019468107/1000000000000 : ℚ), 4⟩,
    ⟨(301661172551/1000000000000 : ℚ), (11265507211/5000000000 : ℚ), (-183468085971/250000000000 : ℚ), 4⟩,
    ⟨(15385623191/50000000000 : ℚ), (4177400767/2500000000 : ℚ), (-556614327021/1000000000000 : ℚ), 4⟩,
    ⟨(314130933441/1000000000000 : ℚ), (3105276953/2500000000 : ℚ), (-3386837081/8000000000 : ℚ), 3⟩,
    ⟨(160427384021/500000000000 : ℚ), (9182815811/10000000000 : ℚ), (-320597409469/1000000000000 : ℚ), 3⟩,
    ⟨(327819213421/1000000000000 : ℚ), (1671514169/2500000000 : ℚ), (-119829421329/500000000000 : ℚ), 3⟩,
    ⟨(334957198161/1000000000000 : ℚ), (945292547/2000000000 : ℚ), (-87374870207/500000000000 : ℚ), 3⟩,
    ⟨(342199979567/1000000000000 : ℚ), (791180213/2500000000 : ℚ), (-30473530539/250000000000 : ℚ), 3⟩,
    ⟨(69895561139/200000000000 : ℚ), (1903491711/10000000000 : ℚ), (-78291783541/1000000000000 : ℚ), 3⟩,
    ⟨(356720587101/1000000000000 : ℚ), (54582391/625000000 : ℚ), (-10482023201/250000000000 : ℚ), 3⟩,
    ⟨(363858571841/1000000000000 : ℚ), (474793/200000000 : ℚ), (-2265438257/200000000000 : ℚ), 3⟩,
    ⟨(18541150861/50000000000 : ℚ), (-341236059/5000000000 : ℚ), (14608637681/1000000000000 : ℚ), 3⟩,
    ⟨(377546851821/1000000000000 : ℚ), (-50925749/400000000 : ℚ), (7341239629/200000000000 : ℚ), 3⟩,
    ⟨(191982660721/500000000000 : ℚ), (-884651903/5000000000 : ℚ), (3474662631/62500000000 : ℚ), 3⟩,
    ⟨(390016612711/1000000000000 : ℚ), (-1093493133/5000000000 : ℚ), (35878149623/500000000000 : ℚ), 3⟩,
    ⟨(197821224193/500000000000 : ℚ), (-2538501041/10000000000 : ℚ), (10695413263/125000000000 : ℚ), 2⟩,
    ⟨(200394324297/500000000000 : ℚ), (-1416671603/5000000000 : ℚ), (97303361997/1000000000000 : ℚ), 2⟩,
    ⟨(405405652613/1000000000000 : ℚ), (-3078851883/10000000000 : ℚ), (53599548769/500000000000 : ℚ), 2⟩,
    ⟨(409448996171/1000000000000 : ℚ), (-3280692857/10000000000 : ℚ), (7213891143/62500000000 : ℚ), 2⟩,
    ⟨(412879739659/1000000000000 : ℚ), (-860803667/2500000000 : ℚ), (24420871417/200000000000 : ℚ), 2⟩,
    ⟨(207832421571/500000000000 : ℚ), (-223107001/625000000 : ℚ), (63672341401/500000000000 : ℚ), 2⟩,
    ⟨(8355549691/20000000000 : ℚ), (-732523929/2000000000 : ℚ), (1049730363/8000000000 : ℚ), 2⟩,
    ⟨(419197317993/1000000000000 : ℚ), (-3723652563/10000000000 : ℚ), (66885216509/500000000000 : ℚ), 2⟩,
    ⟨(209955334849/500000000000 : ℚ), (-3753903307/10000000000 : ℚ), (5401584537/40000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1878836169/5000000000 : ℚ), (33799473977/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (35924548081/100000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control521.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control521.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate521
