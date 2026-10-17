import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate654
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1529999376353/8691734253960 : ℚ), (13286181571/39062500 : ℚ), (-7506601466757/125000000000 : ℚ)⟩,
  ⟨(1529999376353/8691734253960 : ℚ), (2142333908419/12026899526350 : ℚ), (35915549329/1000000000 : ℚ), (-6502833561701/1000000000000 : ℚ)⟩,
  ⟨(2142333908419/12026899526350 : ℚ), (295325437261/1626550698525 : ℚ), (118617502763/10000000000 : ℚ), (-2218165744863/1000000000000 : ℚ)⟩,
  ⟨(295325437261/1626550698525 : ℚ), (121757266057/653921322725 : ℚ), (26777737411/5000000000 : ℚ), (-1036863995819/1000000000000 : ℚ)⟩,
  ⟨(121757266057/653921322725 : ℚ), (247426374263/1289751774100 : ℚ), (27398621913/10000000000 : ℚ), (-549834931591/1000000000000 : ℚ)⟩,
  ⟨(247426374263/1289751774100 : ℚ), (11927994329/60156431000 : ℚ), (3625276043/2500000000 : ℚ), (-18900534833/62500000000 : ℚ)⟩,
  ⟨(11927994329/60156431000 : ℚ), (90509504063/440916332400 : ℚ), (1820583113/2500000000 : ℚ), (-7963631269/50000000000 : ℚ)⟩,
  ⟨(90509504063/440916332400 : ℚ), (20335562309/95674269000 : ℚ), (359146141/1250000000 : ℚ), (-68763121317/1000000000000 : ℚ)⟩,
  ⟨(20335562309/95674269000 : ℚ), (21520952491/97900562350 : ℚ), (1470529/5000000000 : ℚ), (-775643439/100000000000 : ℚ)⟩,
  ⟨(21520952491/97900562350 : ℚ), (31287360523/137939633700 : ℚ), (-1955070189/10000000000 : ℚ), (275667739/7812500000 : ℚ)⟩,
  ⟨(31287360523/137939633700 : ℚ), (23050076411/98815312500 : ℚ), (-1667233263/5000000000 : ℚ), (13314566223/200000000000 : ℚ)⟩,
  ⟨(23050076411/98815312500 : ℚ), (8432589489/35295848650 : ℚ), (-4322619651/10000000000 : ℚ), (44811453763/500000000000 : ℚ)⟩,
  ⟨(8432589489/35295848650 : ℚ), (87421406/358954025 : ℚ), (-314283539/625000000 : ℚ), (13311010813/125000000000 : ℚ)⟩,
  ⟨(87421406/358954025 : ℚ), (1903744141/7707885150 : ℚ), (-2758357049/5000000000 : ℚ), (2959434943/25000000000 : ℚ)⟩,
  ⟨(1903744141/7707885150 : ℚ), (37610741/150983200 : ℚ), (-45508043/78125000 : ℚ), (31498093571/250000000000 : ℚ)⟩,
  ⟨(37610741/150983200 : ℚ), (28857037/115469550 : ℚ), (-746812859/1250000000 : ℚ), (129715837643/1000000000000 : ℚ)⟩,
  ⟨(28857037/115469550 : ℚ), (1/4 : ℚ), (-2996489/5000000 : ℚ), (26035510047/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1003511/4000000 : ℚ), (-1/5 : ℚ), (36070620047/200000000000 : ℚ)⟩,
  ⟨(1003511/4000000 : ℚ), (253187141/1000000000 : ℚ), (-57714074/288673875 : ℚ), (83292855828476977/461878200000000000 : ℚ)⟩,
  ⟨(253187141/1000000000 : ℚ), (16991957/62500000 : ℚ), (-37610741/188729000 : ℚ), (8500924076801807/47182250000000000 : ℚ)⟩,
  ⟨(16991957/62500000 : ℚ), (1241642951/4000000000 : ℚ), (-3807488282/19269712875 : ℚ), (6925967423088359381/38539425750000000000 : ℚ)⟩,
  ⟨(1241642951/4000000000 : ℚ), (185716461/500000000 : ℚ), (-349685624/1794770125 : ℚ), (321006389429508221/1794770125000000000 : ℚ)⟩,
  ⟨(185716461/500000000 : ℚ), (3677380349/8000000000 : ℚ), (-16865178978/88239621625 : ℚ), (3132150233706948553/17647924325000000000 : ℚ)⟩,
  ⟨(3677380349/8000000000 : ℚ), (2332766737/4000000000 : ℚ), (-23050076411/123519140625 : ℚ), (173325054180162766189/988153125000000000000 : ℚ)⟩,
  ⟨(2332766737/4000000000 : ℚ), (6044929811/8000000000 : ℚ), (-31287360523/172424542125 : ℚ), (237802547216913272657/1379396337000000000000 : ℚ)⟩,
  ⟨(6044929811/8000000000 : ℚ), (4001470529/4000000000 : ℚ), (-43041904982/244751405875 : ℚ), (164637321411372483313/979005623500000000000 : ℚ)⟩,
  ⟨(4001470529/4000000000 : ℚ), (1359146141/1000000000 : ℚ), (-20335562309/119592836250 : ℚ), (77661697318558136911/478371345000000000000 : ℚ)⟩,
  ⟨(1359146141/1000000000 : ℚ), (3820583113/2000000000 : ℚ), (-90509504063/551145415500 : ℚ), (170234328203430797339/1102290831000000000000 : ℚ)⟩,
  ⟨(3820583113/2000000000 : ℚ), (5625276043/2000000000 : ℚ), (-11927994329/75195538750 : ℚ), (21618711958185119227/150391077500000000000 : ℚ)⟩,
  ⟨(5625276043/2000000000 : ℚ), (35398621913/8000000000 : ℚ), (-247426374263/1612189717625 : ℚ), (416761722255981792297/3224379435250000000000 : ℚ)⟩,
  ⟨(35398621913/8000000000 : ℚ), (30777737411/4000000000 : ℚ), (-487029064228/3269606613625 : ℚ), (571641255078660175989/5231370581800000000000 : ℚ)⟩,
  ⟨(30777737411/4000000000 : ℚ), (126617502763/8000000000 : ℚ), (-1181301749044/8132753492625 : ℚ), (5255115803469819391489/65062027941000000000000 : ℚ)⟩,
  ⟨(126617502763/8000000000 : ℚ), (32/1 : ℚ), (-4284667816838/30067248815875 : ℚ), (289058329414530645503/7759290017000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (29900338073/62500000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(175766997143/1000000000000 : ℚ), (13286181571/39062500 : ℚ), (-7506601466757/125000000000 : ℚ), 11⟩,
    ⟨(88594960509/500000000000 : ℚ), (35915549329/1000000000 : ℚ), (-6502833561701/1000000000000 : ℚ), 8⟩,
    ⟨(179981086601/1000000000000 : ℚ), (118617502763/10000000000 : ℚ), (-2218165744863/1000000000000 : ℚ), 6⟩,
    ⟨(184033230963/1000000000000 : ℚ), (26777737411/5000000000 : ℚ), (-1036863995819/1000000000000 : ℚ), 5⟩,
    ⟨(189190632471/1000000000000 : ℚ), (27398621913/10000000000 : ℚ), (-549834931591/1000000000000 : ℚ), 5⟩,
    ⟨(48813773769/250000000000 : ℚ), (3625276043/2500000000 : ℚ), (-18900534833/62500000000 : ℚ), 4⟩,
    ⟨(2524919561/12500000000 : ℚ), (1820583113/2500000000 : ℚ), (-7963631269/50000000000 : ℚ), 4⟩,
    ⟨(20914708627/100000000000 : ℚ), (359146141/1250000000 : ℚ), (-68763121317/1000000000000 : ℚ), 4⟩,
    ⟨(54110188357/250000000000 : ℚ), (1470529/5000000000 : ℚ), (-775643439/100000000000 : ℚ), 3⟩,
    ⟨(223594274817/1000000000000 : ℚ), (-1955070189/10000000000 : ℚ), (275667739/7812500000 : ℚ), 3⟩,
    ⟨(115166372311/500000000000 : ℚ), (-1667233263/5000000000 : ℚ), (13314566223/200000000000 : ℚ), 3⟩,
    ⟨(236397207227/1000000000000 : ℚ), (-4322619651/10000000000 : ℚ), (44811453763/500000000000 : ℚ), 3⟩,
    ⟨(120777304367/500000000000 : ℚ), (-314283539/625000000 : ℚ), (13311010813/125000000000 : ℚ), 3⟩,
    ⟨(245606753097/1000000000000 : ℚ), (-2758357049/5000000000 : ℚ), (2959434943/25000000000 : ℚ), 3⟩,
    ⟨(6209947967/25000000000 : ℚ), (-45508043/78125000 : ℚ), (31498093571/250000000000 : ℚ), 3⟩,
    ⟨(49964168511/200000000000 : ℚ), (-746812859/1250000000 : ℚ), (129715837643/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-2996489/5000000 : ℚ), (26035510047/200000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control654.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control654.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate654
