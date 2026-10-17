import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control274
namespace DiagonalRamsey.JointInheritedCertificate274
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(290608372033/1000000000000 : ℚ), (1675518508967/1250000000 : ℚ), (-78074610085803/200000000000 : ℚ), 11⟩,
    ⟨(145735835593/500000000000 : ℚ), (1462702451511/10000000000 : ℚ), (-8630987365743/200000000000 : ℚ), 8⟩,
    ⟨(5863799109/20000000000 : ℚ), (511573152369/10000000000 : ℚ), (-15377382146673/1000000000000 : ℚ), 7⟩,
    ⟨(295746676809/1000000000000 : ℚ), (125713516343/5000000000 : ℚ), (-3862122993543/500000000000 : ℚ), 6⟩,
    ⟨(74779303159/250000000000 : ℚ), (29086890521/2000000000 : ℚ), (-4574650562029/1000000000000 : ℚ), 5⟩,
    ⟨(303269102831/1000000000000 : ℚ), (4622342763/500000000 : ℚ), (-2980159127853/1000000000000 : ℚ), 5⟩,
    ⟨(308162362421/1000000000000 : ℚ), (15604240243/2500000000 : ℚ), (-1031454169693/500000000000 : ℚ), 4⟩,
    ⟨(313749866641/1000000000000 : ℚ), (2743004201/625000000 : ℚ), (-1487228666661/1000000000000 : ℚ), 4⟩,
    ⟨(319977804771/1000000000000 : ℚ), (3173020337/1000000000 : ℚ), (-1102300280779/1000000000000 : ℚ), 4⟩,
    ⟨(163393099181/500000000000 : ℚ), (23371617129/10000000000 : ℚ), (-832204406033/1000000000000 : ℚ), 3⟩,
    ⟨(334109478863/1000000000000 : ℚ), (17410111117/10000000000 : ℚ), (-158837086943/250000000000 : ℚ), 3⟩,
    ⟨(170938559539/500000000000 : ℚ), (6514954919/5000000000 : ℚ), (-97479759233/200000000000 : ℚ), 3⟩,
    ⟨(175007156193/500000000000 : ℚ), (4865637313/5000000000 : ℚ), (-186676924333/500000000000 : ℚ), 3⟩,
    ⟨(358442693167/1000000000000 : ℚ), (3597478413/5000000000 : ℚ), (-141780302669/500000000000 : ℚ), 3⟩,
    ⟨(91770272877/250000000000 : ℚ), (260490793/500000000 : ℚ), (-211583853753/1000000000000 : ℚ), 3⟩,
    ⟨(375846314909/1000000000000 : ℚ), (726418939/2000000000 : ℚ), (-76501993653/500000000000 : ℚ), 3⟩,
    ⟨(192326974739/500000000000 : ℚ), (295184749/1250000000 : ℚ), (-2617709399/25000000000 : ℚ), 2⟩,
    ⟨(393419172879/1000000000000 : ℚ), (331619979/2500000000 : ℚ), (-64457538903/1000000000000 : ℚ), 2⟩,
    ⟨(402057571219/1000000000000 : ℚ), (59404223/1250000000 : ℚ), (-30610722123/1000000000000 : ℚ), 2⟩,
    ⟨(410485952001/1000000000000 : ℚ), (-115239181/5000000000 : ℚ), (-1947271549/1000000000000 : ℚ), 2⟩,
    ⟨(418623145309/1000000000000 : ℚ), (-409596023/5000000000 : ℚ), (5613153491/250000000000 : ℚ), 2⟩,
    ⟨(106597696381/250000000000 : ℚ), (-131245273/1000000000 : ℚ), (21644650011/500000000000 : ℚ), 2⟩,
    ⟨(54214258253/125000000000 : ℚ), (-863339303/5000000000 : ℚ), (12220087861/200000000000 : ℚ), 2⟩,
    ⟨(88104491923/200000000000 : ℚ), (-2074471299/10000000000 : ℚ), (7630121447/100000000000 : ℚ), 2⟩,
    ⟨(89350079549/200000000000 : ℚ), (-1182775909/5000000000 : ℚ), (89213358969/1000000000000 : ℚ), 2⟩,
    ⟨(90467580393/200000000000 : ℚ), (-1303718703/5000000000 : ℚ), (10008638817/100000000000 : ℚ), 2⟩,
    ⟨(91446232311/200000000000 : ℚ), (-112237441/400000000 : ℚ), (13639164727/125000000000 : ℚ), 2⟩,
    ⟨(1845532207/4000000000 : ℚ), (-741377541/2500000000 : ℚ), (116442403007/1000000000000 : ℚ), 2⟩,
    ⟨(232376793789/500000000000 : ℚ), (-3089545139/10000000000 : ℚ), (15273242037/125000000000 : ℚ), 2⟩,
    ⟨(58413788617/125000000000 : ℚ), (-3180545963/10000000000 : ℚ), (126426810333/1000000000000 : ℚ), 2⟩,
    ⟨(1172571483/2500000000 : ℚ), (-1620139663/5000000000 : ℚ), (64611663933/500000000000 : ℚ), 2⟩,
    ⟨(234945946177/500000000000 : ℚ), (-3269871827/10000000000 : ℚ), (1044900609/8000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1636779091/5000000000 : ℚ), (32696453729/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (28726964961/100000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control274.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control274.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate274

-- Control275
namespace DiagonalRamsey.JointInheritedCertificate275
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(148901166287/500000000000 : ℚ), (6762380279919/5000000000 : ℚ), (-25226820441801/62500000000 : ℚ), 11⟩,
    ⟨(37334891929/125000000000 : ℚ), (738016076519/5000000000 : ℚ), (-22310389285341/500000000000 : ℚ), 8⟩,
    ⟨(300424297057/1000000000000 : ℚ), (516320877323/10000000000 : ℚ), (-3180002875259/200000000000 : ℚ), 7⟩,
    ⟨(75755252647/250000000000 : ℚ), (253811137929/10000000000 : ℚ), (-1996756475253/250000000000 : ℚ), 6⟩,
    ⟨(61288853651/200000000000 : ℚ), (2294480577/156250000 : ℚ), (-4730508243081/1000000000000 : ℚ), 5⟩,
    ⟨(62132220443/200000000000 : ℚ), (3734726077/400000000 : ℚ), (-308190662621/100000000000 : ℚ), 5⟩,
    ⟨(315630902051/1000000000000 : ℚ), (12611355399/2000000000 : ℚ), (-533387154811/250000000000 : ℚ), 4⟩,
    ⟨(80326451469/250000000000 : ℚ), (44352186699/10000000000 : ℚ), (-153836644939/100000000000 : ℚ), 4⟩,
    ⟨(327631161261/1000000000000 : ℚ), (6415555973/2000000000 : ℚ), (-570209398691/500000000000 : ℚ), 4⟩,
    ⟨(334546051579/1000000000000 : ℚ), (5909578743/2500000000 : ℚ), (-430604346247/500000000000 : ℚ), 3⟩,
    ⟨(170991941327/500000000000 : ℚ), (880935537/500000000 : ℚ), (-20554086247/31250000000 : ℚ), 3⟩,
    ⟨(349873024107/1000000000000 : ℚ), (6597820241/5000000000 : ℚ), (-504824999007/1000000000000 : ℚ), 3⟩,
    ⟨(179068749597/500000000000 : ℚ), (9864698029/10000000000 : ℚ), (-386979600129/1000000000000 : ℚ), 3⟩,
    ⟨(366697716501/1000000000000 : ℚ), (7303620841/10000000000 : ℚ), (-14710665621/50000000000 : ℚ), 3⟩,
    ⟨(375471236457/1000000000000 : ℚ), (1324812461/2500000000 : ℚ), (-54967940161/250000000000 : ℚ), 3⟩,
    ⟨(384373565269/1000000000000 : ℚ), (3706433653/10000000000 : ℚ), (-31876909713/200000000000 : ℚ), 3⟩,
    ⟨(196659484321/500000000000 : ℚ), (605966971/2500000000 : ℚ), (-4381302979/40000000000 : ℚ), 2⟩,
    ⟨(402221297453/1000000000000 : ℚ), (689674473/5000000000 : ℚ), (-67999479279/1000000000000 : ℚ), 2⟩,
    ⟨(410994817409/1000000000000 : ℚ), (260239457/5000000000 : ℚ), (-33087916173/1000000000000 : ℚ), 2⟩,
    ⟨(419555034717/1000000000000 : ℚ), (-19136011/1000000000 : ℚ), (-3534868831/1000000000000 : ℚ), 2⟩,
    ⟨(106954877451/250000000000 : ℚ), (-39250457/500000000 : ℚ), (10805815707/500000000000 : ℚ), 2⟩,
    ⟨(435708651257/1000000000000 : ℚ), (-1282249841/10000000000 : ℚ), (21538336793/500000000000 : ℚ), 2⟩,
    ⟨(110786620583/250000000000 : ℚ), (-339936967/2000000000 : ℚ), (61417100157/1000000000000 : ℚ), 2⟩,
    ⟨(450061372649/1000000000000 : ℚ), (-410012163/2000000000 : ℚ), (77063100509/1000000000000 : ℚ), 2⟩,
    ⟨(91277345607/200000000000 : ℚ), (-234321343/1000000000 : ℚ), (22587050311/250000000000 : ℚ), 2⟩,
    ⟨(462061631859/1000000000000 : ℚ), (-2586750649/10000000000 : ℚ), (101531202153/1000000000000 : ℚ), 2⟩,
    ⟨(29189464481/62500000000 : ℚ), (-696638017/2500000000 : ℚ), (110812414479/1000000000000 : ℚ), 2⟩,
    ⟨(58906033207/125000000000 : ℚ), (-2947136309/10000000000 : ℚ), (59172892803/500000000000 : ℚ), 2⟩,
    ⟨(474671523323/1000000000000 : ℚ), (-1535966003/5000000000 : ℚ), (62123992261/500000000000 : ℚ), 2⟩,
    ⟨(238634118427/500000000000 : ℚ), (-395434587/1250000000 : ℚ), (6430258977/50000000000 : ℚ), 2⟩,
    ⟨(479013398479/1000000000000 : ℚ), (-3223560261/10000000000 : ℚ), (410868761/3125000000 : ℚ), 2⟩,
    ⟨(59986275167/125000000000 : ℚ), (-3253324217/10000000000 : ℚ), (5316201589/40000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1628515917/5000000000 : ℚ), (26616597/200000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (70546115059/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control275.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control275.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate275

-- Control276
namespace DiagonalRamsey.JointInheritedCertificate276
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(156194497891/500000000000 : ℚ), (2755715406613/2000000000 : ℚ), (-431329541119523/1000000000000 : ℚ), 11⟩,
    ⟨(313291849627/1000000000000 : ℚ), (2350132449/15625000 : ℚ), (-9536794817997/200000000000 : ℚ), 8⟩,
    ⟨(157544431171/500000000000 : ℚ), (263156845853/5000000000 : ℚ), (-4248063194313/250000000000 : ℚ), 7⟩,
    ⟨(317762727711/1000000000000 : ℚ), (51765987403/2000000000 : ℚ), (-1067033926691/125000000000 : ℚ), 6⟩,
    ⟨(321287694949/1000000000000 : ℚ), (14982044443/1000000000 : ℚ), (-202253154563/40000000000 : ℚ), 5⟩,
    ⟨(40703727087/125000000000 : ℚ), (95308486661/10000000000 : ℚ), (-3294660724231/1000000000000 : ℚ), 5⟩,
    ⟨(330747275943/1000000000000 : ℚ), (64404672059/10000000000 : ℚ), (-285163076397/125000000000 : ℚ), 4⟩,
    ⟨(336590788763/1000000000000 : ℚ), (45330242699/10000000000 : ℚ), (-32907492731/20000000000 : ℚ), 4⟩,
    ⟨(85776019733/250000000000 : ℚ), (2050654451/625000000 : ℚ), (-610113723369/500000000000 : ℚ), 4⟩,
    ⟨(5472256561/15625000000 : ℚ), (6050172033/2500000000 : ℚ), (-36879143047/40000000000 : ℚ), 3⟩,
    ⟨(71576647781/200000000000 : ℚ), (9029350853/5000000000 : ℚ), (-704670640751/1000000000000 : ℚ), 3⟩,
    ⟨(9150169433/25000000000 : ℚ), (3386324177/2500000000 : ℚ), (-270708061347/500000000000 : ℚ), 3⟩,
    ⟨(187258400517/500000000000 : ℚ), (10146246597/10000000000 : ℚ), (-20781882311/50000000000 : ℚ), 3⟩,
    ⟨(191665676933/500000000000 : ℚ), (3766474043/5000000000 : ℚ), (-316667770951/1000000000000 : ℚ), 3⟩,
    ⟨(196182773427/500000000000 : ℚ), (219519831/400000000 : ℚ), (-118697041831/500000000000 : ℚ), 3⟩,
    ⟨(401532375781/1000000000000 : ℚ), (1931652587/5000000000 : ℚ), (-86465508603/500000000000 : ℚ), 3⟩,
    ⟨(410743559073/1000000000000 : ℚ), (511098291/2000000000 : ℚ), (-119836895601/1000000000000 : ℚ), 2⟩,
    ⟨(419910387999/1000000000000 : ℚ), (1490841281/10000000000 : ℚ), (-9454327211/125000000000 : ℚ), 2⟩,
    ⟨(428944580987/1000000000000 : ℚ), (307919629/5000000000 : ℚ), (-38508474349/1000000000000 : ℚ), 2⟩,
    ⟨(437759133819/1000000000000 : ℚ), (-108973851/10000000000 : ℚ), (-7106816869/1000000000000 : ℚ), 2⟩,
    ⟨(446269157533/1000000000000 : ℚ), (-178270453/2500000000 : ℚ), (3917931803/200000000000 : ℚ), 2⟩,
    ⟨(113598173987/250000000000 : ℚ), (-60938169/500000000 : ℚ), (42357826747/1000000000000 : ℚ), 2⟩,
    ⟨(462051514949/1000000000000 : ℚ), (-1643009441/10000000000 : ℚ), (15448688147/250000000000 : ℚ), 2⟩,
    ⟨(469171855921/1000000000000 : ℚ), (-99943611/500000000 : ℚ), (78362109047/1000000000000 : ℚ), 2⟩,
    ⟨(47568514609/100000000000 : ℚ), (-2296428929/10000000000 : ℚ), (18483637497/200000000000 : ℚ), 2⟩,
    ⟨(48152865891/100000000000 : ℚ), (-158967427/625000000 : ℚ), (52120653037/500000000000 : ℚ), 2⟩,
    ⟨(243323059079/500000000000 : ℚ), (-171628291/625000000 : ℚ), (57023564987/500000000000 : ℚ), 2⟩,
    ⟨(15343382497/31250000000 : ℚ), (-363598441/1250000000 : ℚ), (61000799991/500000000000 : ℚ), 2⟩,
    ⟨(247256603571/500000000000 : ℚ), (-3035203597/10000000000 : ℚ), (128230616643/1000000000000 : ℚ), 2⟩,
    ⟨(497187072511/1000000000000 : ℚ), (-3127907139/10000000000 : ℚ), (132827263581/1000000000000 : ℚ), 2⟩,
    ⟨(249492042613/500000000000 : ℚ), (-3188737093/10000000000 : ℚ), (135857098489/1000000000000 : ℚ), 2⟩,
    ⟨(499886939071/1000000000000 : ℚ), (-128754661/400000000 : ℚ), (137361867169/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-805654867/2500000000 : ℚ), (34387373279/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (16994822137/62500000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control276.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control276.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate276

-- Control277
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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

-- Control278
namespace DiagonalRamsey.JointInheritedCertificate278
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120876082787/500000000000 : ℚ), (2527674315437/2000000000 : ℚ), (-306228628961981/1000000000000 : ℚ), 11⟩,
    ⟨(242513712939/1000000000000 : ℚ), (1378076702167/10000000000 : ℚ), (-1354030698129/40000000000 : ℚ), 8⟩,
    ⟨(244029473551/1000000000000 : ℚ), (120358794063/2500000000 : ℚ), (-12060387590371/1000000000000 : ℚ), 7⟩,
    ⟨(123142424903/500000000000 : ℚ), (236295616819/10000000000 : ℚ), (-1211344317401/200000000000 : ℚ), 6⟩,
    ⟨(249258121199/1000000000000 : ℚ), (136472669083/10000000000 : ℚ), (-717171249623/200000000000 : ℚ), 5⟩,
    ⟨(252920653501/1000000000000 : ℚ), (86602002479/10000000000 : ℚ), (-1167434437261/500000000000 : ℚ), 5⟩,
    ⟨(64309293631/250000000000 : ℚ), (58358654133/10000000000 : ℚ), (-403778406067/250000000000 : ℚ), 4⟩,
    ⟨(26216611381/100000000000 : ℚ), (40944613613/10000000000 : ℚ), (-581636441411/500000000000 : ℚ), 4⟩,
    ⟨(267660002979/1000000000000 : ℚ), (29525989481/10000000000 : ℚ), (-861036073001/1000000000000 : ℚ), 4⟩,
    ⟨(273665932877/1000000000000 : ℚ), (21680181013/10000000000 : ℚ), (-324424832431/500000000000 : ℚ), 3⟩,
    ⟨(280126063113/1000000000000 : ℚ), (16086807169/10000000000 : ℚ), (-123521966947/250000000000 : ℚ), 3⟩,
    ⟨(8968068097/31250000000 : ℚ), (598902469/500000000 : ℚ), (-18883227517/50000000000 : ℚ), 3⟩,
    ⟨(147078145613/500000000000 : ℚ), (4441907719/5000000000 : ℚ), (-143907042543/500000000000 : ℚ), 3⟩,
    ⟨(4712363599/15625000000 : ℚ), (3252001159/5000000000 : ℚ), (-10848365733/50000000000 : ℚ), 3⟩,
    ⟨(3865143919/12500000000 : ℚ), (4640293433/10000000000 : ℚ), (-80039804941/500000000000 : ℚ), 3⟩,
    ⟨(316943633671/1000000000000 : ℚ), (3157791113/10000000000 : ℚ), (-11368786089/100000000000 : ℚ), 3⟩,
    ⟨(81178291561/250000000000 : ℚ), (490616087/2500000000 : ℚ), (-75354552131/1000000000000 : ℚ), 2⟩,
    ⟨(66489057279/200000000000 : ℚ), (987387521/10000000000 : ℚ), (-21663699311/500000000000 : ℚ), 2⟩,
    ⟨(340065529579/1000000000000 : ℚ), (46017129/2500000000 : ℚ), (-16324018817/1000000000000 : ℚ), 2⟩,
    ⟨(347500508689/1000000000000 : ℚ), (-96634209/2000000000 : ℚ), (82603161/12500000000 : ℚ), 2⟩,
    ⟨(354678620811/1000000000000 : ℚ), (-1040927901/10000000000 : ℚ), (1636623793/62500000000 : ℚ), 2⟩,
    ⟨(361530736801/1000000000000 : ℚ), (-1509249593/10000000000 : ℚ), (42953573017/1000000000000 : ℚ), 2⟩,
    ⟨(183995433519/500000000000 : ℚ), (-237923231/1250000000 : ℚ), (3582991283/62500000000 : ℚ), 2⟩,
    ⟨(46749599617/125000000000 : ℚ), (-2235020281/10000000000 : ℚ), (69629748237/1000000000000 : ℚ), 2⟩,
    ⟨(75898137221/200000000000 : ℚ), (-251314943/1000000000 : ℚ), (80107063661/1000000000000 : ℚ), 2⟩,
    ⟨(384419625391/1000000000000 : ℚ), (-548943603/2000000000 : ℚ), (88951290529/1000000000000 : ℚ), 2⟩,
    ⟨(388736146413/1000000000000 : ℚ), (-2935082657/10000000000 : ℚ), (48154985681/500000000000 : ℚ), 2⟩,
    ⟨(78479735743/200000000000 : ℚ), (-1544176359/5000000000 : ℚ), (102295979681/1000000000000 : ℚ), 2⟩,
    ⟨(395371950109/1000000000000 : ℚ), (-3207641371/10000000000 : ℚ), (53497237363/500000000000 : ℚ), 2⟩,
    ⟨(99406831591/250000000000 : ℚ), (-2059531/6250000 : ℚ), (55234046259/500000000000 : ℚ), 2⟩,
    ⟨(3118305367/7812500000 : ℚ), (-1676399357/5000000000 : ℚ), (56380375447/500000000000 : ℚ), 2⟩,
    ⟨(19995231717/50000000000 : ℚ), (-10566631/31250000 : ℚ), (113900319391/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-423109459/1250000000 : ℚ), (22808490501/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (322111839941/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control278.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control278.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate278

-- Control279
namespace DiagonalRamsey.JointInheritedCertificate279
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(134150409013/500000000000 : ℚ), (858125072021/625000000 : ℚ), (-369149618128879/1000000000000 : ℚ), 12⟩,
    ⟨(269078974557/1000000000000 : ℚ), (374634383847/2500000000 : ℚ), (-1275103000869/31250000000 : ℚ), 8⟩,
    ⟨(135313896773/500000000000 : ℚ), (52420586109/1000000000 : ℚ), (-14535449600553/1000000000000 : ℚ), 7⟩,
    ⟨(13646617951/50000000000 : ℚ), (128833030789/5000000000 : ℚ), (-912276145509/125000000000 : ℚ), 6⟩,
    ⟨(137985238377/500000000000 : ℚ), (149041008877/10000000000 : ℚ), (-2159857529653/500000000000 : ℚ), 5⟩,
    ⟨(69928222003/250000000000 : ℚ), (11839931093/1250000000 : ℚ), (-1405891527819/500000000000 : ℚ), 5⟩,
    ⟨(284123551329/1000000000000 : ℚ), (63920874741/10000000000 : ℚ), (-1944263737261/1000000000000 : ℚ), 4⟩,
    ⟨(144579994803/500000000000 : ℚ), (89816467/20000000 : ℚ), (-1399732587103/1000000000000 : ℚ), 4⟩,
    ⟨(294773699189/1000000000000 : ℚ), (16212801967/5000000000 : ℚ), (-258892009379/250000000000 : ℚ), 4⟩,
    ⟨(150455308493/500000000000 : ℚ), (11918923963/5000000000 : ℚ), (-3119914759/4000000000 : ℚ), 3⟩,
    ⟨(307511641123/1000000000000 : ℚ), (4427014091/2500000000 : ℚ), (-296816827329/500000000000 : ℚ), 3⟩,
    ⟨(314513200131/1000000000000 : ℚ), (6600080521/5000000000 : ℚ), (-453523464643/1000000000000 : ℚ), 3⟩,
    ⟨(321847865167/1000000000000 : ℚ), (9801927771/10000000000 : ℚ), (-345463007403/1000000000000 : ℚ), 3⟩,
    ⟨(329444999399/1000000000000 : ℚ), (7186083189/10000000000 : ℚ), (-52065116989/200000000000 : ℚ), 3⟩,
    ⟨(33723143827/100000000000 : ℚ), (2568076259/5000000000 : ℚ), (-2400343171/12500000000 : ℚ), 3⟩,
    ⟨(172566097059/500000000000 : ℚ), (876182683/2500000000 : ℚ), (-27278217749/200000000000 : ℚ), 3⟩,
    ⟨(176535589173/500000000000 : ℚ), (2188948459/10000000000 : ℚ), (-90475076897/1000000000000 : ℚ), 3⟩,
    ⟨(180485967097/500000000000 : ℚ), (223099389/2000000000 : ℚ), (-52163867659/1000000000000 : ℚ), 2⟩,
    ⟨(73751674613/200000000000 : ℚ), (115593947/5000000000 : ℚ), (-2488532099/125000000000 : ℚ), 2⟩,
    ⟨(376355507297/1000000000000 : ℚ), (-503166823/10000000000 : ℚ), (1860887429/250000000000 : ℚ), 2⟩,
    ⟨(383690172333/1000000000000 : ℚ), (-223364357/2000000000 : ℚ), (7689682221/250000000000 : ℚ), 2⟩,
    ⟨(390691731341/1000000000000 : ℚ), (-40796479/250000000 : ℚ), (1584277197/31250000000 : ℚ), 2⟩,
    ⟨(198646377739/500000000000 : ℚ), (-2065099623/10000000000 : ℚ), (67763660063/1000000000000 : ℚ), 2⟩,
    ⟨(16137186931/40000000000 : ℚ), (-2429447389/10000000000 : ℚ), (10293623367/125000000000 : ℚ), 2⟩,
    ⟨(204521691429/500000000000 : ℚ), (-1367425533/5000000000 : ℚ), (47377220539/500000000000 : ℚ), 2⟩,
    ⟨(82815964227/200000000000 : ℚ), (-1494499397/5000000000 : ℚ), (52606723129/500000000000 : ℚ), 2⟩,
    ⟨(104622621113/250000000000 : ℚ), (-1598913169/5000000000 : ℚ), (113906180399/1000000000000 : ℚ), 2⟩,
    ⟨(42223289571/100000000000 : ℚ), (-841472759/2500000000 : ℚ), (120970727009/1000000000000 : ℚ), 2⟩,
    ⟨(106317753361/250000000000 : ℚ), (-3496647689/10000000000 : ℚ), (25302288341/200000000000 : ℚ), 2⟩,
    ⟨(213787789459/500000000000 : ℚ), (-71853021/200000000 : ℚ), (13060519747/100000000000 : ℚ), 2⟩,
    ⟨(429124397907/1000000000000 : ℚ), (-1827850941/5000000000 : ℚ), (66652982429/500000000000 : ℚ), 2⟩,
    ⟨(214951277219/500000000000 : ℚ), (-460868503/1250000000 : ℚ), (33662006729/250000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3690840849/10000000000 : ℚ), (67407699717/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (148454011681/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control279.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control279.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate279

-- Control280
namespace DiagonalRamsey.JointInheritedCertificate280
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137685072887/500000000000 : ℚ), (6920610431907/5000000000 : ℚ), (-19096964465573/50000000000 : ℚ), 12⟩,
    ⟨(69040601447/250000000000 : ℚ), (377707170393/2500000000 : ℚ), (-1688693180391/40000000000 : ℚ), 8⟩,
    ⟨(277739295921/1000000000000 : ℚ), (528583325833/10000000000 : ℚ), (-7519719504669/500000000000 : ℚ), 7⟩,
    ⟨(8752675933/31250000000 : ℚ), (259863986421/10000000000 : ℚ), (-7551481019579/1000000000000 : ℚ), 6⟩,
    ⟨(283178811117/1000000000000 : ℚ), (150342839257/10000000000 : ℚ), (-4469820850789/1000000000000 : ℚ), 5⟩,
    ⟨(286989050677/1000000000000 : ℚ), (95568545859/10000000000 : ℚ), (-90927400867/31250000000 : ℚ), 5⟩,
    ⟨(145739826923/500000000000 : ℚ), (32255228367/5000000000 : ℚ), (-1006069339891/500000000000 : ℚ), 4⟩,
    ⟨(14830368683/50000000000 : ℚ), (88546589/19531250 : ℚ), (-1448784476813/1000000000000 : ℚ), 4⟩,
    ⟨(151161413687/500000000000 : ℚ), (8186453809/2500000000 : ℚ), (-268012819713/250000000000 : ℚ), 4⟩,
    ⟨(154285486023/500000000000 : ℚ), (24083542817/10000000000 : ℚ), (-807660184303/1000000000000 : ℚ), 3⟩,
    ⟨(157645817313/500000000000 : ℚ), (17900245773/10000000000 : ℚ), (-122983467853/200000000000 : ℚ), 3⟩,
    ⟨(16121004573/50000000000 : ℚ), (13352891849/10000000000 : ℚ), (-94003140733/200000000000 : ℚ), 3⟩,
    ⟨(329887691611/1000000000000 : ℚ), (1240617733/1250000000 : ℚ), (-179139122773/500000000000 : ℚ), 3⟩,
    ⟨(42202814751/125000000000 : ℚ), (7286342273/10000000000 : ℚ), (-13513076469/50000000000 : ℚ), 3⟩,
    ⟨(86387520011/250000000000 : ℚ), (1304688991/2500000000 : ℚ), (-9983521619/50000000000 : ℚ), 3⟩,
    ⟨(88398507741/250000000000 : ℚ), (3573491133/10000000000 : ℚ), (-28436406151/200000000000 : ℚ), 3⟩,
    ⟨(361676903123/1000000000000 : ℚ), (1123382701/5000000000 : ℚ), (-94752282109/1000000000000 : ℚ), 3⟩,
    ⟨(184860427021/500000000000 : ℚ), (582303621/5000000000 : ℚ), (-55191570877/1000000000000 : ℚ), 2⟩,
    ⟨(377648416079/1000000000000 : ℚ), (273337663/10000000000 : ℚ), (-10948105319/500000000000 : ℚ), 2⟩,
    ⟨(96345810619/250000000000 : ℚ), (-466600971/10000000000 : ℚ), (6326334811/1000000000000 : ℚ), 2⟩,
    ⟨(392850842627/1000000000000 : ℚ), (-1084745531/10000000000 : ℚ), (15187070117/500000000000 : ℚ), 2⟩,
    ⟨(399979299461/1000000000000 : ℚ), (-320679289/2000000000 : ℚ), (50930503167/1000000000000 : ℚ), 2⟩,
    ⟨(10167499051/25000000000 : ℚ), (-1019772389/5000000000 : ℚ), (6851947451/100000000000 : ℚ), 2⟩,
    ⟨(51618513339/125000000000 : ℚ), (-2406228713/10000000000 : ℚ), (83545270321/1000000000000 : ℚ), 2⟩,
    ⟨(418663560427/1000000000000 : ℚ), (-678375663/2500000000 : ℚ), (96320708829/1000000000000 : ℚ), 2⟩,
    ⟨(423791280241/1000000000000 : ℚ), (-296913839/1000000000 : ℚ), (10708802707/100000000000 : ℚ), 2⟩,
    ⟨(42828188341/100000000000 : ℚ), (-635827533/2000000000 : ℚ), (116034305471/1000000000000 : ℚ), 2⟩,
    ⟨(432092122969/1000000000000 : ℚ), (-837027363/2500000000 : ℚ), (12330299579/100000000000 : ℚ), 2⟩,
    ⟨(43518530423/100000000000 : ℚ), (-869887087/2500000000 : ℚ), (64501283829/500000000000 : ℚ), 2⟩,
    ⟨(218765819083/500000000000 : ℚ), (-894009737/2500000000 : ℚ), (66606482059/500000000000 : ℚ), 2⟩,
    ⟨(219554264149/500000000000 : ℚ), (-145576131/400000000 : ℚ), (5439613379/40000000000 : ℚ), 2⟩,
    ⟨(439900788313/1000000000000 : ℚ), (-3670802827/10000000000 : ℚ), (17171294693/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3674714673/10000000000 : ℚ), (17192807421/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (72945712121/250000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control280.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control280.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate280

-- Control281
namespace DiagonalRamsey.JointInheritedCertificate281
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(56505584929/200000000000 : ℚ), (6980161029503/5000000000 : ℚ), (-395232654594011/1000000000000 : ℚ), 12⟩,
    ⟨(283333862483/1000000000000 : ℚ), (380998178277/2500000000 : ℚ), (-8737435228739/200000000000 : ℚ), 8⟩,
    ⟨(142468988269/500000000000 : ℚ), (533273011227/10000000000 : ℚ), (-7781705963171/500000000000 : ℚ), 7⟩,
    ⟨(57464963663/200000000000 : ℚ), (32777461247/1250000000 : ℚ), (-7814865951247/1000000000000 : ℚ), 6⟩,
    ⟨(290471401221/1000000000000 : ℚ), (75869461437/5000000000 : ℚ), (-1156494742581/250000000000 : ℚ), 5⟩,
    ⟨(58869484389/200000000000 : ℚ), (9647977199/1000000000 : ℚ), (-752892155799/250000000000 : ℚ), 5⟩,
    ⟨(149457776143/500000000000 : ℚ), (65143724487/10000000000 : ℚ), (-2082831415393/1000000000000 : ℚ), 4⟩,
    ⟨(152065899327/500000000000 : ℚ), (45795620869/10000000000 : ℚ), (-749957506887/500000000000 : ℚ), 4⟩,
    ⟨(309945925743/1000000000000 : ℚ), (258519491/78125000 : ℚ), (-1110120552193/1000000000000 : ℚ), 4⟩,
    ⟨(316301940333/1000000000000 : ℚ), (24348353343/10000000000 : ℚ), (-83658368271/100000000000 : ℚ), 3⟩,
    ⟨(323138630527/1000000000000 : ℚ), (9053841909/5000000000 : ℚ), (-637193914407/1000000000000 : ℚ), 3⟩,
    ⟨(330390155261/1000000000000 : ℚ), (13517997707/10000000000 : ℚ), (-243657609299/500000000000 : ℚ), 3⟩,
    ⟨(33798667839/100000000000 : ℚ), (10058146889/10000000000 : ℚ), (-46469907239/125000000000 : ℚ), 3⟩,
    ⟨(345855041241/1000000000000 : ℚ), (1848775407/2500000000 : ℚ), (-280753366449/1000000000000 : ℚ), 3⟩,
    ⟨(17695973359/50000000000 : ℚ), (5308531399/10000000000 : ℚ), (-20778269299/100000000000 : ℚ), 3⟩,
    ⟨(22631393211/62500000000 : ℚ), (456045903/1250000000 : ℚ), (-148373159269/1000000000000 : ℚ), 3⟩,
    ⟨(9258117719/25000000000 : ℚ), (2309849707/10000000000 : ℚ), (-19874803597/200000000000 : ℚ), 3⟩,
    ⟨(94626883239/250000000000 : ℚ), (1218298177/10000000000 : ℚ), (-29259317161/500000000000 : ℚ), 2⟩,
    ⟨(77314391779/200000000000 : ℚ), (79877169/2500000000 : ℚ), (-12073326223/500000000000 : ℚ), 2⟩,
    ⟨(197220160873/500000000000 : ℚ), (-426471709/10000000000 : ℚ), (995370977/200000000000 : ℚ), 2⟩,
    ⟨(3216294759/8000000000 : ℚ), (-1049481807/10000000000 : ℚ), (29782123291/1000000000000 : ℚ), 2⟩,
    ⟨(409288369609/1000000000000 : ℚ), (-786027761/5000000000 : ℚ), (50977140773/1000000000000 : ℚ), 2⟩,
    ⟨(416125059803/1000000000000 : ℚ), (-10056831/50000000 : ℚ), (17276273937/250000000000 : ℚ), 2⟩,
    ⟨(422481074393/1000000000000 : ℚ), (-476119073/2000000000 : ℚ), (84585145221/1000000000000 : ℚ), 2⟩,
    ⟨(214147600741/500000000000 : ℚ), (-336238831/1250000000 : ℚ), (97741826391/1000000000000 : ℚ), 2⟩,
    ⟨(8670228957/20000000000 : ℚ), (-2947173411/10000000000 : ℚ), (108826583351/1000000000000 : ℚ), 2⟩,
    ⟨(438079578191/1000000000000 : ℚ), (-631691213/2000000000 : ℚ), (118033715007/1000000000000 : ℚ), 2⟩,
    ⟨(88391119783/200000000000 : ℚ), (-133136917/400000000 : ℚ), (6275614619/50000000000 : ℚ), 2⟩,
    ⟨(445102181821/1000000000000 : ℚ), (-3460611267/10000000000 : ℚ), (32843774049/250000000000 : ℚ), 2⟩,
    ⟨(223744511799/500000000000 : ℚ), (-711527541/2000000000 : ℚ), (135705289379/1000000000000 : ℚ), 2⟩,
    ⟨(449093137653/1000000000000 : ℚ), (-3621347089/10000000000 : ℚ), (69280654259/500000000000 : ℚ), 2⟩,
    ⟨(449899075491/1000000000000 : ℚ), (-3652915581/10000000000 : ℚ), (69990148977/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1828424189/5000000000 : ℚ), (140157253971/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (286616679599/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control281.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control281.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate281
