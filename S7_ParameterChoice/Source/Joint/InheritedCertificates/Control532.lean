import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate532
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300916415393/1000000000000 : ℚ), (512761382047/312500000 : ℚ), (-98899513076763/200000000000 : ℚ), 12⟩,
    ⟨(301537613553/1000000000000 : ℚ), (1796155309263/10000000000 : ℚ), (-1365628488967/25000000000 : ℚ), 9⟩,
    ⟨(302774027397/1000000000000 : ℚ), (157685665107/2500000000 : ℚ), (-9717601812661/500000000000 : ℚ), 8⟩,
    ⟨(152306874791/500000000000 : ℚ), (311281417127/10000000000 : ℚ), (-9739837114473/1000000000000 : ℚ), 7⟩,
    ⟨(153519531289/500000000000 : ℚ), (180727560311/10000000000 : ℚ), (-1149954484241/200000000000 : ℚ), 6⟩,
    ⟨(62005321859/200000000000 : ℚ), (14401905329/1250000000 : ℚ), (-372979352421/100000000000 : ℚ), 5⟩,
    ⟨(156773809013/500000000000 : ℚ), (15584579933/2000000000 : ℚ), (-2567785350111/1000000000000 : ℚ), 5⟩,
    ⟨(317568179531/1000000000000 : ℚ), (13699616067/2500000000 : ℚ), (-183850942957/100000000000 : ℚ), 5⟩,
    ⟨(64409914721/200000000000 : ℚ), (39542994209/10000000000 : ℚ), (-2161444829/1600000000 : ℚ), 4⟩,
    ⟨(163474320987/500000000000 : ℚ), (28994530189/10000000000 : ℚ), (-201758129491/200000000000 : ℚ), 4⟩,
    ⟨(33221820393/100000000000 : ℚ), (10713162971/5000000000 : ℚ), (-379740825611/500000000000 : ℚ), 4⟩,
    ⟨(42225938839/125000000000 : ℚ), (7915938463/5000000000 : ℚ), (-143037300069/250000000000 : ℚ), 4⟩,
    ⟨(343662734241/1000000000000 : ℚ), (5796611767/5000000000 : ℚ), (-427786803857/1000000000000 : ℚ), 3⟩,
    ⟨(43715935689/125000000000 : ℚ), (1039321173/1250000000 : ℚ), (-78540833997/250000000000 : ℚ), 3⟩,
    ⟨(71188671531/200000000000 : ℚ), (1433344081/2500000000 : ℚ), (-111561588453/500000000000 : ℚ), 3⟩,
    ⟨(45281311053/125000000000 : ℚ), (114697123/312500000 : ℚ), (-149063594777/1000000000000 : ℚ), 3⟩,
    ⟨(184294068351/500000000000 : ℚ), (199977779/1000000000 : ℚ), (-44018638977/500000000000 : ℚ), 3⟩,
    ⟨(23430954217/62500000000 : ℚ), (315978783/5000000000 : ℚ), (-18601500513/500000000000 : ℚ), 3⟩,
    ⟨(76222227923/200000000000 : ℚ), (-249288217/5000000000 : ℚ), (1380446087/250000000000 : ℚ), 3⟩,
    ⟨(193587945443/500000000000 : ℚ), (-1440213243/10000000000 : ℚ), (41687031009/1000000000000 : ℚ), 3⟩,
    ⟨(196515557207/500000000000 : ℚ), (-69662869/312500000 : ℚ), (7246099427/100000000000 : ℚ), 3⟩,
    ⟨(99655105299/250000000000 : ℚ), (-2893037601/10000000000 : ℚ), (49366628327/500000000000 : ℚ), 3⟩,
    ⟨(403889983153/1000000000000 : ℚ), (-86316937/250000000 : ℚ), (1514831523/12500000000 : ℚ), 3⟩,
    ⟨(204394525761/500000000000 : ℚ), (-3924274039/10000000000 : ℚ), (140347587963/1000000000000 : ℚ), 3⟩,
    ⟨(103317611399/250000000000 : ℚ), (-1080074383/2500000000 : ℚ), (156624157619/1000000000000 : ℚ), 3⟩,
    ⟨(417291007101/1000000000000 : ℚ), (-4650397601/10000000000 : ℚ), (170331827749/1000000000000 : ℚ), 3⟩,
    ⟨(420812015831/1000000000000 : ℚ), (-4922029139/10000000000 : ℚ), (36342827121/200000000000 : ℚ), 3⟩,
    ⟨(423799562549/1000000000000 : ℚ), (-1285228943/2500000000 : ℚ), (190957591887/1000000000000 : ℚ), 3⟩,
    ⟨(85244975109/200000000000 : ℚ), (-1062278811/2000000000 : ℚ), (99101500717/500000000000 : ℚ), 3⟩,
    ⟨(42806459773/100000000000 : ℚ), (-2718333937/5000000000 : ℚ), (203553954739/1000000000000 : ℚ), 2⟩,
    ⟨(429301011573/1000000000000 : ℚ), (-5518993169/10000000000 : ℚ), (103541541723/500000000000 : ℚ), 2⟩,
    ⟨(214961104867/500000000000 : ℚ), (-2779903263/5000000000 : ℚ), (52209117699/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1391223003/2500000000 : ℚ), (52263781723/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (300893025619/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control532.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control532.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate532
