import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate283
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(29697456877/100000000000 : ℚ), (2840771670901/2000000000 : ℚ), (-10566895757073/25000000000 : ℚ), 12⟩,
    ⟨(14890361571/50000000000 : ℚ), (775454869713/5000000000 : ℚ), (-46721550202617/1000000000000 : ℚ), 8⟩,
    ⟨(299464537723/1000000000000 : ℚ), (271430883159/5000000000 : ℚ), (-16645099600537/1000000000000 : ℚ), 7⟩,
    ⟨(150965263457/500000000000 : ℚ), (5340718349/200000000 : ℚ), (-32650745841/3906250000 : ℚ), 6⟩,
    ⟨(305181450169/1000000000000 : ℚ), (38648223763/2500000000 : ℚ), (-989669017577/200000000000 : ℚ), 5⟩,
    ⟨(7729649983/25000000000 : ℚ), (98342271707/10000000000 : ℚ), (-3221909746509/1000000000000 : ℚ), 5⟩,
    ⟨(313905608369/1000000000000 : ℚ), (16609452903/2500000000 : ℚ), (-445753799341/200000000000 : ℚ), 4⟩,
    ⟨(319294824901/1000000000000 : ℚ), (11683721519/2500000000 : ℚ), (-802736623091/500000000000 : ℚ), 4⟩,
    ⟨(65060349563/200000000000 : ℚ), (4224297191/1250000000 : ℚ), (-237744170793/200000000000 : ℚ), 4⟩,
    ⟨(331868527159/1000000000000 : ℚ), (248888671/100000000 : ℚ), (-448154986631/500000000000 : ℚ), 3⟩,
    ⟨(338931921259/1000000000000 : ℚ), (9265414867/5000000000 : ℚ), (-683205529257/1000000000000 : ℚ), 3⟩,
    ⟨(43302988221/125000000000 : ℚ), (6927265723/5000000000 : ℚ), (-523060060011/1000000000000 : ℚ), 3⟩,
    ⟨(354272328781/1000000000000 : ℚ), (1291175101/1250000000 : ℚ), (-199814810263/500000000000 : ℚ), 3⟩,
    ⟨(90600401423/250000000000 : ℚ), (3808161609/5000000000 : ℚ), (-302461809497/1000000000000 : ℚ), 3⟩,
    ⟨(370733447121/1000000000000 : ℚ), (5490892681/10000000000 : ℚ), (-8983523649/40000000000 : ℚ), 3⟩,
    ⟨(379187612881/1000000000000 : ℚ), (3800224631/10000000000 : ℚ), (-161222260083/1000000000000 : ℚ), 3⟩,
    ⟨(193841342367/500000000000 : ℚ), (2437562151/10000000000 : ℚ), (-27248299321/250000000000 : ℚ), 2⟩,
    ⟨(198068425247/500000000000 : ℚ), (82923413/625000000 : ℚ), (-4092198197/62500000000 : ℚ), 2⟩,
    ⟨(101117172981/250000000000 : ℚ), (51573067/1250000000 : ℚ), (-7222683451/250000000000 : ℚ), 2⟩,
    ⟨(82519593767/200000000000 : ℚ), (-345769429/10000000000 : ℚ), (1041331553/500000000000 : ℚ), 2⟩,
    ⟨(420446391847/1000000000000 : ℚ), (-489371937/5000000000 : ℚ), (14220881109/500000000000 : ℚ), 2⟩,
    ⟨(106984594089/250000000000 : ℚ), (-1509350511/10000000000 : ℚ), (50945638449/1000000000000 : ℚ), 2⟩,
    ⟨(54375221307/125000000000 : ℚ), (-1955135881/10000000000 : ℚ), (70177104749/1000000000000 : ℚ), 2⟩,
    ⟨(441568549801/1000000000000 : ℚ), (-2329575121/10000000000 : ℚ), (86586277861/1000000000000 : ℚ), 2⟩,
    ⟨(89515094543/200000000000 : ℚ), (-528613583/2000000000 : ℚ), (25130499807/250000000000 : ℚ), 2⟩,
    ⟨(452964689247/1000000000000 : ℚ), (-725914821/2500000000 : ℚ), (112254825281/1000000000000 : ℚ), 2⟩,
    ⟨(57210537287/125000000000 : ℚ), (-623513327/2000000000 : ℚ), (60997026799/500000000000 : ℚ), 2⟩,
    ⟨(230844423723/500000000000 : ℚ), (-82239197/250000000 : ℚ), (129900442053/1000000000000 : ℚ), 2⟩,
    ⟨(464939770701/1000000000000 : ℚ), (-68465759/200000000 : ℚ), (68047873037/500000000000 : ℚ), 2⟩,
    ⟨(116851439973/250000000000 : ℚ), (-3521409239/10000000000 : ℚ), (2197966193/15625000000 : ℚ), 2⟩,
    ⟨(117265766549/250000000000 : ℚ), (-717164701/2000000000 : ℚ), (143685917331/1000000000000 : ℚ), 2⟩,
    ⟨(234947864423/500000000000 : ℚ), (-1808868533/5000000000 : ℚ), (18148023901/125000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1810856327/5000000000 : ℚ), (145371023111/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (138117222741/500000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control283.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control283.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate283
