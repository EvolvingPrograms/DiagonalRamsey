import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate11
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(237876722107/1000000000000 : ℚ), (8256750846113/10000000000 : ℚ), (-98695875364843/500000000000 : ℚ), 10⟩,
    ⟨(2995242423/12500000000 : ℚ), (886302959719/10000000000 : ℚ), (-109149224939/5000000000 : ℚ), 6⟩,
    ⟨(121543977213/500000000000 : ℚ), (75755718661/2500000000 : ℚ), (-7785574431311/1000000000000 : ℚ), 5⟩,
    ⟨(248248999729/1000000000000 : ℚ), (145184058477/10000000000 : ℚ), (-3917046691101/1000000000000 : ℚ), 4⟩,
    ⟨(255052826061/1000000000000 : ℚ), (81810870641/10000000000 : ℚ), (-1162943780191/500000000000 : ℚ), 3⟩,
    ⟨(263433908857/1000000000000 : ℚ), (50703560599/10000000000 : ℚ), (-1521222256921/1000000000000 : ℚ), 3⟩,
    ⟨(273311533707/1000000000000 : ℚ), (33448255111/10000000000 : ℚ), (-529554386233/500000000000 : ℚ), 3⟩,
    ⟨(71147643421/250000000000 : ℚ), (23054717793/10000000000 : ℚ), (-769756363539/1000000000000 : ℚ), 2⟩,
    ⟨(297162405467/1000000000000 : ℚ), (8205166147/5000000000 : ℚ), (-288423836267/500000000000 : ℚ), 2⟩,
    ⟨(77726488861/250000000000 : ℚ), (14957037/12500000 : ℚ), (-441948417563/1000000000000 : ℚ), 2⟩,
    ⟨(81422216429/250000000000 : ℚ), (4441593953/5000000000 : ℚ), (-335930151/976562500 : ℚ), 2⟩,
    ⟨(13654750751/40000000000 : ℚ), (267241337/400000000 : ℚ), (-270652027187/1000000000000 : ℚ), 2⟩,
    ⟨(357794658583/1000000000000 : ℚ), (2533847111/5000000000 : ℚ), (-42865526411/200000000000 : ℚ), 2⟩,
    ⟨(374808344843/1000000000000 : ℚ), (3859737267/10000000000 : ℚ), (-170132831453/1000000000000 : ℚ), 1⟩,
    ⟨(78449195291/200000000000 : ℚ), (1468939137/5000000000 : ℚ), (-26962922531/200000000000 : ℚ), 1⟩,
    ⟨(204969809747/500000000000 : ℚ), (277798837/1250000000 : ℚ), (-53071906059/500000000000 : ℚ), 1⟩,
    ⟨(213859437253/500000000000 : ℚ), (829363451/5000000000 : ℚ), (-20638810127/250000000000 : ℚ), 1⟩,
    ⟨(89082503509/200000000000 : ℚ), (604401737/5000000000 : ℚ), (-62927021523/1000000000000 : ℚ), 1⟩,
    ⟨(462850149157/1000000000000 : ℚ), (422777999/5000000000 : ℚ), (-9288159589/200000000000 : ℚ), 1⟩,
    ⟨(479863835417/1000000000000 : ℚ), (549446687/10000000000 : ℚ), (-1299624897/40000000000 : ℚ), 1⟩,
    ⟨(248144862613/500000000000 : ℚ), (306173249/10000000000 : ℚ), (-322220117/15625000000 : ℚ), 1⟩,
    ⟨(102393925657/200000000000 : ℚ), (105135859/10000000000 : ℚ), (-2622691321/250000000000 : ℚ), 1⟩,
    ⟨(526752538557/1000000000000 : ℚ), (-12321309/2000000000 : ℚ), (-916642631/500000000000 : ℚ), 1⟩,
    ⟨(270248044267/500000000000 : ℚ), (-50014437/2500000000 : ℚ), (5553131589/1000000000000 : ℚ), 1⟩,
    ⟨(553067920317/1000000000000 : ℚ), (-157394843/5000000000 : ℚ), (2956340723/250000000000 : ℚ), 1⟩,
    ⟨(282173480147/500000000000 : ℚ), (-409300573/10000000000 : ℚ), (17105056221/1000000000000 : ℚ), 1⟩,
    ⟨(574224585143/1000000000000 : ℚ), (-243135493/5000000000 : ℚ), (10743225779/500000000000 : ℚ), 1⟩,
    ⟨(582605667939/1000000000000 : ℚ), (-547748163/10000000000 : ℚ), (5008430087/200000000000 : ℚ), 1⟩,
    ⟨(2302380837/3906250000 : ℚ), (-297639453/5000000000 : ℚ), (13913685927/500000000000 : ℚ), 1⟩,
    ⟨(23782821583/40000000000 : ℚ), (-7875063/125000000 : ℚ), (14941538263/500000000000 : ℚ), 1⟩,
    ⟨(467218047/781250000 : ℚ), (-326365431/5000000000 : ℚ), (488097099/15625000000 : ℚ), 1⟩,
    ⟨(299890885947/500000000000 : ℚ), (-663969023/10000000000 : ℚ), (15955638907/500000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-665368011/10000000000 : ℚ), (6399040367/200000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (141392496627/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control11.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control11.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate11
