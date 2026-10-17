import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate469
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129901107543/500000000000 : ℚ), (16106233796813/10000000000 : ℚ), (-83824073744519/200000000000 : ℚ), 12⟩,
    ⟨(130190325739/500000000000 : ℚ), (352380002419/2000000000 : ℚ), (-23149342756717/500000000000 : ℚ), 9⟩,
    ⟨(130765976801/500000000000 : ℚ), (618123465681/10000000000 : ℚ), (-8236382168671/500000000000 : ℚ), 7⟩,
    ⟨(263245033791/1000000000000 : ℚ), (304714105469/10000000000 : ℚ), (-8255181416999/1000000000000 : ℚ), 6⟩,
    ⟨(53100678829/200000000000 : ℚ), (176699398389/10000000000 : ℚ), (-609149179713/125000000000 : ℚ), 6⟩,
    ⟨(13414264271/50000000000 : ℚ), (112500946397/10000000000 : ℚ), (-63219045463/20000000000 : ℚ), 5⟩,
    ⟨(135781958241/500000000000 : ℚ), (18995436477/2500000000 : ℚ), (-2175865559833/1000000000000 : ℚ), 5⟩,
    ⟨(137653856161/500000000000 : ℚ), (1333829679/250000000 : ℚ), (-1557515601983/1000000000000 : ℚ), 4⟩,
    ⟨(139740309069/500000000000 : ℚ), (38435662459/10000000000 : ℚ), (-1143964809831/1000000000000 : ℚ), 4⟩,
    ⟨(35505305821/125000000000 : ℚ), (7031972023/2500000000 : ℚ), (-170739873767/200000000000 : ℚ), 4⟩,
    ⟨(288949264709/1000000000000 : ℚ), (129604843/62500000 : ℚ), (-642062208549/1000000000000 : ℚ), 4⟩,
    ⟨(14707690861/50000000000 : ℚ), (7637906199/5000000000 : ℚ), (-241463899561/500000000000 : ℚ), 3⟩,
    ⟨(37450747677/125000000000 : ℚ), (348112487/312500000 : ℚ), (-5627962757/15625000000 : ℚ), 3⟩,
    ⟨(12210129999/40000000000 : ℚ), (1985150869/2500000000 : ℚ), (-263484177561/1000000000000 : ℚ), 3⟩,
    ⟨(311041236613/1000000000000 : ℚ), (1355485423/2500000000 : ℚ), (-185902702869/1000000000000 : ℚ), 3⟩,
    ⟨(19807137491/62500000000 : ℚ), (106508799/312500000 : ℚ), (-4908022117/40000000000 : ℚ), 3⟩,
    ⟨(20175973741/62500000000 : ℚ), (1776954123/10000000000 : ℚ), (-17634127239/250000000000 : ℚ), 3⟩,
    ⟨(328688543099/1000000000000 : ℚ), (1719961/39062500 : ℚ), (-13503553523/500000000000 : ℚ), 3⟩,
    ⟨(334476529737/1000000000000 : ℚ), (-665412851/10000000000 : ℚ), (9647892017/1000000000000 : ℚ), 3⟩,
    ⟨(42515474787/125000000000 : ℚ), (-1587314583/10000000000 : ℚ), (8147441477/200000000000 : ℚ), 3⟩,
    ⟨(86393990623/250000000000 : ℚ), (-11803203/50000000 : ℚ), (2689840949/40000000000 : ℚ), 3⟩,
    ⟨(350780515003/1000000000000 : ℚ), (-602410247/2000000000 : ℚ), (22480850567/250000000000 : ℚ), 3⟩,
    ⟨(44460916643/125000000000 : ℚ), (-3561889333/10000000000 : ℚ), (27335804891/250000000000 : ℚ), 3⟩,
    ⟨(180124580787/500000000000 : ℚ), (-503222561/1250000000 : ℚ), (62973726681/500000000000 : ℚ), 3⟩,
    ⟨(364422067391/1000000000000 : ℚ), (-176631191/400000000 : ℚ), (70038727491/500000000000 : ℚ), 2⟩,
    ⟨(36816586323/100000000000 : ℚ), (-94824089/200000000 : ℚ), (4749902709/31250000000 : ℚ), 2⟩,
    ⟨(92861123573/250000000000 : ℚ), (-5009245151/10000000000 : ℚ), (161908761151/1000000000000 : ℚ), 2⟩,
    ⟨(374226385567/1000000000000 : ℚ), (-2612708933/5000000000 : ℚ), (169968217307/1000000000000 : ℚ), 2⟩,
    ⟨(376484745921/1000000000000 : ℚ), (-269694951/500000000 : ℚ), (176292137349/1000000000000 : ℚ), 2⟩,
    ⟨(37819782611/100000000000 : ℚ), (-2758886341/5000000000 : ℚ), (90483177539/500000000000 : ℚ), 2⟩,
    ⟨(75869825647/200000000000 : ℚ), (-55992097/100000000 : ℚ), (1472407677/8000000000 : ℚ), 2⟩,
    ⟨(189963782313/500000000000 : ℚ), (-1409898049/2500000000 : ℚ), (18558403233/100000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-5644624441/10000000000 : ℚ), (92887619711/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (157496191013/500000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control469.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control469.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate469
