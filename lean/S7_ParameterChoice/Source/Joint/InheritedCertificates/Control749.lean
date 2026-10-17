import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate749
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (3350287827578/25078921916475 : ℚ), (137997800283/625000000 : ℚ), (-29553199550867/1000000000000 : ℚ)⟩,
  ⟨(3350287827578/25078921916475 : ℚ), (21478096454/158621343383 : ℚ), (20165105121/1000000000 : ℚ), (-2750896930243/1000000000000 : ℚ)⟩,
  ⟨(21478096454/158621343383 : ℚ), (29784625451/215600448930 : ℚ), (43029707827/10000000000 : ℚ), (-603087284843/1000000000000 : ℚ)⟩,
  ⟨(29784625451/215600448930 : ℚ), (248037940431/1754298644600 : ℚ), (-90381959/10000000000 : ℚ), (-7394775823/1000000000000 : ℚ)⟩,
  ⟨(248037940431/1754298644600 : ℚ), (31416047484/217216425925 : ℚ), (-3526673681/2000000000 : ℚ), (3760049447/15625000000 : ℚ)⟩,
  ⟨(31416047484/217216425925 : ℚ), (1054061317/7152360425 : ℚ), (-13161012721/5000000000 : ℚ), (22894209659/62500000000 : ℚ)⟩,
  ⟨(1054061317/7152360425 : ℚ), (30493703939/204382996200 : ℚ), (-15449768057/5000000000 : ℚ), (27110454927/62500000000 : ℚ)⟩,
  ⟨(30493703939/204382996200 : ℚ), (3693777269/24638472800 : ℚ), (-8235841519/2500000000 : ℚ), (464260982771/1000000000000 : ℚ)⟩,
  ⟨(3693777269/24638472800 : ℚ), (3/20 : ℚ), (-8297437701/2500000000 : ℚ), (11698869001/25000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1702562299/10000000000 : ℚ), (-3/5 : ℚ), (28505424899/50000000000 : ℚ)⟩,
  ⟨(1702562299/10000000000 : ℚ), (1764158481/10000000000 : ℚ), (-3693777269/6159618200 : ℚ), (35113112486292748711/61596182000000000000 : ℚ)⟩,
  ⟨(1764158481/10000000000 : ℚ), (4550231943/20000000000 : ℚ), (-30493703939/51095749050 : ℚ), (21556544675172137247/37848703000000000000 : ℚ)⟩,
  ⟨(4550231943/20000000000 : ℚ), (6838987279/20000000000 : ℚ), (-4216245268/7152360425 : ℚ), (20308523068383734049/35761802125000000000 : ℚ)⟩,
  ⟨(6838987279/20000000000 : ℚ), (4473326319/8000000000 : ℚ), (-125664189936/217216425925 : ℚ), (306346910409991698401/543041064812500000000 : ℚ)⟩,
  ⟨(4473326319/8000000000 : ℚ), (39909618041/40000000000 : ℚ), (-248037940431/438574661150 : ℚ), (9769373010243423420613/17542986446000000000000 : ℚ)⟩,
  ⟨(39909618041/40000000000 : ℚ), (83029707827/40000000000 : ℚ), (-59569250902/107800224465 : ℚ), (11727498553719022592971/21560044893000000000000 : ℚ)⟩,
  ⟨(83029707827/40000000000 : ℚ), (24165105121/4000000000 : ℚ), (-85912385816/158621343383 : ℚ), (82669492026571840301931/158621343383000000000000 : ℚ)⟩,
  ⟨(24165105121/4000000000 : ℚ), (32/1 : ℚ), (-13401151310312/25078921916475 : ℚ), (478821129007764835179383/1003156876659000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (362095420257/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(33339005117/250000000000 : ℚ), (137997800283/625000000 : ℚ), (-29553199550867/1000000000000 : ℚ), 10⟩,
    ⟨(1076885423/8000000000 : ℚ), (20165105121/1000000000 : ℚ), (-2750896930243/1000000000000 : ℚ), 7⟩,
    ⟨(17116122809/125000000000 : ℚ), (43029707827/10000000000 : ℚ), (-603087284843/1000000000000 : ℚ), 6⟩,
    ⟨(699789967/5000000000 : ℚ), (-90381959/10000000000 : ℚ), (-7394775823/1000000000000 : ℚ), 5⟩,
    ⟨(143236571203/1000000000000 : ℚ), (-3526673681/2000000000 : ℚ), (3760049447/15625000000 : ℚ), 5⟩,
    ⟨(146265582131/1000000000000 : ℚ), (-13161012721/5000000000 : ℚ), (22894209659/62500000000 : ℚ), 5⟩,
    ⟨(148583886729/1000000000000 : ℚ), (-15449768057/5000000000 : ℚ), (27110454927/62500000000 : ℚ), 4⟩,
    ⟨(18729818017/125000000000 : ℚ), (-8235841519/2500000000 : ℚ), (464260982771/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-8297437701/2500000000 : ℚ), (11698869001/25000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control749.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control749.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate749
