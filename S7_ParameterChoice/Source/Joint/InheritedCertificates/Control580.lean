import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate580
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12568743529/50000000000 : ℚ), (1617757970089/1250000000 : ℚ), (-65182342761589/200000000000 : ℚ), 12⟩,
    ⟨(62998465621/250000000000 : ℚ), (141461707373/1000000000 : ℚ), (-36009350315517/1000000000000 : ℚ), 9⟩,
    ⟨(253225885061/1000000000000 : ℚ), (495770966267/10000000000 : ℚ), (-320425122259/25000000000 : ℚ), 8⟩,
    ⟨(127529536631/500000000000 : ℚ), (48827985433/2000000000 : ℚ), (-1285415680987/200000000000 : ℚ), 7⟩,
    ⟨(804611789/3125000000 : ℚ), (141439535661/10000000000 : ℚ), (-1898628093497/500000000000 : ℚ), 6⟩,
    ⟨(130226354291/500000000000 : ℚ), (5624127407/625000000 : ℚ), (-4816029831/1953125000 : ℚ), 5⟩,
    ⟨(52792242409/200000000000 : ℚ), (12150004533/2000000000 : ℚ), (-1699781897127/1000000000000 : ℚ), 5⟩,
    ⟨(16747968379/62500000000 : ℚ), (8531489899/2000000000 : ℚ), (-1218923459213/1000000000000 : ℚ), 5⟩,
    ⟨(17027060747/62500000000 : ℚ), (15373355457/5000000000 : ℚ), (-89731151327/100000000000 : ℚ), 4⟩,
    ⟨(69328660179/250000000000 : ℚ), (180229193/80000000 : ℚ), (-16789058527/25000000000 : ℚ), 4⟩,
    ⟨(141282743609/500000000000 : ℚ), (1664491849/1000000000 : ℚ), (-101390330463/200000000000 : ℚ), 4⟩,
    ⟨(144067471467/500000000000 : ℚ), (12304441419/10000000000 : ℚ), (-23947817297/62500000000 : ℚ), 4⟩,
    ⟨(293969370963/1000000000000 : ℚ), (9022026263/10000000000 : ℚ), (-7191972259/25000000000 : ℚ), 3⟩,
    ⟨(300012582573/1000000000000 : ℚ), (648729053/1000000000 : ℚ), (-106217529901/500000000000 : ℚ), 3⟩,
    ⟨(76551594583/250000000000 : ℚ), (35114383/78125000 : ℚ), (-9503865587/62500000000 : ℚ), 3⟩,
    ⟨(156245554301/500000000000 : ℚ), (145193143/500000000 : ℚ), (-6429393183/62500000000 : ℚ), 3⟩,
    ⟨(318806247993/1000000000000 : ℚ), (1616939527/10000000000 : ℚ), (-31131329057/500000000000 : ℚ), 3⟩,
    ⟨(325090978263/1000000000000 : ℚ), (563898201/10000000000 : ℚ), (-1773148359/62500000000 : ℚ), 3⟩,
    ⟨(165642387011/500000000000 : ℚ), (-306118069/10000000000 : ℚ), (175007223/1000000000000 : ℚ), 3⟩,
    ⟨(337327985631/1000000000000 : ℚ), (-206128499/2000000000 : ℚ), (3048857401/125000000000 : ℚ), 3⟩,
    ⟨(17158120683/50000000000 : ℚ), (-65509461/400000000 : ℚ), (45042999011/1000000000000 : ℚ), 3⟩,
    ⟨(348731869377/1000000000000 : ℚ), (-537152071/2500000000 : ℚ), (31356825317/500000000000 : ℚ), 3⟩,
    ⟨(353982715879/1000000000000 : ℚ), (-1289713713/5000000000 : ℚ), (311395303/4000000000 : ℚ), 3⟩,
    ⟨(358864384643/1000000000000 : ℚ), (-735651243/2500000000 : ℚ), (45395989861/500000000000 : ℚ), 3⟩,
    ⟨(363329862531/1000000000000 : ℚ), (-324770973/1000000000 : ℚ), (25452082079/250000000000 : ℚ), 3⟩,
    ⟨(7346722891/20000000000 : ℚ), (-140085327/400000000 : ℚ), (27775671089/250000000000 : ℚ), 3⟩,
    ⟨(370844648013/1000000000000 : ℚ), (-1855788513/5000000000 : ℚ), (14854088781/125000000000 : ℚ), 3⟩,
    ⟨(74764316823/200000000000 : ℚ), (-1940206727/5000000000 : ℚ), (3909964269/31250000000 : ℚ), 3⟩,
    ⟨(376238283333/1000000000000 : ℚ), (-2005975939/5000000000 : ℚ), (5202073811/40000000000 : ℚ), 3⟩,
    ⟨(378071471533/1000000000000 : ℚ), (-821727121/2000000000 : ℚ), (16712284951/125000000000 : ℚ), 3⟩,
    ⟨(379303494111/1000000000000 : ℚ), (-834436841/2000000000 : ℚ), (136104774001/1000000000000 : ℚ), 3⟩,
    ⟨(75984497203/200000000000 : ℚ), (-4203692381/10000000000 : ℚ), (17162607983/125000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-2103809287/5000000000 : ℚ), (27490008797/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (97717226509/250000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control580.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control580.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate580
