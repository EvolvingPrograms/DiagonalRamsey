import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate279
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134150409013/500000000000 : ℚ), (858125072021/625000000 : ℚ), (-369149618128879/1000000000000 : ℚ), 12⟩,
    ⟨(269078974557/1000000000000 : ℚ), (374634383847/2500000000 : ℚ), (-1275103000869/31250000000 : ℚ), 8⟩,
    ⟨(135313896773/500000000000 : ℚ), (52420586109/1000000000 : ℚ), (-14535449600553/1000000000000 : ℚ), 7⟩,
    ⟨(13646617951/50000000000 : ℚ), (128833030789/5000000000 : ℚ), (-912276145509/125000000000 : ℚ), 6⟩,
    ⟨(137985238377/500000000000 : ℚ), (149041008877/10000000000 : ℚ), (-2159857529653/500000000000 : ℚ), 5⟩,
    ⟨(69928222003/250000000000 : ℚ), (11839931093/1250000000 : ℚ), (-1405891527819/500000000000 : ℚ), 5⟩,
    ⟨(284123551329/1000000000000 : ℚ), (63920874741/10000000000 : ℚ), (-1944263737261/1000000000000 : ℚ), 4⟩,
    ⟨(144579994803/500000000000 : ℚ), (89816467/20000000 : ℚ), (-1399732587103/1000000000000 : ℚ), 4⟩,
    ⟨(294773699189/1000000000000 : ℚ), (16212801967/5000000000 : ℚ), (-258892009379/250000000000 : ℚ), 4⟩,
    ⟨(150455308493/500000000000 : ℚ), (11918923963/5000000000 : ℚ), (-3119914759/4000000000 : ℚ), 3⟩,
    ⟨(307511641123/1000000000000 : ℚ), (4427014091/2500000000 : ℚ), (-296816827329/500000000000 : ℚ), 3⟩,
    ⟨(314513200131/1000000000000 : ℚ), (6600080521/5000000000 : ℚ), (-453523464643/1000000000000 : ℚ), 3⟩,
    ⟨(321847865167/1000000000000 : ℚ), (9801927771/10000000000 : ℚ), (-345463007403/1000000000000 : ℚ), 3⟩,
    ⟨(329444999399/1000000000000 : ℚ), (7186083189/10000000000 : ℚ), (-52065116989/200000000000 : ℚ), 3⟩,
    ⟨(33723143827/100000000000 : ℚ), (2568076259/5000000000 : ℚ), (-2400343171/12500000000 : ℚ), 3⟩,
    ⟨(172566097059/500000000000 : ℚ), (876182683/2500000000 : ℚ), (-27278217749/200000000000 : ℚ), 3⟩,
    ⟨(176535589173/500000000000 : ℚ), (2188948459/10000000000 : ℚ), (-90475076897/1000000000000 : ℚ), 3⟩,
    ⟨(180485967097/500000000000 : ℚ), (223099389/2000000000 : ℚ), (-52163867659/1000000000000 : ℚ), 2⟩,
    ⟨(73751674613/200000000000 : ℚ), (115593947/5000000000 : ℚ), (-2488532099/125000000000 : ℚ), 2⟩,
    ⟨(376355507297/1000000000000 : ℚ), (-503166823/10000000000 : ℚ), (1860887429/250000000000 : ℚ), 2⟩,
    ⟨(383690172333/1000000000000 : ℚ), (-223364357/2000000000 : ℚ), (7689682221/250000000000 : ℚ), 2⟩,
    ⟨(390691731341/1000000000000 : ℚ), (-40796479/250000000 : ℚ), (1584277197/31250000000 : ℚ), 2⟩,
    ⟨(198646377739/500000000000 : ℚ), (-2065099623/10000000000 : ℚ), (67763660063/1000000000000 : ℚ), 2⟩,
    ⟨(16137186931/40000000000 : ℚ), (-2429447389/10000000000 : ℚ), (10293623367/125000000000 : ℚ), 2⟩,
    ⟨(204521691429/500000000000 : ℚ), (-1367425533/5000000000 : ℚ), (47377220539/500000000000 : ℚ), 2⟩,
    ⟨(82815964227/200000000000 : ℚ), (-1494499397/5000000000 : ℚ), (52606723129/500000000000 : ℚ), 2⟩,
    ⟨(104622621113/250000000000 : ℚ), (-1598913169/5000000000 : ℚ), (113906180399/1000000000000 : ℚ), 2⟩,
    ⟨(42223289571/100000000000 : ℚ), (-841472759/2500000000 : ℚ), (120970727009/1000000000000 : ℚ), 2⟩,
    ⟨(106317753361/250000000000 : ℚ), (-3496647689/10000000000 : ℚ), (25302288341/200000000000 : ℚ), 2⟩,
    ⟨(213787789459/500000000000 : ℚ), (-71853021/200000000 : ℚ), (13060519747/100000000000 : ℚ), 2⟩,
    ⟨(429124397907/1000000000000 : ℚ), (-1827850941/5000000000 : ℚ), (66652982429/500000000000 : ℚ), 2⟩,
    ⟨(214951277219/500000000000 : ℚ), (-460868503/1250000000 : ℚ), (33662006729/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3690840849/10000000000 : ℚ), (67407699717/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (148454011681/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control279.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control279.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate279
