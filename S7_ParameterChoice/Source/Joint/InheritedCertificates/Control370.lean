import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate370
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134912390947/500000000000 : ℚ), (706345507907/500000000 : ℚ), (-2386992608863/6250000000 : ℚ), 12⟩,
    ⟨(27054748083/100000000000 : ℚ), (1543065921901/10000000000 : ℚ), (-42208149338251/1000000000000 : ℚ), 9⟩,
    ⟨(67996479679/250000000000 : ℚ), (135083969791/2500000000 : ℚ), (-300622883333/20000000000 : ℚ), 7⟩,
    ⟨(27412624261/100000000000 : ℚ), (3323485029/125000000 : ℚ), (-471462995681/62500000000 : ℚ), 6⟩,
    ⟨(276947840021/1000000000000 : ℚ), (38486089359/2500000000 : ℚ), (-1115453883833/250000000000 : ℚ), 5⟩,
    ⟨(11216941497/40000000000 : ℚ), (97916290517/10000000000 : ℚ), (-725420637759/250000000000 : ℚ), 5⟩,
    ⟨(56903972391/200000000000 : ℚ), (66115918017/10000000000 : ℚ), (-1002064328687/500000000000 : ℚ), 5⟩,
    ⟨(289197363767/1000000000000 : ℚ), (11615268993/2500000000 : ℚ), (-360186053537/250000000000 : ℚ), 4⟩,
    ⟨(147205497981/500000000000 : ℚ), (209624063/62500000 : ℚ), (-531986226123/500000000000 : ℚ), 4⟩,
    ⟨(300110548411/1000000000000 : ℚ), (3079750501/1250000000 : ℚ), (-799538029739/1000000000000 : ℚ), 4⟩,
    ⟨(76560282827/250000000000 : ℚ), (18274910493/10000000000 : ℚ), (-60674931563/100000000000 : ℚ), 3⟩,
    ⟨(31274370379/100000000000 : ℚ), (13588654483/10000000000 : ℚ), (-461800693223/1000000000000 : ℚ), 3⟩,
    ⟨(9986113829/31250000000 : ℚ), (125635869/125000000 : ℚ), (-175008008863/500000000000 : ℚ), 3⟩,
    ⟨(81652836207/250000000000 : ℚ), (7323754727/10000000000 : ℚ), (-16372022523/62500000000 : ℚ), 3⟩,
    ⟨(333842860421/1000000000000 : ℚ), (5183705833/10000000000 : ℚ), (-95657417409/500000000000 : ℚ), 3⟩,
    ⟨(170590272929/500000000000 : ℚ), (217396077/625000000 : ℚ), (-66890286661/500000000000 : ℚ), 3⟩,
    ⟨(348553735217/1000000000000 : ℚ), (2101208437/10000000000 : ℚ), (-345221943/4000000000 : ℚ), 3⟩,
    ⟨(355891420653/1000000000000 : ℚ), (244098519/2500000000 : ℚ), (-5837484109/125000000000 : ℚ), 3⟩,
    ⟨(181561468123/500000000000 : ℚ), (48754109/10000000000 : ℚ), (-13359984749/1000000000000 : ℚ), 3⟩,
    ⟨(370178638547/1000000000000 : ℚ), (-90297063/1250000000 : ℚ), (116458689/7812500000 : ℚ), 2⟩,
    ⟨(75398115457/200000000000 : ℚ), (-1367382589/10000000000 : ℚ), (19499095727/500000000000 : ℚ), 2⟩,
    ⟨(191746574883/500000000000 : ℚ), (-1909218521/10000000000 : ℚ), (59597531099/1000000000000 : ℚ), 2⟩,
    ⟨(48702966583/125000000000 : ℚ), (-236538187/1000000000 : ℚ), (15445687409/200000000000 : ℚ), 2⟩,
    ⟨(395323285113/1000000000000 : ℚ), (-1374651893/5000000000 : ℚ), (46147330717/500000000000 : ℚ), 2⟩,
    ⟨(400536917307/1000000000000 : ℚ), (-383917909/1250000000 : ℚ), (105108456549/1000000000000 : ℚ), 2⟩,
    ⟨(405214419119/1000000000000 : ℚ), (-3339507391/10000000000 : ℚ), (57955709101/500000000000 : ℚ), 2⟩,
    ⟨(8186214873/20000000000 : ℚ), (-355997841/1000000000 : ℚ), (7805621507/62500000000 : ℚ), 2⟩,
    ⟨(412786441053/1000000000000 : ℚ), (-934375597/2500000000 : ℚ), (132186799903/1000000000000 : ℚ), 2⟩,
    ⟨(83121607693/200000000000 : ℚ), (-775135267/2000000000 : ℚ), (137909806141/1000000000000 : ℚ), 2⟩,
    ⟨(208874181179/500000000000 : ℚ), (-994289833/2500000000 : ℚ), (142138331669/1000000000000 : ℚ), 2⟩,
    ⟨(104796700061/250000000000 : ℚ), (-126369533/312500000 : ℚ), (72464030781/500000000000 : ℚ), 2⟩,
    ⟨(20995474959/50000000000 : ℚ), (-4076867479/10000000000 : ℚ), (146314348539/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2040492161/5000000000 : ℚ), (29297447459/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (310570225433/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control370.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control370.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate370
