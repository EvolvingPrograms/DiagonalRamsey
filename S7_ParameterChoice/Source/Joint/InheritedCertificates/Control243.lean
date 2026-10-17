import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate243
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117019156409/500000000000 : ℚ), (11955324344081/10000000000 : ℚ), (-17530384243291/62500000000 : ℚ), 11⟩,
    ⟨(58709245527/250000000000 : ℚ), (651178097919/5000000000 : ℚ), (-6201865626919/200000000000 : ℚ), 8⟩,
    ⟨(47285325813/200000000000 : ℚ), (227201599213/5000000000 : ℚ), (-690690098261/62500000000 : ℚ), 7⟩,
    ⟨(238791944521/1000000000000 : ℚ), (111361247953/5000000000 : ℚ), (-111042961697/20000000000 : ℚ), 6⟩,
    ⟨(120955074597/500000000000 : ℚ), (64230842989/5000000000 : ℚ), (-1644510374039/500000000000 : ℚ), 5⟩,
    ⟨(24575121307/100000000000 : ℚ), (81420057581/10000000000 : ℚ), (-1071601167671/500000000000 : ℚ), 5⟩,
    ⟨(125139072301/500000000000 : ℚ), (27405929099/5000000000 : ℚ), (-1483946183861/1000000000000 : ℚ), 4⟩,
    ⟨(255447346967/1000000000000 : ℚ), (19214263153/5000000000 : ℚ), (-33439784697/31250000000 : ℚ), 4⟩,
    ⟨(261209037919/1000000000000 : ℚ), (27701539253/10000000000 : ℚ), (-198304802571/250000000000 : ℚ), 4⟩,
    ⟨(10700309169/40000000000 : ℚ), (20342214329/10000000000 : ℚ), (-299418836409/500000000000 : ℚ), 3⟩,
    ⟨(68570690261/250000000000 : ℚ), (15103773199/10000000000 : ℚ), (-91409131889/200000000000 : ℚ), 3⟩,
    ⟨(70367221529/250000000000 : ℚ), (1407703467/1250000000 : ℚ), (-35036188173/100000000000 : ℚ), 3⟩,
    ⟨(288996898129/1000000000000 : ℚ), (8372464223/10000000000 : ℚ), (-134005165493/500000000000 : ℚ), 3⟩,
    ⟨(296794298211/1000000000000 : ℚ), (1230700941/2000000000 : ℚ), (-203058880739/1000000000000 : ℚ), 3⟩,
    ⟨(152392996569/500000000000 : ℚ), (4418053491/10000000000 : ℚ), (-150887880011/1000000000000 : ℚ), 3⟩,
    ⟨(156447509259/500000000000 : ℚ), (3039246913/10000000000 : ℚ), (-108326385889/1000000000000 : ℚ), 2⟩,
    ⟨(80260820001/250000000000 : ℚ), (482187819/2500000000 : ℚ), (-73142931873/1000000000000 : ℚ), 2⟩,
    ⟨(41144038173/125000000000 : ℚ), (40950747/400000000 : ℚ), (-4373373387/100000000000 : ℚ), 2⟩,
    ⟨(337144000311/1000000000000 : ℚ), (55770353/2000000000 : ℚ), (-18925423629/1000000000000 : ℚ), 2⟩,
    ⟨(172470700197/500000000000 : ℚ), (-67879607/2000000000 : ℚ), (6729349/3125000000 : ℚ), 2⟩,
    ⟨(176234706203/500000000000 : ℚ), (-213962343/2500000000 : ℚ), (20157905979/1000000000000 : ℚ), 2⟩,
    ⟨(359655537479/1000000000000 : ℚ), (-644613493/5000000000 : ℚ), (35585710517/1000000000000 : ℚ), 2⟩,
    ⟨(183215284649/500000000000 : ℚ), (-826880217/5000000000 : ℚ), (48817643523/1000000000000 : ℚ), 2⟩,
    ⟨(372729260603/1000000000000 : ℚ), (-39206849/200000000 : ℚ), (60146793827/1000000000000 : ℚ), 2⟩,
    ⟨(75698190311/200000000000 : ℚ), (-554338677/2500000000 : ℚ), (69799434723/1000000000000 : ℚ), 2⟩,
    ⟨(1198937981/3125000000 : ℚ), (-2431263803/10000000000 : ℚ), (77950350071/1000000000000 : ℚ), 2⟩,
    ⟨(388187085453/1000000000000 : ℚ), (-325881963/1250000000 : ℚ), (1323971719/15625000000 : ℚ), 2⟩,
    ⟨(24501759333/62500000000 : ℚ), (-2748554583/10000000000 : ℚ), (90253954209/1000000000000 : ℚ), 2⟩,
    ⟨(395146354001/1000000000000 : ℚ), (-1429328651/5000000000 : ℚ), (23646837499/250000000000 : ℚ), 2⟩,
    ⟨(397511669457/1000000000000 : ℚ), (-2939504993/10000000000 : ℚ), (2444788361/25000000000 : ℚ), 2⟩,
    ⟨(199550658207/500000000000 : ℚ), (-2992606437/10000000000 : ℚ), (49953293297/500000000000 : ℚ), 2⟩,
    ⟨(49987498213/125000000000 : ℚ), (-188682701/625000000 : ℚ), (25239485507/250000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-3022201971/10000000000 : ℚ), (25272268953/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (161238195269/500000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control243.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control243.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate243
