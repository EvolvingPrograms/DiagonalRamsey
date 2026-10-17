import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate485
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300194026247/1000000000000 : ℚ), (6401118766951/5000000000 : ℚ), (-192537274081063/500000000000 : ℚ), 12⟩,
    ⟨(37626399459/125000000000 : ℚ), (1398293006671/10000000000 : ℚ), (-42563448494521/1000000000000 : ℚ), 9⟩,
    ⟨(75659416183/250000000000 : ℚ), (244821098963/5000000000 : ℚ), (-3701771064/244140625 : ℚ), 7⟩,
    ⟨(76264442411/250000000000 : ℚ), (240964011401/10000000000 : ℚ), (-7613065026319/1000000000000 : ℚ), 6⟩,
    ⟨(308248203471/1000000000000 : ℚ), (34890049297/2500000000 : ℚ), (-1126541789081/250000000000 : ℚ), 6⟩,
    ⟨(156089120297/500000000000 : ℚ), (22203681709/2500000000 : ℚ), (-586659226211/200000000000 : ℚ), 5⟩,
    ⟨(316810032607/1000000000000 : ℚ), (6002122573/1000000000 : ℚ), (-2028491465843/1000000000000 : ℚ), 5⟩,
    ⟨(322098972819/1000000000000 : ℚ), (42231609091/10000000000 : ℚ), (-730318109603/500000000000 : ℚ), 4⟩,
    ⟨(163997062923/500000000000 : ℚ), (3817772517/1250000000 : ℚ), (-1080956983253/1000000000000 : ℚ), 4⟩,
    ⟨(334438718141/1000000000000 : ℚ), (11246858959/5000000000 : ℚ), (-814565594179/1000000000000 : ℚ), 4⟩,
    ⟨(170685342379/500000000000 : ℚ), (16744778851/10000000000 : ℚ), (-620434106323/1000000000000 : ℚ), 4⟩,
    ⟨(348723267069/1000000000000 : ℚ), (1564313537/1250000000 : ℚ), (-237279701217/500000000000 : ℚ), 3⟩,
    ⟨(178212827843/500000000000 : ℚ), (2331061843/2500000000 : ℚ), (-181071340711/500000000000 : ℚ), 3⟩,
    ⟨(364403672397/1000000000000 : ℚ), (274719099/400000000 : ℚ), (-34207633793/125000000000 : ℚ), 3⟩,
    ⟨(18629024227/50000000000 : ℚ), (494312623/1000000000 : ℚ), (-202765264273/1000000000000 : ℚ), 3⟩,
    ⟨(380877344943/1000000000000 : ℚ), (426453701/1250000000 : ℚ), (-72546912817/500000000000 : ℚ), 3⟩,
    ⟨(194607175153/500000000000 : ℚ), (17416287/80000000 : ℚ), (-97574260653/1000000000000 : ℚ), 3⟩,
    ⟨(39751121071/100000000000 : ℚ), (58526421/500000000 : ℚ), (-57995178839/1000000000000 : ℚ), 3⟩,
    ⟨(405688022853/1000000000000 : ℚ), (342113163/10000000000 : ℚ), (-12367848097/500000000000 : ℚ), 3⟩,
    ⟨(103416509891/250000000000 : ℚ), (-43137011/1250000000 : ℚ), (3410671111/1000000000000 : ℚ), 3⟩,
    ⟨(421368428181/1000000000000 : ℚ), (-229668941/2500000000 : ℚ), (213699603/7812500000 : ℚ), 2⟩,
    ⟨(107180252623/250000000000 : ℚ), (-279894459/2000000000 : ℚ), (47785946007/1000000000000 : ℚ), 2⟩,
    ⟨(435652977109/1000000000000 : ℚ), (-1803388373/10000000000 : ℚ), (2038754637/31250000000 : ℚ), 2⟩,
    ⟨(110524392351/250000000000 : ℚ), (-1071320523/5000000000 : ℚ), (80127380611/1000000000000 : ℚ), 2⟩,
    ⟨(447992722431/1000000000000 : ℚ), (-303332653/1250000000 : ℚ), (46383206241/500000000000 : ℚ), 2⟩,
    ⟨(453281662643/1000000000000 : ℚ), (-2662745157/10000000000 : ℚ), (5170224999/50000000000 : ℚ), 2⟩,
    ⟨(91582690931/200000000000 : ℚ), (-2856531273/10000000000 : ℚ), (112232905843/1000000000000 : ℚ), 2⟩,
    ⟨(230921745889/500000000000 : ℚ), (-376543967/1250000000 : ℚ), (119398506511/1000000000000 : ℚ), 2⟩,
    ⟨(232516962803/500000000000 : ℚ), (-19584327/62500000 : ℚ), (125012507249/1000000000000 : ℚ), 2⟩,
    ⟨(467454030517/1000000000000 : ℚ), (-3222383579/10000000000 : ℚ), (16144619753/125000000000 : ℚ), 2⟩,
    ⟨(234540249789/500000000000 : ℚ), (-3280739029/10000000000 : ℚ), (65944768957/500000000000 : ℚ), 2⟩,
    ⟨(469897669003/1000000000000 : ℚ), (-661930197/2000000000 : ℚ), (133246920899/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1656626331/5000000000 : ℚ), (66708090641/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (6678164957/20000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control485.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control485.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate485
