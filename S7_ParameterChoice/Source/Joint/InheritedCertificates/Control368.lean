import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate368
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(220589598931/1000000000000 : ℚ), (6700200265309/5000000000 : ℚ), (-148100576083237/500000000000 : ℚ), 12⟩,
    ⟨(110606184927/500000000000 : ℚ), (2856960741/19531250 : ℚ), (-8183122950561/250000000000 : ℚ), 9⟩,
    ⟨(8898076563/40000000000 : ℚ), (63965820593/1250000000 : ℚ), (-11654817217163/1000000000000 : ℚ), 7⟩,
    ⟨(112148147053/500000000000 : ℚ), (251506469059/10000000000 : ℚ), (-2923735451573/500000000000 : ℚ), 6⟩,
    ⟨(226727747559/1000000000000 : ℚ), (145425483261/10000000000 : ℚ), (-1728677355159/500000000000 : ℚ), 5⟩,
    ⟨(229722858209/1000000000000 : ℚ), (23088707333/2500000000 : ℚ), (-2247200990837/1000000000000 : ℚ), 5⟩,
    ⟨(233252781501/1000000000000 : ℚ), (62249766513/10000000000 : ℚ), (-31017811303/20000000000 : ℚ), 5⟩,
    ⟨(118641761173/500000000000 : ℚ), (43653012757/10000000000 : ℚ), (-111372043/100000000 : ℚ), 4⟩,
    ⟨(48355252501/200000000000 : ℚ), (7858381417/2500000000 : ℚ), (-821251510103/1000000000000 : ℚ), 4⟩,
    ⟨(61671933609/250000000000 : ℚ), (2877319051/1250000000 : ℚ), (-615879750747/1000000000000 : ℚ), 4⟩,
    ⟨(251970637977/1000000000000 : ℚ), (265704233/156250000 : ℚ), (-466047875351/1000000000000 : ℚ), 3⟩,
    ⟨(257574095881/1000000000000 : ℚ), (12576652141/10000000000 : ℚ), (-353295206769/1000000000000 : ℚ), 3⟩,
    ⟨(32930517973/125000000000 : ℚ), (4616524011/5000000000 : ℚ), (-266241950451/1000000000000 : ℚ), 3⟩,
    ⟨(67381062479/250000000000 : ℚ), (6654617449/10000000000 : ℚ), (-98783690517/500000000000 : ℚ), 3⟩,
    ⟨(68938964883/250000000000 : ℚ), (2314960923/5000000000 : ℚ), (-71196318339/500000000000 : ℚ), 3⟩,
    ⟨(35259869853/125000000000 : ℚ), (1507491449/5000000000 : ℚ), (-97368611077/1000000000000 : ℚ), 3⟩,
    ⟨(28843265289/100000000000 : ℚ), (854663377/5000000000 : ℚ), (-15034566691/250000000000 : ℚ), 3⟩,
    ⟨(147377876091/500000000000 : ℚ), (160340167/2500000000 : ℚ), (-14503726497/500000000000 : ℚ), 3⟩,
    ⟨(300987361797/1000000000000 : ℚ), (-240846549/10000000000 : ℚ), (-273666157/100000000000 : ℚ), 3⟩,
    ⟨(30706746793/100000000000 : ℚ), (-39021711/400000000 : ℚ), (9797274779/500000000000 : ℚ), 2⟩,
    ⟨(312937515833/1000000000000 : ℚ), (-1591265673/10000000000 : ℚ), (38678096203/1000000000000 : ℚ), 2⟩,
    ⟨(39817621717/125000000000 : ℚ), (-1054770569/5000000000 : ℚ), (55039225191/1000000000000 : ℚ), 2⟩,
    ⟨(161911938639/500000000000 : ℚ), (-1273375769/5000000000 : ℚ), (690796507/10000000000 : ℚ), 2⟩,
    ⟨(41091918651/125000000000 : ℚ), (-2915451339/10000000000 : ℚ), (81108201177/1000000000000 : ℚ), 2⟩,
    ⟨(333228089367/1000000000000 : ℚ), (-322530747/1000000000 : ℚ), (45681480387/500000000000 : ℚ), 2⟩,
    ⟨(84314707553/250000000000 : ℚ), (-3483780073/10000000000 : ℚ), (100027503759/1000000000000 : ℚ), 2⟩,
    ⟨(68157750701/200000000000 : ℚ), (-739324077/2000000000 : ℚ), (268107363/2500000000 : ℚ), 2⟩,
    ⟨(171891932077/500000000000 : ℚ), (-1934118711/5000000000 : ℚ), (28279241253/250000000000 : ℚ), 2⟩,
    ⟨(346215317607/1000000000000 : ℚ), (-1563269/3906250 : ℚ), (117730588833/1000000000000 : ℚ), 2⟩,
    ⟨(348059697639/1000000000000 : ℚ), (-4100278697/10000000000 : ℚ), (121143259359/1000000000000 : ℚ), 2⟩,
    ⟨(17464962093/50000000000 : ℚ), (-1041225711/2500000000 : ℚ), (61698279461/500000000000 : ℚ), 2⟩,
    ⟨(349922012783/1000000000000 : ℚ), (-419694619/1000000000 : ℚ), (62258413453/500000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-1050234789/2500000000 : ℚ), (62328282557/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (87073241599/250000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control368.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control368.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate368
