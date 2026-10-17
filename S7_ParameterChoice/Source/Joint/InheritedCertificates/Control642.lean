import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate642
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141064153697/500000000000 : ℚ), (4327880721977/2500000000 : ℚ), (-489001391041179/1000000000000 : ℚ), 13⟩,
    ⟨(4415614099/15625000000 : ℚ), (1897203432591/10000000000 : ℚ), (-53986163298217/1000000000000 : ℚ), 10⟩,
    ⟨(283536756281/1000000000000 : ℚ), (166774746223/2500000000 : ℚ), (-9592393968629/500000000000 : ℚ), 8⟩,
    ⟨(56986328207/200000000000 : ℚ), (329577422133/10000000000 : ℚ), (-1919290892627/200000000000 : ℚ), 7⟩,
    ⟨(35846315387/125000000000 : ℚ), (191458819881/10000000000 : ℚ), (-706301921587/125000000000 : ℚ), 6⟩,
    ⟨(289035693023/1000000000000 : ℚ), (3050860863/250000000 : ℚ), (-3652700859407/1000000000000 : ℚ), 6⟩,
    ⟨(291705335993/1000000000000 : ℚ), (2576147433/312500000 : ℚ), (-500695389177/200000000000 : ℚ), 5⟩,
    ⟨(294753741883/1000000000000 : ℚ), (57827187607/10000000000 : ℚ), (-356440293157/200000000000 : ℚ), 5⟩,
    ⟨(3726894411/12500000000 : ℚ), (41551319457/10000000000 : ℚ), (-1299921974807/1000000000000 : ℚ), 5⟩,
    ⟨(60373209241/200000000000 : ℚ), (1210672403/400000000 : ℚ), (-961525318849/1000000000000 : ℚ), 4⟩,
    ⟨(152930724629/500000000000 : ℚ), (22147227871/10000000000 : ℚ), (-714902735963/1000000000000 : ℚ), 4⟩,
    ⟨(155049642061/500000000000 : ℚ), (2015892517/1250000000 : ℚ), (-529567644041/1000000000000 : ℚ), 4⟩,
    ⟨(78634684533/250000000000 : ℚ), (2310364097/2000000000 : ℚ), (-386723081127/1000000000000 : ℚ), 4⟩,
    ⟨(319137056919/1000000000000 : ℚ), (8001493797/10000000000 : ℚ), (-274272501759/1000000000000 : ℚ), 4⟩,
    ⟨(161924978079/500000000000 : ℚ), (2598698287/5000000000 : ℚ), (-46037453483/250000000000 : ℚ), 4⟩,
    ⟨(164316024027/500000000000 : ℚ), (589774003/2000000000 : ℚ), (-55406834869/500000000000 : ℚ), 4⟩,
    ⟨(20839829903/62500000000 : ℚ), (1122221049/10000000000 : ℚ), (-25180004721/500000000000 : ℚ), 3⟩,
    ⟨(42277421293/125000000000 : ℚ), (-189153629/5000000000 : ℚ), (21108633/1000000000000 : ℚ), 3⟩,
    ⟨(342932269583/1000000000000 : ℚ), (-1622549237/10000000000 : ℚ), (42388992993/1000000000000 : ℚ), 3⟩,
    ⟨(34753058837/100000000000 : ℚ), (-133110963/500000000 : ℚ), (4892239699/62500000000 : ℚ), 3⟩,
    ⟨(17598502119/50000000000 : ℚ), (-3536107883/10000000000 : ℚ), (13604486941/125000000000 : ℚ), 3⟩,
    ⟨(89051969311/250000000000 : ℚ), (-2136810047/5000000000 : ℚ), (134947373413/1000000000000 : ℚ), 3⟩,
    ⟨(360203280297/1000000000000 : ℚ), (-2448616561/5000000000 : ℚ), (2457553499/15625000000 : ℚ), 3⟩,
    ⟨(181958886811/500000000000 : ℚ), (-16950733/31250000 : ℚ), (22045326849/125000000000 : ℚ), 3⟩,
    ⟨(367315584619/1000000000000 : ℚ), (-1466992851/2500000000 : ℚ), (96292704501/500000000000 : ℚ), 3⟩,
    ⟨(370363990509/1000000000000 : ℚ), (-1559690073/2500000000 : ℚ), (103130481201/500000000000 : ℚ), 3⟩,
    ⟨(373033633479/1000000000000 : ℚ), (-818069827/1250000000 : ℚ), (217627077669/1000000000000 : ℚ), 3⟩,
    ⟨(187649401703/500000000000 : ℚ), (-3395731719/5000000000 : ℚ), (226865214189/1000000000000 : ℚ), 3⟩,
    ⟨(377137685467/1000000000000 : ℚ), (-873010453/1250000000 : ℚ), (234111833639/1000000000000 : ℚ), 3⟩,
    ⟨(378532570221/1000000000000 : ℚ), (-356290807/500000000 : ℚ), (29933367917/125000000000 : ℚ), 3⟩,
    ⟨(189735012083/500000000000 : ℚ), (-144380951/200000000 : ℚ), (243000413443/1000000000000 : ℚ), 3⟩,
    ⟨(379941019107/1000000000000 : ℚ), (-3632647427/5000000000 : ℚ), (244756447581/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-7271058707/10000000000 : ℚ), (244975456977/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (341048005061/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control642.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control642.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate642
