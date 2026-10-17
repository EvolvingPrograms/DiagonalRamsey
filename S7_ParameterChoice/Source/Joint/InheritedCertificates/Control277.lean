import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate277
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(327262705481/1000000000000 : ℚ), (175643163377/125000000 : ℚ), (-460798016668021/1000000000000 : ℚ), 12⟩,
    ⟨(16409511447/50000000000 : ℚ), (76712324047/500000000 : ℚ), (-2547143675217/50000000000 : ℚ), 8⟩,
    ⟨(330036343299/1000000000000 : ℚ), (13426490547/250000000 : ℚ), (-9077204965227/500000000000 : ℚ), 7⟩,
    ⟨(332783269469/1000000000000 : ℚ), (52845664407/2000000000 : ℚ), (-1824156931857/200000000000 : ℚ), 6⟩,
    ⟨(336404553047/1000000000000 : ℚ), (38255016631/2500000000 : ℚ), (-5403162135383/1000000000000 : ℚ), 5⟩,
    ⟨(68173063819/200000000000 : ℚ), (97397046607/10000000000 : ℚ), (-3521216494321/1000000000000 : ℚ), 5⟩,
    ⟨(346122607997/1000000000000 : ℚ), (16464042219/2500000000 : ℚ), (-152420001953/62500000000 : ℚ), 4⟩,
    ⟨(176062894593/500000000000 : ℚ), (46383975381/10000000000 : ℚ), (-439862163339/250000000000 : ℚ), 4⟩,
    ⟨(71763409749/200000000000 : ℚ), (33600248659/10000000000 : ℚ), (-130537394719/100000000000 : ℚ), 4⟩,
    ⟨(366131946189/1000000000000 : ℚ), (3100897949/1250000000 : ℚ), (-246720023127/250000000000 : ℚ), 3⟩,
    ⟨(74800007011/200000000000 : ℚ), (1853344577/1000000000 : ℚ), (-23589664349/31250000000 : ℚ), 3⟩,
    ⟨(191172770673/500000000000 : ℚ), (13922741513/10000000000 : ℚ), (-580616110817/1000000000000 : ℚ), 3⟩,
    ⟨(15643523731/40000000000 : ℚ), (326571541/312500000 : ℚ), (-55801204663/125000000000 : ℚ), 3⟩,
    ⟨(50017936911/125000000000 : ℚ), (7780671461/10000000000 : ℚ), (-340852339159/1000000000000 : ℚ), 3⟩,
    ⟨(409424538913/1000000000000 : ℚ), (2845959741/5000000000 : ℚ), (-64086111017/250000000000 : ℚ), 3⟩,
    ⟨(209420921313/500000000000 : ℚ), (1008199317/2500000000 : ℚ), (-93832498123/500000000000 : ℚ), 3⟩,
    ⟨(85660942529/200000000000 : ℚ), (1348842367/5000000000 : ℚ), (-131135425513/1000000000000 : ℚ), 2⟩,
    ⟨(218861008179/500000000000 : ℚ), (805623253/5000000000 : ℚ), (-84107501617/1000000000000 : ℚ), 2⟩,
    ⟨(447003059983/1000000000000 : ℚ), (359383297/5000000000 : ℚ), (-22319729879/500000000000 : ℚ), 2⟩,
    ⟨(114014615499/250000000000 : ℚ), (-20118251/10000000000 : ℚ), (-1128521177/100000000000 : ℚ), 2⟩,
    ⟨(18592040557/40000000000 : ℚ), (-317791277/5000000000 : ℚ), (17046338913/1000000000000 : ℚ), 2⟩,
    ⟨(473146520217/1000000000000 : ℚ), (-575219723/5000000000 : ℚ), (8237464219/200000000000 : ℚ), 2⟩,
    ⟨(481014609083/1000000000000 : ℚ), (-791048691/5000000000 : ℚ), (61777762679/1000000000000 : ℚ), 2⟩,
    ⟨(244164753263/500000000000 : ℚ), (-485984339/2500000000 : ℚ), (39656499873/500000000000 : ℚ), 2⟩,
    ⟨(247510383043/500000000000 : ℚ), (-2246296701/10000000000 : ℚ), (4708891931/50000000000 : ℚ), 2⟩,
    ⟨(20040957891/40000000000 : ℚ), (-99887233/400000000 : ℚ), (106671523951/1000000000000 : ℚ), 2⟩,
    ⟨(31642577261/62500000000 : ℚ), (-1351391733/5000000000 : ℚ), (58513103941/500000000000 : ℚ), 2⟩,
    ⟨(31921375139/62500000000 : ℚ), (-35848371/125000000 : ℚ), (125420728577/1000000000000 : ℚ), 2⟩,
    ⟨(514363285803/1000000000000 : ℚ), (-23406707/78125000 : ℚ), (65995464209/500000000000 : ℚ), 2⟩,
    ⟨(129277552993/250000000000 : ℚ), (-123601221/400000000 : ℚ), (68418674341/500000000000 : ℚ), 2⟩,
    ⟨(518956326331/1000000000000 : ℚ), (-98489931/312500000 : ℚ), (140030863957/1000000000000 : ℚ), 2⟩,
    ⟨(51988384979/100000000000 : ℚ), (-1591103761/5000000000 : ℚ), (141616637241/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-3186010113/10000000000 : ℚ), (141814349861/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (65378057193/250000000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control277.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control277.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate277
