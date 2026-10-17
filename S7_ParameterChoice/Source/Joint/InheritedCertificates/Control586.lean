import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate586
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60924654977/250000000000 : ℚ), (15186325512191/10000000000 : ℚ), (-185326434870781/500000000000 : ℚ), 12⟩,
    ⟨(122105090819/500000000000 : ℚ), (166186991307/1000000000 : ℚ), (-10234102613797/250000000000 : ℚ), 9⟩,
    ⟨(122614189239/500000000000 : ℚ), (145816149329/2500000000 : ℚ), (-14558911704277/1000000000000 : ℚ), 8⟩,
    ⟨(61685851159/250000000000 : ℚ), (287620112377/10000000000 : ℚ), (-3645705181753/500000000000 : ℚ), 7⟩,
    ⟨(124370334791/500000000000 : ℚ), (5212786659/312500000 : ℚ), (-4300409976613/1000000000000 : ℚ), 6⟩,
    ⟨(125600469281/500000000000 : ℚ), (849521111/80000000 : ℚ), (-174130942467/62500000000 : ℚ), 6⟩,
    ⟨(254100517843/1000000000000 : ℚ), (2867380233/400000000 : ℚ), (-957427814973/500000000000 : ℚ), 5⟩,
    ⟨(257411482889/1000000000000 : ℚ), (25143767701/5000000000 : ℚ), (-341986465943/250000000000 : ℚ), 5⟩,
    ⟨(261101947299/1000000000000 : ℚ), (18085032289/5000000000 : ℚ), (-1002152021597/1000000000000 : ℚ), 4⟩,
    ⟨(265136369881/1000000000000 : ℚ), (330077057/125000000 : ℚ), (-745385523951/1000000000000 : ℚ), 4⟩,
    ⟨(134737948471/500000000000 : ℚ), (4849535331/2500000000 : ℚ), (-34884567803/62500000000 : ℚ), 4⟩,
    ⟨(137039368231/500000000000 : ℚ), (55526707/39062500 : ℚ), (-417350239291/1000000000000 : ℚ), 4⟩,
    ⟨(278900560583/1000000000000 : ℚ), (642790867/625000000 : ℚ), (-154366512569/500000000000 : ℚ), 4⟩,
    ⟨(113557973/400000000 : ℚ), (1810394037/2500000000 : ℚ), (-55784105471/250000000000 : ℚ), 3⟩,
    ⟨(72253438421/250000000000 : ℚ), (968578873/2000000000 : ℚ), (-154450620219/1000000000000 : ℚ), 3⟩,
    ⟨(294207727087/1000000000000 : ℚ), (730720649/2500000000 : ℚ), (-9847971283/100000000000 : ℚ), 3⟩,
    ⟨(149713415953/500000000000 : ℚ), (682772013/5000000000 : ℚ), (-26134485717/500000000000 : ℚ), 3⟩,
    ⟨(304620805309/1000000000000 : ℚ), (43980831/5000000000 : ℚ), (-13693063719/1000000000000 : ℚ), 3⟩,
    ⟨(77434906623/250000000000 : ℚ), (-970207893/10000000000 : ℚ), (940219267/50000000000 : ℚ), 3⟩,
    ⟨(31473399841/100000000000 : ℚ), (-46338863/250000000 : ℚ), (23190151297/500000000000 : ℚ), 3⟩,
    ⟨(31955582253/100000000000 : ℚ), (-1297726723/5000000000 : ℚ), (3495266743/50000000000 : ℚ), 3⟩,
    ⟨(324158662051/1000000000000 : ℚ), (-100661041/312500000 : ℚ), (5627571561/62500000000 : ℚ), 3⟩,
    ⟨(328498189111/1000000000000 : ℚ), (-937479723/2500000000 : ℚ), (53647155003/500000000000 : ℚ), 3⟩,
    ⟨(166266305847/500000000000 : ℚ), (-4196544163/10000000000 : ℚ), (122054620409/1000000000000 : ℚ), 3⟩,
    ⟨(336223076103/1000000000000 : ℚ), (-2286218743/5000000000 : ℚ), (67311383837/500000000000 : ℚ), 3⟩,
    ⟨(339534041149/1000000000000 : ℚ), (-4886410433/10000000000 : ℚ), (29046134091/200000000000 : ℚ), 3⟩,
    ⟨(34243362043/100000000000 : ℚ), (-5145257541/10000000000 : ℚ), (77028297029/500000000000 : ℚ), 3⟩,
    ⟨(344893889411/1000000000000 : ℚ), (-5354185653/10000000000 : ℚ), (161236503651/1000000000000 : ℚ), 3⟩,
    ⟨(346891154357/1000000000000 : ℚ), (-5517132767/10000000000 : ℚ), (166872626819/1000000000000 : ℚ), 3⟩,
    ⟨(69681236103/200000000000 : ℚ), (-2818501821/5000000000 : ℚ), (171039882347/1000000000000 : ℚ), 3⟩,
    ⟨(69884875471/200000000000 : ℚ), (-5715840829/10000000000 : ℚ), (43447655179/250000000000 : ℚ), 3⟩,
    ⟨(87483984771/250000000000 : ℚ), (-2877471849/5000000000 : ℚ), (175157969043/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5759816933/10000000000 : ℚ), (175328516669/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (370733466927/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control586.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control586.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate586
