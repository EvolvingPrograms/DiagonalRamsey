import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate131
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252910541673/1000000000000 : ℚ), (9513362740187/10000000000 : ℚ), (-120702298370229/500000000000 : ℚ), 11⟩,
    ⟨(127049813967/500000000000 : ℚ), (1031532054673/10000000000 : ℚ), (-5340928157457/200000000000 : ℚ), 8⟩,
    ⟨(128233174453/500000000000 : ℚ), (357680300229/10000000000 : ℚ), (-952862702707/100000000000 : ℚ), 6⟩,
    ⟨(64996977943/250000000000 : ℚ), (174145858127/10000000000 : ℚ), (-1199107595607/250000000000 : ℚ), 5⟩,
    ⟨(66157600489/250000000000 : ℚ), (99793466139/10000000000 : ℚ), (-712244816581/250000000000 : ℚ), 5⟩,
    ⟨(270349109741/1000000000000 : ℚ), (62884674079/10000000000 : ℚ), (-1863119599977/1000000000000 : ℚ), 4⟩,
    ⟨(277088960843/1000000000000 : ℚ), (10534477/2500000 : ℚ), (-324005543877/250000000000 : ℚ), 4⟩,
    ⟨(284785046813/1000000000000 : ℚ), (29452879497/10000000000 : ℚ), (-188024039477/200000000000 : ℚ), 3⟩,
    ⟨(58672650027/200000000000 : ℚ), (10605225891/5000000000 : ℚ), (-351074284897/500000000000 : ℚ), 3⟩,
    ⟨(151370479011/500000000000 : ℚ), (15601199839/10000000000 : ℚ), (-16723697189/31250000000 : ℚ), 3⟩,
    ⟨(156413929011/500000000000 : ℚ), (5820920813/5000000000 : ℚ), (-413427505951/1000000000000 : ℚ), 3⟩,
    ⟨(80881701943/250000000000 : ℚ), (175252051/200000000 : ℚ), (-80477068037/250000000000 : ℚ), 3⟩,
    ⟨(167367385269/500000000000 : ℚ), (6616085119/10000000000 : ℚ), (-31415553233/125000000000 : ℚ), 2⟩,
    ⟨(43292975939/125000000000 : ℚ), (4981564719/10000000000 : ℚ), (-195708777291/1000000000000 : ℚ), 2⟩,
    ⟨(358242117321/1000000000000 : ℚ), (371395179/1000000000 : ℚ), (-151084968773/1000000000000 : ℚ), 2⟩,
    ⟨(185157556369/500000000000 : ℚ), (1357560787/5000000000 : ℚ), (-114723873319/1000000000000 : ℚ), 2⟩,
    ⟨(382446524217/1000000000000 : ℚ), (1917091311/10000000000 : ℚ), (-16941023789/200000000000 : ℚ), 2⟩,
    ⟨(197259759817/500000000000 : ℚ), (1271777179/10000000000 : ℚ), (-59648554947/1000000000000 : ℚ), 2⟩,
    ⟨(406417829443/1000000000000 : ℚ), (372278307/5000000000 : ℚ), (-481803979/12500000000 : ℚ), 2⟩,
    ⟨(418026866417/1000000000000 : ℚ), (19381869/625000000 : ℚ), (-20642174493/1000000000000 : ℚ), 2⟩,
    ⟨(429234829183/1000000000000 : ℚ), (-5033073/1000000000 : ℚ), (-5377617149/1000000000000 : ℚ), 2⟩,
    ⟨(439933778933/1000000000000 : ℚ), (-350839293/10000000000 : ℚ), (749863/97656250 : ℚ), 2⟩,
    ⟨(112505169733/250000000000 : ℚ), (-602074329/10000000000 : ℚ), (2356950227/125000000000 : ℚ), 2⟩,
    ⟨(22969919341/50000000000 : ℚ), (-162434517/2000000000 : ℚ), (28407344517/1000000000000 : ℚ), 2⟩,
    ⟨(233988295071/500000000000 : ℚ), (-246845643/2500000000 : ℚ), (18265267881/500000000000 : ℚ), 2⟩,
    ⟨(29729542257/62500000000 : ℚ), (-1132519111/10000000000 : ℚ), (5422218717/125000000000 : ℚ), 2⟩,
    ⟨(241206263607/500000000000 : ℚ), (-1251292587/10000000000 : ℚ), (2453354603/50000000000 : ℚ), 2⟩,
    ⟨(488131234999/1000000000000 : ℚ), (-1346549003/10000000000 : ℚ), (53689387567/1000000000000 : ℚ), 2⟩,
    ⟨(492773725183/1000000000000 : ℚ), (-142044539/1000000000 : ℚ), (28656769817/500000000000 : ℚ), 2⟩,
    ⟨(496295288049/1000000000000 : ℚ), (-737288679/5000000000 : ℚ), (7498813129/125000000000 : ℚ), 2⟩,
    ⟨(498662009021/1000000000000 : ℚ), (-1510070297/10000000000 : ℚ), (61756189179/1000000000000 : ℚ), 2⟩,
    ⟨(249925547641/500000000000 : ℚ), (-1527642031/10000000000 : ℚ), (15658366953/250000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-764915199/5000000000 : ℚ), (62742869883/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (290217505921/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control131.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control131.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate131
