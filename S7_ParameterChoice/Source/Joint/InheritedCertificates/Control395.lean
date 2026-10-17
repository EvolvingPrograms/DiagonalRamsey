import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate395
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(37940656669/125000000000 : ℚ), (411438250887/312500000 : ℚ), (-400432988280393/1000000000000 : ℚ), 12⟩,
    ⟨(304374515389/1000000000000 : ℚ), (1437655985937/10000000000 : ℚ), (-22132050260421/500000000000 : ℚ), 9⟩,
    ⟨(61212972121/200000000000 : ℚ), (503260507003/10000000000 : ℚ), (-15770489976919/1000000000000 : ℚ), 7⟩,
    ⟨(77145002513/250000000000 : ℚ), (61896063409/2500000000 : ℚ), (-792008190501/100000000000 : ℚ), 6⟩,
    ⟨(311895741467/1000000000000 : ℚ), (1791919933/125000000 : ℚ), (-1172329047267/250000000000 : ℚ), 5⟩,
    ⟨(315980122541/1000000000000 : ℚ), (45605147591/5000000000 : ℚ), (-3053751069813/1000000000000 : ℚ), 5⟩,
    ⟨(64158763691/200000000000 : ℚ), (12326989369/2000000000 : ℚ), (-1056447298903/500000000000 : ℚ), 4⟩,
    ⟨(326290470683/1000000000000 : ℚ), (43370211601/10000000000 : ℚ), (-1522425513747/1000000000000 : ℚ), 4⟩,
    ⟨(332417143461/1000000000000 : ℚ), (15687164177/5000000000 : ℚ), (-1127637185737/1000000000000 : ℚ), 4⟩,
    ⟨(16955741679/50000000000 : ℚ), (2889888901/1250000000 : ℚ), (-850654539647/1000000000000 : ℚ), 4⟩,
    ⟨(346319038623/1000000000000 : ℚ), (4306419673/2500000000 : ℚ), (-324406523907/500000000000 : ℚ), 3⟩,
    ⟨(176980189079/500000000000 : ℚ), (322287741/250000000 : ℚ), (-124288009049/250000000000 : ℚ), 3⟩,
    ⟨(361965261907/1000000000000 : ℚ), (1203094423/1250000000 : ℚ), (-190141163289/500000000000 : ℚ), 3⟩,
    ⟨(74051319693/200000000000 : ℚ), (711103319/1000000000 : ℚ), (-57660237729/200000000000 : ℚ), 3⟩,
    ⟨(378754537727/1000000000000 : ℚ), (321392863/625000000 : ℚ), (-107303062669/500000000000 : ℚ), 3⟩,
    ⟨(387377239893/1000000000000 : ℚ), (3576750407/10000000000 : ℚ), (-154661860931/1000000000000 : ℚ), 3⟩,
    ⟨(396041663627/1000000000000 : ℚ), (7235691/31250000 : ℚ), (-10527351409/100000000000 : ℚ), 3⟩,
    ⟨(404664365793/1000000000000 : ℚ), (643840653/5000000000 : ℚ), (-40088539/625000000 : ℚ), 3⟩,
    ⟨(82632461011/200000000000 : ℚ), (442245481/10000000000 : ℚ), (-29580922813/1000000000000 : ℚ), 2⟩,
    ⟨(105363410403/250000000000 : ℚ), (-129356929/5000000000 : ℚ), (-168397331/500000000000 : ℚ), 2⟩,
    ⟨(214729262681/500000000000 : ℚ), (-843469149/10000000000 : ℚ), (2453659199/100000000000 : ℚ), 2⟩,
    ⟨(6829685389/15625000000 : ℚ), (-333347043/2500000000 : ℚ), (5719991259/125000000000 : ℚ), 2⟩,
    ⟨(22215203497/50000000000 : ℚ), (-348953751/2000000000 : ℚ), (6388686873/100000000000 : ℚ), 2⟩,
    ⟨(451001760059/1000000000000 : ℚ), (-418026107/2000000000 : ℚ), (39672625907/500000000000 : ℚ), 2⟩,
    ⟨(457128432837/1000000000000 : ℚ), (-2379138131/10000000000 : ℚ), (18493371477/200000000000 : ℚ), 2⟩,
    ⟨(92525017013/200000000000 : ℚ), (-1309634703/5000000000 : ℚ), (1035091579/10000000000 : ℚ), 2⟩,
    ⟨(233719390489/500000000000 : ℚ), (-2816304269/10000000000 : ℚ), (56335719059/500000000000 : ℚ), 2⟩,
    ⟨(471523162053/1000000000000 : ℚ), (-594936957/2000000000 : ℚ), (120106839391/1000000000000 : ℚ), 2⟩,
    ⟨(474838893467/1000000000000 : ℚ), (-619556233/2000000000 : ℚ), (25186279187/200000000000 : ℚ), 2⟩,
    ⟨(238677021457/500000000000 : ℚ), (-1594043633/5000000000 : ℚ), (130230783653/1000000000000 : ℚ), 2⟩,
    ⟨(479044388131/1000000000000 : ℚ), (-1623680897/5000000000 : ℚ), (133065271257/1000000000000 : ℚ), 2⟩,
    ⟨(59986706271/125000000000 : ℚ), (-40959077/125000000 : ℚ), (67236599841/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3280384057/10000000000 : ℚ), (134648759273/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (154842176167/500000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control395.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control395.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate395
