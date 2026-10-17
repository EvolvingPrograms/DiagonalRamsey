import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate269
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(319507801999/1000000000000 : ℚ), (6592848484333/5000000000 : ℚ), (-422215038008649/1000000000000 : ℚ), 11⟩,
    ⟨(160236322467/500000000000 : ℚ), (1438732779017/10000000000 : ℚ), (-4668180243377/100000000000 : ℚ), 8⟩,
    ⟨(322393038839/1000000000000 : ℚ), (503163473967/10000000000 : ℚ), (-16639089964537/1000000000000 : ℚ), 7⟩,
    ⟨(32525048927/100000000000 : ℚ), (123653077643/5000000000 : ℚ), (-8361945252891/1000000000000 : ℚ), 6⟩,
    ⟨(329017477419/1000000000000 : ℚ), (143080584513/10000000000 : ℚ), (-495562909403/100000000000 : ℚ), 5⟩,
    ⟨(33365772513/100000000000 : ℚ), (45494812321/5000000000 : ℚ), (-3231263035963/1000000000000 : ℚ), 5⟩,
    ⟨(339126544281/1000000000000 : ℚ), (7684707273/1250000000 : ℚ), (-2239394208887/1000000000000 : ℚ), 4⟩,
    ⟨(172685633577/500000000000 : ℚ), (8655190143/2000000000 : ℚ), (-202122317347/125000000000 : ℚ), 4⟩,
    ⟨(176165876827/500000000000 : ℚ), (31338958781/10000000000 : ℚ), (-600447860017/500000000000 : ℚ), 4⟩,
    ⟨(359940970491/1000000000000 : ℚ), (11568700229/5000000000 : ℚ), (-909034405553/1000000000000 : ℚ), 3⟩,
    ⟨(92031409187/250000000000 : ℚ), (3458463803/2000000000 : ℚ), (-43525524527/62500000000 : ℚ), 3⟩,
    ⟨(376806929613/1000000000000 : ℚ), (2600301911/2000000000 : ℚ), (-536698145539/1000000000000 : ℚ), 3⟩,
    ⟨(385901243491/1000000000000 : ℚ), (4886787437/5000000000 : ℚ), (-413676286043/1000000000000 : ℚ), 3⟩,
    ⟨(395320995169/1000000000000 : ℚ), (7294609533/10000000000 : ℚ), (-19806275411/62500000000 : ℚ), 3⟩,
    ⟨(404975467287/1000000000000 : ℚ), (2678506003/5000000000 : ℚ), (-119703966421/500000000000 : ℚ), 3⟩,
    ⟨(207385841001/500000000000 : ℚ), (3819433761/10000000000 : ℚ), (-88207999663/500000000000 : ℚ), 3⟩,
    ⟨(424615296411/1000000000000 : ℚ), (2583234697/10000000000 : ℚ), (-124555026041/1000000000000 : ℚ), 2⟩,
    ⟨(217205755563/500000000000 : ℚ), (197264297/1250000000 : ℚ), (-81399515427/1000000000000 : ℚ), 2⟩,
    ⟨(88813196649/200000000000 : ℚ), (23532997/312500000 : ℚ), (-22585633323/500000000000 : ℚ), 2⟩,
    ⟨(226742867461/500000000000 : ℚ), (70456153/10000000000 : ℚ), (-7273104831/500000000000 : ℚ), 2⟩,
    ⟨(462580048801/1000000000000 : ℚ), (-9955461/200000000 : ℚ), (11474523197/1000000000000 : ℚ), 2⟩,
    ⟨(235630670833/500000000000 : ℚ), (-486425479/5000000000 : ℚ), (33652599201/1000000000000 : ℚ), 2⟩,
    ⟨(239723003961/500000000000 : ℚ), (-1370958133/10000000000 : ℚ), (52573764283/1000000000000 : ℚ), 2⟩,
    ⟨(487055224759/1000000000000 : ℚ), (-106532739/625000000 : ℚ), (4293205631/62500000000 : ℚ), 2⟩,
    ⟨(494015711259/1000000000000 : ℚ), (-991572449/5000000000 : ℚ), (82357276287/1000000000000 : ℚ), 2⟩,
    ⟨(125065108533/250000000000 : ℚ), (-276781261/1250000000 : ℚ), (93845524057/1000000000000 : ℚ), 2⟩,
    ⟨(505729253283/1000000000000 : ℚ), (-96143403/400000000 : ℚ), (103368450449/1000000000000 : ℚ), 2⟩,
    ⟨(255184750497/500000000000 : ℚ), (-127778461/500000000 : ℚ), (111089701837/1000000000000 : ℚ), 2⟩,
    ⟨(514136489143/1000000000000 : ℚ), (-2673558561/10000000000 : ℚ), (58566797563/500000000000 : ℚ), 2⟩,
    ⟨(20679757583/40000000000 : ℚ), (-690009691/2500000000 : ℚ), (60796076659/500000000000 : ℚ), 2⟩,
    ⟨(12972858337/25000000000 : ℚ), (-1408382123/5000000000 : ℚ), (124530255541/1000000000000 : ℚ), 2⟩,
    ⟨(103975835283/200000000000 : ℚ), (-2844854449/10000000000 : ℚ), (25197849883/200000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-284835309/1000000000 : ℚ), (126171157609/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (273948239039/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control269.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control269.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate269
