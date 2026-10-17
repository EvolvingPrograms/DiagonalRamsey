import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate559
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(25770390151/100000000000 : ℚ), (14392833004613/10000000000 : ℚ), (-46440490006443/125000000000 : ℚ), 12⟩,
    ⟨(129146217883/500000000000 : ℚ), (787079494811/5000000000 : ℚ), (-41042837552537/1000000000000 : ℚ), 9⟩,
    ⟨(259463836371/1000000000000 : ℚ), (276060334751/5000000000 : ℚ), (-14604183192947/1000000000000 : ℚ), 8⟩,
    ⟨(130603411049/500000000000 : ℚ), (272108252487/10000000000 : ℚ), (-914981387159/125000000000 : ℚ), 7⟩,
    ⟨(263504607041/1000000000000 : ℚ), (157756643361/10000000000 : ℚ), (-43219446291/10000000000 : ℚ), 6⟩,
    ⟨(133167531137/500000000000 : ℚ), (20084754593/2000000000 : ℚ), (-350519372219/125000000000 : ℚ), 5⟩,
    ⟨(269670928967/1000000000000 : ℚ), (67819175391/10000000000 : ℚ), (-1930938484959/1000000000000 : ℚ), 5⟩,
    ⟨(2734800809/10000000000 : ℚ), (47622639983/10000000000 : ℚ), (-1382809767933/1000000000000 : ℚ), 5⟩,
    ⟨(277725833857/1000000000000 : ℚ), (17156515777/5000000000 : ℚ), (-508111267841/500000000000 : ℚ), 4⟩,
    ⟨(70591824729/250000000000 : ℚ), (12559879101/5000000000 : ℚ), (-758920650213/1000000000000 : ℚ), 4⟩,
    ⟨(287359776233/1000000000000 : ℚ), (18530415829/10000000000 : ℚ), (-571318892737/1000000000000 : ℚ), 4⟩,
    ⟨(3658189819/12500000000 : ℚ), (68319373/50000000 : ℚ), (-17210356123/40000000000 : ℚ), 4⟩,
    ⟨(298202529091/1000000000000 : ℚ), (9979473267/10000000000 : ℚ), (-80365847337/250000000000 : ℚ), 3⟩,
    ⟨(303948382997/1000000000000 : ℚ), (1782792433/2500000000 : ℚ), (-117872888779/500000000000 : ℚ), 3⟩,
    ⟨(154918705761/500000000000 : ℚ), (4889619481/10000000000 : ℚ), (-166981763601/1000000000000 : ℚ), 3⟩,
    ⟨(157906450051/500000000000 : ℚ), (3098310587/10000000000 : ℚ), (-11096533081/100000000000 : ℚ), 3⟩,
    ⟨(321817301517/1000000000000 : ℚ), (411939927/2500000000 : ℚ), (-32367220677/500000000000 : ℚ), 3⟩,
    ⟨(327792790097/1000000000000 : ℚ), (229875957/5000000000 : ℚ), (-26158275887/1000000000000 : ℚ), 3⟩,
    ⟨(166840909311/500000000000 : ℚ), (-522602133/10000000000 : ℚ), (1580956603/250000000000 : ℚ), 3⟩,
    ⟨(21214229533/62500000000 : ℚ), (-1341318621/10000000000 : ℚ), (16936139753/500000000000 : ℚ), 3⟩,
    ⟨(344975016099/1000000000000 : ℚ), (-1013916601/5000000000 : ℚ), (57360683139/1000000000000 : ℚ), 3⟩,
    ⟨(350270425387/1000000000000 : ℚ), (-2605920137/10000000000 : ℚ), (38726645197/500000000000 : ℚ), 3⟩,
    ⟨(355262902703/1000000000000 : ℚ), (-3093716607/10000000000 : ℚ), (94659014993/1000000000000 : ℚ), 3⟩,
    ⟨(179952183881/500000000000 : ℚ), (-3505151099/10000000000 : ℚ), (13671224289/125000000000 : ℚ), 3⟩,
    ⟨(364150120719/1000000000000 : ℚ), (-3850966909/10000000000 : ℚ), (60944154193/500000000000 : ℚ), 3⟩,
    ⟨(91989818163/250000000000 : ℚ), (-206973267/500000000 : ℚ), (66224157957/500000000000 : ℚ), 3⟩,
    ⟨(74259027869/200000000000 : ℚ), (-4377051211/10000000000 : ℚ), (141229765823/1000000000000 : ℚ), 3⟩,
    ⟨(374125594579/1000000000000 : ℚ), (-4568636283/10000000000 : ℚ), (18546266653/125000000000 : ℚ), 3⟩,
    ⟨(376423379521/1000000000000 : ℚ), (-1179484601/2500000000 : ℚ), (76986478993/500000000000 : ℚ), 3⟩,
    ⟨(5908849457/15625000000 : ℚ), (-4827702237/10000000000 : ℚ), (77204223/488281250 : ℚ), 3⟩,
    ⟨(379337765853/1000000000000 : ℚ), (-4899859239/10000000000 : ℚ), (32169439531/200000000000 : ℚ), 3⟩,
    ⟨(379926300109/1000000000000 : ℚ), (-4935638879/10000000000 : ℚ), (1622055059/10000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-308756093/625000000 : ℚ), (40593729147/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (360740694747/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control559.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control559.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate559
