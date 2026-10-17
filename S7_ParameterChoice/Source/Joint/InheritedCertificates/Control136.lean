import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate136
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16812103697/62500000000 : ℚ), (5929156449079/5000000000 : ℚ), (-319844106044449/1000000000000 : ℚ), 11⟩,
    ⟨(16875568753/62500000000 : ℚ), (1290181720803/10000000000 : ℚ), (-17685320122813/500000000000 : ℚ), 8⟩,
    ⟨(272030202589/1000000000000 : ℚ), (449434292831/10000000000 : ℚ), (-1261270585957/100000000000 : ℚ), 6⟩,
    ⟨(275037502453/1000000000000 : ℚ), (219928733083/10000000000 : ℚ), (-6342584038507/1000000000000 : ℚ), 5⟩,
    ⟨(139501018849/500000000000 : ℚ), (31667334703/2500000000 : ℚ), (-235136833959/62500000000 : ℚ), 5⟩,
    ⟨(283885627683/1000000000000 : ℚ), (80201137297/10000000000 : ℚ), (-2455881828093/1000000000000 : ℚ), 4⟩,
    ⟨(144820620383/500000000000 : ℚ), (53967272791/10000000000 : ℚ), (-1704428233403/1000000000000 : ℚ), 4⟩,
    ⟨(148106723623/500000000000 : ℚ), (9462493771/2500000000 : ℚ), (-61640565557/50000000000 : ℚ), 4⟩,
    ⟨(9485592287/31250000000 : ℚ), (5464660897/2000000000 : ℚ), (-458730302261/500000000000 : ℚ), 3⟩,
    ⟨(311547209951/1000000000000 : ℚ), (4024219413/2000000000 : ℚ), (-348086287579/500000000000 : ℚ), 3⟩,
    ⟨(320161093659/1000000000000 : ℚ), (1876202209/1250000000 : ℚ), (-106973598903/200000000000 : ℚ), 3⟩,
    ⟨(329297647897/1000000000000 : ℚ), (5636196679/5000000000 : ℚ), (-103402347767/250000000000 : ℚ), 3⟩,
    ⟨(169434441327/500000000000 : ℚ), (4235728541/5000000000 : ℚ), (-160052841821/500000000000 : ℚ), 3⟩,
    ⟨(348782621707/1000000000000 : ℚ), (253108769/400000000 : ℚ), (-24644931509/100000000000 : ℚ), 2⟩,
    ⟨(358943390329/1000000000000 : ℚ), (4657123063/10000000000 : ℚ), (-93684957643/500000000000 : ℚ), 2⟩,
    ⟨(73850666953/200000000000 : ℚ), (3334747491/10000000000 : ℚ), (-139249246493/1000000000000 : ℚ), 2⟩,
    ⟨(379613164613/1000000000000 : ℚ), (284214959/1250000000 : ℚ), (-24885104329/250000000000 : ℚ), 2⟩,
    ⟨(389923109049/1000000000000 : ℚ), (1412357331/10000000000 : ℚ), (-16603061151/250000000000 : ℚ), 2⟩,
    ⟨(400083877671/1000000000000 : ℚ), (176518463/2500000000 : ℚ), (-38524227801/1000000000000 : ℚ), 2⟩,
    ⟨(102499404181/250000000000 : ℚ), (24427719/2000000000 : ℚ), (-3720007897/250000000000 : ℚ), 2⟩,
    ⟨(419568851481/1000000000000 : ℚ), (-90949427/2500000000 : ℚ), (5270354549/1000000000000 : ℚ), 2⟩,
    ⟨(10717635143/25000000000 : ℚ), (-770056453/10000000000 : ℚ), (22497433637/1000000000000 : ℚ), 2⟩,
    ⟨(437319289427/1000000000000 : ℚ), (-555277639/5000000000 : ℚ), (7447750827/200000000000 : ℚ), 2⟩,
    ⟨(89065509239/200000000000 : ℚ), (-1395947351/10000000000 : ℚ), (24915965057/500000000000 : ℚ), 2⟩,
    ⟨(113163263033/250000000000 : ℚ), (-81721603/500000000 : ℚ), (12107687717/200000000000 : ℚ), 2⟩,
    ⟨(459225258613/1000000000000 : ℚ), (-458084731/2500000000 : ℚ), (434756297/6250000000 : ℚ), 2⟩,
    ⟨(29061304481/62500000000 : ℚ), (-199455229/1000000000 : ℚ), (38528233177/500000000000 : ℚ), 2⟩,
    ⟨(5873305771/12500000000 : ℚ), (-84992891/400000000 : ℚ), (83145318023/1000000000000 : ℚ), 2⟩,
    ⟨(18953159877/40000000000 : ℚ), (-2225992921/10000000000 : ℚ), (43959445611/500000000000 : ℚ), 2⟩,
    ⟨(476836296789/1000000000000 : ℚ), (-2300168761/10000000000 : ℚ), (3657786287/40000000000 : ℚ), 2⟩,
    ⟨(47885739933/100000000000 : ℚ), (-146802147/625000000 : ℚ), (2930315981/31250000000 : ℚ), 2⟩,
    ⟨(239936420113/500000000000 : ℚ), (-7415427/31250000 : ℚ), (94925489063/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2375938741/10000000000 : ℚ), (47534785417/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (132457397391/500000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control136.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control136.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate136
