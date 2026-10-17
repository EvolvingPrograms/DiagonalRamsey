import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate322
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19133196097/62500000000 : ℚ), (1775928333479/1250000000 : ℚ), (-217898163248887/500000000000 : ℚ), 12⟩,
    ⟨(153483929553/500000000000 : ℚ), (1551729758583/10000000000 : ℚ), (-3010697647211/62500000000 : ℚ), 8⟩,
    ⟨(9644788879/31250000000 : ℚ), (135839542149/2500000000 : ℚ), (-2145131191797/125000000000 : ℚ), 7⟩,
    ⟨(311111254051/1000000000000 : ℚ), (13369840599/500000000 : ℚ), (-8617318674923/1000000000000 : ℚ), 6⟩,
    ⟨(78594506071/250000000000 : ℚ), (77436354269/5000000000 : ℚ), (-1275308324949/250000000000 : ℚ), 5⟩,
    ⟨(318402094043/1000000000000 : ℚ), (98565732577/10000000000 : ℚ), (-664247406207/200000000000 : ℚ), 5⟩,
    ⟨(161572354669/500000000000 : ℚ), (16654767893/2500000000 : ℚ), (-574326790663/250000000000 : ℚ), 4⟩,
    ⟨(32856019619/100000000000 : ℚ), (46883217333/10000000000 : ℚ), (-827355884329/500000000000 : ℚ), 4⟩,
    ⟨(334596400501/1000000000000 : ℚ), (16958197471/5000000000 : ℚ), (-245016004867/200000000000 : ℚ), 4⟩,
    ⟨(341195190323/1000000000000 : ℚ), (24989560131/10000000000 : ℚ), (-923658348967/1000000000000 : ℚ), 4⟩,
    ⟨(348293015703/1000000000000 : ℚ), (18614104477/10000000000 : ℚ), (-176003380797/250000000000 : ℚ), 3⟩,
    ⟨(355821520703/1000000000000 : ℚ), (2784704613/2000000000 : ℚ), (-107795971207/200000000000 : ℚ), 3⟩,
    ⟨(45463525213/125000000000 : ℚ), (10386667533/10000000000 : ℚ), (-411808604567/1000000000000 : ℚ), 3⟩,
    ⟨(46484638207/125000000000 : ℚ), (1532794909/2000000000 : ℚ), (-974131711/3125000000 : ℚ), 3⟩,
    ⟨(7604991231/20000000000 : ℚ), (1106135763/2000000000 : ℚ), (-231534685801/1000000000000 : ℚ), 3⟩,
    ⟨(388744938057/1000000000000 : ℚ), (3833601889/10000000000 : ℚ), (-33262064993/200000000000 : ℚ), 3⟩,
    ⟨(397281420059/1000000000000 : ℚ), (1232871397/5000000000 : ℚ), (-56286021551/500000000000 : ℚ), 3⟩,
    ⟨(202888398283/500000000000 : ℚ), (270153229/2000000000 : ℚ), (-67817442033/1000000000000 : ℚ), 2⟩,
    ⟨(20707462623/50000000000 : ℚ), (433221619/10000000000 : ℚ), (-15106227417/500000000000 : ℚ), 2⟩,
    ⟨(105579539103/250000000000 : ℚ), (-327798523/10000000000 : ℚ), (1608006907/1000000000000 : ℚ), 2⟩,
    ⟨(430204837413/1000000000000 : ℚ), (-962874861/10000000000 : ℚ), (7168279971/250000000000 : ℚ), 2⟩,
    ⟨(437733342413/1000000000000 : ℚ), (-747561973/5000000000 : ℚ), (51766991581/1000000000000 : ℚ), 2⟩,
    ⟨(444831167793/1000000000000 : ℚ), (-971090297/5000000000 : ℚ), (446824633/6250000000 : ℚ), 2⟩,
    ⟨(90285991523/200000000000 : ℚ), (-1158796913/5000000000 : ℚ), (88313392713/1000000000000 : ℚ), 2⟩,
    ⟨(228733080963/500000000000 : ℚ), (-131591233/500000000 : ℚ), (102592248043/1000000000000 : ℚ), 2⟩,
    ⟨(231440824389/500000000000 : ℚ), (-180810531/625000000 : ℚ), (1790758967/15625000000 : ℚ), 2⟩,
    ⟨(467624264073/1000000000000 : ℚ), (-3107283579/10000000000 : ℚ), (31144786009/250000000000 : ℚ), 2⟩,
    ⟨(58956041729/125000000000 : ℚ), (-655916073/2000000000 : ℚ), (66335272959/500000000000 : ℚ), 2⟩,
    ⟨(94983020813/200000000000 : ℚ), (-3413509117/10000000000 : ℚ), (69504504661/500000000000 : ℚ), 2⟩,
    ⟨(119348278497/250000000000 : ℚ), (-438971413/1250000000 : ℚ), (143687746151/1000000000000 : ℚ), 2⟩,
    ⟨(47905849901/100000000000 : ℚ), (-143050891/400000000 : ℚ), (36693083057/250000000000 : ℚ), 2⟩,
    ⟨(95979044113/200000000000 : ℚ), (-3608227063/10000000000 : ℚ), (148304488293/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1806103853/5000000000 : ℚ), (148495538309/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (69954083167/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control322.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control322.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate322
