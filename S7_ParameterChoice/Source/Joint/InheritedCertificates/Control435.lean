import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate435
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127989429471/500000000000 : ℚ), (1162071905353/1000000000 : ℚ), (-298127516277869/1000000000000 : ℚ), 12⟩,
    ⟨(256768189603/1000000000000 : ℚ), (633735968423/5000000000 : ℚ), (-823897470857/25000000000 : ℚ), 9⟩,
    ⟨(129169624619/500000000000 : ℚ), (221488448927/5000000000 : ℚ), (-5871016756493/500000000000 : ℚ), 7⟩,
    ⟨(130338453843/500000000000 : ℚ), (2175261249/100000000 : ℚ), (-5897223373281/1000000000000 : ℚ), 6⟩,
    ⟨(263758652017/1000000000000 : ℚ), (125701086827/10000000000 : ℚ), (-1745877537447/500000000000 : ℚ), 5⟩,
    ⟨(66888700837/250000000000 : ℚ), (19953595177/2500000000 : ℚ), (-2273899464957/1000000000000 : ℚ), 5⟩,
    ⟨(272028802667/1000000000000 : ℚ), (10763978143/2000000000 : ℚ), (-393307793993/250000000000 : ℚ), 5⟩,
    ⟨(55427512583/200000000000 : ℚ), (18893849309/5000000000 : ℚ), (-1133400175111/1000000000000 : ℚ), 4⟩,
    ⟨(141415941969/500000000000 : ℚ), (13636081657/5000000000 : ℚ), (-104903357231/125000000000 : ℚ), 4⟩,
    ⟨(36132115789/125000000000 : ℚ), (2004503251/1000000000 : ℚ), (-158183466137/250000000000 : ℚ), 4⟩,
    ⟨(73938184869/250000000000 : ℚ), (14891689301/10000000000 : ℚ), (-96431761837/200000000000 : ℚ), 3⟩,
    ⟨(18928427443/62500000000 : ℚ), (11105698189/10000000000 : ℚ), (-184460183611/500000000000 : ℚ), 3⟩,
    ⟨(310294828047/1000000000000 : ℚ), (8254454303/10000000000 : ℚ), (-281563647361/1000000000000 : ℚ), 3⟩,
    ⟨(39750131899/125000000000 : ℚ), (3030855217/5000000000 : ℚ), (-212718820357/1000000000000 : ℚ), 3⟩,
    ⟨(325899305343/1000000000000 : ℚ), (4344852639/10000000000 : ℚ), (-157473441159/1000000000000 : ℚ), 3⟩,
    ⟨(166956757017/500000000000 : ℚ), (2979613539/10000000000 : ℚ), (-899635467/8000000000 : ℚ), 3⟩,
    ⟨(341966500053/1000000000000 : ℚ), (46983259/250000000 : ℚ), (-37643463159/500000000000 : ℚ), 3⟩,
    ⟨(43747588593/125000000000 : ℚ), (245571973/2500000000 : ℚ), (-11065739089/250000000000 : ℚ), 3⟩,
    ⟨(71575791779/200000000000 : ℚ), (121871049/5000000000 : ℚ), (-9065949847/500000000000 : ℚ), 3⟩,
    ⟨(9139629651/25000000000 : ℚ), (-369249277/10000000000 : ℚ), (504492971/125000000000 : ℚ), 2⟩,
    ⟨(373025174999/1000000000000 : ℚ), (-881260061/10000000000 : ℚ), (5735107159/250000000000 : ℚ), 2⟩,
    ⟨(380127274611/1000000000000 : ℚ), (-163853217/1250000000 : ℚ), (7822752527/200000000000 : ℚ), 2⟩,
    ⟨(193411543887/500000000000 : ℚ), (-418013809/2500000000 : ℚ), (52963856333/1000000000000 : ℚ), 2⟩,
    ⟨(98262032537/250000000000 : ℚ), (-493941213/2500000000 : ℚ), (16201274257/250000000000 : ℚ), 2⟩,
    ⟨(398742451171/1000000000000 : ℚ), (-2230287831/10000000000 : ℚ), (936007001/12500000000 : ℚ), 2⟩,
    ⟨(403851211419/1000000000000 : ℚ), (-2442059787/10000000000 : ℚ), (83378275307/1000000000000 : ℚ), 2⟩,
    ⟨(408325210739/1000000000000 : ℚ), (-2616046377/10000000000 : ℚ), (45221643781/500000000000 : ℚ), 2⟩,
    ⟨(41212136207/100000000000 : ℚ), (-1378028961/5000000000 : ℚ), (96186676063/1000000000000 : ℚ), 2⟩,
    ⟨(415203106401/1000000000000 : ℚ), (-2864981417/10000000000 : ℚ), (50346162347/500000000000 : ℚ), 2⟩,
    ⟨(26096297803/62500000000 : ℚ), (-2944950769/10000000000 : ℚ), (52010990399/500000000000 : ℚ), 2⟩,
    ⟨(104777956121/250000000000 : ℚ), (-1498734767/5000000000 : ℚ), (106218966223/1000000000000 : ℚ), 2⟩,
    ⟨(83980231029/200000000000 : ℚ), (-18896849/62500000 : ℚ), (53655392543/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3026738327/10000000000 : ℚ), (13430869189/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (363017860227/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control435.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control435.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate435
