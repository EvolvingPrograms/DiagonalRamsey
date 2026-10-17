import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate357
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18335724571/62500000000 : ℚ), (216289742257/156250000 : ℚ), (-203452975349119/500000000000 : ℚ), 12⟩,
    ⟨(18385841933/62500000000 : ℚ), (755912271053/5000000000 : ℚ), (-5621964992943/125000000000 : ℚ), 9⟩,
    ⟨(295769503991/1000000000000 : ℚ), (4135512503/78125000 : ℚ), (-8010591444737/500000000000 : ℚ), 7⟩,
    ⟨(149072160827/500000000000 : ℚ), (260469278901/10000000000 : ℚ), (-8043760492479/1000000000000 : ℚ), 6⟩,
    ⟨(96408017/320000000 : ℚ), (150832969701/10000000000 : ℚ), (-595087244197/125000000000 : ℚ), 5⟩,
    ⟨(76282886937/250000000000 : ℚ), (4798491647/500000000 : ℚ), (-619726121361/200000000000 : ℚ), 5⟩,
    ⟨(77419166343/250000000000 : ℚ), (16210282741/2500000000 : ℚ), (-1071250156217/500000000000 : ℚ), 4⟩,
    ⟨(314866634029/1000000000000 : ℚ), (9121875719/2000000000 : ℚ), (-308483238343/200000000000 : ℚ), 4⟩,
    ⟨(80162867871/250000000000 : ℚ), (32972580037/10000000000 : ℚ), (-570584614519/500000000000 : ℚ), 4⟩,
    ⟨(326975466591/1000000000000 : ℚ), (24271810809/10000000000 : ℚ), (-429812429107/500000000000 : ℚ), 4⟩,
    ⟨(333777715819/1000000000000 : ℚ), (18056728453/10000000000 : ℚ), (-327214357369/500000000000 : ℚ), 3⟩,
    ⟨(340992709789/1000000000000 : ℚ), (13483117503/10000000000 : ℚ), (-250108386803/500000000000 : ℚ), 3⟩,
    ⟨(174275482083/500000000000 : ℚ), (5016752763/5000000000 : ℚ), (-381351458663/1000000000000 : ℚ), 3⟩,
    ⟨(89094922207/250000000000 : ℚ), (1844270857/2500000000 : ℚ), (-71942631859/250000000000 : ℚ), 3⟩,
    ⟨(364403488877/1000000000000 : ℚ), (529489041/1000000000 : ℚ), (-106382749597/500000000000 : ℚ), 3⟩,
    ⟨(372545090733/1000000000000 : ℚ), (1818856311/5000000000 : ℚ), (-30345740283/200000000000 : ℚ), 3⟩,
    ⟨(190363043159/500000000000 : ℚ), (1150663291/5000000000 : ℚ), (-101414682843/1000000000000 : ℚ), 3⟩,
    ⟨(194433844087/500000000000 : ℚ), (151423237/1250000000 : ℚ), (-5948807289/100000000000 : ℚ), 3⟩,
    ⟨(396891488223/1000000000000 : ℚ), (39236513/1250000000 : ℚ), (-189356221/7812500000 : ℚ), 2⟩,
    ⟨(80944042577/200000000000 : ℚ), (-430984797/10000000000 : ℚ), (5610066271/1000000000000 : ℚ), 2⟩,
    ⟨(206139233631/500000000000 : ℚ), (-210602697/2000000000 : ℚ), (31014530557/1000000000000 : ℚ), 2⟩,
    ⟨(419493461233/1000000000000 : ℚ), (-1574690977/10000000000 : ℚ), (13176635537/250000000000 : ℚ), 2⟩,
    ⟨(21314785523/50000000000 : ℚ), (-1006587083/5000000000 : ℚ), (17811770309/250000000000 : ℚ), 2⟩,
    ⟨(432619705567/1000000000000 : ℚ), (-238164013/1000000000 : ℚ), (87069302851/1000000000000 : ℚ), 2⟩,
    ⟨(219202271511/500000000000 : ℚ), (-672564641/2500000000 : ℚ), (50254395979/500000000000 : ℚ), 2⟩,
    ⟨(443594511679/1000000000000 : ℚ), (-2946895913/10000000000 : ℚ), (55912854917/500000000000 : ℚ), 2⟩,
    ⟨(448139629303/1000000000000 : ℚ), (-789407639/2500000000 : ℚ), (60610602203/500000000000 : ℚ), 2⟩,
    ⟨(225998061963/500000000000 : ℚ), (-1663566227/5000000000 : ℚ), (25769935641/200000000000 : ℚ), 2⟩,
    ⟨(455126855397/1000000000000 : ℚ), (-1729471811/5000000000 : ℚ), (67413997413/500000000000 : ℚ), 2⟩,
    ⟨(22875083653/50000000000 : ℚ), (-3555684297/10000000000 : ℚ), (6962117801/50000000000 : ℚ), 2⟩,
    ⟨(459097706123/1000000000000 : ℚ), (-3619201869/10000000000 : ℚ), (142153348687/1000000000000 : ℚ), 2⟩,
    ⟨(91979916783/200000000000 : ℚ), (-1825337041/5000000000 : ℚ), (71799745339/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3654594827/10000000000 : ℚ), (71889912633/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (149747118981/500000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control357.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control357.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate357
