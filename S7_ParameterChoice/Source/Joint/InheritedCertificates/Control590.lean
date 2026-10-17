import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate590
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(107848982757/500000000000 : ℚ), (8475958466481/5000000000 : ℚ), (-183074234567401/500000000000 : ℚ), 12⟩,
    ⟨(10805182911/50000000000 : ℚ), (1856162500849/10000000000 : ℚ), (-40423389202133/1000000000000 : ℚ), 9⟩,
    ⟨(21691113659/100000000000 : ℚ), (162963170969/2500000000 : ℚ), (-7182586522401/500000000000 : ℚ), 8⟩,
    ⟨(43622524833/200000000000 : ℚ), (160787286919/5000000000 : ℚ), (-1796400676039/250000000000 : ℚ), 7⟩,
    ⟨(219696549963/1000000000000 : ℚ), (46627559717/2500000000 : ℚ), (-2115374642073/500000000000 : ℚ), 6⟩,
    ⟨(110823829957/500000000000 : ℚ), (14834398153/1250000000 : ℚ), (-2734690981947/1000000000000 : ℚ), 6⟩,
    ⟨(111973581881/500000000000 : ℚ), (80018214303/10000000000 : ℚ), (-1873909551589/1000000000000 : ℚ), 5⟩,
    ⟨(113286458013/500000000000 : ℚ), (56015530787/10000000000 : ℚ), (-1333518383867/1000000000000 : ℚ), 5⟩,
    ⟨(229499629279/1000000000000 : ℚ), (40155430567/10000000000 : ℚ), (-972038023153/1000000000000 : ℚ), 5⟩,
    ⟨(232699117671/1000000000000 : ℚ), (2916839959/1000000000 : ℚ), (-179563309609/250000000000 : ℚ), 4⟩,
    ⟨(11807028419/50000000000 : ℚ), (21268498081/10000000000 : ℚ), (-53314956531/100000000000 : ℚ), 4⟩,
    ⟨(47958167671/200000000000 : ℚ), (15414430031/10000000000 : ℚ), (-78780606259/200000000000 : ℚ), 4⟩,
    ⟨(487229547/2000000000 : ℚ), (10966691751/10000000000 : ℚ), (-143221494011/500000000000 : ℚ), 4⟩,
    ⟨(247575547229/1000000000000 : ℚ), (375778661/500000000 : ℚ), (-25214543249/125000000000 : ℚ), 4⟩,
    ⟨(251635015127/1000000000000 : ℚ), (1197309741/2500000000 : ℚ), (-16711045381/125000000000 : ℚ), 3⟩,
    ⟨(255754082297/1000000000000 : ℚ), (520393283/2000000000 : ℚ), (-9776896207/125000000000 : ℚ), 3⟩,
    ⟨(259893079873/1000000000000 : ℚ), (823685373/10000000000 : ℚ), (-32379205079/1000000000000 : ℚ), 3⟩,
    ⟨(264012147043/1000000000000 : ℚ), (-638634257/10000000000 : ℚ), (5917571409/1000000000000 : ℚ), 3⟩,
    ⟨(268071614941/1000000000000 : ℚ), (-1852730733/10000000000 : ℚ), (19105481997/500000000000 : ℚ), 3⟩,
    ⟨(27203238867/100000000000 : ℚ), (-286867951/1000000000 : ℚ), (65642004019/1000000000000 : ℚ), 3⟩,
    ⟨(55171264763/200000000000 : ℚ), (-744794543/2000000000 : ℚ), (89068763601/1000000000000 : ℚ), 3⟩,
    ⟨(279506593789/1000000000000 : ℚ), (-1111744241/2500000000 : ℚ), (54571370691/500000000000 : ℚ), 3⟩,
    ⟨(282948044499/1000000000000 : ℚ), (-2529667163/5000000000 : ℚ), (12636214233/100000000000 : ℚ), 3⟩,
    ⟨(286147532891/1000000000000 : ℚ), (-5577659243/10000000000 : ℚ), (70554877903/500000000000 : ℚ), 3⟩,
    ⟨(564598137/1953125000 : ℚ), (-6014756861/10000000000 : ℚ), (7684017811/50000000000 : ℚ), 3⟩,
    ⟨(36462499801/125000000000 : ℚ), (-6380509797/10000000000 : ℚ), (164300837623/1000000000000 : ℚ), 3⟩,
    ⟨(18374968891/62500000000 : ℚ), (-1336506163/2000000000 : ℚ), (173145205751/1000000000000 : ℚ), 3⟩,
    ⟨(147975306103/500000000000 : ℚ), (-865830871/1250000000 : ℚ), (180345850253/1000000000000 : ℚ), 3⟩,
    ⟨(59506907601/200000000000 : ℚ), (-7117259761/10000000000 : ℚ), (23250257153/125000000000 : ℚ), 3⟩,
    ⟨(14936801279/50000000000 : ℚ), (-3628805881/5000000000 : ℚ), (23773301253/125000000000 : ℚ), 3⟩,
    ⟨(5990870079/20000000000 : ℚ), (-1837495111/2500000000 : ℚ), (96474757127/500000000000 : ℚ), 3⟩,
    ⟨(18746824791/62500000000 : ℚ), (-3697906641/5000000000 : ℚ), (3886466711/20000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-740152611/1000000000 : ℚ), (194494705877/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (373410687771/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control590.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control590.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate590
