import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate402
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(154990307779/500000000000 : ℚ), (13958507829777/10000000000 : ℚ), (-216758226281227/500000000000 : ℚ), 12⟩,
    ⟨(155399405997/500000000000 : ℚ), (381266877781/2500000000 : ℚ), (-4791668604881/100000000000 : ℚ), 9⟩,
    ⟨(312427325187/1000000000000 : ℚ), (267133848933/5000000000 : ℚ), (-8534302519977/500000000000 : ℚ), 7⟩,
    ⟨(157425235833/500000000000 : ℚ), (131526636907/5000000000 : ℚ), (-8569516098001/1000000000000 : ℚ), 6⟩,
    ⟨(318044915203/1000000000000 : ℚ), (152430269069/10000000000 : ℚ), (-5071803521069/1000000000000 : ℚ), 5⟩,
    ⟨(321979891563/1000000000000 : ℚ), (9705319331/1000000000 : ℚ), (-3301110688073/1000000000000 : ℚ), 5⟩,
    ⟨(81654376193/250000000000 : ℚ), (8202493723/1250000000 : ℚ), (-57063414763/25000000000 : ℚ), 5⟩,
    ⟨(331913092079/1000000000000 : ℚ), (5773937591/1250000000 : ℚ), (-328661645171/200000000000 : ℚ), 4⟩,
    ⟨(337815654083/1000000000000 : ℚ), (33419741213/10000000000 : ℚ), (-607967656069/500000000000 : ℚ), 4⟩,
    ⟨(344268345887/1000000000000 : ℚ), (12311117197/5000000000 : ℚ), (-916107723291/1000000000000 : ℚ), 4⟩,
    ⟨(17560451227/50000000000 : ℚ), (733422011/400000000 : ℚ), (-697635245069/1000000000000 : ℚ), 3⟩,
    ⟨(358570847513/1000000000000 : ℚ), (13707667603/10000000000 : ℚ), (-533494270559/1000000000000 : ℚ), 3⟩,
    ⟨(183141458213/500000000000 : ℚ), (5108094577/5000000000 : ℚ), (-407023459321/1000000000000 : ℚ), 3⟩,
    ⟨(2339193499/6250000000 : ℚ), (3763524943/5000000000 : ℚ), (-2460009219/8000000000 : ℚ), 3⟩,
    ⟨(38245804853/100000000000 : ℚ), (5419049663/10000000000 : ℚ), (-227778529909/1000000000000 : ℚ), 3⟩,
    ⟨(97691334089/250000000000 : ℚ), (374138189/1000000000 : ℚ), (-81472370167/500000000000 : ℚ), 3⟩,
    ⟨(99778204899/250000000000 : ℚ), (1194328713/5000000000 : ℚ), (-109540043517/1000000000000 : ℚ), 3⟩,
    ⟨(203710053711/500000000000 : ℚ), (257131187/2000000000 : ℚ), (-32537069/500000000 : ℚ), 3⟩,
    ⟨(25975449757/62500000000 : ℚ), (37771037/1000000000 : ℚ), (-13860756913/500000000000 : ℚ), 3⟩,
    ⟨(211797619763/500000000000 : ℚ), (-375529277/10000000000 : ℚ), (969203741/250000000000 : ℚ), 2⟩,
    ⟨(431307308439/1000000000000 : ℚ), (-25106037/250000000 : ℚ), (1229825729/40000000000 : ℚ), 2⟩,
    ⟨(109667282853/250000000000 : ℚ), (-1531249423/10000000000 : ℚ), (13416477453/250000000000 : ℚ), 2⟩,
    ⟨(89121962013/200000000000 : ℚ), (-986985691/5000000000 : ℚ), (73237622509/1000000000000 : ℚ), 2⟩,
    ⟨(452062501869/1000000000000 : ℚ), (-2345794697/10000000000 : ℚ), (11240562349/125000000000 : ℚ), 2⟩,
    ⟨(457965063873/1000000000000 : ℚ), (-2657058319/10000000000 : ℚ), (26021540317/250000000000 : ℚ), 2⟩,
    ⟨(23163032559/50000000000 : ℚ), (-2915764587/10000000000 : ℚ), (29000424943/250000000000 : ℚ), 2⟩,
    ⟨(467898264389/1000000000000 : ℚ), (-625620057/2000000000 : ℚ), (125887127719/1000000000000 : ℚ), 2⟩,
    ⟨(471833240749/1000000000000 : ℚ), (-3298820879/10000000000 : ℚ), (33477108079/250000000000 : ℚ), 2⟩,
    ⟨(475027684287/1000000000000 : ℚ), (-1715767297/5000000000 : ℚ), (17523921109/125000000000 : ℚ), 2⟩,
    ⟨(95490166153/200000000000 : ℚ), (-3528911417/10000000000 : ℚ), (72414389877/500000000000 : ℚ), 2⟩,
    ⟨(239539671979/500000000000 : ℚ), (-17964171/50000000 : ℚ), (73942983521/500000000000 : ℚ), 2⟩,
    ⟨(239948770197/500000000000 : ℚ), (-113265733/312500000 : ℚ), (149404469237/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1814224287/5000000000 : ℚ), (14959381473/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (18601374237/62500000000 : ℚ)
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
theorem certOK : JointInheritedControls.control402.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control402.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate402
