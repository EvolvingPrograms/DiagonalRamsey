import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control586
namespace DiagonalRamsey.JointInheritedCertificate586
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60924654977/250000000000 : ℚ), (15186325512191/10000000000 : ℚ), (-185326434870781/500000000000 : ℚ), 12⟩,
    ⟨(122105090819/500000000000 : ℚ), (166186991307/1000000000 : ℚ), (-10234102613797/250000000000 : ℚ), 9⟩,
    ⟨(122614189239/500000000000 : ℚ), (145816149329/2500000000 : ℚ), (-14558911704277/1000000000000 : ℚ), 8⟩,
    ⟨(61685851159/250000000000 : ℚ), (287620112377/10000000000 : ℚ), (-3645705181753/500000000000 : ℚ), 7⟩,
    ⟨(124370334791/500000000000 : ℚ), (5212786659/312500000 : ℚ), (-4300409976613/1000000000000 : ℚ), 6⟩,
    ⟨(125600469281/500000000000 : ℚ), (849521111/80000000 : ℚ), (-174130942467/62500000000 : ℚ), 6⟩,
    ⟨(254100517843/1000000000000 : ℚ), (2867380233/400000000 : ℚ), (-957427814973/500000000000 : ℚ), 5⟩,
    ⟨(257411482889/1000000000000 : ℚ), (25143767701/5000000000 : ℚ), (-341986465943/250000000000 : ℚ), 5⟩,
    ⟨(261101947299/1000000000000 : ℚ), (18085032289/5000000000 : ℚ), (-1002152021597/1000000000000 : ℚ), 4⟩,
    ⟨(265136369881/1000000000000 : ℚ), (330077057/125000000 : ℚ), (-745385523951/1000000000000 : ℚ), 4⟩,
    ⟨(134737948471/500000000000 : ℚ), (4849535331/2500000000 : ℚ), (-34884567803/62500000000 : ℚ), 4⟩,
    ⟨(137039368231/500000000000 : ℚ), (55526707/39062500 : ℚ), (-417350239291/1000000000000 : ℚ), 4⟩,
    ⟨(278900560583/1000000000000 : ℚ), (642790867/625000000 : ℚ), (-154366512569/500000000000 : ℚ), 4⟩,
    ⟨(113557973/400000000 : ℚ), (1810394037/2500000000 : ℚ), (-55784105471/250000000000 : ℚ), 3⟩,
    ⟨(72253438421/250000000000 : ℚ), (968578873/2000000000 : ℚ), (-154450620219/1000000000000 : ℚ), 3⟩,
    ⟨(294207727087/1000000000000 : ℚ), (730720649/2500000000 : ℚ), (-9847971283/100000000000 : ℚ), 3⟩,
    ⟨(149713415953/500000000000 : ℚ), (682772013/5000000000 : ℚ), (-26134485717/500000000000 : ℚ), 3⟩,
    ⟨(304620805309/1000000000000 : ℚ), (43980831/5000000000 : ℚ), (-13693063719/1000000000000 : ℚ), 3⟩,
    ⟨(77434906623/250000000000 : ℚ), (-970207893/10000000000 : ℚ), (940219267/50000000000 : ℚ), 3⟩,
    ⟨(31473399841/100000000000 : ℚ), (-46338863/250000000 : ℚ), (23190151297/500000000000 : ℚ), 3⟩,
    ⟨(31955582253/100000000000 : ℚ), (-1297726723/5000000000 : ℚ), (3495266743/50000000000 : ℚ), 3⟩,
    ⟨(324158662051/1000000000000 : ℚ), (-100661041/312500000 : ℚ), (5627571561/62500000000 : ℚ), 3⟩,
    ⟨(328498189111/1000000000000 : ℚ), (-937479723/2500000000 : ℚ), (53647155003/500000000000 : ℚ), 3⟩,
    ⟨(166266305847/500000000000 : ℚ), (-4196544163/10000000000 : ℚ), (122054620409/1000000000000 : ℚ), 3⟩,
    ⟨(336223076103/1000000000000 : ℚ), (-2286218743/5000000000 : ℚ), (67311383837/500000000000 : ℚ), 3⟩,
    ⟨(339534041149/1000000000000 : ℚ), (-4886410433/10000000000 : ℚ), (29046134091/200000000000 : ℚ), 3⟩,
    ⟨(34243362043/100000000000 : ℚ), (-5145257541/10000000000 : ℚ), (77028297029/500000000000 : ℚ), 3⟩,
    ⟨(344893889411/1000000000000 : ℚ), (-5354185653/10000000000 : ℚ), (161236503651/1000000000000 : ℚ), 3⟩,
    ⟨(346891154357/1000000000000 : ℚ), (-5517132767/10000000000 : ℚ), (166872626819/1000000000000 : ℚ), 3⟩,
    ⟨(69681236103/200000000000 : ℚ), (-2818501821/5000000000 : ℚ), (171039882347/1000000000000 : ℚ), 3⟩,
    ⟨(69884875471/200000000000 : ℚ), (-5715840829/10000000000 : ℚ), (43447655179/250000000000 : ℚ), 3⟩,
    ⟨(87483984771/250000000000 : ℚ), (-2877471849/5000000000 : ℚ), (175157969043/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5759816933/10000000000 : ℚ), (175328516669/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (370733466927/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control586.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control586.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate586

-- Control587
namespace DiagonalRamsey.JointInheritedCertificate587
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(70361011253/250000000000 : ℚ), (3931696721007/2500000000 : ℚ), (-443274360296019/1000000000000 : ℚ), 12⟩,
    ⟨(282014580309/1000000000000 : ℚ), (1721633734469/10000000000 : ℚ), (-24480295688739/500000000000 : ℚ), 9⟩,
    ⟨(141575078167/500000000000 : ℚ), (604575081001/10000000000 : ℚ), (-8707666984241/500000000000 : ℚ), 8⟩,
    ⟨(284839836871/1000000000000 : ℚ), (59667882253/2000000000 : ℚ), (-8724095485857/1000000000000 : ℚ), 7⟩,
    ⟨(71766837343/250000000000 : ℚ), (10823337147/625000000 : ℚ), (-2573616134339/500000000000 : ℚ), 6⟩,
    ⟨(144905620837/500000000000 : ℚ), (110353426233/10000000000 : ℚ), (-1668197211723/500000000000 : ℚ), 6⟩,
    ⟨(58609017719/200000000000 : ℚ), (18646397131/2500000000 : ℚ), (-1147326019829/500000000000 : ℚ), 5⟩,
    ⟨(14836887321/50000000000 : ℚ), (26200172443/5000000000 : ℚ), (-328162074239/200000000000 : ℚ), 5⟩,
    ⟨(75213413209/250000000000 : ℚ), (37759634991/10000000000 : ℚ), (-1203596288777/1000000000000 : ℚ), 4⟩,
    ⟨(61070633883/200000000000 : ℚ), (13816159309/5000000000 : ℚ), (-179359253659/200000000000 : ℚ), 4⟩,
    ⟨(38774120419/125000000000 : ℚ), (2036300467/1000000000 : ℚ), (-67317779131/100000000000 : ℚ), 4⟩,
    ⟨(157663212393/500000000000 : ℚ), (1873340821/1250000000 : ℚ), (-252553859583/500000000000 : ℚ), 4⟩,
    ⟨(80176028919/250000000000 : ℚ), (340968507/312500000 : ℚ), (-187774516113/500000000000 : ℚ), 4⟩,
    ⟨(326274245921/1000000000000 : ℚ), (7756293967/10000000000 : ℚ), (-17096149413/62500000000 : ℚ), 3⟩,
    ⟨(8299579303/25000000000 : ℚ), (5270883903/10000000000 : ℚ), (-191765924227/1000000000000 : ℚ), 3⟩,
    ⟨(168887957097/500000000000 : ℚ), (656557661/2000000000 : ℚ), (-125210335129/1000000000000 : ℚ), 3⟩,
    ⟨(343596684869/1000000000000 : ℚ), (417893371/2500000000 : ℚ), (-70334400307/1000000000000 : ℚ), 3⟩,
    ⟨(349389426943/1000000000000 : ℚ), (17554857/500000000 : ℚ), (-24592547991/1000000000000 : ℚ), 3⟩,
    ⟨(177549176571/500000000000 : ℚ), (-185344159/2500000000 : ℚ), (694028069/50000000000 : ℚ), 3⟩,
    ⟨(180334241693/500000000000 : ℚ), (-1652243671/10000000000 : ℚ), (11618174951/250000000000 : ℚ), 3⟩,
    ⟨(366046174277/1000000000000 : ℚ), (-2416262689/10000000000 : ℚ), (3711467469/50000000000 : ℚ), 3⟩,
    ⟨(371179635711/1000000000000 : ℚ), (-382469403/1250000000 : ℚ), (97946073713/1000000000000 : ℚ), 3⟩,
    ⟨(376019429647/1000000000000 : ℚ), (-3602826113/10000000000 : ℚ), (59116451843/500000000000 : ℚ), 3⟩,
    ⟨(190259473113/500000000000 : ℚ), (-81218633/200000000 : ℚ), (67780033309/500000000000 : ℚ), 3⟩,
    ⟨(384634852643/1000000000000 : ℚ), (-1111501117/2500000000 : ℚ), (150291027273/1000000000000 : ℚ), 3⟩,
    ⟨(97081877617/250000000000 : ℚ), (-953454287/2000000000 : ℚ), (162706729649/1000000000000 : ℚ), 3⟩,
    ⟨(97890339347/250000000000 : ℚ), (-157245469/312500000 : ℚ), (86511809697/500000000000 : ℚ), 3⟩,
    ⟨(394305249691/1000000000000 : ℚ), (-13113047/25000000 : ℚ), (36281434037/200000000000 : ℚ), 3⟩,
    ⟨(24783297637/62500000000 : ℚ), (-5411498713/10000000000 : ℚ), (93991041499/500000000000 : ℚ), 3⟩,
    ⟨(398222442729/1000000000000 : ℚ), (-691718477/1250000000 : ℚ), (192839942769/1000000000000 : ℚ), 3⟩,
    ⟨(199679009377/500000000000 : ℚ), (-5614114259/10000000000 : ℚ), (306320101/1562500000 : ℚ), 3⟩,
    ⟨(7998571081/20000000000 : ℚ), (-1130793039/2000000000 : ℚ), (197637478873/1000000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-565893117/1000000000 : ℚ), (197836100157/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (84428302063/250000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control587.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control587.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate587

-- Control588
namespace DiagonalRamsey.JointInheritedCertificate588
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18548353671/62500000000 : ℚ), (15955347002249/10000000000 : ℚ), (-94840446303007/200000000000 : ℚ), 12⟩,
    ⟨(148683334833/500000000000 : ℚ), (1746906372073/10000000000 : ℚ), (-52378053063687/1000000000000 : ℚ), 9⟩,
    ⟨(149273490253/500000000000 : ℚ), (306792863019/5000000000 : ℚ), (-372639556713/20000000000 : ℚ), 8⟩,
    ⟨(150151612109/500000000000 : ℚ), (302870993713/10000000000 : ℚ), (-9334411034479/1000000000000 : ℚ), 7⟩,
    ⟨(60523697443/200000000000 : ℚ), (35172632299/2000000000 : ℚ), (-1377012960947/250000000000 : ℚ), 6⟩,
    ⟨(38183809031/125000000000 : ℚ), (112112359181/10000000000 : ℚ), (-1785471460921/500000000000 : ℚ), 6⟩,
    ⟨(308831713143/1000000000000 : ℚ), (37905334809/5000000000 : ℚ), (-2456600366551/1000000000000 : ℚ), 5⟩,
    ⟨(19541864957/62500000000 : ℚ), (53291994659/10000000000 : ℚ), (-1757233874223/1000000000000 : ℚ), 5⟩,
    ⟨(158473943751/500000000000 : ℚ), (4803741613/1250000000 : ℚ), (-644810219209/500000000000 : ℚ), 4⟩,
    ⟨(321624657771/1000000000000 : ℚ), (28148851961/10000000000 : ℚ), (-192306194391/200000000000 : ℚ), 4⟩,
    ⟨(40831888783/125000000000 : ℚ), (20768962387/10000000000 : ℚ), (-5644038233/7812500000 : ℚ), 4⟩,
    ⟨(331990798973/1000000000000 : ℚ), (15311001559/10000000000 : ℚ), (-542776280787/1000000000000 : ℚ), 4⟩,
    ⟨(337580338301/1000000000000 : ℚ), (11173642647/10000000000 : ℚ), (-20216123193/50000000000 : ℚ), 4⟩,
    ⟨(171684948963/500000000000 : ℚ), (7971673569/10000000000 : ℚ), (-147673032973/500000000000 : ℚ), 3⟩,
    ⟨(174651860613/500000000000 : ℚ), (1362381281/2500000000 : ℚ), (-52006485211/250000000000 : ℚ), 3⟩,
    ⟨(355324662239/1000000000000 : ℚ), (3432582173/10000000000 : ℚ), (-267556747/1953125000 : ℚ), 3⟩,
    ⟨(36137473601/100000000000 : ℚ), (359707037/2000000000 : ℚ), (-15689973967/200000000000 : ℚ), 3⟩,
    ⟨(183697838511/500000000000 : ℚ), (114969527/2500000000 : ℚ), (-2968358119/100000000000 : ℚ), 3⟩,
    ⟨(186664750161/500000000000 : ℚ), (-40446049/625000000 : ℚ), (1130701259/100000000000 : ℚ), 3⟩,
    ⟨(94779764987/250000000000 : ℚ), (-784834657/5000000000 : ℚ), (23004144917/500000000000 : ℚ), 3⟩,
    ⟨(15388343971/40000000000 : ℚ), (-585765939/2500000000 : ℚ), (18885123871/250000000000 : ℚ), 3⟩,
    ⟨(78008857597/200000000000 : ℚ), (-187131/625000 : ℚ), (100756526973/1000000000000 : ℚ), 3⟩,
    ⟨(197537370239/500000000000 : ℚ), (-1771613447/5000000000 : ℚ), (61155390521/500000000000 : ℚ), 3⟩,
    ⟨(199875755373/500000000000 : ℚ), (-80123873/200000000 : ℚ), (140708041477/1000000000000 : ℚ), 3⟩,
    ⟨(404029558937/1000000000000 : ℚ), (-219757573/500000000 : ℚ), (156338793241/1000000000000 : ℚ), 3⟩,
    ⟨(203933842553/500000000000 : ℚ), (-943900731/2000000000 : ℚ), (169505127187/1000000000000 : ℚ), 3⟩,
    ⟨(205614463/500000000 : ℚ), (-311657009/625000000 : ℚ), (9021999629/50000000000 : ℚ), 3⟩,
    ⟨(207040455517/500000000000 : ℚ), (-1300437457/2500000000 : ℚ), (94660822869/500000000000 : ℚ), 3⟩,
    ⟨(416396174031/1000000000000 : ℚ), (-2684718447/5000000000 : ℚ), (7851381671/40000000000 : ℚ), 3⟩,
    ⟨(418152417743/1000000000000 : ℚ), (-1373172403/2500000000 : ℚ), (1258921953/6250000000 : ℚ), 3⟩,
    ⟨(419332728583/1000000000000 : ℚ), (-2786850577/5000000000 : ℚ), (51204949139/250000000000 : ℚ), 3⟩,
    ⟨(419925739513/1000000000000 : ℚ), (-701733447/1250000000 : ℚ), (2581316191/12500000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-5618872659/10000000000 : ℚ), (25839436277/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (324518773381/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control588.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control588.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate588

-- Control589
namespace DiagonalRamsey.JointInheritedCertificate589
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7130970411/40000000000 : ℚ), (4116596702487/2500000000 : ℚ), (-58792973253561/200000000000 : ℚ), 12⟩,
    ⟨(178619431179/1000000000000 : ℚ), (45061712849/250000000 : ℚ), (-32451781385723/1000000000000 : ℚ), 9⟩,
    ⟨(89653224401/500000000000 : ℚ), (632703279683/10000000000 : ℚ), (-5765263705343/500000000000 : ℚ), 8⟩,
    ⟨(18032869679/100000000000 : ℚ), (311939636963/10000000000 : ℚ), (-1153249112447/200000000000 : ℚ), 7⟩,
    ⟨(36335266067/200000000000 : ℚ), (22598436343/1250000000 : ℚ), (-424227338337/125000000000 : ℚ), 6⟩,
    ⟨(183336370989/1000000000000 : ℚ), (114929395431/10000000000 : ℚ), (-2192587188993/1000000000000 : ℚ), 6⟩,
    ⟨(92646415827/500000000000 : ℚ), (774060273/100000000 : ℚ), (-375344526073/250000000000 : ℚ), 5⟩,
    ⟨(11720429409/62500000000 : ℚ), (54111147619/10000000000 : ℚ), (-213476182787/200000000000 : ℚ), 5⟩,
    ⟨(190016972643/1000000000000 : ℚ), (38720720513/10000000000 : ℚ), (-38850383061/50000000000 : ℚ), 5⟩,
    ⟨(192739156907/1000000000000 : ℚ), (14029877107/5000000000 : ℚ), (-573083198933/1000000000000 : ℚ), 4⟩,
    ⟨(48916801803/250000000000 : ℚ), (10197073587/5000000000 : ℚ), (-8485708109/20000000000 : ℚ), 4⟩,
    ⟨(39754584967/200000000000 : ℚ), (2942596377/2000000000 : ℚ), (-312291111981/1000000000000 : ℚ), 4⟩,
    ⟨(12626650001/62500000000 : ℚ), (2598882971/2500000000 : ℚ), (-225805068327/1000000000000 : ℚ), 4⟩,
    ⟨(205396300011/1000000000000 : ℚ), (704421443/1000000000 : ℚ), (-78780314477/500000000000 : ℚ), 4⟩,
    ⟨(104425085421/500000000000 : ℚ), (549415067/1250000000 : ℚ), (-102714650279/1000000000000 : ℚ), 3⟩,
    ⟨(106177374921/500000000000 : ℚ), (2268746877/10000000000 : ℚ), (-11588453933/200000000000 : ℚ), 3⟩,
    ⟨(107938143001/500000000000 : ℚ), (21536607/400000000 : ℚ), (-653229157/31250000000 : ℚ), 3⟩,
    ⟨(219380865003/1000000000000 : ℚ), (-442900903/5000000000 : ℚ), (2521056199/250000000000 : ℚ), 3⟩,
    ⟨(222834735833/1000000000000 : ℚ), (-1034744201/5000000000 : ℚ), (18125486133/500000000000 : ℚ), 3⟩,
    ⟨(226204635829/1000000000000 : ℚ), (-765273497/2500000000 : ℚ), (58510465587/1000000000000 : ℚ), 3⟩,
    ⟨(22945811101/100000000000 : ℚ), (-3896865061/10000000000 : ℚ), (77549056989/1000000000000 : ℚ), 3⟩,
    ⟨(29070478579/125000000000 : ℚ), (-4604202579/10000000000 : ℚ), (46943631091/500000000000 : ℚ), 3⟩,
    ⟨(117745939469/500000000000 : ℚ), (-2601996503/5000000000 : ℚ), (10792257823/100000000000 : ℚ), 3⟩,
    ⟨(119107031601/500000000000 : ℚ), (-357015977/625000000 : ℚ), (119959934863/1000000000000 : ℚ), 3⟩,
    ⟨(240704165301/1000000000000 : ℚ), (-19191641/31250000 : ℚ), (65116866623/500000000000 : ℚ), 3⟩,
    ⟨(24293820419/100000000000 : ℚ), (-6500711987/10000000000 : ℚ), (69462023261/500000000000 : ℚ), 3⟩,
    ⟨(48978932971/200000000000 : ℚ), (-1359547143/2000000000 : ℚ), (73084344043/500000000000 : ℚ), 3⟩,
    ⟨(24655470551/100000000000 : ℚ), (-1759498537/2500000000 : ℚ), (152072288197/1000000000000 : ℚ), 3⟩,
    ⟨(49580467811/200000000000 : ℚ), (-7225712467/10000000000 : ℚ), (156713149463/1000000000000 : ℚ), 3⟩,
    ⟨(124462293521/500000000000 : ℚ), (-368200067/500000000 : ℚ), (160148401967/1000000000000 : ℚ), 3⟩,
    ⟨(124805802333/500000000000 : ℚ), (-7455044467/10000000000 : ℚ), (162417808107/1000000000000 : ℚ), 3⟩,
    ⟨(24995677557/100000000000 : ℚ), (-1500045841/2000000000 : ℚ), (16354645037/100000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-3752930851/5000000000 : ℚ), (81843625317/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (205037278283/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control589.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control589.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate589

-- Control590
namespace DiagonalRamsey.JointInheritedCertificate590
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(107848982757/500000000000 : ℚ), (8475958466481/5000000000 : ℚ), (-183074234567401/500000000000 : ℚ), 12⟩,
    ⟨(10805182911/50000000000 : ℚ), (1856162500849/10000000000 : ℚ), (-40423389202133/1000000000000 : ℚ), 9⟩,
    ⟨(21691113659/100000000000 : ℚ), (162963170969/2500000000 : ℚ), (-7182586522401/500000000000 : ℚ), 8⟩,
    ⟨(43622524833/200000000000 : ℚ), (160787286919/5000000000 : ℚ), (-1796400676039/250000000000 : ℚ), 7⟩,
    ⟨(219696549963/1000000000000 : ℚ), (46627559717/2500000000 : ℚ), (-2115374642073/500000000000 : ℚ), 6⟩,
    ⟨(110823829957/500000000000 : ℚ), (14834398153/1250000000 : ℚ), (-2734690981947/1000000000000 : ℚ), 6⟩,
    ⟨(111973581881/500000000000 : ℚ), (80018214303/10000000000 : ℚ), (-1873909551589/1000000000000 : ℚ), 5⟩,
    ⟨(113286458013/500000000000 : ℚ), (56015530787/10000000000 : ℚ), (-1333518383867/1000000000000 : ℚ), 5⟩,
    ⟨(229499629279/1000000000000 : ℚ), (40155430567/10000000000 : ℚ), (-972038023153/1000000000000 : ℚ), 5⟩,
    ⟨(232699117671/1000000000000 : ℚ), (2916839959/1000000000 : ℚ), (-179563309609/250000000000 : ℚ), 4⟩,
    ⟨(11807028419/50000000000 : ℚ), (21268498081/10000000000 : ℚ), (-53314956531/100000000000 : ℚ), 4⟩,
    ⟨(47958167671/200000000000 : ℚ), (15414430031/10000000000 : ℚ), (-78780606259/200000000000 : ℚ), 4⟩,
    ⟨(487229547/2000000000 : ℚ), (10966691751/10000000000 : ℚ), (-143221494011/500000000000 : ℚ), 4⟩,
    ⟨(247575547229/1000000000000 : ℚ), (375778661/500000000 : ℚ), (-25214543249/125000000000 : ℚ), 4⟩,
    ⟨(251635015127/1000000000000 : ℚ), (1197309741/2500000000 : ℚ), (-16711045381/125000000000 : ℚ), 3⟩,
    ⟨(255754082297/1000000000000 : ℚ), (520393283/2000000000 : ℚ), (-9776896207/125000000000 : ℚ), 3⟩,
    ⟨(259893079873/1000000000000 : ℚ), (823685373/10000000000 : ℚ), (-32379205079/1000000000000 : ℚ), 3⟩,
    ⟨(264012147043/1000000000000 : ℚ), (-638634257/10000000000 : ℚ), (5917571409/1000000000000 : ℚ), 3⟩,
    ⟨(268071614941/1000000000000 : ℚ), (-1852730733/10000000000 : ℚ), (19105481997/500000000000 : ℚ), 3⟩,
    ⟨(27203238867/100000000000 : ℚ), (-286867951/1000000000 : ℚ), (65642004019/1000000000000 : ℚ), 3⟩,
    ⟨(55171264763/200000000000 : ℚ), (-744794543/2000000000 : ℚ), (89068763601/1000000000000 : ℚ), 3⟩,
    ⟨(279506593789/1000000000000 : ℚ), (-1111744241/2500000000 : ℚ), (54571370691/500000000000 : ℚ), 3⟩,
    ⟨(282948044499/1000000000000 : ℚ), (-2529667163/5000000000 : ℚ), (12636214233/100000000000 : ℚ), 3⟩,
    ⟨(286147532891/1000000000000 : ℚ), (-5577659243/10000000000 : ℚ), (70554877903/500000000000 : ℚ), 3⟩,
    ⟨(564598137/1953125000 : ℚ), (-6014756861/10000000000 : ℚ), (7684017811/50000000000 : ℚ), 3⟩,
    ⟨(36462499801/125000000000 : ℚ), (-6380509797/10000000000 : ℚ), (164300837623/1000000000000 : ℚ), 3⟩,
    ⟨(18374968891/62500000000 : ℚ), (-1336506163/2000000000 : ℚ), (173145205751/1000000000000 : ℚ), 3⟩,
    ⟨(147975306103/500000000000 : ℚ), (-865830871/1250000000 : ℚ), (180345850253/1000000000000 : ℚ), 3⟩,
    ⟨(59506907601/200000000000 : ℚ), (-7117259761/10000000000 : ℚ), (23250257153/125000000000 : ℚ), 3⟩,
    ⟨(14936801279/50000000000 : ℚ), (-3628805881/5000000000 : ℚ), (23773301253/125000000000 : ℚ), 3⟩,
    ⟨(5990870079/20000000000 : ℚ), (-1837495111/2500000000 : ℚ), (96474757127/500000000000 : ℚ), 3⟩,
    ⟨(18746824791/62500000000 : ℚ), (-3697906641/5000000000 : ℚ), (3886466711/20000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-740152611/1000000000 : ℚ), (194494705877/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (373410687771/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control590.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control590.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate590

-- Control591
namespace DiagonalRamsey.JointInheritedCertificate591
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(126947167851/500000000000 : ℚ), (17504230141881/10000000000 : ℚ), (-8900229009289/20000000000 : ℚ), 12⟩,
    ⟨(12717841593/50000000000 : ℚ), (958624630373/5000000000 : ℚ), (-49134139286303/1000000000000 : ℚ), 9⟩,
    ⟨(63819342521/250000000000 : ℚ), (42102738787/625000000 : ℚ), (-17463759580571/1000000000000 : ℚ), 8⟩,
    ⟨(256647085089/1000000000000 : ℚ), (166271242063/5000000000 : ℚ), (-174759988763/20000000000 : ℚ), 7⟩,
    ⟨(25845278577/100000000000 : ℚ), (19302760281/1000000000 : ℚ), (-2573437383993/500000000000 : ℚ), 6⟩,
    ⟨(130338541121/500000000000 : ℚ), (122943316223/10000000000 : ℚ), (-208047460313/62500000000 : ℚ), 6⟩,
    ⟨(52659710663/200000000000 : ℚ), (82996394211/10000000000 : ℚ), (-570692722829/250000000000 : ℚ), 5⟩,
    ⟨(266291952789/1000000000000 : ℚ), (58188067529/10000000000 : ℚ), (-1626203751741/1000000000000 : ℚ), 5⟩,
    ⟨(269628452591/1000000000000 : ℚ), (4179316341/1000000000 : ℚ), (-593553209571/500000000000 : ℚ), 5⟩,
    ⟨(68318980101/250000000000 : ℚ), (30434655589/10000000000 : ℚ), (-35156972969/40000000000 : ℚ), 4⟩,
    ⟨(277199229119/1000000000000 : ℚ), (22267646513/10000000000 : ℚ), (-327119278183/500000000000 : ℚ), 4⟩,
    ⟨(35170074391/125000000000 : ℚ), (16216293251/10000000000 : ℚ), (-121326850609/250000000000 : ℚ), 4⟩,
    ⟨(285719942201/1000000000000 : ℚ), (5809870771/5000000000 : ℚ), (-355027409193/1000000000000 : ℚ), 4⟩,
    ⟨(72558821861/250000000000 : ℚ), (8054494687/10000000000 : ℚ), (-31549129661/125000000000 : ℚ), 4⟩,
    ⟨(294863145613/1000000000000 : ℚ), (5239480769/10000000000 : ℚ), (-170066881579/1000000000000 : ℚ), 3⟩,
    ⟨(59911789581/200000000000 : ℚ), (2982591937/10000000000 : ℚ), (-51504692567/500000000000 : ℚ), 3⟩,
    ⟨(12171098847/40000000000 : ℚ), (287305711/2500000000 : ℚ), (-5958896399/125000000000 : ℚ), 3⟩,
    ⟨(308973273467/1000000000000 : ℚ), (-356953947/10000000000 : ℚ), (-749338717/500000000000 : ℚ), 3⟩,
    ⟨(78400282909/250000000000 : ℚ), (-803061569/5000000000 : ℚ), (37378496909/1000000000000 : ℚ), 3⟩,
    ⟨(318116476879/1000000000000 : ℚ), (-2650207213/10000000000 : ℚ), (70351070661/1000000000000 : ℚ), 3⟩,
    ⟨(20154738997/62500000000 : ℚ), (-3528113513/10000000000 : ℚ), (3077059961/31250000000 : ℚ), 3⟩,
    ⟨(326637189961/1000000000000 : ℚ), (-4269306261/10000000000 : ℚ), (15314855803/125000000000 : ℚ), 3⟩,
    ⟨(82640124669/250000000000 : ℚ), (-4896286953/10000000000 : ℚ), (143119278801/1000000000000 : ℚ), 3⟩,
    ⟨(41775995811/125000000000 : ℚ), (-1356586887/2500000000 : ℚ), (160736230493/1000000000000 : ℚ), 3⟩,
    ⟨(33754446629/100000000000 : ℚ), (-1468207347/2500000000 : ℚ), (2196644309/12500000000 : ℚ), 3⟩,
    ⟨(68107573153/200000000000 : ℚ), (-1249207939/2000000000 : ℚ), (94192152281/500000000000 : ℚ), 3⟩,
    ⟨(171579668419/500000000000 : ℚ), (-6553926361/10000000000 : ℚ), (198909001109/1000000000000 : ℚ), 3⟩,
    ⟨(34538363331/100000000000 : ℚ), (-1360515747/2000000000 : ℚ), (41493837757/200000000000 : ℚ), 3⟩,
    ⟨(347189333991/1000000000000 : ℚ), (-1399320077/2000000000 : ℚ), (214187794533/1000000000000 : ℚ), 3⟩,
    ⟨(87139762249/250000000000 : ℚ), (-7139385233/10000000000 : ℚ), (219154868927/1000000000000 : ℚ), 3⟩,
    ⟨(17473979361/50000000000 : ℚ), (-7233318473/10000000000 : ℚ), (222433308229/1000000000000 : ℚ), 3⟩,
    ⟨(174971041689/500000000000 : ℚ), (-7279916707/10000000000 : ℚ), (112031448731/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-291428977/400000000 : ℚ), (7008317211/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (84317404309/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control591.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control591.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate591

-- Control592
namespace DiagonalRamsey.JointInheritedCertificate592
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13857729531/50000000000 : ℚ), (1785636817447/1000000000 : ℚ), (-247770639905759/500000000000 : ℚ), 12⟩,
    ⟨(138824760467/500000000000 : ℚ), (1956194049171/10000000000 : ℚ), (-1709868717473/31250000000 : ℚ), 9⟩,
    ⟨(139317307557/500000000000 : ℚ), (687534677673/10000000000 : ℚ), (-9724791393309/500000000000 : ℚ), 8⟩,
    ⟨(280100386163/1000000000000 : ℚ), (339532672779/10000000000 : ℚ), (-4866577638293/500000000000 : ℚ), 7⟩,
    ⟨(141016358953/500000000000 : ℚ), (197180166353/10000000000 : ℚ), (-2867186780409/500000000000 : ℚ), 6⟩,
    ⟨(28441300093/100000000000 : ℚ), (62830871389/5000000000 : ℚ), (-1854964784127/500000000000 : ℚ), 6⟩,
    ⟨(28721831181/100000000000 : ℚ), (84892286461/10000000000 : ℚ), (-2545299518033/1000000000000 : ℚ), 5⟩,
    ⟨(72605408467/250000000000 : ℚ), (14892549859/2500000000 : ℚ), (-226790558233/125000000000 : ℚ), 5⟩,
    ⟨(146996058681/500000000000 : ℚ), (42834209457/10000000000 : ℚ), (-33138213731/25000000000 : ℚ), 5⟩,
    ⟨(297895376583/1000000000000 : ℚ), (31238745979/10000000000 : ℚ), (-491264364067/500000000000 : ℚ), 4⟩,
    ⟨(302093821013/1000000000000 : ℚ), (22901324151/10000000000 : ℚ), (-183130233151/250000000000 : ℚ), 4⟩,
    ⟨(153273508667/500000000000 : ℚ), (16724077329/10000000000 : ℚ), (-544612266107/1000000000000 : ℚ), 4⟩,
    ⟨(155606039417/500000000000 : ℚ), (12032540941/10000000000 : ℚ), (-399755774159/1000000000000 : ℚ), 4⟩,
    ⟨(316044078419/1000000000000 : ℚ), (839443021/1000000000 : ℚ), (-71423645929/250000000000 : ℚ), 4⟩,
    ⟨(80249120323/250000000000 : ℚ), (5522785883/10000000000 : ℚ), (-194256248363/1000000000000 : ℚ), 3⟩,
    ⟨(163010796553/500000000000 : ℚ), (3221430199/10000000000 : ℚ), (-2396537769/20000000000 : ℚ), 3⟩,
    ⟨(331071019287/1000000000000 : ℚ), (1352867083/10000000000 : ℚ), (-11690367093/200000000000 : ℚ), 3⟩,
    ⟨(3360961311/10000000000 : ℚ), (-90666423/5000000000 : ℚ), (-7285157733/1000000000000 : ℚ), 3⟩,
    ⟨(341048533973/1000000000000 : ℚ), (-726457059/5000000000 : ℚ), (8939615929/250000000000 : ℚ), 3⟩,
    ⟨(172940266779/500000000000 : ℚ), (-628744307/2500000000 : ℚ), (72230284139/1000000000000 : ℚ), 3⟩,
    ⟨(175272797529/500000000000 : ℚ), (-3407332513/10000000000 : ℚ), (103298717419/1000000000000 : ℚ), 3⟩,
    ⟨(17749939569/50000000000 : ℚ), (-520018117/1250000000 : ℚ), (129852601831/1000000000000 : ℚ), 3⟩,
    ⟨(359197235809/1000000000000 : ℚ), (-4796465047/10000000000 : ℚ), (30514637967/200000000000 : ℚ), 3⟩,
    ⟨(36310049503/100000000000 : ℚ), (-266700899/500000000 : ℚ), (34397058369/200000000000 : ℚ), 3⟩,
    ⟨(91667744631/250000000000 : ℚ), (-361655511/625000000 : ℚ), (18849424561/100000000000 : ℚ), 3⟩,
    ⟨(184937150291/500000000000 : ℚ), (-308222739/500000000 : ℚ), (101206529253/500000000000 : ℚ), 3⟩,
    ⟨(186339805731/500000000000 : ℚ), (-259043219/400000000 : ℚ), (53495650477/250000000000 : ℚ), 3⟩,
    ⟨(187529947243/500000000000 : ℚ), (-6727622841/10000000000 : ℚ), (223386786351/1000000000000 : ℚ), 3⟩,
    ⟨(376992226229/1000000000000 : ℚ), (-6923815123/10000000000 : ℚ), (230764016127/1000000000000 : ℚ), 3⟩,
    ⟨(189228998639/500000000000 : ℚ), (-7068148423/10000000000 : ℚ), (118107900701/500000000000 : ℚ), 3⟩,
    ⟨(189721545729/500000000000 : ℚ), (-3581538563/5000000000 : ℚ), (23981311639/100000000000 : ℚ), 3⟩,
    ⟨(94984505443/250000000000 : ℚ), (-3605081121/5000000000 : ℚ), (120800446057/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-7216030317/10000000000 : ℚ), (60455965191/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (157946192727/500000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control592.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control592.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate592

-- Control593
namespace DiagonalRamsey.JointInheritedCertificate593
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30556497821/200000000000 : ℚ), (2576398391503/5000000000 : ℚ), (-19746384647599/250000000000 : ℚ), 11⟩,
    ⟨(76843785343/500000000000 : ℚ), (109157173313/2000000000 : ℚ), (-1704318191083/200000000000 : ℚ), 8⟩,
    ⟨(155462952069/1000000000000 : ℚ), (180358785157/10000000000 : ℚ), (-720898641533/250000000000 : ℚ), 6⟩,
    ⟨(31608081269/200000000000 : ℚ), (81017081337/10000000000 : ℚ), (-664587966709/500000000000 : ℚ), 5⟩,
    ⟨(16132088339/100000000000 : ℚ), (10204328967/2500000000 : ℚ), (-344160258247/500000000000 : ℚ), 5⟩,
    ⟨(20647289539/125000000000 : ℚ), (10422318197/5000000000 : ℚ), (-72549667827/200000000000 : ℚ), 4⟩,
    ⟨(84732233063/500000000000 : ℚ), (4786952687/5000000000 : ℚ), (-174406329219/1000000000000 : ℚ), 4⟩,
    ⟨(348029237/2000000000 : ℚ), (657929487/2500000000 : ℚ), (-13827335267/250000000000 : ℚ), 4⟩,
    ⟨(44663478407/250000000000 : ℚ), (-385012161/2000000000 : ℚ), (12486496889/500000000000 : ℚ), 4⟩,
    ⟨(91602033001/500000000000 : ℚ), (-5058332831/10000000000 : ℚ), (40812712973/500000000000 : ℚ), 3⟩,
    ⟨(23436276977/125000000000 : ℚ), (-1456398891/2000000000 : ℚ), (61410252391/500000000000 : ℚ), 3⟩,
    ⟨(95673824369/500000000000 : ℚ), (-4442776231/5000000000 : ℚ), (76592485513/500000000000 : ℚ), 3⟩,
    ⟨(194628125783/1000000000000 : ℚ), (-5018853423/5000000000 : ℚ), (3508312217/20000000000 : ℚ), 3⟩,
    ⟨(197205580059/1000000000000 : ℚ), (-10838236807/10000000000 : ℚ), (191097588461/1000000000000 : ℚ), 3⟩,
    ⟨(99490480721/500000000000 : ℚ), (-2836399063/2500000000 : ℚ), (6285860947/31250000000 : ℚ), 3⟩,
    ⟨(199886043023/1000000000000 : ℚ), (-11592100177/10000000000 : ℚ), (20606360581/100000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-2324518707/2000000000 : ℚ), (6458540597/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (406529365823/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control593.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control593.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate593
