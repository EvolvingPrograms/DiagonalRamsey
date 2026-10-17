import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate460
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289656176453/1000000000000 : ℚ), (7689069045287/5000000000 : ℚ), (-55774070653891/125000000000 : ℚ), 12⟩,
    ⟨(145165781533/500000000000 : ℚ), (1681827220873/10000000000 : ℚ), (-49300211113849/1000000000000 : ℚ), 9⟩,
    ⟨(291675831951/1000000000000 : ℚ), (589893714499/10000000000 : ℚ), (-8774338011411/500000000000 : ℚ), 7⟩,
    ⟨(146838018531/500000000000 : ℚ), (29076917447/1000000000 : ℚ), (-8800617126729/1000000000000 : ℚ), 6⟩,
    ⟨(296312915331/1000000000000 : ℚ), (526983483/31250000 : ℚ), (-5200382395839/1000000000000 : ℚ), 6⟩,
    ⟨(299561072179/1000000000000 : ℚ), (107414668607/10000000000 : ℚ), (-3377724567571/1000000000000 : ℚ), 5⟩,
    ⟨(303389226081/1000000000000 : ℚ), (36305197753/5000000000 : ℚ), (-291149163301/125000000000 : ℚ), 5⟩,
    ⟨(15388025491/50000000000 : ℚ), (25529867209/5000000000 : ℚ), (-1671100075819/1000000000000 : ℚ), 4⟩,
    ⟨(156316412773/500000000000 : ℚ), (36864533749/10000000000 : ℚ), (-307762722029/250000000000 : ℚ), 4⟩,
    ⟨(317959250193/1000000000000 : ℚ), (27065173037/10000000000 : ℚ), (-230566958771/250000000000 : ℚ), 4⟩,
    ⟨(161844243691/500000000000 : ℚ), (10023079641/5000000000 : ℚ), (-5577673627/8000000000 : ℚ), 4⟩,
    ⟨(164882680713/500000000000 : ℚ), (7433181413/5000000000 : ℚ), (-66007639527/125000000000 : ℚ), 3⟩,
    ⟨(168065674353/500000000000 : ℚ), (10948343751/10000000000 : ℚ), (-310683891/781250000 : ℚ), 3⟩,
    ⟨(68545028257/200000000000 : ℚ), (7922542761/10000000000 : ℚ), (-147508715389/500000000000 : ℚ), 3⟩,
    ⟨(69896647467/200000000000 : ℚ), (2772020607/5000000000 : ℚ), (-106365115327/500000000000 : ℚ), 3⟩,
    ⟨(178170276349/500000000000 : ℚ), (56964121/156250000 : ℚ), (-911002327/6250000000 : ℚ), 3⟩,
    ⟨(363231047677/1000000000000 : ℚ), (2110614987/10000000000 : ℚ), (-22637059/250000000 : ℚ), 3⟩,
    ⟨(370088363039/1000000000000 : ℚ), (26726427/312500000 : ℚ), (-22266131233/500000000000 : ℚ), 3⟩,
    ⟨(376846459089/1000000000000 : ℚ), (-1415367/78125000 : ℚ), (-233416847/40000000000 : ℚ), 3⟩,
    ⟨(95860062917/250000000000 : ℚ), (-1043510141/10000000000 : ℚ), (26938844177/1000000000000 : ℚ), 3⟩,
    ⟨(97451559737/250000000000 : ℚ), (-353075843/2000000000 : ℚ), (54842825721/1000000000000 : ℚ), 3⟩,
    ⟨(12371347281/31250000000 : ℚ), (-474438849/2000000000 : ℚ), (39338777461/500000000000 : ℚ), 3⟩,
    ⟨(401612350181/1000000000000 : ℚ), (-2883360463/10000000000 : ℚ), (19811522993/200000000000 : ℚ), 2⟩,
    ⟨(406938774829/1000000000000 : ℚ), (-662758439/2000000000 : ℚ), (116457152391/1000000000000 : ℚ), 2⟩,
    ⟨(205905545277/500000000000 : ℚ), (-1837502137/5000000000 : ℚ), (131243095829/1000000000000 : ℚ), 2⟩,
    ⟨(208091187147/500000000000 : ℚ), (-3975904051/10000000000 : ℚ), (143699499139/1000000000000 : ℚ), 2⟩,
    ⟨(84002105639/200000000000 : ℚ), (-263960771/625000000 : ℚ), (77022803897/500000000000 : ℚ), 2⟩,
    ⟨(423258685043/1000000000000 : ℚ), (-138209147/312500000 : ℚ), (81224695733/500000000000 : ℚ), 2⟩,
    ⟨(425895563313/1000000000000 : ℚ), (-2288934789/5000000000 : ℚ), (84518860409/500000000000 : ℚ), 2⟩,
    ⟨(53486971053/125000000000 : ℚ), (-4691862753/10000000000 : ℚ), (34780797637/200000000000 : ℚ), 2⟩,
    ⟨(107310009327/250000000000 : ℚ), (-4766757279/10000000000 : ℚ), (17711371203/100000000000 : ℚ), 2⟩,
    ⟨(429915423921/1000000000000 : ℚ), (-4803881481/10000000000 : ℚ), (178708483207/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1202126759/2500000000 : ℚ), (22363420311/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (75759686731/250000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control460.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control460.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate460
