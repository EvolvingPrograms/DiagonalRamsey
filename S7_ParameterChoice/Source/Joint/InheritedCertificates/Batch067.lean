import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control577
namespace DiagonalRamsey.JointInheritedCertificate577
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(34450010339/125000000000 : ℚ), (12638693508177/10000000000 : ℚ), (-348959833220773/1000000000000 : ℚ), 12⟩,
    ⟨(69073747189/250000000000 : ℚ), (34532184861/250000000 : ℚ), (-38561656244861/1000000000000 : ℚ), 9⟩,
    ⟨(277678108517/1000000000000 : ℚ), (24202272093/500000000 : ℚ), (-13729668210959/1000000000000 : ℚ), 7⟩,
    ⟨(279736121797/1000000000000 : ℚ), (2383677137/100000000 : ℚ), (-6888031746723/1000000000000 : ℚ), 7⟩,
    ⟨(141224604401/500000000000 : ℚ), (138118527421/10000000000 : ℚ), (-4072352331963/1000000000000 : ℚ), 6⟩,
    ⟨(285791241023/1000000000000 : ℚ), (17581438147/2000000000 : ℚ), (-2646856554101/1000000000000 : ℚ), 5⟩,
    ⟨(289730032861/1000000000000 : ℚ), (29693505863/5000000000 : ℚ), (-456693833721/250000000000 : ℚ), 5⟩,
    ⟨(147113825799/500000000000 : ℚ), (41744992247/10000000000 : ℚ), (-164004707517/125000000000 : ℚ), 5⟩,
    ⟨(149620391353/500000000000 : ℚ), (30136799453/10000000000 : ℚ), (-241954998011/250000000000 : ℚ), 4⟩,
    ⟨(152360573497/500000000000 : ℚ), (11066147649/5000000000 : ℚ), (-29050268059/40000000000 : ℚ), 4⟩,
    ⟨(310615965557/1000000000000 : ℚ), (16405454501/10000000000 : ℚ), (-11003353259/20000000000 : ℚ), 4⟩,
    ⟨(316868468069/1000000000000 : ℚ), (6092046771/5000000000 : ℚ), (-417801305649/1000000000000 : ℚ), 4⟩,
    ⟨(161709219757/500000000000 : ℚ), (4497327161/5000000000 : ℚ), (-6314946989/20000000000 : ℚ), 3⟩,
    ⟨(165101400043/500000000000 : ℚ), (3267112321/5000000000 : ℚ), (-235376765807/1000000000000 : ℚ), 3⟩,
    ⟨(84289053171/250000000000 : ℚ), (115054401/250000000 : ℚ), (-170936571967/1000000000000 : ℚ), 3⟩,
    ⟨(344211712143/1000000000000 : ℚ), (3061687949/10000000000 : ℚ), (-4739013879/40000000000 : ℚ), 3⟩,
    ⟨(351301350147/1000000000000 : ℚ), (908559611/5000000000 : ℚ), (-7520988453/100000000000 : ℚ), 3⟩,
    ⟨(358356849607/1000000000000 : ℚ), (400095659/5000000000 : ℚ), (-7827501473/200000000000 : ℚ), 3⟩,
    ⟨(91327565551/250000000000 : ℚ), (-38725529/10000000000 : ℚ), (-175817443/20000000000 : ℚ), 3⟩,
    ⟨(46511827847/125000000000 : ℚ), (-184066213/2500000000 : ℚ), (846080387/50000000000 : ℚ), 3⟩,
    ⟨(378644594221/1000000000000 : ℚ), (-1319822471/10000000000 : ℚ), (19411140811/500000000000 : ℚ), 3⟩,
    ⟨(384897096733/1000000000000 : ℚ), (-45252771/250000000 : ℚ), (1798031047/31250000000 : ℚ), 3⟩,
    ⟨(12212247353/31250000000 : ℚ), (-2222929021/10000000000 : ℚ), (73545769981/1000000000000 : ℚ), 3⟩,
    ⟨(12383508737/31250000000 : ℚ), (-321301309/1250000000 : ℚ), (87218808199/1000000000000 : ℚ), 3⟩,
    ⟨(401285410693/1000000000000 : ℚ), (-2861916193/10000000000 : ℚ), (9884246153/100000000000 : ℚ), 3⟩,
    ⟨(40578302943/100000000000 : ℚ), (-776170621/2500000000 : ℚ), (10863828799/100000000000 : ℚ), 3⟩,
    ⟨(102430455317/250000000000 : ℚ), (-1652147887/5000000000 : ℚ), (23355438287/200000000000 : ℚ), 3⟩,
    ⟨(25816490843/62500000000 : ℚ), (-3465043289/10000000000 : ℚ), (123390018609/1000000000000 : ℚ), 3⟩,
    ⟨(207888470247/500000000000 : ℚ), (-112192897/312500000 : ℚ), (1285755321/10000000000 : ℚ), 3⟩,
    ⟨(208917476887/500000000000 : ℚ), (-3682083479/10000000000 : ℚ), (132406384699/1000000000000 : ℚ), 2⟩,
    ⟨(83843614707/200000000000 : ℚ), (-3742465367/10000000000 : ℚ), (67466757109/500000000000 : ℚ), 2⟩,
    ⟨(209956489789/500000000000 : ℚ), (-3772394599/10000000000 : ℚ), (68094620019/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3776123627/10000000000 : ℚ), (27269168599/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (94701768887/250000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control577.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control577.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate577

-- Control578
namespace DiagonalRamsey.JointInheritedCertificate578
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127932130767/250000000000 : ℚ), (4503074370523/2500000000 : ℚ), (-461475243788127/500000000000 : ℚ), 12⟩,
    ⟨(256317277677/500000000000 : ℚ), (1975321193459/10000000000 : ℚ), (-102025209396149/1000000000000 : ℚ), 9⟩,
    ⟨(257218947169/500000000000 : ℚ), (347865899623/5000000000 : ℚ), (-3635157985809/100000000000 : ℚ), 8⟩,
    ⟨(258560586441/500000000000 : ℚ), (86184084097/2500000000 : ℚ), (-18258324602771/1000000000000 : ℚ), 7⟩,
    ⟨(104131709909/200000000000 : ℚ), (100585938609/5000000000 : ℚ), (-10813103910233/1000000000000 : ℚ), 6⟩,
    ⟨(525015957457/1000000000000 : ℚ), (32265256833/2500000000 : ℚ), (-3522475237899/500000000000 : ℚ), 5⟩,
    ⟨(265075716199/500000000000 : ℚ), (87972474641/10000000000 : ℚ), (-4878339277231/1000000000000 : ℚ), 5⟩,
    ⟨(67001939617/125000000000 : ℚ), (62472003593/10000000000 : ℚ), (-703929650419/200000000000 : ℚ), 5⟩,
    ⟨(135637934183/250000000000 : ℚ), (45638507091/10000000000 : ℚ), (-1306145419283/500000000000 : ℚ), 4⟩,
    ⟨(17178035763/31250000000 : ℚ), (33996043801/10000000000 : ℚ), (-988382110123/500000000000 : ℚ), 4⟩,
    ⟨(278691462903/500000000000 : ℚ), (25645237631/10000000000 : ℚ), (-757358757783/500000000000 : ℚ), 4⟩,
    ⟨(282767531313/500000000000 : ℚ), (9739044049/5000000000 : ℚ), (-233720132203/200000000000 : ℚ), 4⟩,
    ⟨(287037522671/500000000000 : ℚ), (14813632703/10000000000 : ℚ), (-225730034007/250000000000 : ℚ), 3⟩,
    ⟨(145730157313/250000000000 : ℚ), (11215157661/10000000000 : ℚ), (-694823390769/1000000000000 : ℚ), 3⟩,
    ⟨(295993313273/500000000000 : ℚ), (8392506131/10000000000 : ℚ), (-33066249023/62500000000 : ℚ), 3⟩,
    ⟨(601185726717/1000000000000 : ℚ), (3073531593/5000000000 : ℚ), (-197569934517/500000000000 : ℚ), 3⟩,
    ⟨(610429337399/1000000000000 : ℚ), (867876017/2000000000 : ℚ), (-285658484617/1000000000000 : ℚ), 3⟩,
    ⟨(619628437569/1000000000000 : ℚ), (717348141/2500000000 : ℚ), (-195271692137/1000000000000 : ℚ), 3⟩,
    ⟨(39293402179/62500000000 : ℚ), (831968147/5000000000 : ℚ), (-60023850237/500000000000 : ℚ), 3⟩,
    ⟨(637540018773/1000000000000 : ℚ), (133728493/2000000000 : ℚ), (-57045581381/1000000000000 : ℚ), 3⟩,
    ⟨(646080001489/1000000000000 : ℚ), (-157454837/10000000000 : ℚ), (-806852719/200000000000 : ℚ), 3⟩,
    ⟨(654232138309/1000000000000 : ℚ), (-211396469/2500000000 : ℚ), (20349482499/500000000000 : ℚ), 3⟩,
    ⟨(661917919699/1000000000000 : ℚ), (-141978779/1000000000 : ℚ), (19620381101/250000000000 : ℚ), 3⟩,
    ⟨(83632915923/125000000000 : ℚ), (-949348931/5000000000 : ℚ), (27587408489/250000000000 : ℚ), 2⟩,
    ⟨(33779977359/50000000000 : ℚ), (-2296837777/10000000000 : ℚ), (34278974281/250000000000 : ℚ), 2⟩,
    ⟨(340731815859/500000000000 : ℚ), (-656386431/2500000000 : ℚ), (159418533057/1000000000000 : ℚ), 2⟩,
    ⟨(343299553329/500000000000 : ℚ), (-2893660583/10000000000 : ℚ), (177757682909/1000000000000 : ℚ), 2⟩,
    ⟨(69095651457/100000000000 : ℚ), (-1554014171/5000000000 : ℚ), (192522440527/1000000000000 : ℚ), 2⟩,
    ⟨(347246945617/500000000000 : ℚ), (-818469603/2500000000 : ℚ), (102005542449/500000000000 : ℚ), 2⟩,
    ⟨(697177169777/1000000000000 : ℚ), (-848775561/2500000000 : ℚ), (212446184049/1000000000000 : ℚ), 2⟩,
    ⟨(349490254381/500000000000 : ℚ), (-1737228107/5000000000 : ℚ), (217985691753/1000000000000 : ℚ), 2⟩,
    ⟨(699886541047/1000000000000 : ℚ), (-878425841/2500000000 : ℚ), (110365382937/500000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-87964733/250000000 : ℚ), (27634094383/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (187583611769/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control578.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control578.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate578

-- Control580
namespace DiagonalRamsey.JointInheritedCertificate580
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12568743529/50000000000 : ℚ), (1617757970089/1250000000 : ℚ), (-65182342761589/200000000000 : ℚ), 12⟩,
    ⟨(62998465621/250000000000 : ℚ), (141461707373/1000000000 : ℚ), (-36009350315517/1000000000000 : ℚ), 9⟩,
    ⟨(253225885061/1000000000000 : ℚ), (495770966267/10000000000 : ℚ), (-320425122259/25000000000 : ℚ), 8⟩,
    ⟨(127529536631/500000000000 : ℚ), (48827985433/2000000000 : ℚ), (-1285415680987/200000000000 : ℚ), 7⟩,
    ⟨(804611789/3125000000 : ℚ), (141439535661/10000000000 : ℚ), (-1898628093497/500000000000 : ℚ), 6⟩,
    ⟨(130226354291/500000000000 : ℚ), (5624127407/625000000 : ℚ), (-4816029831/1953125000 : ℚ), 5⟩,
    ⟨(52792242409/200000000000 : ℚ), (12150004533/2000000000 : ℚ), (-1699781897127/1000000000000 : ℚ), 5⟩,
    ⟨(16747968379/62500000000 : ℚ), (8531489899/2000000000 : ℚ), (-1218923459213/1000000000000 : ℚ), 5⟩,
    ⟨(17027060747/62500000000 : ℚ), (15373355457/5000000000 : ℚ), (-89731151327/100000000000 : ℚ), 4⟩,
    ⟨(69328660179/250000000000 : ℚ), (180229193/80000000 : ℚ), (-16789058527/25000000000 : ℚ), 4⟩,
    ⟨(141282743609/500000000000 : ℚ), (1664491849/1000000000 : ℚ), (-101390330463/200000000000 : ℚ), 4⟩,
    ⟨(144067471467/500000000000 : ℚ), (12304441419/10000000000 : ℚ), (-23947817297/62500000000 : ℚ), 4⟩,
    ⟨(293969370963/1000000000000 : ℚ), (9022026263/10000000000 : ℚ), (-7191972259/25000000000 : ℚ), 3⟩,
    ⟨(300012582573/1000000000000 : ℚ), (648729053/1000000000 : ℚ), (-106217529901/500000000000 : ℚ), 3⟩,
    ⟨(76551594583/250000000000 : ℚ), (35114383/78125000 : ℚ), (-9503865587/62500000000 : ℚ), 3⟩,
    ⟨(156245554301/500000000000 : ℚ), (145193143/500000000 : ℚ), (-6429393183/62500000000 : ℚ), 3⟩,
    ⟨(318806247993/1000000000000 : ℚ), (1616939527/10000000000 : ℚ), (-31131329057/500000000000 : ℚ), 3⟩,
    ⟨(325090978263/1000000000000 : ℚ), (563898201/10000000000 : ℚ), (-1773148359/62500000000 : ℚ), 3⟩,
    ⟨(165642387011/500000000000 : ℚ), (-306118069/10000000000 : ℚ), (175007223/1000000000000 : ℚ), 3⟩,
    ⟨(337327985631/1000000000000 : ℚ), (-206128499/2000000000 : ℚ), (3048857401/125000000000 : ℚ), 3⟩,
    ⟨(17158120683/50000000000 : ℚ), (-65509461/400000000 : ℚ), (45042999011/1000000000000 : ℚ), 3⟩,
    ⟨(348731869377/1000000000000 : ℚ), (-537152071/2500000000 : ℚ), (31356825317/500000000000 : ℚ), 3⟩,
    ⟨(353982715879/1000000000000 : ℚ), (-1289713713/5000000000 : ℚ), (311395303/4000000000 : ℚ), 3⟩,
    ⟨(358864384643/1000000000000 : ℚ), (-735651243/2500000000 : ℚ), (45395989861/500000000000 : ℚ), 3⟩,
    ⟨(363329862531/1000000000000 : ℚ), (-324770973/1000000000 : ℚ), (25452082079/250000000000 : ℚ), 3⟩,
    ⟨(7346722891/20000000000 : ℚ), (-140085327/400000000 : ℚ), (27775671089/250000000000 : ℚ), 3⟩,
    ⟨(370844648013/1000000000000 : ℚ), (-1855788513/5000000000 : ℚ), (14854088781/125000000000 : ℚ), 3⟩,
    ⟨(74764316823/200000000000 : ℚ), (-1940206727/5000000000 : ℚ), (3909964269/31250000000 : ℚ), 3⟩,
    ⟨(376238283333/1000000000000 : ℚ), (-2005975939/5000000000 : ℚ), (5202073811/40000000000 : ℚ), 3⟩,
    ⟨(378071471533/1000000000000 : ℚ), (-821727121/2000000000 : ℚ), (16712284951/125000000000 : ℚ), 3⟩,
    ⟨(379303494111/1000000000000 : ℚ), (-834436841/2000000000 : ℚ), (136104774001/1000000000000 : ℚ), 3⟩,
    ⟨(75984497203/200000000000 : ℚ), (-4203692381/10000000000 : ℚ), (17162607983/125000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-2103809287/5000000000 : ℚ), (27490008797/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (97717226509/250000000000 : ℚ)
  μ := (19/50 : ℚ)
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
theorem certOK : JointInheritedControls.control580.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control580.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate580

-- Control581
namespace DiagonalRamsey.JointInheritedCertificate581
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2077539253/7812500000 : ℚ), (6567570325409/5000000000 : ℚ), (-10934728937309/31250000000 : ℚ), 12⟩,
    ⟨(66642560743/250000000000 : ℚ), (1435962208483/10000000000 : ℚ), (-154647874253/4000000000 : ℚ), 9⟩,
    ⟨(267854466341/1000000000000 : ℚ), (6292231333/125000000 : ℚ), (-13761872561269/1000000000000 : ℚ), 8⟩,
    ⟨(134882663359/500000000000 : ℚ), (123981904867/5000000000 : ℚ), (-3450727380717/500000000000 : ℚ), 7⟩,
    ⟨(8508888171/31250000000 : ℚ), (143707670517/10000000000 : ℚ), (-4078027529619/1000000000000 : ℚ), 6⟩,
    ⟨(34423436293/125000000000 : ℚ), (45734013901/5000000000 : ℚ), (-2648589804739/1000000000000 : ℚ), 5⟩,
    ⟨(69761162271/250000000000 : ℚ), (61781249921/10000000000 : ℚ), (-57069397571/31250000000 : ℚ), 5⟩,
    ⟨(56644135451/200000000000 : ℚ), (21703620623/5000000000 : ℚ), (-1310026645151/1000000000000 : ℚ), 5⟩,
    ⟨(287875357423/1000000000000 : ℚ), (15654879259/5000000000 : ℚ), (-482407285977/500000000000 : ℚ), 4⟩,
    ⟨(36620482809/125000000000 : ℚ), (1435128213/625000000 : ℚ), (-18063325981/25000000000 : ℚ), 4⟩,
    ⟨(149218593659/500000000000 : ℚ), (16985157007/10000000000 : ℚ), (-545900252559/1000000000000 : ℚ), 4⟩,
    ⟨(304242620851/1000000000000 : ℚ), (12575915383/10000000000 : ℚ), (-413105307909/1000000000000 : ℚ), 4⟩,
    ⟨(310324253571/1000000000000 : ℚ), (4620833517/5000000000 : ℚ), (-310701502703/1000000000000 : ℚ), 3⟩,
    ⟨(316623516031/1000000000000 : ℚ), (3333603517/5000000000 : ℚ), (-230036545233/1000000000000 : ℚ), 3⟩,
    ⟨(32307974289/100000000000 : ℚ), (4643711569/10000000000 : ℚ), (-41335534337/250000000000 : ℚ), 3⟩,
    ⟨(65926151431/200000000000 : ℚ), (1514366433/5000000000 : ℚ), (-56328277147/500000000000 : ℚ), 3⟩,
    ⟨(21013341811/62500000000 : ℚ), (861334579/5000000000 : ℚ), (-69189570209/1000000000000 : ℚ), 3⟩,
    ⟨(342764483241/1000000000000 : ℚ), (130879153/2000000000 : ℚ), (-16466857261/500000000000 : ℚ), 3⟩,
    ⟨(349220710101/1000000000000 : ℚ), (-113899081/5000000000 : ℚ), (-604601543/250000000000 : ℚ), 3⟩,
    ⟨(355519972561/1000000000000 : ℚ), (-481044927/5000000000 : ℚ), (23450064901/1000000000000 : ℚ), 3⟩,
    ⟨(361601605281/1000000000000 : ℚ), (-394258413/2500000000 : ℚ), (45495357559/1000000000000 : ℚ), 3⟩,
    ⟨(367407038813/1000000000000 : ℚ), (-1047109753/5000000000 : ℚ), (64344025099/1000000000000 : ℚ), 3⟩,
    ⟨(372880363659/1000000000000 : ℚ), (-2530115699/10000000000 : ℚ), (40238179803/500000000000 : ℚ), 3⟩,
    ⟨(377968868709/1000000000000 : ℚ), (-72434211/250000000 : ℚ), (9426250107/100000000000 : ℚ), 3⟩,
    ⟨(95655887219/250000000000 : ℚ), (-3205732511/10000000000 : ℚ), (26497129791/250000000000 : ℚ), 3⟩,
    ⟨(386799577047/1000000000000 : ℚ), (-3462746581/10000000000 : ℚ), (57937770489/500000000000 : ℚ), 3⟩,
    ⟨(97614183947/250000000000 : ℚ), (-3674228511/10000000000 : ℚ), (124093957933/1000000000000 : ℚ), 3⟩,
    ⟨(19677990233/50000000000 : ℚ), (-961160341/2500000000 : ℚ), (130774078069/1000000000000 : ℚ), 3⟩,
    ⟨(198039449707/500000000000 : ℚ), (-994341149/2500000000 : ℚ), (136014146369/1000000000000 : ℚ), 3⟩,
    ⟨(39798975979/100000000000 : ℚ), (-4074893987/10000000000 : ℚ), (69943178013/500000000000 : ℚ), 3⟩,
    ⟨(399273983159/1000000000000 : ℚ), (-1034746617/2500000000 : ℚ), (142441274321/1000000000000 : ℚ), 3⟩,
    ⟨(99979800437/250000000000 : ℚ), (-2085380363/5000000000 : ℚ), (71855480671/500000000000 : ℚ), 3⟩,
    ⟨(2/5 : ℚ), (-4174719907/10000000000 : ℚ), (143869312583/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (379017652147/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control581.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control581.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate581

-- Control582
namespace DiagonalRamsey.JointInheritedCertificate582
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140327926949/500000000000 : ℚ), (13339046953273/10000000000 : ℚ), (-375018069508953/1000000000000 : ℚ), 12⟩,
    ⟨(281326429693/1000000000000 : ℚ), (1458505642587/10000000000 : ℚ), (-10359274314759/250000000000 : ℚ), 9⟩,
    ⟨(282661123269/1000000000000 : ℚ), (5114138909/100000000 : ℚ), (-3687620910451/250000000000 : ℚ), 8⟩,
    ⟨(355808851/1250000000 : ℚ), (252003299217/10000000000 : ℚ), (-1849469109743/250000000000 : ℚ), 7⟩,
    ⟨(71816294107/250000000000 : ℚ), (146104107989/10000000000 : ℚ), (-4371918373541/1000000000000 : ℚ), 6⟩,
    ⟨(14524509823/50000000000 : ℚ), (23258541203/2500000000 : ℚ), (-709994319121/250000000000 : ℚ), 5⟩,
    ⟨(294291082193/1000000000000 : ℚ), (62871269139/10000000000 : ℚ), (-979335888419/500000000000 : ℚ), 5⟩,
    ⟨(37328903627/125000000000 : ℚ), (22099978631/5000000000 : ℚ), (-702759651509/500000000000 : ℚ), 5⟩,
    ⟨(151734419473/500000000000 : ℚ), (15952583403/5000000000 : ℚ), (-1035626575003/1000000000000 : ℚ), 4⟩,
    ⟨(19297332697/62500000000 : ℚ), (936817937/400000000 : ℚ), (-388029523721/500000000000 : ℚ), 4⟩,
    ⟨(157222875321/500000000000 : ℚ), (8672533713/5000000000 : ℚ), (-586859409643/1000000000000 : ℚ), 4⟩,
    ⟨(320479338749/1000000000000 : ℚ), (2572621119/2000000000 : ℚ), (-17786045521/40000000000 : ℚ), 4⟩,
    ⟨(326799980721/1000000000000 : ℚ), (9474018307/10000000000 : ℚ), (-67004381967/200000000000 : ℚ), 3⟩,
    ⟨(333346805321/1000000000000 : ℚ), (3428754573/5000000000 : ℚ), (-24869768379/100000000000 : ℚ), 3⟩,
    ⟨(340056763049/1000000000000 : ℚ), (4801343731/10000000000 : ℚ), (-35899043047/200000000000 : ℚ), 3⟩,
    ⟨(5419769271/15625000000 : ℚ), (158035861/500000000 : ℚ), (-123167337199/1000000000000 : ℚ), 3⟩,
    ⟨(88426661729/250000000000 : ℚ), (91717727/500000000 : ℚ), (-76722328907/1000000000000 : ℚ), 3⟩,
    ⟨(360515117211/1000000000000 : ℚ), (749915221/10000000000 : ℚ), (-38007292821/1000000000000 : ℚ), 3⟩,
    ⟨(367225074939/1000000000000 : ℚ), (-145212891/10000000000 : ℚ), (-136116603/25000000000 : ℚ), 3⟩,
    ⟨(373771899539/1000000000000 : ℚ), (-55617929/625000000 : ℚ), (4427853831/200000000000 : ℚ), 3⟩,
    ⟨(380092541511/1000000000000 : ℚ), (-378295359/2500000000 : ℚ), (45628827389/1000000000000 : ℚ), 3⟩,
    ⟨(193063064809/500000000000 : ℚ), (-1018544897/5000000000 : ℚ), (65697092653/1000000000000 : ℚ), 3⟩,
    ⟨(97953639277/250000000000 : ℚ), (-2478395723/10000000000 : ℚ), (82860374899/1000000000000 : ℚ), 3⟩,
    ⟨(198551520657/500000000000 : ℚ), (-113999761/400000000 : ℚ), (12189610423/125000000000 : ℚ), 3⟩,
    ⟨(100485162811/250000000000 : ℚ), (-3161836181/10000000000 : ℚ), (109974653027/1000000000000 : ℚ), 3⟩,
    ⟨(101570199517/250000000000 : ℚ), (-3421616633/10000000000 : ℚ), (120472017839/1000000000000 : ℚ), 3⟩,
    ⟨(2050408419/5000000000 : ℚ), (-908819061/2500000000 : ℚ), (64596407387/500000000000 : ℚ), 3⟩,
    ⟨(413306703833/1000000000000 : ℚ), (-951843603/2500000000 : ℚ), (136277779949/1000000000000 : ℚ), 3⟩,
    ⟨(20796239973/50000000000 : ℚ), (-788272973/2000000000 : ℚ), (70916563757/500000000000 : ℚ), 3⟩,
    ⟨(417910756991/1000000000000 : ℚ), (-126243721/312500000 : ℚ), (9121061263/62500000000 : ℚ), 3⟩,
    ⟨(52405681321/125000000000 : ℚ), (-128264801/312500000 : ℚ), (74322051373/500000000000 : ℚ), 3⟩,
    ⟨(209958013181/500000000000 : ℚ), (-4136532703/10000000000 : ℚ), (149989237991/1000000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-4140527197/10000000000 : ℚ), (6006279599/40000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (183530979453/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control582.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control582.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate582

-- Control583
namespace DiagonalRamsey.JointInheritedCertificate583
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118679865301/500000000000 : ℚ), (558269547521/400000000 : ℚ), (-165912720668323/500000000000 : ℚ), 12⟩,
    ⟨(118950898711/500000000000 : ℚ), (190795669371/1250000000 : ℚ), (-36654419822349/1000000000000 : ℚ), 9⟩,
    ⟨(238980710661/1000000000000 : ℚ), (133821336471/2500000000 : ℚ), (-13040563732173/1000000000000 : ℚ), 8⟩,
    ⟨(60146519949/250000000000 : ℚ), (263753389183/10000000000 : ℚ), (-25525327133/3906250000 : ℚ), 7⟩,
    ⟨(60675611061/250000000000 : ℚ), (15286357319/1000000000 : ℚ), (-3856836083583/1000000000000 : ℚ), 6⟩,
    ⟨(122654711129/500000000000 : ℚ), (19452964687/2000000000 : ℚ), (-625287719483/250000000000 : ℚ), 5⟩,
    ⟨(15523869201/62500000000 : ℚ), (8205605411/1250000000 : ℚ), (-172115812837/100000000000 : ℚ), 5⟩,
    ⟨(251890309407/1000000000000 : ℚ), (46056659909/10000000000 : ℚ), (-153938526167/125000000000 : ℚ), 5⟩,
    ⟨(255800841/1000000000 : ℚ), (16573211361/5000000000 : ℚ), (-903992539601/1000000000000 : ℚ), 4⟩,
    ⟨(260075841439/1000000000000 : ℚ), (12113753927/5000000000 : ℚ), (-168518951139/250000000000 : ℚ), 4⟩,
    ⟨(66168535033/250000000000 : ℚ), (8916684063/5000000000 : ℚ), (-126600744023/250000000000 : ℚ), 4⟩,
    ⟨(269551452949/1000000000000 : ℚ), (13109609313/10000000000 : ℚ), (-190145421949/500000000000 : ℚ), 4⟩,
    ⟨(137330404351/500000000000 : ℚ), (9531993121/10000000000 : ℚ), (-28298845697/100000000000 : ℚ), 4⟩,
    ⟨(279953001501/1000000000000 : ℚ), (84562569/125000000 : ℚ), (-206291757309/1000000000000 : ℚ), 3⟩,
    ⟨(142688532319/500000000000 : ℚ), (917259073/2000000000 : ℚ), (-144731865689/1000000000000 : ℚ), 3⟩,
    ⟨(145440380709/500000000000 : ℚ), (2844138011/10000000000 : ℚ), (-47276665867/500000000000 : ℚ), 3⟩,
    ⟨(296411088233/1000000000000 : ℚ), (1432412811/10000000000 : ℚ), (-53111872269/1000000000000 : ℚ), 3⟩,
    ⟨(301914785013/1000000000000 : ℚ), (34415023/1250000000 : ℚ), (-9252854851/500000000000 : ℚ), 3⟩,
    ⟨(6146776963/20000000000 : ℚ), (-682260231/10000000000 : ℚ), (10657602381/1000000000000 : ℚ), 3⟩,
    ⟨(312631040949/1000000000000 : ℚ), (-1481026829/10000000000 : ℚ), (885323723/25000000000 : ℚ), 3⟩,
    ⟨(158870198351/500000000000 : ℚ), (-268927369/1250000000 : ℚ), (11307796779/200000000000 : ℚ), 3⟩,
    ⟨(322617709519/1000000000000 : ℚ), (-2716447983/10000000000 : ℚ), (37313671493/500000000000 : ℚ), 3⟩,
    ⟨(81804002053/250000000000 : ℚ), (-3193660751/10000000000 : ℚ), (90130906723/1000000000000 : ℚ), 3⟩,
    ⟨(331491008651/1000000000000 : ℚ), (-3596525081/10000000000 : ℚ), (25849523549/250000000000 : ℚ), 3⟩,
    ⟨(83850385061/250000000000 : ℚ), (-983855681/2500000000 : ℚ), (114697651953/1000000000000 : ℚ), 3⟩,
    ⟨(67781988487/200000000000 : ℚ), (-4218370451/10000000000 : ℚ), (124236849417/1000000000000 : ℚ), 3⟩,
    ⟨(341982427393/1000000000000 : ℚ), (-4451549403/10000000000 : ℚ), (66087503551/500000000000 : ℚ), 3⟩,
    ⟨(344589405407/1000000000000 : ℚ), (-4639696619/10000000000 : ℚ), (17329206409/125000000000 : ℚ), 3⟩,
    ⟨(69341153971/200000000000 : ℚ), (-2393197687/5000000000 : ℚ), (143704166439/1000000000000 : ℚ), 3⟩,
    ⟨(34831113899/100000000000 : ℚ), (-4894289419/10000000000 : ℚ), (147453537779/1000000000000 : ℚ), 3⟩,
    ⟨(349390052229/1000000000000 : ℚ), (-9697731/19531250 : ℚ), (74964290851/500000000000 : ℚ), 3⟩,
    ⟨(43741514881/125000000000 : ℚ), (-1250106287/2500000000 : ℚ), (75579464233/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-5004810187/10000000000 : ℚ), (75656194963/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (194501356263/500000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control583.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control583.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate583

-- Control584
namespace DiagonalRamsey.JointInheritedCertificate584
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(259456523173/1000000000000 : ℚ), (14256497526471/10000000000 : ℚ), (-370494884193263/1000000000000 : ℚ), 12⟩,
    ⟨(260036623163/1000000000000 : ℚ), (389877398407/2500000000 : ℚ), (-40927685403673/1000000000000 : ℚ), 9⟩,
    ⟨(130595618231/500000000000 : ℚ), (547101839781/10000000000 : ℚ), (-14562146550759/1000000000000 : ℚ), 8⟩,
    ⟨(262909243513/1000000000000 : ℚ), (269695667331/10000000000 : ℚ), (-729796454327/100000000000 : ℚ), 7⟩,
    ⟨(26517409897/100000000000 : ℚ), (156390463387/10000000000 : ℚ), (-4308357230499/1000000000000 : ℚ), 6⟩,
    ⟨(53592798207/200000000000 : ℚ), (995711243/100000000 : ℚ), (-2794776241163/1000000000000 : ℚ), 5⟩,
    ⟨(67813012881/250000000000 : ℚ), (4203201863/625000000 : ℚ), (-1923988558389/1000000000000 : ℚ), 5⟩,
    ⟨(275006614617/1000000000000 : ℚ), (4722600617/1000000000 : ℚ), (-688696174589/500000000000 : ℚ), 5⟩,
    ⟨(279191521817/1000000000000 : ℚ), (2126608427/625000000 : ℚ), (-126479787409/125000000000 : ℚ), 4⟩,
    ⟨(283766470183/1000000000000 : ℚ), (24905432573/10000000000 : ℚ), (-755270047441/1000000000000 : ℚ), 4⟩,
    ⟨(144343700229/500000000000 : ℚ), (3673309333/2000000000 : ℚ), (-568211737483/1000000000000 : ℚ), 4⟩,
    ⟨(73476730349/250000000000 : ℚ), (13535927329/10000000000 : ℚ), (-427568872351/1000000000000 : ℚ), 4⟩,
    ⟨(74843691539/250000000000 : ℚ), (61735901/62500000 : ℚ), (-319103391797/1000000000000 : ℚ), 4⟩,
    ⟨(76259569101/250000000000 : ℚ), (352449873/500000000 : ℚ), (-116826904239/500000000000 : ℚ), 3⟩,
    ⟨(310842909441/1000000000000 : ℚ), (192892847/400000000 : ℚ), (-82556189429/500000000000 : ℚ), 3⟩,
    ⟨(79183190869/250000000000 : ℚ), (1521262119/5000000000 : ℚ), (-21856859277/200000000000 : ℚ), 3⟩,
    ⟨(322651115997/1000000000000 : ℚ), (160102463/1000000000 : ℚ), (-12643052379/200000000000 : ℚ), 3⟩,
    ⟨(328540970033/1000000000000 : ℚ), (52529243/1250000000 : ℚ), (-1548742529/62500000000 : ℚ), 3⟩,
    ⟨(334345603069/1000000000000 : ℚ), (-278147313/5000000000 : ℚ), (1515732157/200000000000 : ℚ), 3⟩,
    ⟨(340009113317/1000000000000 : ℚ), (-685130109/5000000000 : ℚ), (35018020413/1000000000000 : ℚ), 3⟩,
    ⟨(345476958077/1000000000000 : ℚ), (-2052868327/10000000000 : ℚ), (29204903871/500000000000 : ℚ), 3⟩,
    ⟨(70139295803/200000000000 : ℚ), (-1313862017/5000000000 : ℚ), (19604206357/250000000000 : ℚ), 3⟩,
    ⟨(355617409291/1000000000000 : ℚ), (-3112838637/10000000000 : ℚ), (95546919187/1000000000000 : ℚ), 3⟩,
    ⟨(45024044707/125000000000 : ℚ), (-3522045829/10000000000 : ℚ), (55095614633/500000000000 : ℚ), 3⟩,
    ⟨(364377264857/1000000000000 : ℚ), (-1933008361/5000000000 : ℚ), (30662957903/250000000000 : ℚ), 3⟩,
    ⟨(368131827949/1000000000000 : ℚ), (-2076498553/5000000000 : ℚ), (13316201821/100000000000 : ℚ), 3⟩,
    ⟨(185709944219/500000000000 : ℚ), (-548668603/1250000000 : ℚ), (14190137149/100000000000 : ℚ), 3⟩,
    ⟨(46776222563/125000000000 : ℚ), (-57249379/125000000 : ℚ), (18625884427/125000000000 : ℚ), 3⟩,
    ⟨(9411865899/25000000000 : ℚ), (-1182123451/2500000000 : ℚ), (38645609651/250000000000 : ℚ), 3⟩,
    ⟨(94548160753/250000000000 : ℚ), (-604713079/1250000000 : ℚ), (39675822237/250000000000 : ℚ), 3⟩,
    ⟨(379347256311/1000000000000 : ℚ), (-1227375103/2500000000 : ℚ), (20177835653/125000000000 : ℚ), 3⟩,
    ⟨(3799273563/10000000000 : ℚ), (-1236275411/2500000000 : ℚ), (40693559829/250000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-989907611/2000000000 : ℚ), (162942806809/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (185098515667/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control584.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control584.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate584

-- Control585
namespace DiagonalRamsey.JointInheritedCertificate585
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(20681389121/100000000000 : ℚ), (14700619017779/10000000000 : ℚ), (-12180273074411/40000000000 : ℚ), 12⟩,
    ⟨(103631168691/500000000000 : ℚ), (1608162810693/10000000000 : ℚ), (-8407145386119/250000000000 : ℚ), 9⟩,
    ⟨(6504840967/31250000000 : ℚ), (564115103323/10000000000 : ℚ), (-11958129665713/1000000000000 : ℚ), 8⟩,
    ⟨(8379320637/40000000000 : ℚ), (277988659301/10000000000 : ℚ), (-299372753673/50000000000 : ℚ), 7⟩,
    ⟨(211233861947/1000000000000 : ℚ), (80545682831/5000000000 : ℚ), (-882528487453/250000000000 : ℚ), 6⟩,
    ⟨(13336911713/62500000000 : ℚ), (6403126081/625000000 : ℚ), (-1142960561537/500000000000 : ℚ), 6⟩,
    ⟨(10796621093/50000000000 : ℚ), (69078400833/10000000000 : ℚ), (-392506413539/250000000000 : ℚ), 5⟩,
    ⟨(4376697721/20000000000 : ℚ), (12097373773/2500000000 : ℚ), (-11205629833/10000000000 : ℚ), 5⟩,
    ⟨(11103501383/50000000000 : ℚ), (8685469769/2500000000 : ℚ), (-819876865817/1000000000000 : ℚ), 4⟩,
    ⟨(56401672627/250000000000 : ℚ), (25304184387/10000000000 : ℚ), (-304372031181/500000000000 : ℚ), 4⟩,
    ⟨(229410814597/1000000000000 : ℚ), (4632644131/2500000000 : ℚ), (-454720164139/1000000000000 : ℚ), 4⟩,
    ⟨(116722882067/500000000000 : ℚ), (13520288489/10000000000 : ℚ), (-338825191013/1000000000000 : ℚ), 4⟩,
    ⟨(59418170087/250000000000 : ℚ), (9720506977/10000000000 : ℚ), (-31169839433/125000000000 : ℚ), 4⟩,
    ⟨(9682034229/40000000000 : ℚ), (105896051/156250000 : ℚ), (-8939656219/50000000000 : ℚ), 3⟩,
    ⟨(246538126043/1000000000000 : ℚ), (111405699/250000000 : ℚ), (-122111020603/1000000000000 : ℚ), 3⟩,
    ⟨(62772819109/250000000000 : ℚ), (3246303/12500000 : ℚ), (-15173513817/200000000000 : ℚ), 3⟩,
    ⟨(255666457577/1000000000000 : ℚ), (1087784651/10000000000 : ℚ), (-18818901817/500000000000 : ℚ), 3⟩,
    ⟨(26021960797/100000000000 : ℚ), (-151561143/10000000000 : ℚ), (-2839150857/500000000000 : ℚ), 3⟩,
    ⟨(264706878289/1000000000000 : ℚ), (-1179186569/10000000000 : ℚ), (21286810543/1000000000000 : ℚ), 3⟩,
    ⟨(134542526833/500000000000 : ℚ), (-1019028841/5000000000 : ℚ), (22102578051/500000000000 : ℚ), 3⟩,
    ⟨(273311969879/1000000000000 : ℚ), (-1380153147/5000000000 : ℚ), (63789122701/1000000000000 : ℚ), 3⟩,
    ⟨(34668364927/125000000000 : ℚ), (-3370217423/10000000000 : ℚ), (80579411573/1000000000000 : ℚ), 3⟩,
    ⟨(56230208701/200000000000 : ℚ), (-1943150997/5000000000 : ℚ), (9498936539/100000000000 : ℚ), 3⟩,
    ⟨(284687706353/1000000000000 : ℚ), (-432276027/1000000000 : ℚ), (53668240579/500000000000 : ℚ), 3⟩,
    ⟨(287922847963/1000000000000 : ℚ), (-938106243/2000000000 : ℚ), (117865203089/1000000000000 : ℚ), 3⟩,
    ⟨(290825312153/1000000000000 : ℚ), (-1249513767/2500000000 : ℚ), (12676366471/100000000000 : ℚ), 3⟩,
    ⟨(146683573303/500000000000 : ℚ), (-5251833557/10000000000 : ℚ), (134176147711/1000000000000 : ℚ), 3⟩,
    ⟨(147761936033/500000000000 : ℚ), (-68210557/125000000 : ℚ), (35053110517/250000000000 : ℚ), 3⟩,
    ⟨(297274718089/1000000000000 : ℚ), (-5616849817/10000000000 : ℚ), (144954905733/1000000000000 : ℚ), 3⟩,
    ⟨(29860282307/100000000000 : ℚ), (-5734622149/10000000000 : ℚ), (74231883371/500000000000 : ℚ), 3⟩,
    ⟨(37436924579/125000000000 : ℚ), (-5812110249/10000000000 : ℚ), (150781031747/1000000000000 : ℚ), 3⟩,
    ⟨(74985960701/250000000000 : ℚ), (-5850553277/10000000000 : ℚ), (151933243521/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2927672357/5000000000 : ℚ), (76038486589/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (201861457639/500000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control585.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control585.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate585
