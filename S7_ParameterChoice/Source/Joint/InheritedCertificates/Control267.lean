import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate267
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69128734333/250000000000 : ℚ), (3116772571621/2500000000 : ℚ), (-86381975491183/250000000000 : ℚ), 11⟩,
    ⟨(138698967807/500000000000 : ℚ), (679660434181/5000000000 : ℚ), (-38201006390467/1000000000000 : ℚ), 8⟩,
    ⟨(139577714211/500000000000 : ℚ), (474883245237/10000000000 : ℚ), (-6807372686323/500000000000 : ℚ), 7⟩,
    ⟨(281770490139/1000000000000 : ℚ), (116554168901/5000000000 : ℚ), (-6840837928347/1000000000000 : ℚ), 6⟩,
    ⟨(285217936291/1000000000000 : ℚ), (8417039279/625000000 : ℚ), (-4053058823987/1000000000000 : ℚ), 5⟩,
    ⟨(36183070761/125000000000 : ℚ), (42753458953/5000000000 : ℚ), (-1320855603177/500000000000 : ℚ), 5⟩,
    ⟨(294469482163/1000000000000 : ℚ), (14417953301/2500000000 : ℚ), (-228723428091/125000000000 : ℚ), 4⟩,
    ⟨(150092242219/500000000000 : ℚ), (20258346919/5000000000 : ℚ), (-1320182145501/1000000000000 : ℚ), 4⟩,
    ⟨(306554534317/1000000000000 : ℚ), (29273852139/10000000000 : ℚ), (-979402879601/1000000000000 : ℚ), 4⟩,
    ⟨(156759142369/500000000000 : ℚ), (5388490981/2500000000 : ℚ), (-370126583359/500000000000 : ℚ), 3⟩,
    ⟨(321008670977/1000000000000 : ℚ), (1003427629/625000000 : ℚ), (-70739900917/125000000000 : ℚ), 3⟩,
    ⟨(8223838913/25000000000 : ℚ), (600963857/500000000 : ℚ), (-339737447/781250000 : ℚ), 3⟩,
    ⟨(337276427777/1000000000000 : ℚ), (8983684631/10000000000 : ℚ), (-333809845023/1000000000000 : ℚ), 3⟩,
    ⟨(345897130947/1000000000000 : ℚ), (3326058893/5000000000 : ℚ), (-50842825529/200000000000 : ℚ), 3⟩,
    ⟨(177366321973/500000000000 : ℚ), (4829001707/10000000000 : ℚ), (-190382157129/1000000000000 : ℚ), 3⟩,
    ⟨(181848937977/500000000000 : ℚ), (422661809/1250000000 : ℚ), (-69201747053/500000000000 : ℚ), 3⟩,
    ⟨(186353243443/500000000000 : ℚ), (443249351/2000000000 : ℚ), (-95524629129/1000000000000 : ℚ), 2⟩,
    ⟨(190835859447/500000000000 : ℚ), (1267831741/10000000000 : ℚ), (-7470619817/125000000000 : ℚ), 2⟩,
    ⟨(390507231893/1000000000000 : ℚ), (488194443/10000000000 : ℚ), (-29673853019/1000000000000 : ℚ), 2⟩,
    ⟨(399127935063/1000000000000 : ℚ), (-39472227/2500000000 : ℚ), (-4172517951/1000000000000 : ℚ), 2⟩,
    ⟨(5093135079/12500000000 : ℚ), (-87086233/1250000000 : ℚ), (219394821/12500000000 : ℚ), 2⟩,
    ⟨(415395691863/1000000000000 : ℚ), (-11480237/100000000 : ℚ), (36116833023/1000000000000 : ℚ), 2⟩,
    ⟨(211443039051/500000000000 : ℚ), (-381743791/2500000000 : ℚ), (5199766621/100000000000 : ℚ), 2⟩,
    ⟨(429849828523/1000000000000 : ℚ), (-115319489/625000000 : ℚ), (839171/12800000 : ℚ), 2⟩,
    ⟨(218109939201/500000000000 : ℚ), (-2111349733/10000000000 : ℚ), (7708809559/100000000000 : ℚ), 2⟩,
    ⟨(441934880677/1000000000000 : ℚ), (-1166289419/5000000000 : ℚ), (43400510069/500000000000 : ℚ), 2⟩,
    ⟨(27933737297/62500000000 : ℚ), (-1257059691/5000000000 : ℚ), (11858613751/125000000000 : ℚ), 2⟩,
    ⟨(112796606637/250000000000 : ℚ), (-665014323/2500000000 : ℚ), (50711096043/500000000000 : ℚ), 2⟩,
    ⟨(454633872701/1000000000000 : ℚ), (-1386745597/5000000000 : ℚ), (106559603711/1000000000000 : ℚ), 2⟩,
    ⟨(228624467209/500000000000 : ℚ), (-1428356729/5000000000 : ℚ), (55176999899/500000000000 : ℚ), 2⟩,
    ⟨(18360257089/40000000000 : ℚ), (-116453623/400000000 : ℚ), (112856604187/1000000000000 : ℚ), 2⟩,
    ⟨(459889425507/1000000000000 : ℚ), (-2938403291/10000000000 : ℚ), (28524998297/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-367721813/1250000000 : ℚ), (57127525173/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (75954235143/250000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control267.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control267.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate267
