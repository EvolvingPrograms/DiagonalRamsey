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

-- Control371
namespace DiagonalRamsey.JointInheritedCertificate371
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(286220308211/1000000000000 : ℚ), (313109244267/200000000 : ℚ), (-448878265673061/1000000000000 : ℚ), 12⟩,
    ⟨(286912229499/1000000000000 : ℚ), (13372176719/78125000 : ℚ), (-6200018800349/125000000000 : ℚ), 9⟩,
    ⟨(144144704247/500000000000 : ℚ), (24004516297/400000000 : ℚ), (-17657749899941/1000000000000 : ℚ), 7⟩,
    ⟨(290338582209/1000000000000 : ℚ), (2310037949/78125000 : ℚ), (-8857099418053/1000000000000 : ℚ), 6⟩,
    ⟨(293040015983/1000000000000 : ℚ), (171420334761/10000000000 : ℚ), (-5235214335847/1000000000000 : ℚ), 6⟩,
    ⟨(29636769353/100000000000 : ℚ), (109154571651/10000000000 : ℚ), (-3401587915443/1000000000000 : ℚ), 5⟩,
    ⟨(150144783749/500000000000 : ℚ), (36885177433/5000000000 : ℚ), (-2346737378649/1000000000000 : ℚ), 5⟩,
    ⟨(60953573619/200000000000 : ℚ), (12967658593/2500000000 : ℚ), (-1684667245751/1000000000000 : ℚ), 4⟩,
    ⟨(154879733419/500000000000 : ℚ), (4681576857/1250000000 : ℚ), (-155243350457/125000000000 : ℚ), 4⟩,
    ⟨(4925254561/15625000000 : ℚ), (5500908473/2000000000 : ℚ), (-116409527273/125000000000 : ℚ), 4⟩,
    ⟨(80271447771/250000000000 : ℚ), (4076543193/2000000000 : ℚ), (-704827890029/1000000000000 : ℚ), 3⟩,
    ⟨(81827859473/250000000000 : ℚ), (7564874097/5000000000 : ℚ), (-534620847787/1000000000000 : ℚ), 3⟩,
    ⟨(166916637973/500000000000 : ℚ), (5579176397/5000000000 : ℚ), (-201702062643/500000000000 : ℚ), 3⟩,
    ⟨(340588496381/1000000000000 : ℚ), (8092766419/10000000000 : ℚ), (-60015466369/200000000000 : ℚ), 3⟩,
    ⟨(34751204273/100000000000 : ℚ), (113680681/200000000 : ℚ), (-217239886971/1000000000000 : ℚ), 3⟩,
    ⟨(177268618729/500000000000 : ℚ), (3762324361/10000000000 : ℚ), (-74904414953/500000000000 : ℚ), 3⟩,
    ⟨(3615964241/10000000000 : ℚ), (2208881601/10000000000 : ℚ), (-23551018117/250000000000 : ℚ), 3⟩,
    ⟨(92155404707/250000000000 : ℚ), (938896801/10000000000 : ℚ), (-9569930147/200000000000 : ℚ), 3⟩,
    ⟨(375545165177/1000000000000 : ℚ), (-27324219/2500000000 : ℚ), (-8858267261/1000000000000 : ℚ), 3⟩,
    ⟨(95575096403/250000000000 : ℚ), (-981234477/10000000000 : ℚ), (4834806043/200000000000 : ℚ), 2⟩,
    ⟨(194411111833/500000000000 : ℚ), (-26734089/156250000 : ℚ), (52304912701/1000000000000 : ℚ), 2⟩,
    ⟨(197523935237/500000000000 : ℚ), (-2324304273/10000000000 : ℚ), (19084840451/250000000000 : ℚ), 2⟩,
    ⟨(200458684827/500000000000 : ℚ), (-2840864633/10000000000 : ℚ), (96894894343/1000000000000 : ℚ), 2⟩,
    ⟨(2539838717/6250000000 : ℚ), (-3275770729/10000000000 : ℚ), (22889572971/200000000000 : ℚ), 2⟩,
    ⟨(51420724183/125000000000 : ℚ), (-3640684803/10000000000 : ℚ), (129366889599/1000000000000 : ℚ), 2⟩,
    ⟨(415844094061/1000000000000 : ℚ), (-3944627521/10000000000 : ℚ), (14193733393/100000000000 : ℚ), 2⟩,
    ⟨(104941492007/250000000000 : ℚ), (-4194567387/10000000000 : ℚ), (15237947811/100000000000 : ℚ), 2⟩,
    ⟨(16923745823/40000000000 : ℚ), (-549481991/1250000000 : ℚ), (160862115059/1000000000000 : ℚ), 2⟩,
    ⟨(425795079349/1000000000000 : ℚ), (-2276274919/5000000000 : ℚ), (10469548083/62500000000 : ℚ), 2⟩,
    ⟨(85568850613/200000000000 : ℚ), (-18670593/40000000 : ℚ), (86212671061/500000000000 : ℚ), 2⟩,
    ⟨(21461071603/50000000000 : ℚ), (-948652887/2000000000 : ℚ), (175665728293/1000000000000 : ℚ), 2⟩,
    ⟨(429913353347/1000000000000 : ℚ), (-2390372489/5000000000 : ℚ), (177275768249/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1196353717/2500000000 : ℚ), (44369138329/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (285612727201/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control371.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control371.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate371

-- Control372
namespace DiagonalRamsey.JointInheritedCertificate372
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11747601481/40000000000 : ℚ), (7893272454861/5000000000 : ℚ), (-232221668719283/500000000000 : ℚ), 12⟩,
    ⟨(147197067459/500000000000 : ℚ), (1726132252041/10000000000 : ℚ), (-6415102855633/125000000000 : ℚ), 9⟩,
    ⟨(59159109971/200000000000 : ℚ), (605280027777/10000000000 : ℚ), (-2283859905679/125000000000 : ℚ), 7⟩,
    ⟨(59576157089/200000000000 : ℚ), (74570799511/2500000000 : ℚ), (-2291275129309/250000000000 : ℚ), 6⟩,
    ⟨(30062975973/100000000000 : ℚ), (43240603547/2500000000 : ℚ), (-108353215731/20000000000 : ℚ), 6⟩,
    ⟨(38001999823/125000000000 : ℚ), (55081430567/5000000000 : ℚ), (-5500768997/1562500000 : ℚ), 5⟩,
    ⟨(77001722669/250000000000 : ℚ), (74472534899/10000000000 : ℚ), (-2429109311091/1000000000000 : ℚ), 5⟩,
    ⟨(312564001533/1000000000000 : ℚ), (52381650251/10000000000 : ℚ), (-1744132715133/1000000000000 : ℚ), 4⟩,
    ⟨(39705430461/125000000000 : ℚ), (37836743243/10000000000 : ℚ), (-321529483063/250000000000 : ℚ), 4⟩,
    ⟨(161598149667/500000000000 : ℚ), (6950134917/2500000000 : ℚ), (-482368902687/500000000000 : ℚ), 4⟩,
    ⟨(329169091437/1000000000000 : ℚ), (206153429/100000000 : ℚ), (-730505984953/1000000000000 : ℚ), 3⟩,
    ⟨(335504298743/1000000000000 : ℚ), (3828891051/2500000000 : ℚ), (-554470828739/1000000000000 : ℚ), 3⟩,
    ⟨(21383806859/62500000000 : ℚ), (2261769771/2000000000 : ℚ), (-41878267041/100000000000 : ℚ), 3⟩,
    ⟨(349015010247/1000000000000 : ℚ), (4108080523/5000000000 : ℚ), (-311955604683/1000000000000 : ℚ), 3⟩,
    ⟨(356060398907/1000000000000 : ℚ), (5786353989/10000000000 : ℚ), (-5658293661/25000000000 : ℚ), 3⟩,
    ⟨(18160461239/50000000000 : ℚ), (3848081941/10000000000 : ℚ), (-156651118779/1000000000000 : ℚ), 3⟩,
    ⟨(370392640763/1000000000000 : ℚ), (142594649/625000000 : ℚ), (-99208661797/1000000000000 : ℚ), 3⟩,
    ⟨(94385366659/250000000000 : ℚ), (4004247/40000000 : ℚ), (-51338198257/1000000000000 : ℚ), 3⟩,
    ⟨(76917371059/200000000000 : ℚ), (-55521203/10000000000 : ℚ), (-5543024103/500000000000 : ℚ), 3⟩,
    ⟨(195730477899/500000000000 : ℚ), (-934205567/10000000000 : ℚ), (4600279827/200000000000 : ℚ), 2⟩,
    ⟨(398097566799/1000000000000 : ℚ), (-834695317/5000000000 : ℚ), (6502435993/125000000000 : ℚ), 2⟩,
    ⟨(202216387053/500000000000 : ℚ), (-71471891/312500000 : ℚ), (76802117083/1000000000000 : ℚ), 2⟩,
    ⟨(410405566209/1000000000000 : ℚ), (-28071997/100000000 : ℚ), (48994604811/500000000000 : ℚ), 2⟩,
    ⟨(83191684371/200000000000 : ℚ), (-1622477671/5000000000 : ℚ), (4642984143/40000000000 : ℚ), 2⟩,
    ⟨(421037864009/1000000000000 : ℚ), (-903038911/2500000000 : ℚ), (131440617771/1000000000000 : ℚ), 2⟩,
    ⟨(425594974867/1000000000000 : ℚ), (-783584213/2000000000 : ℚ), (144383371983/1000000000000 : ℚ), 2⟩,
    ⟨(429585866959/1000000000000 : ℚ), (-2084649477/5000000000 : ℚ), (155131567619/1000000000000 : ℚ), 2⟩,
    ⟨(432972105813/1000000000000 : ℚ), (-2185851323/5000000000 : ℚ), (81930272099/500000000000 : ℚ), 2⟩,
    ⟨(435721080097/1000000000000 : ℚ), (-2264618269/5000000000 : ℚ), (21337855141/125000000000 : ℚ), 2⟩,
    ⟨(54725789461/125000000000 : ℚ), (-4644935571/10000000000 : ℚ), (175756099597/1000000000000 : ℚ), 2⟩,
    ⟨(702732369/1600000000 : ℚ), (-4720938553/10000000000 : ℚ), (179088867633/1000000000000 : ℚ), 2⟩,
    ⟨(219955914259/500000000000 : ℚ), (-4758608481/10000000000 : ℚ), (22593085519/125000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-4763301857/10000000000 : ℚ), (36190234401/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (279865091009/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control372.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control372.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate372

-- Control373
namespace DiagonalRamsey.JointInheritedCertificate373
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(45655292281/200000000000 : ℚ), (184329556207/125000000 : ℚ), (-337249669662701/1000000000000 : ℚ), 12⟩,
    ⟨(228862240291/1000000000000 : ℚ), (1611137937683/10000000000 : ℚ), (-37261760886387/1000000000000 : ℚ), 9⟩,
    ⟨(23002815669/100000000000 : ℚ), (141073856791/2500000000 : ℚ), (-13262533503259/1000000000000 : ℚ), 7⟩,
    ⟨(231762982191/1000000000000 : ℚ), (277682521097/10000000000 : ℚ), (-1662563262879/250000000000 : ℚ), 6⟩,
    ⟨(234050009477/1000000000000 : ℚ), (80371501413/5000000000 : ℚ), (-3928870046771/1000000000000 : ℚ), 6⟩,
    ⟨(236867213223/1000000000000 : ℚ), (51089270439/5000000000 : ℚ), (-1275505345597/500000000000 : ℚ), 5⟩,
    ⟨(120093731109/500000000000 : ℚ), (68916444867/10000000000 : ℚ), (-1758225666107/1000000000000 : ℚ), 5⟩,
    ⟨(4879575613/20000000000 : ℚ), (24170776231/5000000000 : ℚ), (-1260507912461/1000000000000 : ℚ), 4⟩,
    ⟨(15512791003/62500000000 : ℚ), (34802497701/10000000000 : ℚ), (-57972253899/62500000000 : ℚ), 4⟩,
    ⟨(63206097731/250000000000 : ℚ), (25464541001/10000000000 : ℚ), (-346890730113/500000000000 : ℚ), 4⟩,
    ⟨(16112093419/62500000000 : ℚ), (18781067309/10000000000 : ℚ), (-261626179867/500000000000 : ℚ), 3⟩,
    ⟨(131532056101/500000000000 : ℚ), (554063493/400000000 : ℚ), (-197474361401/500000000000 : ℚ), 3⟩,
    ⟨(67146371123/250000000000 : ℚ), (2530996057/2500000000 : ℚ), (-59182535437/200000000000 : ℚ), 3⟩,
    ⟨(13715221887/50000000000 : ℚ), (3622603221/5000000000 : ℚ), (-3403248003/15625000000 : ℚ), 3⟩,
    ⟨(280165895299/1000000000000 : ℚ), (24907569/50000000 : ℚ), (-155078142179/1000000000000 : ℚ), 3⟩,
    ⟨(286113408129/1000000000000 : ℚ), (3173590173/10000000000 : ℚ), (-103909006577/1000000000000 : ℚ), 3⟩,
    ⟨(29208969843/100000000000 : ℚ), (855071943/5000000000 : ℚ), (-30807746011/500000000000 : ℚ), 3⟩,
    ⟨(298037211261/1000000000000 : ℚ), (10235757/200000000 : ℚ), (-13133680129/500000000000 : ℚ), 3⟩,
    ⟨(15194933441/50000000000 : ℚ), (-119781779/2500000000 : ℚ), (1773982477/500000000000 : ℚ), 3⟩,
    ⟨(309617622067/1000000000000 : ℚ), (-1305107541/10000000000 : ℚ), (5775946597/200000000000 : ℚ), 3⟩,
    ⟨(315138994357/1000000000000 : ℚ), (-249737851/1250000000 : ℚ), (12629232063/250000000000 : ℚ), 2⟩,
    ⟨(20025600741/62500000000 : ℚ), (-516297121/2000000000 : ℚ), (34529338669/500000000000 : ℚ), 2⟩,
    ⟨(81344678909/250000000000 : ℚ), (-3074117029/10000000000 : ℚ), (42481673637/500000000000 : ℚ), 2⟩,
    ⟨(329998450511/1000000000000 : ℚ), (-3489802187/10000000000 : ℚ), (98583428999/1000000000000 : ℚ), 2⟩,
    ⟨(334224325909/1000000000000 : ℚ), (-479916467/1250000000 : ℚ), (110190742031/1000000000000 : ℚ), 2⟩,
    ⟨(338015644341/1000000000000 : ℚ), (-516379603/1250000000 : ℚ), (11999491931/100000000000 : ℚ), 2⟩,
    ⟨(42666986667/125000000000 : ℚ), (-4371342017/10000000000 : ℚ), (16019641709/125000000000 : ℚ), 2⟩,
    ⟨(344153097083/1000000000000 : ℚ), (-4565173151/10000000000 : ℚ), (134800381917/1000000000000 : ℚ), 2⟩,
    ⟨(21652507773/62500000000 : ℚ), (-4716258873/10000000000 : ℚ), (35004304397/250000000000 : ℚ), 2⟩,
    ⟨(348174949869/1000000000000 : ℚ), (-37713691/78125000 : ℚ), (28775107731/200000000000 : ℚ), 2⟩,
    ⟨(349340866269/1000000000000 : ℚ), (-1225098007/2500000000 : ℚ), (73211419681/500000000000 : ℚ), 2⟩,
    ⟨(174963322577/500000000000 : ℚ), (-1234152937/2500000000 : ℚ), (14768920149/100000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-494112531/1000000000 : ℚ), (36961789899/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (165618985751/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control373.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control373.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate373

-- Control374
namespace DiagonalRamsey.JointInheritedCertificate374
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(249681264363/1000000000000 : ℚ), (15066106927031/10000000000 : ℚ), (-188428540414389/500000000000 : ℚ), 12⟩,
    ⟨(250308406529/1000000000000 : ℚ), (1646483710899/10000000000 : ℚ), (-20819671581863/500000000000 : ℚ), 9⟩,
    ⟨(251556651139/1000000000000 : ℚ), (576891116959/10000000000 : ℚ), (-14821740373773/1000000000000 : ℚ), 7⟩,
    ⟨(63353494229/250000000000 : ℚ), (71003104237/2500000000 : ℚ), (-7432982900291/1000000000000 : ℚ), 6⟩,
    ⟨(255862496797/1000000000000 : ℚ), (41124170741/2500000000 : ℚ), (-4392077822361/1000000000000 : ℚ), 6⟩,
    ⟨(258878630197/1000000000000 : ℚ), (104630542733/10000000000 : ℚ), (-89140427103/31250000000 : ℚ), 5⟩,
    ⟨(131216665051/500000000000 : ℚ), (35311105323/5000000000 : ℚ), (-1966710278821/1000000000000 : ℚ), 5⟩,
    ⟨(266492362809/1000000000000 : ℚ), (9916303649/2000000000 : ℚ), (-141066235149/100000000000 : ℚ), 4⟩,
    ⟨(135508318807/500000000000 : ℚ), (714669851/200000000 : ℚ), (-1038745574141/1000000000000 : ℚ), 4⟩,
    ⟨(137981291639/500000000000 : ℚ), (5236226311/2000000000 : ℚ), (-194416972903/250000000000 : ℚ), 4⟩,
    ⟨(281282567641/1000000000000 : ℚ), (1934367003/1000000000 : ℚ), (-587276820663/1000000000000 : ℚ), 3⟩,
    ⟨(35865669543/125000000000 : ℚ), (14300603387/10000000000 : ℚ), (-444082601473/1000000000000 : ℚ), 3⟩,
    ⟨(292836606247/1000000000000 : ℚ), (10487442137/10000000000 : ℚ), (-6672085151/20000000000 : ℚ), 3⟩,
    ⟨(18684961799/62500000000 : ℚ), (3771571967/5000000000 : ℚ), (-246524892141/1000000000000 : ℚ), 3⟩,
    ⟨(30523473821/100000000000 : ℚ), (5228615007/10000000000 : ℚ), (-35326823313/200000000000 : ℚ), 3⟩,
    ⟨(311602219481/1000000000000 : ℚ), (1690419477/5000000000 : ℚ), (-29916900483/250000000000 : ℚ), 3⟩,
    ⟨(318000510271/1000000000000 : ℚ), (377179471/2000000000 : ℚ), (-72623025627/1000000000000 : ℚ), 3⟩,
    ⟨(324367991541/1000000000000 : ℚ), (331247519/5000000000 : ℚ), (-6668261663/200000000000 : ℚ), 3⟩,
    ⟨(41330417621/125000000000 : ℚ), (-87107751/2500000000 : ℚ), (-241725923/1000000000000 : ℚ), 3⟩,
    ⟨(21047882719/62500000000 : ℚ), (-1190452889/10000000000 : ℚ), (27850519747/1000000000000 : ℚ), 3⟩,
    ⟨(10708667919/31250000000 : ℚ), (-948067393/5000000000 : ℚ), (414555451/8000000000 : ℚ), 2⟩,
    ⟨(348320162111/1000000000000 : ℚ), (-2490079869/10000000000 : ℚ), (36168427453/500000000000 : ℚ), 2⟩,
    ⟨(353640146473/1000000000000 : ℚ), (-2991041733/10000000000 : ℚ), (89917305319/1000000000000 : ℚ), 2⟩,
    ⟨(358586092137/1000000000000 : ℚ), (-106669151/312500000 : ℚ), (52478453533/500000000000 : ℚ), 2⟩,
    ⟨(363110366943/1000000000000 : ℚ), (-942072431/2500000000 : ℚ), (7360095119/62500000000 : ℚ), 2⟩,
    ⟨(7343387993/20000000000 : ℚ), (-50803067/125000000 : ℚ), (64283684539/500000000000 : ℚ), 2⟩,
    ⟨(74144819911/200000000000 : ℚ), (-2153947447/5000000000 : ℚ), (137556332643/1000000000000 : ℚ), 2⟩,
    ⟨(186870116477/500000000000 : ℚ), (-4504313187/10000000000 : ℚ), (18108428247/125000000000 : ℚ), 2⟩,
    ⟨(75237750567/200000000000 : ℚ), (-2328671819/5000000000 : ℚ), (150605411427/1000000000000 : ℚ), 2⟩,
    ⟨(94511519653/250000000000 : ℚ), (-4769825451/10000000000 : ℚ), (154847249823/1000000000000 : ℚ), 2⟩,
    ⟨(189647161611/500000000000 : ℚ), (-4843757953/10000000000 : ℚ), (157646839761/1000000000000 : ℚ), 2⟩,
    ⟨(379921465389/1000000000000 : ℚ), (-2440207271/5000000000 : ℚ), (159038351127/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-1221245567/2500000000 : ℚ), (39802976699/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (157092361737/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control374.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control374.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate374

-- Control375
namespace DiagonalRamsey.JointInheritedCertificate375
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264217097757/1000000000000 : ℚ), (15302228592477/10000000000 : ℚ), (-202518242684711/500000000000 : ℚ), 12⟩,
    ⟨(264870535523/1000000000000 : ℚ), (418147513857/2500000000 : ℚ), (-8950844320063/200000000000 : ℚ), 9⟩,
    ⟨(66542779523/250000000000 : ℚ), (73274676379/1250000000 : ℚ), (-7965734007509/500000000000 : ℚ), 7⟩,
    ⟨(134053160071/500000000000 : ℚ), (288691588571/10000000000 : ℚ), (-1598057000891/200000000000 : ℚ), 6⟩,
    ⟨(13532875231/50000000000 : ℚ), (16727330243/1000000000 : ℚ), (-2361029961997/500000000000 : ℚ), 6⟩,
    ⟨(136900051113/500000000000 : ℚ), (1663215261/156250000 : ℚ), (-3067423360407/1000000000000 : ℚ), 5⟩,
    ⟨(11100153921/40000000000 : ℚ), (280805497/39062500 : ℚ), (-264435629181/125000000000 : ℚ), 5⟩,
    ⟨(140866536461/500000000000 : ℚ), (10100269699/2000000000 : ℚ), (-379487153897/250000000000 : ℚ), 4⟩,
    ⟨(559466889/1953125000 : ℚ), (455311907/125000000 : ℚ), (-1118322360459/1000000000000 : ℚ), 4⟩,
    ⟨(36450046577/125000000000 : ℚ), (5342808583/2000000000 : ℚ), (-837833513897/1000000000000 : ℚ), 4⟩,
    ⟨(148571709961/500000000000 : ℚ), (9881319757/5000000000 : ℚ), (-633326644263/1000000000000 : ℚ), 3⟩,
    ⟨(303022806513/1000000000000 : ℚ), (14635460811/10000000000 : ℚ), (-47955479747/100000000000 : ℚ), 3⟩,
    ⟨(309181910681/1000000000000 : ℚ), (134486049/125000000 : ℚ), (-360953263111/1000000000000 : ℚ), 3⟩,
    ⟨(157780708443/500000000000 : ℚ), (7765968683/10000000000 : ℚ), (-267507398669/1000000000000 : ℚ), 3⟩,
    ⟨(64419977399/200000000000 : ℚ), (5413670643/10000000000 : ℚ), (-96270607589/500000000000 : ℚ), 3⟩,
    ⟨(10272948499/31250000000 : ℚ), (1768121657/5000000000 : ℚ), (-131470169407/1000000000000 : ℚ), 3⟩,
    ⟨(8385022957/25000000000 : ℚ), (2017830613/10000000000 : ℚ), (-81065974283/1000000000000 : ℚ), 3⟩,
    ⟨(171017691627/500000000000 : ℚ), (775730069/10000000000 : ℚ), (-39006539533/1000000000000 : ℚ), 3⟩,
    ⟨(348573853363/1000000000000 : ℚ), (-50032793/2000000000 : ℚ), (-897824147/250000000000 : ℚ), 3⟩,
    ⟨(22184584973/62500000000 : ℚ), (-220841881/2000000000 : ℚ), (26444101367/1000000000000 : ℚ), 3⟩,
    ⟨(45139057967/125000000000 : ℚ), (-113723207/625000000 : ℚ), (13012873327/250000000000 : ℚ), 2⟩,
    ⟨(366991850327/1000000000000 : ℚ), (-2421317931/10000000000 : ℚ), (73954701967/1000000000000 : ℚ), 2⟩,
    ⟨(372534897633/1000000000000 : ℚ), (-732141567/2500000000 : ℚ), (11588553733/125000000000 : ℚ), 2⟩,
    ⟨(377688223081/1000000000000 : ℚ), (-1677997379/5000000000 : ℚ), (27185020717/250000000000 : ℚ), 2⟩,
    ⟨(382402197327/1000000000000 : ℚ), (-3714925961/10000000000 : ℚ), (122379972139/1000000000000 : ℚ), 2⟩,
    ⟨(24164463889/62500000000 : ℚ), (-4014111629/10000000000 : ℚ), (66941724769/500000000000 : ℚ), 2⟩,
    ⟨(390335168023/1000000000000 : ℚ), (-266269249/625000000 : ℚ), (71723667557/500000000000 : ℚ), 2⟩,
    ⟨(393477765629/1000000000000 : ℚ), (-557337539/1250000000 : ℚ), (75611108817/500000000000 : ℚ), 2⟩,
    ⟨(396028950107/1000000000000 : ℚ), (-36905737/80000000 : ℚ), (31464340143/200000000000 : ℚ), 2⟩,
    ⟨(397964152157/1000000000000 : ℚ), (-1181690361/2500000000 : ℚ), (40457330387/250000000000 : ℚ), 2⟩,
    ⟨(199632367363/500000000000 : ℚ), (-4801378057/10000000000 : ℚ), (32960726613/200000000000 : ℚ), 2⟩,
    ⟨(399918172491/1000000000000 : ℚ), (-967673913/2000000000 : ℚ), (83140890167/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-605372353/1250000000 : ℚ), (83233065917/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (302749107711/1000000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control375.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control375.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate375

-- Control376
namespace DiagonalRamsey.JointInheritedCertificate376
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7338104737/31250000000 : ℚ), (1002096179297/625000000 : ℚ), (-188571297901947/500000000000 : ℚ), 12⟩,
    ⟨(235373643651/1000000000000 : ℚ), (1753014786797/10000000000 : ℚ), (-41662571333687/1000000000000 : ℚ), 9⟩,
    ⟨(4729537793/20000000000 : ℚ), (614550070603/10000000000 : ℚ), (-14823963241631/1000000000000 : ℚ), 7⟩,
    ⟨(119059232359/500000000000 : ℚ), (302696303193/10000000000 : ℚ), (-232168443667/31250000000 : ℚ), 6⟩,
    ⟨(24028255959/100000000000 : ℚ), (87685882133/5000000000 : ℚ), (-4386060399049/1000000000000 : ℚ), 6⟩,
    ⟨(242948332849/1000000000000 : ℚ), (55776319021/5000000000 : ℚ), (-711303947679/250000000000 : ℚ), 5⟩,
    ⟨(123045055821/500000000000 : ℚ), (75270520433/10000000000 : ℚ), (-1958673712967/1000000000000 : ℚ), 5⟩,
    ⟨(124838819461/500000000000 : ℚ), (10560589973/2000000000 : ℚ), (-701057973451/500000000000 : ℚ), 4⟩,
    ⟨(253676364839/1000000000000 : ℚ), (38000979259/10000000000 : ℚ), (-514912457427/500000000000 : ℚ), 4⟩,
    ⟨(129023889739/500000000000 : ℚ), (27779343613/10000000000 : ℚ), (-76845187829/100000000000 : ℚ), 4⟩,
    ⟨(10509991349/40000000000 : ℚ), (5113531187/2500000000 : ℚ), (-577813600589/1000000000000 : ℚ), 4⟩,
    ⟨(267737094709/1000000000000 : ℚ), (15044461047/10000000000 : ℚ), (-108600652589/250000000000 : ℚ), 3⟩,
    ⟨(272961681899/1000000000000 : ℚ), (5474323213/5000000000 : ℚ), (-161863641871/500000000000 : ℚ), 3⟩,
    ⟨(55674645933/200000000000 : ℚ), (7781689387/10000000000 : ℚ), (-236464148407/1000000000000 : ℚ), 3⟩,
    ⟨(141959810921/500000000000 : ℚ), (5288530787/10000000000 : ℚ), (-166398720063/1000000000000 : ℚ), 3⟩,
    ⟨(72386860911/250000000000 : ℚ), (3295192597/10000000000 : ℚ), (-109264164973/1000000000000 : ℚ), 3⟩,
    ⟨(73800624017/250000000000 : ℚ), (840020803/5000000000 : ℚ), (-62056727211/1000000000000 : ℚ), 3⟩,
    ⟨(300830317869/1000000000000 : ℚ), (356238801/10000000000 : ℚ), (-22616649621/1000000000000 : ℚ), 3⟩,
    ⟨(306376710047/1000000000000 : ℚ), (-184833161/2500000000 : ℚ), (5318457731/500000000000 : ℚ), 3⟩,
    ⟨(311788257813/1000000000000 : ℚ), (-1653252283/10000000000 : ℚ), (3887847137/100000000000 : ℚ), 3⟩,
    ⟨(317012845003/1000000000000 : ℚ), (-2420341921/10000000000 : ℚ), (15747851571/250000000000 : ℚ), 3⟩,
    ⟨(322000155987/1000000000000 : ℚ), (-3066915447/10000000000 : ℚ), (83646708483/1000000000000 : ℚ), 2⟩,
    ⟨(163351080117/500000000000 : ℚ), (-90325799/250000000 : ℚ), (50678928873/500000000000 : ℚ), 2⟩,
    ⟨(331073574873/1000000000000 : ℚ), (-2037042523/5000000000 : ℚ), (58259912307/500000000000 : ℚ), 2⟩,
    ⟨(33507230079/100000000000 : ℚ), (-892388193/2000000000 : ℚ), (6471862591/50000000000 : ℚ), 2⟩,
    ⟨(338659828069/1000000000000 : ℚ), (-4785764497/10000000000 : ℚ), (140345126759/1000000000000 : ℚ), 2⟩,
    ⟨(341801606863/1000000000000 : ℚ), (-5052624497/10000000000 : ℚ), (74712068219/500000000000 : ℚ), 2⟩,
    ⟨(172233690061/500000000000 : ℚ), (-1053588231/2000000000 : ℚ), (78406088617/500000000000 : ℚ), 2⟩,
    ⟨(173315737497/500000000000 : ℚ), (-271790857/500000000 : ℚ), (81306507299/500000000000 : ℚ), 2⟩,
    ⟨(174136525031/500000000000 : ℚ), (-5559281513/10000000000 : ℚ), (166902767741/1000000000000 : ℚ), 2⟩,
    ⟨(17468814803/50000000000 : ℚ), (-352529139/625000000 : ℚ), (42433669451/250000000000 : ℚ), 2⟩,
    ⟨(10935330879/31250000000 : ℚ), (-1420182149/2500000000 : ℚ), (171142463911/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-710718263/1250000000 : ℚ), (85659029631/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (157641646217/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control376.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control376.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate376

-- Control378
namespace DiagonalRamsey.JointInheritedCertificate378
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8409858973/100000000000 : ℚ), (2012487182391/2000000000 : ℚ), (-84792790428523/1000000000000 : ℚ), 11⟩,
    ⟨(42201696731/500000000000 : ℚ), (1065857816091/10000000000 : ℚ), (-227056098727/25000000000 : ℚ), 8⟩,
    ⟨(85001287489/1000000000000 : ℚ), (21864978073/625000000 : ℚ), (-94512021529/31250000000 : ℚ), 7⟩,
    ⟨(2146732377/25000000000 : ℚ), (77062420101/5000000000 : ℚ), (-270824994349/200000000000 : ℚ), 6⟩,
    ⟨(8697405919/100000000000 : ℚ), (74353025771/10000000000 : ℚ), (-665424308229/1000000000000 : ℚ), 5⟩,
    ⟨(88273124353/1000000000000 : ℚ), (3437712163/1000000000 : ℚ), (-315461433223/1000000000000 : ℚ), 5⟩,
    ⟨(89716568223/1000000000000 : ℚ), (2320267881/2000000000 : ℚ), (-4517213437/40000000000 : ℚ), 4⟩,
    ⟨(91248920063/1000000000000 : ℚ), (-1285150927/5000000000 : ℚ), (3803132211/250000000000 : ℚ), 4⟩,
    ⟨(1856225849/20000000000 : ℚ), (-11968807467/10000000000 : ℚ), (101660194009/1000000000000 : ℚ), 4⟩,
    ⟨(9434364429/100000000000 : ℚ), (-18497084423/10000000000 : ℚ), (162724637377/1000000000000 : ℚ), 4⟩,
    ⟨(598669301/6250000000 : ℚ), (-11587517373/5000000000 : ℚ), (103591099083/500000000000 : ℚ), 3⟩,
    ⟨(97086153323/1000000000000 : ℚ), (-26578484407/10000000000 : ℚ), (9599884241/40000000000 : ℚ), 3⟩,
    ⟨(12273864679/125000000000 : ℚ), (-5808600833/2000000000 : ℚ), (66014301193/250000000000 : ℚ), 3⟩,
    ⟨(99058925023/1000000000000 : ℚ), (-30766475369/10000000000 : ℚ), (281053725479/1000000000000 : ℚ), 3⟩,
    ⟨(99656819051/1000000000000 : ℚ), (-3186408731/1000000000 : ℚ), (58391806151/200000000000 : ℚ), 3⟩,
    ⟨(99961622783/1000000000000 : ℚ), (-16199489749/5000000000 : ℚ), (74324426987/250000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-16232611853/5000000000 : ℚ), (18622501427/62500000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (41908612281/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control378.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control378.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate378

-- Control379
namespace DiagonalRamsey.JointInheritedCertificate379
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(556574399537/1000000000000 : ℚ), (17515008167011/10000000000 : ℚ), (-976366259223499/1000000000000 : ℚ), 12⟩,
    ⟨(278872926977/500000000000 : ℚ), (119938836249/625000000 : ℚ), (-107997286676181/1000000000000 : ℚ), 8⟩,
    ⟨(7000968513/12500000000 : ℚ), (675236634641/10000000000 : ℚ), (-19264189169337/500000000000 : ℚ), 7⟩,
    ⟨(17610838311/31250000000 : ℚ), (167172966253/5000000000 : ℚ), (-969487924167/50000000000 : ℚ), 6⟩,
    ⟨(568120477003/1000000000000 : ℚ), (2438447077/125000000 : ℚ), (-2878662604707/250000000000 : ℚ), 5⟩,
    ⟨(573754387433/1000000000000 : ℚ), (1001800279/80000000 : ℚ), (-470575562983/62500000000 : ℚ), 5⟩,
    ⟨(580394299603/1000000000000 : ℚ), (42747640597/5000000000 : ℚ), (-2618976789507/500000000000 : ℚ), 4⟩,
    ⟨(146994066883/250000000000 : ℚ), (60889472023/10000000000 : ℚ), (-1900695675459/500000000000 : ℚ), 4⟩,
    ⟨(596427272721/1000000000000 : ℚ), (44685097617/10000000000 : ℚ), (-710580687231/250000000000 : ℚ), 4⟩,
    ⟨(151416481843/250000000000 : ℚ), (33507477301/10000000000 : ℚ), (-108543322013/50000000000 : ℚ), 3⟩,
    ⟨(615603258191/1000000000000 : ℚ), (25513542711/10000000000 : ℚ), (-841491731087/500000000000 : ℚ), 3⟩,
    ⟨(39133972703/62500000000 : ℚ), (3925760569/2000000000 : ℚ), (-1317794125157/1000000000000 : ℚ), 3⟩,
    ⟨(127437066729/200000000000 : ℚ), (15193358853/10000000000 : ℚ), (-259437596121/250000000000 : ℚ), 3⟩,
    ⟨(81077778887/125000000000 : ℚ), (11784347131/10000000000 : ℚ), (-818675946031/1000000000000 : ℚ), 3⟩,
    ⟨(660344112027/1000000000000 : ℚ), (2280266303/2500000000 : ℚ), (-128887186229/200000000000 : ℚ), 3⟩,
    ⟨(168059522079/250000000000 : ℚ), (7011555463/10000000000 : ℚ), (-100786116721/200000000000 : ℚ), 3⟩,
    ⟨(684189614471/1000000000000 : ℚ), (5321177109/10000000000 : ℚ), (-389323159937/1000000000000 : ℚ), 2⟩,
    ⟨(696083590761/1000000000000 : ℚ), (3953407779/10000000000 : ℚ), (-147477589429/500000000000 : ℚ), 2⟩,
    ⟨(176951367923/250000000000 : ℚ), (709432463/2500000000 : ℚ), (-216660449867/1000000000000 : ℚ), 2⟩,
    ⟨(719242369143/1000000000000 : ℚ), (960884519/5000000000 : ℚ), (-4728713231/31250000000 : ℚ), 2⟩,
    ⟨(36514206977/50000000000 : ℚ), (1166065657/10000000000 : ℚ), (-96558622209/1000000000000 : ℚ), 2⟩,
    ⟨(740824444597/1000000000000 : ℚ), (540521371/10000000000 : ℚ), (-50553882067/1000000000000 : ℚ), 2⟩,
    ⟨(150152355083/200000000000 : ℚ), (2193871/1000000000 : ℚ), (-11883573203/1000000000000 : ℚ), 2⟩,
    ⟨(760000430067/1000000000000 : ℚ), (-407710727/10000000000 : ℚ), (41135481/2000000000 : ℚ), 2⟩,
    ⟨(96056429407/125000000000 : ℚ), (-381261197/5000000000 : ℚ), (5960121633/125000000000 : ℚ), 2⟩,
    ⟨(48502087699/62500000000 : ℚ), (-1053551527/10000000000 : ℚ), (70153943943/1000000000000 : ℚ), 2⟩,
    ⟨(156534663071/200000000000 : ℚ), (-128946393/1000000000 : ℚ), (88538927773/1000000000000 : ℚ), 2⟩,
    ⟨(157661445157/200000000000 : ℚ), (-295402687/2000000000 : ℚ), (5163511941/50000000000 : ℚ), 2⟩,
    ⟨(158576175367/200000000000 : ℚ), (-810696517/5000000000 : ℚ), (114684544831/1000000000000 : ℚ), 2⟩,
    ⟨(199087555437/250000000000 : ℚ), (-43162299/250000000 : ℚ), (7689735109/62500000000 : ℚ), 2⟩,
    ⟨(399340924417/500000000000 : ℚ), (-897540439/5000000000 : ℚ), (64252903321/500000000000 : ℚ), 2⟩,
    ⟨(3199413213/4000000000 : ℚ), (-1828940039/10000000000 : ℚ), (65606027857/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-916576109/5000000000 : ℚ), (131548999167/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (153198802917/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control379.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control379.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate379
