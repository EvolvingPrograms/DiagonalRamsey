import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control299
namespace DiagonalRamsey.JointInheritedCertificate299
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11749242047/40000000000 : ℚ), (71776090487/62500000 : ℚ), (-338147576390053/1000000000000 : ℚ), 11⟩,
    ⟨(294723693981/1000000000000 : ℚ), (10010995827/80000000 : ℚ), (-1869578347729/50000000000 : ℚ), 8⟩,
    ⟨(2966994199/10000000000 : ℚ), (87365877381/2000000000 : ℚ), (-6665505488809/500000000000 : ℚ), 7⟩,
    ⟨(299639201611/1000000000000 : ℚ), (42852534471/2000000000 : ℚ), (-1675495998271/250000000000 : ℚ), 6⟩,
    ⟨(303514727409/1000000000000 : ℚ), (61852286539/5000000000 : ℚ), (-3973874977831/1000000000000 : ℚ), 5⟩,
    ⟨(308288673863/1000000000000 : ℚ), (7850949759/1000000000 : ℚ), (-2592783805597/1000000000000 : ℚ), 5⟩,
    ⟨(156957532629/500000000000 : ℚ), (26473338127/5000000000 : ℚ), (-71932611347/40000000000 : ℚ), 4⟩,
    ⟨(320339716369/1000000000000 : ℚ), (18604613853/5000000000 : ℚ), (-1299715832709/1000000000000 : ℚ), 4⟩,
    ⟨(163750377147/500000000000 : ℚ), (3363516999/1250000000 : ℚ), (-9663465159/10000000000 : ℚ), 4⟩,
    ⟨(83832303581/250000000000 : ℚ), (3968892361/2000000000 : ℚ), (-36622346121/50000000000 : ℚ), 3⟩,
    ⟨(343749704109/1000000000000 : ℚ), (14820170407/10000000000 : ℚ), (-14049740983/25000000000 : ℚ), 3⟩,
    ⟨(352681129729/1000000000000 : ℚ), (5569440949/5000000000 : ℚ), (-433897275347/1000000000000 : ℚ), 3⟩,
    ⟨(5656835573/15625000000 : ℚ), (8374438481/10000000000 : ℚ), (-335175309891/1000000000000 : ℚ), 3⟩,
    ⟨(92932159551/250000000000 : ℚ), (1563729243/2500000000 : ℚ), (-16091408431/62500000000 : ℚ), 3⟩,
    ⟨(381661283141/1000000000000 : ℚ), (4600710989/10000000000 : ℚ), (-39036976367/200000000000 : ℚ), 3⟩,
    ⟨(195869877341/500000000000 : ℚ), (411213323/1250000000 : ℚ), (-144514137247/1000000000000 : ℚ), 3⟩,
    ⟨(401866991637/1000000000000 : ℚ), (2236817999/10000000000 : ℚ), (-102754086967/1000000000000 : ℚ), 2⟩,
    ⟨(205972731589/500000000000 : ℚ), (1381504489/10000000000 : ℚ), (-67964696891/1000000000000 : ℚ), 2⟩,
    ⟨(210939054057/500000000000 : ℚ), (679906993/10000000000 : ℚ), (-1936219031/50000000000 : ℚ), 2⟩,
    ⟨(215784634823/500000000000 : ℚ), (4987743/500000000 : ℚ), (-2795051183/200000000000 : ℚ), 2⟩,
    ⟨(44092561659/100000000000 : ℚ), (-76602909/2000000000 : ℚ), (1770037741/250000000000 : ℚ), 2⟩,
    ⟨(44985704221/100000000000 : ℚ), (-393273967/5000000000 : ℚ), (25049419923/1000000000000 : ℚ), 2⟩,
    ⟨(229138765997/500000000000 : ℚ), (-112465987/1000000000 : ℚ), (40399348697/1000000000000 : ℚ), 2⟩,
    ⟨(58263249003/125000000000 : ℚ), (-1407945467/10000000000 : ℚ), (6686347311/125000000000 : ℚ), 2⟩,
    ⟨(9465340599/20000000000 : ℚ), (-822286801/5000000000 : ℚ), (4037730633/62500000000 : ℚ), 2⟩,
    ⟨(479691681061/1000000000000 : ℚ), (-92042973/500000000 : ℚ), (9244443213/125000000000 : ℚ), 2⟩,
    ⟨(60664759057/125000000000 : ℚ), (-2001681977/10000000000 : ℚ), (5107178233/62500000000 : ℚ), 2⟩,
    ⟨(49009201891/100000000000 : ℚ), (-85231613/400000000 : ℚ), (11001409357/125000000000 : ℚ), 2⟩,
    ⟨(123491886177/250000000000 : ℚ), (-44620589/200000000 : ℚ), (5808950683/62500000000 : ℚ), 2⟩,
    ⟨(496907326419/1000000000000 : ℚ), (-288063157/1250000000 : ℚ), (96583424897/1000000000000 : ℚ), 2⟩,
    ⟨(249441526169/500000000000 : ℚ), (-2352703493/10000000000 : ℚ), (98983176627/1000000000000 : ℚ), 2⟩,
    ⟨(499875695143/1000000000000 : ℚ), (-2376571909/10000000000 : ℚ), (50087557087/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2379544767/10000000000 : ℚ), (100323738601/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (313519180677/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control299.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control299.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate299

-- Control300
namespace DiagonalRamsey.JointInheritedCertificate300
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48119247/156250000 : ℚ), (11713814714243/10000000000 : ℚ), (-361605259431259/1000000000000 : ℚ), 11⟩,
    ⟨(308983580741/1000000000000 : ℚ), (1276748521943/10000000000 : ℚ), (-39986085157599/1000000000000 : ℚ), 8⟩,
    ⟨(311014553613/1000000000000 : ℚ), (445863435487/10000000000 : ℚ), (-7128246925443/500000000000 : ℚ), 7⟩,
    ⟨(314036540037/1000000000000 : ℚ), (218796512171/10000000000 : ℚ), (-447978328113/62500000000 : ℚ), 6⟩,
    ⟨(318020436633/1000000000000 : ℚ), (63194129029/5000000000 : ℚ), (-2125172928643/500000000000 : ℚ), 5⟩,
    ⟨(161463938149/500000000000 : ℚ), (10032310201/1250000000 : ℚ), (-2773509709409/1000000000000 : ℚ), 5⟩,
    ⟨(65742319541/200000000000 : ℚ), (54159914267/10000000000 : ℚ), (-962000774481/500000000000 : ℚ), 4⟩,
    ⟨(41914487557/125000000000 : ℚ), (19044069977/5000000000 : ℚ), (-1390898262157/1000000000000 : ℚ), 4⟩,
    ⟨(5354330961/15625000000 : ℚ), (27565350279/10000000000 : ℚ), (-1034498274017/1000000000000 : ℚ), 4⟩,
    ⟨(35072454769/100000000000 : ℚ), (10173937731/5000000000 : ℚ), (-98059871221/125000000000 : ℚ), 3⟩,
    ⟨(179690249239/500000000000 : ℚ), (15213143967/10000000000 : ℚ), (-150578285437/250000000000 : ℚ), 3⟩,
    ⟨(368561672329/1000000000000 : ℚ), (715649623/625000000 : ℚ), (-232730262343/500000000000 : ℚ), 3⟩,
    ⟨(378179649521/1000000000000 : ℚ), (8624577731/10000000000 : ℚ), (-90006068849/250000000000 : ℚ), 3⟩,
    ⟨(97035450919/250000000000 : ℚ), (1291606407/2000000000 : ℚ), (-138531061869/500000000000 : ℚ), 3⟩,
    ⟨(398352193803/1000000000000 : ℚ), (4767306939/10000000000 : ℚ), (-21061213781/100000000000 : ℚ), 3⟩,
    ⟨(51089061033/125000000000 : ℚ), (685526881/2000000000 : ℚ), (-156579216253/1000000000000 : ℚ), 3⟩,
    ⟨(5239036397/12500000000 : ℚ), (1176023559/5000000000 : ℚ), (-112078659741/1000000000000 : ℚ), 2⟩,
    ⟨(21474160311/50000000000 : ℚ), (295727989/2000000000 : ℚ), (-75034297127/1000000000000 : ℚ), 2⟩,
    ⟨(109923399087/250000000000 : ℚ), (190636233/2500000000 : ℚ), (-10981069457/250000000000 : ℚ), 2⟩,
    ⟨(224827875251/500000000000 : ℚ), (170732721/10000000000 : ℚ), (-17615614487/1000000000000 : ℚ), 2⟩,
    ⟨(91854745539/200000000000 : ℚ), (-20089887/625000000 : ℚ), (4746254447/1000000000000 : ℚ), 2⟩,
    ⟨(234227450773/500000000000 : ℚ), (-732561599/10000000000 : ℚ), (23812845193/1000000000000 : ℚ), 2⟩,
    ⟨(238555426167/500000000000 : ℚ), (-1076800801/10000000000 : ℚ), (20042558863/500000000000 : ℚ), 2⟩,
    ⟨(12128955463/25000000000 : ℚ), (-85314063/625000000 : ℚ), (53950687167/1000000000000 : ℚ), 2⟩,
    ⟨(30782468723/62500000000 : ℚ), (-802809793/5000000000 : ℚ), (32855314499/500000000000 : ℚ), 2⟩,
    ⟨(499123802319/1000000000000 : ℚ), (-90253551/500000000 : ℚ), (37799531051/500000000000 : ℚ), 2⟩,
    ⟨(252453761863/500000000000 : ℚ), (-246049189/1250000000 : ℚ), (83797623723/1000000000000 : ℚ), 2⟩,
    ⟨(509814963391/1000000000000 : ℚ), (-1049721133/5000000000 : ℚ), (22611564951/250000000000 : ℚ), 2⟩,
    ⟨(513798859987/1000000000000 : ℚ), (-2201144109/10000000000 : ℚ), (95651296289/1000000000000 : ℚ), 2⟩,
    ⟨(516820846411/1000000000000 : ℚ), (-2275666449/10000000000 : ℚ), (99491450533/1000000000000 : ℚ), 2⟩,
    ⟨(518851819283/1000000000000 : ℚ), (-1162269471/5000000000 : ℚ), (1275277871/12500000000 : ℚ), 2⟩,
    ⟨(64984027403/125000000000 : ℚ), (-2348737577/10000000000 : ℚ), (12909876611/125000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2351751391/10000000000 : ℚ), (25858927987/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (2373271139/7812500000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control300.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control300.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate300

-- Control301
namespace DiagonalRamsey.JointInheritedCertificate301
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(119700086047/500000000000 : ℚ), (10687808598389/10000000000 : ℚ), (-256532108744493/1000000000000 : ℚ), 11⟩,
    ⟨(120134642777/500000000000 : ℚ), (581696463173/5000000000 : ℚ), (-5673026112771/200000000000 : ℚ), 8⟩,
    ⟨(241999142437/1000000000000 : ℚ), (40551368067/1000000000 : ℚ), (-10111648399123/1000000000000 : ℚ), 7⟩,
    ⟨(61143270819/250000000000 : ℚ), (39710573849/2000000000 : ℚ), (-1270617017587/250000000000 : ℚ), 6⟩,
    ⟨(61991579903/250000000000 : ℚ), (114410259679/10000000000 : ℚ), (-3012663663669/1000000000000 : ℚ), 5⟩,
    ⟨(126073086363/500000000000 : ℚ), (9056973183/1250000000 : ℚ), (-982366321379/500000000000 : ℚ), 5⟩,
    ⟨(128536194173/500000000000 : ℚ), (1218747343/250000000 : ℚ), (-680902820959/500000000000 : ℚ), 4⟩,
    ⟨(262697524323/1000000000000 : ℚ), (17085385123/5000000000 : ℚ), (-983304678829/1000000000000 : ℚ), 4⟩,
    ⟨(67241851881/250000000000 : ℚ), (12318676909/5000000000 : ℚ), (-730122228621/1000000000000 : ℚ), 4⟩,
    ⟨(34477706943/125000000000 : ℚ), (9052927083/5000000000 : ℚ), (-552370897991/1000000000000 : ℚ), 3⟩,
    ⟨(283194258229/1000000000000 : ℚ), (13463353/10000000 : ℚ), (-211360244703/500000000000 : ℚ), 3⟩,
    ⟨(58202842677/200000000000 : ℚ), (2515841921/2500000000 : ℚ), (-32518299099/100000000000 : ℚ), 3⟩,
    ⟨(299206210569/1000000000000 : ℚ), (938823599/1250000000 : ℚ), (-62475712799/250000000000 : ℚ), 3⟩,
    ⟨(307691356369/1000000000000 : ℚ), (2776507357/5000000000 : ℚ), (-95269990233/500000000000 : ℚ), 3⟩,
    ⟨(158193967097/500000000000 : ℚ), (1006095169/2500000000 : ℚ), (-142869141989/1000000000000 : ℚ), 3⟩,
    ⟨(81303047811/250000000000 : ℚ), (2811786451/10000000000 : ℚ), (-51994979247/500000000000 : ℚ), 3⟩,
    ⟨(3340791451/10000000000 : ℚ), (918339097/5000000000 : ℚ), (-17965294093/250000000000 : ℚ), 2⟩,
    ⟨(6858068043/20000000000 : ℚ), (521625589/5000000000 : ℚ), (-9003101517/200000000000 : ℚ), 2⟩,
    ⟨(14063999199/40000000000 : ℚ), (3129179/80000000 : ℚ), (-22379221587/1000000000000 : ℚ), 2⟩,
    ⟨(14403405031/40000000000 : ℚ), (-116619/7812500 : ℚ), (-63093757/20000000000 : ℚ), 2⟩,
    ⟨(368277122959/1000000000000 : ℚ), (-75008029/1250000000 : ℚ), (207157163/15625000000 : ℚ), 2⟩,
    ⟨(75219415623/200000000000 : ℚ), (-195565423/2000000000 : ℚ), (27314888681/1000000000000 : ℚ), 2⟩,
    ⟨(479337101/1250000000 : ℚ), (-647584823/5000000000 : ℚ), (9841230367/250000000000 : ℚ), 2⟩,
    ⟨(19516196441/50000000000 : ℚ), (-780870339/5000000000 : ℚ), (12419256923/250000000000 : ℚ), 2⟩,
    ⟨(396593812021/1000000000000 : ℚ), (-1784963083/10000000000 : ℚ), (913421163/15625000000 : ℚ), 2⟩,
    ⟨(201109473999/500000000000 : ℚ), (-1970562973/10000000000 : ℚ), (13174264501/200000000000 : ℚ), 2⟩,
    ⟨(203572581809/500000000000 : ℚ), (-424591029/2000000000 : ℚ), (18009498033/250000000000 : ℚ), 2⟩,
    ⟨(102831254183/250000000000 : ℚ), (-1122762869/5000000000 : ℚ), (15410761079/200000000000 : ℚ), 2⟩,
    ⟨(103679563267/250000000000 : ℚ), (-2340839949/10000000000 : ℚ), (40495193167/500000000000 : ℚ), 2⟩,
    ⟨(417292193907/1000000000000 : ℚ), (-2410793933/10000000000 : ℚ), (83900466457/1000000000000 : ℚ), 2⟩,
    ⟨(41902205079/100000000000 : ℚ), (-1228361983/5000000000 : ℚ), (17164210239/200000000000 : ℚ), 2⟩,
    ⟨(1679564657/4000000000 : ℚ), (-15496761/62500000 : ℚ), (43387820199/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-31028961/125000000 : ℚ), (43447349997/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (350685539537/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control301.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control301.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate301

-- Control302
namespace DiagonalRamsey.JointInheritedCertificate302
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51504921447/200000000000 : ℚ), (2408572245181/2000000000 : ℚ), (-971417129963/3125000000 : ℚ), 11⟩,
    ⟨(51670924579/200000000000 : ℚ), (1312863852519/10000000000 : ℚ), (-34365766768429/1000000000000 : ℚ), 8⟩,
    ⟨(32500832589/125000000000 : ℚ), (57317740143/1250000000 : ℚ), (-12246619152649/1000000000000 : ℚ), 7⟩,
    ⟨(262464810657/1000000000000 : ℚ), (225014945727/10000000000 : ℚ), (-6152400581683/1000000000000 : ℚ), 6⟩,
    ⟨(265705399403/1000000000000 : ℚ), (129944942081/10000000000 : ℚ), (-3644300390713/1000000000000 : ℚ), 5⟩,
    ⟨(269697218309/1000000000000 : ℚ), (20616081429/2500000000 : ℚ), (-59362411027/25000000000 : ℚ), 5⟩,
    ⟨(274401823977/1000000000000 : ℚ), (55585281263/10000000000 : ℚ), (-205493983037/125000000000 : ℚ), 4⟩,
    ⟨(139886954241/500000000000 : ℚ), (39020275569/10000000000 : ℚ), (-592687833323/500000000000 : ℚ), 4⟩,
    ⟨(285761735713/1000000000000 : ℚ), (28164338931/10000000000 : ℚ), (-878671800187/1000000000000 : ℚ), 4⟩,
    ⟨(146153819811/500000000000 : ℚ), (5177459251/2500000000 : ℚ), (-331693871177/500000000000 : ℚ), 3⟩,
    ⟨(11973943183/40000000000 : ℚ), (96244991/62500000 : ℚ), (-506404903563/1000000000000 : ℚ), 3⟩,
    ⟨(19176046717/62500000000 : ℚ), (460049117/400000000 : ℚ), (-19417426057/50000000000 : ℚ), 3⟩,
    ⟨(314640220773/1000000000000 : ℚ), (1713664057/2000000000 : ℚ), (-297274651113/1000000000000 : ℚ), 3⟩,
    ⟨(161371827577/500000000000 : ℚ), (3157385871/5000000000 : ℚ), (-225498987713/1000000000000 : ℚ), 3⟩,
    ⟨(331049010111/1000000000000 : ℚ), (910361873/2000000000 : ℚ), (-5246865269/31250000000 : ℚ), 3⟩,
    ⟨(42434537567/125000000000 : ℚ), (1575522497/5000000000 : ℚ), (-120960138199/1000000000000 : ℚ), 3⟩,
    ⟨(43493045877/125000000000 : ℚ), (1011497739/5000000000 : ℚ), (-82204640409/1000000000000 : ℚ), 2⟩,
    ⟨(178185828721/500000000000 : ℚ), (551988643/5000000000 : ℚ), (-1994117237/40000000000 : ℚ), 2⟩,
    ⟨(364677012399/1000000000000 : ℚ), (347849047/10000000000 : ℚ), (-22601618583/1000000000000 : ℚ), 2⟩,
    ⟨(18639022339/50000000000 : ℚ), (-279338763/10000000000 : ℚ), (518094427/1000000000000 : ℚ), 2⟩,
    ⟨(380603920081/1000000000000 : ℚ), (-401448143/5000000000 : ℚ), (2529426541/125000000000 : ℚ), 2⟩,
    ⟨(388072087977/1000000000000 : ℚ), (-620952137/5000000000 : ℚ), (18552412181/500000000000 : ℚ), 2⟩,
    ⟨(395113027931/1000000000000 : ℚ), (-1610880359/10000000000 : ℚ), (25775660517/500000000000 : ℚ), 2⟩,
    ⟨(627592081/1562500000 : ℚ), (-960475281/5000000000 : ℚ), (63902487737/1000000000000 : ℚ), 2⟩,
    ⟨(407646759071/1000000000000 : ℚ), (-545171279/2500000000 : ℚ), (74411661073/1000000000000 : ℚ), 2⟩,
    ⟨(51627355447/125000000000 : ℚ), (-1198351159/5000000000 : ℚ), (20818719963/250000000000 : ℚ), 2⟩,
    ⟨(104430862311/250000000000 : ℚ), (-6435273/25000000 : ℚ), (90643442007/1000000000000 : ℚ), 2⟩,
    ⟨(8434305363/20000000000 : ℚ), (-543365071/2000000000 : ℚ), (96633287543/1000000000000 : ℚ), 2⟩,
    ⟨(207497977/488281250 : ℚ), (-282782143/1000000000 : ℚ), (101332032851/1000000000000 : ℚ), 2⟩,
    ⟨(427414006841/1000000000000 : ℚ), (-2909293899/10000000000 : ℚ), (5240211/50000000 : ℚ), 2⟩,
    ⟨(429066044657/1000000000000 : ℚ), (-2962790921/10000000000 : ℚ), (107095162967/1000000000000 : ℚ), 2⟩,
    ⟨(214948030159/500000000000 : ℚ), (-23353901/78125000 : ℚ), (108233647133/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2992601751/10000000000 : ℚ), (21675126831/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (41014716989/125000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control302.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control302.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate302

-- Control303
namespace DiagonalRamsey.JointInheritedCertificate303
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264405464341/1000000000000 : ℚ), (2429062687039/2000000000 : ℚ), (-321868646246793/1000000000000 : ℚ), 12⟩,
    ⟨(66312622619/250000000000 : ℚ), (1324184816593/10000000000 : ℚ), (-1423353273351/40000000000 : ℚ), 8⟩,
    ⟨(133466202341/500000000000 : ℚ), (28910811389/625000000 : ℚ), (-12680922014169/1000000000000 : ℚ), 7⟩,
    ⟨(134717504603/500000000000 : ℚ), (113519154029/5000000000 : ℚ), (-6370776181577/1000000000000 : ℚ), 6⟩,
    ⟨(136367101299/500000000000 : ℚ), (2049107927/156250000 : ℚ), (-754765019489/200000000000 : ℚ), 5⟩,
    ⟨(276798211823/1000000000000 : ℚ), (41622660889/5000000000 : ℚ), (-1229526756479/500000000000 : ℚ), 5⟩,
    ⟨(281587898249/1000000000000 : ℚ), (56127305429/10000000000 : ℚ), (-34053094183/20000000000 : ℚ), 4⟩,
    ⟨(287057134579/1000000000000 : ℚ), (39413196903/10000000000 : ℚ), (-1227866343861/1000000000000 : ℚ), 4⟩,
    ⟨(293153249077/1000000000000 : ℚ), (28458412369/10000000000 : ℚ), (-18206733979/20000000000 : ℚ), 4⟩,
    ⟨(74954383207/250000000000 : ℚ), (20935360953/10000000000 : ℚ), (-85933867903/125000000000 : ℚ), 3⟩,
    ⟨(61397161027/200000000000 : ℚ), (7787761943/5000000000 : ℚ), (-524976672487/1000000000000 : ℚ), 3⟩,
    ⟨(314589031619/1000000000000 : ℚ), (5820644123/5000000000 : ℚ), (-402792247407/1000000000000 : ℚ), 3⟩,
    ⟨(322553989051/1000000000000 : ℚ), (8681081989/10000000000 : ℚ), (-77137522163/250000000000 : ℚ), 3⟩,
    ⟨(165401985269/500000000000 : ℚ), (320331957/500000000 : ℚ), (-234293129067/1000000000000 : ℚ), 3⟩,
    ⟨(42407440531/125000000000 : ℚ), (4627470693/10000000000 : ℚ), (-17471750361/100000000000 : ℚ), 3⟩,
    ⟨(347839218577/1000000000000 : ℚ), (3214003039/10000000000 : ℚ), (-126181397791/1000000000000 : ℚ), 3⟩,
    ⟨(178230213189/500000000000 : ℚ), (103795613/500000000 : ℚ), (-3444830019/40000000000 : ℚ), 2⟩,
    ⟨(182520060353/500000000000 : ℚ), (1148904851/10000000000 : ℚ), (-3293220639/62500000000 : ℚ), 2⟩,
    ⟨(23343479651/62500000000 : ℚ), (193194099/5000000000 : ℚ), (-24543441557/1000000000000 : ℚ), 2⟩,
    ⟨(381745655903/1000000000000 : ℚ), (-122963347/5000000000 : ℚ), (-672612033/1000000000000 : ℚ), 2⟩,
    ⟨(48713826667/125000000000 : ℚ), (-773609013/10000000000 : ℚ), (3935352397/200000000000 : ℚ), 2⟩,
    ⟨(19865691991/50000000000 : ℚ), (-30398489/250000000 : ℚ), (18539790893/500000000000 : ℚ), 2⟩,
    ⟨(404482112127/1000000000000 : ℚ), (-1587591937/10000000000 : ℚ), (51976651841/1000000000000 : ℚ), 2⟩,
    ⟨(205573197939/500000000000 : ℚ), (-949907319/5000000000 : ℚ), (8088487217/125000000000 : ℚ), 2⟩,
    ⟨(3337940083/8000000000 : ℚ), (-1080637251/5000000000 : ℚ), (75536330801/1000000000000 : ℚ), 2⟩,
    ⟨(84542349341/200000000000 : ℚ), (-594666533/2500000000 : ℚ), (84665587231/1000000000000 : ℚ), 2⟩,
    ⟨(106875358283/250000000000 : ℚ), (-159822293/625000000 : ℚ), (23063229741/250000000000 : ℚ), 2⟩,
    ⟨(431565442357/1000000000000 : ℚ), (-2700712787/10000000000 : ℚ), (19683779839/200000000000 : ℚ), 2⟩,
    ⟨(434864635749/1000000000000 : ℚ), (-351542663/1250000000 : ℚ), (6453418621/62500000000 : ℚ), 2⟩,
    ⟨(437367240273/1000000000000 : ℚ), (-1447132933/5000000000 : ℚ), (21365502121/200000000000 : ℚ), 2⟩,
    ⟨(439049154479/1000000000000 : ℚ), (-368506747/1250000000 : ℚ), (2183690713/20000000000 : ℚ), 2⟩,
    ⟨(219947090307/500000000000 : ℚ), (-297470489/1000000000 : ℚ), (27588941517/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-1489012493/5000000000 : ℚ), (110501832749/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (40405146547/125000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control303.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control303.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate303

-- Control304
namespace DiagonalRamsey.JointInheritedCertificate304
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(278310774153/1000000000000 : ℚ), (3088962248161/2500000000 : ℚ), (-344656477283437/1000000000000 : ℚ), 12⟩,
    ⟨(279185130201/1000000000000 : ℚ), (1347449001193/10000000000 : ℚ), (-38103728712391/1000000000000 : ℚ), 8⟩,
    ⟨(280925421771/1000000000000 : ℚ), (470856661111/10000000000 : ℚ), (-13579397351199/1000000000000 : ℚ), 7⟩,
    ⟨(141757444451/500000000000 : ℚ), (231196208187/10000000000 : ℚ), (-170563748383/25000000000 : ℚ), 6⟩,
    ⟨(71732148403/250000000000 : ℚ), (133604605799/10000000000 : ℚ), (-4041789555113/1000000000000 : ℚ), 5⟩,
    ⟨(291133660057/1000000000000 : ℚ), (42425057597/5000000000 : ℚ), (-2633993647941/1000000000000 : ℚ), 5⟩,
    ⟨(296089591149/1000000000000 : ℚ), (7155120677/1250000000 : ℚ), (-1824112387729/1000000000000 : ℚ), 4⟩,
    ⟨(301748658563/1000000000000 : ℚ), (20110198239/5000000000 : ℚ), (-65789469473/50000000000 : ℚ), 4⟩,
    ⟨(61611272477/200000000000 : ℚ), (29062420571/10000000000 : ℚ), (-243967229389/250000000000 : ℚ), 4⟩,
    ⟨(314951955981/1000000000000 : ℚ), (21398438423/10000000000 : ℚ), (-368662086813/500000000000 : ℚ), 3⟩,
    ⟨(322369031013/1000000000000 : ℚ), (1992179489/1250000000 : ℚ), (-563434370989/1000000000000 : ℚ), 3⟩,
    ⟨(66047231399/200000000000 : ℚ), (11928614187/10000000000 : ℚ), (-27044802661/62500000000 : ℚ), 3⟩,
    ⟨(169238784601/500000000000 : ℚ), (1114031223/1250000000 : ℚ), (-82981889829/250000000000 : ℚ), 3⟩,
    ⟨(347013898331/1000000000000 : ℚ), (3297406323/5000000000 : ℚ), (-252545119937/1000000000000 : ℚ), 3⟩,
    ⟨(177881467433/500000000000 : ℚ), (478228799/1000000000 : ℚ), (-188889035303/1000000000000 : ℚ), 3⟩,
    ⟨(364640420801/1000000000000 : ℚ), (3342666657/10000000000 : ℚ), (-137058415151/1000000000000 : ℚ), 3⟩,
    ⟨(186780430547/500000000000 : ℚ), (218389729/1000000000 : ℚ), (-18861262987/200000000000 : ℚ), 2⟩,
    ⟨(382438347029/1000000000000 : ℚ), (310108267/2500000000 : ℚ), (-29328351017/500000000000 : ℚ), 2⟩,
    ⟨(391187383563/1000000000000 : ℚ), (18590163/400000000 : ℚ), (-1433107851/50000000000 : ℚ), 2⟩,
    ⟨(99930928173/250000000000 : ℚ), (-178126407/10000000000 : ℚ), (-1623076467/500000000000 : ℚ), 2⟩,
    ⟨(4079651249/10000000000 : ℚ), (-714310143/10000000000 : ℚ), (18402240517/1000000000000 : ℚ), 2⟩,
    ⟨(207916125441/500000000000 : ℚ), (-1163489349/10000000000 : ℚ), (7380050539/200000000000 : ℚ), 2⟩,
    ⟨(211624662957/500000000000 : ℚ), (-1540658527/10000000000 : ℚ), (10544300967/200000000000 : ℚ), 2⟩,
    ⟨(430144919509/1000000000000 : ℚ), (-1857318281/10000000000 : ℚ), (16557888061/250000000000 : ℚ), 2⟩,
    ⟨(436452623331/1000000000000 : ℚ), (-2122334417/10000000000 : ℚ), (77713518161/1000000000000 : ℚ), 2⟩,
    ⟨(88422338149/200000000000 : ℚ), (-2342558783/10000000000 : ℚ), (87386847669/1000000000000 : ℚ), 2⟩,
    ⟨(447067621837/1000000000000 : ℚ), (-630820631/2500000000 : ℚ), (95421195237/1000000000000 : ℚ), 2⟩,
    ⟨(451272688283/1000000000000 : ℚ), (-667142319/2500000000 : ℚ), (50973397553/500000000000 : ℚ), 2⟩,
    ⟨(14208949781/31250000000 : ℚ), (-2781500697/10000000000 : ℚ), (26765558597/250000000000 : ℚ), 2⟩,
    ⟨(114318965031/250000000000 : ℚ), (-286435649/1000000000 : ℚ), (110840251441/1000000000000 : ℚ), 2⟩,
    ⟨(459016151693/1000000000000 : ℚ), (-72968603/250000000 : ℚ), (56665992097/500000000000 : ℚ), 2⟩,
    ⟨(459890507741/1000000000000 : ℚ), (-2945688517/10000000000 : ℚ), (57284975817/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2949045007/10000000000 : ℚ), (4588973273/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (62679607411/200000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control304.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control304.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate304

-- Control305
namespace DiagonalRamsey.JointInheritedCertificate305
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(356667077/1250000000 : ℚ), (1246373543473/1000000000 : ℚ), (-71286483503739/200000000000 : ℚ), 12⟩,
    ⟨(286222344619/1000000000000 : ℚ), (1359370346681/10000000000 : ℚ), (-39405913617187/1000000000000 : ℚ), 8⟩,
    ⟨(57598230431/200000000000 : ℚ), (237550700021/5000000000 : ℚ), (-14043689121113/1000000000000 : ℚ), 7⟩,
    ⟨(36327881203/125000000000 : ℚ), (233326721627/10000000000 : ℚ), (-7056002982821/1000000000000 : ℚ), 6⟩,
    ⟨(147046345207/500000000000 : ℚ), (16858237499/1250000000 : ℚ), (-2090128867151/500000000000 : ℚ), 5⟩,
    ⟨(74591664997/250000000000 : ℚ), (42836137463/5000000000 : ℚ), (-681097944149/250000000000 : ℚ), 5⟩,
    ⟨(151701898841/500000000000 : ℚ), (14452855883/2500000000 : ℚ), (-377374927681/200000000000 : ℚ), 4⟩,
    ⟨(309155593107/1000000000000 : ℚ), (40633784567/10000000000 : ℚ), (-680612206187/500000000000 : ℚ), 4⟩,
    ⟨(315566653329/1000000000000 : ℚ), (29371656409/10000000000 : ℚ), (-504867872683/500000000000 : ℚ), 4⟩,
    ⟨(161287618167/500000000000 : ℚ), (21635426229/10000000000 : ℚ), (-763091541217/1000000000000 : ℚ), 3⟩,
    ⟨(165056922817/500000000000 : ℚ), (16122553091/10000000000 : ℚ), (-145829023559/250000000000 : ℚ), 3⟩,
    ⟨(338109880303/1000000000000 : ℚ), (3018870443/2500000000 : ℚ), (-28012023813/62500000000 : ℚ), 3⟩,
    ⟨(69297266831/200000000000 : ℚ), (9030312219/10000000000 : ℚ), (-344023430817/1000000000000 : ℚ), 3⟩,
    ⟨(4439531717/12500000000 : ℚ), (3345408641/5000000000 : ℚ), (-261996188181/1000000000000 : ℚ), 3⟩,
    ⟨(364054933339/1000000000000 : ℚ), (1215293939/2500000000 : ℚ), (-49058876911/250000000000 : ℚ), 3⟩,
    ⟨(373077883457/1000000000000 : ℚ), (852032659/2500000000 : ℚ), (-142706583609/1000000000000 : ℚ), 3⟩,
    ⟨(95536122943/250000000000 : ℚ), (447749099/2000000000 : ℚ), (-49283963199/500000000000 : ℚ), 2⟩,
    ⟨(39116744189/100000000000 : ℚ), (257366263/2000000000 : ℚ), (-30887624409/500000000000 : ℚ), 2⟩,
    ⟨(400059837869/1000000000000 : ℚ), (504392973/10000000000 : ℚ), (-1926931081/62500000000 : ℚ), 2⟩,
    ⟨(204368020537/500000000000 : ℚ), (-3597847/250000000 : ℚ), (-4620752601/1000000000000 : ℚ), 2⟩,
    ⟨(208556247463/500000000000 : ℚ), (-10694751/156250000 : ℚ), (707786077/40000000000 : ℚ), 2⟩,
    ⟨(85021705919/200000000000 : ℚ), (-227432161/2000000000 : ℚ), (18377234787/500000000000 : ℚ), 2⟩,
    ⟨(86529427779/200000000000 : ℚ), (-1517163263/10000000000 : ℚ), (6631166371/125000000000 : ℚ), 2⟩,
    ⟨(4396557219/10000000000 : ℚ), (-183610147/1000000000 : ℚ), (33479043231/500000000000 : ℚ), 2⟩,
    ⟨(223033391061/500000000000 : ℚ), (-2102943431/10000000000 : ℚ), (39387150547/500000000000 : ℚ), 2⟩,
    ⟨(451818577547/1000000000000 : ℚ), (-1162310909/5000000000 : ℚ), (70980509/800000000 : ℚ), 2⟩,
    ⟨(228427857621/500000000000 : ℚ), (-1253245767/5000000000 : ℚ), (96988198001/1000000000000 : ℚ), 2⟩,
    ⟨(92225936963/200000000000 : ℚ), (-2652666141/10000000000 : ℚ), (51848625833/500000000000 : ℚ), 2⟩,
    ⟨(92919865121/200000000000 : ℚ), (-2766265797/10000000000 : ℚ), (54477625079/500000000000 : ℚ), 2⟩,
    ⟨(233615611537/500000000000 : ℚ), (-178099943/625000000 : ℚ), (22567564667/200000000000 : ℚ), 2⟩,
    ⟨(46900003061/100000000000 : ℚ), (-363036759/1250000000 : ℚ), (115398165827/1000000000000 : ℚ), 2⟩,
    ⟨(469888713629/1000000000000 : ℚ), (-2931388911/10000000000 : ℚ), (116670115921/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-586952811/2000000000 : ℚ), (29207182223/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (308432677109/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control305.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control305.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate305

-- Control306
namespace DiagonalRamsey.JointInheritedCertificate306
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146224047219/500000000000 : ℚ), (6289150891631/5000000000 : ℚ), (-184335340448601/500000000000 : ℚ), 12⟩,
    ⟨(146675331939/500000000000 : ℚ), (1372031258467/10000000000 : ℚ), (-5094914337561/125000000000 : ℚ), 8⟩,
    ⟨(295147110523/1000000000000 : ℚ), (7493914091/156250000 : ℚ), (-18157886699/1250000000 : ℚ), 7⟩,
    ⟨(297820133607/1000000000000 : ℚ), (1840552339/78125000 : ℚ), (-1824681134201/250000000000 : ℚ), 6⟩,
    ⟨(301343990459/1000000000000 : ℚ), (136206817917/10000000000 : ℚ), (-4324267086163/1000000000000 : ℚ), 5⟩,
    ⟨(305684744409/1000000000000 : ℚ), (21636708253/2500000000 : ℚ), (-2818445436623/1000000000000 : ℚ), 5⟩,
    ⟨(2486404733/8000000000 : ℚ), (11683730103/2000000000 : ℚ), (-976104539709/500000000000 : ℚ), 4⟩,
    ⟨(316642263701/1000000000000 : ℚ), (41074164567/10000000000 : ℚ), (-352138287253/250000000000 : ℚ), 4⟩,
    ⟨(161576751071/500000000000 : ℚ), (29701378707/10000000000 : ℚ), (-1045044095569/1000000000000 : ℚ), 4⟩,
    ⟨(165135800081/500000000000 : ℚ), (4377673373/2000000000 : ℚ), (-394992312029/500000000000 : ℚ), 3⟩,
    ⟨(168964003293/500000000000 : ℚ), (16320348797/10000000000 : ℚ), (-604094845133/1000000000000 : ℚ), 3⟩,
    ⟨(69209797207/200000000000 : ℚ), (12232595637/10000000000 : ℚ), (-11609863577/25000000000 : ℚ), 3⟩,
    ⟨(354556329037/1000000000000 : ℚ), (286149159/312500000 : ℚ), (-178358006287/500000000000 : ℚ), 3⟩,
    ⟨(363368105229/1000000000000 : ℚ), (1358758147/2000000000 : ℚ), (-271943077251/1000000000000 : ℚ), 3⟩,
    ⟨(372399452389/1000000000000 : ℚ), (4945909829/10000000000 : ℚ), (-203998272947/1000000000000 : ℚ), 3⟩,
    ⟨(190781696853/500000000000 : ℚ), (3478548877/10000000000 : ℚ), (-7435379827/50000000000 : ℚ), 3⟩,
    ⟨(390771675417/1000000000000 : ℚ), (459566423/2000000000 : ℚ), (-51565636773/500000000000 : ℚ), 2⟩,
    ⟨(79987123347/200000000000 : ℚ), (668444503/5000000000 : ℚ), (-16288512691/250000000000 : ℚ), 2⟩,
    ⟨(81793392779/200000000000 : ℚ), (273610081/5000000000 : ℚ), (-33226033897/1000000000000 : ℚ), 2⟩,
    ⟨(417778740087/1000000000000 : ℚ), (-106898249/10000000000 : ℚ), (-6193998601/1000000000000 : ℚ), 2⟩,
    ⟨(426286083089/1000000000000 : ℚ), (-652130787/10000000000 : ℚ), (840560887/50000000000 : ℚ), 2⟩,
    ⟨(217203531269/500000000000 : ℚ), (-1108604597/10000000000 : ℚ), (36451594203/1000000000000 : ℚ), 2⟩,
    ⟨(221031734481/500000000000 : ℚ), (-149165359/1000000000 : ℚ), (53235480449/1000000000000 : ℚ), 2⟩,
    ⟨(224590783491/500000000000 : ℚ), (-1813045187/10000000000 : ℚ), (105555603/1562500000 : ℚ), 2⟩,
    ⟨(455692805423/1000000000000 : ℚ), (-2081855913/10000000000 : ℚ), (39858184577/500000000000 : ℚ), 2⟩,
    ⟨(461534477499/1000000000000 : ℚ), (-230510429/1000000000 : ℚ), (17990814041/200000000000 : ℚ), 2⟩,
    ⟨(93330064943/200000000000 : ℚ), (-2488212983/10000000000 : ℚ), (12306442283/125000000000 : ℚ), 2⟩,
    ⟨(94198215733/200000000000 : ℚ), (-2635348633/10000000000 : ℚ), (1646082831/15625000000 : ℚ), 2⟩,
    ⟨(474514935517/1000000000000 : ℚ), (-1374836179/5000000000 : ℚ), (110753859931/1000000000000 : ℚ), 2⟩,
    ⟨(477187958601/1000000000000 : ℚ), (-708380871/2500000000 : ℚ), (7171492147/62500000000 : ℚ), 2⟩,
    ⟨(95796881049/200000000000 : ℚ), (-722137999/2500000000 : ℚ), (117374695881/1000000000000 : ℚ), 2⟩,
    ⟨(239943487343/500000000000 : ℚ), (-364476269/1250000000 : ℚ), (7417596703/62500000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-58384111/200000000 : ℚ), (29711126781/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (75853554873/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control306.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control306.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate306
