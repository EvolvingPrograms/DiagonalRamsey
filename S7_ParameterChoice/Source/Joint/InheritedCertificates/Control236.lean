import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate236
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236049406237/1000000000000 : ℚ), (10875675578381/10000000000 : ℚ), (-257408723824931/1000000000000 : ℚ), 11⟩,
    ⟨(59233661207/250000000000 : ℚ), (29582891241/250000000 : ℚ), (-28463283601481/1000000000000 : ℚ), 8⟩,
    ⟨(238696596677/1000000000000 : ℚ), (206104522971/5000000000 : ℚ), (-10147529814211/1000000000000 : ℚ), 7⟩,
    ⟨(120659146613/500000000000 : ℚ), (201697515319/10000000000 : ℚ), (-2550599409511/500000000000 : ℚ), 6⟩,
    ⟨(244774486103/1000000000000 : ℚ), (116145296669/10000000000 : ℚ), (-1512170872193/500000000000 : ℚ), 5⟩,
    ⟨(124515945141/500000000000 : ℚ), (73508919551/10000000000 : ℚ), (-1972844566021/1000000000000 : ℚ), 5⟩,
    ⟨(127024752317/500000000000 : ℚ), (24715733929/5000000000 : ℚ), (-1367868602329/1000000000000 : ℚ), 4⟩,
    ⟨(64944751697/250000000000 : ℚ), (541143783/156250000 : ℚ), (-494041099343/500000000000 : ℚ), 4⟩,
    ⟨(66541304627/250000000000 : ℚ), (4992604753/2000000000 : ℚ), (-2867338747/3906250000 : ℚ), 3⟩,
    ⟨(136573318541/500000000000 : ℚ), (91712259/50000000 : ℚ), (-27783989071/50000000000 : ℚ), 3⟩,
    ⟨(56131205527/200000000000 : ℚ), (13639935127/10000000000 : ℚ), (-21279069571/50000000000 : ℚ), 3⟩,
    ⟨(28862107063/100000000000 : ℚ), (5099175001/5000000000 : ℚ), (-81925172027/250000000000 : ℚ), 3⟩,
    ⟨(296965058349/1000000000000 : ℚ), (1904003563/2500000000 : ℚ), (-50429688141/200000000000 : ℚ), 3⟩,
    ⟨(76401908407/250000000000 : ℚ), (2818482211/5000000000 : ℚ), (-9628155143/50000000000 : ℚ), 3⟩,
    ⟨(9827048867/31250000000 : ℚ), (4092398247/10000000000 : ℚ), (-144705394617/1000000000000 : ℚ), 3⟩,
    ⟨(323453541987/1000000000000 : ℚ), (358468841/1250000000 : ℚ), (-26416394331/250000000000 : ℚ), 2⟩,
    ⟨(332485009213/1000000000000 : ℚ), (376670811/2000000000 : ℚ), (-1146813883/15625000000 : ℚ), 2⟩,
    ⟨(68294597491/200000000000 : ℚ), (216529137/2000000000 : ℚ), (-46425371093/1000000000000 : ℚ), 2⟩,
    ⟨(350330917571/1000000000000 : ℚ), (212372323/5000000000 : ℚ), (-23676811341/1000000000000 : ℚ), 2⟩,
    ⟨(7179469857/20000000000 : ℚ), (-15044209/1250000000 : ℚ), (-870169489/200000000000 : ℚ), 2⟩,
    ⟨(367317480569/1000000000000 : ℚ), (-574964147/10000000000 : ℚ), (759610121/62500000000 : ℚ), 2⟩,
    ⟨(93820630891/250000000000 : ℚ), (-4779353/50000000 : ℚ), (5258743359/200000000000 : ℚ), 2⟩,
    ⟨(382791914117/1000000000000 : ℚ), (-1275815761/10000000000 : ℚ), (38418661193/1000000000000 : ℚ), 2⟩,
    ⟨(97443333173/250000000000 : ℚ), (-1544546783/10000000000 : ℚ), (24398895867/500000000000 : ℚ), 2⟩,
    ⟨(396159544411/1000000000000 : ℚ), (-353911901/2000000000 : ℚ), (28819526647/500000000000 : ℚ), 2⟩,
    ⟨(200944523283/500000000000 : ℚ), (-97831741/500000000 : ℚ), (8137898259/125000000000 : ℚ), 2⟩,
    ⟨(406906660917/1000000000000 : ℚ), (-2110229029/10000000000 : ℚ), (7131412469/100000000000 : ℚ), 2⟩,
    ⟨(51395508137/125000000000 : ℚ), (-2233759841/10000000000 : ℚ), (2386461267/31250000000 : ℚ), 2⟩,
    ⟨(414620257973/1000000000000 : ℚ), (-2329816371/10000000000 : ℚ), (4016637717/50000000000 : ℚ), 2⟩,
    ⟨(208620977261/500000000000 : ℚ), (-600078139/2500000000 : ℚ), (41632433339/500000000000 : ℚ), 2⟩,
    ⟨(104750976593/250000000000 : ℚ), (-244659731/1000000000 : ℚ), (42600062859/500000000000 : ℚ), 2⟩,
    ⟨(209944572481/500000000000 : ℚ), (-1234765237/5000000000 : ℚ), (10770255969/125000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2472387423/10000000000 : ℚ), (10785252971/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (41267338487/125000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control236.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control236.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate236
