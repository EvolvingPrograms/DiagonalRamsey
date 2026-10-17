import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate238
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(288758011491/1000000000000 : ℚ), (12803411768263/10000000000 : ℚ), (-370559557028749/1000000000000 : ℚ), 11⟩,
    ⟨(289678338981/1000000000000 : ℚ), (1396062412119/10000000000 : ℚ), (-40970022783339/1000000000000 : ℚ), 8⟩,
    ⟨(145755065353/500000000000 : ℚ), (24388198477/500000000 : ℚ), (-1825346208551/125000000000 : ℚ), 7⟩,
    ⟨(73558936377/250000000000 : ℚ), (119731901633/5000000000 : ℚ), (-7338204504533/1000000000000 : ℚ), 6⟩,
    ⟨(74457233557/250000000000 : ℚ), (17296329753/1250000000 : ℚ), (-4348534465391/1000000000000 : ℚ), 5⟩,
    ⟨(151127546247/500000000000 : ℚ), (87877652491/10000000000 : ℚ), (-2835016433139/1000000000000 : ℚ), 5⟩,
    ⟨(153735796991/500000000000 : ℚ), (474332691/80000000 : ℚ), (-196435575303/100000000000 : ℚ), 4⟩,
    ⟨(78357050233/250000000000 : ℚ), (41674344427/10000000000 : ℚ), (-283584793419/200000000000 : ℚ), 4⟩,
    ⟨(320067547961/1000000000000 : ℚ), (1506473403/500000000 : ℚ), (-1052557470481/1000000000000 : ℚ), 4⟩,
    ⟨(32732569453/100000000000 : ℚ), (11101532057/5000000000 : ℚ), (-79619112157/100000000000 : ℚ), 3⟩,
    ⟨(167566370359/500000000000 : ℚ), (16557721021/10000000000 : ℚ), (-609343339203/1000000000000 : ℚ), 3⟩,
    ⟨(343413500403/1000000000000 : ℚ), (12415720499/10000000000 : ℚ), (-29307244477/62500000000 : ℚ), 3⟩,
    ⟨(352088225343/1000000000000 : ℚ), (4650450773/5000000000 : ℚ), (-36066852031/100000000000 : ℚ), 3⟩,
    ⟨(180536686597/500000000000 : ℚ), (690927259/1000000000 : ℚ), (-137719248587/500000000000 : ℚ), 3⟩,
    ⟨(370282412071/1000000000000 : ℚ), (2519964659/5000000000 : ℚ), (-103558838777/500000000000 : ℚ), 3⟩,
    ⟨(75925330779/200000000000 : ℚ), (3556193633/10000000000 : ℚ), (-75755650159/500000000000 : ℚ), 2⟩,
    ⟨(389016108509/1000000000000 : ℚ), (2362772119/10000000000 : ℚ), (-26416326299/250000000000 : ℚ), 2⟩,
    ⟨(199180175167/500000000000 : ℚ), (86988681/625000000 : ℚ), (-33727240583/500000000000 : ℚ), 2⟩,
    ⟨(407569389211/1000000000000 : ℚ), (580228/9765625 : ℚ), (-4415241443/125000000000 : ℚ), 2⟩,
    ⟨(208277268531/500000000000 : ℚ), (-16607487/2500000000 : ℚ), (-1621895551/200000000000 : ℚ), 2⟩,
    ⟨(212614631001/500000000000 : ℚ), (-616941147/10000000000 : ℚ), (15055563041/1000000000000 : ℚ), 2⟩,
    ⟨(433510021687/1000000000000 : ℚ), (-1077757451/10000000000 : ℚ), (2177355103/62500000000 : ℚ), 2⟩,
    ⟨(3530536543/8000000000 : ℚ), (-292879237/2000000000 : ℚ), (51747030767/1000000000000 : ℚ), 2⟩,
    ⟨(448575214443/1000000000000 : ℚ), (-1788760781/10000000000 : ℚ), (8272203137/125000000000 : ℚ), 2⟩,
    ⟨(455214561473/1000000000000 : ℚ), (-1030014881/5000000000 : ℚ), (39217440703/500000000000 : ℚ), 2⟩,
    ⟨(230585584211/500000000000 : ℚ), (-71415591/312500000 : ℚ), (44377877877/500000000000 : ℚ), 2⟩,
    ⟨(46638766991/100000000000 : ℚ), (-1235024931/5000000000 : ℚ), (24330910809/250000000000 : ℚ), 2⟩,
    ⟨(29425864261/62500000000 : ℚ), (-130924719/500000000 : ℚ), (20855899137/200000000000 : ℚ), 2⟩,
    ⟨(7412609639/15625000000 : ℚ), (-683456979/2500000000 : ℚ), (109730145129/1000000000000 : ℚ), 2⟩,
    ⟨(477132631699/1000000000000 : ℚ), (-563683081/2000000000 : ℚ), (28438626861/250000000000 : ℚ), 2⟩,
    ⟨(478964423423/1000000000000 : ℚ), (-114957003/400000000 : ℚ), (116408122967/1000000000000 : ℚ), 2⟩,
    ⟨(479884750913/1000000000000 : ℚ), (-2901420931/10000000000 : ℚ), (58863169953/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2904845909/10000000000 : ℚ), (117890719133/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (35584123719/125000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control238.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control238.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate238
