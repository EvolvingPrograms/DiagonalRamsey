import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control282
namespace DiagonalRamsey.JointInheritedCertificate282
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(289776307913/1000000000000 : ℚ), (14087379485401/10000000000 : ℚ), (-409055007029321/1000000000000 : ℚ), 12⟩,
    ⟨(290595487553/1000000000000 : ℚ), (1538037928783/10000000000 : ℚ), (-904312779251/20000000000 : ℚ), 8⟩,
    ⟨(146112978843/500000000000 : ℚ), (269138951321/5000000000 : ℚ), (-16108372304323/1000000000000 : ℚ), 7⟩,
    ⟨(294652015993/1000000000000 : ℚ), (264734694047/10000000000 : ℚ), (-8088872314507/1000000000000 : ℚ), 6⟩,
    ⟨(297850298207/1000000000000 : ℚ), (38307544491/2500000000 : ℚ), (-2394246926381/500000000000 : ℚ), 5⟩,
    ⟨(3772375039/12500000000 : ℚ), (97453738991/10000000000 : ℚ), (-3117659696441/1000000000000 : ℚ), 5⟩,
    ⟨(153216594611/500000000000 : ℚ), (65821112709/10000000000 : ℚ), (-2156483897293/1000000000000 : ℚ), 4⟩,
    ⟨(311735140091/1000000000000 : ℚ), (5785982269/1250000000 : ℚ), (-776614495461/500000000000 : ℚ), 4⟩,
    ⟨(317644795043/1000000000000 : ℚ), (8364972481/2500000000 : ℚ), (-1149855861891/1000000000000 : ℚ), 4⟩,
    ⟨(32410524087/100000000000 : ℚ), (2463247297/1000000000 : ℚ), (-216702963723/250000000000 : ℚ), 3⟩,
    ⟨(331054259947/1000000000000 : ℚ), (9165262139/5000000000 : ℚ), (-82564184389/125000000000 : ℚ), 3⟩,
    ⟨(338424929421/1000000000000 : ℚ), (213993783/156250000 : ℚ), (-505462713/1000000000 : ℚ), 3⟩,
    ⟨(86536566429/250000000000 : ℚ), (10201642633/10000000000 : ℚ), (-385939567197/1000000000000 : ℚ), 3⟩,
    ⟨(22133994259/62500000000 : ℚ), (3756221041/5000000000 : ℚ), (-145914510769/500000000000 : ℚ), 3⟩,
    ⟨(181170417517/500000000000 : ℚ), (5405544241/10000000000 : ℚ), (-216387729063/1000000000000 : ℚ), 3⟩,
    ⟨(370658105501/1000000000000 : ℚ), (932352933/2500000000 : ℚ), (-154984413347/1000000000000 : ℚ), 3⟩,
    ⟨(379015619683/1000000000000 : ℚ), (2378243551/10000000000 : ℚ), (-104357343267/1000000000000 : ℚ), 3⟩,
    ⟨(7746657803/20000000000 : ℚ), (255320617/2000000000 : ℚ), (-15539940643/250000000000 : ℚ), 2⟩,
    ⟨(395529817041/1000000000000 : ℚ), (369726823/10000000000 : ℚ), (-26672350329/1000000000000 : ℚ), 2⟩,
    ⟨(100881864867/250000000000 : ℚ), (-38275943/1000000000 : ℚ), (169197101/50000000000 : ℚ), 2⟩,
    ⟨(411248795763/1000000000000 : ℚ), (-1579713/15625000 : ℚ), (3621604639/125000000000 : ℚ), 2⟩,
    ⟨(209309732619/500000000000 : ℚ), (-307565317/2000000000 : ℚ), (25414021939/500000000000 : ℚ), 2⟩,
    ⟨(212784242157/500000000000 : ℚ), (-99027893/500000000 : ℚ), (34756349413/500000000000 : ℚ), 2⟩,
    ⟨(432028930141/1000000000000 : ℚ), (-588136121/2500000000 : ℚ), (10682692999/125000000000 : ℚ), 2⟩,
    ⟨(437938585093/1000000000000 : ℚ), (-2664074833/10000000000 : ℚ), (49505675273/500000000000 : ℚ), 2⟩,
    ⟨(443240535963/1000000000000 : ℚ), (-584621163/2000000000 : ℚ), (11042318277/100000000000 : ℚ), 2⟩,
    ⟨(27992732629/62500000000 : ℚ), (-627157053/2000000000 : ℚ), (59949444549/500000000000 : ℚ), 2⟩,
    ⟨(225911713489/500000000000 : ℚ), (-3306836589/10000000000 : ℚ), (31898355843/250000000000 : ℚ), 2⟩,
    ⟨(455021709191/1000000000000 : ℚ), (-429980333/1250000000 : ℚ), (13362408437/100000000000 : ℚ), 2⟩,
    ⟨(228723883749/500000000000 : ℚ), (-442181791/1250000000 : ℚ), (27615482407/200000000000 : ℚ), 2⟩,
    ⟨(459078237631/1000000000000 : ℚ), (-90038521/250000000 : ℚ), (70507121777/500000000000 : ℚ), 2⟩,
    ⟨(459897417271/1000000000000 : ℚ), (-181664703/500000000 : ℚ), (142473263371/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-363724977/1000000000 : ℚ), (71327602879/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (281408875403/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control282.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control282.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate282

-- Control283
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

-- Control284
namespace DiagonalRamsey.JointInheritedCertificate284
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48414345573/100000000000 : ℚ), (9286617888649/5000000000 : ℚ), (-900635760609241/1000000000000 : ℚ), 12⟩,
    ⟨(242591118803/500000000000 : ℚ), (2034006594571/10000000000 : ℚ), (-99583582261311/1000000000000 : ℚ), 8⟩,
    ⟨(243624898661/500000000000 : ℚ), (715073986253/10000000000 : ℚ), (-35499794973377/1000000000000 : ℚ), 7⟩,
    ⟨(490326223147/1000000000000 : ℚ), (22101164967/625000000 : ℚ), (-17844547011877/1000000000000 : ℚ), 6⟩,
    ⟨(494381887419/1000000000000 : ℚ), (41192376371/2000000000 : ℚ), (-5289779267881/500000000000 : ℚ), 5⟩,
    ⟨(499377731873/1000000000000 : ℚ), (131911988069/10000000000 : ℚ), (-1380522324101/200000000000 : ℚ), 5⟩,
    ⟨(126316410949/250000000000 : ℚ), (11224565719/1250000000 : ℚ), (-2394210296549/500000000000 : ℚ), 4⟩,
    ⟨(511988919379/1000000000000 : ℚ), (1274263349/200000000 : ℚ), (-3462570314513/1000000000000 : ℚ), 4⟩,
    ⟨(519482809801/1000000000000 : ℚ), (2908373857/625000000 : ℚ), (-1288550921609/500000000000 : ℚ), 4⟩,
    ⟨(527675144801/1000000000000 : ℚ), (17340509631/5000000000 : ℚ), (-1956854010691/1000000000000 : ℚ), 3⟩,
    ⟨(134121756929/250000000000 : ℚ), (5240076389/2000000000 : ℚ), (-2941121573/1953125000 : ℚ), 3⟩,
    ⟨(109166719059/200000000000 : ℚ), (19953112817/10000000000 : ℚ), (-233588897237/200000000000 : ℚ), 3⟩,
    ⟨(69453104373/125000000000 : ℚ), (190498067/125000000 : ℚ), (-908490771623/1000000000000 : ℚ), 3⟩,
    ⟨(565766451791/1000000000000 : ℚ), (11612534877/10000000000 : ℚ), (-705195599813/1000000000000 : ℚ), 3⟩,
    ⟨(576160776403/1000000000000 : ℚ), (438693191/500000000 : ℚ), (-543180952367/1000000000000 : ℚ), 3⟩,
    ⟨(9167307903/15625000000 : ℚ), (6520606641/10000000000 : ℚ), (-412215193893/1000000000000 : ℚ), 3⟩,
    ⟨(298652833631/500000000000 : ℚ), (2355154669/5000000000 : ℚ), (-152539235919/500000000000 : ℚ), 2⟩,
    ⟨(607852596651/1000000000000 : ℚ), (3240935913/10000000000 : ℚ), (-54140544541/250000000000 : ℚ), 2⟩,
    ⟨(618246921263/1000000000000 : ℚ), (7961041/39062500 : ℚ), (-142836250137/1000000000000 : ℚ), 2⟩,
    ⟨(62838853807/100000000000 : ℚ), (523181779/5000000000 : ℚ), (-20259392297/250000000000 : ℚ), 2⟩,
    ⟨(638179777759/1000000000000 : ℚ), (224428743/10000000000 : ℚ), (-1812215589/62500000000 : ℚ), 2⟩,
    ⟨(323763172669/500000000000 : ℚ), (-91872973/2000000000 : ℚ), (467359347/31250000000 : ℚ), 2⟩,
    ⟨(656338228253/1000000000000 : ℚ), (-1029283101/10000000000 : ℚ), (26052721637/500000000000 : ℚ), 2⟩,
    ⟨(664530563253/1000000000000 : ℚ), (-376027483/2500000000 : ℚ), (83461302833/1000000000000 : ℚ), 2⟩,
    ⟨(168006113419/250000000000 : ℚ), (-1898462621/10000000000 : ℚ), (109812785151/1000000000000 : ℚ), 2⟩,
    ⟨(339373864629/500000000000 : ℚ), (-111187211/500000000 : ℚ), (65890216387/500000000000 : ℚ), 2⟩,
    ⟨(342317820591/500000000000 : ℚ), (-497768131/2000000000 : ℚ), (14985097843/100000000000 : ℚ), 2⟩,
    ⟨(172407871409/250000000000 : ℚ), (-675158679/2500000000 : ℚ), (164403579581/1000000000000 : ℚ), 2⟩,
    ⟨(693687149907/1000000000000 : ℚ), (-358048277/1250000000 : ℚ), (43932341481/250000000000 : ℚ), 2⟩,
    ⟨(174190893933/250000000000 : ℚ), (-1492005989/5000000000 : ℚ), (184045953781/1000000000000 : ℚ), 2⟩,
    ⟨(87353891931/125000000000 : ℚ), (-765572149/2500000000 : ℚ), (37901609341/200000000000 : ℚ), 2⟩,
    ⟨(174967479331/250000000000 : ℚ), (-3100993369/10000000000 : ℚ), (4805371587/25000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-388226419/1250000000 : ℚ), (96276045491/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (9364163937/62500000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control284.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control284.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate284

-- Control285
namespace DiagonalRamsey.JointInheritedCertificate285
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(46712257803/200000000000 : ℚ), (13196302707787/10000000000 : ℚ), (-61776986853807/200000000000 : ℚ), 12⟩,
    ⟨(234266006491/1000000000000 : ℚ), (1439554995777/10000000000 : ℚ), (-6828071470923/200000000000 : ℚ), 8⟩,
    ⟨(58917163657/250000000000 : ℚ), (503197608853/10000000000 : ℚ), (-6080312268989/500000000000 : ℚ), 7⟩,
    ⟨(118877862579/500000000000 : ℚ), (123558186891/5000000000 : ℚ), (-3052385161369/500000000000 : ℚ), 6⟩,
    ⟨(4810142369/20000000000 : ℚ), (7139557353/500000000 : ℚ), (-3612406847969/1000000000000 : ℚ), 5⟩,
    ⟨(60974084271/250000000000 : ℚ), (362567539/40000000 : ℚ), (-2350514751539/1000000000000 : ℚ), 5⟩,
    ⟨(30986342629/125000000000 : ℚ), (3818025983/625000000 : ℚ), (-1624465029027/1000000000000 : ℚ), 4⟩,
    ⟨(126225930999/500000000000 : ℚ), (42852747739/10000000000 : ℚ), (-584326310723/500000000000 : ℚ), 4⟩,
    ⟨(32191971737/125000000000 : ℚ), (3860663069/1250000000 : ℚ), (-86373946979/100000000000 : ℚ), 4⟩,
    ⟨(2104748127/8000000000 : ℚ), (11327447447/5000000000 : ℚ), (-324827538539/500000000000 : ℚ), 3⟩,
    ⟨(269071563841/1000000000000 : ℚ), (4195407263/2500000000 : ℚ), (-493490625047/1000000000000 : ℚ), 3⟩,
    ⟨(68853086481/250000000000 : ℚ), (12462861259/10000000000 : ℚ), (-187997283521/500000000000 : ℚ), 3⟩,
    ⟨(282054796927/1000000000000 : ℚ), (2301754833/2500000000 : ℚ), (-285299442971/1000000000000 : ℚ), 3⟩,
    ⟨(57786989283/200000000000 : ℚ), (6700174231/10000000000 : ℚ), (-213770715313/1000000000000 : ℚ), 3⟩,
    ⟨(73996633697/250000000000 : ℚ), (47347903/100000000 : ℚ), (-15632031613/100000000000 : ℚ), 3⟩,
    ⟨(151570825697/500000000000 : ℚ), (633927797/2000000000 : ℚ), (-109455462311/1000000000000 : ℚ), 3⟩,
    ⟨(6206627771/20000000000 : ℚ), (1906233013/10000000000 : ℚ), (-17679478781/250000000000 : ℚ), 3⟩,
    ⟨(317486505157/1000000000000 : ℚ), (437222119/5000000000 : ℚ), (-9585167851/250000000000 : ℚ), 2⟩,
    ⟨(32453809353/100000000000 : ℚ), (23438611/10000000000 : ℚ), (-2757693387/250000000000 : ℚ), 2⟩,
    ⟨(165709121509/500000000000 : ℚ), (-684199857/10000000000 : ℚ), (2434418739/200000000000 : ℚ), 2⟩,
    ⟨(338060694021/1000000000000 : ℚ), (-1276372593/10000000000 : ℚ), (31990033627/1000000000000 : ℚ), 2⟩,
    ⟨(43050184513/125000000000 : ℚ), (-887058097/5000000000 : ℚ), (24485723143/500000000000 : ℚ), 2⟩,
    ⟨(350379524069/1000000000000 : ℚ), (-2193435737/10000000000 : ℚ), (63536006147/1000000000000 : ℚ), 2⟩,
    ⟨(2780759891/7812500000 : ℚ), (-1273297379/5000000000 : ℚ), (7600660571/100000000000 : ℚ), 2⟩,
    ⟨(180510588973/500000000000 : ℚ), (-2843036403/10000000000 : ℚ), (21658105293/250000000000 : ℚ), 2⟩,
    ⟨(365582298913/1000000000000 : ℚ), (-618009909/2000000000 : ℚ), (9560581247/100000000000 : ℚ), 2⟩,
    ⟨(18478835143/50000000000 : ℚ), (-823313841/2500000000 : ℚ), (51537427947/500000000000 : ℚ), 2⟩,
    ⟨(186482960747/500000000000 : ℚ), (-864241307/2500000000 : ℚ), (109152717887/1000000000000 : ℚ), 2⟩,
    ⟨(375717314787/1000000000000 : ℚ), (-3584444503/10000000000 : ℚ), (113924690431/1000000000000 : ℚ), 2⟩,
    ⟨(377804385317/1000000000000 : ℚ), (-114940813/312500000 : ℚ), (58726722661/500000000000 : ℚ), 2⟩,
    ⟨(189603516727/500000000000 : ℚ), (-747929891/2000000000 : ℚ), (374321521/3125000000 : ℚ), 2⟩,
    ⟨(37991175093/100000000000 : ℚ), (-11781743/31250000 : ℚ), (120940856479/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3773959091/10000000000 : ℚ), (121085290263/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (32228420807/100000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control285.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control285.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate285

-- Control286
namespace DiagonalRamsey.JointInheritedCertificate286
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36014172443/125000000000 : ℚ), (14729418295139/10000000000 : ℚ), (-212603223625417/500000000000 : ℚ), 12⟩,
    ⟨(288892438099/1000000000000 : ℚ), (160881700791/1000000000 : ℚ), (-9399251514543/200000000000 : ℚ), 8⟩,
    ⟨(290443052449/1000000000000 : ℚ), (563356934951/10000000000 : ℚ), (-523103544123/31250000000 : ℚ), 7⟩,
    ⟨(292750289329/1000000000000 : ℚ), (55444759231/2000000000 : ℚ), (-8403050569991/1000000000000 : ℚ), 6⟩,
    ⟨(295791928789/1000000000000 : ℚ), (160539210391/10000000000 : ℚ), (-1243075137389/250000000000 : ℚ), 5⟩,
    ⟨(9360583693/31250000000 : ℚ), (25535403693/2500000000 : ℚ), (-808863846387/250000000000 : ℚ), 5⟩,
    ⟨(151977227123/500000000000 : ℚ), (34501199219/5000000000 : ℚ), (-2236296204567/1000000000000 : ℚ), 4⟩,
    ⟨(154498365331/500000000000 : ℚ), (24262406101/5000000000 : ℚ), (-100574572163/62500000000 : ℚ), 4⟩,
    ⟨(157308473773/500000000000 : ℚ), (17533291247/5000000000 : ℚ), (-37183291397/31250000000 : ℚ), 4⟩,
    ⟨(5011890299/15625000000 : ℚ), (12899007529/5000000000 : ℚ), (-223904557493/250000000000 : ℚ), 4⟩,
    ⟨(327369655049/1000000000000 : ℚ), (3835108509/2000000000 : ℚ), (-3405735829/5000000000 : ℚ), 3⟩,
    ⟨(2675034641/8000000000 : ℚ), (7150318233/5000000000 : ℚ), (-519947169097/1000000000000 : ℚ), 3⟩,
    ⟨(4271531217/12500000000 : ℚ), (10622501759/10000000000 : ℚ), (-197838712399/500000000000 : ℚ), 3⟩,
    ⟨(174664219019/500000000000 : ℚ), (7789008029/10000000000 : ℚ), (-297823433597/1000000000000 : ℚ), 3⟩,
    ⟨(71424780559/200000000000 : ℚ), (1391767811/2500000000 : ℚ), (-219375506719/1000000000000 : ℚ), 3⟩,
    ⟨(365033817043/1000000000000 : ℚ), (3797847729/10000000000 : ℚ), (-155519438091/1000000000000 : ℚ), 3⟩,
    ⟨(372982003983/1000000000000 : ℚ), (2370385949/10000000000 : ℚ), (-102864674389/1000000000000 : ℚ), 3⟩,
    ⟨(38089191823/100000000000 : ℚ), (150692577/1250000000 : ℚ), (-29485904887/500000000000 : ℚ), 2⟩,
    ⟨(388687382987/1000000000000 : ℚ), (122914779/5000000000 : ℚ), (-1378356629/62500000000 : ℚ), 2⟩,
    ⟨(198146661833/500000000000 : ℚ), (-551144449/10000000000 : ℚ), (4609525501/500000000000 : ℚ), 2⟩,
    ⟨(403636490901/1000000000000 : ℚ), (-76066639/625000000 : ℚ), (35848027037/1000000000000 : ℚ), 2⟩,
    ⟨(51330770747/125000000000 : ℚ), (-443969599/2500000000 : ℚ), (1464890499/25000000000 : ℚ), 2⟩,
    ⟨(41725484189/100000000000 : ℚ), (-28072977/125000000 : ℚ), (39023427101/500000000000 : ℚ), 2⟩,
    ⟨(10584971837/25000000000 : ℚ), (-1320482941/5000000000 : ℚ), (47326617081/500000000000 : ℚ), 2⟩,
    ⟨(429019090363/1000000000000 : ℚ), (-743020179/2500000000 : ℚ), (54382191851/500000000000 : ℚ), 2⟩,
    ⟨(434061366779/1000000000000 : ℚ), (-3247550501/10000000000 : ℚ), (30162801923/250000000000 : ℚ), 2⟩,
    ⟨(8769542857/20000000000 : ℚ), (-868460099/2500000000 : ℚ), (65261526841/500000000000 : ℚ), 2⟩,
    ⟨(442223892237/1000000000000 : ℚ), (-3655917141/10000000000 : ℚ), (69270270423/500000000000 : ℚ), 2⟩,
    ⟨(27829095731/62500000000 : ℚ), (-75950953/200000000 : ℚ), (144825184623/1000000000000 : ℚ), 2⟩,
    ⟨(447572768577/1000000000000 : ℚ), (-1950759227/5000000000 : ℚ), (18683323079/125000000000 : ℚ), 2⟩,
    ⟨(449123382927/1000000000000 : ℚ), (-3969794167/10000000000 : ℚ), (3050553937/20000000000 : ℚ), 2⟩,
    ⟨(449902441481/1000000000000 : ℚ), (-15639169/39062500 : ℚ), (77024268109/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1001960569/2500000000 : ℚ), (154238191171/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (55277379493/200000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control286.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control286.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate286

-- Control287
namespace DiagonalRamsey.JointInheritedCertificate287
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252365838577/1000000000000 : ℚ), (3536467189739/2500000000 : ℚ), (-89430015906283/250000000000 : ℚ), 12⟩,
    ⟨(63269077251/250000000000 : ℚ), (30886341301/200000000 : ℚ), (-9883797009639/250000000000 : ℚ), 8⟩,
    ⟨(6362260191/25000000000 : ℚ), (270188942989/5000000000 : ℚ), (-14080233662397/1000000000000 : ℚ), 7⟩,
    ⟨(128297257971/500000000000 : ℚ), (26568033273/1000000000 : ℚ), (-1766730894449/250000000000 : ℚ), 6⟩,
    ⟨(259368370197/1000000000000 : ℚ), (76848758313/5000000000 : ℚ), (-104513724783/25000000000 : ℚ), 5⟩,
    ⟨(262785256671/1000000000000 : ℚ), (9767554491/1000000000 : ℚ), (-1359606610677/500000000000 : ℚ), 5⟩,
    ⟨(266812268881/1000000000000 : ℚ), (13179645251/2000000000 : ℚ), (-1878458429283/1000000000000 : ℚ), 4⟩,
    ⟨(271410624497/1000000000000 : ℚ), (46270728813/10000000000 : ℚ), (-13506842489/10000000000 : ℚ), 4⟩,
    ⟨(138268019421/500000000000 : ℚ), (8344094751/2500000000 : ℚ), (-997683623067/1000000000000 : ℚ), 4⟩,
    ⟨(70534787843/250000000000 : ℚ), (12249561151/5000000000 : ℚ), (-149977540351/200000000000 : ℚ), 4⟩,
    ⟨(288166001051/1000000000000 : ℚ), (9078861189/5000000000 : ℚ), (-569183621617/1000000000000 : ℚ), 3⟩,
    ⟨(294558546023/1000000000000 : ℚ), (13490182767/10000000000 : ℚ), (-17330995443/40000000000 : ℚ), 3⟩,
    ⟨(60251044517/200000000000 : ℚ), (9968290259/10000000000 : ℚ), (-328416323157/1000000000000 : ℚ), 3⟩,
    ⟨(308191538081/1000000000000 : ℚ), (3627248643/5000000000 : ℚ), (-30720587881/125000000000 : ℚ), 3⟩,
    ⟨(78825173/250000000 : ℚ), (5125488081/10000000000 : ℚ), (-89712832417/500000000000 : ℚ), 3⟩,
    ⟨(40314277413/125000000000 : ℚ), (3429168493/10000000000 : ℚ), (-31338042961/250000000000 : ℚ), 3⟩,
    ⟨(164881324891/500000000000 : ℚ), (1029688147/5000000000 : ℚ), (-80695150343/1000000000000 : ℚ), 3⟩,
    ⟨(336976177087/1000000000000 : ℚ), (940443303/10000000000 : ℚ), (-21702970241/500000000000 : ℚ), 2⟩,
    ⟨(172042665503/500000000000 : ℚ), (17462161/10000000000 : ℚ), (-11984808419/1000000000000 : ℚ), 2⟩,
    ⟨(351021646501/1000000000000 : ℚ), (-375012511/5000000000 : ℚ), (7341385913/500000000000 : ℚ), 2⟩,
    ⟨(357718323063/1000000000000 : ℚ), (-1392221093/10000000000 : ℚ), (37435437093/1000000000000 : ℚ), 2⟩,
    ⟨(72822173607/200000000000 : ℚ), (-1931922507/10000000000 : ℚ), (28455301989/500000000000 : ℚ), 2⟩,
    ⟨(74027543543/200000000000 : ℚ), (-119324571/500000000 : ℚ), (14719304073/200000000000 : ℚ), 2⟩,
    ⟨(75148166049/200000000000 : ℚ), (-692311071/2500000000 : ℚ), (43934612931/500000000000 : ℚ), 2⟩,
    ⟨(380866244589/1000000000000 : ℚ), (-123617769/400000000 : ℚ), (6251202229/62500000000 : ℚ), 2⟩,
    ⟨(77092920041/200000000000 : ℚ), (-3358019311/10000000000 : ℚ), (13783885907/125000000000 : ℚ), 2⟩,
    ⟨(77898322483/200000000000 : ℚ), (-715617559/2000000000 : ℚ), (14849729519/125000000000 : ℚ), 2⟩,
    ⟨(392908498889/1000000000000 : ℚ), (-3755344867/10000000000 : ℚ), (62865948721/500000000000 : ℚ), 2⟩,
    ⟨(49460294143/125000000000 : ℚ), (-1946674051/5000000000 : ℚ), (131173184269/1000000000000 : ℚ), 2⟩,
    ⟨(198893230723/500000000000 : ℚ), (-3994727059/10000000000 : ℚ), (135195187807/1000000000000 : ℚ), 2⟩,
    ⟨(199600280041/500000000000 : ℚ), (-406133449/1000000000 : ℚ), (34462359141/250000000000 : ℚ), 2⟩,
    ⟨(39991103051/100000000000 : ℚ), (-1023587753/2500000000 : ℚ), (34792157267/250000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4002407/9765625 : ℚ), (69666580497/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (302706645479/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control287.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control287.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate287

-- Control288
namespace DiagonalRamsey.JointInheritedCertificate288
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(266507295419/1000000000000 : ℚ), (7184486704633/5000000000 : ℚ), (-383711929157517/1000000000000 : ℚ), 12⟩,
    ⟨(66811489833/250000000000 : ℚ), (784487861857/5000000000 : ℚ), (-42408655652929/1000000000000 : ℚ), 8⟩,
    ⟨(268716173421/1000000000000 : ℚ), (137290516277/2500000000 : ℚ), (-1510424136371/100000000000 : ℚ), 7⟩,
    ⟨(135451889361/500000000000 : ℚ), (6752310889/250000000 : ℚ), (-7581401285519/1000000000000 : ℚ), 6⟩,
    ⟨(273787707397/1000000000000 : ℚ), (390780169/25000000 : ℚ), (-4485360391387/1000000000000 : ℚ), 5⟩,
    ⟨(277340185639/1000000000000 : ℚ), (12422737587/1250000000 : ℚ), (-729477419963/250000000000 : ℚ), 5⟩,
    ⟨(14076350057/50000000000 : ℚ), (67083970093/10000000000 : ℚ), (-1008070725331/500000000000 : ℚ), 4⟩,
    ⟨(286307832577/1000000000000 : ℚ), (9426309239/2000000000 : ℚ), (-1450105636567/1000000000000 : ℚ), 4⟩,
    ⟨(291636637931/1000000000000 : ℚ), (3402170087/1000000000 : ℚ), (-535776505341/500000000000 : ℚ), 4⟩,
    ⟨(297462097893/1000000000000 : ℚ), (24994930349/10000000000 : ℚ), (-201464872913/250000000000 : ℚ), 4⟩,
    ⟨(151864055049/500000000000 : ℚ), (9273082891/5000000000 : ℚ), (-306071179751/500000000000 : ℚ), 3⟩,
    ⟨(12414973177/40000000000 : ℚ), (13799441919/10000000000 : ℚ), (-58310537411/125000000000 : ℚ), 3⟩,
    ⟨(317336749147/1000000000000 : ℚ), (10217910431/10000000000 : ℚ), (-177070249861/500000000000 : ℚ), 3⟩,
    ⟨(324548317357/1000000000000 : ℚ), (7458447043/10000000000 : ℚ), (-265624118629/1000000000000 : ℚ), 3⟩,
    ⟨(33193958271/100000000000 : ℚ), (5294000203/10000000000 : ℚ), (-19461131013/100000000000 : ℚ), 3⟩,
    ⟨(169719681641/500000000000 : ℚ), (3569894311/10000000000 : ℚ), (-68379826653/500000000000 : ℚ), 3⟩,
    ⟨(86743858021/250000000000 : ℚ), (87125413/400000000 : ℚ), (-89011622479/1000000000000 : ℚ), 3⟩,
    ⟨(22154700791/62500000000 : ℚ), (3255391/31250000 : ℚ), (-24584084173/500000000000 : ℚ), 2⟩,
    ⟨(361866478009/1000000000000 : ℚ), (104771537/10000000000 : ℚ), (-78094883/5000000000 : ℚ), 2⟩,
    ⟨(369078046219/1000000000000 : ℚ), (-336962497/5000000000 : ℚ), (12833123659/1000000000000 : ℚ), 2⟩,
    ⟨(376040465941/1000000000000 : ℚ), (-1325134001/10000000000 : ℚ), (37089397849/1000000000000 : ℚ), 2⟩,
    ⟨(95671671317/250000000000 : ℚ), (-1872090111/10000000000 : ℚ), (14458818203/250000000000 : ℚ), 2⟩,
    ⟨(388952697473/1000000000000 : ℚ), (-2332497537/10000000000 : ℚ), (37798071573/500000000000 : ℚ), 2⟩,
    ⟨(78955631487/200000000000 : ℚ), (-2719941637/10000000000 : ℚ), (22694247153/250000000000 : ℚ), 2⟩,
    ⟨(400106962789/1000000000000 : ℚ), (-1522448923/5000000000 : ℚ), (51845484551/500000000000 : ℚ), 2⟩,
    ⟨(202443897113/500000000000 : ℚ), (-165773103/500000000 : ℚ), (114580366029/1000000000000 : ℚ), 2⟩,
    ⟨(409074609727/1000000000000 : ℚ), (-707576969/2000000000 : ℚ), (123632107327/1000000000000 : ℚ), 2⟩,
    ⟨(412627087969/1000000000000 : ℚ), (-37169649/100000000 : ℚ), (5239575053/40000000000 : ℚ), 2⟩,
    ⟨(83102203329/200000000000 : ℚ), (-3856339551/10000000000 : ℚ), (3419008119/25000000000 : ℚ), 2⟩,
    ⟨(83539724389/200000000000 : ℚ), (-247418633/625000000 : ℚ), (70512290523/500000000000 : ℚ), 2⟩,
    ⟨(209584418017/500000000000 : ℚ), (-4025935957/10000000000 : ℚ), (28767604723/200000000000 : ℚ), 2⟩,
    ⟨(419907499947/1000000000000 : ℚ), (-4059260997/10000000000 : ℚ), (145236134407/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4063413007/10000000000 : ℚ), (145410499591/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (146116136371/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control288.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control288.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate288

-- Control290
namespace DiagonalRamsey.JointInheritedCertificate290
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(76332457971/1000000000000 : ℚ), (25380594861121/5000000000 : ℚ), (-387890482295201/1000000000000 : ℚ), 11⟩,
    ⟨(3057854199/40000000000 : ℚ), (2780556380363/5000000000 : ℚ), (-21386207209167/500000000000 : ℚ), 8⟩,
    ⟨(76673052093/1000000000000 : ℚ), (1953082233363/10000000000 : ℚ), (-7581438911643/500000000000 : ℚ), 6⟩,
    ⟨(19252591527/250000000000 : ℚ), (38506735831/400000000 : ℚ), (-7556045558787/1000000000000 : ℚ), 5⟩,
    ⟨(77455048501/1000000000000 : ℚ), (557138133021/10000000000 : ℚ), (-4425512844449/1000000000000 : ℚ), 5⟩,
    ⟨(78002816737/1000000000000 : ℚ), (353149948649/10000000000 : ℚ), (-1420334605579/500000000000 : ℚ), 4⟩,
    ⟨(7864839551/100000000000 : ℚ), (473393807/20000000 : ℚ), (-1205595901/625000000 : ℚ), 4⟩,
    ⟨(39692783771/500000000000 : ℚ), (164246307089/10000000000 : ℚ), (-678359200731/500000000000 : ℚ), 3⟩,
    ⟨(10025904183/125000000000 : ℚ), (116270689147/10000000000 : ℚ), (-48702435393/50000000000 : ℚ), 3⟩,
    ⟨(16221096037/200000000000 : ℚ), (20739848729/2500000000 : ℚ), (-176369399707/250000000000 : ℚ), 3⟩,
    ⟨(10258957137/125000000000 : ℚ), (58949613191/10000000000 : ℚ), (-63707233263/125000000000 : ℚ), 2⟩,
    ⟨(41548229693/500000000000 : ℚ), (41112011489/10000000000 : ℚ), (-362398819237/1000000000000 : ℚ), 2⟩,
    ⟨(1683400353/20000000000 : ℚ), (3440382579/1250000000 : ℚ), (-248786605859/1000000000000 : ℚ), 2⟩,
    ⟨(42640996467/500000000000 : ℚ), (8474664349/5000000000 : ℚ), (-19903265067/125000000000 : ℚ), 2⟩,
    ⟨(86421676307/1000000000000 : ℚ), (1714354807/2000000000 : ℚ), (-87322675681/1000000000000 : ℚ), 2⟩,
    ⟨(87578091997/1000000000000 : ℚ), (457602357/2500000000 : ℚ), (-28687151307/1000000000000 : ℚ), 2⟩,
    ⟨(5546256443/62500000000 : ℚ), (-91679317/250000000 : ℚ), (19768511209/1000000000000 : ℚ), 2⟩,
    ⟨(44948259389/500000000000 : ℚ), (-1640348993/2000000000 : ℚ), (60262781917/1000000000000 : ℚ), 2⟩,
    ⟨(11379525269/125000000000 : ℚ), (-1497224817/1250000000 : ℚ), (94417654579/1000000000000 : ℚ), 2⟩,
    ⟨(23037044359/250000000000 : ℚ), (-15146531097/10000000000 : ℚ), (61718297221/500000000000 : ℚ), 2⟩,
    ⟨(93221735699/1000000000000 : ℚ), (-4455293559/2500000000 : ℚ), (148223486251/1000000000000 : ℚ), 1⟩,
    ⟨(9424653799/100000000000 : ℚ), (-10043720421/5000000000 : ℚ), (169463974533/1000000000000 : ℚ), 1⟩,
    ⟨(95212714901/1000000000000 : ℚ), (-22010785747/10000000000 : ℚ), (93841112481/500000000000 : ℚ), 1⟩,
    ⟨(96110961621/1000000000000 : ℚ), (-2364153789/1000000000 : ℚ), (101640625837/500000000000 : ℚ), 1⟩,
    ⟨(12116578443/125000000000 : ℚ), (-25018581153/10000000000 : ℚ), (216572021119/1000000000000 : ℚ), 1⟩,
    ⟨(12208724947/125000000000 : ℚ), (-1635751651/625000000 : ℚ), (227794735527/1000000000000 : ℚ), 1⟩,
    ⟨(98315378349/1000000000000 : ℚ), (-2712516947/1000000000 : ℚ), (47426911909/200000000000 : ℚ), 1⟩,
    ⟨(19772629317/200000000000 : ℚ), (-27895934043/10000000000 : ℚ), (9789332737/40000000000 : ℚ), 1⟩,
    ⟨(49653914489/500000000000 : ℚ), (-28497936511/10000000000 : ℚ), (250698213323/1000000000000 : ℚ), 1⟩,
    ⟨(6227821437/62500000000 : ℚ), (-14470633289/5000000000 : ℚ), (63777068411/250000000000 : ℚ), 1⟩,
    ⟨(9987184011/100000000000 : ℚ), (-29233049269/10000000000 : ℚ), (25801904459/100000000000 : ℚ), 1⟩,
    ⟨(49992868557/500000000000 : ℚ), (-29377832921/10000000000 : ℚ), (259465848943/1000000000000 : ℚ), 1⟩,
    ⟨(1/10 : ℚ), (-183724247/62500000 : ℚ), (12982315103/50000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (49999/1000000 : ℚ)
  x := (5196195367/200000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control290.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control290.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate290
