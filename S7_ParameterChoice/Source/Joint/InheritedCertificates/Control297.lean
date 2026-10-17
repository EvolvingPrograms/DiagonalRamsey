import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate297
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136471902193/500000000000 : ℚ), (1396169724801/1250000000 : ℚ), (-305622592252549/1000000000000 : ℚ), 11⟩,
    ⟨(273892112001/1000000000000 : ℚ), (608296451043/5000000000 : ℚ), (-6758875865987/200000000000 : ℚ), 8⟩,
    ⟨(27577959451/100000000000 : ℚ), (84889749291/2000000000 : ℚ), (-12048024903629/1000000000000 : ℚ), 7⟩,
    ⟨(11143522977/40000000000 : ℚ), (208051379903/10000000000 : ℚ), (-1514139009713/250000000000 : ℚ), 6⟩,
    ⟨(5645810091/20000000000 : ℚ), (120029546019/10000000000 : ℚ), (-897696332279/250000000000 : ℚ), 5⟩,
    ⟨(286851228457/1000000000000 : ℚ), (38057838797/5000000000 : ℚ), (-1171228087317/500000000000 : ℚ), 5⟩,
    ⟨(292226323883/1000000000000 : ℚ), (12821773881/2500000000 : ℚ), (-162431114059/100000000000 : ℚ), 4⟩,
    ⟨(7459100643/25000000000 : ℚ), (36007731083/10000000000 : ℚ), (-117356268077/100000000000 : ℚ), 4⟩,
    ⟨(61041044909/200000000000 : ℚ), (6502575673/2500000000 : ℚ), (-872137626447/1000000000000 : ℚ), 4⟩,
    ⟨(9771376121/31250000000 : ℚ), (9578599617/5000000000 : ℚ), (-660601247809/1000000000000 : ℚ), 3⟩,
    ⟨(320728434661/1000000000000 : ℚ), (7142014803/5000000000 : ℚ), (-126598041381/250000000000 : ℚ), 3⟩,
    ⟨(164630474477/500000000000 : ℚ), (1339266921/1250000000 : ℚ), (-48807657793/125000000000 : ℚ), 3⟩,
    ⟨(169099702987/500000000000 : ℚ), (8033550437/10000000000 : ℚ), (-150532520803/500000000000 : ℚ), 3⟩,
    ⟨(347457723493/1000000000000 : ℚ), (1494556101/2500000000 : ℚ), (-230647856499/1000000000000 : ℚ), 3⟩,
    ⟨(356946738853/1000000000000 : ℚ), (4373823081/10000000000 : ℚ), (-87086650413/500000000000 : ℚ), 3⟩,
    ⟨(366575067647/1000000000000 : ℚ), (3101873447/10000000000 : ℚ), (-32045766939/250000000000 : ℚ), 3⟩,
    ⟨(5878905997/15625000000 : ℚ), (207987101/1000000000 : ℚ), (-18048424223/200000000000 : ℚ), 2⟩,
    ⟨(385878312603/1000000000000 : ℚ), (624573399/5000000000 : ℚ), (-915609463/15625000000 : ℚ), 2⟩,
    ⟨(395367327963/1000000000000 : ℚ), (567225703/10000000000 : ℚ), (-3197095733/100000000000 : ℚ), 2⟩,
    ⟨(202312822741/500000000000 : ℚ), (1438819/5000000000 : ℚ), (-9404017271/1000000000000 : ℚ), 2⟩,
    ⟨(413564102501/1000000000000 : ℚ), (-29197897/625000000 : ℚ), (9820358381/1000000000000 : ℚ), 2⟩,
    ⟨(211048308397/500000000000 : ℚ), (-215110069/2500000000 : ℚ), (13124532531/500000000000 : ℚ), 2⟩,
    ⟨(430141015583/1000000000000 : ℚ), (-595140527/5000000000 : ℚ), (5037721717/125000000000 : ℚ), 2⟩,
    ⟨(437619826911/1000000000000 : ℚ), (-733454341/5000000000 : ℚ), (26151222577/500000000000 : ℚ), 2⟩,
    ⟨(55557628217/125000000000 : ℚ), (-1698196031/10000000000 : ℚ), (3906378179/62500000000 : ℚ), 2⟩,
    ⟨(450598727573/1000000000000 : ℚ), (-1890224309/10000000000 : ℚ), (17773796963/250000000000 : ℚ), 2⟩,
    ⟨(455973822999/1000000000000 : ℚ), (-2047687911/10000000000 : ℚ), (78232373103/1000000000000 : ℚ), 2⟩,
    ⟨(230267273453/500000000000 : ℚ), (-2174191517/10000000000 : ℚ), (42014608623/500000000000 : ℚ), 2⟩,
    ⟨(46423697703/100000000000 : ℚ), (-142029289/625000000 : ℚ), (2767915409/31250000000 : ℚ), 2⟩,
    ⟨(93409091389/200000000000 : ℚ), (-468908301/2000000000 : ℚ), (22982313753/250000000000 : ℚ), 2⟩,
    ⟨(93786587891/200000000000 : ℚ), (-597959067/2500000000 : ℚ), (94142584687/1000000000000 : ℚ), 2⟩,
    ⟨(46988124707/100000000000 : ℚ), (-2415262323/10000000000 : ℚ), (95242218553/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2418180321/10000000000 : ℚ), (47689673561/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (327752398011/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control297.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control297.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate297
